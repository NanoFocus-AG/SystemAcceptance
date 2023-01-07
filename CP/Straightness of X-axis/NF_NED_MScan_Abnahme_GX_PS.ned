<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NF_NED_MScan_Abnahme_GX_PS">
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
                <NextTopo NextIndex="1" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFGaussianFilterCV">
                <NFParameterSet>
                    <NFParameter Name="FilterMode [1: Height,2:Intensity,3:Height+Intensity]">
                        <NFVariant Type="int" Unit="BitMask" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Sigma [1e-6 m]">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">250</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="12" SourcePort="0" DestinationPort="0" />
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
                <NextTopo NextIndex="0" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
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
                <NextParameter NextIndex="5" SourceParameterName="Max" DestinationParameterName="A" />
                <NextParameter NextIndex="5" SourceParameterName="Min" DestinationParameterName="B" />
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
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="6" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
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
        <NFComplexEvalNode Index="8" Description="">
            <NFEvaluation Name="NFInterpolator">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="9" Description="">
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
                <NextParameter NextIndex="12" SourceParameterName="Directory Name" DestinationParameterName="WorkingDirectory" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">250</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Sigma [1e-6 m]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="11" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="0" SourceParameterName="OutputParameter" DestinationParameterName="WidthRadiusPixel" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="12" Description="">
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
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">StraightnessX_PS</NFVariant>
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
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Straightness-X Profile</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Label X-Axis">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">X [mm]</NFVariant>
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
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">MScan CLA Certification: Straightness X</NFVariant>
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
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">2</NFVariant>
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
        <InputTopoMapping>
            <IOTopoMap EvalIndex="8" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="12" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="12" EvalParameterName="Label" MapName="DataLabel" />
            <IOParameterMap EvalIndex="10" EvalParameterName="InputParameter" MapName="GaussSigma [um]" />
            <IOParameterMap EvalIndex="12" EvalParameterName="ImageSize_X [Pix]" MapName="ImageWidth [Pix]" />
            <IOParameterMap EvalIndex="11" EvalParameterName="InputParameter" MapName="MedianRadius [Pix]" />
            <IOParameterMap EvalIndex="12" EvalParameterName="Title" MapName="Title" />
            <IOParameterMap EvalIndex="9" EvalParameterName="Use User Tmp Dir" MapName="UseUserTempDir" />
            <IOParameterMap EvalIndex="9" EvalParameterName="Directory" MapName="WorkingDirectory" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="10" EvalParameterName="OutputParameter" MapName="GaussSigma [um]" />
            <IOParameterMap EvalIndex="11" EvalParameterName="OutputParameter" MapName="MedianRadius [Pix]" />
            <IOParameterMap EvalIndex="6" EvalParameterName="Result" MapName="Wt" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2022-11-28 10:59:33</string>
                    <string>2022-11-29 10:08:26</string>
                    <string>2022-11-29 10:09:31</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_GX_PS.ned</string>
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_GX_PS.ned</string>
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_GX_PS.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>rose</string>
                    <string>rose</string>
                    <string>rose</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NF_NED_MScan_Abnahme_GX_PS">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFMedianHeights" PosX="5109.53" PosY="5095.57" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFGaussianFilterCV" PosX="5325.9" PosY="5096.67" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFRobustProfileFit" PosX="4933.11" PosY="5094.05" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFProfStatistics" PosX="5494.9" PosY="5097.1" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="5493.31" PosY="5176.29" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="5493.57" PosY="5252.41" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFInterpolator" PosX="4773.83" PosY="5093.5" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFGetUserTmpDir" PosX="5146.63" PosY="5314.71" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5322.9" PosY="5003.96" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="11">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5114.08" PosY="5004.4" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="12">
                <NFAlgoGUI Name="NFTopoGnuplotProfile" PosX="5324.93" PosY="5217.11" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5326.1" PosY="5401.56" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4779.12" PosY="4997.92" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="DataLabel">
                <NFAlgoGUI PosX="5159.58" PosY="5217.88" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="GaussSigma [um]">
                <NFAlgoGUI PosX="5321.08" PosY="4907.09" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="ImageWidth [Pix]">
                <NFAlgoGUI PosX="4876.7" PosY="5220.36" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="MedianRadius [Pix]">
                <NFAlgoGUI PosX="5113.66" PosY="4908.82" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Title">
                <NFAlgoGUI PosX="5035.47" PosY="5218.33" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="UseUserTempDir">
                <NFAlgoGUI PosX="4954.39" PosY="5312.03" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="WorkingDirectory">
                <NFAlgoGUI PosX="4962.44" PosY="5379.72" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="GaussSigma [um]">
                <NFAlgoGUI PosX="5523.27" PosY="5007.35" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="MedianRadius [Pix]">
                <NFAlgoGUI PosX="4918.48" PosY="5005.73" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Wt">
                <NFAlgoGUI PosX="5499.8" PosY="5351.71" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
