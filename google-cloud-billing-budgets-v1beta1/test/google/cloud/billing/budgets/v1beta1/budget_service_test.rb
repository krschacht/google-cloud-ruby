# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/billing/budgets/v1beta1/budget_service_pb"
require "google/cloud/billing/budgets/v1beta1/budget_service_services_pb"
require "google/cloud/billing/budgets/v1beta1/budget_service"

class ::Google::Cloud::Billing::Budgets::V1beta1::BudgetService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_budget
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Billing::Budgets::V1beta1::Budget.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    budget = {}

    create_budget_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_budget, name
      assert_kind_of ::Google::Cloud::Billing::Budgets::V1beta1::CreateBudgetRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Billing::Budgets::V1beta1::Budget), request["budget"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_budget_client_stub do
      # Create client
      client = ::Google::Cloud::Billing::Budgets::V1beta1::BudgetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_budget({ parent: parent, budget: budget }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_budget parent: parent, budget: budget do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_budget ::Google::Cloud::Billing::Budgets::V1beta1::CreateBudgetRequest.new(parent: parent, budget: budget) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_budget({ parent: parent, budget: budget }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_budget ::Google::Cloud::Billing::Budgets::V1beta1::CreateBudgetRequest.new(parent: parent, budget: budget), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_budget_client_stub.call_rpc_count
    end
  end

  def test_update_budget
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Billing::Budgets::V1beta1::Budget.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    budget = {}
    update_mask = {}

    update_budget_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_budget, name
      assert_kind_of ::Google::Cloud::Billing::Budgets::V1beta1::UpdateBudgetRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Billing::Budgets::V1beta1::Budget), request["budget"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_budget_client_stub do
      # Create client
      client = ::Google::Cloud::Billing::Budgets::V1beta1::BudgetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_budget({ budget: budget, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_budget budget: budget, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_budget ::Google::Cloud::Billing::Budgets::V1beta1::UpdateBudgetRequest.new(budget: budget, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_budget({ budget: budget, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_budget ::Google::Cloud::Billing::Budgets::V1beta1::UpdateBudgetRequest.new(budget: budget, update_mask: update_mask), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_budget_client_stub.call_rpc_count
    end
  end

  def test_get_budget
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Billing::Budgets::V1beta1::Budget.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_budget_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_budget, name
      assert_kind_of ::Google::Cloud::Billing::Budgets::V1beta1::GetBudgetRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_budget_client_stub do
      # Create client
      client = ::Google::Cloud::Billing::Budgets::V1beta1::BudgetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_budget({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_budget name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_budget ::Google::Cloud::Billing::Budgets::V1beta1::GetBudgetRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_budget({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_budget ::Google::Cloud::Billing::Budgets::V1beta1::GetBudgetRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_budget_client_stub.call_rpc_count
    end
  end

  def test_list_budgets
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Billing::Budgets::V1beta1::ListBudgetsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_budgets_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_budgets, name
      assert_kind_of ::Google::Cloud::Billing::Budgets::V1beta1::ListBudgetsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_budgets_client_stub do
      # Create client
      client = ::Google::Cloud::Billing::Budgets::V1beta1::BudgetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_budgets({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_budgets parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_budgets ::Google::Cloud::Billing::Budgets::V1beta1::ListBudgetsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_budgets({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_budgets ::Google::Cloud::Billing::Budgets::V1beta1::ListBudgetsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_budgets_client_stub.call_rpc_count
    end
  end

  def test_delete_budget
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_budget_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_budget, name
      assert_kind_of ::Google::Cloud::Billing::Budgets::V1beta1::DeleteBudgetRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_budget_client_stub do
      # Create client
      client = ::Google::Cloud::Billing::Budgets::V1beta1::BudgetService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_budget({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_budget name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_budget ::Google::Cloud::Billing::Budgets::V1beta1::DeleteBudgetRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_budget({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_budget ::Google::Cloud::Billing::Budgets::V1beta1::DeleteBudgetRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_budget_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Billing::Budgets::V1beta1::BudgetService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Billing::Budgets::V1beta1::BudgetService::Client::Configuration, config
  end
end
