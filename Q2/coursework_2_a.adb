pragma SPARK_Mode;

package body coursework_2_a is

   procedure Computation (X,Y : in Integer; Z : out Integer) is
      Aux : Integer;
   begin
      Aux := 0;
      Z := X;
      loop
         pragma Loop_Invariant (Aux in 0 .. Y and Z - Aux = X);
         exit when Aux = Y;
         Aux := Aux + 1;
         Z := Z + 1;
      end loop;
   end Computation;

end coursework_2_a;
