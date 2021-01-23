## Seetting django for development

* Install pipenv, run ``pipenv`` to see the opctions or use other python version (That python has to be previously installed)

* Go to new_project, run ``pipenv intall --dev`` and activate ``pipenv shell``

* Then Install ``pipenv install --dev autopep8 pep8 pylint pylint_django``

* While in new_project, run ``code .``

* While in code press: Cmd + Shift + P and type Select Interpreter, choose the one with virtual enviroment.

* While in code, look for settings.json inside .vscode (be sure you can view the hidden files.

* Add the next configuration to your new_project/.vscode/settings.json (do not delete the preview first value)

'''
  "editor.formatOnSave": true,
  "python.formatting.provider": "autopep8",
  "python.linting.enabled": true,
  "python.linting.lintOnSave": true,
  "python.linting.pylintEnabled": true,
  "python.linting.pylintArgs": ["--load-plugin=pylint_django"]
'''
