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

class Class_53 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_251 = 540;

    static inline final const_339 = 890;

    static inline final const_376 = 940;

    static inline final const_384 = 990;

    static inline final const_335 = 1000;

    static inline final const_365 = 1005;

    var var_111:Int = 0;

    var var_436:String = "p";

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 30;
    }

    override public function do_Wave() {
        if (var_5 == 0) {
            this.var_111 = Std.int(Math.random() * 1005 + 1);
            my_Parent.add_Enemy_Poke(method_1(Class_53.const_52, this.var_111), 1, this.var_436);
            var_11 = 21;
        }
        else if (var_5 == 1) {
            my_Parent.add_Enemy_Poke(method_1(Class_53.const_52, this.var_111), 1, this.var_436);
            var_11 = 21;
        }
        else if (var_5 == 2) {
            my_Parent.add_Enemy_Poke(method_1(Class_53.const_52, this.var_111), 1, this.var_436);
            var_11 = 21;
        }
        else if (var_5 == 3) {
            my_Parent.add_Enemy_Poke(method_1(Class_53.const_52, this.var_111), 1, this.var_436);
            var_11 = 21;
        }
        else if (var_5 == 4) {
            my_Parent.add_Enemy_Poke(method_1(Class_53.const_52, this.var_111), 1, this.var_436);
            if (var_6 == 30) {
                wave_Finished();
                return;
            }
            method_4(++var_6);
            var_5 = 0;
            if (this.var_436 == "p") {
                this.var_436 = "2";
            }
            else {
                this.var_436 = "p";
            }
            var_11 = 30;
            return;
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:ASAny = null;
        _loc4_ = new Class_6();
        if (param1 == Class_53.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 1005 + 1);
            }
            method_11(_loc4_);
            if (param2 <= Class_53.const_251) {
                if (param3 == 0) {
                    param3 = Std.int(7 + Math.random() * 3);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_35;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.move3 = Class_9.var_45;
                    _loc4_.var_19 = "ee";
                    _loc4_.var_13 = 3;
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_33;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.move3 = Class_9.var_104;
                    _loc4_.var_19 = "em";
                    _loc4_.var_13 = 3;
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Metapod" && _loc4_.name != "Kakuna") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_53.const_339) {
                if (param3 == 0) {
                    param3 = Std.int(13 + Math.random() * 3);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_65;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_152;
                    _loc4_.move3 = Class_9.var_138;
                    _loc4_.move4 = Class_9.var_126;
                    _loc4_.var_19 = "ek";
                    _loc4_.var_13 = 4;
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_123;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_140;
                    _loc4_.move3 = Class_9.var_160;
                    _loc4_.move4 = Class_9.var_84;
                    _loc4_.var_19 = "ei";
                    _loc4_.var_13 = 4;
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Butterfree" && _loc4_.name != "Beedrill") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_53.const_376) {
                if (param3 == 0) {
                    param3 = Std.int(7 + Math.random() * 3);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_35;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.move3 = Class_9.var_45;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "ee";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_33;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_160;
                    _loc4_.move3 = Class_9.var_104;
                    _loc4_.var_13 = 3;
                    _loc4_.var_19 = "em";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Metapod" && _loc4_.name != "Kakuna") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_53.const_384) {
                if (param3 == 0) {
                    param3 = Std.int(13 + Math.random() * 3);
                }
                _loc4_.level = param3;
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_65;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_152;
                    _loc4_.move3 = Class_9.var_138;
                    _loc4_.move4 = Class_9.var_126;
                    _loc4_.var_13 = 4;
                    _loc4_.var_19 = "ek";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_123;
                    _loc4_.move1 = Class_9.var_80;
                    _loc4_.move2 = Class_9.var_140;
                    _loc4_.move3 = Class_9.var_160;
                    _loc4_.move4 = Class_9.var_84;
                    _loc4_.var_13 = 4;
                    _loc4_.var_19 = "ei";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Butterfree" && _loc4_.name != "Beedrill") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_53.const_335) {
                _loc4_.num = Class_13.const_30;
                Class_13.method_2(_loc4_);
                if (param3 == 0) {
                    param3 = Std.int(10 + Math.random() * 3);
                }
                _loc4_.level = param3;
                _loc4_.move1 = Class_9.var_89;
                _loc4_.move2 = Class_9.var_190;
                _loc4_.move3 = Class_9.var_70;
                _loc4_.move4 = Class_9.var_93;
                _loc4_.var_13 = 4;
                _loc4_.var_19 = "ki";
                if (_loc4_.name != "Pikachu") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_53.const_365) {
                _loc4_.num = Class_13.const_105;
                Class_13.method_2(_loc4_);
                if (param3 == 0) {
                    param3 = Std.int(5 + Math.random() * 3);
                }
                _loc4_.level = param3;
                _loc4_.move1 = Class_9.var_100;
                _loc4_.var_13 = 1;
                if (_loc4_.level == 6) {
                    _loc4_.move2 = Class_9.var_152;
                    _loc4_.var_13 = 2;
                }
                else if (_loc4_.level == 7) {
                    _loc4_.move2 = Class_9.var_152;
                    _loc4_.move3 = Class_9.var_138;
                    _loc4_.var_13 = 3;
                }
                _loc4_.var_19 = "mw";
                if (_loc4_.name != "Paras") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
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

