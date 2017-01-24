{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html

module Stratosphere.Resources.EC2VPCCidrBlock where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2VPCCidrBlock. See 'ec2VPCCidrBlock' for
-- | a more convenient constructor.
data EC2VPCCidrBlock =
  EC2VPCCidrBlock
  { _eC2VPCCidrBlockAmazonProvidedIpv6CidrBlock :: Maybe (Val Bool')
  , _eC2VPCCidrBlockVpcId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2VPCCidrBlock where
  toJSON EC2VPCCidrBlock{..} =
    object
    [ "AmazonProvidedIpv6CidrBlock" .= _eC2VPCCidrBlockAmazonProvidedIpv6CidrBlock
    , "VpcId" .= _eC2VPCCidrBlockVpcId
    ]

instance FromJSON EC2VPCCidrBlock where
  parseJSON (Object obj) =
    EC2VPCCidrBlock <$>
      obj .: "AmazonProvidedIpv6CidrBlock" <*>
      obj .: "VpcId"
  parseJSON _ = mempty

-- | Constructor for 'EC2VPCCidrBlock' containing required fields as
-- | arguments.
ec2VPCCidrBlock
  :: Val Text -- ^ 'ecvpccbVpcId'
  -> EC2VPCCidrBlock
ec2VPCCidrBlock vpcIdarg =
  EC2VPCCidrBlock
  { _eC2VPCCidrBlockAmazonProvidedIpv6CidrBlock = Nothing
  , _eC2VPCCidrBlockVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-amazonprovidedipv6cidrblock
ecvpccbAmazonProvidedIpv6CidrBlock :: Lens' EC2VPCCidrBlock (Maybe (Val Bool'))
ecvpccbAmazonProvidedIpv6CidrBlock = lens _eC2VPCCidrBlockAmazonProvidedIpv6CidrBlock (\s a -> s { _eC2VPCCidrBlockAmazonProvidedIpv6CidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-vpcid
ecvpccbVpcId :: Lens' EC2VPCCidrBlock (Val Text)
ecvpccbVpcId = lens _eC2VPCCidrBlockVpcId (\s a -> s { _eC2VPCCidrBlockVpcId = a })
