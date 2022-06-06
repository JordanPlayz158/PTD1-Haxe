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

class Class_55 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_205 = 1;

    static inline final const_280 = 2;

    static inline final const_285 = 3;

    static inline final const_206 = 4;

    static inline final const_276 = 5;

    static inline final const_374 = 99;

    static inline final const_372 = 100;

    static inline final const_340 = 6;

    var var_554:String;

    public function new(param1:Class_875) {
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 30;
    }

    override public function do_Wave() {
        var _loc1_ = 0;
        var _loc2_ = 0;
        var _loc3_ = 0;
        if (var_5 == 0) {
            _loc1_ = Std.int(Math.random() * 5);
            if (_loc1_ == 0) {
                _loc2_ = Class_55.const_206;
            }
            else if (_loc1_ == 1) {
                _loc2_ = Class_55.const_205;
            }
            else if (_loc1_ == 2) {
                _loc2_ = Class_55.const_280;
            }
            else if (_loc1_ == 3) {
                _loc2_ = Class_55.const_276;
            }
            else if (_loc1_ == 4) {
                _loc2_ = Class_55.const_285;
            }
            _loc3_ = Std.int(Math.random() * 3);
            this.var_554 = "p";
            if (_loc3_ == 0) {
                this.var_554 = "1";
            }
            else if (_loc3_ == 1) {
                this.var_554 = "2";
            }
            my_Parent.add_Enemy_Poke(method_1(_loc2_), 1, this.var_554);
        }
        else if (var_5 <= 4) {
            my_Parent.add_Enemy_Poke(method_1(Class_55.const_52), 1, this.var_554);
        }
        if (var_5 != 4) {
            var_11 = 21;
            ++var_5;
            return;
        }
        if (var_6 == 30) {
            var_6 = 31;
            wave_Finished();
            return;
        }
        method_4(++var_6);
        var_11 = 90;
        var_5 = 0;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:Class_6;
        (_loc4_ = new Class_6()).var_19 = "pje";
        _loc4_.level = 53;
        if (param1 == Class_55.const_52) {
            if (param2 == 0) {
                param2 = Std.int(Math.random() * 100 + 1);
            }
            method_11(_loc4_);
            if (param2 <= Class_55.const_374) {
                _loc4_.level = 40;
                _loc4_.num = Class_13.const_85;
                _loc4_.move1 = Class_9.var_207;
                _loc4_.move2 = Class_9.var_323;
                _loc4_.var_13 = 2;
                Class_13.method_2(_loc4_);
                _loc4_.var_19 = "pk";
                if (_loc4_.name != "Gastly") {
                    my_Parent.end_hack();
                    return null;
                }
            }
            else if (param2 <= Class_55.const_372) {
                _loc4_.level = 40;
                _loc4_.num = Class_13.const_94;
                _loc4_.move1 = Class_9.var_57;
                _loc4_.move2 = Class_9.var_89;
                _loc4_.move3 = Class_9.var_377;
                _loc4_.move4 = Class_9.var_239;
                _loc4_.var_13 = 4;
                Class_13.method_2(_loc4_);
                _loc4_.var_16 *= 2;
                _loc4_.var_19 = "ejm";
                if (_loc4_.name != "Cubone") {
                    my_Parent.end_hack();
                    return null;
                }
            }
        }
        else if (param1 == Class_55.const_206) {
            _loc4_.num = Class_13.const_85;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_207;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
        }
        else if (param1 == Class_55.const_276) {
            _loc4_.num = Class_13.const_94;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_57;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
        }
        else if (param1 == Class_55.const_205) {
            _loc4_.num = Class_13.const_129;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_197;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
        }
        else if (param1 == Class_55.const_280) {
            _loc4_.num = Class_13.const_133;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_353;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
        }
        else if (param1 == Class_55.const_285) {
            _loc4_.num = Class_13.const_100;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_184;
            _loc4_.var_13 = 1;
            _loc4_.var_39 = false;
        }
        _loc4_.var_107 = true;
        _loc4_.var_27 *= 2;
        _loc4_.speed = Std.int(_loc4_.speed / 1.5);
        _loc4_.var_26 *= 2;
        _loc4_.var_77 = true;
        _loc4_.var_48 = false;
        _loc4_.var_40 = 0;
        _loc4_.var_16 = Std.int(_loc4_.var_16 * 2.5);
        _loc4_.var_23 = Std.int(_loc4_.var_23 * 2.5);
        _loc4_.var_24 = Std.int(_loc4_.var_24 * 2.5);
        _loc4_.var_30 = Std.int(_loc4_.var_30 / 4);
        _loc4_.var_28 = Std.int(_loc4_.var_28 / 4);
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

