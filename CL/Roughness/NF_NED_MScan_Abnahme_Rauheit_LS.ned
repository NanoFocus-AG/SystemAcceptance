<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NF_NED_MScan_Abnahme_Rauheit_LS">
        <NFComplexEvalNode Index="1" Description="">
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
                <NextTopo NextIndex="4" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NF_ISO_4287_Parameter">
                <NFParameterSet>
                    <NFParameter Name="Anzahl der Einzelmesstrecken le">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">5</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Beginn der Auswertung noffset">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Rpc dicrimination threshold peak">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000000555</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Rpc dicrimination threshold valley">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000000555</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
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
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Roughness_LS</NFVariant>
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
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Roughness Profile</NFVariant>
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
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">MScan CLS Certification: Roughness</NFVariant>
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
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Y_Min">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-10</NFVariant>
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
        <NFComplexEvalNode Index="4" Description="">
            <NFEvaluation Name="NFMedianFilter">
                <NFParameterSet>
                    <NFParameter Name="FilterMode [1: Height,2:Intensity,3:Height+Intensity]">
                        <NFVariant Type="int" Unit="BitMask" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="HeightRadiusPixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WidthRadiusPixel">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
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
            <NFEvaluation Name="NFGaussProfile">
                <NFParameterSet>
                    <NFParameter Name="Crop Region">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="CutOff Wavelength [um]">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">800</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Direction [0=x;1=y]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use FFT">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Use Low-Pass">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="6" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
            <NFEvaluation Name="NFGaussProfile">
                <NFParameterSet>
                    <NFParameter Name="Crop Region">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="CutOff Wavelength [um]">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">7</NFVariant>
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
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="2" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="8" Description="">
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
                <NextParameter NextIndex="3" SourceParameterName="Directory Name" DestinationParameterName="WorkingDirectory" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="9" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">3</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="4" SourceParameterName="OutputParameter" DestinationParameterName="WidthRadiusPixel" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">800</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="5" SourceParameterName="OutputParameter" DestinationParameterName="CutOff Wavelength [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="11" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">7</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="6" SourceParameterName="OutputParameter" DestinationParameterName="CutOff Wavelength [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="12" Description="">
            <NFEvaluation Name="NF_NED_MScan_Abnahme_PreProc_LS">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="1" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="12" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="6" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="3" EvalParameterName="Label" MapName="DataLabel" />
            <IOParameterMap EvalIndex="10" EvalParameterName="InputParameter" MapName="Gauss CutOff High Pass" />
            <IOParameterMap EvalIndex="11" EvalParameterName="InputParameter" MapName="Gauss CutOff Low Pass" />
            <IOParameterMap EvalIndex="3" EvalParameterName="ImageSize_X [Pix]" MapName="ImageWidth [Pix]" />
            <IOParameterMap EvalIndex="9" EvalParameterName="InputParameter" MapName="Median Radius [Pix]" />
            <IOParameterMap EvalIndex="3" EvalParameterName="Title" MapName="Title" />
            <IOParameterMap EvalIndex="8" EvalParameterName="Use User Tmp Dir" MapName="UseUserTempDir" />
            <IOParameterMap EvalIndex="8" EvalParameterName="Directory" MapName="WorkingDirectory" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="10" EvalParameterName="OutputParameter" MapName="Gauss CutOff High Pass" />
            <IOParameterMap EvalIndex="11" EvalParameterName="OutputParameter" MapName="Gauss CutOff Low Pass" />
            <IOParameterMap EvalIndex="9" EvalParameterName="OutputParameter" MapName="Median Radius [Pix]" />
            <IOParameterMap EvalIndex="2" EvalParameterName="Ra" MapName="Ra" />
            <IOParameterMap EvalIndex="2" EvalParameterName="Rz" MapName="Rz" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2022-11-22 10:29:15</string>
                    <string>2022-12-16 15:36:33</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_Rauheit_LS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Rauheit_LS.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>rose</string>
                    <string>rose</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NF_NED_MScan_Abnahme_Rauheit_LS">
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFRobustProfileFit" PosX="4899" PosY="5062" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NF_ISO_4287_Parameter" PosX="5062.65" PosY="5411.03" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFTopoGnuplotProfile" PosX="5068.8" PosY="5325.2" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="4">
                <NFAlgoGUI Name="NFMedianFilter" PosX="4903" PosY="5148" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="5">
                <NFAlgoGUI Name="NFGaussProfile" PosX="4905" PosY="5234" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFGaussProfile" PosX="4908" PosY="5326.22" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFGetUserTmpDir" PosX="5068.19" PosY="5238.18" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4585.38" PosY="5143.01" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4656.95" PosY="5234.32" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="11">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4739.13" PosY="5324.93" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="12">
                <NFAlgoGUI Name="NF_NED_MScan_Abnahme_PreProc_LS" PosX="4900.48" PosY="4981.24" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="4908.45" PosY="5552.73" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4900.33" PosY="4898.75" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="DataLabel">
                <NFAlgoGUI PosX="5254.53" PosY="5323.82" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Gauss CutOff High Pass">
                <NFAlgoGUI PosX="4394.1" PosY="5235.4" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Gauss CutOff Low Pass">
                <NFAlgoGUI PosX="4395.88" PosY="5323.7" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="ImageWidth [Pix]">
                <NFAlgoGUI PosX="5571.32" PosY="5327.13" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Median Radius [Pix]">
                <NFAlgoGUI PosX="4390.1" PosY="5143.89" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Title">
                <NFAlgoGUI PosX="5416.95" PosY="5323.53" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="UseUserTempDir">
                <NFAlgoGUI PosX="5069.5" PosY="5069.5" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="WorkingDirectory">
                <NFAlgoGUI PosX="5070.81" PosY="5129" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="Gauss CutOff High Pass">
                <NFAlgoGUI PosX="4659.05" PosY="5522.31" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Gauss CutOff Low Pass">
                <NFAlgoGUI PosX="4748.26" PosY="5608.7" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Median Radius [Pix]">
                <NFAlgoGUI PosX="4586" PosY="5453.47" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Ra">
                <NFAlgoGUI PosX="5065.26" PosY="5568.6" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Rz">
                <NFAlgoGUI PosX="5062.9" PosY="5498.02" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
