const org_Job = {{  table7.selectedRow }};
const { Job_Points,...dup_Job } = org_Job;
return {...dup_Job, 'Job_ID':uuid.v4()};