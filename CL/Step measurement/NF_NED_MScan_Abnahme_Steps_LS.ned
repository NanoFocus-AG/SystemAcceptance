<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NF_NED_MScan_Abnahme_Steps_LS">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFMedianHeights">
                <NFParameterSet>
                    <NFParameter Name="HeightRadiusPixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WidthRadiusPixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="53" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
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
                <NextTopo NextIndex="9" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
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
                <NextTopo NextIndex="10" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="9" Description="">
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
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="21" SourceParameterName="Mean" DestinationParameterName="B" />
                <NextParameter NextIndex="51" SourceParameterName="Mean" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
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
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="21" SourceParameterName="Mean" DestinationParameterName="A" />
                <NextParameter NextIndex="52" SourceParameterName="Mean" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="12" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">6500</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="2" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="14" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="3" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="15" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="18" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="13" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="12" SourceParameterName="DeltaX" DestinationParameterName="B" />
                <NextParameter NextIndex="14" SourceParameterName="NumberPointsX" DestinationParameterName="A" />
                <NextParameter NextIndex="17" SourceParameterName="DeltaX" DestinationParameterName="B" />
                <NextParameter NextIndex="20" SourceParameterName="DeltaX" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="14" Description="">
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
                <NextParameter NextIndex="3" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
                <NextParameter NextIndex="19" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="15" Description="">
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
            <NextParameterNodes>
                <NextParameter NextIndex="16" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="16" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="17" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="17" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
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
        <NFComplexEvalNode Index="18" Description="">
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
            <NextParameterNodes>
                <NextParameter NextIndex="19" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="19" Description="">
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
                <NextParameter NextIndex="20" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="20" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
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
                <NextParameter NextIndex="22" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="21" Description="">
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
                <NextParameter NextIndex="23" SourceParameterName="Result" DestinationParameterName="A" />
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
                <NextParameter NextIndex="23" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="23" Description="">
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
                <NextParameter NextIndex="53" SourceParameterName="Result" DestinationParameterName="Slope [Rad]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="26" Description="">
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
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="30" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="27" Description="">
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
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="31" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="28" Description="">
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
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="32" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="29" Description="">
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
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SizeY [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="33" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="30" Description="">
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
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="37" SourceParameterName="Mean" DestinationParameterName="B" />
                <NextParameter NextIndex="38" SourceParameterName="Mean" DestinationParameterName="B" />
                <NextParameter NextIndex="39" SourceParameterName="Mean" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="31" Description="">
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
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="37" SourceParameterName="Mean" DestinationParameterName="A" />
                <NextParameter NextIndex="72" SourceParameterName="Mean" DestinationParameterName="C" />
                <NextParameter NextIndex="70" SourceParameterName="Mean" DestinationParameterName="C" />
                <NextParameter NextIndex="48" SourceParameterName="Mean" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="32" Description="">
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
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="38" SourceParameterName="Mean" DestinationParameterName="A" />
                <NextParameter NextIndex="68" SourceParameterName="Mean" DestinationParameterName="C" />
                <NextParameter NextIndex="66" SourceParameterName="Mean" DestinationParameterName="C" />
                <NextParameter NextIndex="49" SourceParameterName="Mean" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="33" Description="">
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
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="39" SourceParameterName="Mean" DestinationParameterName="A" />
                <NextParameter NextIndex="64" SourceParameterName="Mean" DestinationParameterName="C" />
                <NextParameter NextIndex="60" SourceParameterName="Mean" DestinationParameterName="C" />
                <NextParameter NextIndex="50" SourceParameterName="Mean" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="37" Description="">
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
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="38" Description="">
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
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="39" Description="">
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
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="41" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
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
                <NextParameter NextIndex="27" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="42" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
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
                <NextParameter NextIndex="28" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="43" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
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
                <NextParameter NextIndex="29" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="44" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="41" SourceParameterName="DeltaX" DestinationParameterName="B" />
                <NextParameter NextIndex="42" SourceParameterName="DeltaX" DestinationParameterName="B" />
                <NextParameter NextIndex="43" SourceParameterName="DeltaX" DestinationParameterName="B" />
                <NextParameter NextIndex="96" SourceParameterName="Maximum Height" DestinationParameterName="A" />
                <NextParameter NextIndex="108" SourceParameterName="DeltaX" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="48" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="93" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="49" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="94" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="50" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="92" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="51" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="54" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="52" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="53" Description="">
            <NFEvaluation Name="NFRemoveLinearProfile">
                <NFParameterSet>
                    <NFParameter Name="Remove X-Offset">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Slope [Rad]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Z-Offset [um]">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="44" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="29" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="28" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="27" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="26" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="55" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="95" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="54" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">-1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="53" SourceParameterName="Result" DestinationParameterName="Z-Offset [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="55" Description="">
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
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Steps_LS</NFVariant>
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
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Steps Profile</NFVariant>
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
                        <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                            <string>Step I</string>
                            <string>Step II</string>
                            <string>Step III</string>
                            <string />
                        </NFVariant>
                    </NFParameter>
                    <NFParameter Name="Texts X-Pos [um]">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Texts Y-Pos [um]">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="Title">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">MScan CLS Certification: Steps</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Title with Image Name">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UnitX [mm, um]">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">mm</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Y-Scaling">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WorkingDirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Max">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Min">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Scale">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="56" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">6</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="57" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="57" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="59" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="59" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
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
        <NFComplexEvalNode Index="60" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="64" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="62" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">6</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="60" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="64" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                    <NFParameter Name="C">
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
        <NFComplexEvalNode Index="65" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="67" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="66" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="68" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="67" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="69" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="68" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="70" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="69" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="71" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="70" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="72" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="71" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="55" SourceParameterName="Result" DestinationParameterName="GnuPlotLines_X" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="72" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="55" SourceParameterName="Result" DestinationParameterName="GnuPlotLines_Y" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="77" Description="">
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
                <NextParameter NextIndex="82" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="69" SourceParameterName="Result" DestinationParameterName="C" />
                <NextParameter NextIndex="86" SourceParameterName="Result" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="78" Description="">
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
                <NextParameter NextIndex="81" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="65" SourceParameterName="Result" DestinationParameterName="C" />
                <NextParameter NextIndex="87" SourceParameterName="Result" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="79" Description="">
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
                <NextParameter NextIndex="80" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="57" SourceParameterName="Result" DestinationParameterName="C" />
                <NextParameter NextIndex="88" SourceParameterName="Result" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="80" Description="">
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
                <NextParameter NextIndex="59" SourceParameterName="Result" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="81" Description="">
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
                <NextParameter NextIndex="67" SourceParameterName="Result" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="82" Description="">
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
                <NextParameter NextIndex="71" SourceParameterName="Result" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="83" Description="">
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
                <NextParameter NextIndex="55" SourceParameterName="Directory Name" DestinationParameterName="WorkingDirectory" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="84" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="91" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="85" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="86" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="86" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="87" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="87" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="88" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="88" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="55" SourceParameterName="Result" DestinationParameterName="Texts X-Pos [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="89" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="55" SourceParameterName="Result" DestinationParameterName="Texts Y-Pos [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="90" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="89" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="91" Description="">
            <NFEvaluation Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
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
                <NextParameter NextIndex="90" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="92" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="89" SourceParameterName="Result" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="93" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="91" SourceParameterName="Result" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="94" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="90" SourceParameterName="Result" DestinationParameterName="C" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="95" Description="">
            <NFEvaluation Name="NFThresholdHeights">
                <NFParameterSet>
                    <NFParameter Name="Cut Height and Intensity">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="lower Height">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-3.402823466e+38</NFVariant>
                    </NFParameter>
                    <NFParameter Name="upper Height">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">3.402823466e+38</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="97" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="96" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarSub&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="95" SourceParameterName="Result" DestinationParameterName="lower Height" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="97" Description="">
            <NFEvaluation Name="NFProfileGetUnmaskedSections">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="99" SourceParameterName="StartPositions" DestinationParameterName="A" />
                <NextParameter NextIndex="100" SourceParameterName="Lengths" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="99" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;">
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
                <NextParameter NextIndex="102" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="100" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;">
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
                <NextParameter NextIndex="101" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="103" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="104" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="105" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="101" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="102" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="102" Description="">
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
                <NextParameter NextIndex="79" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="43" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="104" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="103" Description="">
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
            <NextParameterNodes>
                <NextParameter NextIndex="80" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="81" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="82" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="108" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="104" Description="">
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
                <NextParameter NextIndex="105" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="78" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="42" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="105" Description="">
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
                <NextParameter NextIndex="77" SourceParameterName="Result" DestinationParameterName="B" />
                <NextParameter NextIndex="41" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="108" Description="">
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
                <NextParameter NextIndex="26" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="27" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="28" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="29" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="109" Description="">
            <NFEvaluation Name="NF_NED_MScan_Abnahme_PreProc_LS">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="0" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="13" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="109" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="53" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="2" EvalPort="0" MapPort="1" />
            <IOTopoMap EvalIndex="3" EvalPort="0" MapPort="2" />
            <IOTopoMap EvalIndex="97" EvalPort="0" MapPort="3" />
            <IOTopoMap EvalIndex="29" EvalPort="0" MapPort="4" />
            <IOTopoMap EvalIndex="28" EvalPort="0" MapPort="5" />
            <IOTopoMap EvalIndex="27" EvalPort="0" MapPort="6" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="55" EvalParameterName="Label" MapName="DataLabel" />
            <IOParameterMap EvalIndex="96" EvalParameterName="B" MapName="Distance From Max" />
            <IOParameterMap EvalIndex="55" EvalParameterName="ImageSize_X [Pix]" MapName="ImageWidth [Pix]" />
            <IOParameterMap EvalIndex="55" EvalParameterName="Title" MapName="Title" />
            <IOParameterMap EvalIndex="83" EvalParameterName="Use User Tmp Dir" MapName="UseUserTempDir" />
            <IOParameterMap EvalIndex="83" EvalParameterName="Directory" MapName="WorkingDirectory" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="51" EvalParameterName="Result" MapName="MeanROI1" />
            <IOParameterMap EvalIndex="52" EvalParameterName="Result" MapName="MeanROI2" />
            <IOParameterMap EvalIndex="17" EvalParameterName="Result" MapName="PosMeanROI1" />
            <IOParameterMap EvalIndex="20" EvalParameterName="Result" MapName="PosMeanROI2" />
            <IOParameterMap EvalIndex="37" EvalParameterName="Result" MapName="StepHeight1" />
            <IOParameterMap EvalIndex="38" EvalParameterName="Result" MapName="StepHeight2" />
            <IOParameterMap EvalIndex="39" EvalParameterName="Result" MapName="StepHeight3" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">39</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2022-11-22 10:39:00</string>
                    <string>2023-05-16 17:36:23</string>
                    <string>2023-05-16 17:39:07</string>
                    <string>2023-06-13 10:44:14</string>
                    <string>2023-06-13 14:40:26</string>
                    <string>2023-06-13 14:45:57</string>
                    <string>2023-06-13 14:55:50</string>
                    <string>2023-06-13 16:06:07</string>
                    <string>2023-06-13 16:19:11</string>
                    <string>2023-06-13 16:26:48</string>
                    <string>2023-06-13 16:35:26</string>
                    <string>2023-06-13 16:39:08</string>
                    <string>2023-06-13 16:44:19</string>
                    <string>2023-06-13 16:44:35</string>
                    <string>2023-06-13 16:51:52</string>
                    <string>2023-06-13 17:05:02</string>
                    <string>2023-06-13 17:05:47</string>
                    <string>2023-06-13 17:07:40</string>
                    <string>2023-06-13 17:18:04</string>
                    <string>2023-06-13 17:38:47</string>
                    <string>2023-06-14 08:23:38</string>
                    <string>2023-06-14 08:36:33</string>
                    <string>2023-06-14 08:41:49</string>
                    <string>2023-06-14 08:54:51</string>
                    <string>2023-06-14 09:10:24</string>
                    <string>2023-06-14 09:18:11</string>
                    <string>2023-06-14 09:18:59</string>
                    <string>2023-06-14 09:22:24</string>
                    <string>2023-06-14 09:31:36</string>
                    <string>2023-06-14 09:32:41</string>
                    <string>2023-06-14 09:33:37</string>
                    <string>2023-06-14 09:43:46</string>
                    <string>2023-06-14 09:44:15</string>
                    <string>2023-06-14 09:56:56</string>
                    <string>2023-06-14 10:00:32</string>
                    <string>2023-06-14 10:01:01</string>
                    <string>2023-06-14 10:04:14</string>
                    <string>2023-06-14 10:19:05</string>
                    <string>2023-06-14 12:01:08</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_PS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_LS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_LS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_LS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_LS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_LS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_LS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_LS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_LS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_LS_experimental.ned</string>
                    <string>E:/build/NanoFocus/trunk/vs2017_x64/bin/Plugins/NF_NED_MScan_Abnahme_Steps_LS_experimental.ned</string>
                    <string>E:/code/trunk/NFEval/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_Steps_LS.ned</string>
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
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NF_NED_MScan_Abnahme_Steps_LS">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFMedianHeights" PosX="4768.57" PosY="3443.74" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFRoiFilter" PosX="4765.48" PosY="3536.91" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFRoiFilter" PosX="5443.77" PosY="3442.2" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFProfStatistics" PosX="4773.01" PosY="3665.53" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFProfStatistics" PosX="5446.46" PosY="3558.96" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="12">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5086.11" PosY="3537.18" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFTopoInfo" PosX="5207.86" PosY="3350.87" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="14">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5450.7" PosY="3355.86" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="15">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5092.08" PosY="4005.01" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="16">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5090.12" PosY="4166.96" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="17">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="5484.73" PosY="4173.3" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="18">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5188.94" PosY="3712.02" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="19">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5212.52" PosY="3850.67" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="20">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="5647.4" PosY="3857.64" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="21">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5464.73" PosY="3668.66" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="22">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5657.45" PosY="4038.27" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="23">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5496.04" PosY="3911.31" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="26">
                <NFAlgoGUI Name="NFRoiFilter" PosX="4139" PosY="5039" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="27">
                <NFAlgoGUI Name="NFRoiFilter" PosX="4429.99" PosY="5030.67" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="28">
                <NFAlgoGUI Name="NFRoiFilter" PosX="4601.67" PosY="5029.34" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="29">
                <NFAlgoGUI Name="NFRoiFilter" PosX="4781.67" PosY="5038.67" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="30">
                <NFAlgoGUI Name="NFProfStatistics" PosX="4140.33" PosY="5706" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="31">
                <NFAlgoGUI Name="NFProfStatistics" PosX="4436" PosY="5551.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="32">
                <NFAlgoGUI Name="NFProfStatistics" PosX="4602" PosY="5583" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="33">
                <NFAlgoGUI Name="NFProfStatistics" PosX="4780.67" PosY="5638" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="37">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4438" PosY="5834" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="38">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4603.06" PosY="5781.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="39">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4783" PosY="5722.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="41">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="3371.66" PosY="4239.34" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="42">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="3667.33" PosY="4183" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="43">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="3671.34" PosY="4027.34" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="44">
                <NFAlgoGUI Name="NFTopoInfo" PosX="3363.96" PosY="4068.2" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="48">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="4489.34" PosY="5998.66" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="49">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="4733" PosY="6093.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="50">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="5002.33" PosY="6216" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="51">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="4775.01" PosY="3754" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="52">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="5648.56" PosY="3561.69" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="53">
                <NFAlgoGUI Name="NFRemoveLinearProfile" PosX="3977.44" PosY="3917.49" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="54">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="4368.9" PosY="3755.81" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="55">
                <NFAlgoGUI Name="NFTopoGnuplotProfile" PosX="6135.97" PosY="4893.71" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="56">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;" PosX="6139.95" PosY="5560.08" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="57">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6139" PosY="5472.2" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="59">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6142.33" PosY="5383.75" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="60">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6780.61" PosY="6112.96" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="62">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;" PosX="6780.97" PosY="6208.37" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="64">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6781.33" PosY="6038.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="65">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6134.99" PosY="5303.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="66">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6785.09" PosY="5920.99" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="67">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6132.33" PosY="5232" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="68">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6785.55" PosY="5844.23" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="69">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6133.33" PosY="5143" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="70">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6784.78" PosY="5729.13" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="71">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6135.66" PosY="5073.34" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="72">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="6784.12" PosY="5653.8" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="77">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5856.01" PosY="5143.01" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="78">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5855" PosY="5302.66" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="79">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5857.66" PosY="5470.65" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="80">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5857.34" PosY="5381.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="81">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5860.33" PosY="5231.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="82">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5857.34" PosY="5073.34" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="83">
                <NFAlgoGUI Name="NFGetUserTmpDir" PosX="6342.34" PosY="4889.48" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="84">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;" PosX="5580.67" PosY="5911.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="85">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarCreateVector&gt;" PosX="5642.66" PosY="4558.67" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="86">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5642.67" PosY="4633.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="87">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5645.34" PosY="4717.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="88">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5642.67" PosY="4809.34" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="89">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5848.33" PosY="6222.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="90">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5699.34" PosY="6092" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="91">
                <NFAlgoGUI Name="NFParameterTernaryOperation&lt;Functor::NFVarSetVectorElement&gt;" PosX="5692" PosY="5991.99" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="92">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5351.91" PosY="6223.2" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="93">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5344.49" PosY="5999.68" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="94">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5353.02" PosY="6093.19" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="95">
                <NFAlgoGUI Name="NFThresholdHeights" PosX="3679.33" PosY="4336.67" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="96">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="3090" PosY="4337.34" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="97">
                <NFAlgoGUI Name="NFProfileGetUnmaskedSections" PosX="3679.33" PosY="4442" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="99">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="3082.67" PosY="4434.01" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="100">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="3675.99" PosY="4545.34" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="101">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="3143.32" PosY="4540" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="102">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="3066.81" PosY="5433.88" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="103">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="3664" PosY="4672.67" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="104">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="3288" PosY="5300.66" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="105">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="3478" PosY="5141.34" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="108">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4616.32" PosY="4068.15" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="109">
                <NFAlgoGUI Name="NF_NED_MScan_Abnahme_PreProc_LS" PosX="4771" PosY="3223" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="3845.8" PosY="3825.82" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="1">
                <NFAlgoGUI PosX="4939.63" PosY="3607.04" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="2">
                <NFAlgoGUI PosX="5939.63" PosY="3450.65" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="3">
                <NFAlgoGUI PosX="3955.24" PosY="4445.52" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="4">
                <NFAlgoGUI PosX="4859.33" PosY="5203.34" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="5">
                <NFAlgoGUI PosX="4685.61" PosY="5211.09" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="6">
                <NFAlgoGUI PosX="4516.67" PosY="5212.67" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="5205.16" PosY="3225.59" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="DataLabel">
                <NFAlgoGUI PosX="6133.71" PosY="4810.45" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Distance From Max">
                <NFAlgoGUI PosX="2894.37" PosY="4338.08" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="ImageWidth [Pix]">
                <NFAlgoGUI PosX="6127.75" PosY="4678.41" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Title">
                <NFAlgoGUI PosX="6132.33" PosY="4743.67" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="UseUserTempDir">
                <NFAlgoGUI PosX="6337.25" PosY="4806.89" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="WorkingDirectory">
                <NFAlgoGUI PosX="6334.68" PosY="4732.3" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="MeanROI1">
                <NFAlgoGUI PosX="4770.6" PosY="3861.76" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="MeanROI2">
                <NFAlgoGUI PosX="5949.42" PosY="3561.08" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="PosMeanROI1">
                <NFAlgoGUI PosX="5965.54" PosY="4172.63" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="PosMeanROI2">
                <NFAlgoGUI PosX="5957.99" PosY="3860.2" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="StepHeight1">
                <NFAlgoGUI PosX="4517" PosY="5905.99" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="StepHeight2">
                <NFAlgoGUI PosX="4727.01" PosY="5851.67" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="StepHeight3">
                <NFAlgoGUI PosX="4954.33" PosY="5791.67" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
