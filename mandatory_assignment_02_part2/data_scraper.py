import requests
from bs4 import BeautifulSoup
import redis

r = redis.Redis(host='localhost', port= 6379, db=0)

URL = "https://realpython.github.io/fake-jobs/"
page = requests.get(URL)

soup = BeautifulSoup(page.content, "html.parser")

# using BeautifulSoup to find the content where id is ResultsContainer
results = soup.find(id="ResultsContainer")

# printing whats in results, it contains "ResultsContainer"
# print(results.prettify())

## - Find Elements by HTML Class Name - ##

# finding all divs within ResultsContainer with the class card-content
job_elements = results.find_all("div", class_="card-content")

# printing each job_elements
# for job_element in job_elements:
#     print(job_element, end="\n"*2)

# taking 3 elements with job_elements and printing it out
# for job_element in job_elements:
#     title_element = job_element.find("h2", class_="title")
#     company_element = job_element.find("h3", class_="company")
#     location_element = job_element.find("p", class_="location")
#     print(title_element)
#     print(company_element)
#     print(location_element)
#     print()

## --End-- ##
## - Extract Text From HTML Elements - ##

# - same as before just only the text within the elements taken
# for job_element in job_elements:
#     title_element = job_element.find("h2", class_="title")
#     company_element = job_element.find("h3", class_="company")
#     location_element = job_element.find("p", class_="location")
#     print(title_element.text)
#     print(company_element.text)
#     print(location_element.text)
#     print()

# - The same as before, but with text only and stripped of spaces
# for job_element in job_elements:
#     title_element = job_element.find("h2", class_="title")
#     company_element = job_element.find("h3", class_="company")
#     location_element = job_element.find("p", class_="location")
    
#     print(title_element.text.strip())
#     print(company_element.text.strip())
#     print(location_element.text.strip())
#     print()



## --End-- ##

## - Find Elements by Class Name and Text Content - ##

# - finds where h2 is the string "Python" exactly
# python_jobs = results.find_all("h2", string="Python")

# - result is empty or zero, since no h2 is exactly string "Python"
# print(python_jobs)

## - Pass a Function to a Beautiful Soup Method - ##

# - pass functions as arguments - Now you’re passing an anonymous function 
# python_jobs = results.find_all(
#     "h2", string=lambda text: "python" in text.lower()
# )

# - shows there is 10 h2 with the string "python" - #
# print(len(python_jobs))


# - when you try to run your scraper to print out the information of the filtered Python jobs, you’ll run into an error - #
# for job_element in python_jobs:
#     title_element = job_element.find("h2", class_="title")
#     company_element = job_element.find("h3", class_="company")
#     location_element = job_element.find("p", class_="location")
#     print(title_element.text.strip())
#     print(company_element.text.strip())
#     print(location_element.text.strip())
#     print()

# - Error message - #
# - AttributeError: 'NoneType' object has no attribute 'text' - #

# - This message is a common error that you’ll run into a lot when you’re scraping information from the Internet. Inspect the HTML of an element in your python_jobs list - #

## - End - ##

## - Identify Error Conditions - #

# - You only filtered the h2 element and dont have access to the other elements in the for loop - #

## - Access Parent Elements - ##

# - One way to get access to all the information you need is to step up in the hierarchy of the DOM starting from the <h2> elements that you identified - #

# - <div> with "card-content" class contains all info. its 3rd level parent of the <h2> - #

# - with this info, use python_jobs and fetch their great-grand parent element, to get the access - #

# python_jobs = results.find_all(
#     "h2", string=lambda text: "python" in text.lower()
# )

# python_job_elements = [
#     h2_element.parent.parent.parent for h2_element in python_jobs
# ]

# - You added a list comprehension that operates on each of the <h2> title elements - #
# - selecting the parent element of the parent element of the parent element of each <h2> title element - #

# - Now you can adapt to the for loop - #

# for job_element in python_job_elements:
#     title_element = job_element.find("h2", class_="title")
#     company_element = job_element.find("h3", class_="company")
#     location_element = job_element.find("p", class_="location")
#     print(title_element.text.strip())
#     print(company_element.text.strip())
#     print(location_element.text.strip())
#     print()

## - Extract Attributes From HTML Elements - ##

# - the cards contain two links at the bottom - #
# - if you run the for loop and try to extract the a element - #
# - then you will only get the text - #

# for job_element in python_job_elements:
#     title_element = job_element.find("h2", class_="title")
#     company_element = job_element.find("h3", class_="company")
#     location_element = job_element.find("p", class_="location")
#     print(title_element.text.strip())
#     print(company_element.text.strip())
#     print(location_element.text.strip())
#     print()
#     links = job_element.find_all("a")
#     for link in links:
#         print(link.text.strip())
#     print()

# -         example print       - #
# - Software Developer (Python) - #
# - Moreno-Rodriguez            - #
# - Martinezburgh, AE           - #
# -                             - #
# - Learn                       - #
# - Apply                       - #

# - since there is multiple a elements, you need to fetch them to start with - #
# - then extract the value of their "href"

# - if you only want the second link, this can be used - #

# for job_element in python_job_elements:
#     link_url = job_element.find_all("a")[1]["href"]
#     print(f"Apply here: {link_url}\n")

## - Bonus content, save to database - ##

for job_element in job_elements:
    title_element = job_element.find("h2", class_="title")
    company_element = job_element.find("h3", class_="company")
    location_element = job_element.find("p", class_="location")
    print(title_element.text.strip())
    print(company_element.text.strip())
    print(location_element.text.strip())
    print()
    list = [title_element, company_element, location_element]
    r.rpush('jobcards', *str(list))

# - docker exec -it integration-redis redis-cli - #