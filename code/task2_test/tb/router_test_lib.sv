class base_test extends uvm_test;
    `uvm_component_utils(base_test)

    function new (string name, uvm_component parent);
        super.new(name, parent);
    endfunction
    router_tb tb;
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        tb = new("tb", this);
        `uvm_info("BUILD_PHASE", "Build Phase of Testbench is being executed", UVM_HIGH);
    endfunction

    function void end_of_elaboration_phase(uvm_phase phase);
        uvm_top.print_topology();
    endfunction

endclass

class test2 extends base_test;
    `uvm_component_utils(test2);

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

endclass