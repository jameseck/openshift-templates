# The pydio service account needs to be added to the anyuid SCC to allow the pod to run as root.
if [ "$1" == "" ]; then
  echo "Please specify the project"
  exit 1
fi

oc adm policy add-scc-to-user anyuid -z pydio -n $1
