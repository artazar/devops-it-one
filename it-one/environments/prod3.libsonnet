
// this file has the param overrides for the default environment
local prod = import './prod.libsonnet';

prod {
  components +: {
    ingress +: {
      values: {
        controller: {
          nginxDebug: true
        }
      }
    },
  }
}
