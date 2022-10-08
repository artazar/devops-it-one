
// this file has the baseline default parameters
{
  components: {
    ingress +: {
      values: {
        controller: {
          replicaCount: 1
        }
      }
    },
  },
}
