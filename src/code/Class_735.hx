package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_735 extends Class_197 {


    @:allow(code) var PokeTower:Class_1104;

    public function new(param1:Poke) {
        super(param1, new Do_Selfdestruct());
    }

    @:allow(code) override function init() {
        if (gfx != null) {
            var_1.addChild(gfx);
        }
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.method_278();
    }

    function method_278() {
        cast(var_1.my_Parent, Class_875).return_Poke(var_1);
        this.remove_From_Party(var_1.myProfile);
        var_1.myProfile.exploded = false;
        cast(var_1.my_Parent, Class_875).reset_Poke();
    }

    function remove_From_Party(param1:Class_6) {
        var _loc2_:ASAny = null;
        var _loc3_ = cast(var_1.my_Parent, Class_875).currentProfile;
        var _loc4_ = 0;
        while (_loc4_ < _loc3_.partyList.length) {
            _loc2_ = _loc3_.partyList[_loc4_];
            if (param1 == _loc2_) {
                _loc3_.partyList[_loc4_] = null;
                return;
            }
            _loc4_++;
        }
        trace("effects_selfdestruct, this should not happen!");
    }
}

