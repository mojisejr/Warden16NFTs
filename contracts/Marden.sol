//SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./Base64.sol";

library MardenUtils {
    struct Styles {
        string _face;
        string _eyecolor;
        string _body;
        string _wings1;
        string _wings2;
        string _bgColor;
    }

    function compareString(string memory _str1, string memory _str2) public pure returns (bool) {
        return keccak256(abi.encodePacked(_str1)) == keccak256(abi.encodePacked(_str2));
    }
    function getStyles(Styles memory style) public pure returns (string memory) {
        string memory styles = string(abi.encodePacked('<style> svg { background-color: ',style._bgColor,'; } .body { fill: ',style._body,';}  ._color1 { fill: lightgray; } ._color2 { fill: gray; } ._color3 { fill: #444; } .face { fill: ',style._face,'} .eyecolor { fill: ',style._eyecolor,'} .hands { fill: purple; }  .symbol1 { fill: midnightblue; } .symbol2 { fill: purple; } .wings1 { fill: ',style._wings1,'} .wings2 { fill: ',style._wings2,'}</style>')); 
        return styles;
    }
}

library MardenHead {
    function getHead() public pure returns(string memory) {
        string[9] memory parts;
        parts[0] = '<g id="head"><use xlink:href="#pixel" x="5" y="1" class="_color1" /><use xlink:href="#pixel" x="6" y="1" class="_color1" /><use xlink:href="#pixel" x="7" y="1" class="_color1" /><use xlink:href="#pixel" x="8" y="1" class="_color1" /><use xlink:href="#pixel" x="9" y="1" class="_color1" /><use xlink:href="#pixel" x="10" y="1" class="_color1" /><use xlink:href="#pixel" x="11" y="1" class="_color3" /><use xlink:href="#pixel" x="12" y="1" class="_color3" />';
        parts[1] = '<use xlink:href="#pixel" x="4" y="2" class="_color1" /><use xlink:href="#pixel" x="5" y="2" class="_color1" /><use xlink:href="#pixel" x="6" y="2" class="_color1" /><use xlink:href="#pixel" x="7" y="2" class="_color1" /><use xlink:href="#pixel" x="8" y="2" class="_color1" /><use xlink:href="#pixel" x="9" y="2" class="_color1" /><use xlink:href="#pixel" x="10" y="2" class="_color2" /><use xlink:href="#pixel" x="11" y="2" class="_color2" /><use xlink:href="#pixel" x="12" y="2" class="_color3" /><use xlink:href="#pixel" x="13" y="2" class="_color3" />';
        parts[2] = '<use xlink:href="#pixel" x="4" y="3" class="face" /><use xlink:href="#pixel" x="5" y="3" class="face" /><use xlink:href="#pixel" x="6" y="3" class="face" /><use xlink:href="#pixel" x="7" y="3" class="face" /><use xlink:href="#pixel" x="8" y="3" class="face" /><use xlink:href="#pixel" x="9" y="3" class="_color3" /><use xlink:href="#pixel" x="10" y="3" class="_color2" /><use xlink:href="#pixel" x="11" y="3" class="_color2" /><use xlink:href="#pixel" x="12" y="3" class="_color2" /><use xlink:href="#pixel" x="13" y="3" class="_color3" />';
        parts[3] = '<use xlink:href="#pixel" x="3" y="4" class="face" /><use xlink:href="#pixel" x="4" y="4" class="face" /><use xlink:href="#pixel" x="5" y="4" class="face" /><use xlink:href="#pixel" x="6" y="4" class="face" /><use xlink:href="#pixel" x="7" y="4" class="face" /><use xlink:href="#pixel" x="8" y="4" class="face" /><use xlink:href="#pixel" x="9" y="4" class="face" /><use xlink:href="#pixel" x="10" y="4" class="_color3" /><use xlink:href="#pixel" x="11" y="4" class="_color2" /><use xlink:href="#pixel" x="12" y="4" class="_color2" /><use xlink:href="#pixel" x="13" y="4" class="_color3" />';
        parts[4] = '<use xlink:href="#pixel" x="3" y="5" class="face" /><use xlink:href="#pixel" x="4" y="5" class="face" /><use xlink:href="#pixel" x="5" y="5" class="face" /><use xlink:href="#pixel" x="6" y="5" class="face" /><use xlink:href="#pixel" x="7" y="5" class="face" /><use xlink:href="#pixel" x="8" y="5" class="face" /><use xlink:href="#pixel" x="9" y="5" class="face" /><use xlink:href="#pixel" x="10" y="5" class="_color3" /><use xlink:href="#pixel" x="11" y="5" class="_color2" /><use xlink:href="#pixel" x="12" y="5" class="_color2" /><use xlink:href="#pixel" x="13" y="5" class="_color3" />';
        parts[5] = '<use xlink:href="#pixel" x="3" y="6" class="face" /><use xlink:href="#pixel" x="4" y="6" class="face" /><use xlink:href="#pixel" x="5" y="6" class="face" /><use xlink:href="#pixel" x="6" y="6" class="face" /><use xlink:href="#pixel" x="7" y="6" class="face" /><use xlink:href="#pixel" x="8" y="6" class="face" /><use xlink:href="#pixel" x="9" y="6" class="face" /><use xlink:href="#pixel" x="10" y="6" class="_color3" /><use xlink:href="#pixel" x="11" y="6" class="_color2" /><use xlink:href="#pixel" x="12" y="6" class="_color2" /><use xlink:href="#pixel" x="13" y="6" class="_color3" />';
        parts[6] = '<use xlink:href="#pixel" x="3" y="7" class="face" /><use xlink:href="#pixel" x="4" y="7" class="face" /><use xlink:href="#pixel" x="5" y="7" class="face" /><use xlink:href="#pixel" x="6" y="7" class="face" /><use xlink:href="#pixel" x="7" y="7" class="face" /><use xlink:href="#pixel" x="8" y="7" class="face" /><use xlink:href="#pixel" x="9" y="7" class="_color3" /><use xlink:href="#pixel" x="10" y="7" class="_color1" /><use xlink:href="#pixel" x="11" y="7" class="_color2" /><use xlink:href="#pixel" x="12" y="7" class="_color2" /><use xlink:href="#pixel" x="13" y="7" class="_color3" />';
        parts[7] = '<use xlink:href="#pixel" x="4" y="8" class="face" /><use xlink:href="#pixel" x="5" y="8" class="face" /><use xlink:href="#pixel" x="6" y="8" class="face" /><use xlink:href="#pixel" x="7" y="8" class="face" /><use xlink:href="#pixel" x="8" y="8" class="_color3" /><use xlink:href="#pixel" x="9" y="8" class="_color1" /><use xlink:href="#pixel" x="10" y="8" class="_color1" /><use xlink:href="#pixel" x="11" y="8" class="_color2" /><use xlink:href="#pixel" x="12" y="8" class="_color2" /><use xlink:href="#pixel" x="13" y="8" class="_color3" />';
        parts[8] = '<use xlink:href="#pixel" x="4" y="9" class="_color1" /><use xlink:href="#pixel" x="5" y="9" class="_color1" /><use xlink:href="#pixel" x="6" y="9" class="_color1" /><use xlink:href="#pixel" x="7" y="9" class="_color1" /><use xlink:href="#pixel" x="8" y="9" class="_color1" /><use xlink:href="#pixel" x="9" y="9" class="_color1" /><use xlink:href="#pixel" x="10" y="9" class="_color2" /><use xlink:href="#pixel" x="11" y="9" class="_color2" /><use xlink:href="#pixel" x="12" y="9" class="_color3" /></g>';
        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3], parts[4]));
        output = string(abi.encodePacked(output, parts[5], parts[6], parts[7], parts[8]));
        return output;
    }    
}

