{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scalabletargetaction.html

module Stratosphere.ResourceProperties.ApplicationAutoScalingScalableTargetScalableTargetAction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- ApplicationAutoScalingScalableTargetScalableTargetAction. See
-- 'applicationAutoScalingScalableTargetScalableTargetAction' for a more
-- convenient constructor.
data ApplicationAutoScalingScalableTargetScalableTargetAction =
  ApplicationAutoScalingScalableTargetScalableTargetAction
  { _applicationAutoScalingScalableTargetScalableTargetActionMaxCapacity :: Maybe (Val Integer)
  , _applicationAutoScalingScalableTargetScalableTargetActionMinCapacity :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ApplicationAutoScalingScalableTargetScalableTargetAction where
  toJSON ApplicationAutoScalingScalableTargetScalableTargetAction{..} =
    object $
    catMaybes
    [ fmap (("MaxCapacity",) . toJSON . fmap Integer') _applicationAutoScalingScalableTargetScalableTargetActionMaxCapacity
    , fmap (("MinCapacity",) . toJSON . fmap Integer') _applicationAutoScalingScalableTargetScalableTargetActionMinCapacity
    ]

instance FromJSON ApplicationAutoScalingScalableTargetScalableTargetAction where
  parseJSON (Object obj) =
    ApplicationAutoScalingScalableTargetScalableTargetAction <$>
      fmap (fmap (fmap unInteger')) (obj .:? "MaxCapacity") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "MinCapacity")
  parseJSON _ = mempty

-- | Constructor for
-- 'ApplicationAutoScalingScalableTargetScalableTargetAction' containing
-- required fields as arguments.
applicationAutoScalingScalableTargetScalableTargetAction
  :: ApplicationAutoScalingScalableTargetScalableTargetAction
applicationAutoScalingScalableTargetScalableTargetAction  =
  ApplicationAutoScalingScalableTargetScalableTargetAction
  { _applicationAutoScalingScalableTargetScalableTargetActionMaxCapacity = Nothing
  , _applicationAutoScalingScalableTargetScalableTargetActionMinCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scalabletargetaction.html#cfn-applicationautoscaling-scalabletarget-scalabletargetaction-maxcapacity
aasststaMaxCapacity :: Lens' ApplicationAutoScalingScalableTargetScalableTargetAction (Maybe (Val Integer))
aasststaMaxCapacity = lens _applicationAutoScalingScalableTargetScalableTargetActionMaxCapacity (\s a -> s { _applicationAutoScalingScalableTargetScalableTargetActionMaxCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scalabletargetaction.html#cfn-applicationautoscaling-scalabletarget-scalabletargetaction-mincapacity
aasststaMinCapacity :: Lens' ApplicationAutoScalingScalableTargetScalableTargetAction (Maybe (Val Integer))
aasststaMinCapacity = lens _applicationAutoScalingScalableTargetScalableTargetActionMinCapacity (\s a -> s { _applicationAutoScalingScalableTargetScalableTargetActionMinCapacity = a })