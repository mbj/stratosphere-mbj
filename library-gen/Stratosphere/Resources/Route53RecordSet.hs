{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html

module Stratosphere.Resources.Route53RecordSet where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Route53RecordSetAliasTarget
import Stratosphere.ResourceProperties.Route53RecordSetGeoLocation

-- | Full data type definition for Route53RecordSet. See 'route53RecordSet'
-- | for a more convenient constructor.
data Route53RecordSet =
  Route53RecordSet
  { _route53RecordSetAliasTarget :: Maybe Route53RecordSetAliasTarget
  , _route53RecordSetComment :: Maybe (Val Text)
  , _route53RecordSetFailover :: Maybe (Val Text)
  , _route53RecordSetGeoLocation :: Maybe Route53RecordSetGeoLocation
  , _route53RecordSetHealthCheckId :: Maybe (Val Text)
  , _route53RecordSetHostedZoneId :: Maybe (Val Text)
  , _route53RecordSetHostedZoneName :: Maybe (Val Text)
  , _route53RecordSetName :: Val Text
  , _route53RecordSetRegion :: Maybe (Val Text)
  , _route53RecordSetResourceRecords :: Maybe [Val Text]
  , _route53RecordSetSetIdentifier :: Maybe (Val Text)
  , _route53RecordSetTTL :: Maybe (Val Text)
  , _route53RecordSetType :: Val Text
  , _route53RecordSetWeight :: Maybe (Val Integer')
  } deriving (Show, Eq)

instance ToJSON Route53RecordSet where
  toJSON Route53RecordSet{..} =
    object
    [ "AliasTarget" .= _route53RecordSetAliasTarget
    , "Comment" .= _route53RecordSetComment
    , "Failover" .= _route53RecordSetFailover
    , "GeoLocation" .= _route53RecordSetGeoLocation
    , "HealthCheckId" .= _route53RecordSetHealthCheckId
    , "HostedZoneId" .= _route53RecordSetHostedZoneId
    , "HostedZoneName" .= _route53RecordSetHostedZoneName
    , "Name" .= _route53RecordSetName
    , "Region" .= _route53RecordSetRegion
    , "ResourceRecords" .= _route53RecordSetResourceRecords
    , "SetIdentifier" .= _route53RecordSetSetIdentifier
    , "TTL" .= _route53RecordSetTTL
    , "Type" .= _route53RecordSetType
    , "Weight" .= _route53RecordSetWeight
    ]

instance FromJSON Route53RecordSet where
  parseJSON (Object obj) =
    Route53RecordSet <$>
      obj .: "AliasTarget" <*>
      obj .: "Comment" <*>
      obj .: "Failover" <*>
      obj .: "GeoLocation" <*>
      obj .: "HealthCheckId" <*>
      obj .: "HostedZoneId" <*>
      obj .: "HostedZoneName" <*>
      obj .: "Name" <*>
      obj .: "Region" <*>
      obj .: "ResourceRecords" <*>
      obj .: "SetIdentifier" <*>
      obj .: "TTL" <*>
      obj .: "Type" <*>
      obj .: "Weight"
  parseJSON _ = mempty

-- | Constructor for 'Route53RecordSet' containing required fields as
-- | arguments.
route53RecordSet
  :: Val Text -- ^ 'rrsName'
  -> Val Text -- ^ 'rrsType'
  -> Route53RecordSet
route53RecordSet namearg typearg =
  Route53RecordSet
  { _route53RecordSetAliasTarget = Nothing
  , _route53RecordSetComment = Nothing
  , _route53RecordSetFailover = Nothing
  , _route53RecordSetGeoLocation = Nothing
  , _route53RecordSetHealthCheckId = Nothing
  , _route53RecordSetHostedZoneId = Nothing
  , _route53RecordSetHostedZoneName = Nothing
  , _route53RecordSetName = namearg
  , _route53RecordSetRegion = Nothing
  , _route53RecordSetResourceRecords = Nothing
  , _route53RecordSetSetIdentifier = Nothing
  , _route53RecordSetTTL = Nothing
  , _route53RecordSetType = typearg
  , _route53RecordSetWeight = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-aliastarget
rrsAliasTarget :: Lens' Route53RecordSet (Maybe Route53RecordSetAliasTarget)
rrsAliasTarget = lens _route53RecordSetAliasTarget (\s a -> s { _route53RecordSetAliasTarget = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-comment
rrsComment :: Lens' Route53RecordSet (Maybe (Val Text))
rrsComment = lens _route53RecordSetComment (\s a -> s { _route53RecordSetComment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-failover
rrsFailover :: Lens' Route53RecordSet (Maybe (Val Text))
rrsFailover = lens _route53RecordSetFailover (\s a -> s { _route53RecordSetFailover = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-geolocation
rrsGeoLocation :: Lens' Route53RecordSet (Maybe Route53RecordSetGeoLocation)
rrsGeoLocation = lens _route53RecordSetGeoLocation (\s a -> s { _route53RecordSetGeoLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-healthcheckid
rrsHealthCheckId :: Lens' Route53RecordSet (Maybe (Val Text))
rrsHealthCheckId = lens _route53RecordSetHealthCheckId (\s a -> s { _route53RecordSetHealthCheckId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-hostedzoneid
rrsHostedZoneId :: Lens' Route53RecordSet (Maybe (Val Text))
rrsHostedZoneId = lens _route53RecordSetHostedZoneId (\s a -> s { _route53RecordSetHostedZoneId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-hostedzonename
rrsHostedZoneName :: Lens' Route53RecordSet (Maybe (Val Text))
rrsHostedZoneName = lens _route53RecordSetHostedZoneName (\s a -> s { _route53RecordSetHostedZoneName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-name
rrsName :: Lens' Route53RecordSet (Val Text)
rrsName = lens _route53RecordSetName (\s a -> s { _route53RecordSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-region
rrsRegion :: Lens' Route53RecordSet (Maybe (Val Text))
rrsRegion = lens _route53RecordSetRegion (\s a -> s { _route53RecordSetRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-resourcerecords
rrsResourceRecords :: Lens' Route53RecordSet (Maybe [Val Text])
rrsResourceRecords = lens _route53RecordSetResourceRecords (\s a -> s { _route53RecordSetResourceRecords = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-setidentifier
rrsSetIdentifier :: Lens' Route53RecordSet (Maybe (Val Text))
rrsSetIdentifier = lens _route53RecordSetSetIdentifier (\s a -> s { _route53RecordSetSetIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-ttl
rrsTTL :: Lens' Route53RecordSet (Maybe (Val Text))
rrsTTL = lens _route53RecordSetTTL (\s a -> s { _route53RecordSetTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-type
rrsType :: Lens' Route53RecordSet (Val Text)
rrsType = lens _route53RecordSetType (\s a -> s { _route53RecordSetType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset.html#cfn-route53-recordset-weight
rrsWeight :: Lens' Route53RecordSet (Maybe (Val Integer'))
rrsWeight = lens _route53RecordSetWeight (\s a -> s { _route53RecordSetWeight = a })
