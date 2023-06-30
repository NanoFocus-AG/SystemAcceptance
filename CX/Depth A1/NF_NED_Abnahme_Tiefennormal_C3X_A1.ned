<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NF_NED_Abnahme_Tiefennormal_C3X_A1">
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFRobustPlaneFit">
                <NFParameterSet>
                    <NFParameter Name="Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.0010000000000000000208</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MaximumNumberOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WeightLimitFactor">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFInterpolator">
                <NFParameterSet />
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
                <NextTopo NextIndex="4" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFTopoToProfile">
                <NFParameterSet>
                    <NFParameter Name="DirectionOfReduction">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ReductionType">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="19" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="5" Description="">
            <NFEvaluation Name="NFHybridMasterMultiStepDetector2X_inverse">
                <NFParameterSet>
                    <NFParameter Name="Distance To Border">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Gradient Peak Width">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Level Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Median Width Radius">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Minimum Slope">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.040000000000000000208</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Nominal Height">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="PNG File">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">HMresultImage</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Step Steepness">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Step Width">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Steps from Gradient">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="23" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="28" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="33" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="34" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="43" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="44" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes>
                <NextParameter NextIndex="22" SourceParameterName="Width" DestinationParameterName="A" />
                <NextParameter NextIndex="21" SourceParameterName="First Step Pos" DestinationParameterName="A" />
                <NextParameter NextIndex="23" SourceParameterName="First Step Pos" DestinationParameterName="Left Position [um]" />
                <NextParameter NextIndex="25" SourceParameterName="Distance" DestinationParameterName="A" />
                <NextParameter NextIndex="26" SourceParameterName="Width" DestinationParameterName="A" />
                <NextParameter NextIndex="27" SourceParameterName="First Step Pos" DestinationParameterName="A" />
                <NextParameter NextIndex="29" SourceParameterName="Distance" DestinationParameterName="A" />
                <NextParameter NextIndex="30" SourceParameterName="Width" DestinationParameterName="A" />
                <NextParameter NextIndex="37" SourceParameterName="Distance" DestinationParameterName="A" />
                <NextParameter NextIndex="38" SourceParameterName="Width" DestinationParameterName="A" />
                <NextParameter NextIndex="42" SourceParameterName="Distance" DestinationParameterName="A" />
                <NextParameter NextIndex="41" SourceParameterName="Width" DestinationParameterName="A" />
                <NextParameter NextIndex="47" SourceParameterName="Distance" DestinationParameterName="A" />
                <NextParameter NextIndex="48" SourceParameterName="Width" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="7" SourceParameterName="NumberPointsY" DestinationParameterName="A" />
                <NextParameter NextIndex="9" SourceParameterName="DeltaY" DestinationParameterName="B" />
                <NextParameter NextIndex="3" SourceParameterName="NumberPointsX" DestinationParameterName="SizeX [Pixel]" />
                <NextParameter NextIndex="10" SourceParameterName="DeltaY" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="7" Description="">
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
                <NextParameter NextIndex="11" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="8" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="11" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="9" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="3" SourceParameterName="Result" DestinationParameterName="SizeY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
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
                <NextParameter NextIndex="8" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="11" Description="">
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
                <NextParameter NextIndex="3" SourceParameterName="Result" DestinationParameterName="OffsetY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="12" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">200</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="9" SourceParameterName="OutputParameter" DestinationParameterName="A" />
                <NextParameter NextIndex="8" SourceParameterName="OutputParameter" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="19" Description="">
            <NFEvaluation Name="NFRobustProfileFit">
                <NFParameterSet>
                    <NFParameter Name="In1_Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">4</NFVariant>
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
                <NextTopo NextIndex="20" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="20" Description="">
            <NFEvaluation Name="NFSetTopoOffset">
                <NFParameterSet>
                    <NFParameter Name="OffsetX [um]">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetY [um]">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="OffsetZ [um]">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="5" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="21" Description="">
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
                <NextParameter NextIndex="23" SourceParameterName="Result" DestinationParameterName="Right Position [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="22" Description="">
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
                <NextParameter NextIndex="21" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="23" Description="">
            <NFEvaluation Name="NF_NED_Abnahme_Tiefennormal_A1_GP01">
                <NFParameterSet>
                    <NFParameter Name="Left Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Right Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Workingdirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="24" Description="">
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
                <NextParameter NextIndex="28" SourceParameterName="Result" DestinationParameterName="Right Position [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="25" Description="">
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
                <NextParameter NextIndex="27" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="26" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="24" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="27" Description="">
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
                <NextParameter NextIndex="24" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="28" SourceParameterName="Result" DestinationParameterName="Left Position [um]" />
                <NextParameter NextIndex="31" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="28" Description="">
            <NFEvaluation Name="NF_NED_Abnahme_Tiefennormal_A1_GP02">
                <NFParameterSet>
                    <NFParameter Name="Left Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Right Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Workingdirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="29" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="31" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="30" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;">
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
                <NextParameter NextIndex="32" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="31" Description="">
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
                <NextParameter NextIndex="32" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="33" SourceParameterName="Result" DestinationParameterName="Left Position [um]" />
                <NextParameter NextIndex="35" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="32" Description="">
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
                <NextParameter NextIndex="33" SourceParameterName="Result" DestinationParameterName="Right Position [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="33" Description="">
            <NFEvaluation Name="NF_NED_Abnahme_Tiefennormal_A1_GP03">
                <NFParameterSet>
                    <NFParameter Name="Left Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Right Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Workingdirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="34" Description="">
            <NFEvaluation Name="NF_NED_Abnahme_Tiefennormal_A1_GP04">
                <NFParameterSet>
                    <NFParameter Name="Left Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Right Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Workingdirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="35" Description="">
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
                <NextParameter NextIndex="36" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="34" SourceParameterName="Result" DestinationParameterName="Left Position [um]" />
                <NextParameter NextIndex="39" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="36" Description="">
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
                <NextParameter NextIndex="34" SourceParameterName="Result" DestinationParameterName="Right Position [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="37" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;">
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
                <NextParameter NextIndex="35" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="38" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;">
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
                <NextParameter NextIndex="36" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="39" Description="">
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
                <NextParameter NextIndex="40" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="43" SourceParameterName="Result" DestinationParameterName="Left Position [um]" />
                <NextParameter NextIndex="45" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="40" Description="">
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
                <NextParameter NextIndex="43" SourceParameterName="Result" DestinationParameterName="Right Position [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="41" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;">
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
                <NextParameter NextIndex="40" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="42" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;">
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
                <NextParameter NextIndex="39" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="43" Description="">
            <NFEvaluation Name="NF_NED_Abnahme_Tiefennormal_A1_GP05">
                <NFParameterSet>
                    <NFParameter Name="Left Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Right Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Workingdirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="44" Description="">
            <NFEvaluation Name="NF_NED_Abnahme_Tiefennormal_A1_GP06">
                <NFParameterSet>
                    <NFParameter Name="Left Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Right Position [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Workingdirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="45" Description="">
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
                <NextParameter NextIndex="46" SourceParameterName="Result" DestinationParameterName="A" />
                <NextParameter NextIndex="44" SourceParameterName="Result" DestinationParameterName="Left Position [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="46" Description="">
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
                <NextParameter NextIndex="44" SourceParameterName="Result" DestinationParameterName="Right Position [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="47" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;">
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
                <NextParameter NextIndex="45" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="48" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;">
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
                <NextParameter NextIndex="46" SourceParameterName="Result" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="49" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">.\</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="28" SourceParameterName="OutputParameter" DestinationParameterName="Workingdirectory" />
                <NextParameter NextIndex="33" SourceParameterName="OutputParameter" DestinationParameterName="Workingdirectory" />
                <NextParameter NextIndex="34" SourceParameterName="OutputParameter" DestinationParameterName="Workingdirectory" />
                <NextParameter NextIndex="43" SourceParameterName="OutputParameter" DestinationParameterName="Workingdirectory" />
                <NextParameter NextIndex="44" SourceParameterName="OutputParameter" DestinationParameterName="Workingdirectory" />
                <NextParameter NextIndex="23" SourceParameterName="OutputParameter" DestinationParameterName="Workingdirectory" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="1" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="6" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="3" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="5" EvalPort="0" MapPort="1" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="5" EvalParameterName="Gradient Peak Width" MapName="HM_GradPeakWidth [%]" />
            <IOParameterMap EvalIndex="5" EvalParameterName="Median Width Radius" MapName="HM_MedianWidthRadius [Pix]" />
            <IOParameterMap EvalIndex="5" EvalParameterName="Minimum Slope" MapName="HM_MinimumSlope" />
            <IOParameterMap EvalIndex="12" EvalParameterName="InputParameter" MapName="ROI-Height [um]" />
            <IOParameterMap EvalIndex="49" EvalParameterName="InputParameter" MapName="Working Directory" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="5" EvalParameterName="Thickness" MapName="Depth" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">66</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2023-03-13 10:22:45</string>
                    <string>2023-03-13 10:57:26</string>
                    <string>2023-03-13 10:58:47</string>
                    <string>2023-03-13 11:06:34</string>
                    <string>2023-03-13 11:11:54</string>
                    <string>2023-03-13 11:20:48</string>
                    <string>2023-03-13 11:27:36</string>
                    <string>2023-03-13 12:05:29</string>
                    <string>2023-03-13 12:06:10</string>
                    <string>2023-03-13 12:22:20</string>
                    <string>2023-03-13 12:40:46</string>
                    <string>2023-03-13 12:49:58</string>
                    <string>2023-03-13 12:51:26</string>
                    <string>2023-03-13 12:55:10</string>
                    <string>2023-03-13 13:24:52</string>
                    <string>2023-03-13 13:45:29</string>
                    <string>2023-03-13 13:45:56</string>
                    <string>2023-03-13 13:50:26</string>
                    <string>2023-03-13 13:52:21</string>
                    <string>2023-03-13 13:54:43</string>
                    <string>2023-03-13 14:05:43</string>
                    <string>2023-03-14 09:01:38</string>
                    <string>2023-03-14 09:36:19</string>
                    <string>2023-03-14 09:39:07</string>
                    <string>2023-03-14 09:40:08</string>
                    <string>2023-03-14 09:41:18</string>
                    <string>2023-03-14 10:04:58</string>
                    <string>2023-03-14 11:32:33</string>
                    <string>2023-03-14 11:35:01</string>
                    <string>2023-03-14 11:49:56</string>
                    <string>2023-03-14 11:54:43</string>
                    <string>2023-03-14 12:12:12</string>
                    <string>2023-03-14 12:24:26</string>
                    <string>2023-03-14 12:54:14</string>
                    <string>2023-03-14 12:54:55</string>
                    <string>2023-03-14 13:15:29</string>
                    <string>2023-03-14 13:19:15</string>
                    <string>2023-03-14 13:25:00</string>
                    <string>2023-03-15 09:02:55</string>
                    <string>2023-03-15 14:14:12</string>
                    <string>2023-03-15 15:11:17</string>
                    <string>2023-03-15 15:40:25</string>
                    <string>2023-03-15 15:43:59</string>
                    <string>2023-03-15 15:46:58</string>
                    <string>2023-03-15 16:49:15</string>
                    <string>2023-03-15 16:49:48</string>
                    <string>2023-03-15 17:14:43</string>
                    <string>2023-03-20 13:15:27</string>
                    <string>2023-03-20 13:16:34</string>
                    <string>2023-03-20 13:34:42</string>
                    <string>2023-03-20 13:57:45</string>
                    <string>2023-03-20 14:04:26</string>
                    <string>2023-03-20 14:19:37</string>
                    <string>2023-03-20 14:24:17</string>
                    <string>2023-03-20 14:49:32</string>
                    <string>2023-03-20 14:50:45</string>
                    <string>2023-03-20 14:53:27</string>
                    <string>2023-03-20 15:00:59</string>
                    <string>2023-03-20 15:02:31</string>
                    <string>2023-03-20 15:08:43</string>
                    <string>2023-03-20 15:11:55</string>
                    <string>2023-03-20 15:12:23</string>
                    <string>2023-03-22 14:16:00</string>
                    <string>2023-03-22 14:27:42</string>
                    <string>2023-03-27 10:25:48</string>
                    <string>2023-03-27 12:35:33</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1_GP01.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/Abnahme_Tiefennormal/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/myEvalPlugins/Abnahme_Tiefennormal/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_Abnahme_Tiefennormal_A1.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_Abnahme_Tiefennormal_C3X_A1.ned</string>
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
        <NFComplexAlgoGUIDescription Version="1" Name="NF_NED_Abnahme_Tiefennormal_C3X_A1">
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="5307.3" PosY="4792.03" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFInterpolator" PosX="5305.4" PosY="5003.1" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFRoiFilter" PosX="5449" PosY="5009" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFTopoToProfile" PosX="5450" PosY="5080" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFHybridMasterMultiStepDetector2X_inverse" PosX="5446.49" PosY="5315.6" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFTopoInfo" PosX="5443.38" PosY="4790.89" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5621.34" PosY="4874.18" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5905.11" PosY="4788.4" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="5496.92" PosY="4922.32" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="5615.95" PosY="4788.39" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="11">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5910.26" PosY="4873.62" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="12">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5612" PosY="4711" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="19">
                <NFAlgoGUI Name="NFRobustProfileFit" PosX="5448" PosY="5151" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="20">
                <NFAlgoGUI Name="NFSetTopoOffset" PosX="5447.33" PosY="5222" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="21">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="4107.16" PosY="5543.79" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="22">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="4107.69" PosY="5473.54" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="23">
                <NFAlgoGUI Name="NF_NED_Abnahme_Tiefennormal_A1_GP01" PosX="4110.25" PosY="5618.13" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="24">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="4449.57" PosY="5850.7" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="25">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="4446.67" PosY="5622.56" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="26">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="4449.16" PosY="5947.43" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="27">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="4447.62" PosY="5706.88" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="28">
                <NFAlgoGUI Name="NF_NED_Abnahme_Tiefennormal_A1_GP02" PosX="4507.81" PosY="5780.36" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="29">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="4891.42" PosY="5773.41" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="30">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="4894.07" PosY="6067.85" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="31">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="4898.28" PosY="5845.03" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="32">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="4895.4" PosY="5957.77" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="33">
                <NFAlgoGUI Name="NF_NED_Abnahme_Tiefennormal_A1_GP03" PosX="5115.57" PosY="5910.02" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="34">
                <NFAlgoGUI Name="NF_NED_Abnahme_Tiefennormal_A1_GP04" PosX="5531.95" PosY="5915.46" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="35">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5371.92" PosY="5847.69" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="36">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5369.04" PosY="5964.47" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="37">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="5367.59" PosY="5766.96" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="38">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="5370.48" PosY="6068.28" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="39">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5824.85" PosY="5852.25" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="40">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="5826.29" PosY="5963.3" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="41">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="5827.73" PosY="6057.04" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="42">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="5820.52" PosY="5771.49" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="43">
                <NFAlgoGUI Name="NF_NED_Abnahme_Tiefennormal_A1_GP05" PosX="5987.81" PosY="5917.15" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="44">
                <NFAlgoGUI Name="NF_NED_Abnahme_Tiefennormal_A1_GP06" PosX="6377.19" PosY="5922.92" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="45">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="6244.52" PosY="5856.58" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="46">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarAdd&gt;" PosX="6245.96" PosY="5976.28" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="47">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="6243.07" PosY="5772.93" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="48">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="6244.52" PosY="6059.92" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="49">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5543.62" PosY="6268.47" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5677.37" PosY="5007.75" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="1">
                <NFAlgoGUI PosX="5763.39" PosY="5244.61" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="5366.18" PosY="4622.96" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="HM_GradPeakWidth [%]">
                <NFAlgoGUI PosX="5144.49" PosY="5238.27" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="HM_MedianWidthRadius [Pix]">
                <NFAlgoGUI PosX="5146.3" PosY="5315.74" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="HM_MinimumSlope">
                <NFAlgoGUI PosX="5135" PosY="5176.57" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="ROI-Height [um]">
                <NFAlgoGUI PosX="5612" PosY="4618" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Working Directory">
                <NFAlgoGUI PosX="5314.94" PosY="6266.5" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="Depth">
                <NFAlgoGUI PosX="5761.52" PosY="5319.45" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
