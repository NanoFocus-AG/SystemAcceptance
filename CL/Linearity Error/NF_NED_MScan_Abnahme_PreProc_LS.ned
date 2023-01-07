<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NF_NED_MScan_Abnahme_PreProc_LS">
        <NFComplexEvalNode Index="8" Description="">
            <NFEvaluation Name="NFInterpolator">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="10" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="13" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
            <NFEvaluation Name="NFCreateCorrectionProfile">
                <NFParameterSet>
                    <NFParameter Name="Order X">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">
                            <Value>1</Value>
                            <MetaInfo>
                                <NFParameterSet>
                                    <NFParameter Name="default">
                                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="max">
                                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">13</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="min">
                                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                                    </NFParameter>
                                </NFParameterSet>
                            </MetaInfo>
                        </NFVariant>
                    </NFParameter>
                    <NFParameter Name="Order Y">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">
                            <Value>0</Value>
                            <MetaInfo>
                                <NFParameterSet>
                                    <NFParameter Name="default">
                                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="max">
                                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">13</NFVariant>
                                    </NFParameter>
                                    <NFParameter Name="min">
                                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                                    </NFParameter>
                                </NFParameterSet>
                            </MetaInfo>
                        </NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="14" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="12" Description="">
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
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="13" Description="">
            <NFEvaluation Name="NFMscanRemoveCurvature">
                <NFParameterSet>
                    <NFParameter Name="Curvature Correction">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Intensity Correction">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Linear Channel Correction">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="SlopeFromProfile">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Threshold Hysteresis">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Window Width [Pixel]">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Windowed Linear Channel Correction">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="12" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="14" Description="">
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
                <NextTopo NextIndex="15" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="13" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes>
                <NextParameter NextIndex="17" SourceParameterName="Out4_Coefficients" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="15" Description="">
            <NFEvaluation Name="NFIntensityToHeight">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="16" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="16" Description="">
            <NFEvaluation Name="NFFFTWBandFilter">
                <NFParameterSet>
                    <NFParameter Name="Maximum Lambda">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Minimum Lambda">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">200</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Out-Imag-Part">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Out-Inverse">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Out-Magnitude">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Out-Phase">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Out-Real-Part">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Remove DC">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Shift Spectrum">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Padding">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Stop Band">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Window (0:Gauss, 1:Rect, 2:Sinc)">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="13" SourcePort="0" DestinationPort="2" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="17" Description="">
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
                <NextParameter NextIndex="13" SourceParameterName="Result" DestinationParameterName="SlopeFromProfile" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="8" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="12" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping />
        <OutputParameterMapping />
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">26</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2022-11-04 09:59:29</string>
                    <string>2022-11-04 10:05:32</string>
                    <string>2022-11-04 10:12:18</string>
                    <string>2022-11-04 10:15:57</string>
                    <string>2022-11-04 10:16:05</string>
                    <string>2022-11-04 10:16:41</string>
                    <string>2022-11-04 10:23:05</string>
                    <string>2022-11-04 10:23:36</string>
                    <string>2022-11-04 10:41:54</string>
                    <string>2022-11-04 10:42:07</string>
                    <string>2022-11-04 10:42:13</string>
                    <string>2022-11-04 10:42:38</string>
                    <string>2022-11-04 10:52:12</string>
                    <string>2022-11-07 08:26:11</string>
                    <string>2022-11-07 12:35:04</string>
                    <string>2022-11-09 10:23:41</string>
                    <string>2022-11-14 15:34:22</string>
                    <string>2022-11-14 16:22:31</string>
                    <string>2022-11-14 16:40:27</string>
                    <string>2022-11-14 16:41:07</string>
                    <string>2022-11-14 16:43:00</string>
                    <string>2022-11-17 15:50:13</string>
                    <string>2022-11-17 16:14:04</string>
                    <string>2022-11-17 16:14:49</string>
                    <string>2022-11-17 16:15:39</string>
                    <string>2022-11-28 17:11:38</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GY.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GY.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_LIN.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_LIN.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_LIN.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GY.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX_PS.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX_PS.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX_PS.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX_PS.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_GX_PS.ned</string>
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_GX_LS.ned</string>
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_PreProc.ned</string>
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_PreProc.ned</string>
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_PreProc_LS.ned</string>
                    <string>E:/build/myEvalPlugins/NF_NED_MScan_Abnahme_PreProc_LS.ned</string>
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
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NF_NED_MScan_Abnahme_PreProc_LS">
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFInterpolator" PosX="4785.03" PosY="4927.84" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFCreateCorrectionProfile" PosX="5018.8" PosY="4925.62" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="12">
                <NFAlgoGUI Name="NFTopoToProfile" PosX="4784.19" PosY="5287.79" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFMscanRemoveCurvature" PosX="4785" PosY="5075" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="14">
                <NFAlgoGUI Name="NFRobustProfileFit" PosX="5030" PosY="5082" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="15">
                <NFAlgoGUI Name="NFIntensityToHeight" PosX="5025" PosY="5175" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="16">
                <NFAlgoGUI Name="NFFFTWBandFilter" PosX="4851" PosY="5174" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="17">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarGetVectorElement&gt;" PosX="4877" PosY="4987" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="4785.01" PosY="5396.25" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4787.21" PosY="4843" />
            </NFComplexAlgoTopoInput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
