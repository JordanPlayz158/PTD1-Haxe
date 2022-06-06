package fl.transitions;

import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import openfl.events.Event;
import openfl.events.EventDispatcher;
import openfl.geom.Rectangle;

class TransitionManager extends EventDispatcher {
    static var IDCount:Int = 0;

    public var type:ASObject;

    public var className:String = "TransitionManager";

    var _content:GfxMovieClip;

    var _Transitions:ASObject;

    public var _innerBounds:Rectangle;

    public var _outerBounds:Rectangle;

    public var _width:Float = Math.NaN;

    public var _height:Float = Math.NaN;

    var _contentAppearance:ASObject;

    var _visualPropList:ASObject;

    var _triggerEvent:String;

    public function new(param1:GfxMovieClip) {
        this.type = TransitionManager;
        this._visualPropList = {
            "x": null,
            "y": null,
            "scaleX": null,
            "scaleY": null,
            "alpha": null,
            "rotation": null
        };
        super();
        this.content = param1;
        this._Transitions = {};
    }

    public static function start(param1:GfxMovieClip, param2:ASObject):Transition {
        if (param1.__TransitionManager == null) {
            param1.__TransitionManager = new TransitionManager(param1);
        }
        if (param2.direction == 1) {
            param1.__TransitionManager._triggerEvent = "hide";
        } else {
            param1.__TransitionManager._triggerEvent = "reveal";
        }
        return param1.__TransitionManager.startTransition(param2);
    }

    public var content(get, set):GfxMovieClip;

    function get_content():GfxMovieClip {
        return this._content;
    }

    function set_content(param1:GfxMovieClip):GfxMovieClip {
        this._content = param1;
        this.saveContentAppearance();
        return param1;
    }

    public var TransitionsList(get, never):ASObject;

    function get_TransitionsList():ASObject {
        return this._Transitions;
    }

    public var numTransitions(get, never):Float;

    function get_numTransitions():Float {
        var _loc2_:ASAny = null;
        var _loc1_:Int = 0;
        for (_tmp_ in this._Transitions) {
            _loc2_ = _tmp_;
            _loc1_++;
        }
        return _loc1_;
    }

    public var numInTransitions(get, never):Float;

    function get_numInTransitions():Float {
        var _loc3_:ASAny = null;
        var _loc1_:Int = 0;
        var _loc2_:ASObject = this._Transitions;
        for (_tmp_ in _loc2_) {
            _loc3_ = _tmp_;
            if (!_loc3_.direction) {
                _loc1_++;
            }
        }
        return _loc1_;
    }

    public var numOutTransitions(get, never):Float;

    function get_numOutTransitions():Float {
        var _loc3_:ASAny = null;
        var _loc1_:Int = 0;
        var _loc2_:ASObject = this._Transitions;
        for (_tmp_ in _loc2_) {
            _loc3_ = _tmp_;
            if (_loc3_.direction) {
                _loc1_++;
            }
        }
        return _loc1_;
    }

    public var contentAppearance(get, never):ASObject;

    function get_contentAppearance():ASObject {
        return this._contentAppearance;
    }

    public function startTransition(param1:ASObject):Transition {
        this.removeTransition(this.findTransition(param1));
        var _loc2_:Class<Dynamic> = param1.type;
        var _loc3_:Transition = Type.createInstance(_loc2_, [this._content, param1, this]);
        this.addTransition(_loc3_);
        _loc3_.start();
        return _loc3_;
    }

    public function addTransition(param1:Transition):Transition {
        // ++0
        param1.ID = 1;
        this._Transitions[Std.string(param1.ID)] = param1;
        return param1;
    }

    public function removeTransition(param1:Transition):Bool {
        if (param1 == null || !this._Transitions || !this._Transitions[Std.string(param1.ID)]) {
            return false;
        }
        param1.cleanUp();
        return Reflect.deleteField(this._Transitions, Std.string(param1.ID));
    }

    public function findTransition(param1:ASObject):Transition {
        var _loc2_:ASAny = null;
        for (_tmp_ in this._Transitions) {
            _loc2_ = _tmp_;
            if (_loc2_.type == param1.type) {
                return _loc2_;
            }
        }
        return null;
    }

    public function removeAllTransitions() {
        var _loc1_:ASAny = null;
        for (_tmp_ in this._Transitions) {
            _loc1_ = _tmp_;
            _loc1_.cleanUp();
            this.removeTransition(_loc1_);
        }
    }

    public function saveContentAppearance() {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc1_ = this._content;
        if (!this._contentAppearance) {
            _loc2_ = this._contentAppearance = {};
            for (_tmp_ in this._visualPropList.___keys()) {
                _loc3_ = _tmp_;
                _loc2_[_loc3_] = (_loc1_ : ASAny)[_loc3_];
            }
            _loc2_.ColorTransform = _loc1_.transform.colorTransform;
        }
        this._innerBounds = _loc1_.getBounds(_loc1_);
        this._outerBounds = _loc1_.getBounds(_loc1_.parent);
        this._width = _loc1_.width;
        this._height = _loc1_.height;
    }

    public function restoreContentAppearance() {
        var _loc3_:ASAny = null;
        var _loc1_ = this._content;
        var _loc2_:ASObject = this._contentAppearance;
        for (_tmp_ in this._visualPropList.___keys()) {
            _loc3_ = _tmp_;
            (_loc1_ : ASAny)[_loc3_] = _loc2_[_loc3_];
        }
        _loc1_.transform.colorTransform = _loc2_.ColorTransform;
    }

    @:allow(fl.transitions) function TransitionInDone(param1:ASObject) {
        var _loc2_ = false;
        this.removeTransition(param1.target);
        if (this.numInTransitions == 0) {
            _loc2_ = this._content.visible;
            if (this._triggerEvent == "hide" || this._triggerEvent == "hideChild") {
                this._content.visible = false;
            }
            if (_loc2_) {
                this.dispatchEvent(new Event("allTransitionsInDone"));
            }
        }
    }

    @:allow(fl.transitions) function TransitionOutDone(param1:ASObject) {
        var _loc2_ = false;
        this.removeTransition(param1.target);
        if (this.numOutTransitions == 0) {
            this.restoreContentAppearance();
            _loc2_ = this._content.visible;
            if (_loc2_ && (this._triggerEvent == "hide" || this._triggerEvent == "hideChild")) {
                this._content.visible = false;
            }
            if (_loc2_) {
                this.dispatchEvent(new Event("allTransitionsOutDone"));
            }
        }
    }
}
