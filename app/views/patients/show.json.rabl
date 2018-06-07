collection @patient
attributes :id  
child(:tiss_evaluations) { attributes :evaluation_date ,:score }