library MardenEyes { 
    function wardenEye() public pure returns(string memory) {
        string[6] memory parts;
        parts[0] = '<g id="eyes" transform="translate(0,2)" class="eyecolor" >';
        parts[1] = '<use xlink:href="#pixel" x="1" y="0" /><use xlink:href="#pixel" x="2" y="0" /><use xlink:href="#pixel" x="10" y="0" /><use xlink:href="#pixel" x="11" y="0" />';
        parts[2] = '<use xlink:href="#pixel" x="2" y="1" /><use xlink:href="#pixel" x="3" y="1" /><use xlink:href="#pixel" x="8" y="1" /><use xlink:href="#pixel" x="9" y="1" /><use xlink:href="#pixel" x="10" y="1" />';
        parts[3] = '<use xlink:href="#pixel" x="3" y="2" /><use xlink:href="#pixel" x="4" y="2" /><use xlink:href="#pixel" x="5" y="2" /><use xlink:href="#pixel" x="8" y="2" /> <use xlink:href="#pixel" x="7" y="2" />';
        parts[4] = '<use xlink:href="#pixel" x="4" y="3" /><use xlink:href="#pixel" x="5" y="3" /><use xlink:href="#pixel" x="7" y="3" /><use xlink:href="#pixel" x="8" y="3" />';
        parts[5] = '<use xlink:href="#pixel" x="5" y="4" /><use xlink:href="#pixel" x="7" y="4" /></g>';
        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3], parts[4], parts[5]));
        return output;
    }
    function robotEye() public pure returns(string memory) {
        string[3] memory parts;
        parts[0] = '<g id="robot-eye" transform="translate(0,2)" fill="lightgray">';
        parts[1] = '<rect x="3" y="2" width="7" height="1" /><use xlink:href="#pixel" x="3" y="3" /><g fill="red"><rect x="4" y="3" width="5" height="1" /></g>';
        parts[2] = '<use xlink:href="#pixel" x="9" y="3" /><rect x="3" y="4" width="7" height="1" /></g>';
        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2]));
        return output;
    }

    function thugEye() public pure returns(string memory) {
        string[5] memory parts;
        parts[0] = '<g id="ciggar" transform="translate(0,8)"><use xlink:href="#pixel" x="6" y="0" fill="brown" /><use xlink:href="#pixel" x="5" y="0" fill="wheat" /><use xlink:href="#pixel" x="4" y="0" fill="wheat" /><use xlink:href="#pixel" x="3" y="0" fill="red" /><use xlink:href="#pixel" x="2" y="-1" fill="gray" /><use xlink:href="#pixel" x="1" y="-2" fill="gray" /><use xlink:href="#pixel" x="0" y="-3" fill="lightgray" /></g>';
        parts[1] = '<g id="thug-eye" transform="translate(0,2)" fill="black"><use xlink:href="#pixel" x="3" y="2" /><use xlink:href="#pixel" x="4" y="2" /><use xlink:href="#pixel" x="5" y="2" fill="white" /><use xlink:href="#pixel" x="7" y="2" /><use xlink:href="#pixel" x="8" y="2" fill="white" /><use xlink:href="#pixel" x="9" y="2" /><use xlink:href="#pixel" x="10" y="2" /><use xlink:href="#pixel" x="11" y="2" /><use xlink:href="#pixel" x="12" y="2" />';
        parts[2] = '<use xlink:href="#pixel" x="3" y="3" /><use xlink:href="#pixel" x="4" y="3" fill="white" /><use xlink:href="#pixel" x="5" y="3" /><use xlink:href="#pixel" x="6" y="3" /><use xlink:href="#pixel" x="7" y="3" fill="white" /><use xlink:href="#pixel" x="8" y="3" /><use xlink:href="#pixel" x="9" y="3" /><use xlink:href="#pixel" x="10" y="3" />';
        parts[3] = '<use xlink:href="#pixel" x="4" y="4" /><use xlink:href="#pixel" x="5" y="4" /><use xlink:href="#pixel" x="7" y="4" /><use xlink:href="#pixel" x="8" y="4" /><use xlink:href="#pixel" x="9" y="4" /></g>';

        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3]));
        return output;
    }

    function tdEye() public pure returns(string memory) {
        string[4] memory parts;
        parts[0] = '<g id="tdEye" transform="translate(0,2)" fill="red"><use xlink:href="#pixel" x="3" y="1" fill="#6384B3"/><use xlink:href="#pixel" x="4" y="1" fill="#6384B3" /><use xlink:href="#pixel" x="5" y="1" fill="#6384B3" /><use xlink:href="#pixel" x="6" y="1" fill="#6384B3" /><use xlink:href="#pixel" x="7" y="1" fill="#6384B3" /><use xlink:href="#pixel" x="8" y="1" fill="#6384B3" /><use xlink:href="#pixel" x="9" y="1" fill="#6384B3" />';
        parts[1] = '<use xlink:href="#pixel" x="3" y="2" fill="#6384B3" /><use xlink:href="#pixel" x="4" y="2" fill="blue" /><use xlink:href="#pixel" x="5" y="2" fill="blue" /><use xlink:href="#pixel" x="6" y="2" fill="red" /><use xlink:href="#pixel" x="7" y="2" fill="red" /><use xlink:href="#pixel" x="8" y="2" fill="red" /><use xlink:href="#pixel" x="9" y="2" fill="#6384B3" /><use xlink:href="#pixel" x="10" y="2" fill="#444" /><use xlink:href="#pixel" x="11" y="2" fill="#444" />';
        parts[2] = '<use xlink:href="#pixel" x="3" y="3" fill="#6384B3" /><use xlink:href="#pixel" x="4" y="3" fill="blue" /><use xlink:href="#pixel" x="5" y="3" fill="blue" /><use xlink:href="#pixel" x="6" y="3" fill="blue" /><use xlink:href="#pixel" x="7" y="3" /><use xlink:href="#pixel" x="8" y="3" /><use xlink:href="#pixel" x="9" y="3" fill="#6384B3" /><use xlink:href="#pixel" x="10" y="3" fill="#444" /><use xlink:href="#pixel" x="11" y="3" fill="#444" /><use xlink:href="#pixel" x="12" y="3" fill="#444" />';
        parts[3] = '<use xlink:href="#pixel" x="3" y="4" fill="#6384B3" /><use xlink:href="#pixel" x="4" y="4" fill="#6384B3" /><use xlink:href="#pixel" x="5" y="4" fill="#6384B3" /><use xlink:href="#pixel" x="6" y="4" fill="#6384B3" /><use xlink:href="#pixel" x="7" y="4" fill="#6384B3" /><use xlink:href="#pixel" x="8" y="4" fill="#6384B3" /><use xlink:href="#pixel" x="9" y="4" fill="#6384B3" /></g>';

        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3]));
        return output;
    }
    function heartEye() public pure returns(string memory) {
        string[2] memory parts;
        parts[0] = '<g id="heart-eye" transform="translate(0,2)" fill="pink">';
        parts[1] = '<rect x="3" y="2" width="2" height="1" /><rect x="4" y="2" width="1" height="1" fill="orangered" /><rect x="8" y="2" width="1" height="1" fill="orangered" /><rect x="8" y="3" width="1" height="1" fill="orangered" /><rect x="8" y="4" width="1" height="1" fill="orangered" /><rect x="7" y="5" width="1" height="1" fill="orangered" /><rect x="6" y="6" width="1" height="1" fill="orangered" /><rect x="6" y="2" width="2" height="1" /><rect x="3" y="3" width="5" height="1" /><rect x="3" y="4" width="5" height="1" /><rect x="4" y="5" width="3" height="1" /><rect x="5" y="6" width="1" height="1" /></g>';

        string memory output = string(abi.encodePacked(parts[0], parts[1]));
        return output;
    }

    function smileEye() public pure returns(string memory) {
        string[2] memory parts;
        parts[0] = '<g id="smile-eye" transform="translate(0,2)" fill="#2f2f">';
        parts[1] = '<use xlink:href="#pixel" x="3" y="3" /><use xlink:href="#pixel" x="4" y="2" /><use xlink:href="#pixel" x="5" y="3" /><use xlink:href="#pixel" x="7" y="3" /><use xlink:href="#pixel" x="8" y="2" /><use xlink:href="#pixel" x="9" y="3" /><use xlink:href="#pixel" x="5" y="6" /><use xlink:href="#pixel" x="4" y="5" /><use xlink:href="#pixel" x="6" y="6" /><use xlink:href="#pixel" x="7" y="5" /></g>';

        string memory output = string(abi.encodePacked(parts[0], parts[1]));
        return output;
    }

    function brokenFace() public pure returns(string memory) {
        string[2] memory parts;
        parts[0] = '<g id="brokenface"  fill="#2f2f">';
        parts[1] = '<use xlink:href="#pixel" x="8" y="4" /><use xlink:href="#pixel" x="9" y="4" /><use xlink:href="#pixel" x="8" y="5" fill="red"/><use xlink:href="#pixel" x="9" y="5" /><use xlink:href="#pixel" x="7" y="6" /><use xlink:href="#pixel" x="8" y="6" /><use xlink:href="#pixel" x="9" y="6" /><use xlink:href="#pixel" x="6" y="7" /><use xlink:href="#pixel" x="7" y="7" /><use xlink:href="#pixel" x="8" y="7" /><use xlink:href="#pixel" x="6" y="8" /><use xlink:href="#pixel" x="7" y="8" /></g>';

        string memory output = string(abi.encodePacked(parts[0], parts[1]));
        return output;
    }

    function mustacheFace() public pure returns(string memory) {
        string[3] memory parts;
        parts[0] = '<g id="mustacheface" transform="translate(0,2)" fill="black"><use xlink:href="#pixel" x="3" y="2" /><use xlink:href="#pixel" x="4" y="2" /><use xlink:href="#pixel" x="5" y="2" /><use xlink:href="#pixel" x="7" y="2" /><use xlink:href="#pixel" x="8" y="2" /><use xlink:href="#pixel" x="8" y="2" /><use xlink:href="#pixel" x="6" y="4" /><use xlink:href="#pixel" x="5" y="5" /><use xlink:href="#pixel" x="7" y="5" />';
        parts[1] = '<rect x="1" y="6" width="5" height="1" /><rect x="7" y="6" width="5" height="1" /><use xlink:href="#pixel" x="1" y="5" /><use xlink:href="#pixel" x="3" y="5" /><rect x="1" y="4" width="3" height="1" />';
        parts[2] = '<use xlink:href="#pixel" x="11" y="5" /><use xlink:href="#pixel" x="9" y="5" /><rect x="9" y="4" width="3" height="1" /></g>';

        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2]));
        return output;
    }
    
    function squidRectFace() public pure returns(string memory) {
        string [3] memory parts;
        parts[0] = '<g id="rectSquidFace" fill="#FF0075"><rect x="5" y="1" width="6" height="1" /><rect x="4" y="2" width="6" height="1" /><rect x="10" y="2" width="2" height="1" fill="#F43B86" /><rect x="10" y="3" width="3" height="1" fill="#F43B86" /><rect x="11" y="4" width="2" height="5" fill="#F43B86" /><rect x="10" y="9" width="2" height="1" fill="#F43B86" /><rect x="10" y="7" width="1" height="1" />';
        parts[1] =  '<rect x="9" y="8" width="2" height="1" /><rect x="4" y="9" width="6" height="1" /><rect x="4" y="4" width="4" height="1" fill="#ffffff" /><use xlink:href="#pixel" x="4" y="5" fill="#ffffff" /><use xlink:href="#pixel" x="7" y="5" fill="#ffffff" /><use xlink:href="#pixel" x="4" y="6" fill="#ffffff" /><use xlink:href="#pixel" x="7" y="6" fill="#ffffff" /><rect x="4" y="7" width="4" height="1" fill="#ffffff" />';
        parts[2] = '<rect x="4" y="3" width="5" height="1" fill="#333" /><rect x="3" y="4" width="1" height="4" fill="#333" /><rect x="5" y="5" width="2" height="2" fill="#333" /><rect x="8" y="4" width="2" height="3" fill="#333" /><rect x="8" y="7" width="1" height="1" fill="#333" /><rect x="4" y="8" width="4" height="1" fill="#333" /></g>';

        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2]));
        return output;
    }

    function laserEye(string memory _eyecolor) public pure returns(string memory) {
        string[2] memory parts;
        parts[0] = string(abi.encodePacked('<g id="laserEye" fill="',_eyecolor,'" ><use xlink:href="#pixel" x="2" y="0" /><use xlink:href="#pixel" x="1" y="1" /><use xlink:href="#pixel" x="0" y="2" /><use xlink:href="#pixel" x="4" y="0" /><use xlink:href="#pixel" x="3" y="1" /><use xlink:href="#pixel" x="2" y="2" /><use xlink:href="#pixel" x="1" y="3" /><use xlink:href="#pixel" x="0" y="3" /><use xlink:href="#pixel" x="0" y="4" /><use xlink:href="#pixel" x="4" y="4" /><use xlink:href="#pixel" x="7" y="4" /><use xlink:href="#pixel" x="4" y="6" /><use xlink:href="#pixel" x="7" y="6" />'));
        parts[1] = '<rect x="0" y="5" width="9" height="1" /><use xlink:href="#pixel" x="0" y="6" /><use xlink:href="#pixel" x="0" y="7" /><use xlink:href="#pixel" x="1" y="7" /><use xlink:href="#pixel" x="0" y="8" /><use xlink:href="#pixel" x="2" y="8" /><use xlink:href="#pixel" x="1" y="9" /><use xlink:href="#pixel" x="3" y="9" /><use xlink:href="#pixel" x="2" y="10" /><use xlink:href="#pixel" x="3" y="11" /></g>';
        
        string memory output = string(abi.encodePacked(parts[0], parts[1]));
        return output;
    }
}

