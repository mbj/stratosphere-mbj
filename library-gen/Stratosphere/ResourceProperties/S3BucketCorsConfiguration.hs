{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html

module Stratosphere.ResourceProperties.S3BucketCorsConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketCorsRule

-- | Full data type definition for S3BucketCorsConfiguration. See
-- | 's3BucketCorsConfiguration' for a more convenient constructor.
data S3BucketCorsConfiguration =
  S3BucketCorsConfiguration
  { _s3BucketCorsConfigurationCorsRules :: [S3BucketCorsRule]
  } deriving (Show, Eq)

instance ToJSON S3BucketCorsConfiguration where
  toJSON S3BucketCorsConfiguration{..} =
    object
    [ "CorsRules" .= _s3BucketCorsConfigurationCorsRules
    ]

instance FromJSON S3BucketCorsConfiguration where
  parseJSON (Object obj) =
    S3BucketCorsConfiguration <$>
      obj .: "CorsRules"
  parseJSON _ = mempty

-- | Constructor for 'S3BucketCorsConfiguration' containing required fields as
-- | arguments.
s3BucketCorsConfiguration
  :: [S3BucketCorsRule] -- ^ 'sbccCorsRules'
  -> S3BucketCorsConfiguration
s3BucketCorsConfiguration corsRulesarg =
  S3BucketCorsConfiguration
  { _s3BucketCorsConfigurationCorsRules = corsRulesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-cors.html#cfn-s3-bucket-cors-corsrule
sbccCorsRules :: Lens' S3BucketCorsConfiguration [S3BucketCorsRule]
sbccCorsRules = lens _s3BucketCorsConfigurationCorsRules (\s a -> s { _s3BucketCorsConfigurationCorsRules = a })
