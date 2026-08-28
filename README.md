# Omotes System

## Start

Omotes system makes use of prefect for workflow and flow orchestration.

First create a `.env` file from `.env.template`, by either copying `.env.template` (for dev) or generate with random
passwords:

```
cp .env.template .env
./scripts/generate-env.sh
```

Optionally the template and target paths can be given as arguments: `./scripts/generate-env.sh .env.template .env`.

The most relevant env vars for optimzer/simulator control:

- `WORKFLOW_SETTINGS_FILE`: pointing to the workflow definitions (in the `config` folder)
- `OPTIMIZER_WORKER_VERSION`: optimizer-worker version to be deployed
- `SIMULATOR_WORKER_VERSION`: simulator-worker version to be deployed
- `OPTIMIZER_FLOW_MAX_CONCURRENT_RUNS`: maximum of concurrent optimizer runs
- `SIMULATOR_FLOW_MAX_CONCURRENT_RUNS`: maximum of concurrent simulator runs
- `OPTIMIZER_PREFECT_FLOW_TIMEOUT_SECONDS`: maximum duration of an optimizer run
- `SIMULATOR_PREFECT_FLOW_TIMEOUT_SECONDS`: maximum duration of a simulator run

Start the omotes system only, or including the deployment of the specified versions of the optimizer and simulator, by:

```
./scripts/start.sh
./scripts/start-and-deploy.sh
```

To seperately deploy a version (`OPTIMIZER/SIMULATOR_WORKER_VERSION` in `.env`) of the optimizer or simulator flow to
prefect:

```
./scripts/deploy-optimizer.sh
./scripts/deploy-simulator.sh
```

An optional first argument overrides `OPTIMIZER_WORKER_VERSION`/`SIMULATOR_WORKER_VERSION` from `.env`:

```
./scripts/deploy-optimizer.sh 3.0.1
./scripts/deploy-simulator.sh 0.1.1
```

Multiple versions can be deployed (See `Deployments` in the Prefect UI): run this scripts multiple times with different
values for `OPTIMIZER_WORKER_VERSION`/`SIMULATOR_FLOW_MAX_CONCURRENT_RUNS`. Semantic versions cannot be overwritten.

And to stop the omotes-system:

```
./scripts/stop.sh
```

### Workflow definitions

The workflow definitions are in the file specified by `WORKFLOW_SETTINGS_FILE` in `.env`. Each workflow specifies a
prefect flow which is deployed above. On system start these workflow definitions are loaded in the orchestrator.

When the system is running the workflow definitions can be updated by a `POST` to
[http://localhost:9200/docs#/workflow/upload_workflows_workflow\_\_post](http://localhost:9200/docs#/workflow/upload_workflows_workflow__post).

### Usage

After startup the prefect UI ([http://localhost:4200/](http://localhost:4200/)), minio UI
([http://localhost:9001/](http://localhost:9001/)) and the orchestrator api
([http://localhost:9200/docs](http://localhost:9200/docs)) are available.\
Start a run by
[http://localhost:9200/docs#/job/create_job_job\_\_post](http://localhost:9200/docs#/job/create_job_job__post) with
`example_runs\optimizer_post.json` or `example_runs\simulator_post.json`. In these posts the version is not specified:
the newest (largest) semantic version will be used.\
The progress can be tracked in the Prefect UI, and result artifacts retrieved after a successful run.

## Development

### Tools

This project uses:

- **uv**: Fast Python package manager and resolver. Install via [https://docs.astral.sh/uv/](https://docs.astral.sh/uv/)
- **just**: Command runner for common tasks (similar to Make). Install via
  [https://github.com/casey/just](https://github.com/casey/just)

### Setup

1. Install dependencies:

   ```bash
   uv sync
   ```

2. Create `.env` with `./scripts/generate-env.sh`

The workflows are configured in `WORKFLOW_SETTINGS_FILE`. Each workflow contains `workflow_type_name`,
`workflow_type_description_name` and `prefect_flow_name`. Optional are `workflow_parameters` and `memory_limit` which is
for example: `512Mi`, `2Gi`, `750M` or `1000000`.\
`workflow_parameters` is a dict in jsonforms format, see `/config/workflow_config_example.json` and
https://jsonforms.io/.

### Start dev

During development it is useful to be able to run the system directly from code (without published images). The system
can be started with local code for the orchestrator, omotes-sdk-python, simulator-worker, optimizer-worker, and mesido
(not omotes-simulator-core for now). For this all these repo's need to be present locally in the same folder as this
repo. Make sure repo's that you are not editing are also up to date.

```
./scripts/dev/start-dev.sh
./scripts/dev/start-and-deploy-dev.sh
```

And to deploy the optimizer or simulator flow to prefect using local code for omotes-sdk-python and mesido:

```
./scripts/dev/deploy-optimizer-dev.sh
./scripts/dev/deploy-simulator-dev.sh
```

### System tests

The system tests can be run, optionally using local code like mentioned above:

```
./scripts/test-system.sh
./scripts/dev/test-system-dev.sh
```

To run tests in debug mode uncomment

```
# Tear down (comment out to leave stack running for inspection or running tests in debug mode)
$DOCKER_COMPOSE down -v
```

in `./scripts/test-system.sh` or `./scripts/dev/test-system-dev.sh` to leave the test system up. Then go to
`Run and Debug` in vscode, select a launch config, and hit the play icon.

### CI: linting, type checking and running tests

```bash
cd system_tests
just install       # uv sync --locked --group dev
just lint           # ruff check
just format-check   # ruff format --check
just format         # ruff format (fixes in place)
just typecheck      # ty check
just ci             # install, lint, format-check, typecheck
just test           # spin up an isolated stack and run the system tests (./scripts/test-system.sh)
just test-local     # run the tests against an already-running stack, e.g. for local debugging
```

# Licensing & legal considerations

We have opensourced the OMOTES stack under GPLv3. This ensures that the components of OMOTES are not altered and run
closed-source but changes to OMOTES components are required to also be opensourced. However, the GPLv3 license does not
prevent from OMOTES being used in a closed-source, commercial setting. The OMOTES stack is orchestrated by using one of
the OMOTES SDK packages to communicate over the network with OMOTES. As such, the copy-left virality of the GPLv3
license does not apply to any application or system which integrates and uses OMOTES through the SDK packages. Each of
the SDK packages is licensed using a permissive license. This is all done with the goal of ensuring an opensource,
common calculation and model backend which is available to all but allow companies to use OMOTES without legal hurdles.

In case you have any bug fixes or generally-usable extensions, it would be greatly appreciated if you make these changes
available to one of the relevant OMOTES repositories so we can integrate them for all. The licenses, however, do not
require changes to be opensourced to the original OMOTES repositories and it is up to the developer on how to opensource
any changes.
