trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    
    List<Task> taskList = new List<Task>();
    
    for(Opportunity opp : Trigger.new)
    {
        if(opp.StageName == 'Closed Won'){
            Task newTask = new Task();
            newTask.Subject = 'Follow Up Test Task' ;
            newTask.WhatId = Opp.Id;
            taskList.add(newTask);
        }
    }
    
    if(taskList.size()>0){
    	Insert taskList; 
    }    
}