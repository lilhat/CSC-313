pragma SPARK_Mode;

package coursework_1_a is
   
   type Hour is new Integer range 0 .. 23;
   
   type Minute is new Integer range 0 .. 59;
   
   type Second is new Integer range 0 .. 59;
   
   type Time is
      record
         Hours : Hour;
         Minutes : Minute;
         Seconds : Second;
      end record;
   
   Procedure AddTimes(time1, time2 : in Time; finaltime : out Time) with
     Depends => (finaltime => (time1,time2)),
     Pre => (Integer(time1.Hours) >= 0 and Integer(time1.Hours) <= 23 and 
               Integer(time2.Hours) >= 0 and Integer(time2.Hours) <= 23),
     Post => (Integer(finaltime.Hours) * 3600 + Integer(finaltime.Minutes) * 60 + Integer(finaltime.Seconds) = 
                Integer(time1.Hours) * 3600 + Integer(time1.Minutes) * 60 + Integer(time1.Seconds) + 
                  Integer(time2.Hours) * 3600 + Integer(time2.Minutes) * 60 + Integer(time2.Seconds) or
             (Integer(finaltime.Hours) + 24) * 3600 + Integer(finaltime.Minutes) * 60 + Integer(finaltime.Seconds) = 
                Integer(time1.Hours) * 3600 + Integer(time1.Minutes) * 60 + Integer(time1.Seconds) + 
                  Integer(time2.Hours) * 3600 + Integer(time2.Minutes) * 60 + Integer(time2.Seconds));

   
   function f(time1, time2 : in Time) return Time with
     Pre => (Integer(time1.Hours) >= 0 and Integer(time1.Hours) <= 23 and 
               Integer(time2.Hours) >= 0 and Integer(time2.Hours) <= 23),
     Post => (Integer(f'Result.Hours) * 3600 + Integer(f'Result.Minutes) * 60 + Integer(f'Result.Seconds) = 
                Integer(time1.Hours) * 3600 + Integer(time1.Minutes) * 60 + Integer(time1.Seconds) + 
                  Integer(time2.Hours) * 3600 + Integer(time2.Minutes) * 60 + Integer(time2.Seconds) or
             (Integer(f'Result.Hours) + 24) * 3600 + Integer(f'Result.Minutes) * 60 + Integer(f'Result.Seconds) = 
                Integer(time1.Hours) * 3600 + Integer(time1.Minutes) * 60 + Integer(time1.Seconds) + 
                  Integer(time2.Hours) * 3600 + Integer(time2.Minutes) * 60 + Integer(time2.Seconds));

end coursework_1_a;
