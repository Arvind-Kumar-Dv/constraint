typedef enum bit[1:0]{
				SMALL,
				MEDIUM,
				LARGE
				}pkt_type_e;

class eth_pkt;
	rand int len;
	rand pkt_type_e pkt_type;

function void print();
$display("len=%0d,pkt_type=%s",len,pkt_type);
endfunction

constraint pkt_type_len_c{
	(pkt_type==SMALL)-> (len>10 && len<50);
	(pkt_type==MEDIUM)-> (len>50 && len<100);
	(pkt_type==LARGE)-> (len>100 && len<200);
}
endclass

module top;
eth_pkt pkt=new();
initial begin
repeat(10)begin
assert(pkt.randomize());
//assert(pkt.randomize() with {pkt_type==SMALL;});
$display("pkt=%p",pkt);
pkt.print();
end
end
endmodule
/* output if we will randomize only small then it will come
# pkt='{len:34, pkt_type:SMALL}
# pkt='{len:16, pkt_type:SMALL}
# pkt='{len:23, pkt_type:SMALL}
# pkt='{len:49, pkt_type:SMALL}
# pkt='{len:11, pkt_type:SMALL}
# pkt='{len:18, pkt_type:SMALL}
# pkt='{len:24, pkt_type:SMALL}
# pkt='{len:17, pkt_type:SMALL}
# pkt='{len:41, pkt_type:SMALL}
# pkt='{len:40, pkt_type:SMALL}

if i will randomize the pkt then all it will take all pkt

# pkt='{len:176, pkt_type:LARGE}
# len=176,pkt_type=LARGE
# pkt='{len:58, pkt_type:MEDIUM}
# len=58,pkt_type=MEDIUM
# pkt='{len:158, pkt_type:LARGE}
# len=158,pkt_type=LARGE
# pkt='{len:62, pkt_type:MEDIUM}
# len=62,pkt_type=MEDIUM
# pkt='{len:30, pkt_type:SMALL}
# len=30,pkt_type=SMALL
# pkt='{len:48, pkt_type:SMALL}
# len=48,pkt_type=SMALL
# pkt='{len:25, pkt_type:SMALL}
# len=25,pkt_type=SMALL
# pkt='{len:36, pkt_type:SMALL}
# len=36,pkt_type=SMALL
# pkt='{len:127, pkt_type:LARGE}
# len=127,pkt_type=LARGE
# pkt='{len:60, pkt_type:MEDIUM}
# len=60,pkt_type=MEDIUM

*/
