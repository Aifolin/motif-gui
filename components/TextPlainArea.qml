import QtQuick 2.9
import QtQuick.Controls 2.0

import "." as MotifComponents

TextArea {
    id: textArea
    property bool themeTransition: true
    property string colorWhiteTheme: ""
    property string colorBlackTheme: ""
    color: MotifComponents.Style.defaultFontColor
    font.family: MotifComponents.Style.fontRegular.name
    font.pixelSize: 14
    selectByMouse: false
    wrapMode: Text.WordWrap;
    textMargin: 0
    leftPadding: 0
    topPadding: 0
    readOnly: true
    textFormat: TextEdit.PlainText

    states: [
        State {
            name: "black";
            when: textArea.themeTransition && MotifComponents.Style.blackTheme
            PropertyChanges {
                target: textArea
                color: {
                    return textArea.colorBlackTheme ? textArea.colorBlackTheme : MotifComponents.Style._b_defaultFontColor
                }
            }
        }, State {
            name: "white";
            when: textArea.themeTransition && !MotifComponents.Style.blackTheme
            PropertyChanges {
                target: textArea
                color: {
                    return textArea.colorWhiteTheme ? textArea.colorWhiteTheme : MotifComponents.Style._w_defaultFontColor
                }
            }
        }
    ]

    transitions: Transition {
        enabled: appWindow.themeTransition
        ColorAnimation { properties: "color"; easing.type: Easing.InOutQuad; duration: 750 }
    }
}
