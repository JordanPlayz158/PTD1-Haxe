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

class Class_52 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_341 = 1;

    static inline final const_383 = 2;

    static inline final const_353 = 3;

    static inline final const_388 = 4;

    static inline final const_338 = 5;

    static inline final const_350 = 6;

    static inline final const_380 = 7;

    static inline final const_377 = 8;

    static inline final const_397 = 9;

    static inline final const_379 = 10;

    static inline final const_340 = 6;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 60;
    }

    override public function do_Wave() {
        if (var_5 == Class_52.const_340) {
            if (var_6 == 60) {
                var_6 = 60;
                wave_Finished();
                return;
            }
            method_4(++var_6);
            var_11 = 75;
            var_5 = 0;
            return;
        }
        my_Parent.add_Enemy_Poke(method_1(Class_52.const_52));
        var_11 = 30;
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        if (param1 == Class_52.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 10 + 1);
            }
            if (param3 == 0) {
                param3 = Std.int(85 + Math.random() * 4);
            }
            method_11(_loc4_);
            _loc4_.level = param3;
            if (param2 <= Class_52.const_341) {
                _loc4_.num = Class_13.const_50;
                _loc4_.move1 = Class_9.var_104;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "vk";
                if (_loc4_.name != "Tentacool") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_52.const_383) {
                _loc4_.num = Class_13.const_91;
                _loc4_.move1 = Class_9.var_428;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ekp";
                if (_loc4_.name != "Magikarp") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_52.const_353) {
                _loc4_.num = Class_13.const_86;
                _loc4_.move1 = Class_9.var_260;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "wj";
                if (_loc4_.name != "Poliwag") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_52.const_388) {
                _loc4_.num = Class_13.const_87;
                _loc4_.move1 = Class_9.var_155;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "eeb";
                if (_loc4_.name != "Goldeen") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_52.const_338) {
                _loc4_.num = Class_13.const_67;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "pj";
                if (_loc4_.name != "Shellder") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_52.const_350) {
                _loc4_.num = Class_13.const_59;
                _loc4_.move1 = Class_9.var_173;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "eew";
                if (_loc4_.name != "Horsea") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_52.const_380) {
                _loc4_.num = Class_13.const_68;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ekj";
                if (_loc4_.name != "Staryu") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_52.const_377) {
                _loc4_.num = Class_13.const_135;
                _loc4_.move1 = Class_9.var_96;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "kj";
                if (_loc4_.name != "Raticate") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_52.const_379) {
                _loc4_.num = Class_13.const_110;
                _loc4_.move1 = Class_9.var_208;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "eem";
                if (_loc4_.name != "Tangela") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_52.const_397) {
                _loc4_.num = Class_13.const_37;
                _loc4_.move1 = Class_9.var_125;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "eb";
                if (_loc4_.name != "Pidgeot") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        _loc4_.var_26 = Std.int(_loc4_.var_26 * 1.5);
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 7;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

