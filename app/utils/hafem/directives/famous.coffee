`import Hafem_Component from './ember/views/component'`

`import Hafem_Famous_Core_Engine from './famous/core/Engine'`
`import Hafem_Famous_Core_Surface from './famous/core/Surface'`
`import Hafem_Famous_Core_Transform from './famous/core/Transform'`
`import Hafem_Famous_Core_Modifier from './famous/core/Modifier'`
`import Hafem_Famous_Core_View from './famous/core/View'`

`import Hafem_Famous_Views_GridLayout from './famous/views/GridLayout'`
`import Hafem_Famous_Views_SequentialLayout from './famous/views/SequentialLayout'`
`import Hafem_Famous_Views_FlexibleLayout from './famous/views/FlexibleLayout'`

`import Hafem_Famous_Transitions_Easing from './famous/transitions/Easing'`

Hafem = {
  Component: Hafem_Component
  Famous:
    Core:
      Engine: Hafem_Famous_Core_Engine
      Surface: Hafem_Famous_Core_Surface
      Transform: Hafem_Famous_Core_Transform
      Modifier: Hafem_Famous_Core_Modifier
      View: Hafem_Famous_Core_View
    Views:
      GridLayout: Hafem_Famous_Views_GridLayout
      SequentialLayout: Hafem_Famous_Views_SequentialLayout
      FlexibleLayout: Hafem_Famous_Views_FlexibleLayout
    Transitions:
      Easing: Hafem_Famous_Transitions_Easing
}

`export default Hafem`