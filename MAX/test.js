autowatch = 1;
inlets = 1;
outlets = 1;
// global variables
var x = 0.66;
// float -- run the equation once
function msg_float(r)
{
   x = r*x*(1.-x);
   outlet(0, x);
}

// bang -- post the current population to the max window
function bang()
{
   post(“the current population is”);
   post(x);
   post();
}