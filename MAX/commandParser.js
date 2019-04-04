autowatch = 1;

outlets = 4;
intlets = 2;
var soundMatrixLength = 16;
var wei = "hello";
var soundMatrix = null;
setoutletassist(0,"Tempo Clock On/Off");
setoutletassist(1,"Tempo Value");
setoutletassist(2,"Sounds at Position");
setoutletassist(3,"Matrix Debug");

post("Init");

function bang() {
  if (wei == "hello") {
    wei = "what";
  } else {
    wei = "hello";
  }
  outlet(0, wei);
}

function PlaySound(state) {
  outlet(0, state);
}

function BPM(bpmVal) {
  if (bpmVal > 0) {
    outlet(1, bpmVal);
  }
}

function Sound(nam, colum) {
  if (soundMatrix == null) {
    soundMatrix = new Array();
    for (var i = 0; i < soundMatrixLength; i++) {
      soundMatrix[i] = new Array();
    }
  }
  if (soundMatrix[colum].indexOf(nam) == -1) {
    soundMatrix[colum].push(nam);
  }
  outlet(3, nam + " at " + colum);
}

function PrintColumn(colum) {
  var output = [];
  for (var j = 0; j < soundMatrix[colum].length; j++) {
    output = output+ " "+ soundMatrix[colum][j];
  }
  outlet(2, output);
}

function PrintMatrix() {
  var output = "";
  for (var i = 0; i < soundMatrix.length; i++) {
    output = output + " column :" + i;

    for (var j = 0; j < soundMatrix[i].length; j++) {
      output = output + " " + soundMatrix[i][j];
    }
		output = output + ";\n";
  }
  outlet(3, output);
}
