/*
			**** FUNCIONES EN CLASES ****
			
	El presente código implementa la creacion de funciones dentro de 
	clases.
	Se implementan 2 Funciones diferentes 
	
	SUMAR : funcion que retorna y recibe parámetros con un ancho de 7 bits 
		  que implementa la suma de los parámetros.
		  
	Leer_Oculto : implementa la lectura de una variable local dentro de una
			clase desde fuera de la clase.
			
*/

//Creación de clase
class Funciones_enClase;

  //Definición de funciones y variables
  local bit [3:0] Y = 4'b1011;
  
  function bit[6:0] SUMAR(input bit[6:0]A, input [6:0]B);
    return A + B;
  endfunction
  
  function bit[6:0] Leer_Oculto();
    return Y;
   endfunction
    
endclass

//Definición del Modulo 
module Testbench;
  
  //Manejador del tipo de clase
  Funciones_enClase FEC;
  
  //Variables para almacenar resultados
  bit[6:0] Resultado;
  bit[6:0] VOculto;
  
  initial begin
  
	//Inicialización de variables
    FEC = new();
    
    Resultado = FEC.SUMAR(7'b0001010,7'b0000101); // Llamado de funcion
    #10;
    $display("Resultado: %b", Resultado); //Monitoreo de variables
    #10;
    
    VOculto = FEC.Leer_Oculto(); 
    $display("Valor local de la clase : %b", Resultado);
  end
  
endmodule // Fin del módulo