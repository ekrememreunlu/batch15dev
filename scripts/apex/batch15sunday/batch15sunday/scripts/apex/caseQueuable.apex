CaseCreationQueueable queueable = new CaseCreationQueueable();
id jobId = System.enqueueJob(queueable);
System.debug('Job ID: ' + jobId);