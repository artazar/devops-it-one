
// this file has the param overrides for the default environment
local base = import './base.libsonnet';

local stage = {
    components: {
      ingress: {
        values: {
          commonLabels: {
            'qbec.io/instance': 'stage'
          },
          controller: {
            replicaCount: 2
          }
        }
      }
    }
  };

local stageBase = std.mergePatch(base, stage);

local stage1 = {
    name: 'stage1',
    components: {
      ingress: {
        values: {
          commonLabels: {
            'qbec.io/instance': 'stage1'
          },
          resources: {}
        }
      }
    }
  };

{
  envs: [
    std.mergePatch(stageBase, env) 
    for env in [stage1]
  ],
}