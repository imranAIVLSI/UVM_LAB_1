module top;
// import the UVM library
// include the UVM macros
import uvm_pkg::*;
`include "uvm_macros.svh"
// import the YAPP package
import yapp_pkg::*;
// generate 5 random packets and use the print method
// to display the results

initial begin
   yapp_packet p1, p2, p3;
   p1 = new("p1");
   p2 = new("p2");

      assert(p1.randomize());
      p1.print();
      // p1.print(uvm_default_tree_printer);
      // p1.print(uvm_default_line_printer);
      assert(p2.randomize());
      // p2.copy(p1);
      p2.print();
      $cast(p3 ,p1.clone()); // cloning
      p3.print();
      if(p1.compare(p2))
         $display("P1 = P2 Equal");
      else
         $display("P1 != P2 Not Equal");
   end
// experiment with the copy, clone and compare UVM method
endmodule : top
