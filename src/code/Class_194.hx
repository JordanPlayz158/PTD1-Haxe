package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

class Class_194 extends Attack {


    @:allow(code) var var_12:Float = Math.NaN;

    @:allow(code) var var_681:Float = 1;

    public function new(param1:Poke, param2:Bool = true) {
        super(param1, param2);
        var_7 = "Tackle";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = this.method_3(param1);
        this.method_13(param1, _loc2_, this.get_Target_Hit_Animation(param1));
    }

    @:allow(code) function method_13(param1:Poke, param2:Int, param3:Class_16, param4:Bool = true) {
        param1.take_Damage(param2, param3, this.var_12, param4);
    }

    @:allow(code) function method_3(param1:Poke, param2:Int = 0, param3:Bool = false, param4:Bool = false):Int {
        var _loc5_ = 0;
        var _loc8_ = 0;
        var _loc9_ = 0;
        var _loc10_:ASAny = Math.NaN;
        var _loc11_ = Math.NaN;
        var _loc18_:ASAny = null;
        var _loc19_:ASAny = null;
        var _loc6_ = get_Move_Type();
        if (param2 == 0) {
            param2 = this.get_Move_Power();
        }
        param2 = Std.int(param2 * this.var_681);
        var _loc7_ = this.method_370(_loc6_);
        var _loc12_ = param1.myProfile;
        var _loc13_ = var_2.myProfile;
        this.var_12 = this.method_215(_loc6_, _loc12_, param1);
        var _loc14_ = this.var_12;
        var _loc15_ = param1.check_Effects(Class_832);
        if (this.is_Physical()) {
            _loc8_ = _loc13_.var_30;
            _loc9_ = _loc12_.var_23;
            _loc10_ = _loc12_.mod_Defense;
            if (_loc15_ != null) {
                _loc9_ = _loc12_.var_24;
                _loc10_ = _loc12_.mod_Special_Defense;
            }
            _loc11_ = _loc13_.mod_Attack;
        }
        else {
            _loc8_ = _loc13_.var_28;
            _loc9_ = _loc12_.var_24;
            _loc10_ = _loc12_.mod_Special_Defense;
            if (_loc15_ != null || param4) {
                _loc9_ = _loc12_.var_23;
                _loc10_ = _loc12_.mod_Defense;
            }
            _loc11_ = _loc13_.mod_Special_Attack;
        }
        if (param3 && _loc10_ > 1) {
            _loc10_ = 1;
        }
        _loc8_ = Std.int((_loc8_ = (_loc8_ = Std.int(_loc8_ * 2 * _loc13_.level / 100)) + 5) * this.method_124(_loc11_));
        _loc9_ = Std.int((_loc9_ = (_loc9_ = Std.int(_loc9_ * 2 * _loc12_.level / 100)) + 5) * this.method_124(_loc10_));
        var _loc16_ = _loc13_.level;
        _loc5_ = Std.int((_loc5_ = Std.int((_loc5_ = (_loc5_ = Std.int((_loc5_ = Std.int((_loc5_ = (_loc5_ = Std.int(2 * _loc16_ / 5)) + 2) * _loc8_ * param2 / _loc9_)) / 50)) + 2) * _loc7_)) * _loc14_);
        var _loc17_:Int;
        if ((_loc17_ = Std.int(Math.random() * 100 + 1)) <= _loc13_.crit_Chance) {
            _loc18_ = new Hit_Crit();
            var_2.add_Effect(new Class_732(var_2, _loc18_, _loc18_.totalFrames));
            _loc5_ *= 2;
        }
        if (this.is_Physical() && param1.check_Effects(Class_821) != null) {
            _loc5_ = Std.int(_loc5_ / 2);
        }
        if (!this.is_Physical() && param1.check_Effects(Class_812) != null) {
            _loc5_ = Std.int(_loc5_ / 2);
        }
        if (!this.is_Physical() && param1.check_Effects(Class_830) != null) {
            var_2.take_Damage(_loc5_ * 2, new Class_197(var_2, new Gfx_Hit()), 1);
        }
        if (this.is_Physical() && param1.check_Effects(Class_825) != null) {
            var_2.take_Damage(_loc5_ * 2, new Class_197(var_2, new Gfx_Hit()), 1);
        }
        if (_loc6_ == Class_13.const_20) {
            if (_loc19_ = var_2.check_Effects(Class_204)) {
                _loc19_.remove_Me();
                _loc5_ *= 2;
            }
        }
        if (false) {
            _loc5_ = var_2.myAbility.on_Do_Damage(param1, _loc5_, this);
        }
        return _loc5_;
    }