library MardenBody {
    function getBody() public pure returns(string memory) {
        string[7] memory parts;
        parts[0] = '<g id="body"><use xlink:href="#pixel" x="7" y="10" class="_color1" /><use xlink:href="#pixel" x="8" y="10" class="_color3" />';
        parts[1] = '<use xlink:href="#pixel" x="6" y="11" class="body" /><use xlink:href="#pixel" x="7" y="11" class="body" /><use xlink:href="#pixel" x="8" y="11" class="body" /><use xlink:href="#pixel" x="9" y="11" class="_color3" />';
        parts[2] = '<use xlink:href="#pixel" x="5" y="12" class="body" /><use xlink:href="#pixel" x="6" y="12" class="body" /><use xlink:href="#pixel" x="7" y="12" class="body" /><use xlink:href="#pixel" x="8" y="12" class="body" /><use xlink:href="#pixel" x="9" y="12" class="body" /><use xlink:href="#pixel" x="10" y="12" class="_color3" />';
        parts[3] = '<use xlink:href="#pixel" x="5" y="13" class="body" /><use xlink:href="#pixel" x="6" y="13" class="body" /><use xlink:href="#pixel" x="7" y="13" class="body" /><use xlink:href="#pixel" x="8" y="13" class="body" /><use xlink:href="#pixel" x="9" y="13" class="body" /><use xlink:href="#pixel" x="10" y="13" class="_color3" />';
        parts[4] = '<use xlink:href="#pixel" x="5" y="14" class="body" /><use xlink:href="#pixel" x="6" y="14" class="body" /><use xlink:href="#pixel" x="7" y="14" class="body" /><use xlink:href="#pixel" x="8" y="14" class="body" /><use xlink:href="#pixel" x="9" y="14" class="body" /><use xlink:href="#pixel" x="10" y="14" class="_color3" />';
        parts[5] = '<use xlink:href="#pixel" x="5" y="15" class="hands" /><use xlink:href="#pixel" x="6" y="15" class="body" /><use xlink:href="#pixel" x="7" y="15" class="body" /><use xlink:href="#pixel" x="8" y="15" class="body" /><use xlink:href="#pixel" x="9" y="15" class="body" /><use xlink:href="#pixel" x="10" y="15" class="hands" /></g>';

        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3], parts[4], parts[5]));
        return output;
    }
}

