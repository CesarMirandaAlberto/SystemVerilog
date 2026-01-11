/*
							**** FORK JOIN ****
			
	El presente código implementa el uso del fork y jon en los Procesos
	para esto se implementan clases donde cada una implementa una task 
	con diferente retardo.
	Dentro del módulo se implementa inicialmente fork join pero y se analiza
	el tiempo en que se terminaron los procesos, si se quiere analizar bajo otras
	opciones de fork join solo ahi que comentar y descomentar según se quiera
	analizar.
			
*/

//Escala de tiempo
`timescale 1ns/1ns

// Definición de clase para el primer proceso
class Proceso_1;
  
  task Proceso1();
    #8; //retardo
    $display("Proceso 1 completado en: %t",$time);
  endtask
  
endclass

// Definición de clase para el segundo proceso
class Proceso_2;
  task Proceso2();
    #16;
    $display("Proceso 2 completado en: %t", $time);
  endtask
endclass

//Definición del módulo
module Testbench;
  
	//Manejadores y tipo de clase
	Proceso_1 P1;
  	Proceso_2 P2;
  
  	initial begin
  	
	  //Inicialización
      P1 = new();
      P2 = new();
      
	  // Aplicación del fork join
      fork
        P1.Proceso1();
        P2.Proceso2();
      join
      //join_none
      //join_any
      $display("Procesos completados en %t: ", $time); //Monitoreo en consola
    end
  
endmodule // Fin del módulo