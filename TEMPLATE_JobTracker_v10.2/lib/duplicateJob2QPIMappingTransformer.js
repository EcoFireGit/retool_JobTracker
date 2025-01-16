const org_Job = {{ JobToBeDuplicatedIDVariable.value }};
return {{ table10.data }}.filter(row => row.Job_Title === org_Job).map(r => ({...r, 'Job_QPI_Mapping_ID': uuid.v4(), 'Job_Title': {{ DuplicatedJobIDVariable.value }} }));
// this will not work as new duplicate Job ID isn't available in Job2PI table still