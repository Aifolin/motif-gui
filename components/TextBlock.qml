import QtQuick 2.9

import "../components" as MotifComponents

TextEdit {
    color: MotifComponents.Style.defaultFontColor
    font.family: MotifComponents.Style.fontRegular.name
    selectionColor: MotifComponents.Style.textSelectionColor
    wrapMode: Text.Wrap
    readOnly: true
    selectByMouse: true
    // Workaround for https://bugreports.qt.io/browse/QTBUG-50587
    onFocusChanged: {
        if(focus === false)
            deselect()
    }
}
