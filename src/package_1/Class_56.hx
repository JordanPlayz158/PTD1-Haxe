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
import code.Class_9;
import code.Class_940;

class Class_56 extends Class_7 {


    static inline final const_52 = 0;

    var var_389:Int = 0;

    var level:Class_940;

    var var_523:Int = 0;

    public function new(param1:Class_940) {
        this.level = param1;
        this.var_389 = Std.int(Math.random() * 3 + 1);
        super(param1);
    }

    override public function defeated_Poke(param1:Class_6) {
        var _loc2_ = false;
        if (param1.num == Class_13.const_118) {
            if (this.var_523 == 0 && !this.method_25(27)) {
                _loc2_ = true;
            }
            else if (this.var_523 == 1 && !this.method_25(271)) {
                _loc2_ = true;
            }
            else if (this.var_523 == 2 && !this.method_25(272)) {
                _loc2_ = true;
            }
            this.level.var_651 = _loc2_;
        }
    }

    @:allow(package_1) function method_25(param1:Int):Bool {
        var _loc2_ = 0;
        var _loc3_ = 0;
        while (_loc3_ < my_Parent.currentProfile.inventory.length) {
            _loc2_ = my_Parent.currentProfile.inventory[_loc3_];
            if (_loc2_ == param1) {
                return true;
            }
            _loc3_++;
        }
        return false;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:ASAny = null;
        (_loc4_ = new Class_6()).level = 102;
        _loc4_.var_48 = true;
        _loc4_.var_77 = true;
        method_11(_loc4_);
        if (param1 == Class_7.const_213) {
            _loc4_ = this.method_223(_loc4_);
        }
        else if (param1 == Class_56.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            _loc4_.level = 80 + Math.random() * 4;
            if (this.var_389 == 3) {
                if (param2 <= 15) {
                    _loc4_ = this.method_47(_loc4_);
                }
                else if (param2 <= 20) {
                    _loc4_ = this.method_29(_loc4_);
                }
                else if (param2 <= 40) {
                    _loc4_ = this.method_84(_loc4_);
                }
                else if (param2 <= 44) {
                    _loc4_ = this.method_101(_loc4_);
                }
                else if (param2 <= 64) {
                    _loc4_ = this.method_85(_loc4_);
                }
                else if (param2 <= 68) {
                    _loc4_ = this.method_109(_loc4_);
                }
                else if (param2 <= 98) {
                    _loc4_ = this.method_104(_loc4_);
                }
                else if (param2 <= 100) {
                    _loc4_ = this.method_65(_loc4_);
                }
            }
            else if (this.var_389 == 2) {
                if (param2 <= 15) {
                    _loc4_ = this.method_47(_loc4_);
                }
                else if (param2 <= 20) {
                    _loc4_ = this.method_29(_loc4_);
                }
                else if (param2 <= 40) {
                    _loc4_ = this.method_84(_loc4_);
                }
                else if (param2 <= 45) {
                    _loc4_ = this.method_101(_loc4_);
                }
                else if (param2 <= 65) {
                    _loc4_ = this.method_85(_loc4_);
                }
                else if (param2 <= 70) {
                    _loc4_ = this.method_109(_loc4_);
                }
                else if (param2 <= 95) {
                    _loc4_ = this.method_104(_loc4_);
                }
                else if (param2 <= 100) {
                    _loc4_ = this.method_65(_loc4_);
                }
            }
            else if (this.var_389 == 1) {
                if (param2 <= 15) {
                    _loc4_ = this.method_47(_loc4_);
                }
                else if (param2 <= 20) {
                    _loc4_ = this.method_29(_loc4_);
                }
                else if (param2 <= 40) {
                    _loc4_ = this.method_84(_loc4_);
                }
                else if (param2 <= 45) {
                    _loc4_ = this.method_101(_loc4_);
                }
                else if (param2 <= 50) {
                    _loc4_ = this.method_85(_loc4_);
                }
                else if (param2 <= 70) {
                    _loc4_ = this.method_109(_loc4_);
                }
                else if (param2 <= 90) {
                    _loc4_ = this.method_104(_loc4_);
                }
                else if (param2 <= 100) {
                    _loc4_ = this.method_34(_loc4_);
                }
            }
        }
        _loc4_.var_26 *= 1.7;
        _loc4_.speed *= 0.6;
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 10;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 /= 4;
        _loc4_.var_28 /= 4;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }

