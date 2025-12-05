<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="LateralnormalY_new">
        <NFComplexEvalNode Index="0" Description="">
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
                <NextTopo NextIndex="6" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="13" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes>
                <NextParameter NextIndex="2" SourceParameterName="NumberPointsX" DestinationParameterName="A" />
                <NextParameter NextIndex="3" SourceParameterName="NumberPointsX" DestinationParameterName="A" />
                <NextParameter NextIndex="0" SourceParameterName="NumberPointsY" DestinationParameterName="SizeY [Pixel]" />
                <NextParameter NextIndex="8" SourceParameterName="NumberPointsY" DestinationParameterName="EndY [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.00000000000000000000</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">2.60000000000000008882</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="4" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.00000000000000000000</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">5.00000000000000000000</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="5" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFParameterUnaryOperation&lt;Functor::NFVarRound&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.00000000000000000000</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="0" SourceParameterName="Result" DestinationParameterName="OffsetX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="5" Description="">
            <NFEvaluation Name="NFParameterUnaryOperation&lt;Functor::NFVarRound&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.00000000000000000000</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="0" SourceParameterName="Result" DestinationParameterName="SizeX [Pixel]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
            <NFEvaluation Name="NFRobustPlaneFit">
                <NFParameterSet>
                    <NFParameter Name="Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.00100000000000000002</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MaximumNumberOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WeightLimitFactor">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">4.00000000000000000000</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="8" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="17" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="7" Description="">
            <NFEvaluation Name="NF_ISO_4287_Parameter_Series">
                <NFParameterSet>
                    <NFParameter Name="Anzahl der Einzelmesstrecken le">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Beginn der Auswertung noffset">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="profile direction [0=x-profiles,1=y-profiles]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="9" SourceParameterName="Mittelwert Rsm" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="8" Description="">
            <NFEvaluation Name="NFExtractLine">
                <NFParameterSet>
                    <NFParameter Name="BeginX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="BeginY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="EndX [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="EndY [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Interpolator">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">NFBiLinear</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Upsampling Factor">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
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
            <NFEvaluation Name="NFParameterOperation&lt;Functor::NFVarMul&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.00000000000000000000</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1000.00000000000000000000</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
            <NFEvaluation Name="NFEraseAngle">
                <NFParameterSet>
                    <NFParameter Name="Angle">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">30.00000000000000000000</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Count">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="11" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="11" Description="">
            <NFEvaluation Name="NFInterpolator">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="13" Description="">
            <NFEvaluation Name="NFRotate90Degrees">
                <NFParameterSet>
                    <NFParameter Name="Rotate Clockwise">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="14" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="14" Description="">
            <NFEvaluation Name="NFRobustPlaneFit">
                <NFParameterSet>
                    <NFParameter Name="Epsilon">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.00100000000000000002</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MaximumNumberOfIterations">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WeightLimitFactor">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">4.00000000000000000000</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="17" Description="">
            <NFEvaluation Name="NFErodeMask">
                <NFParameterSet>
                    <NFParameter Name="Radius [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="18" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="18" Description="">
            <NFEvaluation Name="NFInterpolator">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="7" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="19" Description="">
            <NFEvaluation Name="NFRelativThresholdFilter">
                <NFParameterSet>
                    <NFParameter Name="Cut Height and Intensity">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="LowerHeightThreshold">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.00000000000000000000</NFVariant>
                    </NFParameter>
                    <NFParameter Name="LowerIntensityThreshold">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000000555</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UpperHeightThreshold">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.00000000000000000000</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UpperIntensityThreshold">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.00000000000000000000</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="1" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="0" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="20" Description="">
            <NFEvaluation Name="NFGaussianHighpass">
                <NFParameterSet>
                    <NFParameter Name="Sigma [um]">
                        <NFVariant Type="float" Unit="" UnitMultiplicator="1" UnitExponent="1">2.79999995231628417969</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="19" SourcePort="1" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="20" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="14" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="11" EvalPort="0" MapPort="1" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="9" EvalParameterName="Result" MapName="Rsm" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">14</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2024-10-30 16:50:59</string>
                    <string>2024-11-05 11:18:35</string>
                    <string>2024-11-05 11:24:23</string>
                    <string>2024-11-05 11:30:31</string>
                    <string>2024-11-05 11:32:04</string>
                    <string>2024-11-05 11:32:31</string>
                    <string>2024-11-05 11:35:08</string>
                    <string>2024-11-05 11:35:38</string>
                    <string>2024-11-05 12:15:33</string>
                    <string>2024-11-18 12:54:08</string>
                    <string>2024-11-18 13:03:35</string>
                    <string>2025-04-07 11:40:23</string>
                    <string>2025-04-09 14:10:38</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/Program Files/Nanofocus/evaluation/Plugins/LateralnormalY.ned</string>
                    <string>C:/Program Files/Nanofocus/evaluation/Plugins/LateralnormalY.ned</string>
                    <string>C:/Program Files/Nanofocus/evaluation/Plugins/LateralnormalY.ned</string>
                    <string>C:/ProgramData/NanoFocus/SystemAcceptance/CM/Lateral Y/LateralnormalY.ned</string>
                    <string>C:/ProgramData/NanoFocus/SystemAcceptance/CM/Lateral X/LateralnormalX.ned</string>
                    <string>C:/Program Files/Nanofocus/evaluation/Plugins/LateralnormalX.ned</string>
                    <string>C:/Program Files/Nanofocus/evaluation/Plugins/LateralnormalX.ned</string>
                    <string>C:/ProgramData/NanoFocus/SystemAcceptance/CM/Lateral X/LateralnormalX.ned</string>
                    <string>C:/ProgramData/NanoFocus/SystemAcceptance/CM/Lateral X/LateralnormalX.ned</string>
                    <string>C:/ProgramData/NanoFocus/evaluation/plugins/LateralnormalX.ned</string>
                    <string>C:/ProgramData/NanoFocus/evaluation/plugins/LateralnormalX.ned</string>
                    <string>T:/Hao/Messdaten_Lateral/LateralnormalX_new.ned</string>
                    <string>T:/Hao/Messdaten_Lateral/LateralnormalY_new.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>liborius</string>
                    <string>liborius</string>
                    <string>liborius</string>
                    <string>liborius</string>
                    <string>liborius</string>
                    <string>liborius</string>
                    <string>liborius</string>
                    <string>liborius</string>
                    <string>liborius</string>
                    <string>liborius</string>
                    <string>liborius</string>
                    <string>hao</string>
                    <string>hao</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="LateralnormalY_new">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFRoiFilter" PosX="5377" PosY="5145" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFTopoInfo" PosX="4875" PosY="5045" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4921" PosY="5179" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarDiv&gt;" PosX="4922" PosY="5373" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFParameterUnaryOperation&lt;Functor::NFVarRound&gt;" PosX="5122" PosY="5161" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFParameterUnaryOperation&lt;Functor::NFVarRound&gt;" PosX="5122" PosY="5366" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="5665.67" PosY="5223.56" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NF_ISO_4287_Parameter_Series" PosX="5711.07" PosY="5379.92" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFExtractLine" PosX="5934.83" PosY="5197.81" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="5563.45" PosY="5450.18" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFEraseAngle" PosX="6049.54" PosY="5272.38" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="11">
                <NFAlgoGUI Name="NFInterpolator" PosX="6104.03" PosY="5414.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFRotate90Degrees" PosX="5334" PosY="4984" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="14">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="5728" PosY="4988" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="17">
                <NFAlgoGUI Name="NFErodeMask" PosX="5768.65" PosY="5291.51" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="18">
                <NFAlgoGUI Name="NFInterpolator" PosX="5865.99" PosY="5341.13" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="19">
                <NFAlgoGUI Name="NFRelativThresholdFilter" PosX="5009.91" PosY="4829.21" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="20">
                <NFAlgoGUI Name="NFGaussianHighpass" PosX="4994" PosY="4724" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="6185.29" PosY="4946.98" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="1">
                <NFAlgoGUI PosX="6397.97" PosY="5209.29" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4857" PosY="4731" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamOutput Name="Rsm">
                <NFAlgoGUI PosX="5440.14" PosY="5529.04" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
