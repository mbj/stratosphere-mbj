{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html

module Stratosphere.ResourceProperties.CodePipelineCustomActionTypeArtifactDetails where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | CodePipelineCustomActionTypeArtifactDetails. See
-- | 'codePipelineCustomActionTypeArtifactDetails' for a more convenient
-- | constructor.
data CodePipelineCustomActionTypeArtifactDetails =
  CodePipelineCustomActionTypeArtifactDetails
  { _codePipelineCustomActionTypeArtifactDetailsMaximumCount :: Val Integer'
  , _codePipelineCustomActionTypeArtifactDetailsMinimumCount :: Val Integer'
  } deriving (Show, Eq)

instance ToJSON CodePipelineCustomActionTypeArtifactDetails where
  toJSON CodePipelineCustomActionTypeArtifactDetails{..} =
    object
    [ "MaximumCount" .= _codePipelineCustomActionTypeArtifactDetailsMaximumCount
    , "MinimumCount" .= _codePipelineCustomActionTypeArtifactDetailsMinimumCount
    ]

instance FromJSON CodePipelineCustomActionTypeArtifactDetails where
  parseJSON (Object obj) =
    CodePipelineCustomActionTypeArtifactDetails <$>
      obj .: "MaximumCount" <*>
      obj .: "MinimumCount"
  parseJSON _ = mempty

-- | Constructor for 'CodePipelineCustomActionTypeArtifactDetails' containing
-- | required fields as arguments.
codePipelineCustomActionTypeArtifactDetails
  :: Val Integer' -- ^ 'cpcatadMaximumCount'
  -> Val Integer' -- ^ 'cpcatadMinimumCount'
  -> CodePipelineCustomActionTypeArtifactDetails
codePipelineCustomActionTypeArtifactDetails maximumCountarg minimumCountarg =
  CodePipelineCustomActionTypeArtifactDetails
  { _codePipelineCustomActionTypeArtifactDetailsMaximumCount = maximumCountarg
  , _codePipelineCustomActionTypeArtifactDetailsMinimumCount = minimumCountarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-maximumcount
cpcatadMaximumCount :: Lens' CodePipelineCustomActionTypeArtifactDetails (Val Integer')
cpcatadMaximumCount = lens _codePipelineCustomActionTypeArtifactDetailsMaximumCount (\s a -> s { _codePipelineCustomActionTypeArtifactDetailsMaximumCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-minimumcount
cpcatadMinimumCount :: Lens' CodePipelineCustomActionTypeArtifactDetails (Val Integer')
cpcatadMinimumCount = lens _codePipelineCustomActionTypeArtifactDetailsMinimumCount (\s a -> s { _codePipelineCustomActionTypeArtifactDetailsMinimumCount = a })
