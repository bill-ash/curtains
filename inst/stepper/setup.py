from setuptools import setup, find_packages

requires = [
        'flask', 
        'psycopg2', 
        'adafruit-circuitpython-motorkit'
        ]

setup(
        name='curtains-controller', 
        version='0.0', 
        description='API for closing the curtains', 
        author='Bill Ash', 
        author_email='ash.william.r@gmail.com', 
        keywords='web flask curtains', 
        packages=find_packages(), 
        include_packages_data=TRUE, 
        install_requires=requires
    )

