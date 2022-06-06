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

class Class_54 extends Class_7 {


    static inline final const_244 = 1;

    static inline final const_171 = 2;

    static inline final const_229 = 3;

    static inline final const_188 = 4;

    static inline final const_212 = 5;

    static inline final const_255 = 6;

    static inline final const_189 = 7;

    static inline final const_207 = 8;

    static inline final const_283 = 9;

    static inline final const_221 = 10;

    static inline final const_186 = 11;

    static inline final const_305 = 12;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 9;
    }

    override public function do_Wave() {
        if (var_6 == 1) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_244), 3);
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_171));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_171));
                var_11 = 100;
            }
            else if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_171));
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 2) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_186));
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_171));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_171));
                var_11 = 100;
            }
            else if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_186));
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 3) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_189));
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_186));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_188));
                var_11 = 100;
            }
            else if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_171));
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 4) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_207));
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_283));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_207));
                var_11 = 100;
            }
            else if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_186));
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 5) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_189));
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_189));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_189));
                var_11 = 100;
            }
            else if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_244), 3);
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 6) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_188));
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_188));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_188));
                var_11 = 100;
            }
            else if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_212));
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 7) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_186));
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_305));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_171));
                var_11 = 100;
            }
            else if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_229));
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 8) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_207));
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_212));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_255));
                var_11 = 100;
            }
            else if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_229));
                method_4(++var_6);
                var_11 = 200;
                var_5 = 0;
                return;
            }
        }
        else if (var_6 == 9) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_189));
                var_11 = 100;
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_255));
                var_11 = 100;
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_188));
                var_11 = 100;
            }
            else if (var_5 == 3) {
                my_Parent.add_Enemy_Poke(method_1(Class_54.const_212));
                var_6 = 11;
                wave_Finished();
                return;
            }
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).level = 75;
        _loc4_.var_48 = false;
        if (param1 == Class_54.const_255) {
            _loc4_.num = Class_13.const_74;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_227;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 10;
        }
        else if (param1 == Class_54.const_189) {
            _loc4_.num = Class_13.const_98;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_227;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 5;
        }
        else if (param1 == Class_54.const_188) {
            _loc4_.num = Class_13.const_93;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_227;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 5;
        }
        else if (param1 == Class_54.const_212) {
            _loc4_.num = Class_13.const_120;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_227;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 10;
        }
        else if (param1 == Class_54.const_207) {
            _loc4_.num = Class_13.const_97;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_263;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 7;
        }
        else if (param1 == Class_54.const_283) {
            _loc4_.num = Class_13.const_89;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_56;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 7;
        }
        else if (param1 == Class_54.const_186) {
            _loc4_.num = Class_13.const_107;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_126;
            _loc4_.var_107 = true;
            _loc4_.var_28 = Std.int(_loc4_.var_28 * 0.3);
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 2;
        }
        else if (param1 == Class_54.const_305) {
            _loc4_.num = Class_13.const_55;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_126;
            _loc4_.var_107 = true;
            _loc4_.var_28 = Std.int(_loc4_.var_28 * 0.3);
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 5;
        }
        else if (param1 == Class_54.const_221) {
            _loc4_.num = Class_13.const_56;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_126;
            _loc4_.var_13 = 1;
            _loc4_.var_107 = true;
            _loc4_.var_28 = Std.int(_loc4_.var_28 * 0.3);
            _loc4_.var_16 *= 5;
        }
        else if (param1 == Class_54.const_229) {
            _loc4_.num = Class_13.const_58;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_187;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 5;
        }
        else if (param1 == Class_54.const_171) {
            _loc4_.num = Class_13.const_83;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_45;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 2;
            _loc4_.var_23 *= 1;
            _loc4_.var_24 *= 1;
        }
        else if (param1 == Class_54.const_244) {
            _loc4_.level = 81;
            _loc4_.num = Class_13.const_74;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_560;
            _loc4_.var_13 = 1;
            _loc4_.var_107 = true;
            _loc4_.var_16 *= 1000;
            _loc4_.var_23 *= 1000;
            _loc4_.var_24 *= 1000;
            _loc4_.var_490 = true;
            _loc4_.var_77 = false;
        }
        _loc4_.var_19 = "pje";
        _loc4_.var_39 = false;
        _loc4_.var_26 = Std.int(_loc4_.var_26 * 1.5);
        _loc4_.var_40 = 0;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

