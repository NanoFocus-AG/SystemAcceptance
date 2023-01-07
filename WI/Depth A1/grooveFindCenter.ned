<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="grooveFindCenter">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="groovePreLevel">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="1" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFFrameTopoBorder">
                <NFParameterSet>
                    <NFParameter Name="Use mask for frame">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Frame size in Pixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="4" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="3" SourceParameterName="NumberPointsX" DestinationParameterName="A" />
                <NextParameter NextIndex="23" SourceParameterName="Maximum Height" DestinationParameterName="Height Value" />
                <NextParameter NextIndex="26" SourceParameterName="NumberPointsX" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="27" SourceParameterName="NumberPointsX" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="30" SourceParameterName="NumberPointsY" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="Result" DestinationParameterName="Frame size in Pixel" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFSetMaskedPoints">
                <NFParameterSet>
                    <NFParameter Name="Intensity Value">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Height Value">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-006" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="5" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="5" Description="">
            <NFEvaluation Name="NFMaskSetValid">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="10" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
            <NFEvaluation Name="NFUnaryHeightFunctor&lt;Functor::NFAbsHeight&gt;">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="13" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="11" Description="">
            <NFEvaluation Name="NFThresholdFilter">
                <NFParameterSet>
                    <NFParameter Name="LowerIntensityThreshold">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">-32768</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Cut Height and Intensity">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UpperIntensityThreshold">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">32767</NFVariant>
                    </NFParameter>
                    <NFParameter Name="LowerHeightThreshold">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-006" UnitExponent="1">0.5</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UpperHeightThreshold">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-006" UnitExponent="1">7.914893537e+028</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="26" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="27" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="13" Description="">
            <NFEvaluation Name="NFGaussianFilter">
                <NFParameterSet>
                    <NFParameter Name="FilterMode [1: Height,2:Intensity,3:Height+Intensity]">
                        <NFVariant Type="int" Unit="BitMask" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Sigma [1e-6 m]">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-006" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="11" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="17" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="47" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="53" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="20" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarVectorElement4D&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="22" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="21" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarVectorElement4D&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="22" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="22" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="45" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="23" Description="">
            <NFEvaluation Name="NFSetMaskedPoints">
                <NFParameterSet>
                    <NFParameter Name="Intensity Value">
                        <NFVariant Type="short" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Height Value">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-006" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="24" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="24" Description="">
            <NFEvaluation Name="NFMaskSetValid">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="0" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="26" Description="">
            <NFEvaluation Name="NFRoiMask">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Invert Mask">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="28" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="27" Description="">
            <NFEvaluation Name="NFRoiMask">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Invert Mask">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="29" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="28" Description="">
            <NFEvaluation Name="NFBlobAnalysis">
                <NFParameterSet>
                    <NFParameter Name="MinimumBlobSize [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ResultImageisArea">
                        <NFVariant Type="bool">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UseMask (false=UseIntensity)">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Calc Extened Stats">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Depth Qunatile">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Deviation [µm] of max. Histogram Height">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="17" SourceParameterName="Center Of Gravity x [Pixel]" DestinationParameterName="A" />
                <NextParameter NextIndex="21" SourceParameterName="BoundingBox [Pixel];xMin;yMin;xMax;yMax" DestinationParameterName="A" />
                <NextParameter NextIndex="20" SourceParameterName="BoundingBox [Pixel];xMin;yMin;xMax;yMax" DestinationParameterName="A" />
                <NextParameter NextIndex="49" SourceParameterName="Center Of Gravity y [Pixel]" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="29" Description="">
            <NFEvaluation Name="NFBlobAnalysis">
                <NFParameterSet>
                    <NFParameter Name="MinimumBlobSize [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ResultImageisArea">
                        <NFVariant Type="bool">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UseMask (false=UseIntensity)">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Calc Extened Stats">
                        <NFVariant Type="bool">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Depth Qunatile">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Deviation [µm] of max. Histogram Height">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="37" SourceParameterName="Center Of Gravity x [Pixel]" DestinationParameterName="A" />
                <NextParameter NextIndex="35" SourceParameterName="BoundingBox [Pixel];xMin;yMin;xMax;yMax" DestinationParameterName="A" />
                <NextParameter NextIndex="36" SourceParameterName="BoundingBox [Pixel];xMin;yMin;xMax;yMax" DestinationParameterName="A" />
                <NextParameter NextIndex="55" SourceParameterName="Center Of Gravity y [Pixel]" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="30" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="34" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="34" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="26" SourceParameterName="Result" DestinationParameterName="OffsetY [Pixel]" />
                <NextParameter NextIndex="27" SourceParameterName="Result" DestinationParameterName="OffsetY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="35" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarVectorElement4D&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="44" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="36" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarVectorElement4D&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="44" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="37" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="47" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="53" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="44" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="45" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="45" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMax&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="47" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="48" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="48" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="49" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="54" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="53" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="60" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="54" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="61" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="55" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="54" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="60" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.0000000000000004e-006</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="61" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="61" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="62" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="66" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="62" Description="">
            <NFEvaluation Name="NFParameterUnaryOperation&lt;Functor::NFVarSin&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="67" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="66" Description="">
            <NFEvaluation Name="NFParameterUnaryOperation&lt;Functor::NFVarCos&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="67" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="67" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="69" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="68" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">3.1415926535900001</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="69" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">180</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="68" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="2" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="23" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping />
        <InputParameterMapping />
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="68" EvalParameterName="Result" MapName="groove tilt" />
            <IOParameterMap EvalIndex="48" EvalParameterName="Result" MapName="grooveCenterX" />
            <IOParameterMap EvalIndex="45" EvalParameterName="Result" MapName="grooveWidth" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]">
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                    <string>lang</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]">
                    <string>2015-07-28 15:39:52</string>
                    <string>2015-07-28 15:41:50</string>
                    <string>2015-07-28 16:33:47</string>
                    <string>2015-07-28 16:39:23</string>
                    <string>2015-07-29 09:52:07</string>
                    <string>2015-08-14 09:10:07</string>
                    <string>2015-08-14 13:09:26</string>
                    <string>2015-08-14 14:02:50</string>
                    <string>2015-08-14 14:23:00</string>
                    <string>2015-08-14 14:26:35</string>
                    <string>2015-08-14 16:01:34</string>
                    <string>2015-08-17 09:41:46</string>
                    <string>2015-08-17 11:03:53</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">13</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]">
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                    <string>C:/data/build/NFEval/globalPlugins/grooveFindCenter.ned</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="grooveFindCenter">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="groovePreLevel" PosX="5091" PosY="5156.6" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFFrameTopoBorder" PosX="5260.4" PosY="5156.8" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFTopoInfo" PosX="5082.4" PosY="5326.8" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5263.8" PosY="5250.6" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFSetMaskedPoints" PosX="5525.4" PosY="5157.6" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFMaskSetValid" PosX="5525.6" PosY="5258.4" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFUnaryHeightFunctor&lt;Functor::NFAbsHeight&gt;" PosX="5526.2" PosY="5344" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="11">
                <NFAlgoGUI Name="NFThresholdFilter" PosX="5532.13" PosY="5579.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFGaussianFilter" PosX="5529.69" PosY="5473.82" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="17">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;" PosX="4543.6" PosY="5602.4" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="20">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement4D&gt;" PosX="4791.32" PosY="5889.46" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="21">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement4D&gt;" PosX="4633.4" PosY="5797.66" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="22">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4597.6" PosY="5980.2" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="23">
                <NFAlgoGUI Name="NFSetMaskedPoints" PosX="4711.6" PosY="5157" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="24">
                <NFAlgoGUI Name="NFMaskSetValid" PosX="4886.8" PosY="5156.6" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="26">
                <NFAlgoGUI Name="NFRoiMask" PosX="4895" PosY="5672" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="27">
                <NFAlgoGUI Name="NFRoiMask" PosX="5172" PosY="5654" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="28">
                <NFAlgoGUI Name="NFBlobAnalysis" PosX="4779.6" PosY="5690.4" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="29">
                <NFAlgoGUI Name="NFBlobAnalysis" PosX="4922.67" PosY="5770.84" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="30">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4864" PosY="5379" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="34">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4899" PosY="5517" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="35">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement4D&gt;" PosX="4960" PosY="5904" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="36">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement4D&gt;" PosX="5198" PosY="5884" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="37">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;" PosX="4163.52" PosY="5689.52" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="44">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4872" PosY="5991" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="45">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMax&gt;" PosX="4736" PosY="6044" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="47">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="4189.6" PosY="5614.8" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="48">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4122" PosY="5539" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="49">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;" PosX="4388" PosY="5863.2" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="53">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4108" PosY="5828.8" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="54">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4107.2" PosY="5950.4" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="55">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;" PosX="4421.98" PosY="5925.92" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="60">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="3892.8" PosY="5965.6" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="61">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4082.4" PosY="6078.4" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="62">
                <NFAlgoGUI Name="NFParameterUnaryOperation&lt;Functor::NFVarSin&gt;" PosX="3912.8" PosY="6149.6" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="66">
                <NFAlgoGUI Name="NFParameterUnaryOperation&lt;Functor::NFVarCos&gt;" PosX="4223.2" PosY="6164" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="67">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4055.64" PosY="6343.81" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="68">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4573.29" PosY="6339.41" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="69">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="4309.75" PosY="6340.6" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4556.2" PosY="5156.8" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamOutput Name="groove tilt">
                <NFAlgoGUI PosX="4879.65" PosY="6338.4" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="grooveCenterX">
                <NFAlgoGUI PosX="4212.6" PosY="5463" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="grooveWidth">
                <NFAlgoGUI PosX="4865" PosY="6116.4" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
