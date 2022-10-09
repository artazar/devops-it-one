
// this file has the param overrides for the default environment
local base = import './base.libsonnet';

local prod = {
    components: {
      ingress: {
        values: {
          commonLabels: {
            'qbec.io/instance': 'prod'
          },
          controller: {
            replicaCount: 2
          }
        }
      }
    }
  };

local prodBase = std.mergePatch(base, prod);

local prod1 = {
    name: 'prod1',
    components: {
      ingress: {
        values: {
          commonLabels: {
            'qbec.io/instance': 'prod1'
          },
          controller: {
            kind: 'DaemonSet'
          }
        }
      }
    }
  };

local prod2 = {
    name: 'prod2',
    components: {
      ingress: {
        values: {
          commonLabels: {
            'qbec.io/instance': 'prod2'
          },
          controller: {
            kind: 'DaemonSet'
          }
        }
      }
    }
  };

local prod3 = {
    name: 'prod3',
    components: {
      ingress: {
        values: {
          commonLabels+: {
            'qbec.io/instance': 'prod3'
          },
          controller: {
            hostNetwork: true
          }
        }
      }
    }
  };

{
  envs: [
    std.mergePatch(prodBase, env) 
    for env in [prod1, prod2, prod3]
  ],
}