<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NFHybridMasterStepDistance">
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFHybridMasterMultiStepDetector2X">
                <NFParameterSet>
                    <NFParameter Name="Distance To Border">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Gradient Peak Width">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Level Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Median Height Radius">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Median Width Radius">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Minimum Slope">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000001</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Step Steepness">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Step Width">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-006" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Steps from Gradient">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="24" SourceParameterName="First Step Pos" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
            <NFEvaluation Name="NFHybridMasterMultiStepDetector2X">
                <NFParameterSet>
                    <NFParameter Name="Distance To Border">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Gradient Peak Width">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Level Order">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Median Height Radius">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Median Width Radius">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">25</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Minimum Slope">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000001</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Step Steepness">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Step Width">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-006" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Steps from Gradient">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="24" SourceParameterName="First Step Pos" DestinationParameterName="B" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="16" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Median Width Radius" />
                <NextParameter NextIndex="2" SourceParameterName="OutputParameter" DestinationParameterName="Median Width Radius" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="17" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Median Height Radius" />
                <NextParameter NextIndex="2" SourceParameterName="OutputParameter" DestinationParameterName="Median Height Radius" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="18" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0.10000000000000001</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Minimum Slope" />
                <NextParameter NextIndex="2" SourceParameterName="OutputParameter" DestinationParameterName="Minimum Slope" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="19" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">1.2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Step Steepness" />
                <NextParameter NextIndex="2" SourceParameterName="OutputParameter" DestinationParameterName="Step Steepness" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="20" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Steps from Gradient" />
                <NextParameter NextIndex="2" SourceParameterName="OutputParameter" DestinationParameterName="Steps from Gradient" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="21" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">20</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Gradient Peak Width" />
                <NextParameter NextIndex="2" SourceParameterName="OutputParameter" DestinationParameterName="Gradient Peak Width" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="22" Description="">
            <NFEvaluation Name="NFParameterMultiplexer">
                <NFParameterSet>
                    <NFParameter Name="InputParameter">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-006" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="1" SourceParameterName="OutputParameter" DestinationParameterName="Step Width" />
                <NextParameter NextIndex="2" SourceParameterName="OutputParameter" DestinationParameterName="Step Width" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="24" Description="">
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
                <NextParameter NextIndex="25" SourceParameterName="Result" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="25" Description="">
            <NFEvaluation Name="NFParameterUnaryOperation&lt;Functor::NFVarAbs&gt;">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="1" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="2" EvalPort="0" MapPort="1" />
        </InputTopoMapping>
        <OutputTopoMapping />
        <InputParameterMapping>
            <IOParameterMap EvalIndex="21" EvalParameterName="InputParameter" MapName="Gradient Peak Width" />
            <IOParameterMap EvalIndex="17" EvalParameterName="InputParameter" MapName="Median Height Radius" />
            <IOParameterMap EvalIndex="16" EvalParameterName="InputParameter" MapName="Median Width Rdius" />
            <IOParameterMap EvalIndex="18" EvalParameterName="InputParameter" MapName="Minimum Slope" />
            <IOParameterMap EvalIndex="19" EvalParameterName="InputParameter" MapName="Step Steepness" />
            <IOParameterMap EvalIndex="22" EvalParameterName="InputParameter" MapName="Step Width" />
            <IOParameterMap EvalIndex="20" EvalParameterName="InputParameter" MapName="Steps from Gradient" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="25" EvalParameterName="Result" MapName="Distance" />
            <IOParameterMap EvalIndex="1" EvalParameterName="First Step Pos" MapName="First Step Pos 1" />
            <IOParameterMap EvalIndex="2" EvalParameterName="First Step Pos" MapName="First Step Pos 2" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">21</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2018-12-17 13:42:58</string>
                    <string>2018-12-17 13:49:33</string>
                    <string>2018-12-17 14:52:23</string>
                    <string>2019-01-03 11:00:39</string>
                    <string>2019-01-03 11:26:16</string>
                    <string>2019-01-03 12:43:30</string>
                    <string>2019-01-03 13:32:42</string>
                    <string>2019-01-03 13:34:21</string>
                    <string>2019-01-03 13:44:08</string>
                    <string>2019-01-03 14:26:13</string>
                    <string>2019-01-03 14:53:02</string>
                    <string>2019-01-24 14:08:25</string>
                    <string>2019-01-24 15:19:22</string>
                    <string>2019-01-24 15:36:47</string>
                    <string>2019-01-24 15:50:33</string>
                    <string>2019-01-24 15:53:48</string>
                    <string>2019-01-24 15:59:01</string>
                    <string>2019-01-25 14:46:19</string>
                    <string>2019-01-25 14:53:08</string>
                    <string>2019-01-25 14:53:26</string>
                    <string>2019-01-25 14:54:18</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
                    <string>C:/build/myEvalPlugins/NFHybridMasterStepDistance.ned</string>
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
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NFHybridMasterStepDistance">
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFHybridMasterMultiStepDetector2X" PosX="4679.3" PosY="4645.36" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFHybridMasterMultiStepDetector2X" PosX="4684.22" PosY="5073.53" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="16">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4428" PosY="5073" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="17">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4434" PosY="4998" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="18">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4424" PosY="4927" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="19">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4424" PosY="4855" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="20">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4422" PosY="4794" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="21">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4424" PosY="4718" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="22">
                <NFAlgoGUI Name="NFParameterMultiplexer" PosX="4427" PosY="4645" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="24">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarSub&gt;" PosX="4681" PosY="4846" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="25">
                <NFAlgoGUI Name="NFParameterUnaryOperation&lt;Functor::NFVarAbs&gt;" PosX="4947" PosY="4846" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="4680.57" PosY="4522.71" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoTopoInput Index="1">
                <NFAlgoGUI PosX="4686.47" PosY="5205.47" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="Gradient Peak Width">
                <NFAlgoGUI PosX="4217" PosY="4719" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Median Height Radius">
                <NFAlgoGUI PosX="4222" PosY="4997" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Median Width Rdius">
                <NFAlgoGUI PosX="4225" PosY="5074" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Minimum Slope">
                <NFAlgoGUI PosX="4216" PosY="4926" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Step Steepness">
                <NFAlgoGUI PosX="4215" PosY="4855" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Step Width">
                <NFAlgoGUI PosX="4210" PosY="4645" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="Steps from Gradient">
                <NFAlgoGUI PosX="4216" PosY="4793" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="Distance">
                <NFAlgoGUI PosX="5252.76" PosY="4846.15" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="First Step Pos 1">
                <NFAlgoGUI PosX="4949.76" PosY="4645.6" />
            </NFComplexAlgoParamOutput>
            <NFComplexAlgoParamOutput Name="First Step Pos 2">
                <NFAlgoGUI PosX="4942.13" PosY="5072.88" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
