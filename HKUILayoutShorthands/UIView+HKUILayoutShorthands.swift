//
//  UIView+HKUILayoutShorthands.swift
//
//  Shorthand methods for Swift programmatic UI layout constraints
//

///  MIT License
///
///  Copyright (c) 2020 Harrison Kong
///
///  Permission is hereby granted, free of charge, to any person obtaining a copy
///  of this software and associated documentation files (the "Software"), to deal
///  in the Software without restriction, including without limitation the rights
///  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell/
///  copies of the Software, and to permit persons to whom the Software is
///  furnished to do so, subject to the following conditions:
///
///  The above copyright notice and this permission notice shall be included in all
///  copies or substantial portions of the Software.
///
///  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
///  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
///  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
///  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
///  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
///  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
///  SOFTWARE.

//  Version: 1.0.0
//
//  Version History
//  -----------------------------------------------------------------
//  1.0.0     - 2020/01/16 - initial release

//  Dependencies
//  -----------------------------------------------------------------
//  None

//  How To Use
//  -----------------------------------------------------------------
//  See README.MD and User's Guide.md

import UIKit

public extension UIView {
    
    // MARK: - PRIVATE METHODS
    // MARK: -
    
    private func setDimAnchorToConstant(_ anchor: NSLayoutDimension, _ constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = anchor.constraint(equalToConstant: constant)
        nslc.isActive = true
        return nslc
    }

    // MARK: - PUBLIC METHODS
    // MARK: -
    
    func anchorAllFourSidesToFrameOf(_ anotherView: UIView) {
        anchorAlignTopsWith(anotherView)
        anchorAlignBottomsWith(anotherView)
        anchorAlignLeftsWith(anotherView)
        anchorAlignRightsWith(anotherView)
    }

    func anchorAllFourSidesToSafeAreaOf(_ anotherView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    func anchorDimensionToFrameOf(_ anotherView: UIView) {
        anchorSetHeightToHeightOf(anotherView)
        anchorSetWidthToWidthOf(anotherView)
    }
    
    func anchorAlignCentersWith(_ anotherView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: anotherView.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: anotherView.centerYAnchor).isActive = true
    }

