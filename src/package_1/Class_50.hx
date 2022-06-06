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

class Class_50 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_196 = 1;

    static inline final const_290 = 2;

    static inline final const_222 = 3;

    static inline final const_238 = 4;

    static inline final const_248 = 5;

    static inline final const_91 = 6;

    static inline final const_61 = 7;

    static inline final const_115 = 8;

    static inline final const_418 = 55;

    static inline final const_251 = 104;

    static inline final const_339 = 152;

    static inline final const_235 = 199;

    static inline final const_410 = 200;

    @:allow(package_1) var var_432:Bool = false;

    @:allow(package_1) var var_434:Bool = false;

    public function new(param1:Class_875) {
        super(param1);
        this.var_432 = this.method_112();
        this.var_434 = this.method_82();
    }

    override public function get_Total_Waves():Int {
        return 20;
    }

    override public function defeated_Poke(param1:Class_6) {
        if (method_140(param1)) {
            my_Parent.show_Achievement_Popup(2);
        }
    }

    @:allow(package_1) function method_82():Bool {
        var _loc1_ = 0;
        var _loc2_ = 0;
        while (_loc2_ < my_Parent.currentProfile.inventory.length) {
            _loc1_ = my_Parent.currentProfile.inventory[_loc2_];
            if (_loc1_ == Class_13.const_200) {
                return true;
            }
            _loc2_++;
        }
        return false;
    }

    @:allow(package_1) function method_112():Bool {
        var _loc1_ = 0;
        var _loc2_ = 0;
        while (_loc2_ < my_Parent.currentProfile.inventory.length) {
            _loc1_ = my_Parent.currentProfile.inventory[_loc2_];
            if (_loc1_ == Class_13.const_197) {
                return true;
            }
            _loc2_++;
        }
        return false;
    }

    override public function do_Wave() {
        var _loc1_ = 0;
        _loc1_ = 6;
        var _loc2_ = Std.int(Math.random() * 3 + 6);
        if (var_6 == 1 || var_6 == 3 || var_6 == 5) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_196));
                var_11 = 60;
            }
            else {
                if (var_5 == _loc1_) {
                    if (this.var_434) {
                        my_Parent.add_Enemy_Poke(method_1(_loc2_));
                    }
                    else if (this.var_432) {
                        my_Parent.add_Enemy_Poke(method_1(Class_50.const_91));
                    }
                    else {
                        my_Parent.add_Enemy_Poke(method_1(Class_50.const_52));
                    }
                    method_4(++var_6);
                    var_11 = 150;
                    var_5 = 0;
                    return;
                }
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_52));
                var_11 = 30;
            }
        }
        else if (var_6 == 2 || var_6 == 4 || var_6 == 6) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_290), 1, "2");
                var_11 = 60;
            }
            else {
                if (var_5 == _loc1_) {
                    if (this.var_434) {
                        my_Parent.add_Enemy_Poke(method_1(_loc2_), 1, "2");
                    }
                    else if (this.var_432) {
                        my_Parent.add_Enemy_Poke(method_1(Class_50.const_91), 1, "2");
                    }
                    else {
                        my_Parent.add_Enemy_Poke(method_1(Class_50.const_52), 1, "2");
                    }
                    method_4(++var_6);
                    var_11 = 150;
                    var_5 = 0;
                    return;
                }
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_52), 1, "2");
                var_11 = 30;
            }
        }
        else if (var_6 == 7 || var_6 == 9 || var_6 == 11) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_222));
                var_11 = 60;
            }
            else {
                if (var_5 == _loc1_) {
                    if (this.var_434) {
                        my_Parent.add_Enemy_Poke(method_1(_loc2_));
                    }
                    else if (this.var_432) {
                        my_Parent.add_Enemy_Poke(method_1(Class_50.const_91));
                    }
                    else {
                        my_Parent.add_Enemy_Poke(method_1(Class_50.const_52));
                    }
                    method_4(++var_6);
                    var_11 = 150;
                    var_5 = 0;
                    return;
                }
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_52));
                var_11 = 30;
            }
        }
        else if (var_6 == 8 || var_6 == 10 || var_6 == 12) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_222), 1, "2");
                var_11 = 60;
            }
            else {
                if (var_5 == _loc1_) {
                    if (this.var_434) {
                        my_Parent.add_Enemy_Poke(method_1(_loc2_), 1, "2");
                    }
                    else if (this.var_432) {
                        my_Parent.add_Enemy_Poke(method_1(Class_50.const_91), 1, "2");
                    }
                    else {
                        my_Parent.add_Enemy_Poke(method_1(Class_50.const_52), 1, "2");
                    }
                    method_4(++var_6);
                    var_11 = 150;
                    var_5 = 0;
                    return;
                }
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_52), 1, "2");
                var_11 = 30;
            }
        }
        else if (var_6 == 13 || var_6 == 15 || var_6 == 17) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_238));
                var_11 = 60;
            }
            else {
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_52));
                var_11 = 30;
                if (var_5 == _loc1_) {
                    method_4(++var_6);
                    var_11 = 150;
                    var_5 = 0;
                    return;
                }
            }
        }
        else if (var_6 == 14 || var_6 == 16 || var_6 == 18) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_248), 1, "2");
                var_11 = 60;
            }
            else {
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_52), 1, "2");
                var_11 = 30;
                if (var_5 == _loc1_) {
                    method_4(++var_6);
                    var_11 = 150;
                    var_5 = 0;
                    return;
                }
            }
        }
        else {
            if (var_6 == 19) {
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_238), 1.5);
                var_11 = 300;
                var_5 = 0;
                method_4(++var_6);
                return;
            }
            if (var_6 == 20) {
                my_Parent.add_Enemy_Poke(method_1(Class_50.const_248), 1.5, "2");
                var_11 = 300;
                var_6 = 21;
                wave_Finished();
                return;
            }
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_50.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 200 + 1);
            }
            method_11(_loc4_);
            if (param2 <= Class_50.const_418) {
                _loc4_.level = 12;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_40;
                    _loc4_.move1 = Class_9.var_259;
                    _loc4_.move2 = Class_9.var_129;
                    _loc4_.move3 = Class_9.var_159;
                    _loc4_.var_19 = "mx";
                    _loc4_.var_13 = 3;
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_44;
                    _loc4_.move1 = Class_9.var_192;
                    _loc4_.move2 = Class_9.var_208;
                    _loc4_.move3 = Class_9.var_180;
                    _loc4_.var_19 = "wp";
                    _loc4_.var_13 = 3;
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Oddish" && _loc4_.name != "Bellsprout") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_50.const_251) {
                _loc4_.level = 7;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_43;
                    _loc4_.move1 = Class_9.var_104;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.var_13 = 2;
                    _loc4_.var_19 = "ex";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_39;
                    _loc4_.move1 = Class_9.var_45;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.var_13 = 2;
                    _loc4_.var_19 = "ej";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Weedle" && _loc4_.name != "Caterpie") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_50.const_339) {
                _loc4_.level = 10;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_33;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_104;
                    _loc4_.move3 = Class_9.var_160;
                    _loc4_.var_19 = "em";
                    _loc4_.var_13 = 3;
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_35;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_45;
                    _loc4_.move3 = Class_9.var_160;
                    _loc4_.var_19 = "ee";
                    _loc4_.var_13 = 3;
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Kakuna" && _loc4_.name != "Metapod") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_50.const_235) {
                _loc4_.level = 15;
                _loc4_.num = Class_13.const_28;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.move2 = Class_9.var_102;
                _loc4_.move3 = Class_9.var_211;
                _loc4_.move4 = Class_9.var_96;
                _loc4_.var_13 = 4;
                _loc4_.var_19 = "ew";
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Pidgey") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_50.const_410) {
                _loc4_.level = 10;
                _loc4_.num = Class_13.const_109;
                _loc4_.move1 = Class_9.var_145;
                _loc4_.var_13 = 1;
                _loc4_.var_19 = "wx";
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Abra") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        else if (param1 == Class_50.const_196) {
            _loc4_.num = Class_13.const_59;
            Class_13.method_2(_loc4_);
            _loc4_.level = 20;
            _loc4_.move1 = Class_9.var_67;
            _loc4_.move2 = Class_9.var_84;
            _loc4_.move3 = Class_9.var_54;
            _loc4_.move4 = Class_9.var_46;
            _loc4_.var_13 = 4;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 2;
            _loc4_.var_23 *= 2;
            if (_loc4_.name != "Horsea") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_50.const_290) {
            _loc4_.num = Class_13.const_67;
            Class_13.method_2(_loc4_);
            _loc4_.level = 20;
            _loc4_.move1 = Class_9.var_189;
            _loc4_.move2 = Class_9.var_45;
            _loc4_.move3 = Class_9.var_99;
            _loc4_.move4 = Class_9.var_57;
            _loc4_.var_13 = 4;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 5;
            if (_loc4_.name != "Shellder") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_50.const_222) {
            _loc4_.num = Class_13.const_87;
            Class_13.method_2(_loc4_);
            _loc4_.level = 20;
            _loc4_.move1 = Class_9.var_260;
            _loc4_.move2 = Class_9.var_155;
            _loc4_.move3 = Class_9.var_178;
            _loc4_.move4 = Class_9.var_70;
            _loc4_.var_13 = 4;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 7;
            if (_loc4_.name != "Goldeen") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_50.const_238) {
            _loc4_.num = Class_13.const_68;
            Class_13.method_2(_loc4_);
            _loc4_.level = 22;
            _loc4_.move1 = Class_9.var_245;
            _loc4_.move2 = Class_9.var_80;
            _loc4_.move3 = Class_9.var_46;
            _loc4_.move4 = Class_9.var_275;
            _loc4_.var_13 = 4;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 5;
            _loc4_.var_24 *= 2;
            if (_loc4_.name != "Staryu") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_50.const_248) {
            _loc4_.num = Class_13.const_111;
            Class_13.method_2(_loc4_);
            _loc4_.level = 25;
            _loc4_.move1 = Class_9.var_245;
            _loc4_.move2 = Class_9.var_80;
            _loc4_.move3 = Class_9.var_46;
            _loc4_.move4 = Class_9.var_275;
            _loc4_.var_13 = 4;
            _loc4_.var_39 = false;
            _loc4_.var_16 *= 5;
            _loc4_.var_23 *= 2;
            if (_loc4_.name != "Starmie") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_50.const_91) {
            _loc4_.num = Class_13.const_91;
            Class_13.method_2(_loc4_);
            _loc4_.level = 10;
            _loc4_.move1 = Class_9.var_428;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 2;
            _loc4_.var_19 = "ekp";
            if (_loc4_.name != "Magikarp") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_50.const_61) {
            _loc4_.num = Class_13.const_61;
            Class_13.method_2(_loc4_);
            _loc4_.level = 20;
            _loc4_.move1 = Class_9.var_330;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 2;
            _loc4_.var_19 = "pb";
            if (_loc4_.name != "Krabby") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_50.const_115) {
            _loc4_.num = Class_13.const_115;
            Class_13.method_2(_loc4_);
            _loc4_.level = 20;
            _loc4_.move1 = Class_9.var_126;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 2;
            _loc4_.var_19 = "im";
            if (_loc4_.name != "Psyduck") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_27 *= 2;
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_24 *= 3;
        _loc4_.var_16 *= 3;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

