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

class Class_39 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_289 = 1;

    var var_389:Int = 0;

    public function new(param1:Class_875) {
        this.var_389 = Std.int(Math.random() * 4 + 1);
        super(param1);
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).level = 25;
        method_11(_loc4_);
        if (param1 == Class_39.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            if (this.var_389 == 4) {
                if (param2 <= 20) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_75(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_66(_loc4_);
                    }
                }
                else if (param2 <= 30) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_37(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_38(_loc4_);
                    }
                }
                else if (param2 <= 35) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_38(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_37(_loc4_);
                    }
                }
                else if (param2 <= 55) {
                    _loc4_ = this.method_74(_loc4_);
                }
                else if (param2 <= 59) {
                    _loc4_ = this.method_49(_loc4_);
                }
                else if (param2 <= 74) {
                    _loc4_ = this.method_330(_loc4_);
                }
                else if (param2 <= 94) {
                    _loc4_ = this.method_117(_loc4_);
                }
                else if (param2 <= 96) {
                    _loc4_ = this.method_43(_loc4_);
                }
                else if (param2 <= 100) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_156(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_172(_loc4_);
                    }
                }
            }
            else if (this.var_389 == 3) {
                if (param2 <= 20) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_75(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_66(_loc4_);
                    }
                }
                else if (param2 <= 30) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_37(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_38(_loc4_);
                    }
                }
                else if (param2 <= 35) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_38(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_37(_loc4_);
                    }
                }
                else if (param2 <= 55) {
                    _loc4_ = this.method_74(_loc4_);
                }
                else if (param2 <= 70) {
                    _loc4_ = this.method_105(_loc4_);
                }
                else if (param2 <= 77) {
                    _loc4_ = this.method_49(_loc4_);
                }
                else if (param2 <= 92) {
                    _loc4_ = this.method_375(_loc4_);
                }
                else if (param2 <= 96) {
                    _loc4_ = this.method_136(_loc4_);
                }
                else if (param2 <= 100) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_156(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_172(_loc4_);
                    }
                }
            }
            else if (this.var_389 == 2) {
                if (param2 <= 20) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_75(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_66(_loc4_);
                    }
                }
                else if (param2 <= 35) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_37(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_38(_loc4_);
                    }
                }
                else if (param2 <= 55) {
                    _loc4_ = this.method_74(_loc4_);
                }
                else if (param2 <= 70) {
                    _loc4_ = this.method_105(_loc4_);
                }
                else if (param2 <= 74) {
                    _loc4_ = this.method_34(_loc4_);
                }
                else if (param2 <= 94) {
                    _loc4_ = this.method_117(_loc4_);
                }
                else if (param2 <= 98) {
                    _loc4_ = this.method_43(_loc4_);
                }
                else if (param2 <= 100) {
                    _loc4_ = this.method_103(_loc4_);
                }
            }
            else if (this.var_389 == 1) {
                if (param2 <= 20) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_75(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_66(_loc4_);
                    }
                }
                else if (param2 <= 30) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_37(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_38(_loc4_);
                    }
                }
                else if (param2 <= 35) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_38(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_37(_loc4_);
                    }
                }
                else if (param2 <= 55) {
                    _loc4_ = this.method_74(_loc4_);
                }
                else if (param2 <= 70) {
                    _loc4_ = this.method_105(_loc4_);
                }
                else if (param2 <= 74) {
                    _loc4_ = this.method_34(_loc4_);
                }
                else if (param2 <= 94) {
                    _loc4_ = this.method_117(_loc4_);
                }
                else if (param2 <= 96) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_103(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_136(_loc4_);
                    }
                }
                else if (param2 <= 100) {
                    if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                        _loc4_ = this.method_43(_loc4_);
                    }
                    else if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                        _loc4_ = this.method_103(_loc4_);
                    }
                }
            }
        }
        else if (param1 == Class_39.const_289) {
            if (this.var_389 == 4) {
                _loc4_ = this.method_39(_loc4_);
            }
            else if (this.var_389 == 3) {
                _loc4_ = this.method_31(_loc4_);
            }
            else if (this.var_389 == 2) {
                _loc4_ = this.method_32(_loc4_);
            }
            else if (this.var_389 == 1) {
                _loc4_ = this.method_416(_loc4_);
            }
        }
        _loc4_.var_26 *= 0;
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }

    override public function get_Total_Waves():Int {
        return 60;
    }

    override public function do_Wave() {
        if (var_5 == 6) {
            if (var_6 == 60) {
                var_6 = 60;
                wave_Finished();
                return;
            }
            my_Parent.add_Enemy_Poke(method_1(Class_39.const_289));
            method_4(++var_6);
            var_11 = 75;
            var_5 = 0;
            return;
        }
        my_Parent.add_Enemy_Poke(method_1(Class_39.const_52));
        var_11 = 30;
        ++var_5;
    }

    @:allow(package_1) function method_66(param1:Class_6):Class_6 {
        param1.num = Class_13.const_45;
        param1.move1 = Class_9.var_100;
        param1.var_13 = 1;
        param1.var_19 = "kp";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_75(param1:Class_6):Class_6 {
        param1.num = Class_13.const_48;
        param1.move1 = Class_9.var_155;
        param1.var_13 = 1;
        param1.var_19 = "xk";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_38(param1:Class_6):Class_6 {
        param1.num = Class_13.const_132;
        param1.move1 = Class_9.var_100;
        param1.var_13 = 1;
        param1.var_19 = "xj";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_37(param1:Class_6):Class_6 {
        param1.num = Class_13.const_145;
        param1.move1 = Class_9.var_155;
        param1.var_13 = 1;
        param1.var_19 = "xx";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_74(param1:Class_6):Class_6 {
        param1.num = Class_13.const_122;
        param1.move1 = Class_9.var_524;
        param1.var_13 = 1;
        param1.var_19 = "ejk";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_105(param1:Class_6):Class_6 {
        param1.num = Class_13.const_105;
        param1.move1 = Class_9.var_100;
        param1.var_13 = 1;
        param1.var_19 = "mw";
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

    @:allow(package_1) function method_375(param1:Class_6):Class_6 {
        param1.num = Class_13.const_153;
        param1.move1 = Class_9.var_155;
        param1.var_13 = 1;
        param1.var_19 = "bm";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_330(param1:Class_6):Class_6 {
        param1.num = Class_13.const_83;
        param1.move1 = Class_9.var_45;
        param1.var_13 = 1;
        param1.var_19 = "mb";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_34(param1:Class_6):Class_6 {
        param1.num = Class_13.const_58;
        param1.move1 = Class_9.var_45;
        param1.var_13 = 1;
        param1.var_19 = "mp";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_117(param1:Class_6):Class_6 {
        param1.num = Class_13.const_154;
        param1.move1 = Class_9.var_258;
        param1.var_13 = 1;
        param1.var_19 = "eee";
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

    @:allow(package_1) function method_156(param1:Class_6):Class_6 {
        param1.num = Class_13.const_151;
        param1.move1 = Class_9.var_96;
        param1.var_13 = 1;
        param1.var_19 = "ekx";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_172(param1:Class_6):Class_6 {
        param1.num = Class_13.const_146;
        param1.move1 = Class_9.var_330;
        param1.var_13 = 1;
        param1.var_19 = "ekv";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_136(param1:Class_6):Class_6 {
        param1.num = Class_13.const_180;
        param1.move1 = Class_9.var_431;
        param1.var_13 = 1;
        param1.var_19 = "eei";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_103(param1:Class_6):Class_6 {
        param1.num = Class_13.const_177;
        param1.move1 = Class_9.var_45;
        param1.var_13 = 1;
        param1.var_19 = "ekb";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_39(param1:Class_6):Class_6 {
        param1.num = Class_13.const_61;
        param1.move1 = Class_9.var_173;
        param1.var_13 = 1;
        param1.var_19 = "pb";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_31(param1:Class_6):Class_6 {
        param1.num = Class_13.const_115;
        param1.move1 = Class_9.var_100;
        param1.var_13 = 1;
        param1.var_19 = "im";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_32(param1:Class_6):Class_6 {
        param1.num = Class_13.const_137;
        param1.move1 = Class_9.var_45;
        param1.var_13 = 1;
        param1.var_19 = "vp";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_416(param1:Class_6):Class_6 {
        param1.num = Class_13.const_134;
        param1.move1 = Class_9.var_180;
        param1.var_13 = 1;
        param1.var_19 = "emv";
        Class_13.method_2(param1);
        return param1;
    }
}

