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

class Class_48 extends Class_7 {


    static inline final const_298 = 1;

    static inline final const_288 = 2;

    static inline final const_301 = 3;

    static inline final const_271 = 4;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 1;
    }

    override public function do_Wave() {
        if (var_5 == 0) {
            my_Parent.add_Enemy_Poke(method_1(Class_48.const_301));
            var_11 = 30;
        }
        else if (var_5 == 1) {
            my_Parent.add_Enemy_Poke(method_1(Class_48.const_271));
            var_11 = 30;
        }
        else if (var_5 == 2) {
            my_Parent.add_Enemy_Poke(method_1(Class_48.const_298));
            var_11 = 18;
        }
        else if (var_5 == 3) {
            my_Parent.add_Enemy_Poke(method_1(Class_48.const_288));
            var_11 = 60;
            wave_Finished();
            return;
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_48.const_298) {
            _loc4_.num = Class_13.const_39;
            Class_13.method_2(_loc4_);
            _loc4_.level = 25;
            _loc4_.move1 = Class_9.var_160;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Caterpie") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_48.const_288) {
            _loc4_.num = Class_13.const_43;
            Class_13.method_2(_loc4_);
            _loc4_.level = 25;
            _loc4_.move1 = Class_9.var_104;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Weedle") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_48.const_271) {
            _loc4_.num = Class_13.const_33;
            Class_13.method_2(_loc4_);
            _loc4_.level = 25;
            _loc4_.move1 = Class_9.var_80;
            _loc4_.move2 = Class_9.var_45;
            _loc4_.var_13 = 2;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Kakuna") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_48.const_301) {
            _loc4_.num = Class_13.const_35;
            Class_13.method_2(_loc4_);
            _loc4_.level = 25;
            _loc4_.move1 = Class_9.var_80;
            _loc4_.move2 = Class_9.var_403;
            _loc4_.var_13 = 2;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Metapod") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_27 *= 5;
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

