{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-fleet.html

module Stratosphere.Resources.RoboMakerFleet where

import Stratosphere.ResourceImports


-- | Full data type definition for RoboMakerFleet. See 'roboMakerFleet' for a
-- more convenient constructor.
data RoboMakerFleet =
  RoboMakerFleet
  { _roboMakerFleetName :: Maybe (Val Text)
  , _roboMakerFleetTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties RoboMakerFleet where
  toResourceProperties RoboMakerFleet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::RoboMaker::Fleet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Name",) . toJSON) _roboMakerFleetName
        , fmap (("Tags",) . toJSON) _roboMakerFleetTags
        ]
    }

-- | Constructor for 'RoboMakerFleet' containing required fields as arguments.
roboMakerFleet
  :: RoboMakerFleet
roboMakerFleet  =
  RoboMakerFleet
  { _roboMakerFleetName = Nothing
  , _roboMakerFleetTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-fleet.html#cfn-robomaker-fleet-name
rmfName :: Lens' RoboMakerFleet (Maybe (Val Text))
rmfName = lens _roboMakerFleetName (\s a -> s { _roboMakerFleetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-fleet.html#cfn-robomaker-fleet-tags
rmfTags :: Lens' RoboMakerFleet (Maybe Object)
rmfTags = lens _roboMakerFleetTags (\s a -> s { _roboMakerFleetTags = a })
