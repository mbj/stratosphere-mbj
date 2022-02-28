{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html

module Stratosphere.Resources.CloudWatchInsightRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CloudWatchInsightRule. See
-- 'cloudWatchInsightRule' for a more convenient constructor.
data CloudWatchInsightRule =
  CloudWatchInsightRule
  { _cloudWatchInsightRuleRuleBody :: Val Text
  , _cloudWatchInsightRuleRuleName :: Val Text
  , _cloudWatchInsightRuleRuleState :: Val Text
  , _cloudWatchInsightRuleTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties CloudWatchInsightRule where
  toResourceProperties CloudWatchInsightRule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudWatch::InsightRule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("RuleBody",) . toJSON) _cloudWatchInsightRuleRuleBody
        , (Just . ("RuleName",) . toJSON) _cloudWatchInsightRuleRuleName
        , (Just . ("RuleState",) . toJSON) _cloudWatchInsightRuleRuleState
        , fmap (("Tags",) . toJSON) _cloudWatchInsightRuleTags
        ]
    }

-- | Constructor for 'CloudWatchInsightRule' containing required fields as
-- arguments.
cloudWatchInsightRule
  :: Val Text -- ^ 'cwirRuleBody'
  -> Val Text -- ^ 'cwirRuleName'
  -> Val Text -- ^ 'cwirRuleState'
  -> CloudWatchInsightRule
cloudWatchInsightRule ruleBodyarg ruleNamearg ruleStatearg =
  CloudWatchInsightRule
  { _cloudWatchInsightRuleRuleBody = ruleBodyarg
  , _cloudWatchInsightRuleRuleName = ruleNamearg
  , _cloudWatchInsightRuleRuleState = ruleStatearg
  , _cloudWatchInsightRuleTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-rulebody
cwirRuleBody :: Lens' CloudWatchInsightRule (Val Text)
cwirRuleBody = lens _cloudWatchInsightRuleRuleBody (\s a -> s { _cloudWatchInsightRuleRuleBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-rulename
cwirRuleName :: Lens' CloudWatchInsightRule (Val Text)
cwirRuleName = lens _cloudWatchInsightRuleRuleName (\s a -> s { _cloudWatchInsightRuleRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-rulestate
cwirRuleState :: Lens' CloudWatchInsightRule (Val Text)
cwirRuleState = lens _cloudWatchInsightRuleRuleState (\s a -> s { _cloudWatchInsightRuleRuleState = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-insightrule.html#cfn-cloudwatch-insightrule-tags
cwirTags :: Lens' CloudWatchInsightRule (Maybe [Tag])
cwirTags = lens _cloudWatchInsightRuleTags (\s a -> s { _cloudWatchInsightRuleTags = a })