library MardenSymbol {
    function getSymbol() public pure returns(string memory) {
        string[4] memory parts;
        parts[0] = '<g id="wardentoken" transform="translate(6,12)">';
        parts[1] = '<use xlink:href="#pixel" x="0" y="0" class="symbol1" /><use xlink:href="#pixel" x="2" y="0" class="symbol1" />';
        parts[2] = '<use xlink:href="#pixel" x="0" y="1" class="symbol2" /><use xlink:href="#pixel" x="1" y="1" class="symbol1" /><use xlink:href="#pixel" x="2" y="1" class="symbol2" />';
        parts[3] = '<use xlink:href="#pixel" x="2" y="1" class="symbol2" /><use xlink:href="#pixel" x="1" y="2" class="symbol2" /></g>';
        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3]));
        return output;
    }
}

library MardenWing {
    function getWing() public pure returns(string memory) {
        string[6] memory parts;
        parts[0] = '<g id="wings" transform="translate(10,11)">';
        parts[1] = '<use xlink:href="#pixel" x="0" y="0" class="wings1" /><use xlink:href="#pixel" x="1" y="0" class="wings1" /><use xlink:href="#pixel" x="2" y="0" class="wings1" />';
        parts[2] = '<use xlink:href="#pixel" x="1" y="1" class="wings2" /><use xlink:href="#pixel" x="2" y="1" class="wings1" /><use xlink:href="#pixel" x="3" y="1" class="wings1" />';
        parts[3] = '<use xlink:href="#pixel" x="1" y="2" class="wings2" /><use xlink:href="#pixel" x="2" y="2" class="wings2" /><use xlink:href="#pixel" x="3" y="2" class="wings1" /><use xlink:href="#pixel" x="4" y="2" class="wings1" />';
        parts[4] = '<use xlink:href="#pixel" x="1" y="3" class="wings2" /><use xlink:href="#pixel" x="2" y="3" class="wings2" /><use xlink:href="#pixel" x="3" y="3" class="wings1" /><use xlink:href="#pixel" x="4" y="3" class="wings1" />';
        parts[5] = '<use xlink:href="#pixel" x="1" y="4" class="wings2" /><use xlink:href="#pixel" x="2" y="4" class="wings2" /><use xlink:href="#pixel" x="3" y="4" class="wings1" /><use xlink:href="#pixel" x="4" y="4" class="wings1" /></g>';
        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3], parts[4], parts[5]));
        return output;
    }
}


