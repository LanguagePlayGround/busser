# -*- encoding: utf-8 -*-
#
# Author:: Fletcher Nichol (<fnichol@nichol.ca>)
#
# Copyright (C) 2013, Fletcher Nichol
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'busser/thor'
require 'busser/command/suite_cleanup'
require 'busser/command/suite_path'

module Busser

  module Command

    # Suite commands.
    #
    # @author Fletcher Nichol <fnichol@nichol.ca>
    #
    class Suite < Busser::Thor::Base

      register Busser::Command::SuiteCleanup, "cleanup",
        "cleanup", "Cleans up test suite directories"
      register Busser::Command::SuitePath, "path",
        "path [<plugin_name>]", "Displays the directory for suite tests"
    end
  end
end
