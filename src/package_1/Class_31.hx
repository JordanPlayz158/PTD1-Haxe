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

class Class_31 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_223 = 1;

    static inline final const_224 = 2;

    static inline final const_231 = 3;

    static inline final const_233 = 4;

    static inline final const_270 = 5;

    static inline final const_196 = 6;

    static inline final const_236 = 7;

    static inline final const_245 = 8;

    static inline final const_194 = 9;

    static inline final const_193 = 15;

    static inline final const_226 = 30;

    static inline final const_235 = 45;

    static inline final const_363 = 70;

    static inline final const_337 = 85;

    static inline final const_234 = 100;

    static inline final const_340 = 6;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 40;
    }

    override public function do_Wave() {
        if (var_6 == 1) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_52, Class_31.const_193));
            if (var_5 < 3) {
                var_11 = 24;
            }
            else {
                method_4(++var_6);
                var_11 = 120;
                var_5 = 0;
            }
        }
        else if (var_6 == 2) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_52, Class_31.const_193), 1, "2");
            if (var_5 < 3) {
                var_11 = 24;
            }
            else {
                method_4(++var_6);
                var_11 = 120;
                var_5 = 0;
            }
        }
        else if (var_6 == 3) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_52, Class_31.const_193), 1, "3");
            if (var_5 < 3) {
                var_11 = 24;
            }
            else {
                method_4(++var_6);
                var_11 = 120;
                var_5 = 0;
            }
        }
        else if (var_6 == 4) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_52, Class_31.const_193), 1, "4");
            if (var_5 < 3) {
                var_11 = 24;
            }
            else {
                method_4(++var_6);
                var_11 = 150;
                var_5 = 0;
            }
        }
        else if (var_6 == 5) {
            my_Parent.add_Enemy_Poke(method_1());
            my_Parent.add_Enemy_Poke(method_1(), 1, "2");
            my_Parent.add_Enemy_Poke(method_1(), 1, "3");
            my_Parent.add_Enemy_Poke(method_1(), 1, "4");
            if (var_5 < 3) {
                var_11 = 24;
            }
            else {
                method_4(++var_6);
                var_11 = 180;
                var_5 = 0;
            }
        }
        else if (var_6 == 6) {
            my_Parent.add_Enemy_Poke(method_1());
            my_Parent.add_Enemy_Poke(method_1(), 1, "2");
            my_Parent.add_Enemy_Poke(method_1(), 1, "3");
            my_Parent.add_Enemy_Poke(method_1(), 1, "4");
            if (var_5 < 3) {
                var_11 = 24;
            }
            else {
                method_4(++var_6);
                var_11 = 180;
                var_5 = 0;
            }
        }
        else if (var_6 == 7) {
            my_Parent.add_Enemy_Poke(method_1());
            my_Parent.add_Enemy_Poke(method_1(), 1, "2");
            my_Parent.add_Enemy_Poke(method_1(), 1, "3");
            my_Parent.add_Enemy_Poke(method_1(), 1, "4");
            if (var_5 < 3) {
                var_11 = 24;
            }
            else {
                method_4(++var_6);
                var_11 = 180;
                var_5 = 0;
            }
        }
        else if (var_6 == 8) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_224));
            if (var_5 < 5) {
                var_11 = 24;
            }
            else {
                method_4(++var_6);
                var_11 = 180;
                var_5 = 0;
            }
        }
        else if (var_6 == 9) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_224), 1, "2");
            if (var_5 < 5) {
                var_11 = 24;
            }
            else {
                method_4(++var_6);
                var_11 = 180;
                var_5 = 0;
            }
        }
        else if (var_6 == 10) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_236), 1, "3");
            if (var_5 < 5) {
                var_11 = 24;
            }
            else {
                method_4(++var_6);
                var_11 = 180;
                var_5 = 0;
            }
        }
        else if (var_6 == 11) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_236), 1, "4");
            if (var_5 < 5) {
                var_11 = 24;
            }
            else {
                method_4(++var_6);
                var_11 = 300;
                var_5 = 0;
            }
        }
        else if (var_6 == 12) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_196));
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_196), 1, "2");
            method_4(++var_6);
            var_11 = 300;
            var_5 = 0;
        }
        else if (var_6 == 13) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_231), 1, "3");
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_231), 1, "4");
            method_4(++var_6);
            var_11 = 300;
            var_5 = 0;
        }
        else if (var_6 == 14) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_196));
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_196), 1, "2");
            method_4(++var_6);
            var_11 = 300;
            var_5 = 0;
        }
        else if (var_6 == 15) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_194));
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_194), 1, "2");
            method_4(++var_6);
            var_11 = 300;
            var_5 = 0;
        }
        else if (var_6 == 16) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_233), 1, "3");
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_233), 1, "4");
            method_4(++var_6);
            var_11 = 300;
            var_5 = 0;
        }
        else if (var_6 == 17) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_194));
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_194), 1, "2");
            method_4(++var_6);
            var_11 = 300;
            var_5 = 0;
        }
        else if (var_6 >= 18 && var_6 <= 28) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_223));
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_223), 1, "2");
            method_4(++var_6);
            var_11 = 300;
            var_5 = 0;
        }
        else if (var_6 >= 29 && var_6 <= 39) {
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_245), 1, "3");
            my_Parent.add_Enemy_Poke(method_1(Class_31.const_245), 1, "4");
            method_4(++var_6);
            var_11 = 300;
            var_5 = 0;
        }
        else if (var_6 == 40) {
            my_Parent.add_Enemy_Poke(method_1());
            my_Parent.add_Enemy_Poke(method_1(), 1, "2");
            my_Parent.add_Enemy_Poke(method_1(), 1, "3");
            my_Parent.add_Enemy_Poke(method_1(), 1, "4");
            if (var_5 >= 3) {
                var_6 = 41;
                wave_Finished();
                return;
            }
            var_11 = 60;
        }
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
        if (param1 == Class_31.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            if (param3 == 0) {
                param3 = Std.int(20 + Math.random() * 4);
                param3 += _loc5_;
            }
            method_11(_loc4_);
            _loc4_.level = param3;
            if (param2 <= Class_31.const_193) {
                _loc4_.num = Class_13.const_12;
                _loc4_.move1 = Class_9.var_88;
                _loc4_.move2 = Class_9.var_136;
                _loc4_.move3 = Class_9.var_50;
                _loc4_.move4 = Class_9.var_162;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "vm";
                if (_loc4_.name != "Geodude") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_31.const_226) {
                _loc4_.num = Class_13.const_29;
                _loc4_.move1 = Class_9.var_399;
                _loc4_.move2 = Class_9.var_70;
                _loc4_.move3 = Class_9.var_53;
                _loc4_.move4 = Class_9.var_96;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ep";
                if (_loc4_.name != "Rattata") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_31.const_235) {
                _loc4_.num = Class_13.const_28;
                _loc4_.move1 = Class_9.var_211;
                _loc4_.move2 = Class_9.var_150;
                _loc4_.move3 = Class_9.var_102;
                _loc4_.move4 = Class_9.var_96;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ew";
                if (_loc4_.name != "Pidgey") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_31.const_363) {
                _loc4_.num = Class_13.const_47;
                _loc4_.move1 = Class_9.var_86;
                _loc4_.move2 = Class_9.var_214;
                _loc4_.move3 = Class_9.var_57;
                _loc4_.move4 = Class_9.var_140;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ke";
                if (_loc4_.name != "Spearow") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_31.const_337) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_34;
                    _loc4_.move1 = Class_9.var_159;
                    _loc4_.move2 = Class_9.var_53;
                    _loc4_.move3 = Class_9.var_344;
                    _loc4_.move4 = Class_9.var_82;
                    _loc4_.var_13 = 4;
                    _loc4_.var_19 = "kx";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_31;
                    _loc4_.move1 = Class_9.var_88;
                    _loc4_.move2 = Class_9.var_104;
                    _loc4_.move3 = Class_9.var_51;
                    _loc4_.move4 = Class_9.var_102;
                    _loc4_.var_13 = 4;
                    _loc4_.var_19 = "kv";
                }
                Class_13.method_2(_loc4_);
                if (_loc4_.name != "Ekans" && _loc4_.name != "Sandshrew") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_31.const_234) {
                _loc4_.num = Class_13.const_19;
                _loc4_.move1 = Class_9.var_125;
                _loc4_.move2 = Class_9.var_158;
                _loc4_.move3 = Class_9.var_53;
                _loc4_.move4 = Class_9.var_187;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "me";
                if (_loc4_.name != "Zubat") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        else if (param1 == Class_31.const_223) {
            _loc4_.num = Class_13.const_53;
            Class_13.method_2(_loc4_);
            _loc4_.level = 28 + _loc5_;
            _loc4_.move1 = Class_9.var_69;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Raichu") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_31.const_224) {
            _loc4_.num = Class_13.const_30;
            Class_13.method_2(_loc4_);
            _loc4_.level = 28 + _loc5_;
            _loc4_.move1 = Class_9.var_69;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Pikachu") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_31.const_231) {
            _loc4_.num = Class_13.const_64;
            Class_13.method_2(_loc4_);
            _loc4_.level = 28 + _loc5_;
            _loc4_.move1 = Class_9.var_69;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Magnemite") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_31.const_233) {
            _loc4_.num = Class_13.const_23;
            Class_13.method_2(_loc4_);
            _loc4_.level = 28 + _loc5_;
            _loc4_.move1 = Class_9.var_69;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Voltorb") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_31.const_270) {
            _loc4_.num = Class_13.const_21;
            Class_13.method_2(_loc4_);
            _loc4_.level = 28 + _loc5_;
            _loc4_.move1 = Class_9.var_143;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Machop") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_31.const_196) {
            _loc4_.num = Class_13.const_59;
            Class_13.method_2(_loc4_);
            _loc4_.level = 28 + _loc5_;
            _loc4_.move1 = Class_9.var_173;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Horsea") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_31.const_236) {
            _loc4_.num = Class_13.const_50;
            Class_13.method_2(_loc4_);
            _loc4_.level = 28 + _loc5_;
            _loc4_.move1 = Class_9.var_104;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Tentacool") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_31.const_245) {
            _loc4_.num = Class_13.const_125;
            Class_13.method_2(_loc4_);
            _loc4_.level = 28 + _loc5_;
            _loc4_.move1 = Class_9.var_272;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Tentacruel") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_31.const_194) {
            _loc4_.num = Class_13.const_51;
            Class_13.method_2(_loc4_);
            _loc4_.level = 28 + _loc5_;
            _loc4_.move1 = Class_9.var_113;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Golem") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 3;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

