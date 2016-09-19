# SAST Scanning tools 

Suitable for use in a Concourse pipeline.


## Sample concourse task  

This task will output the scan results into `results/results.json`

    - task: gas-scan
      config:
        platform: linux
        image_resource:
          type: docker-image
          source:
            repository: 18fgsa/cg-sast
        inputs:
          - name: source-repo
          - name: another-source-repo
        outputs:
          - name: results
        run:
          path: task-gas.sh
