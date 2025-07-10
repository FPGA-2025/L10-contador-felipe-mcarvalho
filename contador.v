module Contador (
    input  wire clk,
    input  wire rst_n,

    input  wire acrescer,
    input  wire decrecer,

    output reg [7:0] saida
);

    // Insira seu código aqui
    always @(posedge clk or negedge rst_n) begin
            if (!rst_n) begin
                saida <= 8'h6A;  // 106 em decimal
            end else begin
                if (acrescer && !decrecer) begin
                    saida <= saida + 1;
                end else if (!acrescer && decrecer) begin
                    saida <= saida - 1;
                end
            end
        end

endmodule
