
// OBJ APP

(string obj_result) obj(string params, string iter_indiv_id) {
  string outdir = "%s/run_%s" % (turbine_output, iter_indiv_id) =>
  run_model(model_script, params, outdir, iter_indiv_id) =>
  string result_file = "%s/result.txt" % outdir =>
  obj_result = get_results(result_file);
  printf(obj_result);
}

app (void o) run_model (file shfile, string params_string, string instance, string run_id)
{
    "bash" shfile params_string emews_root instance model_name FRAMEWORK exp_id run_id benchmark_timeout;
}

(string obj_result) get_results(string result_file) {
  if (file_exists(result_file)) {
    file line = input(result_file);
    obj_result = trim(read(line));
  } else {
    obj_result = "NaN";
  }
}
