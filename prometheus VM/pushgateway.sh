
#!/bin/bash

while true; do
  # Fetch the load averages
  load_avg_current=$(uptime | awk '{print $10}' | cut -d, -f1)
  load_avg_five_minutes=$(uptime | awk '{print $11}' | cut -d, -f1)
  load_avg_fifteen_minutes=$(uptime | awk '{print $12}' | cut -d, -f1)

  # Output the load averages to a file
  echo "
load_avg_current $load_avg_current
load_avg_five_minutes $load_avg_five_minutes
load_avg_fifteen_minutes $load_avg_fifteen_minutes
" > load_average.txt

  # Send the load averages to the Pushgateway
  curl --data-binary @- http://54.149.163.93:9091/metrics/job/csv_processing/instance/csvserver < load_average.txt

  # Sleep for 5 seconds before the next iteration
  sle#!/bin/bash

while true; do
  # Fetch the load averages
  load_avg_current=$(uptime | awk '{print $10}' | cut -d, -f1)
  load_avg_five_minutes=$(uptime | awk '{print $11}' | cut -d, -f1)
  load_avg_fifteen_minutes=$(uptime | awk '{print $12}' | cut -d, -f1)

  # Print the values for debugging
  echo "load_avg_current: $load_avg_current"
  echo "load_avg_five_minutes: $load_avg_five_minutes"
  echo "load_avg_fifteen_minutes: $load_avg_fifteen_minutes"

  # Check if values are not empty
  if [[ -z "$load_avg_current" || -z "$load_avg_five_minutes" || -z "$load_avg_fifteen_minutes" ]]; then
    echo "Error: One or more load average values are empty"
  else
    # Output the load averages to a file
    echo "
load_avg_current $load_avg_current
load_avg_five_minutes $load_avg_five_minutes
load_avg_fifteen_minutes $load_avg_fifteen_minutes
" > load_average.txt

    # Send the load averages to the Pushgateway
    curl --data-binary @- http://54.149.163.93:9091/metrics/job/csv_processing/instance/csvserver < load_average.txt
  fi

  # Sleep for 5 seconds before the nep 5
done
