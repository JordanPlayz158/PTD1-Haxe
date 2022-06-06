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

class Class_30 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_251 = 54;

    static inline final const_339 = 89;

    static inline final const_376 = 94;

    static inline final const_384 = 99;

    static inline final const_335 = 100;

    static inline final const_241 = 1;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 10;
    }

    override public function do_Wave() {
        var _loc1_:ASAny = null;
        if (var_6 >= 1 && var_6 <= 9) {
            _loc1_ = "p";
            if (var_6 == 1 || var_6 == 3 || var_6 == 5 || var_6 == 7 || var_6 == 9) {
                _loc1_ = "2";
            }
            if (var_5 >= 0 && var_5 <= 4) {
                my_Parent.add_Enemy_Poke(method_1(), 1, _loc1_);
                var_11 = 18;
            }
            else if (var_5 == 5) {
                my_Parent.add_Enemy_Poke(method_1(), 1, _loc1_);
                method_4(++var_6);
                var_5 = 0;
                var_11 = 300;
                return;
            }
        }
        else if (var_6 == 10) {
            if (var_5 == 0 || var_5 == 2 || var_5 == 4 || var_5 == 6 || var_5 == 8) {
                my_Parent.add_Enemy_Poke(method_1());
                var_11 = 18;
            }
            else if (var_5 == 1 || var_5 == 3 || var_5 == 5 || var_5 == 7 || var_5 == 9) {
                my_Parent.add_Enemy_Poke(method_1(), 1, "2");
                var_11 = 18;
            }
            else if (var_5 >= 10 && var_5 <= 12) {
                if (var_5 == 11) {
                    my_Parent.add_Enemy_Poke(method_1(Class_30.const_241), 1, "4");
                }
                else {
                    my_Parent.add_Enemy_Poke(method_1(Class_30.const_241), 1, "3");
                }
                var_11 = 18;
            }
            if (var_5 == 12) {
                var_6 = 11;
                wave_Finished();
                return;
            }
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        if (param1 == Class_30.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            method_11(_loc4_);
            if (param2 <= Class_30.const_251) {
                if (param3 == 0) {
                    param3 = Std.int(3 + Math.random() * 3);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_39;
                    _loc4_.move1 = Class_9.var_45;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.var_13 = 2;
                    _loc4_.var_19 = "ej";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_43;
                    _loc4_.move1 = Class_9.var_104;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.var_13 = 2;
                    _loc4_.var_19 = "ex";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Weedle" && _loc4_.name != "Caterpie") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_30.const_339) {
                if (param3 == 0) {
                    param3 = Std.int(4 + Math.random() * 3);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_35;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_45;
                    _loc4_.move3 = Class_9.var_160;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "ee";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_33;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_104;
                    _loc4_.move3 = Class_9.var_160;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "em";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Metapod" && _loc4_.name != "Kakuna") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_30.const_376) {
                if (param3 == 0) {
                    param3 = Std.int(3 + Math.random() * 3);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_39;
                    _loc4_.move1 = Class_9.var_45;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.var_13 = 2;
                    _loc4_.var_19 = "ej";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_43;
                    _loc4_.move1 = Class_9.var_104;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.var_13 = 2;
                    _loc4_.var_19 = "ex";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Weedle" && _loc4_.name != "Caterpie") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_30.const_384) {
                if (param3 == 0) {
                    param3 = Std.int(4 + Math.random() * 3);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_35;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_45;
                    _loc4_.move3 = Class_9.var_160;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "ee";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_33;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_104;
                    _loc4_.move3 = Class_9.var_160;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "em";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Metapod" && _loc4_.name != "Kakuna") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_30.const_335) {
                _loc4_.num = Class_13.const_30;
                Class_13.method_2(_loc4_);
                if (param3 == 0) {
                    param3 = Std.int(3 + Math.random() * 3);
                }
                _loc4_.level = param3;
                _loc4_.move1 = Class_9.var_89;
                _loc4_.move2 = Class_9.var_190;
                _loc4_.var_13 = 2;
                if (_loc4_.level == 5) {
                    _loc4_.move3 = Class_9.var_70;
                    _loc4_.var_13 = 3;
                }
                _loc4_.var_19 = "ki";
                if (_loc4_.name != "Pikachu") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        else if (param1 == Class_30.const_241) {
            _loc4_.num = Class_13.const_30;
            Class_13.method_2(_loc4_);
            _loc4_.level = 12;
            _loc4_.move1 = Class_9.var_45;
            _loc4_.move2 = Class_9.var_70;
            _loc4_.var_13 = 2;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            _loc4_.speed *= 2;
            _loc4_.var_19 = "pje";
            if (_loc4_.name != "Pikachu") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_40 = 0;
        _loc4_.var_23 *= 2;
        _loc4_.var_16 *= 5;
        _loc4_.speed = Std.int(_loc4_.speed / 2);
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

