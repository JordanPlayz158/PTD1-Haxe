package fl.transitions
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class PixelDissolve extends Transition {


    var _xSections:Float = 10;

    var _ySections:Float = 10;

    var _numSections:UInt = 1;

    var _indices:Array<ASAny>;

    var _mask:GfxMovieClip;

    var _innerMask:GfxMovieClip;

    public function new(param1:GfxMovieClip, param2:ASObject, param3:TransitionManager) {
        var _loc5_ = 0;
        super(param1, param2, param3);
        if (param2.xSections) {
            this._xSections = param2.xSections;
        }
        if (param2.ySections) {
            this._ySections = param2.ySections;
        }
        this._numSections = Std.int(this._xSections * this._ySections);
        this._indices = new Array<ASAny>();
        var _loc4_ = Std.int(this._ySections);
        while (_loc4_-- != 0) {
            _loc5_ = Std.int(this._xSections);
            while (_loc5_-- != 0) {
                this._indices[Std.int(_loc4_ * this._xSections + _loc5_)] = {
                    "x":_loc5_,
                    "y":_loc4_
                };
            }
        }
        this._shuffleArray(this._indices);
        this._initMask();
    }

    override function get_type():Class<Dynamic> {
        return PixelDissolve;
    }

    override public function start() {
        this._content.mask = this._mask;
        super.start();
    }

    override public function cleanUp() {
        this._content.removeChild(this._mask);
        this._content.mask = null;
        super.cleanUp();
    }

    function _initMask() {
        this._mask = new GfxMovieClip();
        this._mask.visible = false;
        this._content.addChild(this._mask);
        this._innerMask = new GfxMovieClip();
        this._mask.addChild(this._innerMask);
        this._innerMask.graphics.beginFill(16711680);
        this.drawBox(this._innerMask, 0, 0, 100, 100);
        this._innerMask.graphics.endFill();
        var _loc1_ = this._innerBounds;
        this._mask.x = _loc1_.left;
        this._mask.y = _loc1_.top;
        this._mask.width = _loc1_.right - _loc1_.left;
        this._mask.height = _loc1_.bottom - _loc1_.top;
    }

    function _shuffleArray(param1:Array<ASAny>) {
        var _loc3_ = 0;
        var _loc4_:ASAny = null;
        var _loc2_ = param1.length - 1;
        while (_loc2_ > 0) {
            _loc3_ = Math.floor(Math.random() * (_loc2_ + 1));
            if (_loc3_ != _loc2_) {
                _loc4_ = param1[_loc2_];
                param1[_loc2_] = param1[_loc3_];
                param1[_loc3_] = _loc4_;
            }
            _loc2_--;
        }
    }

    override function _render(param1:Float) {
        if (param1 < 0) {
            param1 = 0;
        }
        if (param1 > 1) {
            param1 = 1;
        }
        var _loc2_ = 100 / this._xSections;
        var _loc3_ = 100 / this._ySections;
        var _loc4_ = this._indices;
        var _loc5_:GfxMovieClip;
        (_loc5_ = this._innerMask).graphics.clear();
        _loc5_.graphics.beginFill(16711680);
        var _loc6_ = Math.ffloor(param1 * this._numSections);
        while (ASCompat.floatAsBool(_loc6_--)) {
            this.drawBox(_loc5_, _loc4_[Std.int(_loc6_)].x * _loc2_, _loc4_[Std.int(_loc6_)].y * _loc3_, _loc2_, _loc3_);
        }
        _loc5_.graphics.endFill();
    }
}

