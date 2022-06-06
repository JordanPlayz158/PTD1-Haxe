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

class Class_29 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_403 = 10;

    static inline final const_408 = 22;

    static inline final const_356 = 32;

    static inline final const_382 = 54;

    static inline final const_375 = 76;

    static inline final const_366 = 100;

    static inline final const_314 = 2;

    static inline final const_340 = 6;

    @:allow(package_1) var var_436:String = "p";

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 10;
    }

    override public function do_Wave() {
        if (var_5 == Class_29.const_340) {
            if (var_6 == 10) {
                var_6 = 11;
                wave_Finished();
                return;
            }
            if (var_6 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_29.const_314), 1, "2");
            }
            else if (var_6 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_7.const_213));
            }
            method_4(++var_6);
            var_11 = 75;
            var_5 = 0;
            return;
        }
        my_Parent.add_Enemy_Poke(method_1(Class_29.const_52), 1, this.var_436);
        var_11 = 30;
        if (this.var_436 == "p") {
            this.var_436 = "2";
        }
        else {
            this.var_436 = "p";
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        param3 = 91;
        _loc4_.level = param3;
        _loc4_.var_19 = "pje";
        if (param1 == Class_7.const_213) {
            _loc4_.num = Class_13.const_118;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_73;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
            _loc4_.var_283 = 4;
            _loc4_.var_490 = true;
            _loc4_.var_16 *= 20;
        }
        else if (param1 == Class_29.const_314) {
            _loc4_.num = Class_13.const_158;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_73;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
            _loc4_.var_283 = 5;
            _loc4_.var_490 = true;
            _loc4_.var_16 *= 20;
        }
        else if (param1 == Class_29.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            param3 = Std.int(80 + Math.random() * 10);
            method_11(_loc4_);
            _loc4_.level = param3;
            if (param2 <= Class_29.const_403) {
                _loc4_.num = Class_13.const_71;
                _loc4_.move1 = Class_9.var_425;
                _loc4_.var_107 = true;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
            }
            else if (param2 <= Class_29.const_356) {
                _loc4_.num = Class_13.const_84;
                _loc4_.move1 = Class_9.var_67;
                _loc4_.var_107 = true;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
            }
            else if (param2 <= Class_29.const_382) {
                _loc4_.num = Class_13.const_162;
                _loc4_.move1 = Class_9.var_67;
                _loc4_.var_107 = true;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
            }
            else if (param2 <= Class_29.const_375) {
                _loc4_.num = Class_13.const_128;
                _loc4_.move1 = Class_9.var_425;
                _loc4_.var_107 = true;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
            }
            else if (param2 <= Class_29.const_408) {
                _loc4_.num = Class_13.const_62;
                _loc4_.move1 = Class_9.var_188;
                _loc4_.var_107 = true;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
            }
            else if (param2 <= Class_29.const_366) {
                _loc4_.num = Class_13.const_80;
                _loc4_.move1 = Class_9.var_188;
                _loc4_.var_107 = true;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
            }
        }
        _loc4_.var_26 = Std.int(_loc4_.var_26 * 1.5);
        _loc4_.var_39 = false;
        _loc4_.speed = Std.int(_loc4_.speed * 0.5);
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 5;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 = Std.int(_loc4_.var_30 / 4);
        _loc4_.var_28 = Std.int(_loc4_.var_28 / 4);
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

