// store QBO progress values
let progress_QBOs = Object.fromEntries({{  table3.data.map(r => [r.QBO_ID, [r.QBO_Name,0]])}});

// get current  QPI progress
let current_progress_QPIs = {{ getQPICurrentPercentProgressTransformer.value }};

// update QBO progress based on QPI current progress & its impact
{{table6.data}}.forEach( r => progress_QBOs[r.QBO_Name][1] += r.Expected_QBO_Impact * current_progress_QPIs[r.QPI_Name][1]);

// finally get percentages progress for QBOs
{{table3.data}}.forEach(r => progress_QBOs[r.QBO_ID][1] /= (r.QBO_Target - r.QBO_Beginning_Value));

return progress_QBOs;