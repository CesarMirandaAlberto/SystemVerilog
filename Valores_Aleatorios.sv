/*
			**** FUNCIONES EN CLASES ****
			
	El presente código implementa la generación de valores aleatorios mediante dos tipos de datos
	aleatorios rand y randc.
	rand : Valores aleatorios que se pueden repetir N veces
	randc : Valores aleatorios ciclicos que no se pueden repetir
	
	para generar este tipo de datos se recurre al uso de la función randomize() la cual genera estos
	valores, posteriormente se muestra en consola el valor, todo esto dentro de un ciclo for con la
	cantidad de ancho de bits de las variables.
	
	para generar estos valores se implementan 2 clases diferentes.
	
*/

//Clase para valores rand
class Aleatorios_Rand;
	
  rand bit [3:0] X;
endclass

//Clase para valores ciclicos
class Aleatorios_Ciclico;
	
  randc bit [3:0] A;

endclass
  
//Definición del módulo
module Testbench;

	//Manejadores y su tipo de clase
  	Aleatorios_Rand AR;
  	Aleatorios_Ciclico AC;
  	
	//Entero para las iteraciones
  	integer i;
  
  	initial begin
	// Inicialización
      AR = new();
      AC = new();
	  //Texto en consola, iteraciones 
      $display("Valores aleatorios");
      for(i=0; i<16; i++) begin
        AR.randomize(); //Llamado de función randomize
        $display(" X: %d", AR.X);
      	#10;	
      end
      
      $display("---------------------");
      $display("VALORES CICLICOS");
      $display("---------------------");
      
      for(i=0; i<16; i++) begin
        AC.randomize();
        $display(" A: %d", AC.A);
      	#10;	
      end
    
    end
  	
endmodule // Fin del módulo
