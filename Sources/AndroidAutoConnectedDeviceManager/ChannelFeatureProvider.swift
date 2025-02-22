// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// Indicates the role of the current user for a connected car.
public enum UserRole: Equatable {
  case driver
  case passenger

  public var isDriver: Bool { self == .driver }
  public var isPassenger: Bool { self == .passenger }
}

/// Provides for channel specific feature requests.
@MainActor public protocol ChannelFeatureProvider {
  /// Request the user role (driver/passenger) with the specified channel.
  ///
  /// After the secure channel connection is established, the feature provider can be used to query
  /// for the user's role.
  ///
  /// - Parameters:
  ///   - channel: Channel with which to request the user's role.
  ///   - completion: Handler to call upon query response with the user's role.
  func requestUserRole(
    with channel: SecuredCarChannel,
    completion: @escaping (UserRole?) -> Void
  )
}
