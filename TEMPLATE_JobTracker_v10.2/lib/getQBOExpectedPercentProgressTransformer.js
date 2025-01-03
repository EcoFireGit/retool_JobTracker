// store QBO progress values
let progress_QBOs = Object.fromEntries({{  getQBONamesTransformer.value.map(i => [i,0])}});

// get current  QPI progress
let current_progress_QPIs = {{ getQPICurrentPercentProgressTransformer.value }};

// update QBO progress based on QPI current progress & its impact
{{table6.data}}.forEach( r => progress_QBOs[r.QBO_Name] += r.Expected_QBO_Impact * current_progress_QPIs[r.QPI_Name]);

// finally get percentages progress for QBOs
{{table3.data}}.forEach(r => progress_QBOs[r.QBO_Name] /= (r.QBO_Target - r.QBO_Beginning_Value));

return progress_QBOs;