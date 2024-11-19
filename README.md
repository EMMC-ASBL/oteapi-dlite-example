# OTEAPI Test

Create and activate your local environment as you prefer.
Example:
   cd /path/to/your/environments
   python -m venv myenv
   source /path/to/your/environments/myenv

Install the requirements needed locally:
   pip install -r requirements.txt

Build and create the docker image:

   source docker_build_commands.sh
This file also contains some useful commands when working with this setup.  


Check that the output has not been created already.
The folder outputdir should be empty.
   ls outputdir

To run the test script:

   python example.py

Check now that you have created files in the outputdir.


Note that in the current setup the outputdir is setup as a volume for the image,
and thus oteapi writes directly to it.
A setup in which generated data is deposited in a different storage would be
more correct, but this is a good start.
