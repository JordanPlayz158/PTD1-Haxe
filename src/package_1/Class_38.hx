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

class Class_38 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_278 = 1;

    static inline final const_207 = 2;

    static inline final const_283 = 3;

    static inline final const_305 = 4;

    static inline final const_357 = 50;

    static inline final const_363 = 80;

    static inline final const_337 = 95;

    static inline final const_409 = 100;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 25;
    }

    override public function do_Wave() {
        var _loc1_ = 0;
        if (var_5 == 4) {
            _loc1_ = Std.int(Math.random() * 4 + 1);
            if (_loc1_ == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_38.const_278));
            }
            else if (_loc1_ == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_38.const_207));
            }
            else if (_loc1_ == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_38.const_283));
            }
            else if (_loc1_ == 4) {
                my_Parent.add_Enemy_Poke(method_1(Class_38.const_305));
            }
            if (var_6 == 25) {
                var_6 = 26;
                wave_Finished();
                return;
            }
            method_4(++var_6);
            var_11 = 180;
            var_5 = 0;
            return;
        }
        my_Parent.add_Enemy_Poke(method_1(Class_38.const_52));
        var_11 = 30;
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_38.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            method_11(_loc4_);
            if (param2 <= Class_38.const_357) {
                _loc4_.num = Class_13.const_130;
                _loc4_.move1 = Class_9.var_100;
                _loc4_.move2 = Class_9.var_102;
                _loc4_.move3 = Class_9.var_89;
                _loc4_.move4 = Class_9.var_158;
                _loc4_.var_13 = 4;
                _loc4_.var_16 *= 12;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ij";
                _loc4_.level = 20;
                if (_loc4_.name != "Diglett") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_38.const_363) {
                _loc4_.num = Class_13.const_47;
                _loc4_.move1 = Class_9.var_86;
                _loc4_.move2 = Class_9.var_57;
                _loc4_.move3 = Class_9.var_89;
                _loc4_.move4 = Class_9.var_140;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ke";
                _loc4_.var_16 *= 3;
                _loc4_.level = 20;
                if (_loc4_.name != "Spearow") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_38.const_337) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_34;
                    _loc4_.move1 = Class_9.var_159;
                    _loc4_.move2 = Class_9.var_82;
                    _loc4_.move3 = Class_9.var_53;
                    _loc4_.move4 = Class_9.var_104;
                    _loc4_.var_19 = "kx";
                    _loc4_.var_13 = 4;
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_31;
                    _loc4_.move1 = Class_9.var_182;
                    _loc4_.move2 = Class_9.var_88;
                    _loc4_.move3 = Class_9.var_104;
                    _loc4_.move4 = Class_9.var_102;
                    _loc4_.var_19 = "kv";
                    _loc4_.var_13 = 4;
                }
                _loc4_.var_16 *= 3;
                _loc4_.level = 20;
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Ekans" && _loc4_.name != "Sandshrew") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_38.const_409) {
                _loc4_.num = Class_13.const_107;
                _loc4_.move1 = Class_9.var_139;
                _loc4_.move2 = Class_9.var_207;
                _loc4_.move3 = Class_9.var_164;
                _loc4_.move4 = Class_9.var_126;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "pw";
                _loc4_.var_16 *= 3;
                _loc4_.level = 20;
                if (_loc4_.name != "Drowzee") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        else if (param1 == Class_38.const_278) {
            _loc4_.num = Class_13.const_131;
            Class_13.method_2(_loc4_);
            _loc4_.level = 37;
            _loc4_.move1 = Class_9.var_56;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Dugtrio") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_38.const_207) {
            _loc4_.num = Class_13.const_97;
            Class_13.method_2(_loc4_);
            _loc4_.level = 37;
            _loc4_.move1 = Class_9.var_406;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Arbok") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_38.const_283) {
            _loc4_.num = Class_13.const_89;
            Class_13.method_2(_loc4_);
            _loc4_.level = 37;
            _loc4_.move1 = Class_9.var_88;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Sandslash") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_38.const_305) {
            _loc4_.num = Class_13.const_55;
            Class_13.method_2(_loc4_);
            _loc4_.level = 37;
            _loc4_.move1 = Class_9.var_371;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Hypno") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 12;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

