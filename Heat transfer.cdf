(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Wolfram 14.3' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1084,         20]
NotebookDataLength[     34963,        745]
NotebookOptionsPosition[     34484,        731]
NotebookOutlinePosition[     34991,        750]
CellTagsIndexPosition[     34948,        747]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.9820550950726166`*^9, 3.9820550950726166`*^9}, 
   3.98205971568367*^9},ExpressionUUID->"d8ed9cdd-f915-bc4f-811a-\
cbb98165ccbb"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.9820597421778316`*^9, 
  3.9820597445410576`*^9}},ExpressionUUID->"0839cc71-1cea-d245-9757-\
d91ce85f0748"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{3.982059718826166*^9},
 NumberMarks->False,ExpressionUUID->"81b2d99b-ebbf-384c-93eb-6fbda44bf518"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.982059738761059*^9, 
  3.982059739368061*^9}},ExpressionUUID->"26ed262a-4fc5-cb45-a0af-\
7f9d54b7aa05"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
   "Define", " ", "the", " ", "smoothed", " ", "step", " ", "function"}], 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"smoothStep", "[", 
      RowBox[{"fmin_", ",", "fmax_", ",", "ts_", ",", "m_"}], "]"}], "[", 
     "t_", "]"}], ":=", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"fmin", "*", 
        RowBox[{"Exp", "[", 
         RowBox[{"ts", "*", "m"}], "]"}]}], "+", 
       RowBox[{"fmax", "*", 
        RowBox[{"Exp", "[", 
         RowBox[{"m", "*", "t"}], "]"}]}]}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Exp", "[", 
        RowBox[{"ts", "*", "m"}], "]"}], "+", 
       RowBox[{"Exp", "[", 
        RowBox[{"m", "*", "t"}], "]"}]}], ")"}]}]}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"Combined", " ", "Manipulate"}], "*)"}], "\n", 
   RowBox[{"Manipulate", "[", 
    RowBox[{
     RowBox[{"Module", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"sol", ",", "stepPlot", ",", "heatPlot"}], "}"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{"Step", " ", "function", " ", "plot"}], "*)"}], 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"stepPlot", "=", 
         RowBox[{"Plot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"smoothStep", "[", 
             RowBox[{"fmin", ",", "fmax", ",", "ts", ",", "m"}], "]"}], "[", 
            "\[Tau]", "]"}], ",", 
           RowBox[{"{", 
            RowBox[{"\[Tau]", ",", "0", ",", "600"}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"PlotRange", "->", "All"}], ",", 
           RowBox[{"PlotStyle", "->", 
            RowBox[{"{", 
             RowBox[{"Thick", ",", "Blue"}], "}"}]}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Frame", "->", "True"}], ",", "\[IndentingNewLine]", 
           RowBox[{"FrameLabel", "->", 
            RowBox[{"{", 
             RowBox[{"\"\<Time (s)\>\"", ",", "\"\<Temperature (K)\>\""}], 
             "}"}]}], ",", "\[IndentingNewLine]", 
           RowBox[{"PlotLabel", "->", "\"\<Boundary Temperature R(t)\>\""}], ",",
            "\[IndentingNewLine]", 
           RowBox[{"GridLines", "->", "Automatic"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Epilog", "->", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"Red", ",", 
                RowBox[{"PointSize", "[", "Medium", "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Point", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"0", ",", "fmin"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"600", ",", "fmax"}], "}"}]}], "}"}], "]"}]}], 
               "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{"Dashed", ",", "Orange", ",", 
                RowBox[{"Line", "[", 
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"{", 
                    RowBox[{"ts", ",", "fmin"}], "}"}], ",", 
                   RowBox[{"{", 
                    RowBox[{"ts", ",", "fmax"}], "}"}]}], "}"}], "]"}]}], 
               "}"}], ",", "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{"\"\<fmin\>\"", ",", 
                RowBox[{"{", 
                 RowBox[{"30", ",", 
                  RowBox[{"fmin", "+", "30"}]}], "}"}], ",", 
                RowBox[{"Background", "->", "White"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{"\"\<fmax\>\"", ",", 
                RowBox[{"{", 
                 RowBox[{"570", ",", 
                  RowBox[{"fmax", "-", "30"}]}], "}"}], ",", 
                RowBox[{"Background", "->", "White"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"Text", "[", 
               RowBox[{"\"\<ts\>\"", ",", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"ts", "+", "30"}], ",", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"fmin", "+", "fmax"}], ")"}], "/", "2"}]}], "}"}],
                 ",", 
                RowBox[{"Background", "->", "White"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{"Red", ",", 
                RowBox[{"PointSize", "[", "Large", "]"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"Point", "[", 
                 RowBox[{"{", 
                  RowBox[{"tCurrent", ",", 
                   RowBox[{
                    RowBox[{"smoothStep", "[", 
                    RowBox[{"fmin", ",", "fmax", ",", "ts", ",", "m"}], "]"}],
                     "[", "tCurrent", "]"}]}], "}"}], "\[IndentingNewLine]", 
                 "]"}]}], "}"}]}], "}"}]}], ",", "\[IndentingNewLine]", 
           RowBox[{"ImageSize", "->", 
            RowBox[{"{", 
             RowBox[{"500", ",", "200"}], "}"}]}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{"Solve", " ", "PDE"}], "*)"}], "\[IndentingNewLine]", 
        RowBox[{"sol", "=", 
         RowBox[{"NDSolveValue", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"D", "[", 
                RowBox[{
                 RowBox[{"T", "[", 
                  RowBox[{"t", ",", "x", ",", "y"}], "]"}], ",", "t"}], "]"}],
                "-", 
               RowBox[{"k", "*", 
                RowBox[{"Laplacian", "[", 
                 RowBox[{
                  RowBox[{"T", "[", 
                   RowBox[{"t", ",", "x", ",", "y"}], "]"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"x", ",", "y"}], "}"}]}], "]"}]}]}], "==", 
              RowBox[{"NeumannValue", "[", 
               RowBox[{
                RowBox[{"h", "*", 
                 RowBox[{"(", 
                  RowBox[{"Tamb", "-", 
                   RowBox[{"T", "[", 
                    RowBox[{"t", ",", "x", ",", "y"}], "]"}]}], ")"}]}], ",", 
                RowBox[{"y", "==", "0.01"}]}], "]"}]}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{"DirichletCondition", "[", 
              RowBox[{
               RowBox[{
                RowBox[{"T", "[", 
                 RowBox[{"t", ",", "x", ",", "y"}], "]"}], "==", 
                RowBox[{
                 RowBox[{"smoothStep", "[", 
                  RowBox[{"fmin", ",", "fmax", ",", "ts", ",", "m"}], "]"}], "[",
                  "t", "]"}]}], ",", 
               RowBox[{
                RowBox[{"x", "==", "0"}], "||", 
                RowBox[{"x", "==", "0.02"}]}]}], "]"}], ",", 
             RowBox[{
              RowBox[{"T", "[", 
               RowBox[{"0", ",", "x", ",", "y"}], "]"}], "==", "fmin"}]}], 
            "}"}], ",", "\[IndentingNewLine]", "T", ",", 
           RowBox[{"{", 
            RowBox[{"t", ",", "0", ",", "600"}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"x", ",", "0", ",", "0.02"}], "}"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"y", ",", "0", ",", "0.01"}], "}"}]}], 
          "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{"Temperature", " ", "plots"}], "*)"}], "\[IndentingNewLine]", 
        RowBox[{"heatPlot", "=", 
         RowBox[{"GraphicsRow", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"DensityPlot", "[", 
             RowBox[{
              RowBox[{"sol", "[", 
               RowBox[{"tCurrent", ",", "x", ",", "y"}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"x", ",", "0", ",", "0.02"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y", ",", "0", ",", "0.01"}], "}"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"ColorFunction", "->", "\"\<TemperatureMap\>\""}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"PlotLegends", "->", "Automatic"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"FrameLabel", "->", 
               RowBox[{"{", 
                RowBox[{"\"\<x (m)\>\"", ",", "\"\<y (m)\>\""}], "}"}]}], ",",
               "\[IndentingNewLine]", 
              RowBox[{"PlotLabel", "->", "\"\<Temperature Field\>\""}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"ImageSize", "->", "250"}]}], "]"}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{"Plot3D", "[", 
             RowBox[{
              RowBox[{"sol", "[", 
               RowBox[{"tCurrent", ",", "x", ",", "y"}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"{", 
               RowBox[{"x", ",", "0", ",", "0.02"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"y", ",", "0", ",", "0.01"}], "}"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"ColorFunction", "->", "\"\<TemperatureMap\>\""}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"AxesLabel", "->", 
               RowBox[{"{", 
                RowBox[{"\"\<x\>\"", ",", "\"\<y\>\"", ",", "\"\<T\>\""}], 
                "}"}]}], ",", "\[IndentingNewLine]", 
              RowBox[{"PlotLabel", "->", "\"\<3D Surface\>\""}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"ImageSize", "->", "250"}]}], "]"}]}], "}"}], 
          "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"(*", 
         RowBox[{"Combine", " ", "all"}], "*)"}], "\[IndentingNewLine]", 
        RowBox[{"Column", "[", 
         RowBox[{"{", 
          RowBox[{"stepPlot", ",", "heatPlot", ",", "\[IndentingNewLine]", 
           RowBox[{"Row", "[", 
            RowBox[{"{", 
             
             RowBox[{"\"\<Current Time: \>\"", ",", "tCurrent", 
              ",", "\"\< s  |  R(t) = \>\"", ",", "\[IndentingNewLine]", 
              RowBox[{"Round", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"smoothStep", "[", 
                  RowBox[{"fmin", ",", "fmax", ",", "ts", ",", "m"}], "]"}], "[",
                  "tCurrent", "]"}], ",", "0.1"}], "]"}], ",", "\"\< K\>\""}],
              "}"}], "]"}]}], "}"}], "]"}]}]}], "]"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", 
      RowBox[{"Slider", " ", "controls"}], "*)"}], 
     RowBox[{"Grid", "[", 
      RowBox[{
       RowBox[{"{", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Style", "[", 
            
            RowBox[{"\"\<STEP FUNCTION PARAMETERS\>\"", ",", "Bold", ",", 
             "Blue"}], "]"}], ",", "\[IndentingNewLine]", "SpanFromLeft"}], 
          "}"}], ",", 
         RowBox[{"{", 
          
          RowBox[{"\"\<fmin (initial temperature):\>\"", ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Manipulator", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "fmin", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"200", ",", "500", ",", "1"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Dynamic", "[", "fmin", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          
          RowBox[{"\"\<fmax (final temperature):\>\"", ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Manipulator", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "fmax", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"300", ",", "2000", ",", "10"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Dynamic", "[", "fmax", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<ts (transition time):\>\"", ",", "\[IndentingNewLine]", 
           RowBox[{"Manipulator", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "ts", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "600", ",", "10"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Dynamic", "[", "ts", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<m (smoothness):\>\"", ",", "\[IndentingNewLine]", 
           RowBox[{"Manipulator", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "m", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0.001", ",", "0.1", ",", "0.001"}], "}"}]}], "]"}], ",",
            "\[IndentingNewLine]", 
           RowBox[{"Dynamic", "[", "m", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<MATERIAL PROPERTIES\>\"", ",", "Bold", ",", "Blue"}],
             "]"}], ",", "SpanFromLeft"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<k (conductivity):\>\"", ",", "\[IndentingNewLine]", 
           RowBox[{"Manipulator", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "k", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0.1", ",", "10", ",", "0.1"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Dynamic", "[", "k", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<AMBIENT CONDITIONS\>\"", ",", "Bold", ",", "Blue"}], 
            "]"}], ",", "\[IndentingNewLine]", "SpanFromLeft"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<Tamb (ambient):\>\"", ",", "\[IndentingNewLine]", 
           RowBox[{"Manipulator", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "Tamb", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"200", ",", "500", ",", "1"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Dynamic", "[", "Tamb", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<h (convection):\>\"", ",", "\[IndentingNewLine]", 
           RowBox[{"Manipulator", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "h", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "200", ",", "1"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Dynamic", "[", "h", "]"}]}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"Style", "[", 
            RowBox[{"\"\<TIME CONTROL\>\"", ",", "Bold", ",", "Blue"}], "]"}],
            ",", "SpanFromLeft"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"\"\<t (current time):\>\"", ",", "\[IndentingNewLine]", 
           RowBox[{"Manipulator", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "tCurrent", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"0", ",", "600", ",", "1"}], "}"}]}], "]"}], ",", 
           "\[IndentingNewLine]", 
           RowBox[{"Dynamic", "[", "tCurrent", "]"}]}], "}"}]}], "}"}], ",", 
       RowBox[{"Alignment", "->", "Left"}], ",", 
       RowBox[{"Spacings", "->", 
        RowBox[{"{", 
         RowBox[{"1", ",", "1"}], "}"}]}]}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"fmin", ",", "323"}], "}"}], ",", "None"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"fmax", ",", "1173"}], "}"}], ",", "None"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"ts", ",", "300"}], "}"}], ",", "None"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"m", ",", "0.025"}], "}"}], ",", "None"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"k", ",", "3"}], "}"}], ",", "None"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"Tamb", ",", "323"}], "}"}], ",", "None"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"h", ",", "50"}], "}"}], ",", "None"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"tCurrent", ",", "300"}], "}"}], ",", "None"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"ControlPlacement", "->", "Left"}], ",", "\[IndentingNewLine]", 
     RowBox[{"ContinuousAction", "->", "False"}], ",", "\[IndentingNewLine]", 
     RowBox[{"TrackedSymbols", ":>", 
      RowBox[{"{", 
       RowBox[{
       "fmin", ",", "fmax", ",", "ts", ",", "m", ",", "k", ",", "Tamb", ",", 
        "h", ",", "tCurrent"}], "}"}]}]}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.982055137465618*^9, 3.9820551882564297`*^9}, 
   3.9820553152478104`*^9, {3.982056343903593*^9, 3.9820564172485485`*^9}, {
   3.982057328346781*^9, 3.9820573290856*^9}, 3.9820574587506104`*^9, 
   3.9820575475068455`*^9, 3.982057671754219*^9, 3.9820577047550983`*^9, {
   3.98205782309334*^9, 3.9820578242308216`*^9}, {3.9820579622768936`*^9, 
   3.9820579664097176`*^9}, 3.9820580342743225`*^9, {3.982058176034155*^9, 
   3.9820581900268936`*^9}, 3.982058378628271*^9, {3.9820585260076523`*^9, 
   3.9820587581384735`*^9}, {3.9820588678174496`*^9, 3.9820588700792904`*^9}, 
   3.982058936631359*^9, {3.9820590176613197`*^9, 3.982059048257265*^9}, {
   3.9820591071199684`*^9, 3.982059122533123*^9}, {3.9820592500984535`*^9, 
   3.9820592525514736`*^9}, {3.9820593932993946`*^9, 3.982059619531269*^9}, {
   3.982059676448498*^9, 3.9820596877387943`*^9}, {3.9820597569520054`*^9, 
   3.9820597619152584`*^9}},ExpressionUUID->"53e36e43-a4e1-e540-942f-\
a5b3af3a7323"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`fmax$$ = 1173, $CellContext`fmin$$ = 
    323, $CellContext`h$$ = 50, $CellContext`k$$ = 3, $CellContext`m$$ = 
    0.025, $CellContext`Tamb$$ = 323, $CellContext`tCurrent$$ = 
    397, $CellContext`ts$$ = 400, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Grid[{{
          Style["STEP FUNCTION PARAMETERS", Bold, 
           RGBColor[0, 0, 1]], SpanFromLeft}, {"fmin (initial temperature):", 
          Manipulator[
           Dynamic[$CellContext`fmin$$], {200, 500, 1}], 
          Dynamic[$CellContext`fmin$$]}, {"fmax (final temperature):", 
          Manipulator[
           Dynamic[$CellContext`fmax$$], {300, 2000, 10}], 
          Dynamic[$CellContext`fmax$$]}, {"ts (transition time):", 
          Manipulator[
           Dynamic[$CellContext`ts$$], {0, 600, 10}], 
          Dynamic[$CellContext`ts$$]}, {"m (smoothness):", 
          Manipulator[
           Dynamic[$CellContext`m$$], {0.001, 0.1, 0.001}], 
          Dynamic[$CellContext`m$$]}, {
          Style["MATERIAL PROPERTIES", Bold, 
           RGBColor[0, 0, 1]], SpanFromLeft}, {"k (conductivity):", 
          Manipulator[
           Dynamic[$CellContext`k$$], {0.1, 10, 0.1}], 
          Dynamic[$CellContext`k$$]}, {
          Style["AMBIENT CONDITIONS", Bold, 
           RGBColor[0, 0, 1]], SpanFromLeft}, {"Tamb (ambient):", 
          Manipulator[
           Dynamic[$CellContext`Tamb$$], {200, 500, 1}], 
          Dynamic[$CellContext`Tamb$$]}, {"h (convection):", 
          Manipulator[
           Dynamic[$CellContext`h$$], {0, 200, 1}], 
          Dynamic[$CellContext`h$$]}, {
          Style["TIME CONTROL", Bold, 
           RGBColor[0, 0, 1]], SpanFromLeft}, {"t (current time):", 
          Manipulator[
           Dynamic[$CellContext`tCurrent$$], {0, 600, 1}], 
          Dynamic[$CellContext`tCurrent$$]}}, Alignment -> Left, 
        Spacings -> {1, 1}]], Manipulate`Dump`ThisIsNotAControl, ControlType -> 
      None}, {{
       Hold[$CellContext`fmin$$], 323}, 0, ControlType -> None}, {{
       Hold[$CellContext`fmax$$], 1173}, 0, ControlType -> None}, {{
       Hold[$CellContext`ts$$], 300}, 0, ControlType -> None}, {{
       Hold[$CellContext`m$$], 0.025}, 0, ControlType -> None}, {{
       Hold[$CellContext`k$$], 3}, 0, ControlType -> None}, {{
       Hold[$CellContext`Tamb$$], 323}, 0, ControlType -> None}, {{
       Hold[$CellContext`h$$], 50}, 0, ControlType -> None}, {{
       Hold[$CellContext`tCurrent$$], 300}, 0, ControlType -> None}}, 
    Typeset`size$$ = {534.72, {222.71434570312505`, 227.87308593750004`}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = True, 
    Typeset`keyframeActionsQ$$ = False, Typeset`keyframeList$$ = {}}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`fmax$$ = 1173, $CellContext`fmin$$ = 
        323, $CellContext`h$$ = 50, $CellContext`k$$ = 3, $CellContext`m$$ = 
        0.025, $CellContext`Tamb$$ = 323, $CellContext`tCurrent$$ = 
        300, $CellContext`ts$$ = 300}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$, Typeset`keyframeActionsQ$$, 
        Typeset`keyframeList$$}, "Body" :> 
      Module[{$CellContext`sol$, $CellContext`stepPlot$, \
$CellContext`heatPlot$}, $CellContext`stepPlot$ = Plot[
           $CellContext`smoothStep[$CellContext`fmin$$, $CellContext`fmax$$, \
$CellContext`ts$$, $CellContext`m$$][$CellContext`\[Tau]], {$CellContext`\
\[Tau], 0, 600}, PlotRange -> All, PlotStyle -> {Thick, Blue}, Frame -> True, 
           FrameLabel -> {"Time (s)", "Temperature (K)"}, PlotLabel -> 
           "Boundary Temperature R(t)", GridLines -> Automatic, 
           Epilog -> {{Red, 
              PointSize[Medium], 
              
              Point[{{0, $CellContext`fmin$$}, {
                600, $CellContext`fmax$$}}]}, {Dashed, Orange, 
              
              Line[{{$CellContext`ts$$, $CellContext`fmin$$}, \
{$CellContext`ts$$, $CellContext`fmax$$}}]}, 
             Text[
             "fmin", {30, $CellContext`fmin$$ + 30}, Background -> White], 
             Text[
             "fmax", {570, $CellContext`fmax$$ - 30}, Background -> White], 
             Text[
             "ts", {$CellContext`ts$$ + 
               30, ($CellContext`fmin$$ + $CellContext`fmax$$)/2}, Background -> 
              White], {Red, 
              PointSize[Large], 
              Point[{$CellContext`tCurrent$$, 
                $CellContext`smoothStep[$CellContext`fmin$$, \
$CellContext`fmax$$, $CellContext`ts$$, \
$CellContext`m$$][$CellContext`tCurrent$$]}]}}, 
           ImageSize -> {500, 200}]; $CellContext`sol$ = NDSolveValue[{D[
               $CellContext`T[$CellContext`t, $CellContext`x, \
$CellContext`y], $CellContext`t] - $CellContext`k$$ Laplacian[
               $CellContext`T[$CellContext`t, $CellContext`x, \
$CellContext`y], {$CellContext`x, $CellContext`y}] == 
            NeumannValue[$CellContext`h$$ ($CellContext`Tamb$$ - \
$CellContext`T[$CellContext`t, $CellContext`x, $CellContext`y]), \
$CellContext`y == 0.01], 
            
            DirichletCondition[$CellContext`T[$CellContext`t, $CellContext`x, \
$CellContext`y] == $CellContext`smoothStep[$CellContext`fmin$$, \
$CellContext`fmax$$, $CellContext`ts$$, $CellContext`m$$][$CellContext`t], 
             Or[$CellContext`x == 0, $CellContext`x == 0.02]], $CellContext`T[
             0, $CellContext`x, $CellContext`y] == $CellContext`fmin$$}, \
$CellContext`T, {$CellContext`t, 0, 600}, {$CellContext`x, 0, 
            0.02}, {$CellContext`y, 0, 0.01}]; $CellContext`heatPlot$ = 
         GraphicsRow[{
            DensityPlot[
             $CellContext`sol$[$CellContext`tCurrent$$, $CellContext`x, \
$CellContext`y], {$CellContext`x, 0, 0.02}, {$CellContext`y, 0, 0.01}, 
             ColorFunction -> "TemperatureMap", PlotLegends -> Automatic, 
             FrameLabel -> {"x (m)", "y (m)"}, PlotLabel -> 
             "Temperature Field", ImageSize -> 250], 
            Plot3D[
             $CellContext`sol$[$CellContext`tCurrent$$, $CellContext`x, \
$CellContext`y], {$CellContext`x, 0, 0.02}, {$CellContext`y, 0, 0.01}, 
             ColorFunction -> "TemperatureMap", AxesLabel -> {"x", "y", "T"}, 
             PlotLabel -> "3D Surface", ImageSize -> 250]}]; 
        Column[{$CellContext`stepPlot$, $CellContext`heatPlot$, 
           Row[{"Current Time: ", $CellContext`tCurrent$$, " s  |  R(t) = ", 
             Round[
              $CellContext`smoothStep[$CellContext`fmin$$, \
$CellContext`fmax$$, $CellContext`ts$$, \
$CellContext`m$$][$CellContext`tCurrent$$], 0.1], " K"}]}]], "Specifications" :> {
        Grid[{{
           Style["STEP FUNCTION PARAMETERS", Bold, 
            RGBColor[0, 0, 1]], SpanFromLeft}, {"fmin (initial temperature):", 
           Manipulator[
            Dynamic[$CellContext`fmin$$], {200, 500, 1}], 
           Dynamic[$CellContext`fmin$$]}, {"fmax (final temperature):", 
           Manipulator[
            Dynamic[$CellContext`fmax$$], {300, 2000, 10}], 
           Dynamic[$CellContext`fmax$$]}, {"ts (transition time):", 
           Manipulator[
            Dynamic[$CellContext`ts$$], {0, 600, 10}], 
           Dynamic[$CellContext`ts$$]}, {"m (smoothness):", 
           Manipulator[
            Dynamic[$CellContext`m$$], {0.001, 0.1, 0.001}], 
           Dynamic[$CellContext`m$$]}, {
           Style["MATERIAL PROPERTIES", Bold, 
            RGBColor[0, 0, 1]], SpanFromLeft}, {"k (conductivity):", 
           Manipulator[
            Dynamic[$CellContext`k$$], {0.1, 10, 0.1}], 
           Dynamic[$CellContext`k$$]}, {
           Style["AMBIENT CONDITIONS", Bold, 
            RGBColor[0, 0, 1]], SpanFromLeft}, {"Tamb (ambient):", 
           Manipulator[
            Dynamic[$CellContext`Tamb$$], {200, 500, 1}], 
           Dynamic[$CellContext`Tamb$$]}, {"h (convection):", 
           Manipulator[
            Dynamic[$CellContext`h$$], {0, 200, 1}], 
           Dynamic[$CellContext`h$$]}, {
           Style["TIME CONTROL", Bold, 
            RGBColor[0, 0, 1]], SpanFromLeft}, {"t (current time):", 
           Manipulator[
            Dynamic[$CellContext`tCurrent$$], {0, 600, 1}], 
           Dynamic[$CellContext`tCurrent$$]}}, Alignment -> Left, 
         Spacings -> {1, 1}], {{$CellContext`fmin$$, 323}, 0, ControlType -> 
         None}, {{$CellContext`fmax$$, 1173}, 0, ControlType -> 
         None}, {{$CellContext`ts$$, 300}, 0, ControlType -> 
         None}, {{$CellContext`m$$, 0.025}, 0, ControlType -> 
         None}, {{$CellContext`k$$, 3}, 0, ControlType -> 
         None}, {{$CellContext`Tamb$$, 323}, 0, ControlType -> 
         None}, {{$CellContext`h$$, 50}, 0, ControlType -> 
         None}, {{$CellContext`tCurrent$$, 300}, 0, ControlType -> None}}, 
      "Options" :> {
       ControlPlacement -> Left, ContinuousAction -> False, 
        TrackedSymbols :> {$CellContext`fmin$$, $CellContext`fmax$$, \
$CellContext`ts$$, $CellContext`m$$, $CellContext`k$$, $CellContext`Tamb$$, \
$CellContext`h$$, $CellContext`tCurrent$$}}, "DefaultOptions" :> {}],
     ImageSizeCache->{
      891.407232421875, {247.05410156250005`, 252.21284179687504`}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Input",
 CellChangeTimes->{{3.9820597723580074`*^9, 
  3.982059772371811*^9}},ExpressionUUID->"9e240e53-34b9-6547-b9c9-\
2e4097f19269"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.982055350027502*^9, 3.982055350027502*^9}, 
   3.9820556168999767`*^9},ExpressionUUID->"08cd7186-29bc-724d-ae6c-\
630dd960b1ab"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.982055355397049*^9, 3.982055357980839*^9}, {
   3.9820556211126404`*^9, 3.9820557022209873`*^9}, 3.982056142219589*^9, {
   3.982056287519823*^9, 3.9820562905876617`*^9}, {3.982056517630583*^9, 
   3.9820565183972664`*^9}, 3.9820566104658146`*^9, {3.9820567234348316`*^9, 
   3.9820567242448807`*^9}, {3.9820568027362537`*^9, 3.9820568115822754`*^9}, 
   3.9820568618953533`*^9, 3.9820569396665497`*^9, {3.982057017771406*^9, 
   3.982057020139702*^9}, {3.98205705805912*^9, 3.9820570586209145`*^9}, {
   3.98205710963006*^9, 3.9820571134193134`*^9}, {3.9820573694664974`*^9, 
   3.9820573698943825`*^9}},ExpressionUUID->"f9d21d35-416a-814c-873e-\
aa1d3287978e"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.982057584949829*^9, 
  3.982057584965616*^9}},ExpressionUUID->"3d79b4e1-e50b-a04b-b845-\
e4f8bed8c599"],

