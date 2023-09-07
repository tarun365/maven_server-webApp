import xml.etree.ElementTree as ET

 

# Define the path to your JUnit XML report file
xml_report_file = r"C:\TeamCity\buildAgent\work\d7692ce3602b9390\server\target\surefire-reports\TEST-com.example.TestGreeter.xml"
#xml_report_file = "D:/Bamboo/bamboo-home/local-working-dir/TEST-PLAN-JOB1/server/target/surefire-reports/TEST-com.example.TestGreeter.xml"

 

 

# Parse the XML report
tree = ET.parse(xml_report_file)
root = tree.getroot()

 

# Initialize counters for passing and total tests
pass_count = 0
total_count = 0

 

# Iterate through the XML to count passing tests
for testcase in root.findall(".//testcase"):
    total_count += 1
    if not testcase.findall(".//failure"):
        pass_count += 1

 

# Calculate the pass percentage
if total_count > 0:
    pass_percentage = (pass_count / total_count) * 100
else:
    pass_percentage = 100  # Set pass percentage to 100 when there are no test cases

 

# Print the results
print(f"Total Tests: {total_count}")
print(f"Passing Tests: {pass_count}")
print(f"Pass Percentage: {pass_percentage:.2f}%")

 

# Exit with a status code indicating success or failure (e.g., non-zero for failure)
if pass_percentage >= 80:  # You can adjust this threshold as needed
    exit(0)  # Success
else:
    exit(1)  # Failure