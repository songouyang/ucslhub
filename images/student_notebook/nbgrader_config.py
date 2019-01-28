import os
import glob

c = get_config()

user_dir = [x for x in glob.glob('/home/jovyan/**', recursive=True) if os.environ['username'] in x][0]

c.CourseDirectory.root = os.path.join(user_dir, 'work')
c.Exchange.root = os.path.join(user_dir, 'work', 'assignments')
c.Exchange.course_id = 'UCSL-bootcamp'
