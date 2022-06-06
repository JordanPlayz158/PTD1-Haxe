package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_633 extends Class_194 {


    public function new(param1:Poke) {
        super(param1);
        var_7 = "Freeze All Towers";
    }

    @:allow(code) override function get_Move_Power():Int {
        return 0;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc5_:ASAny = null;
        var _loc4_ = cast(var_2.my_Parent, Class_875).towerList;
        var _loc6_ = 0;
        var _loc7_ = 0;
        while (_loc7_ < _loc4_.length) {
            _loc5_ = _loc4_[_loc7_];
            Attack.do_Freeze(_loc5_, 100, _loc6_, var_2, this, false);
            _loc7_++;
        }
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Gfx_Hit());
    }

    @:allow(code) override function get_coolDown():Int {
        return 200;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_18;
    }
}

