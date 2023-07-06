--[[
## Styles provided by [Yoga](https://yogalayout.com/docs/#style-props)

```ts
export enum Align {
  Auto = 0,
  FlexStart = 1,
  Center = 2,
  FlexEnd = 3,
  Stretch = 4,
  Baseline = 5,
  SpaceBetween = 6,
  SpaceAround = 7,
}

export enum Dimension {
  Width = 0,
  Height = 1,
}

export enum Direction {
  Inherit = 0,
  LTR = 1,
  RTL = 2,
}

export enum Display {
  Flex = 0,
  None = 1,
}

export enum Edge {
  Left = 0,
  Top = 1,
  Right = 2,
  Bottom = 3,
  Start = 4,
  End = 5,
  Horizontal = 6,
  Vertical = 7,
  All = 8,
}

export enum Errata {
  None = 0,
  StretchFlexBasis = 1,
  All = 2147483647,
  Classic = 2147483646,
}

export enum ExperimentalFeature {
  WebFlexBasis = 0,
  AbsolutePercentageAgainstPaddingEdge = 1,
  FixJNILocalRefOverflows = 2,
}

export enum FlexDirection {
  Column = 0,
  ColumnReverse = 1,
  Row = 2,
  RowReverse = 3,
}

export enum Gutter {
  Column = 0,
  Row = 1,
  All = 2,
}

export enum Justify {
  FlexStart = 0,
  Center = 1,
  FlexEnd = 2,
  SpaceBetween = 3,
  SpaceAround = 4,
  SpaceEvenly = 5,
}

export enum LogLevel {
  Error = 0,
  Warn = 1,
  Info = 2,
  Debug = 3,
  Verbose = 4,
  Fatal = 5,
}

export enum MeasureMode {
  Undefined = 0,
  Exactly = 1,
  AtMost = 2,
}

export enum NodeType {
  Default = 0,
  Text = 1,
}

export enum Overflow {
  Visible = 0,
  Hidden = 1,
  Scroll = 2,
}

export enum PositionType {
  Static = 0,
  Relative = 1,
  Absolute = 2,
}

export enum PrintOptions {
  Layout = 1,
  Style = 2,
  Children = 4,
}

export enum Unit {
  Undefined = 0,
  Point = 1,
  Percent = 2,
  Auto = 3,
}

export enum Wrap {
  NoWrap = 0,
  Wrap = 1,
  WrapReverse = 2,
}

  setAlignContent(alignContent: Align): void;
  setAlignItems(alignItems: Align): void;
  setAlignSelf(alignSelf: Align): void;
  setAspectRatio(aspectRatio: number): void;
  setBorder(edge: Edge, borderWidth: number): void;
  setDisplay(display: Display): void;
  setFlex(flex: number): void;
  setFlexBasis(flexBasis: number | 'auto' | `${number}%`): void;
  setFlexBasisPercent(flexBasis: number): void;
  setFlexBasisAuto(): void;
  setFlexDirection(flexDirection: FlexDirection): void;
  setFlexGrow(flexGrow: number): void;
  setFlexShrink(flexShrink: number): void;
  setFlexWrap(flexWrap: Wrap): void;
  setHeight(height: number | 'auto' | `${number}%`): void;
  setIsReferenceBaseline(isReferenceBaseline: boolean): void;
  setHeightAuto(): void;
  setHeightPercent(height: number): void;
  setJustifyContent(justifyContent: Justify): void;
  setGap(gutter: Gutter, gapLength: number): Value;
  setMargin(edge: Edge, margin: number | 'auto' | `${number}%`): void;
  setMarginAuto(edge: Edge): void;
  setMarginPercent(edge: Edge, margin: number): void;
  setMaxHeight(maxHeight: number | `${number}%`): void;
  setMaxHeightPercent(maxHeight: number): void;
  setMaxWidth(maxWidth: number | `${number}%`): void;
  setMaxWidthPercent(maxWidth: number): void;
  setDirtiedFunc(dirtiedFunc: DirtiedFunction | null): void;
  setMeasureFunc(measureFunc: MeasureFunction | null): void;
  setMinHeight(minHeight: number | `${number}%`): void;
  setMinHeightPercent(minHeight: number): void;
  setMinWidth(minWidth: number | `${number}%`): void;
  setMinWidthPercent(minWidth: number): void;
  setOverflow(overflow: Overflow): void;
  setPadding(edge: Edge, padding: number | `${number}%`): void;
  setPaddingPercent(edge: Edge, padding: number): void;
  setPosition(edge: Edge, position: number | `${number}%`): void;
  setPositionPercent(edge: Edge, position: number): void;
  setPositionType(positionType: PositionType): void;
  setWidth(width: number | 'auto' | `${number}%`): void;
  setWidthAuto(): void;
  setWidthPercent(width: number): void;
  unsetDirtiedFunc(): void;
  unsetMeasureFunc(): void;
  ```
]]

