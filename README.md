# Empty Stagehand Template
Empty Stagehand Template is a starter template for [stagehand](https://github.com/google/stagehand) that will help you develop your own third party templates for stagehand. 

### How to Use
1. Clone this repo.
  ```
  git clone https://github.com/kunaldeo/stagehandEmptyTemplate 
  ```
2. Rename stagehandEmptyTemplate directory to your template name. This will become the display name for your template in the stagehand list.
  > It is recommended that you use camelCasing while renaming the directory. Stagehand does not support spaces or dashes in template names.

  > In the following steps we assume that you have renamed stagehandEmptyTemplate directory to myStagehandTemplate.
3. Clone/Copy your template to ```template-dir``` folder. For example,
  ```
  cd myStagehandTemplate
  git clone http://github.com/myname/mydartproject template-dir
  ```
> It is important that ```template-dir``` becomes the root directory of your project. Do not copy your project folder in it. Copy the the contents of your project folder in it. For example, ```template-dir\mycoolproject-dir``` is not the correct layout. Correct way to do it would be ```template-dir\(mycoolproject-dir-contents)``` .

3. Edit myStagehandTemplate/main.dart file. Use this file to provide metadata about your template.
4. Edit the first line of ```myStagehandTemplate/template-dir/pubspec.yaml``` to the following:
  ```dart
  name: '{{projectName}}'
  ```
>projectName field will be replaced by the stagehand according to the user parameters while running this template.

6. Install pub package [grinder](https://pub.dartlang.org/packages/grinder) globally. This will add the ```grind``` command to the system.
  ```dart
  pub global activate grinder
  ```
7. Run ```pub get``` and ```grind build``` to install the necessary dependencies and generate the necessary resources. 
  ```dart
    cd myStagehandTemplate
    pub get
    grind build
  ```
  This will produce ```myStaghandTemplate/src/template_data.dart```.

8. Final step, push myStagehandTemplate to github. Once the project is on github the github url can be shared with the users for the template installation.
>If you want to keep your git history intact you should remove the existing .git folder from myStagehandTemplate directory   and init a new git repo before pushing it to github.

### Example Template - polymerContacts
At https://github.com/kunaldeo/polymerContacts .