    @:allow(code) function method_124(param1:Float):Float {
        if (param1 > 4) {
            return 4;
        }
        if (param1 < 0.25) {
            return 0.25;
        }
        return param1;
    }

    @:allow(code) function method_370(param1:Int):Float {
        var _loc3_ = 0;
        var _loc2_ = var_2.myProfile.types;
        var _loc4_ = 0;
        while (_loc4_ < _loc2_.length) {
            _loc3_ = _loc2_[_loc4_];
            if (_loc3_ == param1) {
                return 1.5;
            }
            _loc4_++;
        }
        return 1;
    }

    @:allow(code) function method_215(param1:Int, param2:Class_6, param3:Poke):Float {
        var _loc6_ = 0;
        var _loc7_:ASAny = Math.NaN;
        var _loc4_:ASAny = 1;
        var _loc5_ = param2.types;
        var _loc8_ = 0;
        while (_loc8_ < _loc5_.length) {
            _loc6_ = _loc5_[_loc8_];
            if (param1 == Class_13.const_10 && (param3.check_Effects(Class_834) != null || param3.check_Effects(Class_833) != null)) {
                _loc7_ = 0;
            }
            else if ((_loc7_ = method_73(param1, _loc6_)) == 0 && param3.check_Effects(Class_834) != null) {
                _loc7_ = 1;
            }
            _loc4_ *= _loc7_;
            _loc8_++;
        }
        _loc4_ = this.method_242(_loc4_, param3);
        _loc4_ = this.method_396(_loc4_, param3);
        return this.method_190(_loc4_, param3);
    }

    @:allow(code) function method_190(param1:Float, param2:Poke):Float {
        var _loc3_ = 0;
        var _loc4_ = false;
        if (param1 != 0) {
            return param1;
        }
        var _loc5_ = 0;
        while (_loc5_ < param2.myProfile.types.length) {
            _loc3_ = param2.myProfile.types[_loc5_];
            if (_loc3_ == Class_13.const_9) {
                _loc4_ = true;
                break;
            }
            _loc5_++;
        }
        if (!_loc4_) {
            return param1;
        }
        if (param2.check_Effects(Class_823) != null) {
            return 1;
        }
        return param1;
    }

    @:allow(code) function method_396(param1:Float, param2:Poke):Float {
        var _loc3_ = 0;
        var _loc4_ = false;
        if (param1 != 0) {
            return param1;
        }
        var _loc5_ = 0;
        while (_loc5_ < param2.myProfile.types.length) {
            _loc3_ = param2.myProfile.types[_loc5_];
            if (_loc3_ == Class_13.const_27) {
                _loc4_ = true;
                break;
            }
            _loc5_++;
        }
        if (!_loc4_) {
            return param1;
        }
        if (param2.check_Effects(Class_813) != null) {
            return 1;
        }
        return param1;
    }

    @:allow(code) function method_242(param1:Float, param2:Poke):Float {
        var _loc3_ = 0;
        var _loc4_ = false;
        if (param1 != 0) {
            return param1;
        }
        var _loc5_ = 0;
        while (_loc5_ < param2.myProfile.types.length) {
            _loc3_ = param2.myProfile.types[_loc5_];
            if (_loc3_ == Class_13.const_24) {
                _loc4_ = true;
                break;
            }
            _loc5_++;
        }
        if (!_loc4_) {
            return param1;
        }
        if (param2.check_Effects(Class_816) != null) {
            return 1;
        }
        return param1;
    }

    @:allow(code) function is_Physical():Bool {
        return true;
    }

    @:allow(code) function get_Move_Power():Int {
        return 50;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Gfx_Hit());
    }
}

