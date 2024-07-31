// Copyright 2023 Google LLC
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

public import Foundation

/// Provides whether a feature is supported on this device.
public protocol FeatureSupportStatusProvider {

  /// Returns whether the feature manager successfully registered itself as supported.
  func register(_ featureManager: FeatureManager) -> Bool

  /// Returns whether the feature with featureID is supported on this device.
  func isFeatureSupported(_ featureID: UUID) -> Bool
}
