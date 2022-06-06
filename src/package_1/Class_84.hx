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

class Class_84 extends Class_7 {


    static inline final const_303 = 1;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 1;
    }

    override public function do_Wave() {
        if (var_5 == 0) {
            my_Parent.add_Enemy_Poke(method_1(Class_84.const_303));
            var_11 = 60;
            wave_Finished();
            return;
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        if (param1 == Class_84.const_303) {
            _loc4_.num = Class_13.const_42;
            Class_13.method_2(_loc4_);
            _loc4_.level = 28;
            _loc4_.move1 = Class_9.var_143;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 5;
            if (_loc4_.name != "Mankey") {
                my_Parent.end_hack();
                return null;
            }
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

