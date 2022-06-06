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
import code.Class_9;

class Class_28 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_236 = 1;

    static inline final const_299 = 2;

    static inline final const_231 = 3;

    static inline final const_233 = 4;

    static inline final const_270 = 5;

    static inline final const_306 = 6;

    static inline final const_283 = 7;

    static inline final const_192 = 8;

    static inline final const_322 = 9;

    static inline final const_318 = 10;

    static inline final const_321 = 11;

    static inline final const_328 = 12;

    static inline final const_315 = 13;

    static inline final const_237 = 14;

    static inline final const_326 = 15;

    static inline final const_91 = 16;

    static inline final const_61 = 17;

    static inline final const_67 = 18;

    @:allow(package_1) var var_432:Bool = false;

    @:allow(package_1) var var_434:Bool = false;

    public function new(param1:Class_875) {
        super(param1);
        this.var_432 = this.method_112();
        this.var_434 = this.method_82();
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

    override public function get_Total_Waves():Int {
        return 15;
    }

    override public function do_Wave() {
        var _loc1_ = 0;
        if (var_6 == 1) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_318));
        }
        else if (var_6 == 2) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_328));
        }
        else if (var_6 == 3) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_315));
        }
        else if (var_6 == 4) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_233));
        }
        else if (var_6 == 5) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_270));
        }
        else if (var_6 == 6) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_237));
        }
        else if (var_6 == 7) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_326));
        }
        else if (var_6 == 8) {
            if (this.var_434) {
                _loc1_ = Std.int(Math.random() * 3 + 16);
                my_Parent.add_Enemy_Poke(method_1(_loc1_));
            }
            else if (this.var_432) {
                my_Parent.add_Enemy_Poke(method_1(Class_28.const_91));
            }
            else {
                my_Parent.add_Enemy_Poke(method_1(Class_28.const_236));
            }
        }
        else if (var_6 == 9) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_231));
        }
        else if (var_6 == 10) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_283));
        }
        else if (var_6 == 11) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_321));
        }
        else if (var_6 == 12) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_299));
        }
        else if (var_6 == 13) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_192));
        }
        else if (var_6 == 14) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_322));
        }
        else if (var_6 == 15) {
            my_Parent.add_Enemy_Poke(method_1(Class_28.const_306));
        }
        if (var_6 == 15) {
            ++var_6;
            wave_Finished();
            return;
        }
        method_4(++var_6);
        var_11 = 540;
        var_5 = 0;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        _loc4_.var_39 = false;
        if (param1 == Class_28.const_236) {
            _loc4_.num = Class_13.const_50;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_178;
            _loc4_.move2 = Class_9.var_104;
            _loc4_.var_13 = 2;
            if (_loc4_.name != "Tentacool") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_299) {
            _loc4_.num = Class_13.const_84;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_133;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Ponyta") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_231) {
            _loc4_.num = Class_13.const_64;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_190;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Magnemite") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_233) {
            _loc4_.num = Class_13.const_23;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_264;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Voltorb") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_270) {
            _loc4_.num = Class_13.const_21;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_280;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Machop") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_306) {
            _loc4_.num = Class_13.const_66;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_271;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Blastoise") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_283) {
            _loc4_.num = Class_13.const_89;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_100;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Sandslash") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_192) {
            _loc4_.num = Class_13.const_69;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_315;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Venusaur") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_322) {
            _loc4_.num = Class_13.const_57;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_228;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Charizard") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_318) {
            _loc4_.num = Class_13.const_114;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_222;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Wigglytuff") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_321) {
            _loc4_.num = Class_13.const_76;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_143;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Primeape") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_328) {
            _loc4_.num = Class_13.const_96;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_155;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Fearow") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_315) {
            _loc4_.num = Class_13.const_139;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_255;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Nidoking") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_237) {
            _loc4_.num = Class_13.const_49;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_216;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Alakazam") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_326) {
            _loc4_.num = Class_13.const_117;
            Class_13.method_2(_loc4_);
            _loc4_.level = 33;
            _loc4_.move1 = Class_9.var_116;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Jynx") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_28.const_91) {
            _loc4_.num = Class_13.const_91;
            Class_13.method_2(_loc4_);
            _loc4_.var_39 = true;
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
        else if (param1 == Class_28.const_61) {
            _loc4_.num = Class_13.const_61;
            Class_13.method_2(_loc4_);
            _loc4_.var_39 = true;
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
        else if (param1 == Class_28.const_67) {
            _loc4_.num = Class_13.const_67;
            _loc4_.var_39 = true;
            Class_13.method_2(_loc4_);
            _loc4_.level = 20;
            _loc4_.move1 = Class_9.var_440;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 2;
            _loc4_.var_19 = "pj";
            if (_loc4_.name != "Shellder") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_24 *= 2;
        _loc4_.var_23 *= 2;
        _loc4_.var_26 = Std.int(_loc4_.var_26 * 2.5);
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 5;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

