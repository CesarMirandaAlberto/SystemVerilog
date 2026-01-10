/*
			**** HERENCIA EN CLASES ****
	El presente código implementa la herencia dentro de las clases
	para esto se presenta dos clases Principal y Segunda la cual
	heredará los atributos de la clase principal, especificando
	(extends) de cual clase heredará los atributos para posteriormente
	mostrarlos en consola.
	
*/

// Definición de clase Principal
class Principal;
  
  bit [6:0] X = 7'b0001010;
  bit [6:0] Y = 7'b0101010;
  
endclass

//Clase segunda sin nada
class Segunda extends Principal;  
endclass

// Definición del módulo
module Testbench;
  	
  //Manejador de tipo clase
  Segunda S;
  
  initial begin
  	
    S = new(); //Inicialización
    #10; //Retardo
	
	// Texto en consola
    $display("El valor de X e Y dentro de la segunda clase: %b , %b", S.X, S.Y);
  end
  
endmodule // Fin del módulo