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

class Class_46 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_313 = 1;

    static inline final const_378 = 2;

    static inline final const_245 = 3;

    static inline final const_358 = 4;

    static inline final const_316 = 5;

    static inline final const_328 = 6;

    static inline final const_302 = 7;

    static inline final const_367 = 8;

    static inline final const_388 = 333;

    static inline final const_341 = 666;

    static inline final const_348 = 999;

    static inline final const_385 = 1000;

    static inline final const_340 = 6;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 45;
    }

    override public function do_Wave() {
        var _loc1_ = 0;
        if (var_5 == Class_46.const_340) {
            if (var_6 == 45) {
                var_6 = 46;
                wave_Finished();
                return;
            }
            method_4(++var_6);
            var_11 = 75;
            var_5 = 0;
            return;
        }
        if (var_5 >= 4) {
            my_Parent.add_Enemy_Poke(method_1(Class_46.const_52));
        }
        else {
            _loc1_ = Std.int(Math.random() * 8 + 1);
            my_Parent.add_Enemy_Poke(method_1(_loc1_));
        }
        var_11 = 30;
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_46.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 1000 + 1);
            }
            if (param3 == 0) {
                param3 = 40;
            }
            _loc4_.level = param3;
            method_11(_loc4_);
            if (param2 <= Class_46.const_388) {
                _loc4_.num = Class_13.const_87;
                _loc4_.move1 = Class_9.var_155;
                _loc4_.move2 = Class_9.var_70;
                _loc4_.move3 = Class_9.var_260;
                _loc4_.move4 = Class_9.var_99;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_16 *= 2;
                _loc4_.var_19 = "eeb";
                if (_loc4_.name != "Goldeen") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_46.const_341) {
                _loc4_.num = Class_13.const_50;
                _loc4_.move1 = Class_9.var_104;
                _loc4_.move2 = Class_9.var_99;
                _loc4_.move3 = Class_9.var_305;
                _loc4_.move4 = Class_9.var_159;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_16 *= 2;
                _loc4_.var_19 = "vk";
                if (_loc4_.name != "Tentacool") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_46.const_348) {
                _loc4_.num = Class_13.const_61;
                _loc4_.move1 = Class_9.var_113;
                _loc4_.move2 = Class_9.var_173;
                _loc4_.move3 = Class_9.var_330;
                _loc4_.move4 = Class_9.var_57;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_16 *= 2;
                _loc4_.var_19 = "pb";
                if (_loc4_.name != "Krabby") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_46.const_385) {
                _loc4_.num = Class_13.const_157;
                _loc4_.move1 = Class_9.var_222;
                _loc4_.move2 = Class_9.var_89;
                _loc4_.move3 = Class_9.var_46;
                _loc4_.move4 = Class_9.var_197;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_16 *= 2;
                _loc4_.var_19 = "exe";
                if (_loc4_.name != "Lapras") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        else if (param1 == Class_46.const_378) {
            _loc4_.num = Class_13.const_155;
            _loc4_.level = 65;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_308;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
        }
        else if (param1 == Class_46.const_245) {
            _loc4_.num = Class_13.const_125;
            _loc4_.level = 65;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_272;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
        }
        else if (param1 == Class_46.const_358) {
            _loc4_.num = Class_13.const_141;
            _loc4_.level = 65;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_113;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
        }
        else if (param1 == Class_46.const_367) {
            _loc4_.num = Class_13.const_157;
            _loc4_.level = 65;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_36;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
        }
        else if (param1 == Class_46.const_313) {
            _loc4_.num = Class_13.const_103;
            _loc4_.level = 65;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_57;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
        }
        else if (param1 == Class_46.const_316) {
            _loc4_.num = Class_13.const_119;
            _loc4_.level = 65;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_373;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
        }
        else if (param1 == Class_46.const_302) {
            _loc4_.num = Class_13.const_37;
            _loc4_.level = 65;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_102;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
        }
        else if (param1 == Class_46.const_328) {
            _loc4_.num = Class_13.const_96;
            _loc4_.level = 65;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_89;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
        }
        _loc4_.var_26 = Std.int(_loc4_.var_26 * 1.5);
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 5;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

