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

class Class_51 extends Class_7 {


    static inline final const_52 = 0;

    var var_389:Int = 0;

    public function new(param1:Class_875) {
        this.var_389 = Std.int(Math.random() * 3 + 1);
        super(param1);
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).level = 102;
        _loc4_.var_48 = true;
        _loc4_.var_77 = true;
        method_11(_loc4_);
        if (param1 == Class_51.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 1000 + 1);
            }
            _loc4_.level = Std.int(86 + Math.random() * 4);
            if (this.var_389 == 3) {
                if (param2 <= 170) {
                    _loc4_ = this.method_65(_loc4_);
                }
                else if (param2 <= 330) {
                    _loc4_ = this.method_160(_loc4_);
                }
                else if (param2 <= 470) {
                    _loc4_ = this.method_126(_loc4_);
                }
                else if (param2 <= 510) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_139(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_168(_loc4_);
                    }
                }
                else if (param2 <= 630) {
                    _loc4_ = this.method_49(_loc4_);
                }
                else if (param2 <= 750) {
                    _loc4_ = this.method_145(_loc4_);
                }
                else if (param2 <= 870) {
                    _loc4_ = this.method_43(_loc4_);
                }
                else if (param2 <= 990) {
                    _loc4_ = this.method_96(_loc4_);
                }
                else if (param2 <= 995) {
                    _loc4_ = this.method_403(_loc4_);
                }
                else if (param2 <= 1000) {
                    _loc4_ = this.method_196(_loc4_);
                }
            }
            else if (this.var_389 == 2) {
                if (param2 <= 160) {
                    _loc4_ = this.method_29(_loc4_);
                }
                else if (param2 <= 340) {
                    _loc4_ = this.method_316(_loc4_);
                }
                else if (param2 <= 500) {
                    _loc4_ = this.method_251(_loc4_);
                }
                else if (param2 <= 560) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_139(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_168(_loc4_);
                    }
                }
                else if (param2 <= 620) {
                    _loc4_ = this.method_49(_loc4_);
                }
                else if (param2 <= 680) {
                    _loc4_ = this.method_145(_loc4_);
                }
                else if (param2 <= 780) {
                    _loc4_ = this.method_34(_loc4_);
                }
                else if (param2 <= 880) {
                    _loc4_ = this.method_133(_loc4_);
                }
                else if (param2 <= 940) {
                    _loc4_ = this.method_162(_loc4_);
                }
                else if (param2 <= 1000) {
                    _loc4_ = this.method_96(_loc4_);
                }
            }
            else if (this.var_389 == 1) {
                if (param2 <= 200) {
                    _loc4_ = this.method_34(_loc4_);
                }
                else if (param2 <= 400) {
                    _loc4_ = this.method_133(_loc4_);
                }
                else if (param2 <= 480) {
                    _loc4_ = this.method_162(_loc4_);
                }
                else if (param2 <= 600) {
                    _loc4_ = this.method_126(_loc4_);
                }
                else if (param2 <= 720) {
                    _loc4_ = this.method_65(_loc4_);
                }
                else if (param2 <= 800) {
                    _loc4_ = this.method_160(_loc4_);
                }
                else if (param2 <= 880) {
                    _loc4_ = this.method_257(_loc4_);
                }
                else if (param2 <= 920) {
                    _loc4_ = this.method_43(_loc4_);
                }
                else if (param2 <= 1000) {
                    _loc4_ = this.method_96(_loc4_);
                }
            }
        }
        _loc4_.var_26 *= 2;
        _loc4_.speed = Std.int(_loc4_.speed * 0.6);
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 10;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 = Std.int(_loc4_.var_30 / 4);
        _loc4_.var_28 = Std.int(_loc4_.var_28 / 4);
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        trace(_loc4_.num);
        return _loc4_;
    }

    override public function get_Total_Waves():Int {
        return 40;
    }

    override public function do_Wave() {
        if (var_5 == 6) {
            if (var_6 == 40) {
                var_6 = 41;
                wave_Finished();
                return;
            }
            my_Parent.add_Enemy_Poke(method_1(Class_51.const_52));
            method_4(++var_6);
            var_11 = 75;
            var_5 = 0;
            return;
        }
        my_Parent.add_Enemy_Poke(method_1(Class_51.const_52));
        var_11 = 30;
        ++var_5;
    }

    @:allow(package_1) function method_29(param1:Class_6):Class_6 {
        param1.num = Class_13.const_70;
        param1.move1 = Class_9.var_187;
        param1.var_13 = 1;
        param1.var_19 = "mk";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_65(param1:Class_6):Class_6 {
        param1.num = Class_13.const_100;
        param1.move1 = Class_9.var_377;
        param1.var_13 = 1;
        param1.var_19 = "eji";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_34(param1:Class_6):Class_6 {
        param1.num = Class_13.const_58;
        param1.move1 = Class_9.var_441;
        param1.var_13 = 1;
        param1.var_19 = "mp";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_43(param1:Class_6):Class_6 {
        param1.num = Class_13.const_163;
        param1.move1 = Class_9.var_164;
        param1.var_13 = 1;
        param1.var_19 = "eex";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_49(param1:Class_6):Class_6 {
        param1.num = Class_13.const_101;
        param1.move1 = Class_9.var_100;
        param1.var_13 = 1;
        param1.var_19 = "mv";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_133(param1:Class_6):Class_6 {
        param1.num = Class_13.const_166;
        param1.move1 = Class_9.var_155;
        param1.var_13 = 1;
        param1.var_19 = "bi";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_162(param1:Class_6):Class_6 {
        param1.num = Class_13.const_56;
        param1.move1 = Class_9.var_126;
        param1.var_13 = 1;
        param1.var_19 = "wm";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_126(param1:Class_6):Class_6 {
        param1.num = Class_13.const_73;
        param1.move1 = Class_9.var_45;
        param1.var_13 = 1;
        param1.var_19 = "eje";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_160(param1:Class_6):Class_6 {
        param1.num = Class_13.const_143;
        param1.move1 = Class_9.var_258;
        param1.var_13 = 1;
        param1.var_19 = "eek";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_257(param1:Class_6):Class_6 {
        param1.num = Class_13.const_114;
        param1.move1 = Class_9.var_206;
        param1.var_13 = 1;
        param1.var_19 = "mj";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_96(param1:Class_6):Class_6 {
        param1.num = Class_13.const_178;
        param1.move1 = Class_9.var_461;
        param1.var_13 = 1;
        param1.var_19 = "exk";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_316(param1:Class_6):Class_6 {
        param1.num = Class_13.const_55;
        param1.move1 = Class_9.var_164;
        param1.var_13 = 1;
        param1.var_19 = "pv";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_251(param1:Class_6):Class_6 {
        param1.num = Class_13.const_113;
        param1.move1 = Class_9.var_45;
        param1.var_13 = 1;
        param1.var_19 = "bk";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_168(param1:Class_6):Class_6 {
        param1.num = Class_13.const_89;
        param1.move1 = Class_9.var_100;
        param1.var_13 = 1;
        param1.var_19 = "kb";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_145(param1:Class_6):Class_6 {
        param1.num = Class_13.const_53;
        param1.move1 = Class_9.var_190;
        param1.var_13 = 1;
        param1.var_19 = "kw";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_139(param1:Class_6):Class_6 {
        param1.num = Class_13.const_97;
        param1.move1 = Class_9.var_104;
        param1.var_13 = 1;
        param1.var_19 = "km";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_403(param1:Class_6):Class_6 {
        param1.num = Class_13.const_127;
        param1.move1 = Class_9.var_126;
        param1.var_13 = 1;
        param1.var_19 = "eij";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_196(param1:Class_6):Class_6 {
        param1.num = Class_13.const_167;
        param1.move1 = Class_9.var_164;
        param1.var_13 = 1;
        param1.var_19 = "eie";
        param1.shiny = 0;
        Class_13.method_2(param1);
        return param1;
    }
}

