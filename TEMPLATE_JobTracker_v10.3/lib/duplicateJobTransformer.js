const org_Job = {{ table5.selectedRow }};
// const org_Job = {{ table5.data.find(r => r.Job_ID === JobToBeDuplicatedIDVariable.value) }};
const { Job_Points,...dup_Job } = org_Job;
return {...dup_Job, 'Job_ID': {{ DuplicatedJobIDVariable.value }} };