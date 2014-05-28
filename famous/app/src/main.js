Famous = window.Famous = {};

Famous.Core = {
  Context: require('famous/core/Context'),
  ElementAllocator: require('famous/core/ElementAllocator'),
  Engine: require('famous/core/Engine'),
  Entity: require('famous/core/Entity'),
  EventEmitter: require('famous/core/EventEmitter'),
  EventHandler: require('famous/core/EventHandler'),
  Group: require('famous/core/Group'),
  Modifier: require('famous/core/Modifier'),
  OptionsManager: require('famous/core/OptionsManager'),
  RenderNode: require('famous/core/RenderNode'),
  Scene: require('famous/core/Scene'),
  SpecParser: require('famous/core/SpecParser'),
  Surface: require('famous/core/Surface'),
  Transform: require('famous/core/Transform'),
  View: require('famous/core/View'),
  ViewSequence: require('famous/core/ViewSequence')
};

Famous.Events = {
  EventArbiter: require('famous/events/EventArbiter'),
  EventFilter: require('famous/events/EventFilter'),
  EventMapper: require('famous/events/EventMapper')
};

Famous.Inputs = {
  FastClick: require('famous/inputs/FastClick'),
  GenericSync: require('famous/inputs/GenericSync'),
  MouseSync: require('famous/inputs/MouseSync'),
  PinchSync: require('famous/inputs/PinchSync'),
  RotateSync: require('famous/inputs/RotateSync'),
  ScaleSync: require('famous/inputs/ScaleSync'),
  ScrollSync: require('famous/inputs/ScrollSync'),
  TouchSync: require('famous/inputs/TouchSync'),
  TouchTracker: require('famous/inputs/TouchTracker'),
  TwoFingerSync: require('famous/inputs/TwoFingerSync')
};

Famous.Math = {
  Matrix: require('famous/math/Matrix'),
  Quaternion: require('famous/math/Quaternion'),
  Random: require('famous/math/Random'),
  Utilities: require('famous/math/Utilities'),
  Vector: require('famous/math/Vector')
};

Famous.Modifiers = {
  Draggable: require('famous/modifiers/Draggable'),
  Fader: require('famous/modifiers/Fader'),
  ModifierChain: require('famous/modifiers/ModifierChain'),
  StateModifier: require('famous/modifiers/StateModifier')
};

Famous.Physics = {
  Bodies: {
    Body: require('famous/physics/bodies/Body'),
    Circle: require('famous/physics/bodies/Circle'),
    Particle: require('famous/physics/bodies/Particle'),
    Rectangle: require('famous/physics/bodies/Rectangle')
  },
  Constraints: {
    Collision: require('famous/physics/constraints/Collision'),
    Constraint: require('famous/physics/constraints/Constraint'),
    Curve: require('famous/physics/constraints/Curve'),
    Distance: require('famous/physics/constraints/Distance'),
    Snap: require('famous/physics/constraints/Snap'),
    Surface: require('famous/physics/constraints/Surface'),
    Wall: require('famous/physics/constraints/Wall'),
    Walls: require('famous/physics/constraints/Walls')
  },
  Forces: {
    Drag: require('famous/physics/forces/Drag'),
    Force: require('famous/physics/forces/Force'),
    Repulsion: require('famous/physics/forces/Repulsion'),
    RotationalDrag: require('famous/physics/forces/RotationalDrag'),
    RotationalSpring: require('famous/physics/forces/RotationalSpring'),
    Spring: require('famous/physics/forces/Spring'),
    VectorField: require('famous/physics/forces/VectorField')
  },
  Integrators: {
    SymplecticEuler: require('famous/physics/integrators/SymplecticEuler')
  },
  PhysicsEngine: require('famous/physics/PhysicsEngine')
};

Famous.Surfaces = {
  CanvasSurface: require('famous/surfaces/CanvasSurface'),
  ContainerSurface: require('famous/surfaces/ContainerSurface'),
  ImageSurface: require('famous/surfaces/ImageSurface'),
  InputSurface: require('famous/surfaces/InputSurface'),
  VideoSurface: require('famous/surfaces/VideoSurface')
};

