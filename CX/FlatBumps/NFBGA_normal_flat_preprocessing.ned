<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<NFComplexEvaluationContainer Version="1.6">
    <NFComplexEvaluation Version="1.6" Name="NFBGA_normal_flat_preprocessing">
        <NFComplexEvalNode Index="0" Description="">
            <NFEvaluation Name="NFTopoStatistic">
                <NFParameterSet>
                    <NFParameter Name="Height Quantile Vector">
                        <NFVariant Type="double []" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="HeightQuantile [%]">
                        <NFVariant Type="float" Unit="%" UnitMultiplicator="1" UnitExponent="1">30</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Intensity Quantile Vector">
                        <NFVariant Type="double []" Unit="" UnitMultiplicator="1" UnitExponent="1" />
                    </NFParameter>
                    <NFParameter Name="IntensityQuantile [%]">
                        <NFVariant Type="float" Unit="%" UnitMultiplicator="1" UnitExponent="1">50</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="2" SourceParameterName="Quantile Height" DestinationParameterName="A" />
                <NextParameter NextIndex="17" SourceParameterName="Quantile Height" DestinationParameterName="A" />
                <NextParameter NextIndex="20" SourceParameterName="Quantile Height" DestinationParameterName="A" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="1" Description="">
            <NFEvaluation Name="NFUnaryHeightFunctor&lt;Functor::NFHeightAddConst&gt;">
                <NFParameterSet>
                    <NFParameter Name="Offset">
                        <NFVariant Type="float" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="3" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="2" Description="">
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
                <NextParameter NextIndex="1" SourceParameterName="Result" DestinationParameterName="Offset" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="3" Description="">
            <NFEvaluation Name="NFThresholdHeights">
                <NFParameterSet>
                    <NFParameter Name="Cut Height and Intensity">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="lower Height">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-10</NFVariant>
                    </NFParameter>
                    <NFParameter Name="upper Height">
                        <NFVariant Type="float" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="12" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="6" Description="">
            <NFEvaluation Name="NFTopoToProfile">
                <NFParameterSet>
                    <NFParameter Name="DirectionOfReduction">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ReductionType">
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
        <NFComplexEvalNode Index="7" Description="">
            <NFEvaluation Name="NFTopoInfo">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="9" SourceParameterName="NumberPointsX" DestinationParameterName="Topo Size" />
                <NextParameter NextIndex="10" SourceParameterName="NumberPointsY" DestinationParameterName="Topo Size" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="8" Description="">
            <NFEvaluation Name="NFTopoToProfile">
                <NFParameterSet>
                    <NFParameter Name="DirectionOfReduction">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="ReductionType">
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
            <NFEvaluation Name="NFProfileToTopo">
                <NFParameterSet>
                    <NFParameter Name="Direction">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Topo Size">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="13" SourcePort="0" DestinationPort="1" />
                <NextTopo NextIndex="15" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="10" Description="">
            <NFEvaluation Name="NFProfileToTopo">
                <NFParameterSet>
                    <NFParameter Name="Direction">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Topo Size">
                        <NFVariant Type="int64" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="15" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="11" Description="">
            <NFEvaluation Name="NFHeightAdd">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="16" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="12" Description="">
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
                <NextTopo NextIndex="6" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="7" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="13" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="11" SourcePort="1" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="13" Description="">
            <NFEvaluation Name="NFHeightSub">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="8" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="15" Description="">
            <NFEvaluation Name="NFHeightAdd">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="11" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="16" Description="">
            <NFEvaluation Name="NFHeightSub">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="18" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="17" Description="">
            <NFEvaluation Name="NFVarAdd">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">-5</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="18" SourceParameterName="Result" DestinationParameterName="lower Height" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="18" Description="">
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
                <NextTopo NextIndex="21" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="25" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="20" Description="">
            <NFEvaluation Name="NFVarAdd">
                <NFParameterSet>
                    <NFParameter Name="A">
                        <NFVariant Type="double" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="B">
                        <NFVariant Type="double" Unit="m" UnitMultiplicator="1e-06" UnitExponent="1">10</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes>
                <NextParameter NextIndex="21" SourceParameterName="Result" DestinationParameterName="lower Height" />
            </NextParameterNodes>
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="21" Description="">
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
                <NextTopo NextIndex="24" SourcePort="0" DestinationPort="0" />
                <NextTopo NextIndex="26" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="23" Description="">
            <NFEvaluation Name="NFBlobAnalyzer">
                <NFParameterSet>
                    <NFParameter Name="Get Absolute Height">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Get Diameter by Ellipse-Fit">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Height Method">
                        <NFVariant Type="char" Unit="" UnitMultiplicator="1" UnitExponent="1">Standard</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Height Quantile">
                        <NFVariant Type="double" Unit="%" UnitMultiplicator="1" UnitExponent="1">50</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Max. Item Size">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">999999</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Min. Intensity for Height">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">0</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Min. Item Size">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">100</NFVariant>
                    </NFParameter>
                    <NFParameter Name="Output Object Index">
                        <NFVariant Type="bool" Unit="" UnitMultiplicator="1" UnitExponent="1">1</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="24" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="24" Description="">
            <NFEvaluation Name="NFMaskBinaryANDNot">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="25" SourcePort="0" DestinationPort="1" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="25" Description="">
            <NFEvaluation Name="NFMaskBinaryANDNot">
                <NFParameterSet />
            </NFEvaluation>
            <NextTopoNodes />
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="26" Description="">
            <NFEvaluation Name="NFErodeMask">
                <NFParameterSet>
                    <NFParameter Name="Radius [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="27" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <NFComplexEvalNode Index="27" Description="">
            <NFEvaluation Name="NFDilateMask">
                <NFParameterSet>
                    <NFParameter Name="Radius [Pixel]">
                        <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">2</NFVariant>
                    </NFParameter>
                </NFParameterSet>
            </NFEvaluation>
            <NextTopoNodes>
                <NextTopo NextIndex="23" SourcePort="0" DestinationPort="0" />
            </NextTopoNodes>
            <NextParameterNodes />
            <NextInputParameterNodes />
        </NFComplexEvalNode>
        <InputTopoMapping>
            <IOTopoMap EvalIndex="0" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="1" EvalPort="0" MapPort="0" />
            <IOTopoMap EvalIndex="16" EvalPort="0" MapPort="0" />
        </InputTopoMapping>
        <OutputTopoMapping>
            <IOTopoMap EvalIndex="25" EvalPort="0" MapPort="0" />
        </OutputTopoMapping>
        <InputParameterMapping>
            <IOParameterMap EvalIndex="23" EvalParameterName="Min. Item Size" MapName="Min blobsize" />
            <IOParameterMap EvalIndex="27" EvalParameterName="Radius [Pixel]" MapName="radius erode dilate mask" />
        </InputParameterMapping>
        <OutputParameterMapping>
            <IOParameterMap EvalIndex="0" EvalParameterName="Quantile Height" MapName="base height" />
        </OutputParameterMapping>
        <sMetaInfo>
            <NFParameter Name="SaveCount">
                <NFVariant Type="int" Unit="" UnitMultiplicator="1" UnitExponent="1">13</NFVariant>
            </NFParameter>
            <NFParameter Name="SaveDates">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>2023-02-22 11:08:22</string>
                    <string>2023-02-22 11:20:28</string>
                    <string>2023-02-22 11:29:07</string>
                    <string>2023-02-22 11:35:47</string>
                    <string>2023-02-22 11:38:13</string>
                    <string>2023-02-22 11:49:13</string>
                    <string>2023-02-22 12:03:37</string>
                    <string>2023-02-22 12:11:03</string>
                    <string>2023-02-22 12:14:02</string>
                    <string>2023-02-22 12:14:54</string>
                    <string>2023-02-22 13:06:37</string>
                    <string>2023-03-15 13:27:55</string>
                    <string>2023-03-15 13:43:18</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveNames">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                    <string>D:/Data/build/NFEval/current/vs2017_x64/bin/Plugins/NFBGA_normal_flat_preprocessing.ned</string>
                </NFVariant>
            </NFParameter>
            <NFParameter Name="SaveUsers">
                <NFVariant Type="char [][]" Unit="" UnitMultiplicator="1" UnitExponent="1">
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                    <string>weimann</string>
                </NFVariant>
            </NFParameter>
        </sMetaInfo>
        <NFComplexAlgoGUIDescription Version="1" Name="NFBGA_normal_flat_preprocessing">
            <NFComplexAlgoNodeGUI Index="0">
                <NFAlgoGUI Name="NFTopoStatistic" PosX="4918.46" PosY="4635.32" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="1">
                <NFAlgoGUI Name="NFUnaryHeightFunctor&lt;Functor::NFHeightAddConst&gt;" PosX="4916.4" PosY="4949.87" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="2">
                <NFAlgoGUI Name="NFParameterOperation&lt;Functor::NFVarMul&gt;" PosX="4898.9" PosY="4846.91" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="3">
                <NFAlgoGUI Name="NFThresholdHeights" PosX="5179.47" PosY="4926.19" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="6">
                <NFAlgoGUI Name="NFTopoToProfile" PosX="5266.47" PosY="5129.02" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="7">
                <NFAlgoGUI Name="NFTopoInfo" PosX="5113.58" PosY="5087.32" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="8">
                <NFAlgoGUI Name="NFTopoToProfile" PosX="5135.71" PosY="5383.33" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="9">
                <NFAlgoGUI Name="NFProfileToTopo" PosX="5202.12" PosY="5206.24" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="10">
                <NFAlgoGUI Name="NFProfileToTopo" PosX="5125.42" PosY="5259.78" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="11">
                <NFAlgoGUI Name="NFHeightAdd" PosX="5415.25" PosY="4906.62" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="12">
                <NFAlgoGUI Name="NFRobustPlaneFit" PosX="5217.05" PosY="5008.55" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="13">
                <NFAlgoGUI Name="NFHeightSub" PosX="4892.21" PosY="5138.29" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="15">
                <NFAlgoGUI Name="NFHeightAdd" PosX="5390.03" PosY="5269.05" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="16">
                <NFAlgoGUI Name="NFHeightSub" PosX="5323.1" PosY="4787.19" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="17">
                <NFAlgoGUI Name="NFVarAdd" PosX="5177.41" PosY="4700.7" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="18">
                <NFAlgoGUI Name="NFThresholdHeights" PosX="5329.28" PosY="4687.83" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="20">
                <NFAlgoGUI Name="NFVarAdd" PosX="5200.58" PosY="4622.96" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="21">
                <NFAlgoGUI Name="NFThresholdHeights" PosX="5350.63" PosY="4557.89" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="23">
                <NFAlgoGUI Name="NFBlobAnalyzer" PosX="5742.37" PosY="4565.17" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="24">
                <NFAlgoGUI Name="NFMaskBinaryANDNot" PosX="5765.26" PosY="4706.06" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="25">
                <NFAlgoGUI Name="NFMaskBinaryANDNot" PosX="5467.25" PosY="4774.83" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="26">
                <NFAlgoGUI Name="NFErodeMask" PosX="5382.62" PosY="4451.23" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoNodeGUI Index="27">
                <NFAlgoGUI Name="NFDilateMask" PosX="5555.67" PosY="4463.48" />
            </NFComplexAlgoNodeGUI>
            <NFComplexAlgoTopoOutput Index="0">
                <NFAlgoGUI PosX="5975.44" PosY="4800.39" />
            </NFComplexAlgoTopoOutput>
            <NFComplexAlgoTopoInput Index="0">
                <NFAlgoGUI PosX="5104.31" PosY="4783.07" />
            </NFComplexAlgoTopoInput>
            <NFComplexAlgoParamInput Name="Min blobsize">
                <NFAlgoGUI PosX="5717" PosY="4405.8" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamInput Name="radius erode dilate mask">
                <NFAlgoGUI PosX="5456.36" PosY="4376.98" />
            </NFComplexAlgoParamInput>
            <NFComplexAlgoParamOutput Name="base height">
                <NFAlgoGUI PosX="5178.55" PosY="4495.31" />
            </NFComplexAlgoParamOutput>
        </NFComplexAlgoGUIDescription>
    </NFComplexEvaluation>
</NFComplexEvaluationContainer>
