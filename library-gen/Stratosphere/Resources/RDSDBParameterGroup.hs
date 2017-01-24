{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html

module Stratosphere.Resources.RDSDBParameterGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RDSDBParameterGroup. See
-- | 'rdsdbParameterGroup' for a more convenient constructor.
data RDSDBParameterGroup =
  RDSDBParameterGroup
  { _rDSDBParameterGroupDescription :: Val Text
  , _rDSDBParameterGroupFamily :: Val Text
  , _rDSDBParameterGroupParameters :: Maybe Object
  , _rDSDBParameterGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON RDSDBParameterGroup where
  toJSON RDSDBParameterGroup{..} =
    object
    [ "Description" .= _rDSDBParameterGroupDescription
    , "Family" .= _rDSDBParameterGroupFamily
    , "Parameters" .= _rDSDBParameterGroupParameters
    , "Tags" .= _rDSDBParameterGroupTags
    ]

instance FromJSON RDSDBParameterGroup where
  parseJSON (Object obj) =
    RDSDBParameterGroup <$>
      obj .: "Description" <*>
      obj .: "Family" <*>
      obj .: "Parameters" <*>
      obj .: "Tags"
  parseJSON _ = mempty

-- | Constructor for 'RDSDBParameterGroup' containing required fields as
-- | arguments.
rdsdbParameterGroup
  :: Val Text -- ^ 'rdsdbpgDescription'
  -> Val Text -- ^ 'rdsdbpgFamily'
  -> RDSDBParameterGroup
rdsdbParameterGroup descriptionarg familyarg =
  RDSDBParameterGroup
  { _rDSDBParameterGroupDescription = descriptionarg
  , _rDSDBParameterGroupFamily = familyarg
  , _rDSDBParameterGroupParameters = Nothing
  , _rDSDBParameterGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html#cfn-rds-dbparametergroup-description
rdsdbpgDescription :: Lens' RDSDBParameterGroup (Val Text)
rdsdbpgDescription = lens _rDSDBParameterGroupDescription (\s a -> s { _rDSDBParameterGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html#cfn-rds-dbparametergroup-family
rdsdbpgFamily :: Lens' RDSDBParameterGroup (Val Text)
rdsdbpgFamily = lens _rDSDBParameterGroupFamily (\s a -> s { _rDSDBParameterGroupFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html#cfn-rds-dbparametergroup-parameters
rdsdbpgParameters :: Lens' RDSDBParameterGroup (Maybe Object)
rdsdbpgParameters = lens _rDSDBParameterGroupParameters (\s a -> s { _rDSDBParameterGroupParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbparametergroup.html#cfn-rds-dbparametergroup-tags
rdsdbpgTags :: Lens' RDSDBParameterGroup (Maybe [Tag])
rdsdbpgTags = lens _rDSDBParameterGroupTags (\s a -> s { _rDSDBParameterGroupTags = a })
