package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_837 extends Class_732 {


    var var_668:Vector<Int>;

    var var_427:Poke;

    public function new(param1:Poke, param2:Poke, param3:Int) {
        this.var_427 = param1;
        super(param2, new Do_Reflect_Type_Repeat(), param3);
    }

    @:allow(code) override function init() {
        super.init();
        this.var_668 = var_1.myProfile.types;
        var _loc1_ = new Vector<Int>();
        var _loc2_ = 0;
        while (_loc2_ < this.var_427.myProfile.types.length) {
            _loc1_.push(this.var_427.myProfile.types[_loc2_]);
            _loc2_++;
        }
        var_1.myProfile.types = _loc1_;
    }

    @:allow(code) override function remove_Me() {
        var_1.myProfile.types = this.var_668;
        super.remove_Me();
    }
}