Cell[BoxData["                                                                \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                                                              \
                                    "], "Input",
 CellChangeTimes->{{3.9820557640164185`*^9, 
  3.9820559436883354`*^9}},ExpressionUUID->"30bb6899-6cf0-ec45-a7ea-\
e6b597692494"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.9820553621115513`*^9, 3.9820553621115513`*^9}, {
  3.9820554373981304`*^9, 3.9820554732306423`*^9}, {3.9820555885213604`*^9, 
  3.982055613181307*^9}},ExpressionUUID->"2fba3ab2-e1bb-4d45-9dee-\
de41c32acab2"]
},
WindowSize->{1152, 615.6},
WindowMargins->{{
  Automatic, -5.399999999999864}, {-5.399999999999977, Automatic}},
TaggingRules-><|"TryRealOnly" -> False|>,
Magnification:>0.9 Inherited,
FrontEndVersion->"14.3 for Microsoft Windows (64-bit) (July 8, 2025)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"cf326be4-9da6-ee4f-8700-ff5b96f30e52"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1484, 33, 178, 3, 27, "Input",ExpressionUUID->"d8ed9cdd-f915-bc4f-811a-cbb98165ccbb"],
Cell[1665, 38, 156, 3, 27, "Input",ExpressionUUID->"0839cc71-1cea-d245-9757-d91ce85f0748"],
Cell[1824, 43, 144, 2, 27, "Input",ExpressionUUID->"81b2d99b-ebbf-384c-93eb-6fbda44bf518"],
Cell[1971, 47, 152, 3, 27, "Input",ExpressionUUID->"26ed262a-4fc5-cb45-a0af-7f9d54b7aa05"],
Cell[2126, 52, 17637, 412, 1224, "Input",ExpressionUUID->"53e36e43-a4e1-e540-942f-a5b3af3a7323"],
Cell[19766, 466, 10104, 191, 510, "Input",ExpressionUUID->"9e240e53-34b9-6547-b9c9-2e4097f19269"],
Cell[29873, 659, 177, 3, 25, "Input",ExpressionUUID->"08cd7186-29bc-724d-ae6c-630dd960b1ab"],
Cell[30053, 664, 711, 10, 25, "Input",ExpressionUUID->"f9d21d35-416a-814c-873e-aa1d3287978e"],
Cell[30767, 676, 152, 3, 25, "Input",ExpressionUUID->"3d79b4e1-e50b-a04b-b845-e4f8bed8c599"],
Cell[30922, 681, 3298, 42, 162, "Input",ExpressionUUID->"30bb6899-6cf0-ec45-a7ea-e6b597692494"],
Cell[34223, 725, 257, 4, 25, "Input",ExpressionUUID->"2fba3ab2-e1bb-4d45-9dee-de41c32acab2"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 5x0xXl2M@T9IPD1sDjgMoyt# *)
