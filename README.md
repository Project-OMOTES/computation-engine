# Omotes System

## start

Omotes system makes use of prefect for workflow and flow orchestration.

Start the omotes system by:

```
docker compose up --wait
```

To deploy the optimizer flow to prefect:

```
docker compose up deploy_optimizer --wait
```

### start dev

Start the omotes system with local code for the orchestrator, including local code for the omotes-sdk-python:

```
docker compose -f docker-compose.yml -f docker-compose.override.dev.yml up --wait
```

And to deploy the optimizer flow to prefect using local code for omotes-sdk-python and mesido:

```
docker compose -f docker-compose.yml -f docker-compose.override.dev.yml up deploy_optimizer --wait
```

## usage

After startup the prefect UI minio and the orchestrator are available.

# Licensing & legal considerations

We have opensourced the OMOTES stack under GPLv3. This ensures that the components of OMOTES are not
altered and run closed-source but changes to OMOTES components are required to also be opensourced.
However, the GPLv3 license does not prevent from OMOTES being used in a closed-source, commercial
setting. The OMOTES stack is orchestrated by using one of the OMOTES SDK packages to communicate
over the network with OMOTES. As such, the copy-left virality of the GPLv3 license does not apply
to any application or system which integrates and uses OMOTES through the SDK packages. Each of the
SDK packages is licensed using a permissive license. This is all done with the goal of ensuring an
opensource, common calculation and model backend which is available to all but allow companies to
use OMOTES without legal hurdles.

In case you have any bug fixes or generally-usable extensions, it would be greatly appreciated
if you make these changes available to one of the relevant OMOTES repositories so we can integrate
them for all. The licenses, however, do not require changes to be opensourced to the original
OMOTES repositories and it is up to the developer on how to opensource any changes.
