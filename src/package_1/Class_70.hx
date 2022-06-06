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

class Class_70 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_234 = 700;

    static inline final const_193 = 980;

    static inline final const_232 = 998;

    static inline final const_230 = 999;

    static inline final const_240 = 1000;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 10;
    }

    override public function do_Wave() {
        if (var_5 == 6) {
            my_Parent.add_Enemy_Poke(method_1(Class_70.const_52));
            if (var_6 == 10) {
                var_6 = 11;
                wave_Finished();
                return;
            }
            method_4(++var_6);
            var_11 = 120;
            var_5 = 0;
            return;
        }
        if (var_5 == 1 || var_5 == 3) {
            my_Parent.add_Enemy_Poke(method_1(0, Class_70.const_240));
        }
        else {
            my_Parent.add_Enemy_Poke(method_1(0, Class_70.const_240), 1, "2");
        }
        var_11 = 21;
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:ASAny = null;
        _loc4_ = new Class_6();
        if (param1 == Class_70.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 1000 + 1);
            }
            method_11(_loc4_);
            if (param2 <= Class_70.const_234) {
                _loc4_.num = Class_13.const_19;
                _loc4_.move1 = Class_9.var_125;
                _loc4_.move2 = Class_9.var_53;
                _loc4_.move3 = Class_9.var_158;
                _loc4_.move4 = Class_9.var_99;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "me";
                _loc4_.level = 30;
                if (_loc4_.name != "Zubat") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_70.const_193) {
                _loc4_.num = Class_13.const_12;
                _loc4_.move1 = Class_9.var_113;
                _loc4_.move2 = Class_9.var_162;
                _loc4_.move3 = Class_9.var_50;
                _loc4_.move4 = Class_9.var_136;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "vm";
                _loc4_.level = 30;
                if (_loc4_.name != "Geodude") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_70.const_232) {
                _loc4_.num = Class_13.const_21;
                _loc4_.move1 = Class_9.var_84;
                _loc4_.move2 = Class_9.var_167;
                _loc4_.move3 = Class_9.var_204;
                _loc4_.move4 = Class_9.var_143;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ww";
                _loc4_.level = 20;
                if (_loc4_.name != "Machop") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_70.const_230) {
                _loc4_.num = Class_13.const_23;
                _loc4_.move1 = Class_9.var_176;
                _loc4_.move2 = Class_9.var_50;
                _loc4_.move3 = Class_9.var_196;
                _loc4_.move4 = Class_9.var_82;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ejj";
                _loc4_.level = 20;
                if (_loc4_.name != "Voltorb") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_70.const_240) {
                _loc4_.num = Class_13.const_16;
                _loc4_.move1 = Class_9.var_80;
                _loc4_.move2 = Class_9.var_31;
                _loc4_.move3 = Class_9.var_75;
                _loc4_.move4 = Class_9.var_141;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "pi";
                _loc4_.level = 30;
                if (_loc4_.name != "Onix") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 23;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

