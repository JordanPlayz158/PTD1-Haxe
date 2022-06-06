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
import code.Class_92;

class Class_61 extends Class_7 {


    static inline final const_219 = 1;

    static inline final const_221 = 2;

    static inline final const_237 = 3;

    static inline final const_206 = 4;

    static inline final const_205 = 5;

    static inline final const_259 = 6;

    static inline final const_229 = 7;

    static inline final const_239 = 8;

    static inline final const_309 = 9;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 7;
    }

    override public function do_Wave() {
        if (var_6 == 1) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_219));
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_219));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_206));
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 2) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_221));
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_221));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_206));
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 3) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_237));
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_237));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_206));
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 4) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_229), 1, "2");
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_229), 1, "2");
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_205), 1, "2");
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 5) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_239), 1, "2");
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_239), 1, "2");
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_205), 1, "2");
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 6) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_259), 1, "2");
                var_11 = 50;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_259), 1, "2");
                var_11 = 50;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_205), 1, "2");
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 7) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_61.const_309));
                var_6 = 8;
                wave_Finished();
                return;
            }
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:ASAny = null;
        (_loc4_ = new Class_6()).level = 65;
        _loc4_.var_48 = false;
        if (param1 == Class_61.const_219) {
            _loc4_.num = Class_13.const_109;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_126;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_61.const_221) {
            _loc4_.num = Class_13.const_56;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_244;
            _loc4_.var_13 = 1;
            _loc4_.speed /= 2;
            _loc4_.var_107 = true;
            _loc4_.var_16 *= 7;
            _loc4_.var_23 *= 2;
            _loc4_.var_24 *= 3;
            _loc4_.var_30 /= 3;
            _loc4_.var_28 /= 3;
        }
        else if (param1 == Class_61.const_237) {
            _loc4_.num = Class_13.const_49;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_339;
            _loc4_.move2 = Class_9.var_245;
            _loc4_.var_13 = 2;
            _loc4_.var_107 = true;
            _loc4_.var_16 *= 5;
        }
        else if (param1 == Class_61.const_206) {
            _loc4_.num = Class_13.const_85;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_297;
            _loc4_.var_48 = true;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_61.const_205) {
            _loc4_.num = Class_13.const_129;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_297;
            _loc4_.var_48 = true;
            _loc4_.var_13 = 1;
        }
        else if (param1 == Class_61.const_259) {
            _loc4_.num = Class_13.const_121;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_380;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 4;
        }
        else if (param1 == Class_61.const_229) {
            _loc4_.num = Class_13.const_58;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_187;
            _loc4_.var_13 = 1;
            _loc4_.speed /= 2;
            _loc4_.var_107 = true;
            _loc4_.var_16 *= 10;
        }
        else if (param1 == Class_61.const_239) {
            _loc4_.num = Class_13.const_63;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_251;
            _loc4_.var_13 = 1;
            _loc4_.var_107 = true;
            _loc4_.var_16 *= 4;
            _loc4_.var_23 *= 2;
            _loc4_.var_24 *= 2;
        }
        else if (param1 == Class_61.const_309) {
            _loc4_.num = Class_13.const_127;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_251;
            _loc4_.move2 = Class_9.var_272;
            _loc4_.move3 = Class_9.var_339;
            _loc4_.move4 = Class_9.var_245;
            _loc4_.var_13 = 4;
            _loc4_.myAI = new Class_92();
            _loc4_.speed /= 2;
            _loc4_.var_107 = true;
            _loc4_.var_16 *= 3;
            _loc4_.var_30 /= 2;
            _loc4_.var_28 /= 2;
        }
        _loc4_.var_19 = "pje";
        _loc4_.var_39 = false;
        _loc4_.var_27 *= 2;
        _loc4_.var_26 *= 1.5;
        _loc4_.var_40 = 0;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

