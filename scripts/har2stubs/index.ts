import { promises as fs } from "fs";
import { program } from "commander";
import { generateStubs } from "./generate";
import { Har } from "har-format";

async function main() {
  program
    .requiredOption("-i --input <path>", "full path to har input")
    .requiredOption(
      "-o --output <path>",
      "full path to Swift OHHTTPStubs output, the json assets will be placed next to the Swift stubs"
    );
  program.parse(process.argv);
  const options = program.opts();
  console.log("options: ", options);

  const input = await fs.readFile(options.input, { encoding: "utf8" });
  const har = JSON.parse(input) as Har;
  const outputStr = generateStubs(har);
  await fs.writeFile(options.output, outputStr);
}

main();
