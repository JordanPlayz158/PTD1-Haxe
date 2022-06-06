package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_639 extends Class_194 {


    @:allow(code) var var_673:Bool = false;

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Slippery";
        cantMiss = true;
        onSelf = true;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 0;
    }

    @:allow(code) override function is_Physical():Bool {
        return false;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        if (this.var_673) {
            return;
        }
        this.var_673 = true;
        var _loc2_:Class_853 = new Class_867(cast(var_2.my_Parent, Class_875), var_2);
        _loc2_.x = var_2.x;
        _loc2_.y = var_2.y;
        var_2.send_Msg(["add_path_effect", _loc2_]);
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        var _loc1_:GfxMovieClip = new Hit_Ice_Beam();
        return new Class_732(var_2, _loc1_, _loc1_.totalFrames);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_18;
    }

    @:allow(code) override function get_coolDown():Int {
        return 18;
    }
}

