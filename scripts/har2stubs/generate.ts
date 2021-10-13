import { Har, Header } from "har-format";
import MIMEType from "whatwg-mimetype";
import * as templates from "./templates";
import { Buffer } from "buffer";
import { URL } from "url";

function convertHeaderArrayToHeaderMap(
  headers: Array<Header>
): Record<string, string> {
  return headers.reduce((m, h) => ({ ...m, [h.name]: [h.value] }), {});
}

export function generateStubs(har: Har): string {
  let indexes: Array<number> = [];
  let output = har.log.entries
    .filter((entry) => {
      // We only allow json requests and response here,
      // since that is what we will use. Filter out all non-JSON requests/responses.
      // All HTTP requests that will be involved in getTorusKey are JSON anyway.
      return (
        (entry.request.method === "GET" ||
          entry.request.method === "DELETE" ||
          entry.request.method === "HEAD" ||
          MIMEType.parse(entry.request.postData?.mimeType)?.subtype ===
            "json") &&
        MIMEType.parse(entry.response.content?.mimeType)?.subtype === "json"
      );
    })
    .map((entry, id) => {
      indexes.push(id);
      const hasRequestBody = !!entry.request.postData;
      const url = new URL(entry.request.url);
      return templates.registerStub({
        requestBody: hasRequestBody
          ? JSON.parse(entry.request.postData.text)
          : {},
        requestHeader: convertHeaderArrayToHeaderMap(entry.request.headers),
        responseBody: JSON.parse(
          entry.response.content.encoding &&
            entry.response.content.encoding === "base64"
            ? Buffer.from(entry.response.content.text, "base64").toString(
                "utf8"
              )
            : entry.response.content.text
        ),
        responseHeader: convertHeaderArrayToHeaderMap(entry.response.headers),
        hasRequestBody,
        host: url.host,
        method: entry.request.method as templates.HTTPMethods,
        path: url.pathname,
        scheme: url.protocol,
        statusCode: entry.response.status,
        id,
      });
    })
    .join("\n");
  output = templates.preStubs(indexes) + output;
  return output;
}
