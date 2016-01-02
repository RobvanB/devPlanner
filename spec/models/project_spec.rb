require 'rails_helper'

RSpec.describe Project, type: :model do

    before do
      @project = Project.new(proj_name: "Example project 1", proj_id: "tp1", customer_id: 1, status_id: 1, pm_id: 1)
    end

    subject{ @project }

    it { should respond_to (:proj_name) }
    it { should respond_to (:proj_id) }
    it { should respond_to (:customer_id) }
    it { should respond_to (:status_id) }
    it { should respond_to (:pm_id) }
    it { should respond_to (:status) }
    it { should respond_to (:pm) }
    it { should respond_to (:customer) }

  end
