package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_858 extends Class_853 {


    public function new(param1:Class_875, param2:Poke) {
        super(param1, new Do_Aromatherapy(), 16, param2);
        gfx.gotoAndPlay("storm");
    }

    @:allow(code) override function isCollision(param1:GfxMovieClip):Bool {
        return false;
    }
}