Famous.Transitions = {
  CachedMap: require('famous/transitions/CachedMap'),
  Easing: require('famous/transitions/Easing'),
  MultipleTransition: require('famous/transitions/MultipleTransition'),
  SnapTransition: require('famous/transitions/SnapTransition'),
  SpringTransition: require('famous/transitions/SpringTransition'),
  Transitionable: require('famous/transitions/Transitionable'),
  TransitionableTransform: require('famous/transitions/TransitionableTransform'),
  TweenTransition: require('famous/transitions/TweenTransition'),
  WallTransition: require('famous/transitions/WallTransition')
};

Famous.Utilities = {
  KeyCodes: require('famous/utilities/KeyCodes'),
  Timer: require('famous/utilities/Timer'),
  Utility: require('famous/utilities/Utility')
};

Famous.Views = {
  Deck: require('famous/views/Deck'),
  EdgeSwapper: require('famous/views/EdgeSwapper'),
  Flipper: require('famous/views/Flipper'),
  GridLayout: require('famous/views/GridLayout'),
  HeaderFooterLayout: require('famous/views/HeaderFooterLayout'),
  Lightbox: require('famous/views/Lightbox'),
  RenderController: require('famous/views/RenderController'),
  ScrollContainer: require('famous/views/ScrollContainer'),
  Scroller: require('famous/views/Scroller'),
  Scrollview: require('famous/views/Scrollview'),
  SequentialLayout: require('famous/views/SequentialLayout'),
  FlexibleLayout: require('famous/views/FlexibleLayout')
};

Famous.Widgets = {
  NavigationBar: require('famous/widgets/NavigationBar'),
  Slider: require('famous/widgets/Slider'),
  TabBar: require('famous/widgets/TabBar'),
  ToggleButton: require('famous/widgets/ToggleButton')
};

var queuedFuncs = [];
/*globals Famous*/
Famous.loaded = function (func) {
    queuedFuncs.push(func);
};

