# HKUILayoutShorthands
#### Shorthand methods for Swift programmatic UI layout constraints

## USER'S GUIDE

- The shorthands are implemented as methods in an extension of UIView. UI elements that are descendants of UIView can call them.
- All shorthands will call `translatesAutoresizingMaskIntoConstraints = false` so you do not have to do it in your code.
- GtEqTo = greater than or equal to
- LtEqTo = less than or equal to
- Left = leadingAnchor
- Right = trailingAnchor
- Shorthands that handle a single constraint (most of them) return an NSLayoutConstraint. You can optionally assign it to a constant or variable and then use it later for setting it active or inactive, or changing its constant.

  ### Example:

  ```
  let heightConstraint = viewA.anchorSetHeightToHeightOf(viewB)

  // later...

  heightConstraint.isActive = false
  heightConstraint.constant = 25.0
  heightConstraint.isActive = true

  ```

- If you need the constraints for shorthands that don't return them, use the shorthands that deal with the individual constraints involved.

  ### Example:

  Instead of:

  ```
  viewA.anchorAlignCentersWith(viewB)
  ```

  Use:

  ```
  let centerXConstraint = viewA.anchorAlignHorizontalCentersWith(viewB)
  let centerYConstraint = viewA.anchorAlignVerticalCentersWith(viewB)
  ```

## SHORTHANDS FOR MULTIPLE CONSTRAINTS

```
anchorAllFourSidesToFrameOf(_ anotherView: UIView)
anchorAllFourSidesToSafeAreaOf(_ anotherView: UIView)
anchorDimensionToFrameOf(_ anotherView: UIView)
anchorAlignCentersWith(_ anotherView: UIView)
```

### Examples:

```
viewA.anchorAllFourSidesToFrameOf(superView)
viewB.AlignCentersWith(viewC)
```

## SHORTHANDS FOR HORIZONTAL AND VERTICAL CENTERS

```
anchorAlignHorizontalCentersWith(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignHorizontalCentersWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignHorizontalCentersGtEqTo(_anotherView: UIView) -> NSLayoutConstraint
anchorAlignHorizontalCentersGtEqTo(_anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignHorizontalCentersLtEqTo(_anotherView: UIView) -> NSLayoutConstraint
anchorAlignHorizontalCentersLtEqTo(_anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignHorizontalCenterWithLeftOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignHorizontalCenterWithLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignHorizontalCenterGtEqToLeftOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignHorizontalCenterGtEqToLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignHorizontalCenterLtEqToLeftOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignHorizontalCenterLtEqToLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignHorizontalCenterWithRightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignHorizontalCenterWithRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignHorizontalCenterGtEqToRightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignHorizontalCenterGtEqToRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignHorizontalCenterLtEqToRightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignHorizontalCenterLtEqToRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignVerticalCenterWith(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignVerticalCenterWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignVerticalCenterGtEqTo(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignVerticalCenterGtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignVerticalCenterLtEqTo(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignVerticalCenterLtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignVerticalCenterWithTopOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignVerticalCenterWithTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignVerticalCenterGtEqToTopOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignVerticalCenterGtEqToTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignVerticalCenterLtEqToTopOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignVerticalCenterLtEqToTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignVerticalCenterWithBottomOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignVerticalCenterWithBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignVerticalCenterGtEqToBottomOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignVerticalCenterGtEqToBottomOf(_ anotherView: UIView, offset: CGFloat)
anchorAlignVerticalCenterLtEqToBottomOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignVerticalCenterLtEqToBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
```

### Examples:

```
viewA.anchorAlignHorizontalCentersWith(viewB)
viewC.anchorAlignVerticalCenterWith(viewD, offset: 50.0)
```

## SHORTHANDS FOR WIDTHS AND HEIGHTS

