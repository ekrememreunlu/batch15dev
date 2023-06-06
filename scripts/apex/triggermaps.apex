id projectId = Trigger_Map.InsertSF_Project();
System.debug('Project id: ' +projectId);

Trigger_Map.UpdateSF_Project(projectId, 'Updated Trigger Project');