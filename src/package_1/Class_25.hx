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
import code.Class_878;
import code.Class_9;

class Class_25 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_235 = 65;

    static inline final const_363 = 35;

    static inline final const_361 = 79;

    static inline final const_336 = 89;

    static inline final const_347 = 99;

    static inline final const_407 = 100;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 30;
    }

    override public function do_Wave() {
        if (var_5 == 0) {
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 21;
        }
        else if (var_5 == 1) {
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 21;
        }
        else if (var_5 == 2) {
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 21;
        }
        else if (var_5 == 3) {
            my_Parent.add_Enemy_Poke(method_1());
            var_11 = 21;
        }
        else if (var_5 == 4) {
            my_Parent.add_Enemy_Poke(method_1());
            if (var_6 == 30) {
                wave_Finished();
                return;
            }
            method_4(++var_6);
            var_5 = 0;
            var_11 = 90;
            return;
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        if (param1 == Class_25.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            method_11(_loc4_);
            if (param2 <= Class_25.const_363) {
                _loc4_.num = Class_13.const_47;
                Class_13.method_2(_loc4_);
                if (param3 == 0) {
                    param3 = Std.int(6 + Math.random() * 3);
                }
                _loc4_.level = param3;
                _loc4_.move1 = Class_9.var_155;
                _loc4_.move2 = Class_9.var_89;
                _loc4_.move3 = Class_9.var_57;
                _loc4_.var_19 = "ke";
                _loc4_.var_13 = 3;
                if (_loc4_.name != "Spearow") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_25.const_235) {
                _loc4_.num = Class_13.const_28;
                Class_13.method_2(_loc4_);
                if (param3 == 0) {
                    param3 = Std.int(6 + Math.random() * 2);
                }
                _loc4_.level = param3;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.move2 = Class_9.var_102;
                _loc4_.var_13 = 2;
                _loc4_.var_19 = "ew";
                if (_loc4_.name != "Pidgey") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_25.const_361) {
                if (param3 == 0) {
                    param3 = Std.int(6 + Math.random() * 2);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_45;
                    _loc4_.move1 = Class_9.var_89;
                    _loc4_.move2 = Class_9.var_100;
                    _loc4_.var_13 = 2;
                    _loc4_.var_19 = "kp";
                    if (_loc4_.level == 7) {
                        _loc4_.move3 = Class_9.var_70;
                        _loc4_.var_13 = 3;
                    }
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_48;
                    _loc4_.move1 = Class_9.var_57;
                    _loc4_.move2 = Class_9.var_155;
                    _loc4_.var_13 = 2;
                    _loc4_.var_19 = "xk";
                    if (_loc4_.level == 7) {
                        _loc4_.move3 = Class_9.var_84;
                        _loc4_.var_13 = 3;
                    }
                }
                Class_13.method_2(_loc4_);
            }
            else if (param2 <= Class_25.const_336) {
                _loc4_.num = Class_13.const_77;
                Class_13.method_2(_loc4_);
                if (param3 == 0) {
                    param3 = Std.int(3 + Math.random() * 5);
                }
                _loc4_.level = param3;
                _loc4_.move1 = Class_9.var_222;
                _loc4_.var_13 = 1;
                if (_loc4_.level >= 5) {
                    _loc4_.move1 = Class_9.var_88;
                    _loc4_.move2 = Class_9.var_222;
                    _loc4_.var_13 = 2;
                }
                _loc4_.var_19 = "xp";
                if (_loc4_.name != "Jigglypuff") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_25.const_347) {
                _loc4_.num = Class_13.const_42;
                Class_13.method_2(_loc4_);
                if (param3 == 0) {
                    param3 = 7;
                }
                _loc4_.level = param3;
                _loc4_.move1 = Class_9.var_84;
                _loc4_.move2 = Class_9.var_100;
                _loc4_.move3 = Class_9.var_57;
                _loc4_.move4 = Class_9.var_280;
                _loc4_.var_13 = 4;
                _loc4_.var_19 = "iw";
                if (_loc4_.name != "Mankey") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_25.const_407) {
                if (param3 == 0) {
                    param3 = Std.int(6 + Math.random() * 2);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_45;
                    _loc4_.move1 = Class_9.var_89;
                    _loc4_.move2 = Class_9.var_100;
                    _loc4_.var_13 = 2;
                    if (_loc4_.level == 7) {
                        _loc4_.move3 = Class_9.var_70;
                        _loc4_.var_13 = 3;
                    }
                    _loc4_.var_19 = "kp";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_48;
                    _loc4_.move1 = Class_9.var_57;
                    _loc4_.move2 = Class_9.var_155;
                    _loc4_.var_13 = 2;
                    if (_loc4_.level == 7) {
                        _loc4_.move3 = Class_9.var_84;
                        _loc4_.var_13 = 3;
                    }
                    _loc4_.var_19 = "xk";
                }
                Class_13.method_2(_loc4_);
            }
        }
        _loc4_.var_27 = 1;
        _loc4_.var_77 = true;
        _loc4_.var_40 = 0;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_16 *= 5;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