    override public function get_Total_Waves():Int {
        return 30;
    }

    override public function do_Wave() {
        if (var_5 == 6) {
            if (var_6 == 30) {
                var_6 = 21;
                wave_Finished();
                return;
            }
            if (var_6 == 1 && this.method_390()) {
                my_Parent.add_Enemy_Poke(method_1(Class_7.const_213));
            }
            else {
                my_Parent.add_Enemy_Poke(method_1(Class_56.const_52));
            }
            method_4(++var_6);
            var_11 = 75;
            var_5 = 0;
            return;
        }
        my_Parent.add_Enemy_Poke(method_1(Class_56.const_52));
        var_11 = 30;
        ++var_5;
    }

    @:allow(package_1) function method_390():Bool {
        var _loc1_:ASAny = null;
        var _loc2_ = 0;
        var _loc3_ = 0;
        var _loc4_ = 0;
        var _loc5_ = ASCompat.toString(my_Parent.send_Msg_Public("sponsor"));
        var _loc6_ = 0;
        while (_loc6_ < my_Parent.currentProfile.partyList.length) {
            _loc1_ = my_Parent.currentProfile.partyList[_loc6_];
            if (_loc1_) {
                if (!(_loc5_ != "arc" && _loc1_.myTag == "h")) {
                    if (_loc1_.is_Type(Class_13.const_6)) {
                        if (_loc1_.level == 100) {
                            _loc2_++;
                            if (_loc1_.shiny == 2) {
                                _loc4_++;
                            }
                            else if (_loc1_.shiny == 1) {
                                _loc3_++;
                            }
                        }
                    }
                }
            }
            _loc6_++;
        }
        if (_loc2_ == 6) {
            if (_loc3_ == 6) {
                this.var_523 = 1;
            }
            else if (_loc4_ == 6) {
                this.var_523 = 2;
            }
            else {
                this.var_523 = 0;
            }
            return true;
        }
        return false;
    }

    @:allow(package_1) function method_223(param1:Class_6):Class_6 {
        param1.num = Class_13.const_118;
        param1.move1 = Class_9.var_133;
        param1.var_13 = 1;
        param1.var_19 = "pj";
        Class_13.method_2(param1);
        param1.var_16 *= 10;
        param1.var_39 = false;
        param1.var_48 = false;
        param1.var_77 = false;
        param1.shiny = 0;
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

    @:allow(package_1) function method_47(param1:Class_6):Class_6 {
        param1.num = Class_13.const_19;
        param1.move1 = Class_9.var_187;
        param1.var_13 = 1;
        param1.var_19 = "me";
        Class_13.method_2(param1);
        return param1;
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

    @:allow(package_1) function method_85(param1:Class_6):Class_6 {
        param1.num = Class_13.const_21;
        param1.move1 = Class_9.var_280;
        param1.var_13 = 1;
        param1.var_19 = "ww";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_109(param1:Class_6):Class_6 {
        param1.num = Class_13.const_126;
        param1.move1 = Class_9.var_280;
        param1.var_13 = 1;
        param1.var_19 = "wv";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_104(param1:Class_6):Class_6 {
        param1.num = Class_13.const_16;
        param1.move1 = Class_9.var_45;
        param1.var_13 = 1;
        param1.var_19 = "pi";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_84(param1:Class_6):Class_6 {
        param1.num = Class_13.const_12;
        param1.move1 = Class_9.var_45;
        param1.var_13 = 1;
        param1.var_19 = "vm";
        Class_13.method_2(param1);
        return param1;
    }

    @:allow(package_1) function method_101(param1:Class_6):Class_6 {
        param1.num = Class_13.const_116;
        param1.move1 = Class_9.var_45;
        param1.var_13 = 1;
        param1.var_19 = "vi";
        Class_13.method_2(param1);
        return param1;
    }
}

