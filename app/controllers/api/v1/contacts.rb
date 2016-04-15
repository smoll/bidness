module API
  module V1
    class Contacts < Grape::API
      include API::V1::Defaults

      resource :contacts do
        desc "Return all contacts"
        get "", root: :contacts do
          Contact.all
        end

        desc "Return a contact"
        params do
          requires :id, type: String, desc: "ID of the contact"
        end
        get ":id", root: "contact" do
          Contact.where(id: permitted_params[:id]).first!
        end

        desc "Create a contact"
        params do
          requires :first_name, type: String, desc: "First name of the contact"
          requires :last_name, type: String, desc: "Last name of the contact"
          requires :email, type: String, desc: "Email of the contact"
          requires :title, type: String, desc: "Title of the contact"
        end
        post "", root: :contacts do
          Contact.create!(
            first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            title: params[:title]
          )
        end
      end
    end
  end
end
