/*

  This is an example of using nextflow for running github CI

*/

process RUN_TEST {
  // This is a dummy process

  // Some metadata stuff
  container "tonyliang19/fgsea:latest"
  input:
  val(x)

  output:
  stdout

  script:
  """
  run_dummy_script.R ${x}
  """
}

// This is named workflow to be executed
workflow TEST_WORKFLOW {
  take:
  some_ch

  main:
  RUN_TEST(some_ch)
}

workflow {
  // Instantiate params
  parameters_ch = Channel.fromList(["hello", "world"]) 
  // Run the TEST_WORKFLOW
  RUN_TEST(parameters_ch)
}


