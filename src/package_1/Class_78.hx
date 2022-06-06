package package_1
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import code.Class_13;
import code.Class_6;
import code.Class_875;
import code.Class_9;

class Class_78 extends Class_7 {


    static inline final const_275 = 1;

    static inline final const_274 = 2;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 1;
    }

    override public function do_Wave() {
        if (var_5 == 0) {
            my_Parent.add_Enemy_Poke(method_1(Class_78.const_275));
            var_11 = 18;
        }
        else if (var_5 == 1) {
            my_Parent.add_Enemy_Poke(method_1(Class_78.const_274));
            var_11 = 60;
            wave_Finished();
            return;
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        if (param1 == Class_78.const_275) {
            _loc4_.num = Class_13.const_48;
            Class_13.method_2(_loc4_);
            _loc4_.level = 27;
            _loc4_.move1 = Class_9.var_155;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 5;
        }
        else if (param1 == Class_78.const_274) {
            _loc4_.num = Class_13.const_45;
            Class_13.method_2(_loc4_);
            _loc4_.level = 27;
            _loc4_.move1 = Class_9.var_256;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 5;
        }
        _loc4_.var_19 = "pje";
        _loc4_.var_27 *= 5;
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