/*globals define*/
define(function (require) {
    'use strict';

    Famous.Core = {
        Context: require('famous/core/Context'),
        ElementAllocator: require('famous/core/ElementAllocator'),
        Engine: require('famous/core/Engine'),
        Entity: require('famous/core/Entity'),
        EventEmitter: require('famous/core/EventEmitter'),
        EventHandler: require('famous/core/EventHandler'),
        Group: require('famous/core/Group'),
        Modifier: require('famous/core/Modifier'),
        OptionsManager: require('famous/core/OptionsManager'),
        RenderNode: require('famous/core/RenderNode'),
        Scene: require('famous/core/Scene'),
        SpecParser: require('famous/core/SpecParser'),
        Surface: require('famous/core/Surface'),
        Transform: require('famous/core/Transform'),
        View: require('famous/core/View'),
        ViewSequence: require('famous/core/ViewSequence')
    };

    Famous.Events = {
        EventArbiter: require('famous/events/EventArbiter'),
        EventFilter: require('famous/events/EventFilter'),
        EventMapper: require('famous/events/EventMapper')
    };

    Famous.Inputs = {
        FastClick: require('famous/inputs/FastClick'),
        GenericSync: require('famous/inputs/GenericSync'),
        MouseSync: require('famous/inputs/MouseSync'),
        PinchSync: require('famous/inputs/PinchSync'),
        RotateSync: require('famous/inputs/RotateSync'),
        ScaleSync: require('famous/inputs/ScaleSync'),
        ScrollSync: require('famous/inputs/ScrollSync'),
        TouchSync: require('famous/inputs/TouchSync'),
        TouchTracker: require('famous/inputs/TouchTracker'),
        TwoFingerSync: require('famous/inputs/TwoFingerSync')
    };

    Famous.Math = {
        Matrix: require('famous/math/Matrix'),
        Quaternion: require('famous/math/Quaternion'),
        Random: require('famous/math/Random'),
        Utilities: require('famous/math/Utilities'),
        Vector: require('famous/math/Vector')
    };
    Famous.Modifiers = {
        Draggable: require('famous/modifiers/Draggable'),
        Fader: require('famous/modifiers/Fader'),
        ModifierChain: require('famous/modifiers/ModifierChain'),
        StateModifier: require('famous/modifiers/StateModifier')
    };
    Famous.Physics = {
        Bodies: {
            Body: require('famous/physics/bodies/Body'),
            Circle: require('famous/physics/bodies/Circle'),
            Particle: require('famous/physics/bodies/Particle'),
            Rectangle: require('famous/physics/bodies/Rectangle')
        },
        Constraints: {
            Collision: require('famous/physics/constraints/Collision'),
            Constraint: require('famous/physics/constraints/Constraint'),
            Curve: require('famous/physics/constraints/Curve'),
            Distance: require('famous/physics/constraints/Distance'),
            Snap: require('famous/physics/constraints/Snap'),
            Surface: require('famous/physics/constraints/Surface'),
            Wall: require('famous/physics/constraints/Wall'),
            Walls: require('famous/physics/constraints/Walls')
        },
        Forces: {
            Drag: require('famous/physics/forces/Drag'),
            Force: require('famous/physics/forces/Force'),
            Repulsion: require('famous/physics/forces/Repulsion'),
            RotationalDrag: require('famous/physics/forces/RotationalDrag'),
            RotationalSpring: require('famous/physics/forces/RotationalSpring'),
            Spring: require('famous/physics/forces/Spring'),
            VectorField: require('famous/physics/forces/VectorField')
        },
        Integrators: {
            SymplecticEuler: require('famous/physics/integrators/SymplecticEuler')
        },
        PhysicsEngine: require('famous/physics/PhysicsEngine')
    };

    Famous.Surfaces = {
        CanvasSurface: require('famous/surfaces/CanvasSurface'),
        ContainerSurface: require('famous/surfaces/ContainerSurface'),
        ImageSurface: require('famous/surfaces/ImageSurface'),
        InputSurface: require('famous/surfaces/InputSurface'),
        VideoSurface: require('famous/surfaces/VideoSurface')
    };

    Famous.Transitions = {
        CachedMap: require('famous/transitions/CachedMap'),
        Easing: require('famous/transitions/Easing'),
        MultipleTransition: require('famous/transitions/MultipleTransition'),
        SnapTransition: require('famous/transitions/SnapTransition'),
        SpringTransition: require('famous/transitions/SpringTransition'),
        Transitionable: require('famous/transitions/Transitionable'),
        TransitionableTransform: require('famous/transitions/TransitionableTransform'),
        TweenTransition: require('famous/transitions/TweenTransition'),
        WallTransition: require('famous/transitions/WallTransition')
    };

    Famous.Utilities = {
        KeyCodes: require('famous/utilities/KeyCodes'),
        Timer: require('famous/utilities/Timer'),
        Utility: require('famous/utilities/Utility')
    };

    Famous.Views = {
        Deck: require('famous/views/Deck'),
        EdgeSwapper: require('famous/views/EdgeSwapper'),
        Flipper: require('famous/views/Flipper'),
        GridLayout: require('famous/views/GridLayout'),
        HeaderFooterLayout: require('famous/views/HeaderFooterLayout'),
        Lightbox: require('famous/views/Lightbox'),
        RenderController: require('famous/views/RenderController'),
        ScrollContainer: require('famous/views/ScrollContainer'),
        Scroller: require('famous/views/Scroller'),
        Scrollview: require('famous/views/Scrollview'),
        SequentialLayout: require('famous/views/SequentialLayout'),
        FlexibleLayout: require('famous/views/FlexibleLayout')
    };

    Famous.Widgets = {
        NavigationBar: require('famous/widgets/NavigationBar'),
        Slider: require('famous/widgets/Slider'),
        TabBar: require('famous/widgets/TabBar'),
        ToggleButton: require('famous/widgets/ToggleButton')
    };

    queuedFuncs.forEach(function (func) {
        func();
    });

    Famous.loaded = function (func) {
        func();
    };
});
