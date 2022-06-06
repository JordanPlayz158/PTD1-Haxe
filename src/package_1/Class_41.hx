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

class Class_41 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_389 = 15;

    static inline final const_397 = 20;

    static inline final const_413 = 40;

    static inline final const_373 = 75;

    static inline final const_395 = 80;

    static inline final const_393 = 100;

    static inline final const_340 = 6;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 60;
    }

    override public function do_Wave() {
        if (var_5 == Class_41.const_340) {
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
        my_Parent.add_Enemy_Poke(method_1(Class_41.const_52));
        var_11 = 30;
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        if (param1 == Class_41.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            if (param3 == 0) {
                param3 = Std.int(65 + Math.random() * 4);
            }
            method_11(_loc4_);
            _loc4_.level = param3;
            if (param2 <= Class_41.const_389) {
                _loc4_.num = Class_13.const_104;
                _loc4_.move1 = Class_9.var_67;
                _loc4_.move2 = Class_9.var_102;
                _loc4_.move3 = Class_9.var_211;
                _loc4_.move4 = Class_9.var_150;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ev";
                if (_loc4_.name != "Pidgeotto") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_41.const_397) {
                _loc4_.num = Class_13.const_37;
                _loc4_.move1 = Class_9.var_67;
                _loc4_.move2 = Class_9.var_102;
                _loc4_.move3 = Class_9.var_211;
                _loc4_.move4 = Class_9.var_150;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "eb";
                if (_loc4_.name != "Pidgeot") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_41.const_413) {
                _loc4_.num = Class_13.const_83;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.move2 = Class_9.var_139;
                _loc4_.move3 = Class_9.var_167;
                _loc4_.var_13 = 3;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "mb";
                if (_loc4_.name != "Venonat") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_41.const_373) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_102;
                    _loc4_.move1 = Class_9.var_259;
                    _loc4_.move2 = Class_9.var_129;
                    _loc4_.move3 = Class_9.var_159;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "mm";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_124;
                    _loc4_.move1 = Class_9.var_208;
                    _loc4_.move2 = Class_9.var_192;
                    _loc4_.move3 = Class_9.var_180;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "vj";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Gloom" && _loc4_.name != "Weepinbell") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_41.const_395) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_54;
                    _loc4_.move1 = Class_9.var_259;
                    _loc4_.move2 = Class_9.var_129;
                    _loc4_.move3 = Class_9.var_159;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "mi";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_106;
                    _loc4_.move1 = Class_9.var_208;
                    _loc4_.move2 = Class_9.var_192;
                    _loc4_.move3 = Class_9.var_180;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "ve";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Vileplume" && _loc4_.name != "Victreebel") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_41.const_393) {
                _loc4_.level = 40;
                _loc4_.num = Class_13.const_178;
                _loc4_.move1 = Class_9.var_461;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_16 *= 3;
                _loc4_.var_19 = "exk";
                if (_loc4_.name != "Ditto") {
                    my_Parent.end_hack();
                    return null;
                }
            }
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

