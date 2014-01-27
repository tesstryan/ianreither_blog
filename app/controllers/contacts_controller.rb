class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find_by(id: params[:id])
  end

  def new
  end

  def create
    @contact = Contact.new
    @contact.email = params[:email]
    @contact.twitter = params[:twitter]
    @contact.linkedin = params[:linkedin]
    @contact.angel_list = params[:angel_list]
    @contact.quora = params[:angel_list]

    if @contact.save
      redirect_to contacts_url, notice: "Contact created successfully."
    else
      render 'new'
    end
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.email = params[:email]
    @contact.twitter = params[:twitter]
    @contact.linkedin = params[:linkedin]
    @contact.angel_list = params[:angel_list]
    @contact.quora = params[:angel_list]

    if @contact.save
      redirect_to contacts_url, notice: "Contact updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy

    redirect_to contacts_url, notice: "Contact deleted."
  end
end
