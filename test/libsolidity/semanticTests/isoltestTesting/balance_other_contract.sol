contract Other {
    constructor() payable {
    }
    function getAddress() public returns (address) {
        return address(this);
    }
}
contract ClientReceipt {
    Other other;
    constructor() payable {
        other = new Other{value:500}();
    }
    function getAddress() public returns (address) {
        return other.getAddress();
    }
}
// ----
// constructor(), 2000 wei ->
// gas irOptimized: 114353
// gas irOptimized code: 58800
// gas legacy: 118617
// gas legacy code: 111400
// gas legacyOptimized: 114067
// gas legacyOptimized code: 59800
// balance -> 1500
// gas irOptimized: 191881
// gas legacy: 235167
// gas legacyOptimized: 180756
// getAddress() -> 0x137aa4dfc0911524504fcd4d98501f179bc13b4a
// balance: 0x137aa4dfc0911524504fcd4d98501f179bc13b4a -> 500
