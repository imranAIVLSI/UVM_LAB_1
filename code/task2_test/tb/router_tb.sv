class router_tb extends uvm_env;
    `uvm_component_utils(router_tb)


    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("BUILD_PHASE", "Build phase of the testbench is being executed", UVM_HIGH)
    endfunction
endclass