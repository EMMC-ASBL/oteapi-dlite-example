# OTEAPI-Dlite example

This is an example for running OTEAPI-DLite.


## How to:
Create and activate your local environment as you prefer.
Example:
   ```bash
   cd /path/to/your/environments
   python -m venv myenv
   source /path/to/your/environments/myenv
   ```

Install the requirements needed locally:
   ```bash
   pip install -r requirements.txt
   ```

Build and create the docker image:
   ```bash
   source docker_build_commands.sh
   ```
The `docker_build_commands.sh` also contains some useful commands when working with this setup in docker.  


Check that the output has not been created already.
The folder outputdir should be empty.
   ```bash
   ls outputdir
   ```

To run the test script:
   ```bash
   python example.py
   ```
Check now that you have created files in the outputdir.
   ```bash
   ls outputdir
   ```

Note that in the current setup the outputdir is setup as a volume for the image,
and thus oteapi writes directly to it.
A setup in which generated data is deposited in a different storage would be
more correct, but this is a good start.
