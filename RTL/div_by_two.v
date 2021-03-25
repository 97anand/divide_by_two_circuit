module div_by_two(
  input      clk_in,
  input      reset_n,
  output reg clk_out
);

always @(posedge clk_in or negedge reset_n)
  begin
    if(!reset_n)
      begin
       clk_out <= 1'b0; 
      end 
    else
      begin
       clk_out <= ~clk_out; 
      end
  end

endmodule
