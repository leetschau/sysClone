#!/usr/bin/env python3
import os, sys, re, subprocess

group_id = 'com.fr'
repo_id = 'znbt'
repo_url = 'http://192.168.12.233:8081/repository/znbt/'
sample_settings = '''<settings>
  <servers>
    <server>
      <id>znbt</id>
      <username>admin</username>
      <password>admin123</password>
    </server>
  </servers>
</settings>'''

if not os.path.isfile('%s/.m2/settings.xml' % os.environ['HOME']):
    print('You have no ~/.m2/settings.xml file, create it like this:')
    print(sample_settings)
    sys.exit(1)

def get_name_ver(filename):
    sections = filename.split('-')
    if len(sections) == 1:
        return sections[0].split('.jar')[0], '1.0'
    return '-'.join(sections[:-1]), sections[-1].split('.jar')[0]

subdirs = [x for x in os.walk('.')]
for subdir in subdirs:
    dirname = subdir[0]
    answer = input("Loop folder '%s'? [y/N] " % dirname) or 'N'
    if answer != 'y':
        continue
    jars = [x for x in subdir[2] if x.endswith('.jar')]
    for jar in jars:
        defname, defver = get_name_ver(jar)
        filepath = os.path.join(subdir[0], jar)
        print('Uploading jar %s:' % jar)
        final_name = input('artifact name [%s]: ' % defname) or defname
        final_version = input('artifact version [%s]: ' % defver) or defver
        command = 'mvn deploy:deploy-file -DgroupId=%s'\
                  ' -DartifactId=%s -Dversion=%s -Dpackaging=jar'\
                  ' -Dfile=%s -DgeneratePom=true -DrepositoryId=%s'\
                  ' -Durl="%s"' % (group_id, final_name, final_version,
                          filepath, repo_id, repo_url)
        print('-------')
        print(command)
        print('-------')
        subprocess.call(command, shell=True)
