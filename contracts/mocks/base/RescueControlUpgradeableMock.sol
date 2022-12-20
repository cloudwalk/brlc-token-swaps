// SPDX-License-Identifier: MIT

pragma solidity 0.8.16;

import { RescueControlUpgradeable } from "../../base/RescueControlUpgradeable.sol";

/**
 * @title RescueControlUpgradeableMock contract
 * @author CloudWalk Inc.
 * @dev An implementation of the {RescueControlUpgradeable} contract for test purposes.
 */
contract RescueControlUpgradeableMock is RescueControlUpgradeable {
    /// @dev The role of this contract owner.
    bytes32 public constant OWNER_ROLE = keccak256("OWNER_ROLE");

    /**
     * @dev The initializer of the upgradable contract.
     *
     * See details https://docs.openzeppelin.com/upgrades-plugins/1.x/writing-upgradeable .
     */
    function initialize() public initializer {
        _setupRole(OWNER_ROLE, _msgSender());
        __RescueControl_init(OWNER_ROLE);
    }
}