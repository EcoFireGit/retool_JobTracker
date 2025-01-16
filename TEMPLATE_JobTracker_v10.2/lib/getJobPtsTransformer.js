// get point per QBO unit
let pts_per_QBO_Unit = Object.fromEntries(
  {{ table3.data }}.map(r => [r.QBO_ID, r.QBO_Points/(r.QBO_Target - r.QBO_Beginning_Value)]));

// for each QPI, store its delta value & sum of all points
let pts_QPIs = Object.fromEntries({{ table9.data }}.map(r => [r.QPI_ID, [r.QPI_Target - r.QPI_Beginning_Value,0]]));

// for each QPI, sum up all the QBO points for all the QBOs it impacts in proportion to the QPI's impact on the QBO
{{ table6.data }}.forEach(r => pts_QPIs[r.QPI_Name][1] += pts_per_QBO_Unit[r.QBO_Name] * r.Expected_QBO_Impact)

// compute pts for jobs
let pts_Jobs = Object.fromEntries({{ table5.data }}.map(r => [r.Job_ID,0]));

// for each job, sum up all the QPI points for all the QPIs it impacts in proportion to the job's impact on the QPI
{{ table10.data }}.forEach(r => pts_Jobs[r.Job_Title] += pts_QPIs[r.QPI_Name][1]/pts_QPIs[r.QPI_Name][0] * r.QPI_Impact)

return pts_Jobs;