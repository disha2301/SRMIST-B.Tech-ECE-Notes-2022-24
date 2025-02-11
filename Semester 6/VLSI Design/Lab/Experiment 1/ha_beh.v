module hf_beh(sum, carry, a,b);
input a,b;
output sum,carry;
reg sum, carry;
wire a,b;
always @(a or b)
	begin
	case ({a,b})
	2'b00: begin sum=1'b0; carry=1'b0; end
	2'b01: begin sum=1'b1; carry=1'b0; end
	2'b10: begin sum=1'b1; carry=1'b0; end
	2'b11: begin sum=1'b0; carry=1'b1; end
endcase
end
endmodule