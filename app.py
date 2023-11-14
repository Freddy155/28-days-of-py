# app.py

import click
import os

def list_projects():
    projects_dir = 'projects'  
    projects = [d for d in os.listdir(projects_dir) if os.path.isdir(os.path.join(projects_dir, d))]
    return projects

def display_projects():
    projects = list_projects()

    click.echo("Select a project to run:")
    for idx, project in enumerate(projects, start=1):
        click.echo(f"{idx}. {project}")

def exit_handler():
    exit_choice = click.prompt('Do you want to exit? (Y/n)', default='Y')
    if exit_choice.lower() == 'y':
        click.echo('Exiting...')
        exit()
    elif exit_choice.lower() == 'n':
        click.echo('Returning to the CLI interface.')
        run_project()

@click.command()
def run_project():
    try:
        display_projects()

        project_number = click.prompt('Enter the number of the project', type=int)
        projects = list_projects()

        if 1 <= project_number <= len(projects):
            selected_project = projects[project_number - 1]
            project_path = os.path.join('projects', selected_project)

            os.chdir(project_path)

            if os.path.exists('README.md'):
                read_readme = click.confirm('Do you want to read the README.md file before running the project?', default=True)
                if read_readme:
                    os.system('cat README.md') 
                    click.echo('\n' + '-' * 40 + '\n')

            os.system('python3 app.py')  
        else:
            click.echo('Invalid project number. Please select a valid project.')
    except KeyboardInterrupt:
        exit_handler()
    except click.Abort:
        click.echo('Operation aborted by the user.')

if __name__ == '__main__':
    run_project()
