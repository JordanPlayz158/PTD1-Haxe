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
import code.Class_878;
import code.Class_9;
import code.Class_946;

class Class_62 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_230 = 35;

    static inline final const_335 = 60;

    static inline final const_417 = 85;

    static inline final const_399 = 95;

    static inline final const_334 = 100;

    static inline final const_340 = 6;

    var var_700:Class_946;

    var var_523:Int = 0;

    public function new(param1:Class_946) {
        this.var_700 = param1;
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 30;
    }

    override public function defeated_Poke(param1:Class_6) {
        var _loc2_ = false;
        if (param1.num == Class_13.const_92) {
            if (this.var_523 == 0 && !this.method_25(25)) {
                _loc2_ = true;
            }
            else if (this.var_523 == 1 && !this.method_25(251)) {
                _loc2_ = true;
            }
            else if (this.var_523 == 2 && !this.method_25(252)) {
                _loc2_ = true;
            }
            this.var_700.var_695 = _loc2_;
        }
    }

    override public function do_Wave() {
        if (var_5 == Class_62.const_340) {
            if (var_6 == 30) {
                var_6 = 31;
                wave_Finished();
                return;
            }
            if (var_6 == 1 && this.method_415()) {
                my_Parent.add_Enemy_Poke(method_1(Class_7.const_218));
            }
            method_4(++var_6);
            var_11 = 75;
            var_5 = 0;
            return;
        }
        my_Parent.add_Enemy_Poke(method_1(Class_62.const_52));
        var_11 = 30;
        ++var_5;
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

    @:allow(package_1) function method_415():Bool {
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
                    if (_loc1_.is_Type(Class_13.const_20)) {
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

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = new Class_6();
        param3 = 102;
        _loc4_.level = param3;
        _loc4_.var_48 = true;
        _loc4_.var_77 = true;
        if (param1 == Class_7.const_218) {
            _loc4_.num = Class_13.const_92;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_72;
            _loc4_.var_19 = "pje";
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 10;
            _loc4_.var_39 = false;
            _loc4_.var_48 = false;
            _loc4_.var_77 = false;
        }
        else if (param1 == Class_62.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            param3 = Std.int(80 + Math.random() * 4);
            method_11(_loc4_);
            _loc4_.level = param3;
            if (param2 <= Class_62.const_230) {
                _loc4_.num = Class_13.const_23;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ejj";
            }
            else if (param2 <= Class_62.const_335) {
                _loc4_.num = Class_13.const_30;
                _loc4_.move1 = Class_9.var_190;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "ki";
            }
            else if (param2 <= Class_62.const_417) {
                _loc4_.num = Class_13.const_64;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "be";
            }
            else if (param2 <= Class_62.const_399) {
                _loc4_.num = Class_13.const_113;
                _loc4_.move1 = Class_9.var_45;
                _loc4_.var_13 = 1;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "bk";
            }
            else if (param2 <= Class_62.const_334) {
                if (my_Parent.currentProfile.currentVersion == Class_878.const_4) {
                    _loc4_.num = Class_13.const_53;
                    _loc4_.move1 = Class_9.var_190;
                    _loc4_.var_13 = 1;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "kw";
                }
                else if (my_Parent.currentProfile.currentVersion == Class_878.const_3) {
                    _loc4_.num = Class_13.const_174;
                    _loc4_.move1 = Class_9.var_190;
                    _loc4_.var_13 = 1;
                    Class_13.method_2(_loc4_);
                    _loc4_.var_19 = "eki";
                }
            }
        }
        _loc4_.var_26 = Std.int(_loc4_.var_26 * 1.7);
        _loc4_.speed = Std.int(_loc4_.speed * 0.6);
        _loc4_.var_40 = 0;
        _loc4_.var_16 *= 10;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 = Std.int(_loc4_.var_30 / 4);
        _loc4_.var_28 = Std.int(_loc4_.var_28 / 4);
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

