const fs = require("fs");
const keythereum = require("keythereum");

const KEYSTORE = "/tmp/gethdata/keystore/UTC--2021-03-04T16-08-05.783959054Z--c1c9da25577fac876742b67719f7d304854d4db5";
const PASSWORD = "";

const keyObject = JSON.parse(fs.readFileSync(KEYSTORE, {encoding: "utf8"}));
console.log(`keyobj: ${JSON.stringify(keyObject, undefined, 2)}`);
const privateKey = keythereum.recover("", keyObject).toString("hex");
console.log(`0x${keyObject.address}: 0x${privateKey}`);

