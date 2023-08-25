// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Participant {
    address public owner;

    constructor() {
        owner = msg.sender;
    }
}

contract Supplier is Participant {
    string public supplierName;

    constructor(string memory _supplierName) {
        supplierName = _supplierName;
    }

    function placeOrder() public pure  returns (string memory) {
        return "Order placed with supplier.";
    }
}

contract Manufacturer is Participant {
    string public manufacturerName;

    constructor(string memory _manufacturerName) {
        manufacturerName = _manufacturerName;
    }

    function manufactureProduct() public pure  returns (string memory) {
        return "Product manufactured by manufacturer.";
    }
}

contract Product is Supplier, Manufacturer {
    string public productName;

    constructor(
        string memory _supplierName,
        string memory _manufacturerName,
        string memory _productName
    )
        Supplier(_supplierName)
        Manufacturer(_manufacturerName)
    {
        productName = _productName;
    }

    function trackProduct() public pure  returns (string memory) {
        return "Product tracked.";
    }
}

contract SupplyChainDemo {
    Product public product;

    constructor(
        string memory _supplierName,
        string memory _manufacturerName,
        string memory _productName
    ) {
        product = new Product(_supplierName, _manufacturerName, _productName);
    }

    function demonstrateSupplyChain() public view returns (string memory) {
        string memory orderStatus = product.placeOrder();
        string memory manufacturingStatus = product.manufactureProduct();
        string memory trackingStatus = product.trackProduct();

        return
            string(
                abi.encodePacked(
                    orderStatus,
                    " ",
                    manufacturingStatus,
                    " ",
                    trackingStatus
                )
            );
    }
}