```
anchorSetWidthToConstant(_ constant: CGFloat) -> NSLayoutConstraint
anchorSetWidthLtEqToConstant(_ constant: CGFloat) -> NSLayoutConstraint
anchorSetWidthGtEqToConstant(_ constant: CGFloat) -> NSLayoutConstraint

anchorSetWidthToSafeAreaWidthOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetWidthToSafeAreaWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorSetWidthToSafeAreaWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint

anchorSetWidthLtEqToSafeAreaWidthOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetWidthLtEqToSafeAreaWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorSetWidthLtEqToSafeAreaWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint

anchorSetWidthToWidthOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetWidthToWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorSetWidthToWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint

anchorSetWidthLtEqToWidthOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetWidthLtEqToWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorSetWidthLtEqToWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint

anchorSetWidthGtEqToWidthOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetWidthGtEqToWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorSetWidthGtEqToWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint

anchorSetWidthToHeightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetWidthToHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorSetWidthToHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint

anchorSetHeightToConstant(_ constant: CGFloat) -> NSLayoutConstraint
anchorSetHeightLtEqToConstant(_ constant: CGFloat) -> NSLayoutConstraint
anchorSetHeightGtEqToConstant(_ constant: CGFloat) -> NSLayoutConstraint

anchorSetHeightToWidthOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetHeightToWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorSetHeightToWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint

anchorSetHeightToSafeAreaHeightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetHeightToSafeAreaHeightOf(_ anotherView: UIView, offset: CGFloat)) -> NSLayoutConstraint
anchorSetHeightToSafeAreaHeightOf(_ anotherView: UIView, multiplier: CGFloat)) -> NSLayoutConstraint

anchorSetHeightLtEqToSafeAreaHeightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetHeightLtEqToSafeAreaHeightOf(_ anotherView: UIView, offset: CGFloat)) -> NSLayoutConstraint
anchorSetHeightLtEqToSafeAreaHeightOf(_ anotherView: UIView, multiplier: CGFloat)) -> NSLayoutConstraint

anchorSetHeightToHeightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetHeightToHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorSetHeightToHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint

anchorSetHeightLtEqToHeightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetHeightLtEqToHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorSetHeightLtEqToHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint

anchorSetHeightGtEqToHeightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorSetHeightGtEqToHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorSetHeightGtEqToHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint

```

### Examples:

```
viewA.anchorSetWidthToConstant(100.0)
viewB.anchorSetHeightToHeightOf(viewC)
viewD.anchorSetHeightToWidthOf(viewE)
viewF.anchorSetWidthToWithOf(viewG, multiplier = 0.5)
viewH.anchorSetWidthToWidthOf(viewI, offset = 10.0)
```

## SHORTHANDS FOR TOPS, BOTTOMS, LEFTS (LEADERANCHORS) OR RIGHTS (TRAILINGANCHORS)

```
anchorAlignTopWithSafeAreaTopOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignTopWithSafeAreaTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignTopGtEqToSafeAreaTopOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignTopGtEqToSafeAreaTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignTopsWith(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignTopsWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignTopsGtEqTo(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignTopsGtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignTopsLtEqTo(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignTopsLtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignTopWithBottomOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignTopWithBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignTopGtEqToBottomOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignTopGtEqToBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignTopLtEqToBottomOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignTopLtEqToBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignTopWithVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignTopWithVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignTopGtEqToVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignTopGtEqToVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignTopLtEqToVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignTopLtEqToVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignBottomWithSafeAreaBottomOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignBottomWithSafeAreaBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignBottomLtEqToSafeAreaBottomOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignBottomLtEqToSafeAreaBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignBottomWithTopOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignBottomWithTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignBottomGtEqToTopOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignBottomGtEqToTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignBottomLtEqToTopOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignBottomLtEqToTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignBottomsWith(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignBottomsWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignBottomsGtEqTo(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignBottomsGtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignBottomsLtEqTo(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignBottomsLtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignBottomWithVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignBottomWithVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignBottomGtEqToVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignBottomGtEqToVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignBottomLtEqToVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignBottomLtEqToVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignLeftWithSafeAreaLeftOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignLeftWithSafeAreaLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignLeftGtEqToSafeAreaLeftOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignLeftGtEqToSafeAreaLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignLeftsWith(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignLeftsWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignLeftsGtEqTo(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignLeftsGtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignLeftsLtEqTo(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignLeftsLtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignLeftWithRightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignLeftWithRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignLeftGtEqToRightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignLeftGtEqToRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignLeftLtEqToRightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignLeftLtEqToRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignLeftWithHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignLeftWithHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignLeftGtEqToHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignLeftGtEqToHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignLeftLtEqToHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignLeftLtEqToHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignRightWithLeftOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignRightWithLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignRightGtEqToLeftOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignRightGtEqToLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignRightLtEqToLeftOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignRightLtEqToLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignRightWithSafeAreaRightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignRightWithSafeAreaRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignRightLtEqToSafeAreaRightOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignRightLtEqToSafeAreaRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignRightsWith(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignRightsWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignRightsGtEqTo(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignRightsGtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignRightsLtEqTo(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignRightsLtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint

anchorAlignRightWithHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignRightWithHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignRightGtEqToHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignRightGtEqToHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
anchorAlignRightLtEqToHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint
anchorAlignRightLtEqToHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint
```

### Examples:

```
viewA.anchorAlignLeftsWith(viewB)
viewC.anchorAlignRightsWith(viewD, offset: 10.0)
viewE.anchorAlignTopsWith(viewF)
viewG.anchorAlignBottomsWith(viewH, offset: 15.0)
viewI.anchorAlignTopGtEqToVerticalCenterOf(viewJ)
```