---@alias nu.Styles.Align "auto" | "flex-start" | "center" | "flex-end" | "stretch" | "baseline" | "space-between" | "space-around"
---@alias nu.Styles.Dimension "width" | "height"
---@alias nu.Styles.Direction "inherit" | "ltr" | "rtl"
---@alias nu.Styles.Display "flex" | "none"
---@alias nu.Styles.Edge "left" | "top" | "right" | "bottom" | "start" | "end" | "horizontal" | "vertical" | "all"
---@alias nu.Styles.Errata "none" | "stretch-flex-basis" | "all" | "classic"
---@alias nu.Styles.ExperimentalFeature "web-flex-basis" | "absolute-percentage-against-padding-edge" | "fix-jni-local-ref-overflows"
---@alias nu.Styles.FlexDirection "column" | "column-reverse" | "row" | "row-reverse"
---@alias nu.Styles.Gutter "column" | "row" | "all"
---@alias nu.Styles.Justify "flex-start" | "center" | "flex-end" | "space-between" | "space-around" | "space-evenly"
---@alias nu.Styles.LogLevel "error" | "warn" | "info" | "debug" | "verbose" | "fatal"
---@alias nu.Styles.MeasureMode "undefined" | "exactly" | "at-most"
---@alias nu.Styles.NodeType "default" | "text"
---@alias nu.Styles.Overflow "visible" | "hidden" | "scroll"
---@alias nu.Styles.PositionType "static" | "relative" | "absolute"
---@alias nu.Styles.PrintOptions "layout" | "style" | "children"
---@alias nu.Styles.Unit "undefined" | "point" | "percent" | "auto"
---@alias nu.Styles.Wrap "no-wrap" | "wrap" | "wrap-reverse"

---@class nu.Styles
---@field ["align-content"] nu.Styles.Align
---@field ["align-items"] nu.Styles.Align
---@field ["align-self"] nu.Styles.Align
---
---@field ["aspect-ratio"] number
---
---@field ["border-left"] number
---@field ["border-top"] number
---@field ["border-right"] number
---@field ["border-bottom"] number
---@field ["border-start"] number
---@field ["border-end"] number
---@field ["border-horizontal"] number
---@field ["border-vertical"] number
---@field ["border-all"] number
---
---@field ["display"] nu.Styles.Display
---
---@field ["flex"] number
---@field ["flex-basis"] "auto" | number
---@field ["flex-basis-percent"] number
---@field ["flex-basis-auto"] boolean
---@field ["flex-direction"] nu.Styles.FlexDirection
---@field ["flex-grow"] number
---@field ["flex-shrink"] number
---@field ["flex-wrap"] nu.Styles.Wrap
---
---@field ["height"] "auto" | number
---@field ["height-percent"] number
---@field ["is-reference-baseline"] boolean
---
---@field ["justify-content"] nu.Styles.Justify
---
---@field ["gap-column"] number
---@field ["gap-row"] number
---@field ["gap-all"] number
---
---@field ["margin-left"] "auto" | number
---@field ["margin-top"] "auto" | number
---@field ["margin-right"] "auto" | number
---@field ["margin-bottom"] "auto" | number
---@field ["margin-start"] "auto" | number
---@field ["margin-end"] "auto" | number
---@field ["margin-horizontal"] "auto" | number
---@field ["margin-vertical"] "auto" | number
---@field ["margin-all"] "auto" | number
---@field ["margin-left-percent"] number
---@field ["margin-top-percent"] number
---@field ["margin-right-percent"] number
---@field ["margin-bottom-percent"] number
---@field ["margin-start-percent"] number
---@field ["margin-end-percent"] number
---@field ["margin-horizontal-percent"] number
---@field ["margin-vertical-percent"] number
---@field ["margin-all-percent"] number
---
---@field ["max-height"] "auto" | number
---@field ["max-height-percent"] number
---@field ["max-width"] "auto" | number
---@field ["max-width-percent"] number
---@field ["min-height"] "auto" | number
---@field ["min-height-percent"] number
---@field ["min-width"] "auto" | number
---@field ["min-width-percent"] number
---
---@field ["overflow"] nu.Styles.Overflow
---
---@field ["padding-left"] number
---@field ["padding-top"] number
---@field ["padding-right"] number
---@field ["padding-bottom"] number
---@field ["padding-start"] number
---@field ["padding-end"] number
---@field ["padding-horizontal"] number
---@field ["padding-vertical"] number
---@field ["padding-all"] number
---@field ["padding-left-percent"] number
---@field ["padding-top-percent"] number
---@field ["padding-right-percent"] number
---@field ["padding-bottom-percent"] number
---@field ["padding-start-percent"] number
---@field ["padding-end-percent"] number
---@field ["padding-horizontal-percent"] number
---@field ["padding-vertical-percent"] number
---@field ["padding-all-percent"] number
---
---@field ["position-left"] number
---@field ["position-top"] number
---@field ["position-right"] number
---@field ["position-bottom"] number
---@field ["position-start"] number
---@field ["position-end"] number
---@field ["position-horizontal"] number
---@field ["position-vertical"] number
---@field ["position-all"] number
---@field ["position-left-percent"] number
---@field ["position-top-percent"] number
---@field ["position-right-percent"] number
---@field ["position-bottom-percent"] number
---@field ["position-start-percent"] number
---@field ["position-end-percent"] number
---@field ["position-horizontal-percent"] number
---@field ["position-vertical-percent"] number
---@field ["position-all-percent"] number
---
---@field ["position-type"] nu.Styles.PositionType
---
---@field ["width"] "auto" | number
---@field ["width-percent"] number
---
---@field ["wrap"] nu.Styles.Wrap



