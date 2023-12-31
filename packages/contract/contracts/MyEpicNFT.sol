// MyEpicNFT.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract MyEpicNFT is ERC721URIStorage {

    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;

    constructor() ERC721 ("IbuNFT", "IBU") {
      console.log("This is my NFT contract.");
    }

    function makeAnEpicNFT() public {

      _tokenIds.increment();

      uint256 newItemId = _tokenIds.current();

      _safeMint(msg.sender, newItemId);

      _setTokenURI(newItemId, "https://api.npoint.io/bee5af91e74de43b9a7d");

      console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);
    }
}