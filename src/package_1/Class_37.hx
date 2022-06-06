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

class Class_37 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_325 = 1;

    static inline final const_272 = 2;

    static inline final const_281 = 3;

    static inline final const_273 = 4;

    static inline final const_268 = 5;

    static inline final const_308 = 6;

    static inline final const_297 = 7;

    static inline final const_269 = 8;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 8;
    }

    override public function do_Wave() {
        if (var_6 == 8) {
            my_Parent.add_Enemy_Poke(method_1(Class_37.const_269));
            if (var_5 == 2) {
                var_6 = 9;
                wave_Finished();
                return;
            }
        }
        else if (var_6 == 7) {
            my_Parent.add_Enemy_Poke(method_1(Class_37.const_297));
        }
        else if (var_6 == 6) {
            my_Parent.add_Enemy_Poke(method_1(Class_37.const_308));
        }
        else if (var_6 == 5) {
            my_Parent.add_Enemy_Poke(method_1(Class_37.const_268));
        }
        else if (var_6 == 4) {
            my_Parent.add_Enemy_Poke(method_1(Class_37.const_273));
        }
        else if (var_6 == 3) {
            my_Parent.add_Enemy_Poke(method_1(Class_37.const_281));
        }
        else if (var_6 == 2) {
            my_Parent.add_Enemy_Poke(method_1(Class_37.const_272));
        }
        else if (var_6 == 1) {
            my_Parent.add_Enemy_Poke(method_1(Class_37.const_325));
        }
        if (var_5 == 2) {
            method_4(++var_6);
            var_11 = 300;
            var_5 = 0;
            return;
        }
        var_11 = 30;
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        if (param1 == Class_37.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
        }
        else if (param1 == Class_37.const_325) {
            _loc4_.num = Class_13.const_38;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.move1 = Class_9.var_257;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
            if (_loc4_.name != "Persian") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_37.const_272) {
            _loc4_.num = Class_13.const_38;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.move1 = Class_9.var_189;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
            if (_loc4_.name != "Persian") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_37.const_281) {
            _loc4_.num = Class_13.const_38;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.move1 = Class_9.var_69;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
            if (_loc4_.name != "Persian") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_37.const_273) {
            _loc4_.num = Class_13.const_38;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.move1 = Class_9.var_185;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
            if (_loc4_.name != "Persian") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_37.const_268) {
            _loc4_.num = Class_13.const_38;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.move1 = Class_9.var_46;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
            if (_loc4_.name != "Persian") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_37.const_308) {
            _loc4_.num = Class_13.const_38;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.move1 = Class_9.var_32;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
            if (_loc4_.name != "Persian") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_37.const_297) {
            _loc4_.num = Class_13.const_38;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.move1 = Class_9.var_53;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
            if (_loc4_.name != "Persian") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_37.const_269) {
            _loc4_.num = Class_13.const_38;
            Class_13.method_2(_loc4_);
            _loc4_.level = 40;
            _loc4_.move1 = Class_9.var_384;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            _loc4_.var_107 = true;
            if (_loc4_.name != "Persian") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 10;
        _loc4_.var_30 = Std.int(_loc4_.var_30 * 0.6);
        _loc4_.var_28 = Std.int(_loc4_.var_28 * 0.6);
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

