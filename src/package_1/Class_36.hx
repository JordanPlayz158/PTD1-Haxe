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

class Class_36 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_235 = 380;

    static inline final const_416 = 500;

    static inline final const_391 = 880;

    static inline final const_351 = 998;

    static inline final const_381 = 1000;

    static inline final const_340 = 6;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 45;
    }

    override public function do_Wave() {
        if (var_5 == Class_36.const_340) {
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
        my_Parent.add_Enemy_Poke(method_1(Class_36.const_52));
        var_11 = 30;
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        if (param1 == Class_36.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 1000 + 1);
            }
            if (param3 == 0) {
                param3 = Std.int(36 + Math.random() * 4);
            }
            method_11(_loc4_);
            _loc4_.level = param3;
            if (param2 <= Class_36.const_235) {
                _loc4_.num = Class_13.const_28;
                _loc4_.move1 = Class_9.var_67;
                _loc4_.move2 = Class_9.var_102;
                _loc4_.move3 = Class_9.var_211;
                _loc4_.move4 = Class_9.var_150;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ew";
                if (_loc4_.name != "Pidgey") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_36.const_416) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_34;
                    _loc4_.move1 = Class_9.var_180;
                    _loc4_.move2 = Class_9.var_57;
                    _loc4_.move3 = Class_9.var_104;
                    _loc4_.move4 = Class_9.var_53;
                    _loc4_.var_19 = "kx";
                    _loc4_.var_13 = 4;
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_31;
                    _loc4_.move1 = Class_9.var_88;
                    _loc4_.move2 = Class_9.var_100;
                    _loc4_.move3 = Class_9.var_102;
                    _loc4_.move4 = Class_9.var_104;
                    _loc4_.var_19 = "kv";
                    _loc4_.var_13 = 4;
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Ekans" && _loc4_.name != "Sandshrew") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_36.const_391) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_42;
                    _loc4_.move1 = Class_9.var_71;
                    _loc4_.move2 = Class_9.var_198;
                    _loc4_.move3 = Class_9.var_82;
                    _loc4_.move4 = Class_9.var_278;
                    _loc4_.var_19 = "iw";
                    _loc4_.var_13 = 4;
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_99;
                    _loc4_.move1 = Class_9.var_53;
                    _loc4_.move2 = Class_9.var_156;
                    _loc4_.move3 = Class_9.var_82;
                    _loc4_.move4 = Class_9.var_221;
                    _loc4_.var_19 = "ik";
                    _loc4_.var_13 = 4;
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Mankey" && _loc4_.name != "Meowth") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_36.const_351) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_62;
                    _loc4_.move1 = Class_9.var_53;
                    _loc4_.move2 = Class_9.var_97;
                    _loc4_.move3 = Class_9.var_133;
                    _loc4_.move4 = Class_9.var_57;
                    _loc4_.var_19 = "ib";
                    _loc4_.var_13 = 4;
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_71;
                    _loc4_.move1 = Class_9.var_133;
                    _loc4_.move2 = Class_9.var_70;
                    _loc4_.move3 = Class_9.var_97;
                    _loc4_.move4 = Class_9.var_96;
                    _loc4_.var_19 = "xv";
                    _loc4_.var_13 = 4;
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Growlithe" && _loc4_.name != "Vulpix") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_36.const_381) {
                _loc4_.level = 20;
                _loc4_.num = Class_13.const_32;
                _loc4_.move1 = Class_9.var_70;
                _loc4_.move2 = Class_9.var_45;
                _loc4_.move3 = Class_9.var_188;
                _loc4_.move4 = Class_9.var_102;
                _loc4_.var_19 = "exx";
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_16 *= 2;
                if (_loc4_.name != "Eevee") {
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

