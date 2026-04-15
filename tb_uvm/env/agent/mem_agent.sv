class mem_agent extends uvm_agent;

mem_drv drv_h;
mem_mon mon_h;
mem_sqr sqr_h;

`uvm_component_utils(mem_agent)

function new(string name,uvm_component parent);
super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
super.build_phase(phase);

drv_h=mem_drv::type_id::create("drv_h",this);
mon_h=mem_mon::type_id::create("mon_h",this);
sqr_h=mem_sqr::type_id::create("sqr_h",this);

endfunction

function void connect_phase(uvm_phase phase);
drv_h.seq_item_port.connect(sqr_h.seq_item_export);
endfunction

endclass


