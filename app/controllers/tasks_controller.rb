class TasksController < ApplicationController
  before_action :set_project ##appel de la fonction uqi sera éxécuté avant les actions qui suivent, pour s'assurer que le projet est correctement recupéré

  def index
    @tasks = @project.tasks
  end

  def show
    @task = @project.tasks.find(params[:id])
  end

  def new
    @task = @project.tasks.build
  end

  def create
    @task = @project.tasks.build(task_params)
    if @task.save
      redirect_to [@project, @task]
    else
      render :new
    end
  end

  def edit
    @task = @project.tasks.find(params[:id])
  end

  def update
    @task = @project.tasks.find(params[:id])
    if @task.update(task_params)
       redirect_to [@project, @task]
    else
      render :edit
    end
  end

  def destroy
    @task = @project.tasks.find(params[:id])
    @task.destroy
    redirect_to project_tasks_path(@project)
  end

  private

  #Methode qui sert à recupere le projet auquel la tache est associé
  def set_project
    @project = Project.find(params[:project_id])# on met dans @project le contenu de la recherche, ce qui correspond au poject id afin d'appeler la fonction tout en haut
  end

  #Methode utilisé pour filtrer et securiser les parametre des la requete http avant de creer ou de mettre à jour une route
  #En Rails, cela est necessaire pour éviter les problemes de securité tels que l'attaque des masse d'affectation
  def task_params
    params.require(:task).permit(:title, :description, :status, :due_date)# les autre parametre de la requete seront ignorés si pas passé
  end
end
