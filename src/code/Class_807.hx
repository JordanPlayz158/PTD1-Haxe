package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
    class Class_807 extends Class_732
   {
       
      
      public function new(param1:Poke, param2:Int)
      {
         super(param1,new Do_Decrease_Defense(),param2);
      }
      
      @:allow(code) override function init() 
      {
         super.init();
         var _loc1_= new Class_22(Class_22.const_11);
         var_1.myProfile.mod_Defense *= 0.5;
      }
      
      @:allow(code) override function remove_Me() 
      {
         var_1.myProfile.mod_Defense *= 2;
         super.remove_Me();
      }
   }

