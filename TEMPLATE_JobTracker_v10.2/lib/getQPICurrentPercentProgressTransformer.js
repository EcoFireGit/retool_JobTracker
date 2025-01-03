// Create object to store current QPI progress
let progress_QPIs = Object.fromEntries({{ getQPINamesTransformer.value }}.map(q => [q,0]));

// get all done Jobs titles
let done_Jobs = {{ getDoneJobsTransformer.value }}.map(j => j.Job_Title);

// filter Job2QPI table for only done jobs
let done_Jobs_Impact = {{ table10.data }}.filter(r => done_Jobs.includes(r.Job_Title));

// for each entry in done Jobs impact, accumulate its points in corresponding QPI
done_Jobs_Impact.forEach(e => progress_QPIs[e.QPI_Name] += e.QPI_Impact)

// divide the accumulated points by diff. b/w target & beginning value
{{ table9.data }}.forEach(q => progress_QPIs[q.QPI_Name] /= (q.QPI_Target - q.QPI_Beginning_Value))

return progress_QPIs;                         