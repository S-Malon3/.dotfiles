//WIP
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Window {
	width: 300
	height: 150
	color: "black"
	visible: true

	Column {
		anchors.centerIn: parent
		spacing: 10

		Text {
			text: "Exit Sway"
			color: white
			font.pointSize: 16
		}

		Button {
			text: "Exit"
			onClicked: {
				Qt.createQmlObject("import QtQuick 2.0; QtObject {}").runCommand("swaymsg exit")
			}
		}
	}

	//use Qt's QProcess to run shell commands
	function runCommand(command) {
		var proc = Qt.createQmlObject('Import QtQuick 2.0; QtObject {}', this);
		proc.process = new QProcess();
		proc.process.start("sh", ["-c", command]);
	}
}
