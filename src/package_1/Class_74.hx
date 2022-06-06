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

class Class_74 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_313 = 1;

    static inline final const_204 = 2;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 1;
    }

    override public function do_Wave() {
        my_Parent.add_Enemy_Poke(method_1(Class_74.const_313));
        my_Parent.add_Enemy_Poke(method_1(Class_74.const_204));
        var_6 = 2;
        wave_Finished();
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_74.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 1000 + 1);
            }
        }
        else if (param1 == Class_74.const_313) {
            _loc4_.num = Class_13.const_103;
            _loc4_.move1 = Class_9.var_189;
            _loc4_.var_13 = 1;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Gyarados") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_74.const_204) {
            _loc4_.num = Class_13.const_12;
            _loc4_.move1 = Class_9.var_113;
            _loc4_.var_13 = 1;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Geodude") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 10;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

