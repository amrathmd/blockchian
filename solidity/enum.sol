// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
struct voter{
    int weight;
    bool voted;
}
enum Stage 
    {init,
    reg,
    vote,
    done}
contract Voting{
    
    Stage public stage;
    uint startTime;
    uint timeNow;
    constructor(){
        stage=Stage.init;
        startTime= block.timestamp;
    }
    function advanceStage() public{
        timeNow=block.timestamp;
        if(timeNow > startTime+10 seconds){
            startTime=timeNow;
            if(stage==Stage.init) {stage=Stage.reg; return ;}
            if(stage==Stage.reg) {stage=Stage.vote; return;}
            if(stage==Stage.vote) {stage=Stage.done; return;}

            return;
        }   
    }



}