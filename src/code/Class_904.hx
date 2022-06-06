package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_904 extends _Obj {


    @:allow(code) var var_165:Class_903;

    @:allow(code) var gfx:GfxMovieClip;

    public function new(param1:Class_903) {
        super(param1);
        this.var_165 = param1;
        this.init();
    }

    @:allow(code) function init() {
        this.gfx = this.get_Graphic();
        if (this.gfx != null) {
            addChild(this.gfx);
        }
    }

    @:allow(code) function get_Graphic():GfxMovieClip {
        return null;
    }

    @:allow(code) function remove_Me() {
        if (this.var_165 != null) {
            this.var_165.method_24();
        }
    }
}

