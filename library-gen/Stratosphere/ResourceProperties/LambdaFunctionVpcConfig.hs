{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html

module Stratosphere.ResourceProperties.LambdaFunctionVpcConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for LambdaFunctionVpcConfig. See
-- | 'lambdaFunctionVpcConfig' for a more convenient constructor.
data LambdaFunctionVpcConfig =
  LambdaFunctionVpcConfig
  { _lambdaFunctionVpcConfigSecurityGroupIds :: [Val Text]
  , _lambdaFunctionVpcConfigSubnetIds :: [Val Text]
  } deriving (Show, Eq)

instance ToJSON LambdaFunctionVpcConfig where
  toJSON LambdaFunctionVpcConfig{..} =
    object
    [ "SecurityGroupIds" .= _lambdaFunctionVpcConfigSecurityGroupIds
    , "SubnetIds" .= _lambdaFunctionVpcConfigSubnetIds
    ]

instance FromJSON LambdaFunctionVpcConfig where
  parseJSON (Object obj) =
    LambdaFunctionVpcConfig <$>
      obj .: "SecurityGroupIds" <*>
      obj .: "SubnetIds"
  parseJSON _ = mempty

-- | Constructor for 'LambdaFunctionVpcConfig' containing required fields as
-- | arguments.
lambdaFunctionVpcConfig
  :: [Val Text] -- ^ 'lfvcSecurityGroupIds'
  -> [Val Text] -- ^ 'lfvcSubnetIds'
  -> LambdaFunctionVpcConfig
lambdaFunctionVpcConfig securityGroupIdsarg subnetIdsarg =
  LambdaFunctionVpcConfig
  { _lambdaFunctionVpcConfigSecurityGroupIds = securityGroupIdsarg
  , _lambdaFunctionVpcConfigSubnetIds = subnetIdsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-securitygroupids
lfvcSecurityGroupIds :: Lens' LambdaFunctionVpcConfig [Val Text]
lfvcSecurityGroupIds = lens _lambdaFunctionVpcConfigSecurityGroupIds (\s a -> s { _lambdaFunctionVpcConfigSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-subnetids
lfvcSubnetIds :: Lens' LambdaFunctionVpcConfig [Val Text]
lfvcSubnetIds = lens _lambdaFunctionVpcConfigSubnetIds (\s a -> s { _lambdaFunctionVpcConfigSubnetIds = a })
