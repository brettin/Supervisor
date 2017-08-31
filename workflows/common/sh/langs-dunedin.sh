
# LANGS DUNEDIN
# Language settings for Dunedin
# Assumes WORKFLOWS_ROOT, BENCHMARK_DIR, BENCHMARKS_ROOT are set

# Python
export PYTHONPATH=${PYTHONPATH:-}${PYTHONPATH:+:}
PYTHONPATH+=$BENCHMARK_DIR:
PYTHONPATH+=$BENCHMARKS_ROOT/common:
PYTHONPATH+=$WORKFLOWS_ROOT/common/python:

# R
export R_HOME=/home/wozniak/Public/sfw/R-3.4.1/lib/R

# Swift/T
export PATH=$HOME/sfw/swift-t/stc/bin:$PATH
SWIFT_IMPL="app"

# EMEWS Queues for R
EQR=/opt/EQ-R
# Resident task workers and ranks
export TURBINE_RESIDENT_WORK_WORKERS=1
export RESIDENT_WORK_RANKS=$(( PROCS - 2 ))

# LD_LIBRARY_PATH
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH:-}${LD_LIBRARY_PATH:+:}
LD_LIBRARY_PATH+=$R_HOME/lib

# Log settings to output
which python swift-t
# Cf. utils.sh
log_path LD_LIBRARY_PATH
log_path PYTHONPATH
