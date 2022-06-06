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

class Class_77 extends Class_7 {


    static inline final const_333 = 1;

    static inline final const_330 = 2;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 1;
    }

    override public function do_Wave() {
        if (var_5 == 0) {
            my_Parent.add_Enemy_Poke(method_1(Class_77.const_333));
            var_11 = 30;
        }
        else if (var_5 == 1) {
            my_Parent.add_Enemy_Poke(method_1(Class_77.const_330));
            var_11 = 60;
            wave_Finished();
            return;
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        if (param1 == Class_77.const_333) {
            _loc4_.num = Class_13.const_31;
            Class_13.method_2(_loc4_);
            _loc4_.level = 27;
            _loc4_.move1 = Class_9.var_88;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 3;
            if (_loc4_.name != "Sandshrew") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_77.const_330) {
            _loc4_.num = Class_13.const_34;
            Class_13.method_2(_loc4_);
            _loc4_.level = 27;
            _loc4_.move1 = Class_9.var_57;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 3;
            if (_loc4_.name != "Ekans") {
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

