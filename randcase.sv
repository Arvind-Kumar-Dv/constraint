class eth_cfg;
static int good_pkt_weight=1;//we can change here what pkt we want to genrate 
static int bad_pkt_weight=0;
static int ill_pkt_weight=0;
endclass

class eth_gen;
task run();
repeat(10) begin
randcase
 eth_cfg::good_pkt_weight: begin
$display("good_pkt_weight");
end

 eth_cfg::bad_pkt_weight: begin
$display("bad_pkt_weight");
end

 eth_cfg::ill_pkt_weight: begin
$display("ill_pkt_weight");
end
endcase
end
endtask
endclass


module top;
eth_gen gen=new();
initial begin
gen.run();
end
endmodule
/* output
# good_pkt_weight
# good_pkt_weight
# good_pkt_weight
# good_pkt_weight
# good_pkt_weight
# good_pkt_weight
# good_pkt_weight
# good_pkt_weight
# good_pkt_weight
# good_pkt_weight
*/

