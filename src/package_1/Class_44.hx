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

class Class_44 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_296 = 1;

    static inline final const_307 = 2;

    static inline final const_319 = 3;

    static inline final const_316 = 4;

    static inline final const_302 = 5;

    static inline final const_235 = 58;

    static inline final const_373 = 68;

    static inline final const_351 = 78;

    static inline final const_353 = 88;

    static inline final const_336 = 98;

    static inline final const_410 = 99;

    static inline final const_364 = 100;

    static inline final const_340 = 6;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 45;
    }

    override public function do_Wave() {
        if (var_5 == Class_44.const_340) {
            if (var_6 == 1 || var_6 == 6 || var_6 == 11 || var_6 == 16 || var_6 == 21 || var_6 == 26 || var_6 == 31 || var_6 == 36 || var_6 == 41) {
                my_Parent.add_Enemy_Poke(method_1(Class_44.const_296));
            }
            else if (var_6 == 2 || var_6 == 7 || var_6 == 12 || var_6 == 17 || var_6 == 22 || var_6 == 27 || var_6 == 32 || var_6 == 37 || var_6 == 42) {
                my_Parent.add_Enemy_Poke(method_1(Class_44.const_302));
            }
            else if (var_6 == 3 || var_6 == 8 || var_6 == 13 || var_6 == 18 || var_6 == 23 || var_6 == 28 || var_6 == 33 || var_6 == 38 || var_6 == 43) {
                my_Parent.add_Enemy_Poke(method_1(Class_44.const_316));
            }
            else if (var_6 == 4 || var_6 == 9 || var_6 == 14 || var_6 == 19 || var_6 == 24 || var_6 == 29 || var_6 == 34 || var_6 == 39 || var_6 == 44) {
                my_Parent.add_Enemy_Poke(method_1(Class_44.const_307));
            }
            else if (var_6 == 5 || var_6 == 10 || var_6 == 15 || var_6 == 20 || var_6 == 25 || var_6 == 30 || var_6 == 35 || var_6 == 40 || var_6 == 45) {
                my_Parent.add_Enemy_Poke(method_1(Class_44.const_319));
                if (var_6 == 45) {
                    var_6 = 46;
                    wave_Finished();
                    return;
                }
            }
            method_4(++var_6);
            var_11 = 90;
            var_5 = 0;
            return;
        }
        my_Parent.add_Enemy_Poke(method_1(Class_44.const_52));
        var_11 = 21;
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        var _loc5_ = 0;
        if (var_6 <= 9) {
            _loc5_ = 0;
        }
        else if (var_6 <= 19) {
            _loc5_ = 3;
        }
        else if (var_6 <= 29) {
            _loc5_ = 6;
        }
        else if (var_6 <= 39) {
            _loc5_ = 9;
        }
        else if (var_6 <= 45) {
            _loc5_ = 12;
        }
        if (param1 == Class_44.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            if (param3 == 0) {
                param3 = Std.int(15 + Math.random() * 4);
                param3 += _loc5_;
            }
            method_11(_loc4_);
            _loc4_.level = param3;
            if (param2 <= Class_44.const_235) {
                _loc4_.num = Class_13.const_28;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ew";
                if (_loc4_.name != "Pidgey") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_44.const_373) {
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
            else if (param2 <= Class_44.const_351) {
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
            else if (param2 <= Class_44.const_353) {
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
            else if (param2 <= Class_44.const_336) {
                _loc4_.num = Class_13.const_77;
                _loc4_.move1 = Class_9.var_88;
                _loc4_.move2 = Class_9.var_222;
                _loc4_.var_13 = 2;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "xp";
                if (_loc4_.name != "Jigglypuff") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_44.const_410) {
                _loc4_.num = Class_13.const_109;
                _loc4_.move1 = Class_9.var_145;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "wx";
                if (_loc4_.name != "Abra") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_44.const_364) {
                _loc4_.num = Class_13.const_99;
                _loc4_.move1 = Class_9.var_100;
                _loc4_.move2 = Class_9.var_89;
                _loc4_.var_13 = 2;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ik";
                if (_loc4_.name != "Meowth") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        else if (param1 == Class_44.const_296) {
            _loc4_.num = Class_13.const_38;
            Class_13.method_2(_loc4_);
            _loc4_.level = 18 + _loc5_;
            _loc4_.move1 = Class_9.var_100;
            _loc4_.move2 = Class_9.var_89;
            _loc4_.var_13 = 2;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Persian") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_44.const_319) {
            _loc4_.level = 18 + _loc5_;
            if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                _loc4_.num = Class_13.const_80;
                _loc4_.move1 = Class_9.var_53;
                _loc4_.move2 = Class_9.var_97;
                _loc4_.move3 = Class_9.var_133;
                _loc4_.move4 = Class_9.var_57;
                _loc4_.var_13 = 4;
            }
            else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                _loc4_.num = Class_13.const_128;
                _loc4_.move1 = Class_9.var_133;
                _loc4_.move2 = Class_9.var_70;
                _loc4_.move3 = Class_9.var_97;
                _loc4_.move4 = Class_9.var_96;
                _loc4_.var_13 = 4;
            }
            Class_13.method_2(_loc4_);
            _loc4_.var_39 = false;
            if (_loc4_.name != "Arcanine" && _loc4_.name != "Ninetales") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_44.const_307) {
            _loc4_.level = 18 + _loc5_;
            if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                _loc4_.num = Class_13.const_54;
                _loc4_.move1 = Class_9.var_259;
                _loc4_.move2 = Class_9.var_129;
                _loc4_.move3 = Class_9.var_159;
                _loc4_.var_13 = 3;
            }
            else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                _loc4_.num = Class_13.const_106;
                _loc4_.move1 = Class_9.var_192;
                _loc4_.move2 = Class_9.var_208;
                _loc4_.move3 = Class_9.var_180;
                _loc4_.var_13 = 3;
            }
            Class_13.method_2(_loc4_);
            _loc4_.var_39 = false;
            if (_loc4_.name != "Vileplume" && _loc4_.name != "Victreebel") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_44.const_316) {
            _loc4_.num = Class_13.const_119;
            Class_13.method_2(_loc4_);
            _loc4_.level = 18 + _loc5_;
            _loc4_.move1 = Class_9.var_260;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Poliwrath") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_44.const_302) {
            _loc4_.num = Class_13.const_37;
            Class_13.method_2(_loc4_);
            _loc4_.level = 18 + _loc5_;
            _loc4_.move1 = Class_9.var_45;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Pidgeot") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_27 *= 3;
        _loc4_.var_26 = Std.int(_loc4_.var_26 * 1.5);
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 4;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