    @discardableResult func anchorAlignHorizontalCentersWith(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignHorizontalCentersWith(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignHorizontalCentersWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerXAnchor.constraint(equalTo: anotherView.centerXAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignHorizontalCentersGtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignHorizontalCentersGtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignHorizontalCentersGtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerXAnchor.constraint(greaterThanOrEqualTo: anotherView.centerXAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignHorizontalCentersLtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignHorizontalCentersLtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignHorizontalCentersLtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerXAnchor.constraint(lessThanOrEqualTo: anotherView.centerXAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignHorizontalCenterWithLeftOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignHorizontalCenterWithLeftOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignHorizontalCenterWithLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerXAnchor.constraint(equalTo: anotherView.leadingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignHorizontalCenterGtEqToLeftOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignHorizontalCenterGtEqToLeftOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignHorizontalCenterGtEqToLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerXAnchor.constraint(greaterThanOrEqualTo: anotherView.leadingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignHorizontalCenterLtEqToLeftOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignHorizontalCenterLtEqToLeftOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignHorizontalCenterLtEqToLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerXAnchor.constraint(lessThanOrEqualTo: anotherView.leadingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignHorizontalCenterWithRightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignHorizontalCenterWithRightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignHorizontalCenterWithRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerXAnchor.constraint(equalTo: anotherView.trailingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignHorizontalCenterGtEqToRightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignHorizontalCenterGtEqToRightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignHorizontalCenterGtEqToRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerXAnchor.constraint(greaterThanOrEqualTo: anotherView.trailingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignHorizontalCenterLtEqToRightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignHorizontalCenterLtEqToRightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignHorizontalCenterLtEqToRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerXAnchor.constraint(lessThanOrEqualTo: anotherView.trailingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    

    @discardableResult func anchorAlignVerticalCentersWith(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignVerticalCentersWith(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignVerticalCentersWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerYAnchor.constraint(equalTo: anotherView.centerYAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignVerticalCentersGtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignVerticalCentersGtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignVerticalCentersGtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerYAnchor.constraint(greaterThanOrEqualTo: anotherView.centerYAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignVerticalCentersLtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignVerticalCentersLtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignVerticalCentersLtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerYAnchor.constraint(lessThanOrEqualTo: anotherView.centerYAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignVerticalCenterWithTopOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignVerticalCenterWithTopOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignVerticalCenterWithTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerYAnchor.constraint(equalTo: anotherView.topAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignVerticalCenterGtEqToTopOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignVerticalCenterGtEqToTopOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignVerticalCenterGtEqToTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerYAnchor.constraint(greaterThanOrEqualTo: anotherView.topAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignVerticalCenterLtEqToTopOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignVerticalCenterLtEqToTopOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignVerticalCenterLtEqToTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerYAnchor.constraint(lessThanOrEqualTo: anotherView.topAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignVerticalCenterWithBottomtOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignVerticalCenterWithBottomOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignVerticalCenterWithBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerYAnchor.constraint(equalTo: anotherView.bottomAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignVerticalCenterGtEqToBottomtOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignVerticalCenterGtEqToBottomOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignVerticalCenterGtEqToBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerYAnchor.constraint(greaterThanOrEqualTo: anotherView.bottomAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignVerticalCenterLtEqToBottomtOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignVerticalCenterLtEqToBottomOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignVerticalCenterLtEqToBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = centerYAnchor.constraint(lessThanOrEqualTo: anotherView.bottomAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetWidthToConstant(_ constant: CGFloat) -> NSLayoutConstraint {
        return setDimAnchorToConstant(widthAnchor, constant)
    }

    @discardableResult func anchorSetWidthLtEqToConstant(_ constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(lessThanOrEqualToConstant: constant)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorSetWidthGtEqToConstant(_ constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(greaterThanOrEqualToConstant: constant)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetWidthToSafeAreaWidthOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetWidthToSafeAreaWidthOf(anotherView, offset: 0.0)
    }

    @discardableResult func anchorSetWidthToSafeAreaWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.widthAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetWidthToSafeAreaWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.widthAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorSetWidthLtEqToSafeAreaWidthOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetWidthLtEqToSafeAreaWidthOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetWidthLtEqToSafeAreaWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.widthAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetWidthLtEqToSafeAreaWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.widthAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetWidthToWidthOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetWidthToWidthOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetWidthToWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(equalTo: anotherView.widthAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorSetWidthToWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(equalTo: anotherView.widthAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetWidthLtEqToWidthOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetWidthLtEqToWidthOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetWidthLtEqToWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(lessThanOrEqualTo: anotherView.widthAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetWidthLtEqToWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(lessThanOrEqualTo: anotherView.widthAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorSetWidthGtEqToWidthOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetWidthGtEqToWidthOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetWidthGtEqToWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(greaterThanOrEqualTo: anotherView.widthAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetWidthGtEqToWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(greaterThanOrEqualTo: anotherView.widthAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetWidthToHeightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetWidthToHeightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetWidthToHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(equalTo: anotherView.heightAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorSetWidthToHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(equalTo: anotherView.heightAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorSetWidthLtEqToHeightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetWidthLtEqToHeightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetWidthLtEqToHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(lessThanOrEqualTo: anotherView.heightAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetWidthLtEqToHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(lessThanOrEqualTo: anotherView.heightAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorSetWidthGtEqToHeightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetWidthGtEqToHeightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetWidthGtEqToHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(greaterThanOrEqualTo: anotherView.heightAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetWidthGtEqToHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = widthAnchor.constraint(greaterThanOrEqualTo: anotherView.heightAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightToConstant(_ constant: CGFloat) -> NSLayoutConstraint {
        return setDimAnchorToConstant(heightAnchor, constant)
    }

    @discardableResult func anchorSetHeightLtEqToConstant(_ constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(lessThanOrEqualToConstant: constant)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetheightGtEqToConstant(_ constant: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(greaterThanOrEqualToConstant: constant)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightToWidthOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetHeightToWidthOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetHeightToWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(equalTo: anotherView.widthAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorSetHeightToWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(equalTo: anotherView.widthAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }
 
    @discardableResult func anchorSetHeightLtToWidthOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetHeightLtToWidthOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetHeightLtToWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(lessThanOrEqualTo: anotherView.widthAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightLtToWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(lessThanOrEqualTo: anotherView.widthAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorSetHeightGtToWidthOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetHeightGtToWidthOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetHeightGtToWidthOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(greaterThanOrEqualTo: anotherView.widthAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightGtToWidthOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(greaterThanOrEqualTo: anotherView.widthAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightToSafeAreaHeightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetHeightToSafeAreaHeightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetHeightToSafeAreaHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.heightAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightToSafeAreaHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.heightAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightLtEqToSafeAreaHeightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetHeightLtEqToSafeAreaHeightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetHeightLtEqToSafeAreaHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.heightAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightLtEqToSafeAreaHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.heightAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightToHeightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetHeightToHeightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetHeightToHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(equalTo: anotherView.heightAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorSetHeightToHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(equalTo: anotherView.heightAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightLtEqToHeightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetHeightLtEqToHeightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetHeightLtEqToHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(lessThanOrEqualTo: anotherView.heightAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightLtEqToHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(lessThanOrEqualTo: anotherView.heightAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorSetHeightGtEqToHeightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorSetHeightGtEqToHeightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorSetHeightGtEqToHeightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(greaterThanOrEqualTo: anotherView.heightAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorSetHeightGtEqToHeightOf(_ anotherView: UIView, multiplier: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = heightAnchor.constraint(greaterThanOrEqualTo: anotherView.heightAnchor, multiplier: multiplier)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignTopWithSafeAreaTopOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignTopWithSafeAreaTopOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignTopWithSafeAreaTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = topAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.topAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignTopGtEqToSafeAreaTopOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignTopGtEqToSafeAreaTopOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignTopGtEqToSafeAreaTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = topAnchor.constraint(greaterThanOrEqualTo: anotherView.safeAreaLayoutGuide.topAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignTopsWith(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignTopsWith(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignTopsWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = topAnchor.constraint(equalTo: anotherView.topAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignTopsGtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignTopsGtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignTopsGtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = topAnchor.constraint(greaterThanOrEqualTo: anotherView.topAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignTopsLtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignTopsLtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignTopsLtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = topAnchor.constraint(lessThanOrEqualTo: anotherView.topAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignTopWithBottomOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignTopWithBottomOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignTopWithBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = topAnchor.constraint(equalTo: anotherView.bottomAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
 
    @discardableResult func anchorAlignTopGtEqToBottomOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignTopGtEqToBottomOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignTopGtEqToBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = topAnchor.constraint(greaterThanOrEqualTo: anotherView.bottomAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignTopLtEqToBottomOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignTopLtEqToBottomOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignTopLtEqToBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = topAnchor.constraint(lessThanOrEqualTo: anotherView.bottomAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignTopWithVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignTopWithVerticalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignTopWithVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = topAnchor.constraint(equalTo: anotherView.centerYAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignTopGtEqToVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignTopGtEqToVerticalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignTopGtEqToVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = topAnchor.constraint(greaterThanOrEqualTo: anotherView.centerYAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignTopLtEqToVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignTopLtEqToVerticalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignTopLtEqToVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = topAnchor.constraint(lessThanOrEqualTo: anotherView.centerYAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignBottomWithTopOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignBottomWithTopOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignBottomWithTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = bottomAnchor.constraint(equalTo: anotherView.topAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignBottomGtEqToTopOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignBottomGtEqToTopOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignBottomGtEqToTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = bottomAnchor.constraint(greaterThanOrEqualTo: anotherView.topAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignBottomLtEqToTopOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignBottomLtEqToTopOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignBottomLtEqToTopOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = bottomAnchor.constraint(lessThanOrEqualTo: anotherView.topAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignBottomWithSafeAreaBottomOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignBottomWithSafeAreaBottomOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignBottomWithSafeAreaBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = bottomAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.bottomAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignBottomLtEqToSafeAreaBottomOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignBottomLtEqToSafeAreaBottomOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignBottomLtEqToSafeAreaBottomOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = bottomAnchor.constraint(lessThanOrEqualTo: anotherView.safeAreaLayoutGuide.bottomAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignBottomsWith(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignBottomsWith(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignBottomsWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = bottomAnchor.constraint(equalTo: anotherView.bottomAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignBottomsGtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignBottomsGtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignBottomsGtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = bottomAnchor.constraint(greaterThanOrEqualTo: anotherView.bottomAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignBottomsLtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignBottomsLtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignBottomsLtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = bottomAnchor.constraint(lessThanOrEqualTo: anotherView.bottomAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignBottomWithVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignBottomWithVerticalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignBottomWithVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = bottomAnchor.constraint(equalTo: anotherView.centerYAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignBottomGtEqToVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignBottomGtEqToVerticalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignBottomGtEqToVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = bottomAnchor.constraint(greaterThanOrEqualTo: anotherView.centerYAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignBottomLtEqToVerticalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignBottomLtEqToVerticalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignBottomLtEqToVerticalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = bottomAnchor.constraint(lessThanOrEqualTo: anotherView.centerYAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignLeftWithSafeAreaLeftOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignLeftWithSafeAreaLeftOf(anotherView, offset: 0.0)
    }
    
    
    @discardableResult func anchorAlignLeftWithSafeAreaLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = leadingAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.leadingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignLeftGtEqToSafeAreaLeftOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignLeftGtEqToSafeAreaLeftOf(anotherView, offset: 0.0)
    }
    
    
    @discardableResult func anchorAlignLeftGtEqToSafeAreaLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = leadingAnchor.constraint(greaterThanOrEqualTo: anotherView.safeAreaLayoutGuide.leadingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignLeftsWith(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignLeftsWith(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignLeftsWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = leadingAnchor.constraint(equalTo: anotherView.leadingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignLeftsGtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignLeftsGtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignLeftsGtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = leadingAnchor.constraint(greaterThanOrEqualTo: anotherView.leadingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignLeftsLtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignLeftsLtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignLeftsLtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = leadingAnchor.constraint(lessThanOrEqualTo: anotherView.leadingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignLeftWithRightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignLeftWithRightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignLeftWithRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = leadingAnchor.constraint(equalTo: anotherView.trailingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignLeftGtEqToRightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignLeftGtEqToRightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignLeftGtEqToRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = leadingAnchor.constraint(greaterThanOrEqualTo: anotherView.trailingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignLeftLtEqToRightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignLeftLtEqToRightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignLeftLtEqToRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = leadingAnchor.constraint(lessThanOrEqualTo: anotherView.trailingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignLeftWithHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignLeftWithHorizontalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignLeftWithHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = leadingAnchor.constraint(equalTo: anotherView.centerXAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignLeftGtEqToHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignLeftGtEqToHorizontalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignLeftGtEqToHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = leadingAnchor.constraint(greaterThanOrEqualTo: anotherView.centerXAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignLeftLtEqToHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignLeftLtEqToHorizontalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignLeftLtEqToHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = leadingAnchor.constraint(lessThanOrEqualTo: anotherView.centerXAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignRightWithLeftOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignRightWithLeftOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignRightWithLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = trailingAnchor.constraint(equalTo: anotherView.leadingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignRightGtEqToLeftOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignRightGtEqToLeftOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignRightGtEqToLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = trailingAnchor.constraint(greaterThanOrEqualTo: anotherView.leadingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignRightLtEqToLeftOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignRightLtEqToLeftOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignRightLtEqToLeftOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = trailingAnchor.constraint(lessThanOrEqualTo: anotherView.leadingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignRightWithSafeAreaRightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignRightWithSafeAreaRightOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignRightWithSafeAreaRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = trailingAnchor.constraint(equalTo: anotherView.safeAreaLayoutGuide.trailingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignRightLtEqToSafeAreaRightOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignRightLtEqToSafeAreaRightOf(anotherView, offset: 0.0)
    }

    @discardableResult func anchorAlignRightLtEqToSafeAreaRightOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = trailingAnchor.constraint(lessThanOrEqualTo: anotherView.safeAreaLayoutGuide.trailingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignRightsWith(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignRightsWith(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignRightsWith(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = trailingAnchor.constraint(equalTo: anotherView.trailingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignRightsGtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignRightsGtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignRightsGtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = trailingAnchor.constraint(greaterThanOrEqualTo: anotherView.trailingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignRightsLtEqTo(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignRightsLtEqTo(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignRightsLtEqTo(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = trailingAnchor.constraint(lessThanOrEqualTo: anotherView.trailingAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }
    
    @discardableResult func anchorAlignRightWithHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignRightWithHorizontalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignRightWithHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = trailingAnchor.constraint(equalTo: anotherView.centerXAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignRightGtEqToHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignRightGtEqToHorizontalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignRightGtEqToHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = trailingAnchor.constraint(greaterThanOrEqualTo: anotherView.centerXAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

    @discardableResult func anchorAlignRightLtEqToHorizontalCenterOf(_ anotherView: UIView) -> NSLayoutConstraint {
        return anchorAlignRightLtEqToHorizontalCenterOf(anotherView, offset: 0.0)
    }
    
    @discardableResult func anchorAlignRightLtEqToHorizontalCenterOf(_ anotherView: UIView, offset: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let nslc = trailingAnchor.constraint(lessThanOrEqualTo: anotherView.centerXAnchor, constant: offset)
        nslc.isActive = true
        return nslc
    }

}
