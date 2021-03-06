// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./interfaces/IERC721Metadata.sol";
import "./interfaces/IERC721.sol";
import "./IERC721Receiver.sol";
import "./Address.sol";
import "./Context.sol";
import "./Strings.sol";
import "./ERC165.sol";

contract SVG is Context, ERC165, IERC721, IERC721Metadata {
    using Address for address;
    using Strings for uint256;

    string public svg = "<svg width='152' height='152' viewBox='0 0 152 152' fill='none' xmlns='http://www.w3.org/2000/svg'><g filter='url(#filter0_bd_1109_63687)'><circle cx='75.7333' cy='75.7333' r='56.7333' fill='url(#paint0_linear_1109_63687)'/><circle cx='75.7333' cy='75.7333' r='59.2333' stroke='#ED1EFF' stroke-width='5'/></g><path d='M55.037 79.8822L57.1498 63.9571L38.7942 51.2038L55.5651 56.8866L59.5268 50.8074L73.9868 41.8206L105.878 59.3976L107.529 86.2258L93.3327 105.983L82.1082 107.702L87.9186 97.0628V86.8204L83.6928 78.825L79.4011 75.9835L72.7983 82.7896V89.9922L67.6482 94.816L61.1115 95.609L58.2063 97.261L53.4523 95.7412L51.4714 88.6046L55.037 83.5827V79.8822Z' fill='white'/><path d='M84.3528 51.0716C80.8533 50.3448 77.0237 50.543 77.0237 50.543C77.0237 50.543 75.7692 56.3579 67.978 57.8778C68.044 57.8778 78.2783 61.38 84.3528 51.0716Z' fill='#94A6C3'/><path d='M87.5226 103.803C91.7483 100.499 94.9176 95.9394 96.3702 90.7853C96.4363 90.587 97.0306 90.2567 97.4267 89.9923C98.0869 89.5958 98.7473 89.2655 98.8793 88.7369C99.1434 87.2169 99.2754 85.631 99.2754 84.0451C99.2754 83.4505 98.6812 82.8558 98.0869 82.2611C97.6249 81.8646 97.1626 81.4019 97.1626 81.0716C96.5023 75.0583 93.7293 69.4417 89.3053 65.3448L88.8431 65.8073C93.135 69.8381 95.9082 75.3227 96.5023 81.1377C96.5684 81.6663 97.0965 82.195 97.6249 82.7236C98.0869 83.12 98.6152 83.7148 98.6152 83.9792C98.6152 85.499 98.4832 87.0188 98.2191 88.5386C98.153 88.8028 97.5588 89.0672 97.0965 89.3314C96.4363 89.6619 95.8421 89.9923 95.71 90.5209C94.1254 96.1377 90.4939 101.027 85.6738 104.199C86.5322 102.349 89.2394 96.3359 90.692 93.2963L90.4278 83.5165L82.0423 75.3888L77.2884 76.0497L72.0722 84.5078C72.0722 84.5078 74.5152 87.6135 71.0818 91.2478C67.7144 94.8161 65.0732 95.6091 65.0732 95.6091L62.6303 94.2874C63.3566 93.3624 64.8092 91.9746 65.9316 91.0495C67.8464 89.4636 69.7612 89.3314 69.7612 87.6135C69.8273 84.0451 65.9977 85.0364 65.9977 85.0364L64.6112 86.3579L64.0169 91.2478L61.1117 94.8822L60.7815 94.8161L56.0276 93.7588C56.0276 93.7588 58.9328 92.239 59.395 90.5209C59.8571 88.8689 58.4706 83.3844 58.4045 83.0539C58.4706 83.12 59.7911 84.2434 60.3854 86.0937C61.4417 83.1861 62.8284 80.4108 63.2245 80.1465C63.6206 79.8821 68.9688 77.0408 68.9688 77.0408L67.1862 81.7324L68.5068 81.0055L71.6761 73.2082C71.6761 73.2082 74.7793 71.6884 77.0902 71.6884C81.2501 71.6223 87.3905 66.5342 84.6173 57.4153C85.4097 57.7456 99.1434 64.6179 101.52 78.0981C103.303 88.4725 97.4267 98.1862 87.5226 103.803Z' fill='#94A6C3'/><path d='M71.8085 52.5254C73.3271 50.7414 72.7328 48.0981 72.7328 48.0981L68.309 54.6399C68.2429 54.6399 69.8937 54.706 71.8085 52.5254Z' fill='#0A192B'/><path d='M56.9508 88.2745L57.479 85.6313C57.479 85.6313 55.3001 89.4638 55.1021 89.9925C54.904 90.5872 55.2342 91.6445 56.0925 91.5784C56.9508 91.5123 58.0073 90.2569 58.0073 89.3318C58.0073 88.1423 56.9508 88.2745 56.9508 88.2745Z' fill='#0A192B'/><path d='M96.172 46.248C96.172 46.248 99.4734 46.3801 102.907 46.7766C95.1817 40.6973 87.8527 38.9132 81.9102 38.9132C73.7227 38.9132 68.1764 42.2832 67.8464 42.4815L70.4214 38.3845C70.4214 38.3845 60.1211 37.3934 56.4896 48.2964C55.5652 45.9836 54.7068 42.6136 54.7068 42.6136C54.7068 42.6136 49.3587 47.3052 51.8677 55.1026C45.7272 52.8559 36.9455 49.7502 36.6154 49.6841C36.1532 49.618 36.0211 49.8163 36.0211 49.8163C36.0211 49.8163 35.8891 50.0146 36.2852 50.3449C37.0115 50.9396 50.8773 61.1818 53.9146 63.1643C53.2542 65.5431 53.2542 66.6664 53.9146 67.7898C54.8389 69.3096 54.905 70.1025 54.7729 71.2258C54.6409 72.3492 53.4523 82.0629 53.1883 83.2524C52.9242 84.4417 50.151 88.6707 50.2831 89.9263C50.4151 91.1819 52.1318 96.5341 53.6505 97.1289C54.7729 97.5255 57.5461 98.3844 59.3948 98.3844C60.055 98.3844 60.6493 98.2522 60.9135 97.988C62.0359 96.9968 62.366 96.7985 63.1584 96.7985C63.2245 96.7985 63.2904 96.7985 63.3565 96.7985C63.6865 96.7985 64.0828 96.8646 64.5449 96.8646C65.6014 96.8646 66.988 96.6663 67.9784 95.7413C69.431 94.2876 71.9399 92.3051 72.7324 91.38C73.7227 90.1246 74.2509 88.4065 73.9868 86.6884C73.7888 85.1025 74.6472 83.7149 75.6376 82.3271C76.892 80.6751 79.203 77.7016 79.203 77.7016C83.7589 81.1378 86.5981 86.3581 86.5981 92.173C86.5981 102.481 77.6183 110.807 66.5258 110.807C64.8091 110.807 63.1584 110.609 61.5076 110.213C66.5917 111.997 70.8836 112.591 74.3831 112.591C81.8441 112.591 85.8058 109.882 85.8058 109.882C85.8058 109.882 84.4191 111.666 82.1743 113.715C82.2402 113.715 82.2402 113.715 82.2402 113.715C94.5874 111.997 100.596 101.82 100.596 101.82C100.596 101.82 100.134 105.124 99.5395 107.371C115.98 95.0143 113.207 79.5519 113.141 79.0233C113.273 79.2214 114.924 81.2038 115.782 82.261C118.423 55.0365 96.172 46.248 96.172 46.248ZM70.8836 89.728C70.6195 90.0585 69.497 91.0497 68.7047 91.7764C67.9123 92.5034 67.054 93.2303 66.3938 93.891C66.1297 94.1554 65.6014 94.2876 64.8091 94.2876C64.5449 94.2876 64.2808 94.2876 64.0828 94.2876C63.9508 94.2876 63.8186 94.2876 63.6865 94.2876C63.5545 94.2876 63.4886 94.2876 63.4225 94.2876C63.2245 94.2876 63.0263 94.2876 62.8282 94.2876C63.8186 92.9659 66.7238 89.9263 67.7143 89.2655C68.9027 88.4726 69.497 87.6796 68.7707 86.292C68.0444 84.9042 66.1297 85.2347 66.1297 85.2347C66.1297 85.2347 67.2521 84.7722 68.2425 84.7722C66.988 84.4417 65.4034 84.7722 64.6771 85.4989C63.8847 86.2259 64.0167 88.8029 63.6865 90.4549C63.3565 92.173 62.2339 93.032 60.5172 94.6179C59.593 95.4769 58.9326 95.7413 58.4044 95.7413C57.282 95.543 55.9614 95.2126 55.037 94.8823C54.3768 94.0232 53.3862 91.1819 53.1222 89.9924C53.3203 89.3316 54.1125 87.944 54.5088 87.1509C55.3011 85.6311 55.7633 84.7722 55.8953 83.9791C56.1594 82.8558 57.0178 75.9174 57.3479 73.01C58.2063 74.1334 59.3948 75.9835 59.1307 77.173C61.0456 74.4637 59.6589 71.8206 58.9987 70.7633C58.4044 69.706 57.612 67.5915 58.2724 65.3448C58.9326 63.0982 61.3096 56.8866 61.3096 56.8866C61.3096 56.8866 62.1019 58.2744 63.2245 58.01C64.3469 57.7458 73.3926 44.1334 73.3926 44.1334C73.3926 44.1334 75.8357 49.4858 73.2605 53.3845C70.6195 57.2832 68.0444 58.01 68.0444 58.01C68.0444 58.01 71.6759 58.6708 75.0433 56.226C76.4298 59.4639 77.7504 62.8338 77.8165 63.2963C77.6183 63.7589 74.9772 70.1025 74.7131 70.4991C74.5811 70.6311 73.6568 70.8955 72.9964 71.0277C71.874 71.358 71.2136 71.5563 70.9496 71.7545C70.4873 72.1511 68.3745 77.966 67.3841 80.8073C66.1956 81.1378 65.0071 81.7985 64.1488 83.1202C64.611 82.7897 66.0636 82.5915 67.1201 82.4593C68.0444 82.3932 70.8836 83.913 71.6099 86.7545C71.6099 86.8206 71.6099 86.8206 71.6099 86.8867C71.742 87.944 71.4118 88.9351 70.8836 89.728ZM64.6771 90.521C65.2712 89.6619 65.2052 88.2082 65.2712 87.7457C65.3373 87.2831 65.4693 86.4242 65.9975 86.292C66.5258 86.1598 67.7803 86.3581 67.7803 87.2831C67.7803 88.1421 66.856 88.3404 66.1956 88.9351C65.7334 89.3977 64.8091 90.3888 64.6771 90.521ZM91.022 77.8999C91.6822 74.5298 91.7483 71.6224 91.5501 69.2435C94.1252 72.6797 95.7098 76.8427 96.172 81.1378C96.2381 81.6665 96.7663 82.1951 97.2945 82.7237C97.7567 83.1202 98.285 83.6488 98.285 83.9791C98.285 85.4989 98.1528 87.0187 97.8887 88.5387C97.8228 88.7368 97.2285 89.0673 96.7663 89.3316C96.1061 89.6619 95.5118 89.9924 95.3798 90.521C93.9272 95.6091 90.8238 100.103 86.6642 103.274C92.8046 96.8646 95.7759 86.292 91.022 77.8999ZM86.8621 103.869C91.154 100.565 94.4553 95.9396 95.908 90.7192C95.9739 90.521 96.5682 90.1905 96.9644 89.9263C97.6246 89.596 98.285 89.1994 98.417 88.6707C98.6811 87.1509 98.8132 85.565 98.8132 83.9791C98.8132 83.3844 98.2189 82.7897 97.6246 82.1951C97.2945 81.7985 96.7663 81.336 96.7663 81.0056C96.2381 76.1818 94.3233 71.6224 91.352 67.8559C90.0316 59.9264 84.7493 57.4814 84.6173 57.4153C84.7493 57.6136 88.1827 62.5696 85.8058 68.3845C83.3628 74.2656 77.0902 73.3404 76.562 73.4065C76.0337 73.4065 73.9868 76.0496 71.4118 80.9395C71.0816 80.8073 69.6951 80.477 68.1105 80.7412C69.299 77.4374 71.0816 72.7456 71.4118 72.3492C71.5438 72.217 72.5342 71.9528 73.1946 71.7545C74.449 71.4241 75.0433 71.2258 75.2414 70.9616C75.3735 70.7633 76.0337 69.2435 76.694 67.6576C77.2882 67.6576 78.8069 67.5254 78.9389 67.4593C79.0709 67.3273 80.3254 64.0894 80.3254 63.6929C80.3254 63.3624 77.7504 56.9527 76.76 54.5079C77.2222 53.9792 77.6844 53.3184 78.1467 52.5916C91.6822 54.0453 102.247 65.5431 102.247 79.4858C102.247 90.1905 95.9739 99.5078 86.8621 103.869Z' fill='#0A192B'/><path d='M69.299 68.1862C70.5535 66.7325 69.8933 64.0232 67.5823 63.5607C68.1764 62.1729 69.0349 59.3977 69.0349 59.3977C69.0349 59.3977 62.3 69.9704 61.7058 70.1685C61.1115 70.3668 60.5173 68.054 60.5173 68.054C59.2628 72.8778 62.6302 73.5386 63.0263 72.0188C64.8751 71.5563 68.0444 69.5738 69.299 68.1862Z' fill='#0A192B'/><path d='M63.5544 70.7635L66.9878 64.8826C66.9878 64.8826 68.9686 65.8737 67.9782 67.4596C66.7237 69.3098 63.5544 70.7635 63.5544 70.7635Z' fill='#FFD923'/><path d='M106.01 97.9881C105.019 99.3098 103.897 100.697 102.576 102.019C111.094 85.6314 102.972 70.6314 102.642 70.0366C103.237 70.6314 103.831 71.2922 104.359 71.8868C110.896 79.1556 111.688 90.0586 106.01 97.9881Z' fill='#D82122'/><path d='M113.934 76.9086C110.963 68.913 106.737 62.1069 97.427 55.9614C88.4473 50.0144 78.8073 50.477 78.279 50.5431C78.2131 50.5431 78.147 50.5431 78.147 50.5431C78.4772 50.4109 78.8073 50.3448 79.1374 50.2787C81.1842 49.6178 83.8254 49.0893 86.4665 48.7589C93.4653 47.7677 100.53 50.1465 105.35 55.2347C105.416 55.3008 105.416 55.3008 105.482 55.3669C110.963 61.1818 113.802 68.4505 113.934 76.9086Z' fill='#D82122'/><path d='M95.3141 44.1999C85.476 42.3497 79.1373 43.2748 74.5815 44.9928C74.4494 44.4642 73.9872 43.4069 73.5911 42.5479C72.2044 44.1999 70.7518 46.1822 69.8275 47.4378C67.3184 49.1558 66.262 50.8077 66.262 50.8077C67.7146 45.8519 71.9403 42.1514 77.0904 41.2263C78.543 40.962 80.1277 40.8298 81.8445 40.8298C86.4003 40.8959 90.9563 42.0193 95.3141 44.1999Z' fill='#D82122'/><path d='M58.932 56.8869C51.2067 56.6225 53.7818 47.6358 53.914 47.1072C53.914 47.1733 54.4421 54.1777 58.932 56.8869Z' fill='#D82122'/><path d='M66.5267 40.6975C60.5842 44.2658 61.7727 52.79 61.7727 52.79C56.0943 44.1336 66.0646 40.8957 66.5267 40.6975Z' fill='#D82122'/><path d='M56.7542 59.2656C57.1503 59.5961 57.5464 60.1906 57.0844 61.0498C56.8201 61.5123 56.424 61.4462 55.8297 61.182C55.0375 60.7854 50.2834 58.0102 45.9917 55.1687C50.8777 56.8868 55.8297 58.7369 56.6221 59.1334C56.6221 59.1334 56.6881 59.1995 56.7542 59.2656Z' fill='white'/><defs><filter id='filter0_bd_1109_63687' x='0' y='0' width='151.467' height='151.467' filterUnits='userSpaceOnUse' color-interpolation-filters='sRGB'><feFlood flood-opacity='0' result='BackgroundImageFix'/><feGaussianBlur in='BackgroundImage' stdDeviation='2'/><feComposite in2='SourceAlpha' operator='in' result='effect1_backgroundBlur_1109_63687'/><feColorMatrix in='SourceAlpha' type='matrix' values='0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0' result='hardAlpha'/>";

    // Token name
    string private _name;

    // Token symbol
    string private _symbol;

    // Mapping from token ID to owner address
    mapping(uint256 => address) private _owners;

    // Mapping owner address to token count
    mapping(address => uint256) private _balances;

    // Mapping from token ID to approved address
    mapping(uint256 => address) private _tokenApprovals;

    // Mapping from owner to operator approvals
    mapping(address => mapping(address => bool)) private _operatorApprovals;

    /**
     * @dev Initializes the contract by setting a `name` and a `symbol` to the token collection.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view override(ERC165, IERC165) returns (bool) {
        return
            interfaceId == type(IERC721).interfaceId ||
            super.supportsInterface(interfaceId);
    }

    /**
     * @dev See {IERC721-balanceOf}.
     */
    function balanceOf(address owner) public view override returns (uint256) {
        require(owner != address(0), "ERC721: balance query for the zero address");
        return _balances[owner];
    }

    /**
     * @dev See {IERC721-ownerOf}.
     */
    function ownerOf(uint256 tokenId) public view override returns (address) {
        address owner = _owners[tokenId];
        require(owner != address(0), "ERC721: owner query for nonexistent token");
        return owner;
    }

    /**
     * @dev See {IERC721Metadata-name}.
     */
    function name() public view override returns (string memory) {
        return _name;
    }

    /**
     * @dev See {IERC721Metadata-symbol}.
     */
    function symbol() public view override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev See {IERC721Metadata-tokenURI}.
     */
    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");

        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString())) : "";
    }

    /**
     * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
     * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
     * by default, can be overriden in child contracts.
     */
    function _baseURI() internal view virtual returns (string memory) {
        return "";
    }

    /**
     * @dev See {IERC721-approve}.
     */
    function approve(address to, uint256 tokenId) public virtual override {
        address owner = SVG.ownerOf(tokenId);
        require(to != owner, "ERC721: approval to current owner");

        require(
            _msgSender() == owner || isApprovedForAll(owner, _msgSender()),
            "ERC721: approve caller is not owner nor approved for all"
        );

        _approve(to, tokenId);
    }

    /**
     * @dev See {IERC721-getApproved}.
     */
    function getApproved(uint256 tokenId) public view virtual override returns (address) {
        require(_exists(tokenId), "ERC721: approved query for nonexistent token");

        return _tokenApprovals[tokenId];
    }

    /**
     * @dev See {IERC721-setApprovalForAll}.
     */
    function setApprovalForAll(address operator, bool approved) public virtual override {
        _setApprovalForAll(_msgSender(), operator, approved);
    }

    /**
     * @dev See {IERC721-isApprovedForAll}.
     */
    function isApprovedForAll(address owner, address operator) public view virtual override returns (bool) {
        return _operatorApprovals[owner][operator];
    }

    /**
     * @dev See {IERC721-transferFrom}.
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public virtual override {
        //solhint-disable-next-line max-line-length
        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: transfer caller is not owner nor approved");

        _transfer(from, to, tokenId);
    }

    /**
     * @dev See {IERC721-safeTransferFrom}.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) public virtual override {
        safeTransferFrom(from, to, tokenId, "");
    }

    /**
     * @dev See {IERC721-safeTransferFrom}.
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) public virtual override {
        require(_isApprovedOrOwner(_msgSender(), tokenId), "ERC721: transfer caller is not owner nor approved");
        _safeTransfer(from, to, tokenId, _data);
    }

    /**
     * @dev Safely transfers `tokenId` token from `from` to `to`, checking first that contract recipients
     * are aware of the ERC721 protocol to prevent tokens from being forever locked.
     *
     * `_data` is additional data, it has no specified format and it is sent in call to `to`.
     *
     * This internal function is equivalent to {safeTransferFrom}, and can be used to e.g.
     * implement alternative mechanisms to perform token transfer, such as signature-based.
     *
     * Requirements:
     *
     * - `from` cannot be the zero address.
     * - `to` cannot be the zero address.
     * - `tokenId` token must exist and be owned by `from`.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function _safeTransfer(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) internal virtual {
        _transfer(from, to, tokenId);
        require(_checkOnERC721Received(from, to, tokenId, _data), "ERC721: transfer to non ERC721Receiver implementer");
    }

    /**
     * @dev Returns whether `tokenId` exists.
     *
     * Tokens can be managed by their owner or approved accounts via {approve} or {setApprovalForAll}.
     *
     * Tokens start existing when they are minted (`_mint`),
     * and stop existing when they are burned (`_burn`).
     */
    function _exists(uint256 tokenId) internal view virtual returns (bool) {
        return _owners[tokenId] != address(0);
    }

    /**
     * @dev Returns whether `spender` is allowed to manage `tokenId`.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     */
    function _isApprovedOrOwner(address spender, uint256 tokenId) internal view virtual returns (bool) {
        require(_exists(tokenId), "ERC721: operator query for nonexistent token");
        address owner = SVG.ownerOf(tokenId);
        return (spender == owner || getApproved(tokenId) == spender || isApprovedForAll(owner, spender));
    }

    /**
     * @dev Safely mints `tokenId` and transfers it to `to`.
     *
     * Requirements:
     *
     * - `tokenId` must not exist.
     * - If `to` refers to a smart contract, it must implement {IERC721Receiver-onERC721Received}, which is called upon a safe transfer.
     *
     * Emits a {Transfer} event.
     */
    function _safeMint(address to, uint256 tokenId) internal virtual {
        _safeMint(to, tokenId, "");
    }

    /**
     * @dev Same as {xref-ERC721-_safeMint-address-uint256-}[`_safeMint`], with an additional `data` parameter which is
     * forwarded in {IERC721Receiver-onERC721Received} to contract recipients.
     */
    function _safeMint(
        address to,
        uint256 tokenId,
        bytes memory _data
    ) internal virtual {
        _mint(to, tokenId);
        require(
            _checkOnERC721Received(address(0), to, tokenId, _data),
            "ERC721: transfer to non ERC721Receiver implementer"
        );
    }

    /**
     * @dev Mints `tokenId` and transfers it to `to`.
     *
     * WARNING: Usage of this method is discouraged, use {_safeMint} whenever possible
     *
     * Requirements:
     *
     * - `tokenId` must not exist.
     * - `to` cannot be the zero address.
     *
     * Emits a {Transfer} event.
     */
    function _mint(address to, uint256 tokenId) internal virtual {
        require(to != address(0), "ERC721: mint to the zero address");
        require(!_exists(tokenId), "ERC721: token already minted");

        _beforeTokenTransfer(address(0), to, tokenId);

        _balances[to] += 1;
        _owners[tokenId] = to;

        emit Transfer(address(0), to, tokenId);

        _afterTokenTransfer(address(0), to, tokenId);
    }

    /**
     * @dev Destroys `tokenId`.
     * The approval is cleared when the token is burned.
     *
     * Requirements:
     *
     * - `tokenId` must exist.
     *
     * Emits a {Transfer} event.
     */
    function _burn(uint256 tokenId) internal virtual {
        address owner = SVG.ownerOf(tokenId);

        _beforeTokenTransfer(owner, address(0), tokenId);

        // Clear approvals
        _approve(address(0), tokenId);

        _balances[owner] -= 1;
        delete _owners[tokenId];

        emit Transfer(owner, address(0), tokenId);

        _afterTokenTransfer(owner, address(0), tokenId);
    }

    /**
     * @dev Transfers `tokenId` from `from` to `to`.
     *  As opposed to {transferFrom}, this imposes no restrictions on msg.sender.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - `tokenId` token must be owned by `from`.
     *
     * Emits a {Transfer} event.
     */
    function _transfer(
        address from,
        address to,
        uint256 tokenId
    ) internal virtual {
        require(SVG.ownerOf(tokenId) == from, "ERC721: transfer from incorrect owner");
        require(to != address(0), "ERC721: transfer to the zero address");

        _beforeTokenTransfer(from, to, tokenId);

        // Clear approvals from the previous owner
        _approve(address(0), tokenId);

        _balances[from] -= 1;
        _balances[to] += 1;
        _owners[tokenId] = to;

        emit Transfer(from, to, tokenId);

        _afterTokenTransfer(from, to, tokenId);
    }

    /**
     * @dev Approve `to` to operate on `tokenId`
     *
     * Emits a {Approval} event.
     */
    function _approve(address to, uint256 tokenId) internal virtual {
        _tokenApprovals[tokenId] = to;
        emit Approval(SVG.ownerOf(tokenId), to, tokenId);
    }

    /**
     * @dev Approve `operator` to operate on all of `owner` tokens
     *
     * Emits a {ApprovalForAll} event.
     */
    function _setApprovalForAll(
        address owner,
        address operator,
        bool approved
    ) internal virtual {
        require(owner != operator, "ERC721: approve to caller");
        _operatorApprovals[owner][operator] = approved;
        emit ApprovalForAll(owner, operator, approved);
    }

    /**
     * @dev Internal function to invoke {IERC721Receiver-onERC721Received} on a target address.
     * The call is not executed if the target address is not a contract.
     *
     * @param from address representing the previous owner of the given token ID
     * @param to target address that will receive the tokens
     * @param tokenId uint256 ID of the token to be transferred
     * @param _data bytes optional data to send along with the call
     * @return bool whether the call correctly returned the expected magic value
     */
    function _checkOnERC721Received(
        address from,
        address to,
        uint256 tokenId,
        bytes memory _data
    ) private returns (bool) {
        if (to.isContract()) {
            try IERC721Receiver(to).onERC721Received(_msgSender(), from, tokenId, _data) returns (bytes4 retval) {
                return retval == IERC721Receiver.onERC721Received.selector;
            } catch (bytes memory reason) {
                if (reason.length == 0) {
                    revert("ERC721: transfer to non ERC721Receiver implementer");
                } else {
                    assembly {
                        revert(add(32, reason), mload(reason))
                    }
                }
            }
        } else {
            return true;
        }
    }

    /**
     * @dev Hook that is called before any token transfer. This includes minting
     * and burning.
     *
     * Calling conditions:
     *
     * - When `from` and `to` are both non-zero, ``from``'s `tokenId` will be
     * transferred to `to`.
     * - When `from` is zero, `tokenId` will be minted for `to`.
     * - When `to` is zero, ``from``'s `tokenId` will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 tokenId
    ) internal virtual {}
}
