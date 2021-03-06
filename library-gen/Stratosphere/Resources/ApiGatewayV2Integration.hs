{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html

module Stratosphere.Resources.ApiGatewayV2Integration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApiGatewayV2IntegrationTlsConfig

-- | Full data type definition for ApiGatewayV2Integration. See
-- 'apiGatewayV2Integration' for a more convenient constructor.
data ApiGatewayV2Integration =
  ApiGatewayV2Integration
  { _apiGatewayV2IntegrationApiId :: Val Text
  , _apiGatewayV2IntegrationConnectionId :: Maybe (Val Text)
  , _apiGatewayV2IntegrationConnectionType :: Maybe (Val Text)
  , _apiGatewayV2IntegrationContentHandlingStrategy :: Maybe (Val Text)
  , _apiGatewayV2IntegrationCredentialsArn :: Maybe (Val Text)
  , _apiGatewayV2IntegrationDescription :: Maybe (Val Text)
  , _apiGatewayV2IntegrationIntegrationMethod :: Maybe (Val Text)
  , _apiGatewayV2IntegrationIntegrationSubtype :: Maybe (Val Text)
  , _apiGatewayV2IntegrationIntegrationType :: Val Text
  , _apiGatewayV2IntegrationIntegrationUri :: Maybe (Val Text)
  , _apiGatewayV2IntegrationPassthroughBehavior :: Maybe (Val Text)
  , _apiGatewayV2IntegrationPayloadFormatVersion :: Maybe (Val Text)
  , _apiGatewayV2IntegrationRequestParameters :: Maybe Object
  , _apiGatewayV2IntegrationRequestTemplates :: Maybe Object
  , _apiGatewayV2IntegrationTemplateSelectionExpression :: Maybe (Val Text)
  , _apiGatewayV2IntegrationTimeoutInMillis :: Maybe (Val Integer)
  , _apiGatewayV2IntegrationTlsConfig :: Maybe ApiGatewayV2IntegrationTlsConfig
  } deriving (Show, Eq)

instance ToResourceProperties ApiGatewayV2Integration where
  toResourceProperties ApiGatewayV2Integration{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ApiGatewayV2::Integration"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApiId",) . toJSON) _apiGatewayV2IntegrationApiId
        , fmap (("ConnectionId",) . toJSON) _apiGatewayV2IntegrationConnectionId
        , fmap (("ConnectionType",) . toJSON) _apiGatewayV2IntegrationConnectionType
        , fmap (("ContentHandlingStrategy",) . toJSON) _apiGatewayV2IntegrationContentHandlingStrategy
        , fmap (("CredentialsArn",) . toJSON) _apiGatewayV2IntegrationCredentialsArn
        , fmap (("Description",) . toJSON) _apiGatewayV2IntegrationDescription
        , fmap (("IntegrationMethod",) . toJSON) _apiGatewayV2IntegrationIntegrationMethod
        , fmap (("IntegrationSubtype",) . toJSON) _apiGatewayV2IntegrationIntegrationSubtype
        , (Just . ("IntegrationType",) . toJSON) _apiGatewayV2IntegrationIntegrationType
        , fmap (("IntegrationUri",) . toJSON) _apiGatewayV2IntegrationIntegrationUri
        , fmap (("PassthroughBehavior",) . toJSON) _apiGatewayV2IntegrationPassthroughBehavior
        , fmap (("PayloadFormatVersion",) . toJSON) _apiGatewayV2IntegrationPayloadFormatVersion
        , fmap (("RequestParameters",) . toJSON) _apiGatewayV2IntegrationRequestParameters
        , fmap (("RequestTemplates",) . toJSON) _apiGatewayV2IntegrationRequestTemplates
        , fmap (("TemplateSelectionExpression",) . toJSON) _apiGatewayV2IntegrationTemplateSelectionExpression
        , fmap (("TimeoutInMillis",) . toJSON) _apiGatewayV2IntegrationTimeoutInMillis
        , fmap (("TlsConfig",) . toJSON) _apiGatewayV2IntegrationTlsConfig
        ]
    }

-- | Constructor for 'ApiGatewayV2Integration' containing required fields as
-- arguments.
apiGatewayV2Integration
  :: Val Text -- ^ 'agviApiId'
  -> Val Text -- ^ 'agviIntegrationType'
  -> ApiGatewayV2Integration
