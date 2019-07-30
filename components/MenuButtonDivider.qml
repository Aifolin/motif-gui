import QtQuick 2.9

import "." as MotifComponents
import "effects/" as MotifEffects

Rectangle {
    color: MotifComponents.Style.appWindowBorderColor
    height: 1

    MotifEffects.ColorTransition {
        targetObj: parent
        blackColor: MotifComponents.Style._b_appWindowBorderColor
        whiteColor: MotifComponents.Style._w_appWindowBorderColor
    }
}
