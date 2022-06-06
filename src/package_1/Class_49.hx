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

class Class_49 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_404 = 35;

    static inline final const_355 = 45;

    static inline final const_334 = 51;

    static inline final const_349 = 55;

    static inline final const_405 = 70;

    static inline final const_356 = 95;

    static inline final const_371 = 100;

    static inline final const_396 = 1;

    static inline final const_402 = 2;

    static inline final const_352 = 3;

    static inline final const_340 = 6;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 30;
    }

    override public function do_Wave() {
        var _loc1_ = 0;
        if (var_5 == Class_49.const_340) {
            if (var_6 == 30) {
                var_6 = 31;
                wave_Finished();
                return;
            }
            _loc1_ = Std.int(Math.random() * 3 + 1);
            my_Parent.add_Enemy_Poke(method_1(_loc1_), 1, "2");
            method_4(++var_6);
            var_11 = 75;
            var_5 = 0;
            return;
        }
        my_Parent.add_Enemy_Poke(method_1(Class_49.const_52));
        var_11 = 30;
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:ASAny = null;
        _loc4_ = new Class_6();
        param3 = 91;
        _loc4_.level = param3;
        if (param1 == Class_49.const_396) {
            _loc4_.num = Class_13.const_142;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_53;
            _loc4_.var_19 = "pje";
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
        }
        else if (param1 == Class_49.const_402) {
            _loc4_.num = Class_13.const_161;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_50;
            _loc4_.var_19 = "pje";
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
        }
        else if (param1 == Class_49.const_352) {
            _loc4_.num = Class_13.const_164;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_324;
            _loc4_.var_19 = "pje";
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
        }
        else if (param1 == Class_49.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            param3 = Std.int(80 + Math.random() * 4);
            method_11(_loc4_);
            _loc4_.level = param3;
            if (param2 <= Class_49.const_404) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_93;
                    _loc4_.move1 = Class_9.var_227;
                    _loc4_.move2 = Class_9.var_45;
                    _loc4_.var_13 = 2;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "ejp";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_98;
                    _loc4_.move1 = Class_9.var_227;
                    _loc4_.move2 = Class_9.var_164;
                    _loc4_.var_13 = 2;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "bb";
                }
            }
            else if (param2 <= Class_49.const_355) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_120;
                    _loc4_.move1 = Class_9.var_227;
                    _loc4_.move2 = Class_9.var_45;
                    _loc4_.var_13 = 2;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "eej";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_74;
                    _loc4_.move1 = Class_9.var_227;
                    _loc4_.move2 = Class_9.var_164;
                    _loc4_.var_13 = 2;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "bp";
                }
            }
            else if (param2 <= Class_49.const_334) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_93;
                    _loc4_.move1 = Class_9.var_227;
                    _loc4_.move2 = Class_9.var_45;
                    _loc4_.var_13 = 2;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "ejp";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_98;
                    _loc4_.move1 = Class_9.var_227;
                    _loc4_.move2 = Class_9.var_164;
                    _loc4_.var_13 = 2;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "bb";
                }
            }
            else if (param2 <= Class_49.const_349) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_120;
                    _loc4_.move1 = Class_9.var_227;
                    _loc4_.move2 = Class_9.var_45;
                    _loc4_.var_13 = 2;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "eej";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_74;
                    _loc4_.move1 = Class_9.var_227;
                    _loc4_.move2 = Class_9.var_164;
                    _loc4_.var_13 = 2;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "bp";
                }
            }
            else if (param2 <= Class_49.const_405) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_71;
                    _loc4_.move1 = Class_9.var_133;
                    _loc4_.var_13 = 1;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "xv";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_62;
                    _loc4_.move1 = Class_9.var_53;
                    _loc4_.var_13 = 1;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "ib";
                }
            }
            else if (param2 <= Class_49.const_356) {
                _loc4_.num = Class_13.const_84;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "vv";
            }
            else if (param2 <= Class_49.const_371) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_179;
                    _loc4_.move1 = Class_9.var_133;
                    _loc4_.var_13 = 1;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "ekw";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_84;
                    _loc4_.move1 = Class_9.var_45;
                    _loc4_.var_13 = 1;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "vv";
                }
            }
        }
        _loc4_.var_26 *= 1.5;
        _loc4_.speed *= 0.7;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 7;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 /= 4;
        _loc4_.var_28 /= 4;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

