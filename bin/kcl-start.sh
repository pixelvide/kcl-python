#!/bin/bash -e

# parameters
KCL_PROPERTIES_PATH=${KCL_PROPERTIES_PATH:='properties/base.properties'}



$(amazon_kclpy_helper.py --print_command --java $JAVA_HOME/bin/java --properties /app/$KCL_PROPERTIES_PATH)
