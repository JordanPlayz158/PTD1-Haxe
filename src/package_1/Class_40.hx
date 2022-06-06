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
import code.Class_923;

class Class_40 extends Class_7 {


    static inline final const_52 = 0;

    static inline final const_247 = 1;

    static inline final const_304 = 2;

    static inline final const_242 = 3;

    static inline final const_264 = 4;

    static inline final const_253 = 5;

    static inline final const_243 = 6;

    static inline final const_250 = 7;

    static inline final const_267 = 8;

    static inline final const_311 = 9;

    static inline final const_312 = 10;

    static inline final const_310 = 11;

    static inline final const_287 = 12;

    static inline final const_295 = 13;

    static inline final const_300 = 14;

    static inline final const_340 = 6;

    @:allow(package_1) var var_436:String = "p";

    @:allow(package_1) var var_698:Bool = false;

    @:allow(package_1) var var_694:Bool = false;

    @:allow(package_1) var var_705:Bool = false;

    @:allow(package_1) var var_670:Bool = false;

    @:allow(package_1) var var_692:Bool = false;

    @:allow(package_1) var var_687:Bool = false;

    var var_34:Class_923;

    var var_701:Int = 0;

    public function new(param1:Class_923) {
        this.var_34 = param1;
        super(param1);
    }

    override public function get_Total_Waves():Int {
        return 8;
    }

    override public function defeated_Poke(param1:Class_6) {
        var _loc2_ = 0;
        if (param1.num == Class_13.const_66) {
            this.var_698 = true;
            _loc2_ = 1;
        }
        else if (param1.num == Class_13.const_80) {
            this.var_670 = true;
            _loc2_ = 1;
        }
        else if (param1.num == Class_13.const_152) {
            this.var_692 = true;
            _loc2_ = 1;
        }
        else if (param1.num == Class_13.const_143) {
            this.var_705 = true;
            _loc2_ = 1;
        }
        else if (param1.num == Class_13.const_37) {
            this.var_687 = true;
            _loc2_ = 1;
        }
        else if (param1.num == Class_13.const_49) {
            this.var_694 = true;
            _loc2_ = 1;
        }
        if (var_6 < 8) {
            this.var_701 + _loc2_;
            if (this.var_701 > 3) {
                this.var_34.var_153 = false;
            }
        }
    }

    override public function do_Wave() {
        if (var_6 == 1) {
            my_Parent.add_Enemy_Poke(method_1(Class_40.const_304));
        }
        else if (var_6 == 2) {
            my_Parent.add_Enemy_Poke(method_1(Class_40.const_300));
        }
        else if (var_6 == 3) {
            my_Parent.add_Enemy_Poke(method_1(Class_40.const_310));
        }
        else if (var_6 == 4) {
            my_Parent.add_Enemy_Poke(method_1(Class_40.const_295));
        }
        else if (var_6 == 5) {
            my_Parent.add_Enemy_Poke(method_1(Class_40.const_311));
        }
        else if (var_6 == 6) {
            my_Parent.add_Enemy_Poke(method_1(Class_40.const_287));
        }
        else if (var_6 == 7) {
            my_Parent.add_Enemy_Poke(method_1(Class_40.const_312));
        }
        else if (var_6 == 8) {
            if (!this.var_698) {
                my_Parent.add_Enemy_Poke(method_1(Class_40.const_242));
            }
            if (!this.var_687) {
                my_Parent.add_Enemy_Poke(method_1(Class_40.const_267));
            }
            if (!this.var_705) {
                my_Parent.add_Enemy_Poke(method_1(Class_40.const_253));
            }
            if (!this.var_692) {
                my_Parent.add_Enemy_Poke(method_1(Class_40.const_250));
            }
            if (!this.var_670) {
                my_Parent.add_Enemy_Poke(method_1(Class_40.const_243));
            }
            if (!this.var_694) {
                my_Parent.add_Enemy_Poke(method_1(Class_40.const_264));
            }
            my_Parent.add_Enemy_Poke(method_1(Class_40.const_247));
            var_6 = 9;
            wave_Finished();
            return;
        }
        method_4(++var_6);
        var_11 = 300;
    }

    override public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_:ASAny = null;
        _loc4_ = new Class_6();
        param3 = 101;
        _loc4_.level = param3;
        _loc4_.var_19 = "pje";
        _loc4_.var_48 = true;
        if (param1 == Class_40.const_247 || param1 == Class_40.const_304) {
            _loc4_.num = Class_13.const_203;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_88;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 10;
            if (param1 == Class_40.const_247) {
                _loc4_.move1 = Class_9.var_541;
                _loc4_.var_48 = false;
            }
        }
        else if (param1 == Class_40.const_242 || param1 == Class_40.const_311) {
            _loc4_.num = Class_13.const_66;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_299;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 5;
            if (param1 == Class_40.const_242) {
                _loc4_.move1 = Class_9.var_54;
                _loc4_.var_48 = false;
            }
        }
        else if (param1 == Class_40.const_267 || param1 == Class_40.const_300) {
            _loc4_.num = Class_13.const_37;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_189;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 5;
            if (param1 == Class_40.const_267) {
                _loc4_.move1 = Class_9.var_230;
                _loc4_.var_48 = false;
            }
        }
        else if (param1 == Class_40.const_250 || param1 == Class_40.const_295) {
            _loc4_.num = Class_13.const_152;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_207;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 5;
            if (param1 == Class_40.const_250) {
                _loc4_.move1 = Class_9.var_430;
                _loc4_.var_48 = false;
            }
        }
        else if (param1 == Class_40.const_264 || param1 == Class_40.const_312) {
            _loc4_.num = Class_13.const_49;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_244;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 5;
            if (param1 == Class_40.const_264) {
                _loc4_.move1 = Class_9.var_216;
                _loc4_.var_48 = false;
            }
        }
        else if (param1 == Class_40.const_253 || param1 == Class_40.const_310) {
            _loc4_.num = Class_13.const_143;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_136;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 5;
            if (param1 == Class_40.const_253) {
                _loc4_.move1 = Class_9.var_266;
                _loc4_.var_48 = false;
            }
        }
        else if (param1 == Class_40.const_243 || param1 == Class_40.const_287) {
            _loc4_.num = Class_13.const_80;
            Class_13.method_2(_loc4_);
            _loc4_.move1 = Class_9.var_67;
            _loc4_.var_13 = 1;
            _loc4_.var_16 *= 5;
            if (param1 == Class_40.const_243) {
                _loc4_.move1 = Class_9.var_228;
                _loc4_.var_48 = false;
            }
        }
        _loc4_.var_26 *= 1.5;
        _loc4_.var_107 = true;
        _loc4_.var_39 = false;
        _loc4_.var_40 = 0;
        _loc4_.speed *= 0.5;
        _loc4_.var_16 *= 3;
        _loc4_.var_23 *= 2;
        _loc4_.var_24 *= 2;
        _loc4_.var_30 /= 4;
        _loc4_.var_28 /= 4;
        _loc4_.var_35 = 0;
        _loc4_.moveSelected = 1;
        return _loc4_;
    }
}

