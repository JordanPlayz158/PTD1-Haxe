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

class Class_24 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_293 = 1;

    static inline final const_320 = 2;

    static inline final const_331 = 3;

    static inline final const_277 = 4;

    static inline final const_294 = 5;

    static inline final const_234 = 69;

    static inline final const_193 = 99;

    static inline final const_394 = 100;

    static inline final const_365 = 101;

    static inline final const_353 = 102;

    static inline final const_373 = 103;

    static inline final const_351 = 104;

    static inline final const_340 = 6;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 30;
    }

    override public function do_Wave() {
        if (var_5 == Class_24.const_340) {
            if (var_6 == 1 || var_6 == 6 || var_6 == 11 || var_6 == 16 || var_6 == 21 || var_6 == 26) {
                my_Parent.add_Enemy_Poke(method_1(Class_24.const_294));
            }
            else if (var_6 == 2 || var_6 == 7 || var_6 == 12 || var_6 == 17 || var_6 == 22 || var_6 == 27) {
                my_Parent.add_Enemy_Poke(method_1(Class_24.const_277));
            }
            else if (var_6 == 3 || var_6 == 8 || var_6 == 13 || var_6 == 18 || var_6 == 23 || var_6 == 28) {
                my_Parent.add_Enemy_Poke(method_1(Class_24.const_331));
            }
            else if (var_6 == 4 || var_6 == 9 || var_6 == 14 || var_6 == 19 || var_6 == 24 || var_6 == 29) {
                my_Parent.add_Enemy_Poke(method_1(Class_24.const_320));
            }
            else if (var_6 == 5 || var_6 == 10 || var_6 == 15 || var_6 == 20 || var_6 == 25 || var_6 == 30) {
                my_Parent.add_Enemy_Poke(method_1(Class_24.const_293));
                if (var_6 == 30) {
                    var_6 = 31;
                    wave_Finished();
                    return;
                }
            }
            method_4(++var_6);
            var_11 = 90;
            var_5 = 0;
            return;
        }
        my_Parent.add_Enemy_Poke(method_1(Class_24.const_52));
        var_11 = 21;
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_24.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 104 + 1);
            }
            method_11(_loc4_);
            if (param2 <= Class_24.const_234) {
                if (param3 == 0) {
                    param3 = Std.int(7 + Math.random() * 4);
                }
                _loc4_.level = param3;
                _loc4_.num = Class_13.const_19;
                _loc4_.move1 = Class_9.var_187;
                _loc4_.move2 = Class_9.var_99;
                _loc4_.var_13 = 2;
                _loc4_.var_19 = "me";
                if (param3 >= 9) {
                    _loc4_.move3 = Class_9.var_158;
                    _loc4_.var_13 = 3;
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Zubat") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_24.const_193) {
                if (param3 == 0) {
                    param3 = Std.int(7 + Math.random() * 3);
                }
                _loc4_.level = param3;
                _loc4_.num = Class_13.const_12;
                _loc4_.move1 = Class_9.var_113;
                _loc4_.move2 = Class_9.var_45;
                _loc4_.move3 = Class_9.var_88;
                _loc4_.var_19 = "vm";
                _loc4_.var_13 = 3;
                if (param3 >= 8) {
                    _loc4_.var_13 = 4;
                    _loc4_.move1 = Class_9.var_136;
                    _loc4_.move4 = Class_9.var_113;
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Geodude") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_24.const_394) {
                _loc4_.level = 8;
                _loc4_.num = Class_13.const_78;
                _loc4_.move1 = Class_9.var_164;
                _loc4_.move2 = Class_9.var_89;
                _loc4_.move3 = Class_9.var_222;
                _loc4_.move4 = Class_9.var_279;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "xi";
                if (_loc4_.name != "Clefairy") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_24.const_365) {
                _loc4_.level = 8;
                _loc4_.num = Class_13.const_105;
                _loc4_.move1 = Class_9.var_100;
                _loc4_.move2 = Class_9.var_152;
                _loc4_.move3 = Class_9.var_138;
                _loc4_.var_13 = 3;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "mw";
                if (_loc4_.name != "Paras") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_24.const_353) {
                _loc4_.level = 12;
                _loc4_.num = Class_13.const_86;
                _loc4_.move1 = Class_9.var_260;
                _loc4_.move2 = Class_9.var_173;
                _loc4_.move3 = Class_9.var_207;
                _loc4_.move4 = Class_9.var_46;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "wj";
                if (_loc4_.name != "Poliwag") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_24.const_373) {
                _loc4_.level = 12;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_40;
                    _loc4_.move1 = Class_9.var_259;
                    _loc4_.move2 = Class_9.var_129;
                    _loc4_.move3 = Class_9.var_159;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "mx";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_44;
                    _loc4_.move1 = Class_9.var_192;
                    _loc4_.move2 = Class_9.var_208;
                    _loc4_.move3 = Class_9.var_180;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "wp";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Oddish" && _loc4_.name != "Bellsprout") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_24.const_351) {
                _loc4_.level = 12;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_62;
                    _loc4_.move1 = Class_9.var_53;
                    _loc4_.move2 = Class_9.var_97;
                    _loc4_.move3 = Class_9.var_133;
                    _loc4_.move4 = Class_9.var_57;
                    _loc4_.var_13 = 4;
                    _loc4_.var_19 = "ib";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_71;
                    _loc4_.move1 = Class_9.var_133;
                    _loc4_.move2 = Class_9.var_70;
                    _loc4_.move3 = Class_9.var_97;
                    _loc4_.move4 = Class_9.var_96;
                    _loc4_.var_13 = 4;
                    _loc4_.var_19 = "xv";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Growlithe" && _loc4_.name != "Vulpix") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        else if (param1 == Class_24.const_320) {
            _loc4_.num = Class_13.const_116;
            Class_13.method_2(_loc4_);
            _loc4_.level = 18;
            _loc4_.move1 = Class_9.var_88;
            _loc4_.move2 = Class_9.var_136;
            _loc4_.move3 = Class_9.var_113;
            _loc4_.move4 = Class_9.var_141;
            _loc4_.var_13 = 4;
            _loc4_.var_39 = false;
            _loc4_.var_23 *= 2;
            _loc4_.var_24 *= 2;
            _loc4_.var_48 = false;
            if (_loc4_.name != "Graveler") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_24.const_277) {
            _loc4_.num = Class_13.const_101;
            Class_13.method_2(_loc4_);
            _loc4_.level = 18;
            _loc4_.move1 = Class_9.var_100;
            _loc4_.move2 = Class_9.var_88;
            _loc4_.move3 = Class_9.var_113;
            _loc4_.move4 = Class_9.var_141;
            _loc4_.var_13 = 4;
            _loc4_.var_23 *= 2;
            _loc4_.var_24 *= 2;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            if (_loc4_.name != "Parasect") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_24.const_331) {
            _loc4_.num = Class_13.const_136;
            Class_13.method_2(_loc4_);
            _loc4_.level = 18;
            _loc4_.move1 = Class_9.var_412;
            _loc4_.move2 = Class_9.var_88;
            _loc4_.move3 = Class_9.var_113;
            _loc4_.move4 = Class_9.var_141;
            _loc4_.var_13 = 4;
            _loc4_.var_23 *= 2;
            _loc4_.var_24 *= 2;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            if (_loc4_.name != "Clefable") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_24.const_294) {
            _loc4_.num = Class_13.const_70;
            Class_13.method_2(_loc4_);
            _loc4_.level = 18;
            _loc4_.move1 = Class_9.var_187;
            _loc4_.move2 = Class_9.var_88;
            _loc4_.move3 = Class_9.var_113;
            _loc4_.move4 = Class_9.var_141;
            _loc4_.var_13 = 4;
            _loc4_.var_23 *= 2;
            _loc4_.var_24 *= 2;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            if (_loc4_.name != "Golbat") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_24.const_293) {
            _loc4_.num = Class_13.const_16;
            Class_13.method_2(_loc4_);
            _loc4_.level = 18;
            _loc4_.move1 = Class_9.var_136;
            _loc4_.move2 = Class_9.var_88;
            _loc4_.move3 = Class_9.var_113;
            _loc4_.move4 = Class_9.var_141;
            _loc4_.var_13 = 4;
            _loc4_.var_23 *= 2;
            _loc4_.var_24 *= 2;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            if (_loc4_.name != "Onix") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_27 *= 2;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 3;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

