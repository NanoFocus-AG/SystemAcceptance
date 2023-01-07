<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NF_NED_MScan_Abnahme_Tiefe01">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFGaussProfile">
                <NFParameterSet>
                    <NFParameter Name="Crop Region">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="CutOff Wavelength [um]">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Direction [0=x;1=y]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use FFT">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Low-Pass">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="7" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="9" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFMedianHeights">
                <NFParameterSet>
                    <NFParameter Name="HeightRadiusPixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WidthRadiusPixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="0" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFRobustProfileFit">
                <NFParameterSet>
                    <NFParameter Name="In1_Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="In2_MaxNumOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="In3_Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.0010000000000000000208</NFVariant>
                    </NFParameter>
                    <NFParameter Name="In4_WeightLimitFactor">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFRoiFilter">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PixelStepX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PixelStepY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="1" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="5" SourceParameterName="NumberPointsX" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="5" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="3" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="7" Description="">
            <NFEvaluation Name="NFThresholdHeights">
                <NFParameterSet>
                    <NFParameter Name="Cut Height and Intensity">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="lower Height">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-3.402823466e+38</NFVariant>
                    </NFParameter>
                    <NFParameter Name="upper Height">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-0.349999994</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="29" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="9" Description="">
            <NFEvaluation Name="NFRoiFilter">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PixelStepX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PixelStepY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeX [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="38" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="12" Description="">
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
                <NextParameter NextIndex="21" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="13" Description="">
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
                <NextParameter NextIndex="18" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="18" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="48" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="49" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="62" SourceParameterName="Result" DestinationParameterName="C" />
                <NextParameter NextIndex="63" SourceParameterName="Result" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="21" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="50" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="48" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="64" SourceParameterName="Result" DestinationParameterName="C" />
                <NextParameter NextIndex="65" SourceParameterName="Result" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="24" Description="">
            <NFEvaluation Name="NFProfStatistics">
                <NFParameterSet>
                    <NFParameter Name="RangeBegin">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="RangeEnd">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UseOffset">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="37" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes>
                <NextParameter NextIndex="32" SourceParameterName="Min" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="29" Description="">
            <NFEvaluation Name="NFProfileGetUnmaskedSections">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="57" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes>
                <NextParameter NextIndex="13" SourceParameterName="StartPositions" DestinationParameterName="A" />
                <NextParameter NextIndex="12" SourceParameterName="EndPositions" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="32" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="37" Description="">
            <NFEvaluation Name="NFTopoGnuplotProfile">
                <NFParameterSet>
                    <NFParameter Name="CleanOutput">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Column Profile">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="GnuPlotLines_X">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="GnuPlotLines_Y">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="ImageFormat [jpeg, png, svg]">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">svg</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageName">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">GnuPlotProfile</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageRatio">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.7700000000000000178</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageSize_X [Pix]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1024</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageSize_Y [Pix]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">800</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Index">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Label</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label X-Axis">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">[mm]</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label Y-Axis">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Z [um]</NFVariant>
                    </NFParameter>
                    <NFParameter Name="RemoveXOffset">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Texts">
                        <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Texts X-Pos [um]">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Texts Y-Pos [um]">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Title">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Title</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Title with Image Name">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UnitX [mm, um]">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">mm</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Y-Scaling">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WorkingDirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Max">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Min">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-2</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Scale">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="38" Description="">
            <NFEvaluation Name="NFRobustProfileFit">
                <NFParameterSet>
                    <NFParameter Name="In1_Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="In2_MaxNumOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="In3_Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.0010000000000000000208</NFVariant>
                    </NFParameter>
                    <NFParameter Name="In4_WeightLimitFactor">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="24" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="41" Description="">
            <NFEvaluation Name="NFGetUserTmpDir">
                <NFParameterSet>
                    <NFParameter Name="Directory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Use User Tmp Dir">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="37" SourceParameterName="Directory Name" DestinationParameterName="WorkingDirectory" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="42" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="0" SourceParameterName="OutputParameter" DestinationParameterName="CutOff Wavelength [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="43" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="WidthRadiusPixel" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="46" Description="">
            <NFEvaluation Name="NFInterpolator">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="48" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="50" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="49" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="49" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="59" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="53" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="50" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="51" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="51" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMin&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="53" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="52" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMax&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="54" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="53" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="56" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="54" Description="">
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
                <NextParameter NextIndex="9" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="56" Description="">
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
                <NextParameter NextIndex="9" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="57" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="54" SourceParameterName="DeltaX" DestinationParameterName="B" />
                <NextParameter NextIndex="56" SourceParameterName="DeltaX" DestinationParameterName="B" />
                <NextParameter NextIndex="58" SourceParameterName="LengthX" DestinationParameterName="B" />
                <NextParameter NextIndex="58" SourceParameterName="OffsetX" DestinationParameterName="A" />
                <NextParameter NextIndex="59" SourceParameterName="OffsetX" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="58" Description="">
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
                <NextParameter NextIndex="51" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="59" Description="">
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
                <NextParameter NextIndex="52" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="60" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="62" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="61" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="66" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="62" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="63" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="63" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="64" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="64" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="64" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="65" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="65" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="37" SourceParameterName="Result" DestinationParameterName="GnuPlotLines_X" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="66" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="67" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="67" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="68" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="68" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="69" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="69" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0;0;1;1;</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="37" SourceParameterName="Result" DestinationParameterName="GnuPlotLines_Y" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="4" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="46" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="24" EvalPort="0" MapPort="1" />
            <IOTopoMap EvalIndex="7" EvalPort="0" MapPort="2" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="37" EvalParameterName="Label" MapName="DataLabel" />
            <IOParameterMap EvalIndex="42" EvalParameterName="InputParameter" MapName="GaussCutOff [um]" />
            <IOParameterMap EvalIndex="7" EvalParameterName="upper Height" MapName="HeightThreshold [um]" />
            <IOParameterMap EvalIndex="37" EvalParameterName="ImageName" MapName="ImageName" />
            <IOParameterMap EvalIndex="37" EvalParameterName="ImageSize_X [Pix]" MapName="ImageWidth [Pix]" />
            <IOParameterMap EvalIndex="43" EvalParameterName="InputParameter" MapName="MedianRadius [Pix]" />
            <IOParameterMap EvalIndex="37" EvalParameterName="Title" MapName="Title" />
            <IOParameterMap EvalIndex="41" EvalParameterName="Use User Tmp Dir" MapName="UseUserTempDir" />
            <IOParameterMap EvalIndex="41" EvalParameterName="Directory" MapName="WorkingDirectory" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="42" EvalParameterName="OutputParameter" MapName="Gauss CutOff [um]" />
            <IOParameterMap EvalIndex="43" EvalParameterName="OutputParameter" MapName="MedianRadius [Pix]" />
            <IOParameterMap EvalIndex="32" EvalParameterName="Result" MapName="Wt" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">17</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2022-11-28 11:24:14</string>
                    <string>2022-12-15 16:01:56</string>
                    <string>2022-12-15 16:36:35</string>
                    <string>2022-12-15 16:44:51</string>
                    <string>2022-12-15 17:03:37</string>
                    <string>2022-12-15 17:13:40</string>
                    <string>2022-12-15 17:17:12</string>
                    <string>2022-12-15 17:25:41</string>
                    <string>2022-12-15 17:45:11</string>
                    <string>2022-12-15 17:57:39</string>
                    <string>2022-12-15 18:06:10</string>
                    <string>2022-12-16 08:34:29</string>
                    <string>2022-12-16 08:37:34</string>
                    <string>2022-12-16 09:20:11</string>
                    <string>2022-12-16 09:29:08</string>
                    <string>2022-12-16 09:46:11</string>
                    <string>2022-12-16 11:37:57</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_Tiefe_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe01.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NF_NED_MScan_Abnahme_Tiefe01">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFGaussProfile" PosX="5107.37" PosY="5330.69" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFMedianHeights" PosX="5107.99" PosY="5188.68" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFRobustProfileFit" PosX="5111.26" PosY="5000.47" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFRoiFilter" PosX="5108.33" PosY="5086.67" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFTopoInfo" PosX="5284.14" PosY="4812.03" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5287" PosY="5090" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NFThresholdHeights" PosX="5108.14" PosY="5692.23" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFRoiFilter" PosX="5710.98" PosY="5329.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="12">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;" PosX="5384.98" PosY="5790.24" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarVectorElement&gt;" PosX="5381.48" PosY="5590.53" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="18">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5599.6" PosY="5558.98" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="21">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5609.15" PosY="5827.1" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="24">
                <NFAlgoGUI Name="NFProfStatistics" PosX="5923.4" PosY="5155.08" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="29">
                <NFAlgoGUI Name="NFProfileGetUnmaskedSections" PosX="5383.17" PosY="5689.34" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="32">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="6091.15" PosY="5157.73" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="37">
                <NFAlgoGUI Name="NFTopoGnuplotProfile" PosX="5919.52" PosY="5066.8" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="38">
                <NFAlgoGUI Name="NFRobustProfileFit" PosX="5711.42" PosY="5154.2" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="41">
                <NFAlgoGUI Name="NFGetUserTmpDir" PosX="5921.16" PosY="4982.47" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="42">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4917.46" PosY="5328.13" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="43">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4913.66" PosY="5184.8" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="46">
                <NFAlgoGUI Name="NFInterpolator" PosX="5106.67" PosY="4916" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="48">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5602.84" PosY="5684.21" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="49">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5777.3" PosY="5652.9" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="50">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5776.75" PosY="5734.87" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="51">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMin&gt;" PosX="6246.97" PosY="5733.5" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="52">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMax&gt;" PosX="5992.92" PosY="5516.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="53">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="6245.23" PosY="5647.05" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="54">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5879.31" PosY="5452.96" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="56">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="6244.34" PosY="5461.32" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="57">
                <NFAlgoGUI Name="NFTopoInfo" PosX="5989.61" PosY="5961.61" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="58">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="6247.57" PosY="5806.42" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="59">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5993.94" PosY="5591.92" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="60">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;" PosX="5534.14" PosY="4679.38" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="61">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;" PosX="6178.43" PosY="4669.05" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="62">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5531.84" PosY="4764.69" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="63">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5535.09" PosY="4870.69" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="64">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5536.46" PosY="4960.57" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="65">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5539.13" PosY="5064.42" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="66">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6181.84" PosY="4743.7" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="67">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6186.03" PosY="4826.75" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="68">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6183.42" PosY="4903.96" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="69">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6183.82" PosY="4983.87" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5180.09" PosY="5477.73" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="1">
                <NFAlgoGUI PosX="5924.7" PosY="5262.68" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="2">
                <NFAlgoGUI PosX="5107.86" PosY="5809.51" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="5111.33" PosY="4814" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="DataLabel">
                <NFAlgoGUI PosX="6419.54" PosY="5066.86" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="GaussCutOff [um]">
                <NFAlgoGUI PosX="4724.11" PosY="5327.68" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="HeightThreshold [um]">
                <NFAlgoGUI PosX="4901.33" PosY="5693.33" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="ImageName">
                <NFAlgoGUI PosX="6574.7" PosY="5063.92" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="ImageWidth [Pix]">
                <NFAlgoGUI PosX="6099.5" PosY="5067.92" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="MedianRadius [Pix]">
                <NFAlgoGUI PosX="4702.01" PosY="5183.65" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Title">
                <NFAlgoGUI PosX="6283.9" PosY="5064.2" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="UseUserTempDir">
                <NFAlgoGUI PosX="5917.32" PosY="4828.13" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="WorkingDirectory">
                <NFAlgoGUI PosX="5920.3" PosY="4900.48" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="Gauss CutOff [um]">
                <NFAlgoGUI PosX="4909.43" PosY="5416.89" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="MedianRadius [Pix]">
                <NFAlgoGUI PosX="4913.66" PosY="5275.18" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Wt">
                <NFAlgoGUI PosX="6097.58" PosY="5259.74" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