contract MardenFactory is ERC721Enumerable, ReentrancyGuard, Ownable {

    mapping(uint256 => uint256) public minted;

    string[] private colors = [ 
        "#222831",
        "#393E46",
        "#00ADB5",
        "#F9ED69",
        "#F08A5D",
        "#B83B5E",
        "#6A2C70",
        "#F38181",
        "#FCE38A",
        "#EAFFD0",
        "#95E1D3",
        "#08D9D6",
        "#252A34",
        "#FF2E63",
        "#53354A",
        "#903749",
        "#E84545",
        "#2B2E4A",
        "#A7FF83",
        "#17B978",
        "#086972",
        "#94FC13",
        "#1df900",
        "#071A52",
        "#FF165D",
        "#FF9A00",
        "#F6F7D7",
        "#3EC1D3"
    ];

    string[] private bgColors = [
        "#F0E5CF", //COMMON
        "#149e22", //RARE
        "#f1e61d", //EPIC
        "#000000" //LEGENDARY
    ];


    function getEye(uint256 tokenId) internal view returns(string memory) {
        uint256 rand = random(string(abi.encodePacked(tokenId, "eyeware")));
        uint256 eyeNum = rand % 11;
        if(eyeNum == 0) {
            string memory eyecolor = getEyeColor(tokenId);
            return MardenEyes.laserEye(eyecolor);
        } else if(eyeNum == 1) {
            return  MardenEyes.robotEye();
        } else if(eyeNum == 2) {
            return  MardenEyes.tdEye();
        } else if(eyeNum == 3) {
            return MardenEyes.thugEye();
        } else if(eyeNum == 4) {
            return MardenEyes.heartEye();
        } else if(eyeNum == 5) {
            return MardenEyes.smileEye();
        } else if(eyeNum == 6) {
            return  MardenEyes.brokenFace();
        } else if(eyeNum == 7) {
            return MardenEyes.mustacheFace();
        } else if (eyeNum == 8) {
            string memory rarity = getRarity(tokenId);
            if(MardenUtils.compareString(rarity, "legendary") || MardenUtils.compareString(rarity, "epic")) {
                return  MardenEyes.squidRectFace();
            } 
            return MardenEyes.wardenEye();
        } else {
            return MardenEyes.wardenEye();

        }
    }

    function getEyeColor(uint256 tokenId) internal view returns(string memory) {
        return pluck(tokenId, "EYES", colors);
    }

    function getBgColor(uint256 tokenId) internal view returns(string memory) {
        return pluck(tokenId, "BACKGROUND", bgColors);
    }

    function getWingColor(uint256 tokenId) internal view returns(string memory, string memory) { 
        return (pluck(tokenId, "WINGS1", colors), pluck(tokenId, "WINGS2", colors));
    }

    function getFaceColor(uint256 tokenId) internal view returns(string memory) {
        return pluck(tokenId, "FACE", colors);
    } 

    function getBodyColor(uint256 tokenId) internal view returns(string memory) {
        return pluck(tokenId, "BODY", colors);
    }


    function getRarity(uint256 tokenId) internal view returns(string memory) {
        string memory rarity = getBgColor(tokenId);
        if(MardenUtils.compareString(rarity, bgColors[0])) {
            return "common";
        } else if (MardenUtils.compareString(rarity, bgColors[1])) {
            return "rare";
        } else if (MardenUtils.compareString(rarity, bgColors[2])) {
            return "epic";
        } else {
            return "legendary";
        }
    }

    function random(string memory input) internal pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(input)));
    }

    function pluck(uint256 tokenId, string memory prefix, string[] memory sourceArray) internal pure returns (string memory) {
        uint256 rand = random(string(abi.encodePacked(prefix, toString(tokenId))));
        string memory output = sourceArray[rand % sourceArray.length];
        uint256 rareBg = rand % 21;

        /**
        @dev Background color is represent the rarity of MardenLoot
        "#F0E5CF" = COMMON 
        "#149e22" = RARE
        "#f1e61d" = EPIC
        "#a80fc3" = LEGENDARY
        */
        if(MardenUtils.compareString(prefix, "BACKGROUND")) {
            if(rareBg > 14 && rareBg < 19) {
                output = sourceArray[1];
            } else if (rareBg >= 19) {
                output = sourceArray[2];
            } else if (rareBg == 0) {
                output = sourceArray[3];
            } else {
                output = sourceArray[0];
            }
        }
        return output;
    }

    function isMinted(uint256 tokenId) internal returns(bool) {
        if(minted[tokenId] == 0) {
            minted[tokenId] = 1;
            return true;
        } else {
            return false;
        }    
    }


    function tokenURI(uint256 tokenId) override public view returns(string memory) {
        string[9] memory parts;
        (string memory wings1, string memory wings2) = getWingColor(tokenId);

        parts[0] = '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="336px" height="336px" preserveAspectRatio="xMinYMin meet" viewBox="0, 0 16, 16">';
        parts[1] = string(abi.encodePacked('<defs><g id="pixel" class="',toString(tokenId),'"><rect width="1" height="1"></rect></g></defs>'));
        parts[2] = MardenUtils.getStyles(
            MardenUtils.Styles(
                getFaceColor(tokenId), 
                getEyeColor(tokenId), 
                getBodyColor(tokenId), 
                wings1, 
                wings2,
                getBgColor(tokenId)
            )
        ); 
        parts[3] = MardenHead.getHead();
        parts[4] = getEye(tokenId);
        parts[5] = MardenBody.getBody();
        parts[6] = MardenSymbol.getSymbol();
        parts[7] = MardenWing.getWing();
        parts[8] = '</svg>';

        string memory output = string(abi.encodePacked(parts[0], parts[1], parts[2], parts[3], parts[4], parts[5]));
        output = string(abi.encodePacked(output, parts[6], parts[7], parts[8]));


        string memory json = Base64.encode(bytes(string(abi.encodePacked('{"name": "Marden #', toString(tokenId), '", "description": "Marden 16 bit is the NFT project for WardenSwap fanart contest on OCT 2021, for random Marden generated and stored on chain. (Loot project random Style), there are 3 types of rarity represented by it background color, there are COMMON, RARE, EPIC, LEGENDARY, use it as avatar or any way you want !", "image": "data:image/svg+xml;base64,', Base64.encode(bytes(output)), '", "attributes": [ { "trait_type": "rarity", "value": "',getRarity(tokenId),'"} ]}'))));
        output = string(abi.encodePacked('data:application/json;base64,', json));
        return output;
    }

    function claim(uint256 tokenId) public nonReentrant {
        require(tokenId > 0 && tokenId < 16001, "Token ID invalid");
        require(isMinted(tokenId), 'this token is minted!');
        _safeMint(_msgSender(), tokenId);
    }

    function toString(uint256 value) internal pure returns (string memory) {
    // Inspired by OraclizeAPI's implementation - MIT license
    // https://github.com/oraclize/ethereum-api/blob/b42146b063c7d6ee1358846c198246239e9360e8/oraclizeAPI_0.4.25.sol

        if (value == 0) {
            return "0";
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
    }

    constructor() ERC721("Marden 16", "MAD16") Ownable() {
    }

}