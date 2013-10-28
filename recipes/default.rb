#
# Cookbook Name:: push-jobs
# Recipe:: default
#
# Author:: Joshua Timberman <joshua@opscode.com>
# Author:: Charles Johnson <charles@opscode.com>
# Copyright (c) 2013, Opscode, Inc. <legal@opscode.com>
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

case node['platform_family']
when 'windows'
  include_recipe 'push-jobs::windows'
when 'debian', 'rhel'
  include_recipe 'push-jobs::linux'
else
  raise 'This cookbook is currently only supported on Windows, Debian-family linux, and Redhat-family linux.'
end
