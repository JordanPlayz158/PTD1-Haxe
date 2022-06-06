package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_616 extends Class_194 {


    static inline final name_2 = Std.int(36.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Clear Smog";
        cantMiss = true;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 50;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc2_ = new Vector<Class_16>();
        var _loc3_ = method_3(param1);
        method_13(param1, _loc3_, this.get_Target_Hit_Animation(param1));
        Attack.increase_Accuracy(param1, 1, var_2);
        _loc2_.push(param1.check_Effects(Class_798));
        Attack.increase_Attack(param1, 1);
        _loc2_.push(param1.check_Effects(Class_805));
        Attack.increase_Defense(param1, 1);
        _loc2_.push(param1.check_Effects(Class_808));
        Attack.increase_Evasion(param1, 1);
        _loc2_.push(param1.check_Effects(Class_795));
        Attack.increase_Special_Attack(param1, 1);
        _loc2_.push(param1.check_Effects(Class_801));
        Attack.increase_Special_Defense(param1, 1);
        _loc2_.push(param1.check_Effects(Class_803));
        Attack.increase_Speed(param1, 1);
        _loc2_.push(param1.check_Effects(Class_806));
        this.method_204(_loc2_);
    }

    @:allow(code) function method_204(param1:Vector<Class_16>) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ = param1[_loc3_];
            if (_loc2_) {
                _loc2_.remove_Me();
            }
            _loc3_++;
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Do_Clear_Smog());
    }

    @:allow(code) override function get_coolDown():Int {
        return 24;
    }

    @:allow(code) override function single_Target():Bool {
        return false;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_2;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }
}

