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

class Class_59 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_260 = 1;

    static inline final const_246 = 2;

    static inline final const_263 = 3;

    static inline final const_262 = 4;

    static inline final const_254 = 5;

    static inline final const_265 = 6;

    static inline final const_198 = 7;

    static inline final const_195 = 8;

    static inline final const_192 = 9;

    static inline final const_191 = 10;

    static inline final const_359 = 11;

    static inline final const_160 = 12;

    static inline final const_340 = 6;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 16;
    }

    override public function do_Wave() {
        if (var_6 == 1) {
            if (var_5 == 0) {
                my_Parent.add_Enemy_Poke(method_1(Class_59.const_262));
            }
            else if (var_5 == 1) {
                my_Parent.add_Enemy_Poke(method_1(Class_59.const_254));
            }
            else if (var_5 == 2) {
                my_Parent.add_Enemy_Poke(method_1(Class_59.const_265));
            }
            if (var_5 >= 2) {
                method_4(++var_6);
                var_11 = 360;
                var_142 = 0;
                var_5 = 0;
                return;
            }
            var_11 = 210;
            var_142 = 0;
        }
        else {
            if (var_6 == 2) {
                if (var_5 == 0) {
                    my_Parent.add_Enemy_Poke(method_1(Class_59.const_160));
                }
                method_4(++var_6);
                var_11 = 360;
                var_142 = 0;
                var_5 = 0;
                return;
            }
            if (var_6 == 3) {
                if (var_5 == 0) {
                    my_Parent.add_Enemy_Poke(method_1(Class_59.const_260), 1, "2");
                }
                else if (var_5 == 1) {
                    my_Parent.add_Enemy_Poke(method_1(Class_59.const_246), 1, "2");
                }
                else if (var_5 == 2) {
                    my_Parent.add_Enemy_Poke(method_1(Class_59.const_263), 1, "2");
                }
                if (var_5 >= 2) {
                    method_4(++var_6);
                    var_11 = 360;
                    var_142 = 0;
                    var_5 = 0;
                    return;
                }
                var_11 = 210;
                var_142 = 0;
            }
            else {
                if (var_6 == 4) {
                    if (var_5 == 0) {
                        my_Parent.add_Enemy_Poke(method_1(Class_59.const_160), 1, "2");
                    }
                    method_4(++var_6);
                    var_11 = 360;
                    var_142 = 0;
                    var_5 = 0;
                    return;
                }
                if (var_6 == 5) {
                    if (var_5 == 0) {
                        my_Parent.add_Enemy_Poke(method_1(Class_59.const_260), 1, "3");
                    }
                    else if (var_5 == 1) {
                        my_Parent.add_Enemy_Poke(method_1(Class_59.const_246), 1, "3");
                    }
                    else if (var_5 == 2) {
                        my_Parent.add_Enemy_Poke(method_1(Class_59.const_263), 1, "3");
                    }
                    if (var_5 >= 2) {
                        method_4(++var_6);
                        var_11 = 360;
                        var_142 = 0;
                        var_5 = 0;
                        return;
                    }
                    var_11 = 210;
                    var_142 = 0;
                }
                else {
                    if (var_6 == 6) {
                        if (var_5 == 0) {
                            my_Parent.add_Enemy_Poke(method_1(Class_59.const_160), 1, "3");
                        }
                        method_4(++var_6);
                        var_11 = 360;
                        var_142 = 0;
                        var_5 = 0;
                        return;
                    }
                    if (var_6 == 7) {
                        if (var_5 == 0) {
                            my_Parent.add_Enemy_Poke(method_1(Class_59.const_262), 1, "4");
                        }
                        else if (var_5 == 1) {
                            my_Parent.add_Enemy_Poke(method_1(Class_59.const_254), 1, "4");
                        }
                        else if (var_5 == 2) {
                            my_Parent.add_Enemy_Poke(method_1(Class_59.const_265), 1, "4");
                        }
                        if (var_5 >= 2) {
                            method_4(++var_6);
                            var_11 = 360;
                            var_142 = 0;
                            var_5 = 0;
                            return;
                        }
                        var_11 = 210;
                        var_142 = 0;
                    }
                    else {
                        if (var_6 == 8) {
                            if (var_5 == 0) {
                                my_Parent.add_Enemy_Poke(method_1(Class_59.const_160), 1, "4");
                            }
                            method_4(++var_6);
                            var_11 = 360;
                            var_142 = 0;
                            var_5 = 0;
                            return;
                        }
                        if (var_6 == 9) {
                            if (var_5 == 0) {
                                my_Parent.add_Enemy_Poke(method_1(Class_59.const_191));
                            }
                            else if (var_5 == 1) {
                                my_Parent.add_Enemy_Poke(method_1(Class_59.const_191), 1, "2");
                            }
                            else if (var_5 == 2) {
                                my_Parent.add_Enemy_Poke(method_1(Class_59.const_191), 1, "3");
                            }
                            else if (var_5 == 3) {
                                my_Parent.add_Enemy_Poke(method_1(Class_59.const_191), 1, "4");
                            }
                            if (var_5 >= 3) {
                                method_4(++var_6);
                                var_11 = 360;
                                var_142 = 0;
                                var_5 = 0;
                                return;
                            }
                            var_11 = 360;
                            var_142 = 0;
                        }
                        else {
                            if (var_6 == 10) {
                                if (var_5 == 0) {
                                    my_Parent.add_Enemy_Poke(method_1(Class_59.const_160));
                                }
                                method_4(++var_6);
                                var_11 = 360;
                                var_5 = 0;
                                return;
                            }
                            if (var_6 == 11) {
                                if (var_5 == 0) {
                                    my_Parent.add_Enemy_Poke(method_1(Class_59.const_198));
                                }
                                else if (var_5 == 1) {
                                    my_Parent.add_Enemy_Poke(method_1(Class_59.const_198), 1, "2");
                                }
                                else if (var_5 == 2) {
                                    my_Parent.add_Enemy_Poke(method_1(Class_59.const_198), 1, "3");
                                }
                                else if (var_5 == 3) {
                                    my_Parent.add_Enemy_Poke(method_1(Class_59.const_198), 1, "4");
                                }
                                if (var_5 >= 3) {
                                    method_4(++var_6);
                                    var_11 = 360;
                                    var_5 = 0;
                                    return;
                                }
                                var_11 = 360;
                            }
                            else {
                                if (var_6 == 12) {
                                    if (var_5 == 0) {
                                        my_Parent.add_Enemy_Poke(method_1(Class_59.const_160), 1, "2");
                                    }
                                    method_4(++var_6);
                                    var_11 = 360;
                                    var_5 = 0;
                                    return;
                                }
                                if (var_6 == 13) {
                                    if (var_5 == 0) {
                                        my_Parent.add_Enemy_Poke(method_1(Class_59.const_195));
                                    }
                                    else if (var_5 == 1) {
                                        my_Parent.add_Enemy_Poke(method_1(Class_59.const_195), 1, "2");
                                    }
                                    else if (var_5 == 2) {
                                        my_Parent.add_Enemy_Poke(method_1(Class_59.const_195), 1, "3");
                                    }
                                    else if (var_5 == 3) {
                                        my_Parent.add_Enemy_Poke(method_1(Class_59.const_195), 1, "4");
                                    }
                                    if (var_5 >= 3) {
                                        method_4(++var_6);
                                        var_11 = 360;
                                        var_5 = 0;
                                        return;
                                    }
                                    var_11 = 360;
                                }
                                else {
                                    if (var_6 == 14) {
                                        if (var_5 == 0) {
                                            my_Parent.add_Enemy_Poke(method_1(Class_59.const_160), 1, "3");
                                        }
                                        method_4(++var_6);
                                        var_11 = 360;
                                        var_5 = 0;
                                        return;
                                    }
                                    if (var_6 == 15) {
                                        if (var_5 == 0) {
                                            my_Parent.add_Enemy_Poke(method_1(Class_59.const_192));
                                        }
                                        else if (var_5 == 1) {
                                            my_Parent.add_Enemy_Poke(method_1(Class_59.const_192), 1, "2");
                                        }
                                        else if (var_5 == 2) {
                                            my_Parent.add_Enemy_Poke(method_1(Class_59.const_192), 1, "3");
                                        }
                                        else if (var_5 == 3) {
                                            my_Parent.add_Enemy_Poke(method_1(Class_59.const_192), 1, "4");
                                        }
                                        if (var_5 >= 3) {
                                            method_4(++var_6);
                                            var_11 = 360;
                                            var_5 = 0;
                                            return;
                                        }
                                        var_11 = 360;
                                    }
                                    else if (var_6 == 16) {
                                        if (var_5 == 0) {
                                            my_Parent.add_Enemy_Poke(method_1(Class_59.const_160), 1, "4");
                                        }
                                        var_6 = 18;
                                        wave_Finished();
                                        return;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        ++var_5;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).level = 45;
        if (param1 == Class_59.const_191) {
            _loc4_.num = Class_13.const_122;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_126;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Exeggcute") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_59.const_260) {
            _loc4_.num = Class_13.const_44;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_208;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Bellsprout") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_59.const_246) {
            _loc4_.num = Class_13.const_124;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_146;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Weepinbell") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_59.const_263) {
            _loc4_.num = Class_13.const_106;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_529;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Victreebel") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_59.const_198) {
            _loc4_.num = Class_13.const_60;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_341;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Bulbasaur") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_59.const_195) {
            _loc4_.num = Class_13.const_95;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_291;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Ivysaur") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_59.const_192) {
            _loc4_.num = Class_13.const_69;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_315;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Venusaur") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_59.const_262) {
            _loc4_.num = Class_13.const_40;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_259;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Oddish") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_59.const_254) {
            _loc4_.num = Class_13.const_102;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_138;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Gloom") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_59.const_265) {
            _loc4_.num = Class_13.const_54;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_423;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
            if (_loc4_.name != "Vileplume") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_59.const_359) {
            _loc4_.num = Class_13.const_110;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_121;
            _loc4_.var_13 = 1;
            if (_loc4_.name != "Tangela") {
                my_Parent.end_hack();
                return null;
            }
        }
        else if (param1 == Class_59.const_160) {
            _loc4_.num = Class_13.const_183;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_94;
            _loc4_.var_13 = 1;
            _loc4_.var_30 *= 3;
            _loc4_.var_28 *= 3;
            _loc4_.var_16 *= 2;
            _loc4_.level = 50;
            _loc4_.speed -= 30;
            if (_loc4_.name != "Celebi") {
                my_Parent.end_hack();
                return null;
            }
        }
        _loc4_.var_19 = "pje";
        _loc4_.var_39 = false;
        _loc4_.var_107 = true;
        _loc4_.var_27 *= 2;
        _loc4_.speed = Std.int(_loc4_.speed / 2);
        _loc4_.var_26 = Std.int(_loc4_.var_26 * 1.5);
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 10;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 = Std.int(_loc4_.var_30 / 3);
        _loc4_.var_28 = Std.int(_loc4_.var_28 / 3);
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

