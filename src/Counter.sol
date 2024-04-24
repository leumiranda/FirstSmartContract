// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Flipper {
    bool value; // setar public ou private é a nivel de código
    // se eu setar public, consigo puxar ele no codigo em qualquer lugar
    // se eu setar private, so esse contrato pode puxar.
    constructor() {
        value = true;
    }

    function getValue() external returns (bool) {
        return value;
        // external só outra pessoa pode chamar essa função
        // internal só uma pessoa interna pode chamar
        // public qualquer coisa pode chamar
        // private apenas esse contrato ou herdeiros chamem
    }

    function flip() external {
        value = !value;
    }
}