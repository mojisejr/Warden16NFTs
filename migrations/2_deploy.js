const MardenFactory = artifacts.require("MardenFactory");
const MardenHead = artifacts.require("MardenHead");
const MardenEyes = artifacts.require("MardenEyes");
const MardenBody = artifacts.require("MardenBody");
const MardenSymbol = artifacts.require("MardenSymbol");
const MardenWings = artifacts.require("MardenWing");
const MardenUtils = artifacts.require("MardenUtils");

const createWriter = require("csv-writer").createObjectCsvWriter;
const csvWriter = createWriter({
  path: "mardenEye.csv",
  header: [
    { id: "tokenId", title: "tokenId" },
    { id: "rarity", title: "EyeRarity" },
  ],
});

module.exports = async (deployer) => {
  await deployer.deploy(MardenHead);
  await deployer.deploy(MardenEyes);
  await deployer.deploy(MardenBody);
  await deployer.deploy(MardenSymbol);
  await deployer.deploy(MardenWings);
  await deployer.deploy(MardenUtils);
  await deployer.link(MardenHead, [MardenFactory]);
  await deployer.link(MardenEyes, [MardenFactory]);
  await deployer.link(MardenBody, [MardenFactory]);
  await deployer.link(MardenSymbol, [MardenFactory]);
  await deployer.link(MardenWings, [MardenFactory]);
  await deployer.link(MardenUtils, [MardenFactory]);
  await deployer.deploy(MardenFactory);
  const marden = await MardenFactory.deployed();
  // try {
  //   let data = [];
  //   console.log("writing csv file....");
  //   for (let tokenId = 0; tokenId < 16001; tokenId++) {
  //     console.log(`token-${tokenId} is written.`);
  //     let rarity = await marden.getEyeRarity(tokenId);
  //     data.push({
  //       tokenId: tokenId,
  //       rarity: rarity,
  //     });
  //   }
  //   console.log(data);
  //   await csvWriter.writeRecords(data);
  //   console.log("writing to csv is done!");
  // } catch (e) {
  //   console.log(e);
  // }
  const uri = await marden.tokenURI(996);
  const uri2 = await marden.tokenURI(2040);
  const uri3 = await marden.tokenURI(653);
  const uri4 = await marden.tokenURI(12508);
  const uri5 = await marden.tokenURI(4);
  console.log(uri5);
};
