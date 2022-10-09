
// this file has the baseline default parameters
{
  components: {
    ingress +: {
      values: {
        commonLabels: {
          'qbec.io/origin': 'it-one-hackathon',
          'qbec.io/deployed-by': 'team-2',
        },
        controller +: {
          replicaCount: 1
        }
      }
    },
  },
}
