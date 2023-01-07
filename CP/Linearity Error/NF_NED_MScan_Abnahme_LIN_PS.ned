<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NF_NED_MScan_Abnahme_LIN_PS">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFMedianHeights">
                <NFParameterSet>
                    <NFParameter Name="HeightRadiusPixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WidthRadiusPixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
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
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="7" SourcePort="0" DestinationPort="0" />
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
        <NFComplexEvalNode Index="7" Description="">
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
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Linearity_PS</NFVariant>
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
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Linearity Profile</NFVariant>
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
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">MScan CLA Certification: Linearity</NFVariant>
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
                <NextParameter NextIndex="7" SourceParameterName="Directory Name" DestinationParameterName="WorkingDirectory" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="0" SourceParameterName="OutputParameter" DestinationParameterName="WidthRadiusPixel" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="11" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Sigma [1e-6 m]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="8" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="7" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="7" EvalParameterName="Label" MapName="DataLabel" />
			<IOParameterMap EvalIndex="7" EvalParameterName="ImageSize_X [Pix]" MapName="ImageWidth [Pix]" />			
            <IOParameterMap EvalIndex="11" EvalParameterName="InputParameter" MapName="GaussSigma [um]" />
            <IOParameterMap EvalIndex="10" EvalParameterName="InputParameter" MapName="MedianRadius [Pix]" />
            <IOParameterMap EvalIndex="7" EvalParameterName="Title" MapName="Title" />
            <IOParameterMap EvalIndex="9" EvalParameterName="Use User Tmp Dir" MapName="UseUserTempDir" />
            <IOParameterMap EvalIndex="9" EvalParameterName="Directory" MapName="WorkingDirectory" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="11" EvalParameterName="OutputParameter" MapName="GaussSigma [um]" />
            <IOParameterMap EvalIndex="10" EvalParameterName="OutputParameter" MapName="MedianRadius [Pix]" />
            <IOParameterMap EvalIndex="6" EvalParameterName="Result" MapName="Wt" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2022-11-22 10:26:39</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_LIN_PS.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>rose</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NF_NED_MScan_Abnahme_LIN_PS">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFMedianHeights" PosX="5110.62" PosY="5094.98" />
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
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="5494.57" PosY="5257.88" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NFTopoGnuplotProfile" PosX="5333.46" PosY="5188.76" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFInterpolator" PosX="4782.71" PosY="5095.28" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFGetUserTmpDir" PosX="5148.23" PosY="5313.88" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5110.05" PosY="5001.96" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="11">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5328.57" PosY="5006.07" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5336.28" PosY="5353.15" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4782.67" PosY="5000.88" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="DataLabel">
                <NFAlgoGUI PosX="5144.71" PosY="5187.59" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="GaussSigma [um]">
                <NFAlgoGUI PosX="5328.45" PosY="4903.61" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="MedianRadius [Pix]">
                <NFAlgoGUI PosX="5102.22" PosY="4899.98" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Title">
                <NFAlgoGUI PosX="5013.12" PosY="5188.77" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="UseUserTempDir">
                <NFAlgoGUI PosX="5014.89" PosY="5272.19" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="WorkingDirectory">
                <NFAlgoGUI PosX="5020.17" PosY="5373.22" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="GaussSigma [um]">
                <NFAlgoGUI PosX="5568.83" PosY="5004.9" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="MedianRadius [Pix]">
                <NFAlgoGUI PosX="4923.83" PosY="5000.79" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Wt">
                <NFAlgoGUI PosX="5496.79" PosY="5347.21" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