apiGatewayV2Integration apiIdarg integrationTypearg =
  ApiGatewayV2Integration
  { _apiGatewayV2IntegrationApiId = apiIdarg
  , _apiGatewayV2IntegrationConnectionId = Nothing
  , _apiGatewayV2IntegrationConnectionType = Nothing
  , _apiGatewayV2IntegrationContentHandlingStrategy = Nothing
  , _apiGatewayV2IntegrationCredentialsArn = Nothing
  , _apiGatewayV2IntegrationDescription = Nothing
  , _apiGatewayV2IntegrationIntegrationMethod = Nothing
  , _apiGatewayV2IntegrationIntegrationSubtype = Nothing
  , _apiGatewayV2IntegrationIntegrationType = integrationTypearg
  , _apiGatewayV2IntegrationIntegrationUri = Nothing
  , _apiGatewayV2IntegrationPassthroughBehavior = Nothing
  , _apiGatewayV2IntegrationPayloadFormatVersion = Nothing
  , _apiGatewayV2IntegrationRequestParameters = Nothing
  , _apiGatewayV2IntegrationRequestTemplates = Nothing
  , _apiGatewayV2IntegrationTemplateSelectionExpression = Nothing
  , _apiGatewayV2IntegrationTimeoutInMillis = Nothing
  , _apiGatewayV2IntegrationTlsConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-apiid
agviApiId :: Lens' ApiGatewayV2Integration (Val Text)
agviApiId = lens _apiGatewayV2IntegrationApiId (\s a -> s { _apiGatewayV2IntegrationApiId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-connectionid
agviConnectionId :: Lens' ApiGatewayV2Integration (Maybe (Val Text))
agviConnectionId = lens _apiGatewayV2IntegrationConnectionId (\s a -> s { _apiGatewayV2IntegrationConnectionId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-connectiontype
agviConnectionType :: Lens' ApiGatewayV2Integration (Maybe (Val Text))
agviConnectionType = lens _apiGatewayV2IntegrationConnectionType (\s a -> s { _apiGatewayV2IntegrationConnectionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-contenthandlingstrategy
agviContentHandlingStrategy :: Lens' ApiGatewayV2Integration (Maybe (Val Text))
agviContentHandlingStrategy = lens _apiGatewayV2IntegrationContentHandlingStrategy (\s a -> s { _apiGatewayV2IntegrationContentHandlingStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-credentialsarn
agviCredentialsArn :: Lens' ApiGatewayV2Integration (Maybe (Val Text))
agviCredentialsArn = lens _apiGatewayV2IntegrationCredentialsArn (\s a -> s { _apiGatewayV2IntegrationCredentialsArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-description
agviDescription :: Lens' ApiGatewayV2Integration (Maybe (Val Text))
agviDescription = lens _apiGatewayV2IntegrationDescription (\s a -> s { _apiGatewayV2IntegrationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-integrationmethod
agviIntegrationMethod :: Lens' ApiGatewayV2Integration (Maybe (Val Text))
agviIntegrationMethod = lens _apiGatewayV2IntegrationIntegrationMethod (\s a -> s { _apiGatewayV2IntegrationIntegrationMethod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-integrationsubtype
agviIntegrationSubtype :: Lens' ApiGatewayV2Integration (Maybe (Val Text))
agviIntegrationSubtype = lens _apiGatewayV2IntegrationIntegrationSubtype (\s a -> s { _apiGatewayV2IntegrationIntegrationSubtype = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-integrationtype
agviIntegrationType :: Lens' ApiGatewayV2Integration (Val Text)
agviIntegrationType = lens _apiGatewayV2IntegrationIntegrationType (\s a -> s { _apiGatewayV2IntegrationIntegrationType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-integrationuri
agviIntegrationUri :: Lens' ApiGatewayV2Integration (Maybe (Val Text))
agviIntegrationUri = lens _apiGatewayV2IntegrationIntegrationUri (\s a -> s { _apiGatewayV2IntegrationIntegrationUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-passthroughbehavior
agviPassthroughBehavior :: Lens' ApiGatewayV2Integration (Maybe (Val Text))
agviPassthroughBehavior = lens _apiGatewayV2IntegrationPassthroughBehavior (\s a -> s { _apiGatewayV2IntegrationPassthroughBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-payloadformatversion
agviPayloadFormatVersion :: Lens' ApiGatewayV2Integration (Maybe (Val Text))
agviPayloadFormatVersion = lens _apiGatewayV2IntegrationPayloadFormatVersion (\s a -> s { _apiGatewayV2IntegrationPayloadFormatVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-requestparameters
agviRequestParameters :: Lens' ApiGatewayV2Integration (Maybe Object)
agviRequestParameters = lens _apiGatewayV2IntegrationRequestParameters (\s a -> s { _apiGatewayV2IntegrationRequestParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-requesttemplates
agviRequestTemplates :: Lens' ApiGatewayV2Integration (Maybe Object)
agviRequestTemplates = lens _apiGatewayV2IntegrationRequestTemplates (\s a -> s { _apiGatewayV2IntegrationRequestTemplates = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-templateselectionexpression
agviTemplateSelectionExpression :: Lens' ApiGatewayV2Integration (Maybe (Val Text))
agviTemplateSelectionExpression = lens _apiGatewayV2IntegrationTemplateSelectionExpression (\s a -> s { _apiGatewayV2IntegrationTemplateSelectionExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-timeoutinmillis
agviTimeoutInMillis :: Lens' ApiGatewayV2Integration (Maybe (Val Integer))
agviTimeoutInMillis = lens _apiGatewayV2IntegrationTimeoutInMillis (\s a -> s { _apiGatewayV2IntegrationTimeoutInMillis = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-tlsconfig
agviTlsConfig :: Lens' ApiGatewayV2Integration (Maybe ApiGatewayV2IntegrationTlsConfig)
agviTlsConfig = lens _apiGatewayV2IntegrationTlsConfig (\s a -> s { _apiGatewayV2IntegrationTlsConfig = a })
