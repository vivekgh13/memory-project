class mem_env extends uvm_env;

mem_agent agent_h;

`uvm_component_utils(mem_env);

function new(string name,uvm_component parent);
super.new(name,parent);
endfunction

function void build_phase(uvm_phase phase);
super.build_phase(phase);
agent_h=mem_agent::type_id::create("agent_h",this);
endfunction

function void connect_phase(uvm_phase phase);

endfunction

endclass
