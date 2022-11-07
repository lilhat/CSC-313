pragma SPARK_Mode;

package coursework_2_a is

   procedure Computation (X,Y : in Integer; Z : out Integer) with
     Depends => (Z => (X,Y)),
     Pre => (X >= 0 and X <= 1000 and Y >= 0 and Y <= 1000),
     Post => (Z = X + Y);

end coursework_2_a;
