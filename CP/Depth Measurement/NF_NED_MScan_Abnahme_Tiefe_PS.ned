<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NF_NED_MScan_Abnahme_Tiefe_PS">
        <NFComplexEvalNode Index="42" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="45" SourceParameterName="OutputParameter" DestinationParameterName="GaussCutOff [um]" />
                <NextParameter NextIndex="46" SourceParameterName="OutputParameter" DestinationParameterName="GaussCutOff [um]" />
                <NextParameter NextIndex="47" SourceParameterName="OutputParameter" DestinationParameterName="GaussCutOff [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="43" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="45" SourceParameterName="OutputParameter" DestinationParameterName="MedianRadius [Pix]" />
                <NextParameter NextIndex="46" SourceParameterName="OutputParameter" DestinationParameterName="MedianRadius [Pix]" />
                <NextParameter NextIndex="47" SourceParameterName="OutputParameter" DestinationParameterName="MedianRadius [Pix]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="45" Description="">
            <NFEvaluation Name="NF_NED_MScan_Abnahme_Tiefe01">
                <NFParameterSet>
                    <NFParameter Name="DataLabel">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Depth Profile I</NFVariant>
                    </NFParameter>
                    <NFParameter Name="GaussCutOff [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                    <NFParameter Name="HeightThreshold [um]">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-0.349999994</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageName">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Depth01_PS</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageWidth [Pix]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1024</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MedianRadius [Pix]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Title">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">MScan CLA Certification: Depth I</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UseUserTempDir">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WorkingDirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1" />
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="46" Description="">
            <NFEvaluation Name="NF_NED_MScan_Abnahme_Tiefe02">
                <NFParameterSet>
                    <NFParameter Name="DataLabel">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Depth Profile II</NFVariant>
                    </NFParameter>
                    <NFParameter Name="GaussCutOff [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                    <NFParameter Name="HeightThreshold [um]">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-0.349999994</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageName">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Depth02_PS</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageWidth [Pix]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1024</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MedianRadius [Pix]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Title">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">MScan CLA Certification: Depth II</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UseUserTempDir">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WorkingDirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1" />
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="47" Description="">
            <NFEvaluation Name="NF_NED_MScan_Abnahme_Tiefe03">
                <NFParameterSet>
                    <NFParameter Name="DataLabel">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Depth Profile III</NFVariant>
                    </NFParameter>
                    <NFParameter Name="GaussCutOff [um]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                    <NFParameter Name="HeightThreshold [um]">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-0.349999994</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageName">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Depth03_PS</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ImageWidth [Pix]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1024</NFVariant>
                    </NFParameter>
                    <NFParameter Name="MedianRadius [Pix]">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Title">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">MScan CLA Certification: Depth III</NFVariant>
                    </NFParameter>
                    <NFParameter Name="UseUserTempDir">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="WorkingDirectory">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1" />
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="48" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-0.3499999999999999778</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="45" SourceParameterName="OutputParameter" DestinationParameterName="HeightThreshold [um]" />
                <NextParameter NextIndex="46" SourceParameterName="OutputParameter" DestinationParameterName="HeightThreshold [um]" />
                <NextParameter NextIndex="47" SourceParameterName="OutputParameter" DestinationParameterName="HeightThreshold [um]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="49" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1024</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="45" SourceParameterName="OutputParameter" DestinationParameterName="ImageWidth [Pix]" />
                <NextParameter NextIndex="46" SourceParameterName="OutputParameter" DestinationParameterName="ImageWidth [Pix]" />
                <NextParameter NextIndex="47" SourceParameterName="OutputParameter" DestinationParameterName="ImageWidth [Pix]" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="50" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="45" SourceParameterName="OutputParameter" DestinationParameterName="UseUserTempDir" />
                <NextParameter NextIndex="46" SourceParameterName="OutputParameter" DestinationParameterName="UseUserTempDir" />
                <NextParameter NextIndex="47" SourceParameterName="OutputParameter" DestinationParameterName="UseUserTempDir" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="51" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">./</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="47" SourceParameterName="OutputParameter" DestinationParameterName="WorkingDirectory" />
                <NextParameter NextIndex="46" SourceParameterName="OutputParameter" DestinationParameterName="WorkingDirectory" />
                <NextParameter NextIndex="45" SourceParameterName="OutputParameter" DestinationParameterName="WorkingDirectory" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="45" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="46" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="47" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="45" EvalPort="1" MapPort="0" />
            <IOTopoMap EvalIndex="46" EvalPort="1" MapPort="1" />
            <IOTopoMap EvalIndex="47" EvalPort="1" MapPort="2" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="45" EvalParameterName="DataLabel" MapName="DataLabel_01" />
            <IOParameterMap EvalIndex="46" EvalParameterName="DataLabel" MapName="DataLabel_02" />
            <IOParameterMap EvalIndex="47" EvalParameterName="DataLabel" MapName="DataLabel_03" />
            <IOParameterMap EvalIndex="42" EvalParameterName="InputParameter" MapName="GaussCutOff [um]" />
            <IOParameterMap EvalIndex="48" EvalParameterName="InputParameter" MapName="HeightThreshold [um]" />
            <IOParameterMap EvalIndex="49" EvalParameterName="InputParameter" MapName="ImageWidth [Pix]" />
            <IOParameterMap EvalIndex="43" EvalParameterName="InputParameter" MapName="MedianRadius [Pix]" />
            <IOParameterMap EvalIndex="45" EvalParameterName="Title" MapName="Title_01" />
            <IOParameterMap EvalIndex="46" EvalParameterName="Title" MapName="Title_02" />
            <IOParameterMap EvalIndex="47" EvalParameterName="Title" MapName="Title_03" />
            <IOParameterMap EvalIndex="50" EvalParameterName="InputParameter" MapName="UseUserTmpDir" />
            <IOParameterMap EvalIndex="51" EvalParameterName="InputParameter" MapName="WorkingDir" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="42" EvalParameterName="OutputParameter" MapName="Gauss CutOff [um]" />
            <IOParameterMap EvalIndex="43" EvalParameterName="OutputParameter" MapName="MedianRadius [Pix]" />
            <IOParameterMap EvalIndex="45" EvalParameterName="Wt" MapName="Wt1" />
            <IOParameterMap EvalIndex="46" EvalParameterName="Wt" MapName="Wt2" />
            <IOParameterMap EvalIndex="47" EvalParameterName="Wt" MapName="Wt3" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">8</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2022-11-28 11:24:14</string>
                    <string>2022-12-16 10:22:19</string>
                    <string>2022-12-16 10:24:36</string>
                    <string>2022-12-16 10:41:58</string>
                    <string>2022-12-16 10:50:17</string>
                    <string>2022-12-16 10:53:43</string>
                    <string>2022-12-16 11:46:52</string>
                    <string>2022-12-16 11:48:17</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>E:/code/NFEval_Trunk/NFEvalPlugins/NFComplexFilters/NF_NED_MScan_Abnahme_Tiefe_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe_PS.ned</string>
                    <string>E:/build/NFEvalSDK_VS2017_Win64/bin/Plugins/NF_NED_MScan_Abnahme_Tiefe_PS.ned</string>
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
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NF_NED_MScan_Abnahme_Tiefe_PS">
            <NFComplexAlgoNodeGUI Index="42">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5100.33" PosY="4219.1" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="43">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5100.04" PosY="4486.89" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="45">
                <NFAlgoGUI Name="NF_NED_MScan_Abnahme_Tiefe01" PosX="4724.89" PosY="4130.6" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="46">
                <NFAlgoGUI Name="NF_NED_MScan_Abnahme_Tiefe02" PosX="4739.09" PosY="4560.21" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="47">
                <NFAlgoGUI Name="NF_NED_MScan_Abnahme_Tiefe03" PosX="4757.2" PosY="5005.94" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="48">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5096.67" PosY="4366" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="49">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5098.67" PosY="4426.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="50">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5096.33" PosY="4695.67" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="51">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="5094.33" PosY="4767.67" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="4721.33" PosY="4334.67" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="1">
                <NFAlgoGUI PosX="4740" PosY="4740" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoOutput Index="2">
                <NFAlgoGUI PosX="4754.67" PosY="5192" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4475.9" PosY="4555.49" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="DataLabel_01">
                <NFAlgoGUI PosX="4724.84" PosY="4050.27" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="DataLabel_02">
                <NFAlgoGUI PosX="4742.42" PosY="4495.52" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="DataLabel_03">
                <NFAlgoGUI PosX="4752.29" PosY="4912.15" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="GaussCutOff [um]">
                <NFAlgoGUI PosX="5299.11" PosY="4216.47" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="HeightThreshold [um]">
                <NFAlgoGUI PosX="5282.67" PosY="4366.33" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="ImageWidth [Pix]">
                <NFAlgoGUI PosX="5291" PosY="4429" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="MedianRadius [Pix]">
                <NFAlgoGUI PosX="5291.68" PosY="4485.32" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Title_01">
                <NFAlgoGUI PosX="4721.33" PosY="3997.33" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Title_02">
                <NFAlgoGUI PosX="4739" PosY="4433" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Title_03">
                <NFAlgoGUI PosX="4751.67" PosY="4843.67" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="UseUserTmpDir">
                <NFAlgoGUI PosX="5303.67" PosY="4692.33" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="WorkingDir">
                <NFAlgoGUI PosX="5308.33" PosY="4767" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="Gauss CutOff [um]">
                <NFAlgoGUI PosX="5102.76" PosY="4313.56" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="MedianRadius [Pix]">
                <NFAlgoGUI PosX="5100.61" PosY="4627.18" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Wt1">
                <NFAlgoGUI PosX="4724" PosY="4232" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Wt2">
                <NFAlgoGUI PosX="4741.33" PosY="4649.33" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="Wt3">
                <NFAlgoGUI PosX="4760" PosY="5096" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
