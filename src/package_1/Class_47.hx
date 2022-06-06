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

class Class_47 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_227 = 3;

    static inline final const_204 = 1;

    static inline final const_211 = 2;

    static inline final const_226 = 35;

    static inline final const_363 = 70;

    static inline final const_337 = 100;

    static inline final const_347 = 95;

    static inline final const_234 = 69;

    static inline final const_193 = 99;

    static inline final const_394 = 100;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 9;
    }

    override public function do_Wave() {
        var _loc1_ = 0;
        _loc1_ = 6;
        if (var_6 == 1) {
            my_Parent.add_Enemy_Poke(method_1(Class_47.const_211), 1.5);
            var_11 = 150;
            method_4(++var_6);
            return;
        }
        if (var_6 == 2) {
            my_Parent.add_Enemy_Poke(method_1(Class_47.const_52), 1, "2");
            var_11 = 21;
            if (var_5 == _loc1_) {
                method_4(++var_6);
                var_11 = 60;
                var_5 = 0;
                return;
            }
        }
        else {
            if (var_6 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_47.const_204), 1.5, "2");
                var_11 = 150;
                method_4(++var_6);
                return;
            }
            if (var_6 == 4) {
                my_Parent.add_Enemy_Poke(method_1(Class_47.const_227), 1);
                var_11 = 21;
                if (var_5 == _loc1_) {
                    method_4(++var_6);
                    var_11 = 150;
                    var_5 = 0;
                    return;
                }
            }
            else {
                if (var_6 == 5) {
                    my_Parent.add_Enemy_Poke(method_1(Class_47.const_211), 1.5);
                    var_11 = 150;
                    method_4(++var_6);
                    return;
                }
                if (var_6 == 6) {
                    my_Parent.add_Enemy_Poke(method_1(Class_47.const_52), 1, "2");
                    var_11 = 21;
                    if (var_5 == _loc1_) {
                        method_4(++var_6);
                        var_11 = 150;
                        var_5 = 0;
                        return;
                    }
                }
                else {
                    if (var_6 == 7) {
                        my_Parent.add_Enemy_Poke(method_1(Class_47.const_204), 1.5, "2");
                        var_11 = 150;
                        method_4(++var_6);
                        return;
                    }
                    if (var_6 == 8) {
                        my_Parent.add_Enemy_Poke(method_1(Class_47.const_227), 1);
                        var_11 = 21;
                        if (var_5 == _loc1_) {
                            method_4(++var_6);
                            var_11 = 150;
                            var_5 = 0;
                            return;
                        }
                    }
                    else if (var_6 == 9) {
                        my_Parent.add_Enemy_Poke(method_1(Class_47.const_211), 1.5);
                        my_Parent.add_Enemy_Poke(method_1(Class_47.const_204), 1.5, "2");
                        var_11 = 300;
                        var_6 == 10;
                        wave_Finished();
                        return;
                    }
                }
            }
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_47.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            method_11(_loc4_);
            if (param2 <= Class_47.const_226) {
                if (param3 == 0) {
                    param3 = Std.int(8 + Math.random() * 5);
                }
                _loc4_.level = param3;
                _loc4_.num = Class_13.const_29;
                _loc4_.move1 = Class_9.var_84;
                _loc4_.move2 = Class_9.var_96;
                _loc4_.move3 = Class_9.var_45;
                _loc4_.move4 = Class_9.var_70;
                _loc4_.var_19 = "ep";
                _loc4_.var_13 = 4;
                if (param3 >= 10) {
                    _loc4_.move3 = Class_9.var_53;
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Rattata") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_47.const_363) {
                if (param3 == 0) {
                    param3 = Std.int(8 + Math.random() * 5);
                }
                _loc4_.level = param3;
                _loc4_.num = Class_13.const_47;
                _loc4_.move1 = Class_9.var_155;
                _loc4_.move2 = Class_9.var_89;
                _loc4_.move3 = Class_9.var_57;
                _loc4_.var_19 = "ke";
                _loc4_.var_13 = 3;
                if (param3 >= 9) {
                    _loc4_.var_13 = 4;
                    _loc4_.move4 = Class_9.var_140;
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Spearow") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_47.const_347) {
                if (param3 == 0) {
                    param3 = Std.int(10 + Math.random() * 3);
                }
                _loc4_.level = param3;
                _loc4_.num = Class_13.const_42;
                _loc4_.move1 = Class_9.var_84;
                _loc4_.move2 = Class_9.var_182;
                _loc4_.move3 = Class_9.var_57;
                _loc4_.var_13 = 4;
                _loc4_.move4 = Class_9.var_280;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "iw";
                if (_loc4_.name != "Mankey") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_47.const_337) {
                if (param3 == 0) {
                    param3 = Std.int(6 + Math.random() * 7);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_34;
                    _loc4_.move1 = Class_9.var_180;
                    _loc4_.move2 = Class_9.var_57;
                    _loc4_.move3 = Class_9.var_104;
                    _loc4_.var_13 = 3;
                    if (param3 == 12) {
                        _loc4_.move4 = Class_9.var_53;
                        _loc4_.move3 = Class_9.var_344;
                        _loc4_.var_13 = 4;
                    }
                    else if (param3 >= 9) {
                        _loc4_.move4 = Class_9.var_53;
                        _loc4_.var_13 = 4;
                    }
                    _loc4_.var_19 = "kx";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_31;
                    _loc4_.move1 = Class_9.var_88;
                    _loc4_.move2 = Class_9.var_100;
                    _loc4_.var_13 = 2;
                    if (param3 >= 9) {
                        _loc4_.move3 = Class_9.var_102;
                        _loc4_.move4 = Class_9.var_104;
                        _loc4_.var_13 = 4;
                    }
                    else if (param3 >= 7) {
                        _loc4_.move3 = Class_9.var_102;
                        _loc4_.var_13 = 3;
                    }
                    _loc4_.var_19 = "kv";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Ekans" && _loc4_.name != "Sandshrew") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        else if (param1 == Class_47.const_227) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            if (param2 <= Class_47.const_234) {
                if (param3 == 0) {
                    param3 = Std.int(7 + Math.random() * 4);
                }
                _loc4_.level = param3;
                _loc4_.num = Class_13.const_19;
                _loc4_.move1 = Class_9.var_187;
                _loc4_.move2 = Class_9.var_99;
                _loc4_.var_19 = "me";
                _loc4_.var_13 = 2;
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
            else if (param2 <= Class_47.const_193) {
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
            else if (param2 <= Class_47.const_394) {
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
        }
        else if (param1 == Class_47.const_204) {
            _loc4_.num = Class_13.const_12;
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
            if (_loc4_.name != "Geodude") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_47.const_211) {
            _loc4_.num = Class_13.const_12;
            Class_13.method_2(_loc4_);
            _loc4_.level = 18;
            _loc4_.move1 = Class_9.var_136;
            _loc4_.move2 = Class_9.var_88;
            _loc4_.move3 = Class_9.var_113;
            _loc4_.move4 = Class_9.var_141;
            _loc4_.var_13 = 4;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Geodude") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_27 *= 2;
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 3;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

