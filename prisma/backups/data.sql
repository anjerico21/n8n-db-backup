SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict yRUHtCWRWkUDEH0n1UxDfvPqGEq2kfQXR3VOs3wW7iJLWKefAXGKtFsssp5SujC

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at", "custom_claims_allowlist") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:chatUser	Chat User	Chat User	global	t	2026-05-18 22:16:47.015+00	2026-05-18 22:16:47.015+00
global:owner	Owner	Owner	global	t	2026-05-18 21:57:13.556+00	2026-05-18 22:16:49.07+00
global:admin	Admin	Admin	global	t	2026-05-18 21:57:13.556+00	2026-05-18 22:16:49.07+00
global:member	Member	Member	global	t	2026-05-18 21:57:13.556+00	2026-05-18 22:16:49.071+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2026-05-18 21:57:13.556+00	2026-05-18 22:16:51.074+00
project:personalOwner	Project Owner	Project Owner	project	t	2026-05-18 21:57:13.556+00	2026-05-18 22:16:51.074+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2026-05-18 21:57:13.556+00	2026-05-18 22:16:51.074+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2026-05-18 21:57:13.556+00	2026-05-18 22:16:51.074+00
project:chatUser	Project Chat User	Chat-only access to chatting with workflows that have n8n Chat enabled	project	t	2026-05-18 21:57:13.556+00	2026-05-18 22:16:51.074+00
credential:owner	Credential Owner	Credential Owner	credential	t	2026-05-18 22:16:47.015+00	2026-05-18 22:16:47.015+00
credential:user	Credential User	Credential User	credential	t	2026-05-18 22:16:47.015+00	2026-05-18 22:16:47.015+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2026-05-18 22:16:47.015+00	2026-05-18 22:16:47.015+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2026-05-18 22:16:47.015+00	2026-05-18 22:16:47.015+00
secretsProviderConnection:owner	Secrets Provider Connection Owner	Full control of secrets provider connection settings and secrets	secretsProviderConnection	t	2026-05-18 22:16:47.015+00	2026-05-18 22:16:47.015+00
secretsProviderConnection:user	Secrets Provider Connection User	Read-only access to use secrets from the connection	secretsProviderConnection	t	2026-05-18 22:16:47.015+00	2026-05-18 22:16:47.015+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
eecfd4bf-2ff8-403c-a261-09f2ea67eea1	anjericocanasa@gmail.com	Anjerico	Canasa	$2a$10$kTvjtJeXpyoxt/VptBIlc.hwxaSey2g4T5tf8kn8cQhwvgyXn/x62	{"version":"v4","personalization_survey_submitted_at":"2026-05-18T22:21:10.160Z","personalization_survey_n8n_version":"2.20.11","automationGoalDevops":["data-syncing","monitoring-alerting"],"companySize":"<20","companyType":"saas","role":"it","reportedSource":"youtube"}	2026-05-18 21:54:52.71+00	2026-07-02 10:13:44.541+00	{"userActivated":true,"firstSuccessfulWorkflowId":"6L2KXAzhlmhAl1Ds","userActivatedAt":1779400508952,"npsSurvey":{"responded":true,"lastShownAt":1779853321091},"easyAIWorkflowOnboarded":true,"dismissedCallouts":{"aiAgentStarterCallout":true}}	f	f	\N	\N	2026-07-02	global:owner
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description", "creatorId", "customTelemetryTags") FROM stdin;
fhQn7QGKBMDITeEY	Anjerico Canasa <anjericocanasa@gmail.com>	personal	2026-05-18 21:55:58.006+00	2026-05-18 22:20:28.57+00	\N	\N	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	[]
\.


--
-- Data for Name: agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents" ("id", "name", "description", "projectId", "integrations", "schema", "tools", "skills", "versionId", "createdAt", "updatedAt", "activeVersionId") FROM stdin;
\.


--
-- Data for Name: agent_checkpoints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_checkpoints" ("runId", "agentId", "state", "expired", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_history" ("versionId", "agentId", "schema", "tools", "skills", "publishedById", "author", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_execution_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_execution_threads" ("id", "agentId", "agentName", "projectId", "sessionNumber", "totalPromptTokens", "totalCompletionTokens", "totalCost", "totalDuration", "title", "emoji", "createdAt", "updatedAt", "taskId", "taskVersionId") FROM stdin;
\.


--
-- Data for Name: agent_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_execution" ("id", "threadId", "status", "startedAt", "stoppedAt", "duration", "userMessage", "assistantResponse", "model", "promptTokens", "completionTokens", "totalTokens", "cost", "toolCalls", "timeline", "error", "hitlStatus", "source", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_files" ("id", "agentId", "binaryDataId", "fileName", "mimeType", "fileSizeBytes", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_task_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_definition" ("id", "agentId", "name", "objective", "cronExpression", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_task_run_lock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_run_lock" ("agentId", "taskId", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_task_snapshot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_snapshot" ("versionId", "taskId", "enabled", "name", "objective", "cronExpression", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_resources" ("id", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entries" ("id", "agentId", "resourceId", "content", "contentHash", "status", "supersededBy", "embeddingModel", "embedding", "metadata", "lastSeenAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_cursors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_cursors" ("agentId", "observationScopeId", "lastIndexedObservationId", "lastIndexedObservationCreatedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_locks" ("agentId", "resourceId", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observations" ("id", "agentId", "observationScopeId", "marker", "text", "parentId", "tokenCount", "status", "supersededBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_sources" ("id", "agentId", "memoryEntryId", "observationId", "threadId", "evidenceHash", "evidenceText", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_messages" ("id", "threadId", "resourceId", "role", "type", "content", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observation_cursors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observation_cursors" ("agentId", "observationScopeId", "lastObservedMessageId", "lastObservedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observation_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observation_locks" ("agentId", "observationScopeId", "taskKind", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived", "versionCounter", "description", "activeVersionId", "nodeGroups", "sourceWorkflowId") FROM stdin;
My workflow 2	f	[{"parameters":{"rule":{"interval":[{"triggerAtHour":7}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-160,-96],"id":"02606c7a-2712-4ca0-95c9-d0ee780d43db","name":"Schedule Trigger"},{"parameters":{"promptType":"define","text":"'''\\nYou are an Inspirational Quote Generator agent. Your daily task is to generate exactly one unique 5-word inspirational quote and save it to the attached spreadsheet.\\n\\nRules and Process (follow strictly in this order every time):\\n\\n1. Access the Spreadsheet: Open the attached spreadsheet and read all existing quotes in the \\"Quote\\" column (or the main quotes column).\\n\\n2. Generate a Quote: Create a fresh, original 5-word inspirational quote. It must be exactly 5 words, positive, motivational, and powerful. Do not use more or fewer words.\\n\\n3. Uniqueness Check:\\n   - Check if the exact quote already exists in the spreadsheet.\\n   - Also check for similar quotes (quotes that share 3 or more words, or convey a very similar message).\\n   - If the quote is identical or too similar to any existing one, discard it and generate a completely new 5-word quote. Repeat this step until you have a truly unique quote.\\n\\n4. Save the Quote:\\n   - Once you have a unique 5-word quote, append it as a new row in the spreadsheet.\\n   - Include today's date in a \\"Date\\" column if it exists, or just add the quote.\\n\\n5. Final Output:\\n   - After saving, reply to the user with:\\n     - The quote in bold\\n     - Confirmation that it was saved successfully\\n     - The total number of quotes now in the spreadsheet (if possible)\\n\\nImportant Guidelines:\\n- Always prioritize originality.\\n- Quotes should feel fresh and not sound like common clichés when possible.\\n- Never output a quote before confirming it is unique.\\n- Never skip the spreadsheet check.\\n\\nStart now and generate today's unique 5-word inspirational quote.\\n'''","options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[48,-96],"id":"9637cd79-318c-46a5-9892-2f1173a95fff","name":"Generate Quote"},{"parameters":{"modelName":"models/gemini-3.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1.1,"position":[-96,112],"id":"3315b301-bcbb-4892-b304-af31e5f62001","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"npiGI4lVZvjYWKUo","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[192,112],"id":"fe702473-0753-459c-94db-19caa22ecd0f","name":"Get row(s) in sheet in Google Sheets","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Quote":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Quote', ``, 'string') }}","Date Posted":"={{ $json['Readable date'] }}"},"matchingColumns":[],"schema":[{"id":"Quote","displayName":"Quote","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Date Posted","displayName":"Date Posted","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[400,112],"id":"6bb41811-178b-4d16-90be-9d3e2f9f9b0c","name":"Append row in sheet in Google Sheets","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"cityName":"manila,ph"},"type":"n8n-nodes-base.openWeatherMap","typeVersion":1,"position":[400,-96],"id":"6a407a9a-fc2e-477f-a256-52b0001e40fd","name":"OpenWeatherMap","credentials":{"openWeatherMapApi":{"id":"a9sV3Oh10cbHaTAN","name":"OpenWeatherMap account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Generate Quote","type":"main","index":0}]]},"Generate Quote":{"main":[[{"node":"OpenWeatherMap","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Quote","type":"ai_languageModel","index":0}]]},"Get row(s) in sheet in Google Sheets":{"ai_tool":[[{"node":"Generate Quote","type":"ai_tool","index":0}]]},"Append row in sheet in Google Sheets":{"ai_tool":[[{"node":"Generate Quote","type":"ai_tool","index":0}]]}}	2026-07-02 09:08:40.628+00	2026-07-02 09:16:45.43+00	{"executionOrder":"v1","binaryMode":"separate","availableInMCP":false}	\N	{}	87dd865b-9e08-4ac5-b022-628430083f46	0	zGzdtmcuZicig0MZ	\N	\N	t	2	\N	\N	[]	\N
Social Media Agent	f	[{"parameters":{"rule":{"interval":[{"triggerAtHour":7}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-1120,64],"id":"b1ec821d-6329-42e0-beae-04c74bf0d861","name":"Schedule Trigger"},{"parameters":{"promptType":"define","text":"You are an Inspirational Quote Generator. Generate one unique 5-word inspirational quote daily and save it to the attached spreadsheet.\\n\\nFollow these steps strictly:\\n\\n1. Open the spreadsheet and read all existing quotes.\\n2. Generate a fresh, original 5-word motivational quote.\\n3. Check for uniqueness: If the exact quote or a very similar one (3+ shared words or same message) exists, generate a new one. Repeat until unique.\\n4. Append the unique quote as a new row (add today's date if there's a Date column).\\n5. Reply with the quote in bold + confirmation it was saved.\\n\\nRules:\\n- Always ensure the quote is unique before saving/outputting.\\n- Prioritize originality, keep it positive and powerful.\\n- Never skip the spreadsheet check.","options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[-912,64],"id":"ec65cecc-0d14-4edc-ae7e-5098a27f50c9","name":"Generate Quote"},{"parameters":{"modelName":"models/gemini-2.0-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1.1,"position":[-544,-208],"id":"a29f9204-6faa-469b-b7db-30a83ef5f307","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"npiGI4lVZvjYWKUo","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"cityName":"manila,ph"},"type":"n8n-nodes-base.openWeatherMap","typeVersion":1,"position":[-560,80],"id":"af90a19b-b8bd-4b01-bca9-83a913d7e633","name":"OpenWeatherMap","credentials":{"openWeatherMapApi":{"id":"a9sV3Oh10cbHaTAN","name":"OpenWeatherMap account"}}},{"parameters":{"promptType":"define","text":"='''\\nYou are a Weather Forecast Content Generator agent for Facebook posts. Your daily task is to create engaging weather content including a 5-word inspirational quote, a relevant image, and a clear explanation.\\n\\nRules and Process (follow strictly in this order):\\n\\n1. Access the Spreadsheet: Open the attached spreadsheet and review all existing rows for previously used image URLs and quotes.\\n\\n2. Get Image URL:\\n   - Use the connected tool to retrieve a relevant image URL for today's weather (focus on {{ $json.weather[0].description }} theme).\\n   - Check if this image URL already exists in the spreadsheet.\\n   - If the URL is already saved (exact match), request a new image URL from the tool. Repeat until you have a unique image URL.\\n\\n3. Generate 17-Word Explanation:\\n   - Write exactly 17 words explaining the meaning of {{ $json.weather[0].description }} in a simple, engaging way suitable for a Facebook weather post.\\n\\n4. Save to Spreadsheet:\\n   - Append a new row with:\\n     - Date (today's date)\\n     - Image URL\\n     - 17-word Explanation\\n   - Ensure all items are unique before saving.\\n\\n6. Final Output for Facebook Post:\\n   After saving, provide the complete ready-to-post content in this format:\\n\\n   Overcast clouds blanket the sky creating a soft diffused light that brings      peaceful    mood and gentle rain possibilities.\\n\\n   Image: https://example.com/overcast-weather-image-unique.jpg\\n\\n   Return the unique image URL and the 17-word explanation in JSON format.\\n\\n   Confirmation: Content saved to spreadsheet successfully.\\n\\nImportant Guidelines:\\n- All generated content must be original and unique.\\n- Never use previously saved image URLs or quotes.\\n- Keep the 17-word explanation exactly 17 words.\\n- Make everything positive, engaging, and suitable for Facebook audience.\\n- Always complete the spreadsheet check and save before outputting the post.\\n\\nExample Output: \\n\\n{\\n\\"imageUrl\\":\\"https://example.com/overcast-weather-image-unique.jpg\\"\\n\\"weatherForecast\\":\\"Overcast clouds blanket the sky creating a soft diffused light that brings peaceful mood and gentle rain possibilities.\\" \\n}\\n\\nStart now and generate today's complete weather forecast content for {{ $json.weather[0].description }}.\\n''' ","hasOutputParser":true,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[-352,64],"id":"fffe1bbd-6537-4de1-9dc6-2b9fa7ed3d3e","name":"AI Agent"},{"parameters":{"documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-816,384],"id":"aebeea0e-f63f-4940-95bb-2ea4776eaaa4","name":"Check if quote is already used","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Quote":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Quote', ``, 'string') }}","Date Posted":"={{ $json['Readable date'] }}"},"matchingColumns":[],"schema":[{"id":"Quote","displayName":"Quote","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Date Posted","displayName":"Date Posted","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-672,384],"id":"6ec65565-adfb-4055-90ea-59ed994b0d05","name":"save quote","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-416,464],"id":"646dd433-57a4-400d-bf1d-4faf58725d51","name":"check if image url is already used","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Quote":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Quote', ``, 'string') }}","Date Posted":"={{ $json['Readable date'] }}"},"matchingColumns":[],"schema":[{"id":"Quote","displayName":"Quote","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Date Posted","displayName":"Date Posted","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-272,464],"id":"8228ecd6-7a0f-4b77-9b59-07041c965f32","name":"save image url","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"jsonSchemaExample":"{\\n\\"imageUrl\\":\\"https://example.com/overcast-weather-image-unique.jpg\\",\\n\\"weatherForecast\\":\\"Overcast clouds blanket the sky creating a soft diffused light that brings peaceful mood and gentle rain possibilities.\\" \\n}"},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[48,464],"id":"28dbc3dd-496f-4d1f-b227-26d801df07db","name":"Structured Output Parser"}]	{"Schedule Trigger":{"main":[[{"node":"Generate Quote","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Quote","type":"ai_languageModel","index":0},{"node":"AI Agent","type":"ai_languageModel","index":0}]]},"Generate Quote":{"main":[[{"node":"OpenWeatherMap","type":"main","index":0}]]},"OpenWeatherMap":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Check if quote is already used":{"ai_tool":[[{"node":"Generate Quote","type":"ai_tool","index":0}]]},"save quote":{"ai_tool":[[{"node":"Generate Quote","type":"ai_tool","index":0}]]},"check if image url is already used":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"save image url":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"AI Agent","type":"ai_outputParser","index":0}]]}}	2026-07-02 05:35:49.207+00	2026-07-02 10:10:46.853+00	{"executionOrder":"v1","binaryMode":"separate","availableInMCP":false}	\N	{}	33c70a72-6e31-44d0-8150-e2cc856cde2d	0	hblPfsvtXd3oEUIX	{"templateCredsSetupCompleted":true}	\N	f	139	\N	\N	[]	\N
Events Booking System	f	[{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1027027248,"mode":"list","cachedResultName":"HostGhe Event Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=1027027248"},"event":"rowAdded","options":{}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-1760,112],"id":"a943fb8d-67e6-4231-b880-d4299112acb4","name":"Google Sheets Trigger","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"filtersUI":{"values":[{"lookupColumn":"EventDate","lookupValue":"={{ $('Set').item.json.eventDate }}"}]},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-1040,352],"id":"3113c9d2-6b53-4f69-9d30-848883ce36ab","name":"Get row(s) in sheet","alwaysOutputData":true,"credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"assignments":{"assignments":[{"id":"16ce8920-47ae-40c0-baf5-3c385f06b1a6","name":"clientName","value":"={{ $json['Full Name'] }}","type":"string"},{"id":"aed0ddf9-d479-4c8c-a301-c2693f4d4a2b","name":"clientEmail","value":"={{ $json['Email Address'] }}","type":"string"},{"id":"4fc6b405-abf8-4439-91dc-4e09baf18b09","name":"clientPhone","value":"={{ $json['Contact Number'] }}","type":"string"},{"id":"68dd9908-48ce-406d-ab1f-830bbda51183","name":"eventType","value":"={{ $json['Event Type '] }}","type":"string"},{"id":"8e74bb71-8cf6-4492-86df-b26d8026c44d","name":"eventDate","value":"={{ $json['Event Date'] }}","type":"string"},{"id":"afbd244d-b384-4d54-85a7-c3390d756b59","name":"guestCount","value":"={{ $json['Number of Guests'] }}","type":"number"},{"id":"73196f2c-c695-4bbe-8813-b3af17e93286","name":"notes","value":"={{ $json.Notes }}","type":"string"},{"id":"678d2eb9-6967-4c3d-bc66-e64f7b7b9c3f","name":"eventPlace","value":"={{ $json['Event Place'] }}","type":"string"},{"id":"0389b0d4-27fd-4849-a0e7-1ec6a7d7da35","name":"eventTheme","value":"={{ $json.Theme }}","type":"string"},{"id":"f143669a-41b6-411b-8345-3765c27bf812","name":"eventMotif","value":"={{ $json['Color Motif'] }}","type":"string"},{"id":"a0f48293-9744-4741-b995-690c875caa65","name":"eventTime","value":"={{ $json['Event Time'].split('—')[1].trim() }}","type":"string"},{"id":"3692a1f7-2c66-445b-8af2-2c0127c54b94","name":"eventSlot","value":"={{ $json['Event Time'].split('—')[0].trim() }}","type":"string"},{"id":"a033ed76-5d6f-4e43-b769-84775db438c2","name":"Package ","value":"={{ $json['Package '] }}","type":"string"},{"id":"91eb96ac-cef5-43f9-bc65-18df90c4a032","name":"depositAmount","value":"={{ Number($json['Package '].replace(/[^0-9]/g, '')) * 0.25 }}","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-1552,112],"id":"b5b9c849-f7cf-42f4-bc14-cf8f41462d6e","name":"Set"},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"columns":{"mappingMode":"defineBelow","value":{"ClientName":"={{ $('Set').item.json.clientName }}","Email":"={{ $('Set').item.json.clientEmail }}","EventType":"={{ $('Set').item.json.eventType }}","Phone":"={{ $('Set').item.json.clientPhone }}","EventDate":"={{ $('Set').item.json.eventDate }}","EventTime":"={{ $('Set').item.json.eventTime }}","TimeSlot":"={{ $('Set').item.json.eventSlot }}","Package":"={{ $('Set').item.json['Package '] }}","DepositAmount ":"={{ $('Set').item.json.depositAmount }}","EventPlace":"={{ $('Set').item.json.eventPlace }}","EventTheme":"={{ $('Set').item.json.eventTheme }}","EventMotif":"={{ $('Set').item.json.eventMotif }}","GuestCount":"={{ $('Set').item.json.guestCount }}","Source":"Client","Status":"={{ $json.status }}","Notes":"={{ $('Set').item.json.notes }}","CalendarEventID":"={{ $json.id }}","Reschedule Count":"0","Original Date":"={{ $('Set').item.json.eventDate }}","Timestamp":"={{ $('Google Sheets Trigger').item.json.Timestamp }}"},"matchingColumns":[],"schema":[{"id":"Timestamp","displayName":"Timestamp","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"ClientName","displayName":"ClientName","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Phone","displayName":"Phone","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventType","displayName":"EventType","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventDate","displayName":"EventDate","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTime","displayName":"EventTime","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"TimeSlot","displayName":"TimeSlot","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Package","displayName":"Package","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositAmount ","displayName":"DepositAmount ","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositStatus","displayName":"DepositStatus","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventPlace","displayName":"EventPlace","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTheme","displayName":"EventTheme","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventMotif","displayName":"EventMotif","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"GuestCount","displayName":"GuestCount","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Source","displayName":"Source","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Notes","displayName":"Notes","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"CalendarEventID","displayName":"CalendarEventID","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Reschedule Count","displayName":"Reschedule Count","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Original Date","displayName":"Original Date","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-224,208],"id":"4a6e9368-03be-425e-9ebf-c99a8729b6e0","name":"Append row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"=Booking Confirmed — {{ $('Set').item.json.eventType }} on {{ $('Set').item.json.eventDate }}","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},\\n\\nGreat news — your booking is confirmed!\\n\\nHere are your booking details:\\n\\nEvent:      {{ $('Set').item.json.eventType }}\\nDate:       {{ $('Set').item.json.eventDate }}\\nTime:       {{ $('Set').item.json.eventTime }}\\nTime Slot:  {{ $('Set').item.json.eventSlot }}\\nVenue:      {{ $('Set').item.json.eventPlace }}\\nGuests:     {{ $('Set').item.json.guestCount }}\\nPackage:    {{ $('Set').item.json['Package '] }}\\n\\nA Google Calendar invite has been sent to your email.\\n\\nPlease accept it to add the event to your calendar.\\n\\nDEPOSIT REQUIRED:\\nAmount:    ₱{{ $('Set').item.json.depositAmount }}\\nDeadline:  Within 48 hours to secure your booking\\n\\nPlease send your deposit via:\\nGCash:     09XX-XXX-XXXX (Name)\\nMaya:      09XX-XXX-XXXX (Name)\\nBDO:       Account Number XXXX (Name)\\n\\nSend proof of payment to this email with subject:\\nDEPOSIT — {{ $('Set').item.json.clientName }} — {{ $('Set').item.json.eventDate }}\\n\\nNEXT STEPS:\\nWe will contact you at {{ $('Set').item.json.clientPhone }} \\nwithin 24 hours to schedule your initial consultation.\\n\\nDuring consultation we will discuss:\\n- Event requirements and theme details\\n- Timeline and coordination plan\\n- Final headcount confirmation\\n\\nNeed to cancel your booking?\\nSubmit a cancellation request here: https://forms.gle/ngqDhLFnrwBLqMjk8\\n\\nPlease note: Initial deposits are non-refundable.\\n\\nLooking forward to making your event special!\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[0,208],"id":"403d8b72-2fea-4e45-ad10-0a73ad6d9463","name":"Confirm email to client","webhookId":"a29ca897-12b2-4bf0-8e9b-64871a9fc548","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"loose","version":3},"conditions":[{"id":"c29549b8-fa82-40c9-8040-4344f4bc0f63","leftValue":"={{ new Date($json.eventDate).getTime() < new Date().getTime() }}","rightValue":"true","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":true,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-1312,112],"id":"cad511c5-a82a-4363-8148-38d72eeea40a","name":"If Date < todate"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"loose","version":3},"conditions":[{"id":"a4305948-5e89-414e-a25a-0c99eed6581c","leftValue":"={{ $json.allowed }}","rightValue":"true","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":true,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-624,352],"id":"1f5fddd1-cf87-4e8a-9b17-0acf65c95cca","name":"If Date is Open"},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Re: Your Event Booking Request","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nThank you for your inquiry!  \\n\\nUnfortunately we cannot process bookings for past dates.  Please resubmit with a future date and we will  check availability for you right away.  \\n\\nWarm regards, \\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-1040,-64],"id":"27448167-98d4-48dd-b57b-5444f69b5bb1","name":"Decline message to client 1","webhookId":"8ededf6f-167a-4d2a-9594-ac896bc6077f","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Re: Your Event Booking Request","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},\\n\\nThank you for your inquiry!\\n\\nUnfortunately we are unable to confirm your booking for {{ $('Set').item.json.eventDate }}.\\n\\nReason: {{ $('Smart Conflict Check').item.json.reason }}\\n\\nPlease contact us to discuss alternative dates\\nor time slots.\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-416,464],"id":"f71be010-9903-422f-9f01-69e37edc38eb","name":"Decline message to client 2","webhookId":"8c21fa97-9f8c-4c68-9303-2aad50e5f5b3","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"jsCode":"const existingBookings = $input.all().filter(\\n  item => Object.keys(item.json).length > 0 &&\\n  item.json['Status'] !== 'Cancelled'\\n);\\n\\nconst newTimeSlot = $('Set').item.json.eventSlot;\\nconst newEventType = $('Set').item.json.eventType;\\n\\n// No existing bookings\\nif (existingBookings.length === 0) {\\n  return [{\\n    json: {\\n      allowed: true,\\n      reason: 'Date is free'\\n    }\\n  }];\\n}\\n\\nfor (const booking of existingBookings) {\\n\\n  const existingSlot = booking.json['TimeSlot'];\\n  const existingType = booking.json['EventType'];\\n\\n  // Block same slot\\n  if (existingSlot === newTimeSlot) {\\n    return [{\\n      json: {\\n        allowed: false,\\n        reason: `The ${newTimeSlot} slot on this date is already taken.`\\n      }\\n    }];\\n  }\\n\\n  // If Morning is NOT Baptism → block all other bookings\\n  if (\\n    existingSlot.includes('Morning') &&\\n    !existingType.includes('Baptism')\\n  ) {\\n    return [{\\n      json: {\\n        allowed: false,\\n        reason: 'The host is fully booked on this date.'\\n      }\\n    }];\\n  }\\n}\\n\\nreturn [{\\n  json: {\\n    allowed: true,\\n    reason: 'Booking allowed.'\\n  }\\n}];"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[-832,352],"id":"2ae610ee-2674-49fc-b8d0-66a4798e91b9","name":"Smart Conflict Check"},{"parameters":{"calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"start":"={{ DateTime.fromFormat($('Set').item.json.eventDate + ' ' + $('Set').item.json.eventTime, 'M/d/yyyy h:mma', {zone: 'Asia/Manila'}).toISO() }}","end":"={{ DateTime.fromFormat($('Set').item.json.eventDate + ' ' + $('Set').item.json.eventTime, 'M/d/yyyy h:mma', {zone: 'Asia/Manila'}).plus({hours: 4}).toISO() }}","additionalFields":{"attendees":["={{ $('Set').item.json.clientEmail }}"],"description":"=Client: {{ $('Set').item.json.clientName }} \\nPhone:  {{ $('Set').item.json.clientPhone }}\\nEmail:  {{ $('Set').item.json.clientEmail }}\\nEvent:  {{ $('Set').item.json.eventType }}\\nSlot:   {{ $('Set').item.json.eventSlot }} \\nGuests: {{ $('Set').item.json.guestCount }} \\nVenue:  {{ $('Set').item.json.eventPlace }} \\nPackage: {{ $('Set').item.json['Package '] }}","location":"={{ $('Set').item.json.eventPlace }}","summary":"={{ $('Set').item.json.eventType }} — {{ $('Set').item.json.clientName }}"}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-416,208],"id":"3417636b-40e7-462c-a938-a49996053c64","name":"Add Confirmed Booking to Calendar","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"sendTo":"anjericocanasa@gmail.com","subject":"New booking received via Google Form!","emailType":"text","message":"=To:       [your own Gmail]\\n\\nSubject:  New Booking — {{ $('Set').item.json.eventType }} — {{ $('Set').item.json.eventDate }}\\n\\nBody:\\nNew booking received via Google Form!\\n\\nClient:   {{ $('Set').item.json.clientName }}\\nPhone:    {{ $('Set').item.json.clientPhone }}\\nEmail:    {{ $('Set').item.json.clientEmail }}\\nEvent:    {{ $('Set').item.json.eventType }}\\nDate:     {{ $('Set').item.json.eventDate }}\\nGuests:   {{ $('Set').item.json.guestCount }}\\nNotes:    {{ $('Set').item.json.notes }}\\n\\nCheck Confirmed Bookings sheet for full details.\\n\\nhttps://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?resourcekey=&gid=905873055#gid=905873055","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[208,208],"id":"5921de67-16bf-4aec-a8eb-8ffd00f4b4b9","name":"Alert email to host","webhookId":"252fbe0b-02fc-48e5-ae97-1299ab3d2879","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}}]	{"Google Sheets Trigger":{"main":[[{"node":"Set","type":"main","index":0}]]},"Set":{"main":[[{"node":"If Date < todate","type":"main","index":0}]]},"Get row(s) in sheet":{"main":[[{"node":"Smart Conflict Check","type":"main","index":0}]]},"Append row in sheet":{"main":[[{"node":"Confirm email to client","type":"main","index":0}]]},"Confirm email to client":{"main":[[{"node":"Alert email to host","type":"main","index":0}]]},"If Date < todate":{"main":[[{"node":"Decline message to client 1","type":"main","index":0}],[{"node":"Get row(s) in sheet","type":"main","index":0}]]},"If Date is Open":{"main":[[{"node":"Add Confirmed Booking to Calendar","type":"main","index":0}],[{"node":"Decline message to client 2","type":"main","index":0}]]},"Smart Conflict Check":{"main":[[{"node":"If Date is Open","type":"main","index":0}]]},"Add Confirmed Booking to Calendar":{"main":[[{"node":"Append row in sheet","type":"main","index":0}]]}}	2026-05-20 19:48:43.87+00	2026-06-10 19:28:37.63+00	{"executionOrder":"v1","binaryMode":"separate"}	{"node:Google Sheets Trigger":{"documentId":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","sheetId":1027027248,"lastIndexChecked":3}}	{}	57639898-3998-46c4-a37e-dfbe9632acbd	1	6L2KXAzhlmhAl1Ds	{"templateCredsSetupCompleted":true}	\N	f	574	\N	\N	[]	\N
Event Reschedule Requests	f	[{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1635792048,"mode":"list","cachedResultName":"Reschedule Request","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=1635792048"},"event":"rowAdded","options":{}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-4560,-176],"id":"706021c8-e9fc-48b5-9f63-78bf522ed38a","name":"Google Sheets Trigger","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"filtersUI":{"values":[{"lookupColumn":"Email","lookupValue":"={{ $json.clientEmail }}"},{"lookupColumn":"EventDate","lookupValue":"={{ $json.currentDate }}"}]},"options":{"returnFirstMatch":true}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-3936,-80],"id":"5dba1f30-6e27-4000-9d9e-f9b7dfa646b2","name":"Get row(s) in sheet","alwaysOutputData":true,"credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"92a52204-38eb-42b6-963f-b8d5c1246e35","leftValue":"={{ Object.keys($json).length }}","rightValue":0,"operator":{"type":"number","operation":"gt"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-3744,288],"id":"2ddd8eaa-4ea4-4197-b892-42c278fc480e","name":"If"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"525fc000-b798-4eb0-ae9c-b0274c26a339","leftValue":"={{ $json['Status'] }}","rightValue":"confirmed","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-3536,128],"id":"aafa10e6-b2c2-4d97-986a-d00b01cca07d","name":"If1"},{"parameters":{"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"filtersUI":{"values":[{"lookupColumn":"EventDate","lookupValue":"={{ $('Set').item.json.newDate }}"}]},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-3328,32],"id":"578490cf-5da1-4e4f-8acd-e38970ff7943","name":"Get row(s) in sheet1","alwaysOutputData":true,"credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"jsCode":"const existingBookings = $input.all().filter(\\n  item => Object.keys(item.json).length > 0 &&\\n  item.json['Status'] !== 'Cancelled'\\n);\\n\\nconst newTimeSlot = $('Set').item.json.newSlot;\\nconst newEventType = $('Get row(s) in sheet').item.json['EventType'];\\n\\n// Skip the client's OWN current booking\\nconst filteredBookings = existingBookings.filter(\\n  item => item.json['Email'] !== $('Set').item.json.clientEmail\\n);\\n\\nif (filteredBookings.length === 0) {\\n  if (newEventType.includes('Baptism') &&\\n      !newTimeSlot.includes('Morning')) {\\n    return [{ json: {\\n      allowed: false,\\n      reason: 'Baptism events can only be in the morning slot.'\\n    }}];\\n  }\\n  return [{ json: {\\n    allowed: true,\\n    reason: 'New date is free.'\\n  }}];\\n}\\n\\nfor (const booking of filteredBookings) {\\n  const existingSlot = booking.json['TimeSlot'];\\n  const existingType = booking.json['EventType'];\\n\\n  if (existingSlot === newTimeSlot) {\\n    return [{ json: {\\n      allowed: false,\\n      reason: `The ${newTimeSlot} slot on this date is already taken.`\\n    }}];\\n  }\\n\\n  if (newEventType.includes('Baptism') &&\\n      !newTimeSlot.includes('Morning')) {\\n    return [{ json: {\\n      allowed: false,\\n      reason: 'Baptism events can only be in the morning slot.'\\n    }}];\\n  }\\n\\n  if (existingSlot.includes('Morning') &&\\n      !existingType.includes('Baptism')) {\\n    return [{ json: {\\n      allowed: false,\\n      reason: 'The host is fully booked on this date.'\\n    }}];\\n  }\\n\\n  if (existingSlot.includes('Morning') &&\\n      existingType.includes('Baptism')) {\\n    if (newEventType.includes('Baptism')) {\\n      return [{ json: {\\n        allowed: false,\\n        reason: 'Only one Baptism per day allowed.'\\n      }}];\\n    }\\n    if (!newTimeSlot.includes('Morning')) {\\n      return [{ json: {\\n        allowed: true,\\n        reason: 'Afternoon slot available after morning Baptism.'\\n      }}];\\n    }\\n  }\\n}\\n\\nreturn [{ json: {\\n  allowed: true,\\n  reason: 'New date is available.'\\n}}];"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[-3120,32],"id":"5994074b-a200-4c9d-96f4-996db8b1d3bd","name":"Code in JavaScript"},{"parameters":{"assignments":{"assignments":[{"id":"046ed5da-4cf0-4a9c-9553-8782db1add49","name":"clientName","value":"={{ $json['Full Name'] }}","type":"string"},{"id":"f437633c-b0be-4cb5-b360-1e2fcb02d1c3","name":"clientEmail","value":"={{ $json['Email Address'] }}","type":"string"},{"id":"90a2193d-2865-4fa7-bbf6-fb29ce90e5a2","name":"currentDate","value":"={{ $json['Current Event Date'] }}","type":"string"},{"id":"0fca9acd-6a15-4eea-a0de-b2483ac409ab","name":"newDate","value":"={{ $json['New Requested Date'] }}","type":"string"},{"id":"76239124-3ceb-4f09-93ce-de009eb8088b","name":"newTime","value":"={{ $json['New Preferred Time'].split('—')[1].trim() }}","type":"string"},{"id":"b31902c1-511e-4515-afd5-53bd70f33f6a","name":"newSlot","value":"={{ $json['New Preferred Time'].split('—')[0].trim() }}","type":"string"},{"id":"2409083e-20f6-4ddb-9b3c-02319e031795","name":"reason","value":"={{ $json.Reason }}","type":"string"},{"id":"008d64ce-80e1-4aad-a748-7aac65fa22c3","name":"source","value":"Client","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-4384,-176],"id":"f0400b93-74a4-4366-b0c8-b0a5e14be06f","name":"Set"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"883a8816-7475-4897-b136-a55a73660cfc","leftValue":"={{ $json.allowed }}","rightValue":true,"operator":{"type":"boolean","operation":"equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-2912,32],"id":"1d9cda36-b9c9-43a5-9bd8-62daf444613c","name":"If2"},{"parameters":{"operation":"delete","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"eventId":"={{ $('Get row(s) in sheet').item.json['CalendarEventID'] }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-2688,-80],"id":"eb53dbd6-9256-46e3-8d56-b64a79ef5465","name":"Delete an event","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"start":"={{ DateTime.fromFormat($('Set').item.json.newDate + ' ' + $('Set').item.json.newTime, 'M/d/yyyy h:mma', {zone: 'Asia/Manila'}).toISO() }}","end":"={{ DateTime.fromFormat($('Set').item.json.newDate + ' ' + $('Set').item.json.newTime, 'M/d/yyyy h:mma', {zone: 'Asia/Manila'}).plus({hours: 4}).toISO() }}","additionalFields":{"attendees":["={{ $('Set').item.json.clientEmail }}"],"description":"=Rescheduled from {{ $('Set').item.json.currentDate }}               \\nClient: {{ $('Set').item.json.clientName }}               \\nPhone: {{ $('Get row(s) in sheet').item.json['Phone'] }}","summary":"={{ $('Set').item.json.eventType }} — {{ $('Set').item.json.clientName }} (Rescheduled)"}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-2480,-80],"id":"88923478-41ef-4a5c-997c-bae0f2434bd9","name":"Create an event","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"operation":"update","documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"columns":{"mappingMode":"defineBelow","value":{"row_number":"={{ $('Get row(s) in sheet').item.json.row_number }}","EventDate":"={{ $('Set').item.json.newDate }}","EventTime":"={{ $('Set').item.json.newTime }}","TimeSlot":"={{ $('Set').item.json.newSlot }}","CalendarEventID":"={{ $json.id }}","Status":"confirmed","Reschedule Count":"={{ Number($('Get row(s) in sheet').item.json['Reschedule Count']) + 1 }}","Notes":"=Rescheduled from {{ $('Set').item.json.currentDate }}."},"matchingColumns":["row_number"],"schema":[{"id":"Timestamp","displayName":"Timestamp","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"ClientName","displayName":"ClientName","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Phone","displayName":"Phone","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventType","displayName":"EventType","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventDate","displayName":"EventDate","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTime","displayName":"EventTime","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"TimeSlot","displayName":"TimeSlot","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Package","displayName":"Package","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositAmount ","displayName":"DepositAmount ","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositStatus","displayName":"DepositStatus","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventPlace","displayName":"EventPlace","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTheme","displayName":"EventTheme","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventMotif","displayName":"EventMotif","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"GuestCount","displayName":"GuestCount","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Source","displayName":"Source","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Notes","displayName":"Notes","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"CalendarEventID","displayName":"CalendarEventID","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Reschedule Count","displayName":"Reschedule Count","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Original Date","displayName":"Original Date","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"row_number","displayName":"row_number","required":false,"defaultMatch":false,"display":true,"type":"number","canBeUsedToMatch":true,"readOnly":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-2272,-80],"id":"089a66da-f7c0-420d-863b-1ca346238716","name":"Update row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"=Booking Rescheduled — New Date {{ $('Set').item.json.newDate }}","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }}, \\n\\nYour booking has been successfully rescheduled!  \\n\\nUpdated Booking Details: \\n\\nEvent: {{ $('Get row(s) in sheet').item.json['EventType'] }} \\nNew Date:     {{ $('Set').item.json.newDate }} \\nNew Time:     {{ $('Set').item.json.newTime }} \\nVenue:        {{ $('Get row(s) in sheet').item.json['EventPlace'] }} \\nPackage:      {{ $('Get row(s) in sheet').item.json['Package'] }}  \\nPrevious Date: {{ $('Set').item.json.currentDate }}  \\n\\nGood news — your deposit carries over to the new date. No additional deposit required.  \\n\\nA new Google Calendar invite has been sent to your email. Please accept it to update your calendar.  \\n\\nIf you have any questions please contact us directly.  \\n\\nWarm regards, Host Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-2064,-80],"id":"3289898b-ddfb-40a7-935f-3cd978d23c86","name":"Send a message","webhookId":"29c4a611-78f2-4d74-ad93-5787eaf65ae0","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"anjericocanasa@gmail.com","subject":"=Booking Rescheduled — {{ $('Get row(s) in sheet').item.json['EventType'] }} — {{ $('Set').item.json.newDate }}","emailType":"text","message":"=A booking has been rescheduled.  \\n\\nClient: {{ $('Set').item.json.clientName }} \\nEmail:         {{ $('Set').item.json.clientEmail }} \\nEvent:         {{ $('Get row(s) in sheet').item.json['EventType'] }} \\nPrevious Date: {{ $('Set').item.json.currentDate }} \\nNew Date:      {{ $('Set').item.json.newDate }} \\nNew Time:      {{ $('Set').item.json.newTime }} \\nReason:        {{ $('Set').item.json.reason }} \\nSource:        {{ $('Set').item.json.source }}  \\nReschedule Count: {{ Number($('Get row(s) in sheet').item.json['Reschedule Count']) + 1 }}  \\n\\nOld calendar event deleted. New calendar event created.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-1856,-80],"id":"10c0d22a-0d64-4f85-a341-6d4df6d7a04c","name":"Send a message1","webhookId":"11560f9c-d25e-4baf-b863-55f899f517fc","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Reschedule Request — Date Not Available","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nUnfortunately your requested date {{ $('Set').item.json.newDate }} is not available.  \\n\\nPlease submit a new reschedule request with  a different date and we will check availability.\\n\\nWarm regards, Host Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-2688,144],"id":"8671c12a-a03d-405a-ac7b-102ca7a8f2be","name":"Send a message2","webhookId":"eedd766a-748a-4121-a6de-a54ea3b7b928","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"event":"rowUpdate","options":{"columnsToWatch":[]}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-4560,752],"id":"bcc9f292-dc28-4894-9e6a-4c96f2724c70","name":"Google Sheets Trigger1","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"92a52204-38eb-42b6-963f-b8d5c1246e35","leftValue":"={{ $json.Status }}","rightValue":"Reschedule","operator":{"type":"string","operation":"equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-4128,752],"id":"2f4f8fb4-1043-4061-aff5-74c914ccc578","name":"If3"},{"parameters":{"assignments":{"assignments":[{"id":"046ed5da-4cf0-4a9c-9553-8782db1add49","name":"clientName","value":"={{ $('Google Sheets Trigger1').item.json.ClientName }}","type":"string"},{"id":"f437633c-b0be-4cb5-b360-1e2fcb02d1c3","name":"clientEmail","value":"={{ $('Google Sheets Trigger1').item.json.Email }}","type":"string"},{"id":"0fca9acd-6a15-4eea-a0de-b2483ac409ab","name":"newDate","value":"={{ $('Code in JavaScript1').item.json.EventDate }}","type":"string"},{"id":"76239124-3ceb-4f09-93ce-de009eb8088b","name":"newTime","value":"={{ $('Code in JavaScript1').item.json.EventTime }}","type":"string"},{"id":"b31902c1-511e-4515-afd5-53bd70f33f6a","name":"newSlot","value":"={{ $('Code in JavaScript1').item.json.TimeSlot }}","type":"string"},{"id":"2409083e-20f6-4ddb-9b3c-02319e031795","name":"reason","value":"={{ $('Code in JavaScript1').item.json.Notes }}","type":"string"},{"id":"008d64ce-80e1-4aad-a748-7aac65fa22c3","name":"source","value":"Client","type":"string"},{"id":"2422d653-ff9c-48bb-ae9d-01974615f004","name":"oldCalendarEventID","value":"={{ $('Code in JavaScript1').item.json.CalendarEventID }}","type":"string"},{"id":"e4c5728b-56eb-4eec-bd65-139920e90942","name":"eventType","value":"={{ $('Code in JavaScript1').item.json.EventType }}","type":"string"},{"id":"f3449a66-5b14-4019-8ea8-1ee023444288","name":"eventPlace","value":"={{ $('Code in JavaScript1').item.json.EventPlace }}","type":"string"},{"id":"acf55578-4789-4de5-8ffa-71b4d370d953","name":"package","value":"={{ $('Code in JavaScript1').item.json.Package }}","type":"string"},{"id":"ea5a09f0-68eb-4bcb-8141-826a30f83b74","name":"originalDate","value":"={{ $('Code in JavaScript1').item.json['Original Date'] }}","type":"string"},{"id":"f4b35c0a-f4c5-4a3c-a51a-fe43900ab19f","name":"rescheduleCount","value":"={{ $('Code in JavaScript1').item.json['Reschedule Count'] }}","type":"string"},{"id":"dcead9cf-b5e5-4355-9680-7ca7508c0fed","name":"row_number","value":"={{ $('Code in JavaScript1').item.json.row_number }}","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-3920,752],"id":"5b5b5016-3fbe-48a7-abc0-27ea0677c11f","name":"Set1"},{"parameters":{"operation":"delete","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"eventId":"={{ $json.oldCalendarEventID }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-3712,752],"id":"17accebe-9e70-4e09-aa6d-f9d19de8aae4","name":"Delete an event1","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"start":"={{ DateTime.fromFormat($('Set1').item.json.newDate + ' ' + $('Set1').item.json.newTime, 'M/d/yyyy h:mm a', {zone: 'Asia/Manila'}).toISO() }}","end":"={{ DateTime.fromFormat($('Set1').item.json.newDate + ' ' + $('Set1').item.json.newTime, 'M/d/yyyy h:mm a', {zone: 'Asia/Manila'}).plus({hours: 4}).toISO() }}","additionalFields":{"attendees":["={{ $('Set1').item.json.clientEmail }}"],"description":"=Rescheduled by host from {{ $('Set1').item.json.originalDate }}\\nClient: {{ $('Set1').item.json.clientName }}\\nEmail:  {{ $('Set1').item.json.clientEmail }}\\nEvent:  {{ $('Set1').item.json.eventType }}\\nPackage: {{ $('Set1').item.json.package }}","location":"={{ $('Set1').item.json.eventPlace }}","summary":"={{ $('Set1').item.json.eventType }} — {{ $('Set1').item.json.clientName }} (Rescheduled)"}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-3504,752],"id":"0f5095eb-17b0-4ae0-8c18-f1a07fd8a0ce","name":"Create an event1","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"sendTo":"={{ $('Set1').item.json.clientEmail }}","subject":"=our Event Has Been Rescheduled — New Date {{ $('Set1').item.json.newDate }}","emailType":"text","message":"=Hi {{ $('Set1').item.json.clientName }}, \\n\\nYour booking has been successfully rescheduled!  \\n\\nUpdated Booking Details: \\n\\nEvent: {{ $('Set1').item.json['eventType'] }} \\nNew Date:     {{ $('Set1').item.json.newDate }} \\nNew Time:     {{ $('Set1').item.json.newTime }} \\nVenue:        {{ $('Set1').item.json['eventPlace'] }} \\nPackage:      {{ $('Set1').item.json['package'] }}  \\nPrevious Date: {{ $('Set1').item.json.originalDate }}  \\n\\nGood news — your deposit carries over to the new date. No additional deposit required.  \\n\\nA new Google Calendar invite has been sent to your email. Please accept it to update your calendar.  \\n\\nIf you have any questions please contact us directly.  \\n\\nWarm regards, \\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-3056,752],"id":"aefd4750-2178-438d-bcce-6f5028fbbe07","name":"Send a message3","webhookId":"29c4a611-78f2-4d74-ad93-5787eaf65ae0","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"anjericocanasa@gmail.com","subject":"=Booking Rescheduled — {{ $('Set1').item.json['eventType'] }} — {{ $('Set1').item.json.newDate }}","emailType":"text","message":"=A booking has been rescheduled.  \\n\\nClient:        {{ $('Set1').item.json.clientName }} \\nEmail:         {{ $('Set1').item.json.clientEmail }} \\nEvent:         {{ $('Set1').item.json['eventType'] }} \\nPrevious Date: {{ $('Set1').item.json.originalDate }} \\nNew Date:      {{ $('Set1').item.json.newDate }} \\nNew Time:      {{ $('Set1').item.json.newTime }} \\nReason:        {{ $('Set1').item.json.reason }} \\nSource:        {{ $('Set1').item.json.source }}  \\nReschedule Count: {{ Number($('Set1').item.json['Reschedule Count']) + 1 }}  \\n\\nOld calendar event deleted. New calendar event created.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-2832,752],"id":"2f9fdb44-ef32-41cd-9b03-93ebc2d4782c","name":"Send a message4","webhookId":"11560f9c-d25e-4baf-b863-55f899f517fc","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"jsCode":"// Helper: convert Google Sheets serial number to JS Date\\nfunction serialToDate(serial) {\\n  const utcDays = Math.floor(serial - 25569);\\n  const utcValue = utcDays * 86400;\\n  const dateInfo = new Date(utcValue * 1000);\\n\\n  const fractionalDay = serial - Math.floor(serial) + 0.0000001;\\n  let totalSeconds = Math.floor(86400 * fractionalDay);\\n  const seconds = totalSeconds % 60;\\n  totalSeconds -= seconds;\\n  const hours = Math.floor(totalSeconds / 3600);\\n  const minutes = Math.floor(totalSeconds / 60) % 60;\\n\\n  return new Date(dateInfo.getFullYear(), dateInfo.getMonth(), dateInfo.getDate(), hours, minutes, seconds);\\n}\\n\\nfunction formatDate(d) {\\n  return `${d.getMonth() + 1}/${d.getDate()}/${d.getFullYear()}`; // 6/18/2026\\n}\\n\\nfunction formatTime(d) {\\n  let hours = d.getHours();\\n  const minutes = d.getMinutes();\\n  const ampm = hours >= 12 ? 'PM' : 'AM';\\n  hours = hours % 12 || 12;\\n  const minutesStr = minutes < 10 ? '0' + minutes : minutes;\\n  return `${hours}:${minutesStr} ${ampm}`; // 8:00 AM\\n}\\n\\nconst eventDateSerial = $json['EventDate'];\\nconst eventTimeSerial = $json['EventTime'];\\nconst originalDateSerial = $json['Original Date'];\\n\\nreturn {\\n  ...$json,\\n  EventDate: formatDate(serialToDate(eventDateSerial)),\\n  EventTime: formatTime(serialToDate(eventTimeSerial)),\\n  'Original Date': formatDate(serialToDate(originalDateSerial))\\n};"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[-4336,752],"id":"72ff4bc0-9a14-4bd8-a78e-73774f084fd0","name":"Code in JavaScript1"},{"parameters":{"operation":"update","documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"columns":{"mappingMode":"defineBelow","value":{"row_number":"={{ $('Set1').item.json.row_number }}","EventDate":"={{ $('Set1').item.json.newDate }}","EventTime":"={{ $('Set1').item.json.newTime }}","TimeSlot":"={{ $('Set1').item.json.newSlot }}","CalendarEventID":"={{ $json.id }}","Status":"confirmed","Reschedule Count":"={{ Number($('Set1').item.json['Reschedule Count']) + 1 }}","Notes":"=Rescheduled from {{ $('Set1').item.json.originalDate }}."},"matchingColumns":["row_number"],"schema":[{"id":"Timestamp","displayName":"Timestamp","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"ClientName","displayName":"ClientName","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Phone","displayName":"Phone","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventType","displayName":"EventType","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventDate","displayName":"EventDate","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTime","displayName":"EventTime","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"TimeSlot","displayName":"TimeSlot","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Package","displayName":"Package","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositAmount ","displayName":"DepositAmount ","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositStatus","displayName":"DepositStatus","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventPlace","displayName":"EventPlace","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTheme","displayName":"EventTheme","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventMotif","displayName":"EventMotif","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"GuestCount","displayName":"GuestCount","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Source","displayName":"Source","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Notes","displayName":"Notes","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"CalendarEventID","displayName":"CalendarEventID","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Reschedule Count","displayName":"Reschedule Count","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Original Date","displayName":"Original Date","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"row_number","displayName":"row_number","required":false,"defaultMatch":false,"display":true,"type":"number","canBeUsedToMatch":true,"readOnly":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-3280,752],"id":"1f92992c-dc61-41e9-97d3-fb6fbc8c13a6","name":"Update row in sheet1","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Reschedule Request — Booking Not Found","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nWe could not find a confirmed booking matching:\\nEmail: {{ $('Set').item.json.clientEmail }}\\nDate:  {{ $('Set').item.json.currentDate }}\\n\\nPlease contact us directly so we can assist you.\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-3520,464],"id":"70fddcd4-a6da-4c68-95f4-a1300ad4a780","name":"Send a message6","webhookId":"eedd766a-748a-4121-a6de-a54ea3b7b928","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Reschedule Request — Unable to Process","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},\\n\\nWe're unable to process your reschedule request \\nbecause your booking for {{ $('Set').item.json.currentDate }} \\nis either already cancelled or has a different status.\\n\\nPlease contact us directly so we can assist you.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-3328,224],"id":"c7bf72b8-88fb-4a64-824c-138c4e578490","name":"Send a message7","webhookId":"eedd766a-748a-4121-a6de-a54ea3b7b928","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"content":"📋 RESCHEDULE — CLIENT REQUEST\\n\\nTrigger: Client submits Reschedule Request form\\n\\nFlow:\\n1. Find client's existing confirmed booking\\n2. Check if booking is still active (not cancelled)\\n3. Check if new requested date is available\\n   (uses same smart conflict rules as booking:\\n   Baptism morning-only, host fully booked if \\n   non-Baptism morning event exists)\\n4. If available:\\n   - Delete old Google Calendar event\\n   - Create new Google Calendar event\\n   - Update booking with new date/time\\n   - Increment reschedule count\\n   - Email client confirmation (deposit carries over)\\n   - Email host alert\\n5. If NOT available:\\n   - Email client to choose another date\\n\\nEdge cases handled:\\n- Booking not found → notify client\\n- Booking already cancelled → notify client\\n- New date conflicts → notify client with reason\\n\\nNo limit on number of reschedules per client.\\n\\\\","height":720,"width":608},"type":"n8n-nodes-base.stickyNote","position":[-1472,-336],"typeVersion":1,"id":"ba6fca61-0ba5-41b5-9959-e479651e68a5","name":"Sticky Note"},{"parameters":{"content":"📋 RESCHEDULE — HOST MANUAL OVERRIDE\\n\\nTrigger: Host manually edits a row in \\nConfirmed Bookings sheet\\n\\nHow to use:\\n1. Host changes \\"Event Date\\" to new date\\n2. Host changes \\"Status\\" to \\"Reschedule\\"\\n3. Automation runs automatically\\n\\nFlow:\\n1. Detect row update\\n2. Check if Status = \\"Reschedule\\"\\n3. If yes:\\n   - Delete old Google Calendar event\\n   - Create new Google Calendar event \\n     (using new date already in sheet)\\n   - Update row: new Calendar Event ID, \\n     Status back to \\"Confirmed\\", \\n     increment reschedule count\\n   - Email client confirmation\\n   - Email host summary\\n\\nIf Status ≠ \\"Reschedule\\":\\n   - Workflow stops (prevents spam emails \\n     from unrelated sheet edits like notes \\n     or guest count updates)\\n\\nUse case: For clients who request reschedule \\nvia Messenger/call instead of the form — host \\nhandles it directly in the sheet.","height":784,"width":608,"color":"#2E5860"},"type":"n8n-nodes-base.stickyNote","position":[-1456,480],"typeVersion":1,"id":"6cfa8ae5-ecdb-4831-822b-804ef4914576","name":"Sticky Note1"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"6a0d1390-5a56-46c6-bc82-5aecb19de74f","leftValue":"={{ new Date($json.newDate).getTime() < new Date().getTime() }}","rightValue":"","operator":{"type":"boolean","operation":"true","singleValue":true}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-4208,-176],"id":"ad836538-3d81-4f3f-88f5-819eca5c531e","name":"If4"},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Reschedule Request — Booking Not Possible","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nWe could not process past booking dates:\\nEmail: {{ $('Set').item.json.clientEmail }}\\nDate:  {{ $('Set').item.json.newDate }}\\n\\nYou may submit another reschedule form or you may contact us for further assistance.\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-3936,-320],"id":"d5dc6a7a-9a62-43d2-8f63-19d3e71afaa8","name":"Send a message8","webhookId":"eedd766a-748a-4121-a6de-a54ea3b7b928","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}}]	{"Google Sheets Trigger":{"main":[[{"node":"Set","type":"main","index":0}]]},"Get row(s) in sheet":{"main":[[{"node":"If","type":"main","index":0}]]},"If":{"main":[[{"node":"If1","type":"main","index":0}],[{"node":"Send a message6","type":"main","index":0}]]},"If1":{"main":[[{"node":"Get row(s) in sheet1","type":"main","index":0}],[{"node":"Send a message7","type":"main","index":0}]]},"Get row(s) in sheet1":{"main":[[{"node":"Code in JavaScript","type":"main","index":0}]]},"Set":{"main":[[{"node":"If4","type":"main","index":0}]]},"Code in JavaScript":{"main":[[{"node":"If2","type":"main","index":0}]]},"If2":{"main":[[{"node":"Delete an event","type":"main","index":0}],[{"node":"Send a message2","type":"main","index":0}]]},"Delete an event":{"main":[[{"node":"Create an event","type":"main","index":0}]]},"Create an event":{"main":[[{"node":"Update row in sheet","type":"main","index":0}]]},"Update row in sheet":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Send a message":{"main":[[{"node":"Send a message1","type":"main","index":0}]]},"Google Sheets Trigger1":{"main":[[{"node":"Code in JavaScript1","type":"main","index":0}]]},"If3":{"main":[[{"node":"Set1","type":"main","index":0}],[]]},"Delete an event1":{"main":[[{"node":"Create an event1","type":"main","index":0}]]},"Create an event1":{"main":[[{"node":"Update row in sheet1","type":"main","index":0}]]},"Send a message3":{"main":[[{"node":"Send a message4","type":"main","index":0}]]},"Set1":{"main":[[{"node":"Delete an event1","type":"main","index":0}]]},"Code in JavaScript1":{"main":[[{"node":"If3","type":"main","index":0}]]},"Update row in sheet1":{"main":[[{"node":"Send a message3","type":"main","index":0}]]},"If4":{"main":[[{"node":"Send a message8","type":"main","index":0}],[{"node":"Get row(s) in sheet","type":"main","index":0}]]}}	2026-06-09 07:27:31.351+00	2026-06-24 21:05:54.377+00	{"executionOrder":"v1","binaryMode":"separate"}	{"node:Google Sheets Trigger":{"documentId":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","sheetId":1635792048,"lastIndexChecked":10},"node:Google Sheets Trigger1":{"documentId":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","sheetId":905873055,"lastRevision":514,"lastRevisionLink":"https://docs.google.com/spreadsheets/export?id=1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE&revision=514&exportFormat=xlsx"}}	{}	2a9a283f-dd31-4dca-a53c-105e356df6ad	2	wPLp2slfjHoiQwGF	{"templateCredsSetupCompleted":true}	\N	f	429	\N	\N	[]	\N
Event Cancellation Requests	f	[{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1013988101,"mode":"list","cachedResultName":"Cancellation Request","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=1013988101"},"event":"rowAdded","options":{}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-1104,176],"id":"08835e13-8d60-467f-9691-994a427907e7","name":"Google Sheets Trigger","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"assignments":{"assignments":[{"id":"493319e5-9d2b-41ef-9915-ffe382bcf95f","name":"Timestamp","value":"={{ $json.Timestamp }}","type":"string"},{"id":"cbbaa411-f77d-4a5f-a020-cecd0272946a","name":"clientName","value":"={{ $json['Full Name'] }}","type":"string"},{"id":"9cf4a0a0-9369-4c8d-a2a9-82d8faba78b0","name":"clientEmail","value":"={{ $json['Email Address'] }}","type":"string"},{"id":"e6ec6f3d-8db5-4026-a58b-9c17f1f5a9e3","name":"eventDate","value":"={{ $json['Event Date'] }}","type":"string"},{"id":"c7544ef5-2a9e-4fb6-b08a-24dbb35e1566","name":"reason","value":"={{ $json.Reason }}","type":"string"},{"id":"17502b83-8990-43a1-826c-c4894ee55f09","name":"source","value":"Client","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-896,176],"id":"e135db77-57ff-43c8-aa2b-f0452e26d1bf","name":"Set"},{"parameters":{"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-688,176],"id":"2bec062e-6f4e-4b90-8ed0-518eaa65cb30","name":"Get row(s) in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"4cb4cbee-d4a1-44af-b8a8-36faa93dd50d","leftValue":"={{ Object.keys($json).length}}","rightValue":0,"operator":{"type":"number","operation":"gt"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-480,176],"id":"3544c34a-0e8b-4b89-885e-e0aaae017d0b","name":"If"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"9519f04b-a46a-4183-891e-5cbbbb222d7c","leftValue":"={{ $json['Status'] }}","rightValue":"Cancelled","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-272,80],"id":"7539a6b0-d2e1-4338-8852-299c90ab413d","name":"If1"},{"parameters":{"operation":"update","documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"columns":{"mappingMode":"defineBelow","value":{"Status":"Cancelled","Notes":"=Cancellation reason: {{ $('Set').item.json.reason }}","row_number":"={{ $('Get row(s) in sheet').item.json.row_number }}"},"matchingColumns":["row_number"],"schema":[{"id":"Timestamp","displayName":"Timestamp","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"ClientName","displayName":"ClientName","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":true},{"id":"Phone","displayName":"Phone","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventType","displayName":"EventType","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventDate","displayName":"EventDate","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTime","displayName":"EventTime","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"TimeSlot","displayName":"TimeSlot","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Package","displayName":"Package","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositAmount ","displayName":"DepositAmount ","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositStatus","displayName":"DepositStatus","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventPlace","displayName":"EventPlace","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTheme","displayName":"EventTheme","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventMotif","displayName":"EventMotif","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"GuestCount","displayName":"GuestCount","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Source","displayName":"Source","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Notes","displayName":"Notes","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"CalendarEventID","displayName":"CalendarEventID","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"row_number","displayName":"row_number","required":false,"defaultMatch":false,"display":true,"type":"number","canBeUsedToMatch":true,"readOnly":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[112,288],"id":"eaabf87e-077e-4b7e-8225-564e1a1f3224","name":"Update row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"operation":"delete","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"eventId":"={{ $('Get row(s) in sheet').item.json.CalendarEventID }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[304,416],"id":"1226c838-78d0-44fb-8a63-8850cf303f57","name":"Delete an event","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"=Booking Cancellation Confirmed — {{ $('Set').item.json.eventDate }}","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nYour cancellation request has been processed.\\n\\nCancelled Booking Details: \\nEvent:    {{ $('Get row(s) in sheet').item.json.EventType }}\\nDate:     {{ $('Set').item.json.eventDate }}  \\n\\nPlease note that as per our policy, the initial deposit is non-refundable. \\n\\nWe hope to work with you again in the future. Feel free to book again anytime.  \\n\\nWarm regards, Host Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[512,656],"id":"ae9dd291-7503-4e1f-853f-1f1e7ca3f897","name":"Send a message","webhookId":"5c759f73-d6be-4fdd-8de7-77b52e8517b1","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"anjericocanasa@gmail.com","subject":"=Booking Cancelled — {{ $('Set').item.json.eventDate }}","emailType":"text","message":"=A booking has been cancelled.  \\n\\nClient:   {{ $('Set').item.json.clientName }} \\nEmail:    {{ $('Set').item.json.clientEmail }} \\nEvent:    {{ $('Get row(s) in sheet').item.json.EventType }}\\nDate:     {{ $('Set').item.json.eventDate }} \\nReason:   {{ $('Set').item.json.reason }} \\nSource:   {{ $('Set').item.json.source }} \\n\\nThe date is now available for new bookings. Google Calendar event has been deleted.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[736,656],"id":"06f158df-e30e-4e20-b46d-9e5533d22538","name":"Send a message1","webhookId":"bcca1c7d-5e2b-405a-9c15-1da2df813e87","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"=Booking Already Cancelled — {{ $('Set').item.json.eventDate }}","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},\\n\\nOur records show that your booking for {{ $('Set').item.json.eventDate }} has already been cancelled.\\n\\nIf you think this is a mistake please \\ncontact us directly.\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[96,-160],"id":"625c80e7-24f3-4102-80fc-27d6f634c739","name":"Send a message2","webhookId":"afaf944f-8755-495a-a19c-f2a74e6aeeb0","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Cancellation Request — Booking Not Found","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nWe could not find a confirmed booking matching:  \\n\\nEmail:  {{ $('Set').item.json.clientEmail }} \\nDate:   {{ $('Set').item.json.eventDate }}  \\n\\nPlease contact us directly so we can  assist you.  \\n\\nWarm regards, Host Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-272,272],"id":"e2ebf59a-8416-4f26-b22b-e2e5b040035c","name":"Send a message3","webhookId":"3d37d9c1-2006-4556-96d0-cdd9337b5f44","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"event":"rowUpdate","options":{"columnsToWatch":[]}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-1136,1072],"id":"30f89759-b954-456e-a36a-6ef8bd948bc6","name":"Google Sheets Trigger1","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"a58f0793-4bbf-4aba-bf94-ee4faed5d4c6","leftValue":"={{ $json['Status'] }}","rightValue":"Cancelled","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-928,1072],"id":"98b974fd-9773-469b-8318-b4e2d76ba2d1","name":"If2"},{"parameters":{"operation":"delete","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"eventId":"={{ $('Google Sheets Trigger1').item.json.CalendarEventID }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-416,1056],"id":"e09ab3df-e262-4db3-a8e8-fc07d3fe8efc","name":"Delete an event1","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"sendTo":"={{ $('Set2').item.json.clientEmail }}","subject":"=Booking Cancellation Confirmed — {{ $('Set2').item.json.eventDate }}","emailType":"text","message":"=Hi {{ $('Set2').item.json.clientName }},  \\n\\nYour cancellation request has been processed.\\n\\nCancelled Booking Details: \\nEvent:    {{ $('Google Sheets Trigger1').item.json.EventType }}\\nDate:     {{ $('Set2').item.json.eventDate }}  \\n\\nPlease note that as per our policy, the initial deposit is non-refundable. \\n\\nWe hope to work with you again in the future. Feel free to book again anytime.  \\n\\nWarm regards, Host Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[512,1056],"id":"2871dbba-311c-43de-8e06-3115908e9ec5","name":"Send a message4","webhookId":"5c759f73-d6be-4fdd-8de7-77b52e8517b1","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"anjericocanasa@gmail.com","subject":"=Booking Cancelled — {{ $('Set2').item.json.eventDate }}","emailType":"text","message":"=A booking has been cancelled.  \\n\\nClient:   {{ $('Set2').item.json.clientName }} \\nEmail:    {{ $('Set2').item.json.clientEmail }} \\nEvent:    {{ $('Set2').item.json.EventType }}\\nDate:     {{ $('Set2').item.json.eventDate }} \\nReason:   {{ $('Set2').item.json.reason }} \\nSource:   {{ $('Set2').item.json.source }} \\n\\nThe date is now available for new bookings. Google Calendar event has been deleted.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[736,1056],"id":"4f3e31d0-8c29-49e8-9eb8-bc493e345740","name":"Send a message5","webhookId":"bcca1c7d-5e2b-405a-9c15-1da2df813e87","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"assignments":{"assignments":[{"id":"0f303c90-744e-4b87-a52b-df78c341a097","name":"clientName","value":"={{ $('Google Sheets Trigger1').item.json.ClientName }}","type":"string"},{"id":"d4b6d281-4177-418d-a8f6-935d68ec31f0","name":"clientEmail","value":"={{ $('Google Sheets Trigger1').item.json.Email }}","type":"string"},{"id":"cf0b09e7-30ab-4332-8a75-265dabc25047","name":"=eventDate","value":"={{ $('Google Sheets Trigger1').item.json.EventDate }}","type":"string"},{"id":"badf2ad5-9363-4c68-a9bb-ad18ac1c7faf","name":"eventType","value":"={{ $('Google Sheets Trigger1').item.json.EventType }}","type":"string"},{"id":"560c0042-b762-47eb-91f8-208f8c86027d","name":"calendarEventID","value":"={{ $('Google Sheets Trigger1').item.json.CalendarEventID }}","type":"string"},{"id":"31ed57ad-f8fc-4f85-81aa-e781c5534a11","name":"reason","value":"Cancelled by host","type":"string"},{"id":"0582c9cd-490c-4f5b-bc1f-ccd04c07cb26","name":"source","value":"Host","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-656,1056],"id":"6bb9d17c-bc6e-4c72-bdcf-d7a9381da38d","name":"Set2"},{"parameters":{"content":"📋 CANCELLATION — CLIENT REQUEST\\n\\nTrigger: Client submits Cancellation Request form\\n\\nFlow:\\n1. Find client's existing confirmed booking\\n   (matched by Email + Event Date)\\n2. Check if booking is already cancelled\\n3. If not yet cancelled:\\n   - Update Status to \\"Cancelled\\"\\n   - Save cancellation reason to Notes\\n   - Delete Google Calendar event\\n   - Email client confirmation \\n     (deposit is non-refundable)\\n   - Email host alert\\n   - Date becomes available for new bookings\\n4. If already cancelled:\\n   - Email client \\"already cancelled\\" notice\\n\\nEdge cases handled:\\n- Booking not found → notify client to contact host directly\\n\\nPolicy: Initial deposit is non-refundable \\non cancellation.","height":704,"width":640},"type":"n8n-nodes-base.stickyNote","position":[1104,-128],"typeVersion":1,"id":"317b900d-bb5f-4027-a086-946ec09007d5","name":"Sticky Note"},{"parameters":{"content":"📋 CANCELLATION — HOST MANUAL OVERRIDE\\n\\nTrigger: Host manually edits Status column \\nin Confirmed Bookings sheet to \\"Cancelled\\"\\n\\nHow to use:\\n1. Host changes \\"Status\\" to \\"Cancelled\\"\\n2. Automation runs automatically\\n\\nFlow:\\n1. Detect row update\\n2. Check if Status = \\"Cancelled\\"\\n3. If yes:\\n   - Delete Google Calendar event\\n     (using saved Calendar Event ID)\\n   - Email client cancellation confirmation\\n   - Email host summary\\n   - Date becomes available for new bookings\\n\\nIf Status ≠ \\"Cancelled\\":\\n   - Workflow stops (prevents unwanted \\n     triggers from unrelated sheet edits)\\n\\nUse case: For clients who request cancellation \\nvia Messenger/call instead of the form — host \\nhandles it directly in the sheet.","height":752,"width":640,"color":"#075964"},"type":"n8n-nodes-base.stickyNote","position":[1104,816],"typeVersion":1,"id":"35095443-ddc9-4093-bb3d-db4d3e5bd710","name":"Sticky Note1"}]	{"Google Sheets Trigger":{"main":[[{"node":"Set","type":"main","index":0}]]},"Set":{"main":[[{"node":"Get row(s) in sheet","type":"main","index":0}]]},"Get row(s) in sheet":{"main":[[{"node":"If","type":"main","index":0}]]},"If":{"main":[[{"node":"If1","type":"main","index":0}],[{"node":"Send a message3","type":"main","index":0}]]},"If1":{"main":[[{"node":"Send a message2","type":"main","index":0}],[{"node":"Update row in sheet","type":"main","index":0}]]},"Update row in sheet":{"main":[[{"node":"Delete an event","type":"main","index":0}]]},"Delete an event":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Send a message":{"main":[[{"node":"Send a message1","type":"main","index":0}]]},"Google Sheets Trigger1":{"main":[[{"node":"If2","type":"main","index":0}]]},"If2":{"main":[[{"node":"Set2","type":"main","index":0}]]},"Delete an event1":{"main":[[{"node":"Send a message4","type":"main","index":0}]]},"Send a message4":{"main":[[{"node":"Send a message5","type":"main","index":0}]]},"Set2":{"main":[[{"node":"Delete an event1","type":"main","index":0}]]}}	2026-05-28 02:49:59.877+00	2026-06-24 19:58:47.972+00	{"executionOrder":"v1","binaryMode":"separate"}	{"node:Google Sheets Trigger":{"documentId":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","sheetId":1013988101,"lastIndexChecked":0},"node:Google Sheets Trigger1":{"documentId":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","sheetId":905873055,"lastRevision":513,"lastRevisionLink":"https://docs.google.com/spreadsheets/export?id=1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE&revision=513&exportFormat=xlsx"}}	{}	81f3c009-2222-49d9-b570-6b391e7fd39f	2	4BwtbipeXxjLpRpy	{"templateCredsSetupCompleted":true}	\N	f	339	\N	\N	[]	\N
My workflow	f	[]	{}	2026-06-03 12:37:15.399+00	2026-06-03 12:56:36.872+00	{"executionOrder":"v1","binaryMode":"separate"}	\N	{}	745c1ec9-fb27-4bae-b32a-5deb0a81f3a1	0	9SZO1hHNfShnfd5Y	{"templateCredsSetupCompleted":true}	\N	t	4	\N	\N	[]	\N
Event Meeting Scheduler	f	[{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1106880960,"mode":"list","cachedResultName":"Initial Consultation Meeting","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=1106880960"},"event":"rowAdded","options":{}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-2512,-336],"id":"e1c7cccc-1690-4a85-b998-c6698d94d390","name":"Google Sheets Trigger","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"operation":"getAll","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"timeMin":"={{ DateTime.fromFormat($('Set').item.json.date1 + ' ' + $('Set').item.json.time1, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).toISO() }}","timeMax":"={{ DateTime.fromFormat($('Set').item.json.date1 + ' ' + $('Set').item.json.time1, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).plus({hours: 1}).toISO() }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-2096,-336],"id":"4291b040-c98c-4e0f-ae9f-eed3d2aef3f6","name":"Get many events","alwaysOutputData":true,"credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"assignments":{"assignments":[{"id":"0a6e20d5-377c-4c51-8c22-fac0bbd64e63","name":"clientName","value":"={{ $json['Full Name'] }}","type":"string"},{"id":"9631fa51-26de-44c8-be56-e5ea5c16cf5e","name":"clientEmail","value":"={{ $json['Email Address'] }}","type":"string"},{"id":"d3dee78e-ed3d-4d47-b0e9-00d959ed9057","name":"meetingType","value":"={{ $json['Meeting Type'] }}","type":"string"},{"id":"0fd4f36b-e7a6-40fd-84e6-20ea11fa502a","name":"date1","value":"={{ $json['Proposed Date 1'] }}","type":"string"},{"id":"0e485758-e307-4814-94cc-90ab40aa060f","name":"time1","value":"={{ $json['Proposed Time 1'] }}","type":"string"},{"id":"dd6eb665-15d9-422a-8700-da4a6a0cc7e8","name":"date2","value":"={{ $json['Proposed Date 2'] }}","type":"string"},{"id":"0aa6c194-5aa4-441b-a064-5841eedf33f8","name":"time2","value":"={{ $json['Proposed Time 2'] }}","type":"string"},{"id":"dc571a69-1a88-403d-ae32-8bfebc91a1b2","name":"location","value":"={{ $json['F2F Location'] }}","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-2304,-336],"id":"e577841c-faf9-4693-be4b-943cd893a72e","name":"Set"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"d0f63040-6d21-4208-bb96-36023add03fe","leftValue":"={{ Object.keys($json).length }}","rightValue":0,"operator":{"type":"number","operation":"equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-1888,-336],"id":"d3dd58e8-f1fb-4fb3-a42b-06637d950a97","name":"If"},{"parameters":{"operation":"getAll","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"timeMin":"={{ DateTime.fromFormat($('Set').item.json.date2 + ' ' + $('Set').item.json.time2, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).toISO() }}","timeMax":"={{ DateTime.fromFormat($('Set').item.json.date2 + ' ' + $('Set').item.json.time2, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).plus({hours: 1}).toISO() }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-1664,32],"id":"1ace90a4-6e92-477a-81e8-e13fc74c2f19","name":"Get many events1","alwaysOutputData":true,"credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"start":"={{ DateTime.fromFormat($('Set').item.json.date1 + ' ' + $('Set').item.json.time1, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).toISO() }}","end":"={{ DateTime.fromFormat($('Set').item.json.date1 + ' ' + $('Set').item.json.time1, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).plus({hours: 1}).toISO() }}","additionalFields":{"attendees":["={{ $('Set').item.json.clientEmail }}"],"conferenceDataUi":{"conferenceDataValues":{"conferenceSolution":"hangoutsMeet"}},"description":"=Client: {{ $('Set').item.json.clientName }} \\nEmail:  {{ $('Set').item.json.clientEmail }} \\nMeeting Type: {{ $('Set').item.json.meetingType }}  \\n\\nThis is your initial consultation meeting to discuss event requirements.","location":"={{ $('Set').item.json.meetingType.includes('Face to Face') ? $('Set').item.json.location : 'Virtual Meeting' }}","summary":"=Initial Consultation — {{ $('Set').item.json.clientName }}"}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-1680,-528],"id":"d0cab773-49e9-439d-b2cc-5187fd77e786","name":"Create an event","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"d0f63040-6d21-4208-bb96-36023add03fe","leftValue":"={{ Object.keys($json).length }}","rightValue":0,"operator":{"type":"number","operation":"equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-1488,32],"id":"63277f3b-ad28-4893-b5b8-426088b57af6","name":"If1"},{"parameters":{"calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"start":"={{ DateTime.fromFormat($('Set').item.json.date2 + ' ' + $('Set').item.json.time2, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).toISO() }}","end":"={{ DateTime.fromFormat($('Set').item.json.date2 + ' ' + $('Set').item.json.time2, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).plus({hours: 1}).toISO() }}","additionalFields":{"attendees":["={{ $('Set').item.json.clientEmail }}"],"conferenceDataUi":{"conferenceDataValues":{"conferenceSolution":"hangoutsMeet"}},"description":"=Client: {{ $('Set').item.json.clientName }} \\nEmail:  {{ $('Set').item.json.clientEmail }} \\nMeeting Type: {{ $('Set').item.json.meetingType }}  \\n\\nThis is your initial consultation meeting to discuss event requirements.","location":"={{ $('Set').item.json.meetingType.includes('Face to Face') ? $('Set').item.json.location : 'Virtual Meeting' }}","summary":"=Initial Consultation — {{ $('Set').item.json.clientName }}"}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-1264,-128],"id":"38c228a7-0368-44c6-91cf-b546cc4e615b","name":"Create an event1","alwaysOutputData":false,"credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Initial Consultation Meeting Confirmed","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nYour initial consultation meeting has been confirmed!  \\n\\nMeeting Type:  {{ $('Set').item.json.meetingType }} \\nDate & Time:   See calendar invite for exact schedule  \\n\\nA Google Calendar invite has been sent to your email.  \\n\\n{{ $json.hangoutLink ? 'Google Meet Link: ' + $json.hangoutLink : 'Location: ' + $('Set').item.json.location }}  \\n\\nPlease accept the invite to confirm your attendance.  \\n\\nWe look forward to discussing your event requirements!  \\n\\nWarm regards, \\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-1056,-320],"id":"3d2f4f40-711c-4844-aa17-e4a3ebde9c8f","name":"Send a message","webhookId":"53b17e26-f3e9-40d3-96ce-9cd2e057ec76","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"=anjericocanasa@gmail.com","subject":"=New Consultation Meeting Scheduled -  {{ $('Set').item.json.clientEmail }}","emailType":"text","message":"=A consultation meeting has been scheduled.\\n\\nClient:        {{ $('Set').item.json.clientName }}\\nEmail:         {{ $('Set').item.json.clientEmail }}\\nMeeting Type:  {{ $('Set').item.json.meetingType }}\\n\\nCheck your Google Calendar for the exact date/time.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-848,-320],"id":"ddb07176-5c9e-4d81-aba4-b5030fe11ae1","name":"Send a message1","webhookId":"53b17e26-f3e9-40d3-96ce-9cd2e057ec76","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"operation":"getAll","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"returnAll":true,"timeMin":"={{ DateTime.now().setZone('Asia/Manila').toISO() }}","timeMax":"={{ DateTime.now().setZone('Asia/Manila').plus({days: 14}).toISO() }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-1264,192],"id":"320054fb-71be-4ad0-8800-7c12949d9771","name":"Get many events2","alwaysOutputData":true,"credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"jsCode":"// Get all existing events in the next 14 days\\nconst existingEvents = $input.all().filter(\\n  item => Object.keys(item.json).length > 0\\n);\\n\\n// Build a list of busy time ranges\\nconst busyRanges = existingEvents.map(event => ({\\n  start: DateTime.fromISO(event.json.start.dateTime),\\n  end: DateTime.fromISO(event.json.end.dateTime)\\n}));\\n\\n// Generate candidate slots: next 14 days at 10:00 AM, 1 hour each\\nconst freeSlots = [];\\nlet dayOffset = 1;\\n\\nwhile (freeSlots.length < 3 && dayOffset <= 20) {\\n  const candidateStart = DateTime.now()\\n    .setZone('Asia/Manila')\\n    .plus({ days: dayOffset })\\n    .set({ hour: 10, minute: 0, second: 0 });\\n  const candidateEnd = candidateStart.plus({ hours: 1 });\\n\\n  // Check if this candidate overlaps with any busy range\\n  const isBusy = busyRanges.some(range => \\n    candidateStart < range.end && candidateEnd > range.start\\n  );\\n\\n  if (!isBusy) {\\n    freeSlots.push({\\n      formattedDate: candidateStart.toFormat('MMMM d, yyyy'),\\n      formattedTime: candidateStart.toFormat('h:mm a'),\\n      isoStart: candidateStart.toISO()\\n    });\\n  }\\n\\n  dayOffset++;\\n}\\n\\nreturn [{ json: { \\n  freeSlots: freeSlots,\\n  slot1: freeSlots[0] ? freeSlots[0].formattedDate + ' at ' + freeSlots[0].formattedTime : 'N/A',\\n  slot2: freeSlots[1] ? freeSlots[1].formattedDate + ' at ' + freeSlots[1].formattedTime : 'N/A',\\n  slot3: freeSlots[2] ? freeSlots[2].formattedDate + ' at ' + freeSlots[2].formattedTime : 'N/A'\\n}}];"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[-1040,192],"id":"fa626f84-403e-41ad-a0f8-55f38148818e","name":"Code in JavaScript"},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Let's Find a Time — Alternative Dates Available","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},\\n\\nUnfortunately both of your proposed dates are \\nalready taken for consultation meetings.\\n\\nHere are 3 open slots instead:\\n\\n1. {{ $json.slot1 }}\\n2. {{ $json.slot2 }}\\n3. {{ $json.slot3 }}\\n\\nPlease reply to this email letting us know which \\nslot works best for you, and we'll confirm it \\nright away.\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-832,192],"id":"02963fbd-ce04-4f37-b180-9c346f32dc9a","name":"Send a message2","webhookId":"53b17e26-f3e9-40d3-96ce-9cd2e057ec76","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}}]	{"Google Sheets Trigger":{"main":[[{"node":"Set","type":"main","index":0}]]},"Set":{"main":[[{"node":"Get many events","type":"main","index":0}]]},"Get many events":{"main":[[{"node":"If","type":"main","index":0}]]},"If":{"main":[[{"node":"Create an event","type":"main","index":0}],[{"node":"Get many events1","type":"main","index":0}]]},"Get many events1":{"main":[[{"node":"If1","type":"main","index":0}]]},"If1":{"main":[[{"node":"Create an event1","type":"main","index":0}],[{"node":"Get many events2","type":"main","index":0}]]},"Create an event":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Create an event1":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Send a message":{"main":[[{"node":"Send a message1","type":"main","index":0}]]},"Get many events2":{"main":[[{"node":"Code in JavaScript","type":"main","index":0}]]},"Send a message2":{"main":[[]]},"Code in JavaScript":{"main":[[{"node":"Send a message2","type":"main","index":0}]]}}	2026-06-25 03:37:39.887+00	2026-06-25 04:54:41.759+00	{"executionOrder":"v1","binaryMode":"separate","availableInMCP":false}	{"node:Google Sheets Trigger":{"documentId":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","sheetId":1106880960,"lastIndexChecked":4}}	{}	b4d66bf6-0838-4404-aa3a-3e63e1bcd653	1	6jaIG8BQurnDLztv	{"templateCredsSetupCompleted":true}	\N	f	119	\N	\N	[]	\N
\.


--
-- Data for Name: ai_builder_temporary_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ai_builder_temporary_workflow" ("workflowId", "threadId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: binary_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."binary_data" ("fileId", "sourceType", "sourceId", "data", "mimeType", "fileName", "fileSize", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_resolver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_resolver" ("id", "name", "type", "config", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged", "isGlobal", "isResolvable", "resolvableAllowFallback", "resolverId") FROM stdin;
Gmail account	U2FsdGVkX1+BeYeXFONe148vXFy8yWmRw3wC0GsG/K3e5ReqL+AcjnAduq7P6QYamhqviRpMPe2+OZUod+4LGzlCE7RVbx5OHOySUE8S7p6JuP0Airyt+6EgnH9hdOiWr9qbps2CgR0Ilp2zDG0De0y+w5k4DLwJY/QTWhnytbYudoOygBO/R11yvVx7OAoKHAd8r5UDTjpys+wh86m9Q6yeeeJSK8y42hIi72WmeygLPbAgWi21qVg+36Er1SkwidG7E+3qTZjV27d3a5oS1TUqAzWtpYCmg6yxDsDFPI1TV+fWDOj3QS+5bSAEx3nYxXyFj9PAPQ0XbGkzjQabuxB+At6DY1WomhN2VG4JOh+iAcI2pRI4S9J5pCoII+jOpBm0CGxgIFhzxM97FFlJ+AiPwhkNEhFGRCqKGtnHjtl0TuOrF9I9L6HWeVby1JJYdWxEzq6gBZoBeJaXyC5M5csJRkUqo44kjv6FZBg/7TQS0GK7kQMnNlM2WmyPKVgBnJg302Np8WeKJBBFeiDmqRATU6W9GVHN9dkU9m4t280PBlNuFNatSy3fp8xUQ+OuAStRRP+xJSQ2cAgW3JvS77acrUSthvFlE1W5/MUcoJra4JG1T7jgoBv6NDao1TJ+fEBWvYZ+Qby0ZLzd5kWvuur1vvatPCro7KkLZ1HI2Xhn60FbCf0+VsX2f/F0gTyasIjM+06nc0vZ05/rjzdkyA2xN591Q3+emNP20gAoqpUxO7SsaZtK8R9b/VkXRdMbJvCrk5xbtA5T26jwn/3Q/DDa9B+kP7bGjqnv8a1jSPY2ZJblIPrAxpe6ZAEpXGgKKgc4UxLojPdA+nxplnHu77/eue5HAVhMvZ2TpQImz3E8Iotg4QlQKgIk6XZ7uHo6NMD0ERCKfy/AlUw8MxD0Qdnpvl1V6p4+T5GnIRz8kxHq6rmZbGilITOsVCxyZ6aoChSI1TpCylwq+WaMy65+W9B+KV5Uec7xcbDMM/sM9Ht3mETB79JFNBbmAVzHdRuXgI23AOxIz0zaHZLWUC/2XW1uC4SJVkfVTnU79Q2ProgmcrvqX1jgZNxncy2AraM/iEGuDxD9wnFBpgChSjr5YSQyHV9ssQgm4+gpn1tmPSHLZdsT7aeUaYEr8GQ+3IAs90so5HLOjtZLfn2gXeKb+o08BNV1kHrlhR49FJaogxLVFL7CrXGEoOYiao9FpQ7tb2JMAWT/J1GZ5ECH90IZuCf1i+WN2PGIGRIf2ETLKgdyboYozp4H2zxQKQlA/2lvNAXLa+2VeZypCq8d0hqkCwkHD84th7A2zma/pcyNNBp+Ofnp0QV2JVX+cXgLVQUt+GRDCPdJbin6APW2E4vyTrHMQfoBZYiY2Quo9PNqgAwBrMlC4Buo9vm3VDEaziYmB/+CtWHjS/Yh0CE4pqLKbA8/QD4sYc8CqyRBRqua6XZpuU9mjSRSTg5Gs/gQEJEzWLAZ5mX1F8S6zJMt48vNCohj3TSkqXBB1F6W6fWef46oTDqkvEhrftI2YakRdPmL4gjnEB3V/N82+/Ecd38dX3QU9iovIUGQLnAAFITx7p8WMrgSEH1r08jINGYWcrRKXrtrRQkgyYuWmUSL9alM5eg3ylRubSlkLZW3wA7BhK94aFod6P+BfF0dEwFHUNt+9kE6YhXgQ89FES25R+flFzu8DkeNlaIEHTKoUOX2yButuc3HKOlx4wfBInQ0tmU59fKjgGDcU74t4DZQyneAjjPbA1oaCErsmW/uun6r4ic=	gmailOAuth2	2026-05-21 20:00:22.598+00	2026-06-25 04:27:02.144+00	hnzOthEinhs30BEl	f	f	f	f	\N
Google Calendar account	U2FsdGVkX1+r+z6kYOW1FPuqSV26FtNd/T2pqDQHbyOPLYxMH5zXWKFG3v9Xf3vtr1rqbgeKhLci0tj8k46+PDhGYcRt86ZhhDuGbdO6rKvwMn2RvsQlaTzoUlnNKWhsPtWTrDSe6WPRDNJuzBFet/nV+67j2G8nqg3+UEwnoJJdtssVP1k8EKJAaopuHZeuyRCnatMtvuyL2gTbjUnqPgoqHrDkBCzVA6ApwrIzIc0YpozOw2ziFB16MlrOnqQksBEPZsVRjfWmk6izJ3ZFb/UZMfeB/zk+eL2wN0LXyRjQldh/TqfTkRYU9sYOvBsKnyEvmVQj7K+kGfElhnuGYfV62V1yo2ZZvhsgZoKap18KbgAXpttr96NpLFs5vlH8zBqlzwfmefwh4ZJKY8K6dI84/HSxF1K0xRK/59/jL+s7zKjCWQ8oPFx4qHEwpHaLqYFCOwvvtmTTMI3yUhG8jp7OOiH5dM3OTSoHCyVekH6LqagxFLFAi9wvD7XOasPUS2GPubFKCJLBl8e4Ptn9DRc1gfhGAYYnsMdz/H+mJqUlljdHrVR4wb/g4/01ra14TBRj/FMK9obDpNHQ+T/eX3m1nOdTTGqwmEvOVR9AI5ElH944a+ArzeRzIjdYcAthFHeJbgOMZKsrJUMN3KJS2U8VC8WajfbdHKjPgrv3xvgesyJdrrhwOHHg2q44ZAWWbgPK94Rl0fxWWaTEM0u7v3mNKU3SwCIi3A9wCd9yLjqD8/1uFJ7okDArNoQhQ6OFCMQ1HvXF7+XYEeVDhsM6h7CrFeAckS/KkhyPkjhOgDdshQRIWOJ4zLdt75MmIPjfXWNyvLegQDUVCGrMO5LGI3G9sB8uZCq/GwhF4GO8ubXaZfp7IRCoveAbzTHc1FIJFNbhC+x6akTzRIrCtCiaC0ABXjKwRi6Pv353xFzOnJUtw/tO3oaJyw7P4w6si+gtIGnd9Ip+53E3o1XRUbX0kBPr9i+Pn5h6n/uU6xpeuQf1blNJB50bUOkyMVM+Ji/AFWcK2AN/b3OPOxpXgFMhGeEAd68IHRbhXdbzAvlPJ5s/d+fmXd8zEOnhEaliqP3O6phWkATEwCtqsoJzPcbclKmQvtW+u2Ffdke4bSGjRpVojmzZfr8nrtD9wRHx8cldWdiF8JU5hCRn5YqFgOSbsBInyWLBbn5my+nDCSJaBHaEavSBujWid/oClmNDO2u5	googleCalendarOAuth2Api	2026-06-03 13:36:46.719+00	2026-06-25 03:46:41.313+00	NHqGhrd4pyBuJOTi	f	f	f	f	\N
Google Sheets Trigger account	U2FsdGVkX195kqnD0yTVPciguAcfmaOkCkCROPhW6onC3Dn3FGRvrYWqmlIL6FvGInnTspn2eua1lMoI7eu3u9r0P85/gp1PSFX+39z4auWF/yWMannpjGIGtCSNY2rENJKOGlVYJ5c6cgoXu/mKH1V1eDQEBhk+ZIHSt7F/aCn+8+6aR6NnLRPCwEFdmha+kWQkX/RAm02his5J/hqBQJ/ZGbGTPpjoFIz+8x94qtq7dPUOIfafHQi+Q1wWeXjslNuNhIt+v3/HDp26ZxW9wa6mDAob/Ght/Xjh/B9VGCnhnbu/5aqDKxrQpcgiRmT/Vqr5UjskgWHlfbIi8jgdnlG8YOPAkgXyVp5wNnVywE2Y8Il/BFteDqHLaBdRPPqVnXPzOINqXi8pjCPdQnE1QX9dGmPb/D2JsrUHfEWBA+qIa2cHie23nET2yODfY2XL8NNCLYR3Dr+telxETNWuAfr4BiXYPOonW7G8DQMeKDO2a/mGnK5UxRLHAxfJGraKozx70hVYvuNdr1Qth3SBcl/+ZPP0PnM5Wr5uKgHXl/XaK1yWQl3iRvYkrb3261bnukoS9fv4g7WptkgGtqKppfoueuhdGTJI/qwWhyvx021gUtuoP9ixR8PsF1V/qH7qnmaEQvh9e2N8Y1Key8r0cxD6qh+goe6OZkp7SNqnIrA9KD2gI1terZ6IcRuD3fZWN+13K+1FPjHTOAfltk0YRiANyx/l1D1lRt/4XqCHKyfa38HJUqguJCFs+H8yyRzsdc0GHQ4fVFGAzcaC9W49Cg1jCrFIUTlDuu05ib+PgS51OrbbvCcyUZRyKsitLJUqz588bqO002iLxnPwaHVO2rSeOK+Be5zekRiPR5YE7g8izrHqdOl7ucbeg/atH/fYmGfzUkmRk8YYosYaCE+Lu2Eh23P4EIEEtoaAXaHcvuknEv8N01ey6f1mLRAascQ+MuTruWyuzTY5GU7rSANDqBM0LPNHegFyd7RTKJNT9jKDgLa+N3jg0bGMjX/bPRNIQN2StixxlXZeGS1ItGeP+RJEZ0epZJEHdV16nmMN830Bf8v0sAmCqQmrzUtJPsyG36lvBckEue+ABfqwwllas2YW65SU5sO41R5nbRb0O+ZOrvJ6f7bZek6+iRIqLyx0eoNKon0iqeRp+J+5p75uvAyu8rfYL+gKwOtqNoAWVvUPa2BCwry7sAr9CjIrXnPzf7kI/3R7H84gQNU8ZMg1DfSF6rmRiluasvGNMKDYvFw4CCgYp2NmX4rSAOTJ+rQOegqVQG1AvGVgIqYuBnudyvxqmK6C7UaD/Wq1xhzGCZIu2JV7iZdy46gnA7bAlVjUiMg7V7SHSotuL9LfGSf7vHG3cVqMruUtXpC2FfZxFIkSHNa3WdS+VwirN+lUM9Elc0KbnmsxL8FLMege8ZqXOg==	googleSheetsTriggerOAuth2Api	2026-06-03 12:07:01.238+00	2026-07-01 05:52:53.334+00	90DelCYiWfhmOGho	f	f	f	f	\N
Google Gemini(PaLM) Api account	U2FsdGVkX1+yk2I2Na6oZV23FoSBbWBVdQ5A6HBltZ9gaqO9x9eSRwbmjDwoQaMOEVhSBUcx/rNq+Lx+DGII3RH+OakFxVHd5YzJyokszDLMSdbf00CumsEi7rizPnOZ	googlePalmApi	2026-07-02 05:41:42.276+00	2026-07-02 05:41:42.099+00	npiGI4lVZvjYWKUo	f	f	f	f	\N
Google Sheets account	U2FsdGVkX19F5QSkUqNWC8fCzwKISm26ROttbXifCeN+4vOE+YW9mN3Oh18FfTgslzLj9KFCipikC0/ITr7whmHOP6czePZvHJcJ5RdHejUyzAJXy4RiA+lFD8LEmnaOayeluwfvNf+mCmW3y0+z0WYEpxt8fvfOYIWk6kpZrKVXg5Dbh8iaVaC+nPYr6H04JYA4zpfDEPSgN7aqqvbIiTH/sasXtOEnUxoO+lM0CYUo/MTDXsrXkC113WGWBt7owp0rOtLg5cLhmGdZwmyFUv5/VzufnGRV4Xbwir1XA6jgH/dYEp9q5k5NbXm2z0ELGPHOjNFqdRZAdTSKvzI3mH01xjeEPMU/83BgXwaN+mGgVereiFuEKZAUrX/cjUZ+8dR53Ctrw+lgMHkpXsEHm9SrIqmM7ZCpAzs0WZ5XmO/Aih5A938eXVCYjd2COOx17huP3Hskyd+/O98YretdfW6hbKAroewxPuPEYA2QpNLz7z9XCb3t7xPndMRABFHeLBN3XNXRBe9xIwcdR4j+N529bmSQq0GoNopr0zpDakaMKbid01CmHb1laCMQl6a5n+awUXEZhOYZl24xej6ZwlsREBQtTwEC2WSUYY6uZ+e0LTjFrEi3UO2alJfe3m1aPe7jySQ+8ah+mml+uwxqwqpx/H2EuIwEwRCDEw8+EQMVMoECbmyzJV/scATn1bJzJ6ks7OXq+W+sZJhlM7YI/eT6ItsveD9PC0cTVb03SH6W/TY3eoVhnc6AFmJVbN3zMLM8Lf/9tl0L891UNfuMekahsg0ogYdWv6hv2T2KDIUtsSwRrklxHBhkt5MVqK3dcD16dyvkhaNXB5TtIewT/0tb3vtJ02XJbnkBnblj33VJ7Gh9y/RcDWxxO3aGQEGK0VzanXlcIRRoCFkh5OQmPc30KILNJOY95vUjIwvE9RAtCCq1XeaSLiUSF/oFe5cQteOaBXBH4hCRr3nknP2ahFMEf0hxElhKAMWhwbmJezl6LhwyrMUOg5tbLgSEHn+gVQV5NxKbXrUdNcbj8jqxPJsUvXBZqeZ8bh+o772H6hTEjuWe49Wkf8vGt4JsDvzS91UvGFloBxQf+QIVhKvHbQG7NAv9vN2SIVr+0b7baK7PKWx8enTEb0OQoxafi1QuXyjKqU+D4WGJkbyF4LEk65IN1xTBOybEiys7raOI1LQE89x/Axc1rcU+z6Rim1hikRGNjmZgABOsslKqrHAnfl9m8c5b+oI7414pNOVWDAajlwAgnJEKfcpbC5KuXzgccki45KISYXnYmfnLfFIcj6AFAm4zdb61Vfn+uw0jRqM=	googleSheetsOAuth2Api	2026-06-03 13:33:31.516+00	2026-07-02 05:50:49.912+00	VDn2yHU2F0hroPrO	f	f	f	f	\N
OpenWeatherMap account	U2FsdGVkX18mRO1w04tUjGT3pNr5Zqdl1/pALBULgb3B/mo6fCkJDPkKh2mCw3IwNwZ19aeReMtIJYRWvvprQXYDcRA6a1/LQnExLfXyou8=	openWeatherMapApi	2026-07-02 06:06:06.3+00	2026-07-02 06:06:06.123+00	a9sV3Oh10cbHaTAN	f	f	f	f	\N
SerpApi account	U2FsdGVkX1/TcH/Jbw5ADRqK+v8ZnMEIghQtiaOTQ/+c0UQuFdvDbvO6zxAm1G6bBGhIoS3yUbLhEh9T8xJ6MC8u4/PG3V6356qNSHu76uM=	serpApi	2026-07-02 07:36:29.448+00	2026-07-02 07:36:29.253+00	2wa3HRAz5QRt9vrQ	f	f	f	f	\N
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agents" ("id", "name", "description", "systemPrompt", "ownerId", "credentialId", "provider", "model", "createdAt", "updatedAt", "icon", "files", "suggestedPrompts") FROM stdin;
\.


--
-- Data for Name: chat_hub_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_tools" ("id", "name", "type", "typeVersion", "ownerId", "definition", "enabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agent_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agent_tools" ("agentId", "toolId") FROM stdin;
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_sessions" ("id", "title", "ownerId", "lastMessageAt", "credentialId", "provider", "model", "workflowId", "createdAt", "updatedAt", "agentId", "agentName", "type") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt", "storedAt", "tracingContext", "deduplicationKey") FROM stdin;
61793	f	manual	\N	\N	\N	\N	\N	new	zGzdtmcuZicig0MZ	\N	2026-07-02 09:08:55.086+00	db	\N	\N
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_messages" ("id", "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", "type", "name", "content", "provider", "model", "workflowId", "executionId", "createdAt", "updatedAt", "agentId", "status", "attachments") FROM stdin;
\.


--
-- Data for Name: chat_hub_session_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_session_tools" ("sessionId", "toolId") FROM stdin;
\.


--
-- Data for Name: credential_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credential_dependency" ("id", "credentialId", "dependencyType", "dependencyId", "createdAt") FROM stdin;
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: deployment_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."deployment_key" ("id", "type", "value", "algorithm", "status", "createdAt", "updatedAt") FROM stdin;
rVwmYHGcjzNhAF0k	instance.id	b1d5aee3b5d7ecc2388d657b76e5a493cc76d3cc2ab51c0e9c5c484c6ff0b87d	\N	active	2026-05-18 22:16:43.26+00	2026-05-18 22:16:43.26+00
iiM41OqhA7eboSBZ	signing.hmac	a69bda2ae9748dbe22b4cbc7d76c4ec737c75a58eca9d76081d31b99ef3560bd	\N	active	2026-05-18 22:16:44.158+00	2026-05-18 22:16:44.158+00
AJVb7IsLL5o4ikhO	signing.jwt	9db2ea58d83fd8eb49835e315c7ac8b6963eb85e26107c34e01d56103b3ff26b	\N	active	2026-05-18 22:16:45.033+00	2026-05-18 22:16:45.033+00
B0UjiJtAWZsfIcL8	signing.binary_data	f7DefO//4faUf1sJ4i2TZCbuoH1EAf9xayEojyGM5Qk=	\N	active	2026-05-18 22:16:45.933+00	2026-05-18 22:16:45.933+00
\.


--
-- Data for Name: dynamic_credential_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_entry" ("credential_id", "subject_id", "resolver_id", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_user_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_user_entry" ("credentialId", "userId", "resolverId", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: evaluation_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."evaluation_config" ("id", "workflowId", "name", "status", "invalidReason", "datasetSource", "datasetRef", "startNodeName", "endNodeName", "metrics", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: evaluation_collection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."evaluation_collection" ("id", "name", "description", "workflowId", "evaluationConfigId", "createdById", "insightsCache", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data", "workflowVersionId") FROM stdin;
61793	{"connections":{"Schedule Trigger":{"main":[[{"node":"Generate Quote","type":"main","index":0}]]},"Generate Quote":{"main":[[{"node":"OpenWeatherMap","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Quote","type":"ai_languageModel","index":0}]]},"Get row(s) in sheet in Google Sheets":{"ai_tool":[[{"node":"Generate Quote","type":"ai_tool","index":0}]]},"Append row in sheet in Google Sheets":{"ai_tool":[[{"node":"Generate Quote","type":"ai_tool","index":0}]]}},"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":7,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-160,-96],"id":"02606c7a-2712-4ca0-95c9-d0ee780d43db","name":"Schedule Trigger"},{"parameters":{"aiAgentStarterCallout":"","promptType":"define","text":"'''\\nYou are an Inspirational Quote Generator agent. Your daily task is to generate exactly one unique 5-word inspirational quote and save it to the attached spreadsheet.\\n\\nRules and Process (follow strictly in this order every time):\\n\\n1. Access the Spreadsheet: Open the attached spreadsheet and read all existing quotes in the \\"Quote\\" column (or the main quotes column).\\n\\n2. Generate a Quote: Create a fresh, original 5-word inspirational quote. It must be exactly 5 words, positive, motivational, and powerful. Do not use more or fewer words.\\n\\n3. Uniqueness Check:\\n   - Check if the exact quote already exists in the spreadsheet.\\n   - Also check for similar quotes (quotes that share 3 or more words, or convey a very similar message).\\n   - If the quote is identical or too similar to any existing one, discard it and generate a completely new 5-word quote. Repeat this step until you have a truly unique quote.\\n\\n4. Save the Quote:\\n   - Once you have a unique 5-word quote, append it as a new row in the spreadsheet.\\n   - Include today's date in a \\"Date\\" column if it exists, or just add the quote.\\n\\n5. Final Output:\\n   - After saving, reply to the user with:\\n     - The quote in bold\\n     - Confirmation that it was saved successfully\\n     - The total number of quotes now in the spreadsheet (if possible)\\n\\nImportant Guidelines:\\n- Always prioritize originality.\\n- Quotes should feel fresh and not sound like common clichés when possible.\\n- Never output a quote before confirming it is unique.\\n- Never skip the spreadsheet check.\\n\\nStart now and generate today's unique 5-word inspirational quote.\\n'''","hasOutputParser":false,"needsFallback":false,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[48,-96],"id":"9637cd79-318c-46a5-9892-2f1173a95fff","name":"Generate Quote"},{"parameters":{"notice":"","modelName":"models/gemini-3.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1.1,"position":[-96,112],"id":"3315b301-bcbb-4892-b304-af31e5f62001","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"npiGI4lVZvjYWKUo","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"descriptionType":"auto","authentication":"oAuth2","resource":"sheet","operation":"read","documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"filtersUI":{},"combineFilters":"AND","options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[192,112],"id":"fe702473-0753-459c-94db-19caa22ecd0f","name":"Get row(s) in sheet in Google Sheets","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"descriptionType":"auto","authentication":"oAuth2","resource":"sheet","operation":"append","documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Quote":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Quote', ``, 'string') }}","Date Posted":"={{ $json['Readable date'] }}"},"matchingColumns":[],"schema":[{"id":"Quote","displayName":"Quote","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Date Posted","displayName":"Date Posted","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[400,112],"id":"6bb41811-178b-4d16-90be-9d3e2f9f9b0c","name":"Append row in sheet in Google Sheets","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"operation":"currentWeather","format":"metric","locationSelection":"cityName","cityName":"manila,ph","language":""},"type":"n8n-nodes-base.openWeatherMap","typeVersion":1,"position":[400,-96],"id":"6a407a9a-fc2e-477f-a256-52b0001e40fd","name":"OpenWeatherMap","credentials":{"openWeatherMapApi":{"id":"a9sV3Oh10cbHaTAN","name":"OpenWeatherMap account"}}}],"name":"My workflow 2","settings":{"executionOrder":"v1","binaryMode":"separate","availableInMCP":false},"id":"zGzdtmcuZicig0MZ"}	[]	32e7f4c1-72cf-474e-9f74-1a1884ffce17
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
4	4BwtbipeXxjLpRpy	fhQn7QGKBMDITeEY	Event Cancellation Requests	Anjerico Canasa <anjericocanasa@gmail.com>
1	6L2KXAzhlmhAl1Ds	fhQn7QGKBMDITeEY	Events Booking System	Anjerico Canasa <anjericocanasa@gmail.com>
8	wPLp2slfjHoiQwGF	fhQn7QGKBMDITeEY	Event Reschedule Requests	Anjerico Canasa <anjericocanasa@gmail.com>
10	6jaIG8BQurnDLztv	fhQn7QGKBMDITeEY	Event Meeting Scheduler	Anjerico Canasa <anjericocanasa@gmail.com>
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
1	1	2	2	0	2026-05-21 21:00:00+00
3	1	1	11675	0	2026-05-21 21:00:00+00
5	1	0	0	0	2026-05-21 21:00:00+00
7	1	3	3	0	2026-05-21 21:00:00+00
2	1	1	35321	0	2026-05-21 22:00:00+00
4	1	0	0	0	2026-05-21 22:00:00+00
6	1	2	6	0	2026-05-21 22:00:00+00
11	1	1	3367	0	2026-05-27 05:00:00+00
12	1	3	1	0	2026-05-27 05:00:00+00
13	1	1	6504	0	2026-05-27 06:00:00+00
14	1	2	1	0	2026-05-27 06:00:00+00
15	1	0	0	0	2026-05-27 06:00:00+00
16	1	3	2	0	2026-05-27 06:00:00+00
17	1	3	3	0	2026-05-27 07:00:00+00
18	1	2	4	0	2026-05-27 07:00:00+00
19	1	1	26121	0	2026-05-27 07:00:00+00
20	1	0	0	0	2026-05-27 07:00:00+00
21	1	2	4	0	2026-05-27 10:00:00+00
22	1	1	27508	0	2026-05-27 10:00:00+00
23	1	0	0	0	2026-05-27 10:00:00+00
27	1	2	2	0	2026-05-27 14:00:00+00
28	1	1	21751	0	2026-05-27 14:00:00+00
29	1	0	0	0	2026-05-27 14:00:00+00
30	1	0	0	0	2026-05-28 02:00:00+00
31	1	1	10359	0	2026-05-28 02:00:00+00
32	1	2	1	0	2026-05-28 02:00:00+00
34	4	3	4	0	2026-05-28 03:00:00+00
35	4	0	0	0	2026-05-28 03:00:00+00
39	4	1	15413	0	2026-05-28 03:00:00+00
40	4	2	1	0	2026-05-28 03:00:00+00
33	4	3	3	0	2026-05-28 04:00:00+00
36	4	0	0	0	2026-05-28 04:00:00+00
37	4	2	3	0	2026-05-28 04:00:00+00
38	4	1	8312	0	2026-05-28 04:00:00+00
45	4	1	13	0	2026-06-03 13:00:00+00
46	4	3	1	0	2026-06-03 13:00:00+00
48	4	0	0	0	2026-06-04 14:00:00+00
49	1	0	0	0	2026-06-04 14:00:00+00
50	4	2	3	0	2026-06-04 14:00:00+00
51	1	1	17751	0	2026-06-04 14:00:00+00
54	4	3	1	0	2026-06-04 14:00:00+00
56	4	1	15884	0	2026-06-04 14:00:00+00
57	1	3	1	0	2026-06-04 14:00:00+00
58	1	2	2	0	2026-06-04 14:00:00+00
47	1	0	0	0	2026-06-04 15:00:00+00
52	4	1	10195	0	2026-06-04 15:00:00+00
53	4	0	0	0	2026-06-04 15:00:00+00
66	4	3	3	0	2026-06-04 15:00:00+00
55	4	2	2	0	2026-06-04 15:00:00+00
59	1	1	24753	0	2026-06-04 15:00:00+00
60	1	2	3	0	2026-06-04 15:00:00+00
72	1	1	15285	0	2026-06-04 16:00:00+00
62	4	3	5	0	2026-06-04 16:00:00+00
75	1	0	0	0	2026-06-04 16:00:00+00
77	4	3	1	0	2026-06-04 17:00:00+00
78	1	2	3	0	2026-06-04 16:00:00+00
65	4	0	0	0	2026-06-04 16:00:00+00
68	4	1	4519	0	2026-06-04 16:00:00+00
71	4	2	4	0	2026-06-04 16:00:00+00
83	1	1	5656	0	2026-06-04 17:00:00+00
84	1	0	0	0	2026-06-04 17:00:00+00
74	4	2	3	0	2026-06-04 17:00:00+00
76	4	1	2655	0	2026-06-04 17:00:00+00
87	1	2	1	0	2026-06-04 17:00:00+00
80	4	0	0	0	2026-06-04 17:00:00+00
89	1	3	2	0	2026-06-10 18:00:00+00
91	1	2	1	0	2026-06-10 18:00:00+00
92	1	1	13376	0	2026-06-10 18:00:00+00
93	1	0	0	0	2026-06-10 18:00:00+00
90	1	0	0	0	2026-06-10 19:00:00+00
94	1	2	6	0	2026-06-10 19:00:00+00
95	1	1	29433	0	2026-06-10 19:00:00+00
99	4	1	250	0	2026-06-24 07:00:00+00
100	4	2	2	0	2026-06-24 07:00:00+00
104	1	1	16209	0	2026-06-24 08:00:00+00
105	1	3	1	0	2026-06-24 08:00:00+00
106	4	0	0	0	2026-06-24 07:00:00+00
107	8	3	1	0	2026-06-24 08:00:00+00
101	4	0	0	0	2026-06-24 08:00:00+00
102	4	2	2	0	2026-06-24 08:00:00+00
110	8	1	3538	0	2026-06-24 08:00:00+00
103	4	1	7	0	2026-06-24 08:00:00+00
118	1	3	1	0	2026-06-24 19:00:00+00
119	1	1	4521	0	2026-06-24 19:00:00+00
120	1	3	1	0	2026-06-24 20:00:00+00
112	4	0	0	0	2026-06-24 19:00:00+00
114	8	0	0	0	2026-06-24 19:00:00+00
113	4	2	6	0	2026-06-24 19:00:00+00
115	8	2	2	0	2026-06-24 19:00:00+00
116	8	1	4363	0	2026-06-24 19:00:00+00
127	8	3	1	0	2026-06-24 19:00:00+00
117	4	1	14	0	2026-06-24 19:00:00+00
129	8	1	41054	0	2026-06-24 20:00:00+00
130	4	0	0	0	2026-06-24 20:00:00+00
131	4	0	0	0	2026-06-24 21:00:00+00
132	4	2	6	0	2026-06-24 20:00:00+00
133	8	2	14	0	2026-06-24 20:00:00+00
126	1	1	17247	0	2026-06-24 20:00:00+00
135	4	1	5	0	2026-06-24 21:00:00+00
136	8	0	0	0	2026-06-24 20:00:00+00
137	4	1	2459	0	2026-06-24 20:00:00+00
138	1	0	0	0	2026-06-24 20:00:00+00
139	4	2	1	0	2026-06-24 21:00:00+00
140	1	2	2	0	2026-06-24 20:00:00+00
141	8	2	2	0	2026-06-24 21:00:00+00
142	8	1	4172	0	2026-06-24 21:00:00+00
143	8	0	0	0	2026-06-24 21:00:00+00
147	10	1	10971	0	2026-06-25 04:00:00+00
148	10	2	4	0	2026-06-25 04:00:00+00
149	10	0	0	0	2026-06-25 04:00:00+00
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
n8n-nodes-serpapi	0.1.10	SerpApi	contact@serpapi.com	2026-07-02 07:32:26.795+00	2026-07-02 07:32:26.795+00
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
SerpApi Official	n8n-nodes-serpapi.serpApi	1	n8n-nodes-serpapi
\.


--
-- Data for Name: instance_ai_checkpoints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_checkpoints" ("key", "runId", "threadId", "resourceId", "state", "createdAt", "updatedAt", "expiredAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_iteration_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_iteration_logs" ("id", "threadId", "taskKey", "entry", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_messages" ("id", "threadId", "content", "role", "type", "resourceId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observation_cursors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observation_cursors" ("observationScopeId", "lastObservedMessageId", "lastObservedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observation_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observation_locks" ("observationScopeId", "taskKind", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observational_memory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observational_memory" ("id", "lookupKey", "scope", "threadId", "resourceId", "activeObservations", "originType", "config", "generationCount", "lastObservedAt", "pendingMessageTokens", "totalTokensObserved", "observationTokenCount", "isObserving", "isReflecting", "observedMessageIds", "observedTimezone", "bufferedObservations", "bufferedObservationTokens", "bufferedMessageIds", "bufferedReflection", "bufferedReflectionTokens", "bufferedReflectionInputTokens", "reflectedObservationLineCount", "bufferedObservationChunks", "isBufferingObservation", "isBufferingReflection", "lastBufferedAtTokens", "lastBufferedAtTime", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observations" ("id", "observationScopeId", "marker", "text", "parentId", "tokenCount", "status", "supersededBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_pending_confirmations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_pending_confirmations" ("requestId", "threadId", "userId", "kind", "runId", "toolCallId", "messageGroupId", "checkpointKey", "checkpointTaskId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_resources" ("id", "workingMemory", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_run_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_run_snapshots" ("threadId", "runId", "messageGroupId", "runIds", "tree", "createdAt", "updatedAt", "langsmithRunId", "langsmithTraceId", "traceId", "spanId") FROM stdin;
\.


--
-- Data for Name: instance_ai_workflow_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_workflow_snapshots" ("runId", "workflowName", "resourceId", "status", "snapshot", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_version_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_version_history" ("id", "major", "minor", "patch", "createdAt") FROM stdin;
1	2	20	11	2026-05-18 22:17:47.626+00
2	2	25	7	2026-06-10 18:31:55.768+00
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: mcp_registry_server; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."mcp_registry_server" ("slug", "status", "version", "registryUpdatedAt", "data", "createdAt", "updatedAt") FROM stdin;
axiom	active	1.0.0	2026-06-11 12:28:11.99	{"id":17,"name":"co.axiom/mcp","title":"Axiom","tagline":"Connect to the Axiom MCP Server","description":"List datasets, schemas, run APL queries, and use prompts for exploration, anomalies, and monitoring.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:52:18.335Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Xjr_Dncs4_d8a390ab33.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"id":30,"type":"sse","url":"https://mcp.axiom.co/sse"},{"id":29,"type":"streamable-http","url":"https://mcp.axiom.co/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
linear	active	1.0.0	2026-06-11 12:28:04.979	{"id":7,"name":"app.linear/linear","title":"Linear","tagline":"Connect to the Linear MCP Server","description":"MCP server for Linear project management and issue tracking","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:50:22.156Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_P3_K9_Q_jj_6b6c66c6c7.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_P3_K9_Q_jj_7d409a8856.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"id":11,"type":"sse","url":"https://mcp.linear.app/sse"},{"id":10,"type":"streamable-http","url":"https://mcp.linear.app/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
hugging-face	active	0.2.33	2026-06-11 12:28:18.177	{"id":18,"name":"co.huggingface/hf-mcp-server","title":"Hugging Face","tagline":"Connect to the Hugging Face MCP Server","description":"Connect to Hugging Face Hub and thousands of Gradio AI Applications","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:52:30.024Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_S6h_Od6z2_c35cc34669.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"id":32,"type":"streamable-http","url":"https://huggingface.co/mcp?login"},{"id":31,"type":"streamable-http","url":"https://huggingface.co/mcp"},{"id":33,"type":"streamable-http","url":"https://huggingface.co/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
amplitude	active	1.0.0	2026-06-11 12:28:25.27	{"id":11,"name":"com.amplitude/mcp-server","title":"Amplitude","tagline":"Connect to the Amplitude MCP Server","description":"Search, access, and get insights on your Amplitude data","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:51:08.257Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_G_Fjvl8_Pa_bd331a64fc.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_G_Fjvl8_Pa_a15896d97c.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"id":17,"type":"streamable-http","url":"https://mcp.amplitude.com/mcp"},{"id":18,"type":"streamable-http","url":"https://mcp.eu.amplitude.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
apify	active	0.10.6	2026-06-11 12:28:32.446	{"id":3,"name":"com.apify/apify-mcp-server","title":"Apify","tagline":"Connect to the Apify MCP Server","description":"Extract data from any website with thousands of scrapers, crawlers, and automations on Apify Store ⚡","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:49:36.524Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_S_Uz5c4rz_d01d21b490.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id6k3_J_n_Mi_ceeccc3a3e.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"id":5,"type":"streamable-http","url":"https://mcp.apify.com/"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
atlassian	active	1.1.1	2026-06-11 12:28:42.32	{"id":2,"name":"com.atlassian/atlassian-mcp-server","title":"Atlassian","tagline":"Connect to the Atlassian MCP Server","description":"Atlassian Rovo MCP Server","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:49:24.904Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KV_Ejn_Mrk_716d407499.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KV_Ejn_Mrk_1f404ecbfd.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"id":3,"type":"streamable-http","url":"https://mcp.atlassian.com/v1/mcp"},{"id":4,"type":"sse","url":"https://mcp.atlassian.com/v1/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
close	active	1.0.1	2026-06-11 12:28:50.223	{"id":13,"name":"com.close/close-mcp","title":"Close","tagline":"Connect to the Close MCP Server","description":"Close CRM to manage your sales pipeline. Learn more at https://close.com or https://mcp.close.com","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:51:32.979Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idpghi9sa_C_14d2cba8bf.png","mimeType":"image/png","theme":"light"}],"remotes":[{"id":23,"type":"streamable-http","url":"https://mcp.close.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
git-lab	active	0.0.1	2026-06-11 12:28:56.391	{"id":6,"name":"com.gitlab/mcp","title":"GitLab","tagline":"Connect to the GitLab MCP Server","description":"Official GitLab MCP Server","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:50:10.745Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idkt3_Cw41b_9f7043ad83.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_O_Daz_Q_Zbt_f76933a2e6.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"id":9,"type":"streamable-http","url":"https://gitlab.com/api/v4/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
monday-com	active	0.0.1	2026-06-11 12:29:02.947	{"id":5,"name":"com.monday/monday.com","title":"monday.com","tagline":"Connect to the monday.com MCP Server","description":"MCP server for monday.com integration.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:49:59.434Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idz_Vgm_C8_SV_4533eff3c2.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"id":7,"type":"streamable-http","url":"https://mcp.monday.com/mcp"},{"id":8,"type":"sse","url":"https://mcp.monday.com/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
notion	active	1.0.1	2026-06-11 12:29:07.703	{"id":1,"name":"com.notion/mcp","title":"Notion","tagline":"Connect to the Notion MCP Server","description":"Official Notion MCP server","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:49:13.571Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idjb_Qg_E_jj_26d71d08b5.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idjb_Qg_E_jj_5fcfcab5f8.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"id":1,"type":"streamable-http","url":"https://mcp.notion.com/mcp"},{"id":2,"type":"sse","url":"https://mcp.notion.com/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
pay-pal	active	1.0.0	2026-06-11 12:29:23.307	{"id":9,"name":"com.paypal.mcp/mcp","title":"PayPal","tagline":"Connect to the PayPal MCP Server","description":"PayPal MCP server provides access to PayPal services and operations for AI assistants","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:50:45.127Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_R_Wy_Aj_C_Dz_324a3b0a2e.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"id":13,"type":"streamable-http","url":"https://mcp.paypal.com/mcp"},{"id":14,"type":"sse","url":"https://mcp.paypal.com/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
postman	active	2.8.9	2026-06-11 12:29:28.445	{"id":12,"name":"com.postman/postman-mcp-server","title":"Postman","tagline":"Connect to the Postman MCP Server","description":"A basic MCP server to operate on the Postman API.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:51:20.254Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idr_UU_WRCO_c111cb0dea.png","mimeType":"image/png","theme":"light"}],"remotes":[{"id":19,"type":"streamable-http","url":"https://mcp.postman.com/mcp"},{"id":20,"type":"streamable-http","url":"https://mcp.postman.com/minimal"},{"id":21,"type":"streamable-http","url":"https://mcp.eu.postman.com/mcp"},{"id":22,"type":"streamable-http","url":"https://mcp.eu.postman.com/minimal"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
stripe	active	0.2.4	2026-06-11 12:29:33.086	{"id":4,"name":"com.stripe/mcp","title":"Stripe","tagline":"Connect to the Stripe MCP Server","description":"MCP server integrating with Stripe - tools for customers, products, payments, and more.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:49:47.930Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Bn9_1_Njr_e4279db01b.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"id":6,"type":"streamable-http","url":"https://mcp.stripe.com"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
webflow	active	2.0.0	2026-06-11 12:29:37.869	{"id":8,"name":"com.webflow/mcp","title":"Webflow","tagline":"Connect to the Webflow MCP Server","description":"AI-powered design and management for Webflow Sites","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:50:33.630Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idx_GYKE_Fj1_b568d3380a.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Zp72_NUI_5_080d2c331c.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"id":12,"type":"streamable-http","url":"https://mcp.webflow.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
wix	active	1.0.2	2026-06-11 12:29:47.22	{"id":14,"name":"com.wix/mcp","title":"Wix","tagline":"Connect to the Wix MCP Server","description":"A Model Context Protocol server for Wix AI tools","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:51:44.311Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Qa_F_Jx_Orc_31d963143f.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"id":24,"type":"sse","url":"https://mcp.wix.com/sse"},{"id":25,"type":"streamable-http","url":"https://mcp.wix.com/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
post-hog	active	0.2.5	2026-06-11 12:29:53.047	{"id":10,"name":"io.github.PostHog/mcp","title":"PostHog","tagline":"Connect to the PostHog MCP Server","description":"Official PostHog MCP Server for product analytics, feature flags, experiments, and more.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:50:56.421Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Yz0_Wt_S_Oc_8e4d0f0070.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"id":16,"type":"streamable-http","url":"https://mcp.posthog.com/mcp"},{"id":15,"type":"sse","url":"https://mcp.posthog.com/sse"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
prisma	active	1.0.0	2026-06-11 12:30:05.827	{"id":15,"name":"io.prisma/mcp","title":"Prisma","tagline":"Connect to the Prisma MCP Server","description":"MCP server for managing Prisma Postgres.","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:51:55.545Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idz_L_5t_H6_B_e6163aea2d.jpg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"id":26,"type":"sse","url":"https://mcp.prisma.io/sse"},{"id":27,"type":"streamable-http","url":"https://mcp.prisma.io/mcp"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
sanity	active	2.19.0	2026-06-11 12:30:10.774	{"id":16,"name":"io.sanity.www/mcp","title":"Sanity","tagline":"Connect to the Sanity MCP Server","description":"Direct access to your Sanity projects (content, datasets, releases, schemas) and agent rules","websiteUrl":null,"authType":"oauth2","isOfficial":true,"isPublished":true,"origin":"registry","createdAt":"2026-05-19T16:52:07.029Z","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Qr019q7c_e4c0ec82b7.png","mimeType":"image/png","theme":"light"}],"remotes":[{"id":28,"type":"streamable-http","url":"https://mcp.sanity.io"}],"tools":[],"tags":{"data":[]},"extendsCredential":null}	2026-06-11 02:32:04.092+00	2026-06-11 18:32:04.498+00
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1731404028106	AddDescriptionToTestDefinition1731404028106
72	1731582748663	MigrateTestDefinitionKeyToString1731582748663
73	1732271325258	CreateTestMetricTable1732271325258
74	1732549866705	CreateTestRun1732549866705
75	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
76	1734479635324	AddManagedColumnToCredentialsTable1734479635324
77	1736172058779	AddStatsColumnsToTestRun1736172058779
78	1736947513045	CreateTestCaseExecutionTable1736947513045
79	1737715421462	AddErrorColumnsToTestRuns1737715421462
80	1738709609940	CreateFolderTable1738709609940
81	1739549398681	CreateAnalyticsTables1739549398681
82	1740445074052	UpdateParentFolderIdColumn1740445074052
83	1741167584277	RenameAnalyticsToInsights1741167584277
84	1742918400000	AddScopesColumnToApiKeys1742918400000
85	1745322634000	ClearEvaluation1745322634000
86	1745587087521	AddWorkflowStatisticsRootCount1745587087521
87	1745934666076	AddWorkflowArchivedColumn1745934666076
88	1745934666077	DropRoleTable1745934666077
89	1747824239000	AddProjectDescriptionColumn1747824239000
90	1750252139166	AddLastActiveAtColumnToUser1750252139166
91	1750252139166	AddScopeTables1750252139166
92	1750252139167	AddRolesTables1750252139167
93	1750252139168	LinkRoleToUserTable1750252139168
94	1750252139170	RemoveOldRoleColumn1750252139170
95	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
96	1753953244168	LinkRoleToProjectRelationTable1753953244168
97	1754475614601	CreateDataStoreTables1754475614601
98	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
99	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
100	1758731786132	AddAudienceColumnToApiKeys1758731786132
101	1758794506893	AddProjectIdToVariableTable1758794506893
102	1759399811000	ChangeValueTypesForInsights1759399811000
103	1760019379982	CreateChatHubTables1760019379982
104	1760020000000	CreateChatHubAgentTable1760020000000
105	1760020838000	UniqueRoleNames1760020838000
106	1760116750277	CreateOAuthEntities1760116750277
107	1760314000000	CreateWorkflowDependencyTable1760314000000
108	1760965142113	DropUnusedChatHubColumns1760965142113
109	1761047826451	AddWorkflowVersionColumn1761047826451
110	1761655473000	ChangeDependencyInfoToJson1761655473000
111	1761773155024	AddAttachmentsToChatHubMessages1761773155024
112	1761830340990	AddToolsColumnToChatHubTables1761830340990
113	1762177736257	AddWorkflowDescriptionColumn1762177736257
114	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
115	1762771264000	ChangeDefaultForIdInUserTable1762771264000
116	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
117	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
118	1763047800000	AddActiveVersionIdColumn1763047800000
119	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
120	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
121	1763716655000	CreateBinaryDataTable1763716655000
122	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
123	1764276827837	AddCreatorIdToProjectTable1764276827837
124	1764682447000	CreateDynamicCredentialResolverTable1764682447000
125	1764689388394	AddDynamicCredentialEntryTable1764689388394
126	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
127	1765459448000	AddResolvableFieldsToCredentials1765459448000
128	1765788427674	AddIconToAgentTable1765788427674
129	1765804780000	ConvertAgentIdToUuid1765804780000
130	1765886667897	AddAgentIdForeignKeys1765886667897
131	1765892199653	AddWorkflowVersionIdToExecutionData1765892199653
132	1766064542000	AddWorkflowPublishScopeToProjectRoles1766064542000
133	1766068346315	AddChatMessageIndices1766068346315
134	1766500000000	ExpandInsightsWorkflowIdLength1766500000000
135	1767018516000	ChangeWorkflowStatisticsFKToNoAction1767018516000
136	1768402473068	ExpandModelColumnLength1768402473068
137	1768557000000	AddStoredAtToExecutionEntity1768557000000
138	1768901721000	AddDynamicCredentialUserEntryTable1768901721000
139	1769000000000	AddPublishedVersionIdToWorkflowDependency1769000000000
140	1769433700000	CreateSecretsProviderConnectionTables1769433700000
141	1769698710000	CreateWorkflowPublishedVersionTable1769698710000
142	1769784356000	ExpandSubjectIDColumnLength1769784356000
143	1769900001000	AddWorkflowUnpublishScopeToCustomRoles1769900001000
144	1770000000000	CreateChatHubToolsTable1770000000000
145	1770000000000	ExpandProviderIdColumnLength1770000000000
146	1770220686000	CreateWorkflowBuilderSessionTable1770220686000
147	1771417407753	AddScalingFieldsToTestRun1771417407753
148	1771500000000	MigrateExternalSecretsToEntityStorage1771500000000
149	1771500000001	AddUnshareScopeToCustomRoles1771500000001
150	1771500000002	AddFilesColumnToChatHubAgents1771500000002
151	1772000000000	AddSuggestedPromptsToAgentTable1772000000000
152	1772619247761	AddRoleColumnToProjectSecretsProviderAccess1772619247761
153	1772619247762	ChangeWorkflowPublishedVersionFKsToRestrict1772619247762
154	1772700000000	AddTypeToChatHubSessions1772700000000
155	1772800000000	CreateRoleMappingRuleTable1772800000000
156	1773000000000	CreateCredentialDependencyTable1773000000000
157	1774280963551	AddRestoreFieldsToWorkflowBuilderSession1774280963551
158	1774854660000	CreateInstanceVersionHistoryTable1774854660000
159	1775000000000	CreateInstanceAiTables1775000000000
160	1775116241000	CreateTokenExchangeJtiTable1775116241000
161	1775740765000	ChangeWorkflowPublishHistoryVersionIdToSetNull1775740765000
162	1776000000000	CreateTrustedKeyTables1776000000000
163	1776150756000	CreateFavoritesTable1776150756000
164	1777000000000	CreateDeploymentKeyTable1777000000000
165	1777023444000	AddJweKeyIndexesToDeploymentKey1777023444000
166	1777045000000	AddTracingContextToExecution1777045000000
167	1777100000000	AddLangsmithIdsToInstanceAiRunSnapshots1777100000000
168	1777281990043	CreateAiBuilderTemporaryWorkflowTable1777281990043
169	1777420800000	ExpandVariablesValueColumnToText1777420800000
170	1778000000000	AddExecutionDeduplicationKey1778000000000
171	1777996709110	AddRunIndexToTestCaseExecution1777996709110
172	1778100000000	CreateEvaluationConfig1778100000000
173	1778100001000	AddWorkflowVersionToTestRun1778100001000
174	1778100002000	AddEvaluationConfigColumnsToTestRun1778100002000
175	1778496086558	CreateEvaluationCollection1778496086558
176	1783000000000	CreateAgentTables1783000000000
177	1783000000001	CreateAgentExecutionTables1783000000001
178	1784000000000	CreateAgentObservationTables1784000000000
179	1784000000001	ReplaceAgentObservationTables1784000000001
180	1784000000002	DropAgentExecutionWorkingMemory1784000000002
181	1784000000003	LimitWorkflowVersionTriggerToContent1784000000003
182	1784000000004	AddInsightsRawTimestampIdIndex1784000000004
183	1784000000005	CreateMcpRegistryServerTable1784000000005
184	1784000000006	AddNodeGroupsColumnToWorkflowAndHistory1784000000006
185	1784000000007	CreateInstanceAiCheckpointTable1784000000007
186	1784000000008	ResetInstanceAiNativePersistence1784000000008
187	1784000000009	CreateAgentMemoryEntryTables1784000000009
188	1784000000010	RefactorAgentObservationScope1784000000010
189	1784000000011	CreateAgentHistoryTable1784000000011
190	1784000000012	CreateInstanceAiObservationTables1784000000012
191	1784000000013	SplitRedactionScopeInCustomRoles1784000000013
192	1784000000014	PersistInstanceAiPendingConfirmations1784000000014
193	1784000000015	AddSourceWorkflowIdToWorkflow1784000000015
194	1784000000016	UseSlugAsPrimaryKeyInMcpRegistryServer1784000000016
195	1784000000017	AddLastUsedAtToApiKey1784000000017
196	1784000000018	CreateAgentFilesTable1784000000018
197	1784000000019	AddCustomTelemetryTagsToProject1784000000019
198	1784000000020	CreateWorkflowPublicationOutboxTable1784000000020
199	1784000000021	CreateAgentTaskDefinitionTable1784000000021
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_clients" ("id", "name", "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_access_tokens" ("token", "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_authorization_codes" ("code", "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", "state", "used", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_refresh_tokens" ("token", "clientId", "userId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_user_consents" ("id", "userId", "clientId", "grantedAt") FROM stdin;
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
fhQn7QGKBMDITeEY	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	project:personalOwner	2026-05-18 21:55:58.006+00	2026-05-18 21:55:58.006+00
\.


--
-- Data for Name: secrets_provider_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."secrets_provider_connection" ("id", "providerKey", "type", "encryptedSettings", "isEnabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project_secrets_provider_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_secrets_provider_access" ("secretsProviderConnectionId", "projectId", "createdAt", "updatedAt", "role") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule" ("id", "expression", "role", "type", "order", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule_project" ("roleMappingRuleId", "projectId") FROM stdin;
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
workflow:unpublish	Unpublish Workflow	Allows unpublishing workflows.
workflow:unshare	Unshare Workflow	Allows removing workflow shares.
credential:unshare	Unshare Credential	Allows removing credential shares.
aiAssistant:manage	Manage AI Usage	Allows managing AI Usage settings.
aiAssistant:*	aiAssistant:*	\N
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
annotationTag:*	annotationTag:*	\N
auditLogs:manage	auditLogs:manage	\N
auditLogs:*	auditLogs:*	\N
banner:dismiss	banner:dismiss	\N
banner:*	banner:*	\N
community:register	community:register	\N
community:*	community:*	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
communityPackage:*	communityPackage:*	\N
credential:share	credential:share	\N
credential:shareGlobally	credential:shareGlobally	\N
credential:move	credential:move	\N
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credential:*	credential:*	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecretsProvider:*	externalSecretsProvider:*	\N
externalSecret:list	externalSecret:list	\N
externalSecret:*	externalSecret:*	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
eventBusDestination:*	eventBusDestination:*	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
ldap:*	ldap:*	\N
license:manage	license:manage	\N
license:*	license:*	\N
logStreaming:manage	logStreaming:manage	\N
logStreaming:*	logStreaming:*	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:*	orchestration:*	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:*	project:*	\N
saml:manage	saml:manage	\N
saml:*	saml:*	\N
securityAudit:generate	securityAudit:generate	\N
securityAudit:*	securityAudit:*	\N
securitySettings:manage	securitySettings:manage	\N
securitySettings:*	securitySettings:*	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:*	sourceControl:*	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
tag:*	tag:*	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:generateInviteLink	user:generateInviteLink	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
user:*	user:*	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
variable:*	variable:*	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
projectVariable:*	projectVariable:*	\N
workersView:manage	workersView:manage	\N
workersView:*	workersView:*	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:execute-chat	workflow:execute-chat	\N
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
workflow:*	workflow:*	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
folder:*	folder:*	\N
insights:list	insights:list	\N
insights:read	Read Insights	Allows reading insights data.
insights:*	insights:*	\N
oidc:manage	oidc:manage	\N
oidc:*	oidc:*	\N
provisioning:manage	provisioning:manage	\N
provisioning:*	provisioning:*	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:readColumn	dataTable:readColumn	\N
dataTable:writeColumn	dataTable:writeColumn	\N
dataTable:listProject	dataTable:listProject	\N
dataTable:*	dataTable:*	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:reveal	execution:reveal	\N
execution:*	execution:*	\N
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
workflowTags:*	workflowTags:*	\N
role:manage	role:manage	\N
role:*	role:*	\N
mcp:manage	mcp:manage	\N
mcp:oauth	mcp:oauth	\N
mcp:*	mcp:*	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
mcpApiKey:*	mcpApiKey:*	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHub:*	chatHub:*	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
chatHubAgent:*	chatHubAgent:*	\N
breakingChanges:list	breakingChanges:list	\N
breakingChanges:*	breakingChanges:*	\N
apiKey:manage	apiKey:manage	\N
apiKey:*	apiKey:*	\N
encryptionKey:manage	Manage Encryption Keys	Allows listing and rotating instance encryption keys.
encryptionKey:*	encryptionKey:*	\N
credentialResolver:create	credentialResolver:create	\N
credentialResolver:read	credentialResolver:read	\N
credentialResolver:update	credentialResolver:update	\N
credentialResolver:delete	credentialResolver:delete	\N
credentialResolver:list	credentialResolver:list	\N
credentialResolver:*	credentialResolver:*	\N
instanceAi:message	instanceAi:message	\N
instanceAi:manage	instanceAi:manage	\N
instanceAi:gateway	instanceAi:gateway	\N
instanceAi:*	instanceAi:*	\N
roleMappingRule:create	roleMappingRule:create	\N
roleMappingRule:read	roleMappingRule:read	\N
roleMappingRule:update	roleMappingRule:update	\N
roleMappingRule:delete	roleMappingRule:delete	\N
roleMappingRule:list	roleMappingRule:list	\N
roleMappingRule:*	roleMappingRule:*	\N
*	*	\N
workflow:publish	Publish Workflow	Allows publishing workflows.
agent:create	Create Agent	Allows creating new agents in a project.
agent:read	Read Agent	Allows reading agent configuration and history.
agent:update	Update Agent	Allows updating, building, publishing, and managing integrations of agents.
agent:delete	Delete Agent	Allows deleting agents.
agent:list	List Agents	Allows listing agents in a project.
agent:execute	Execute Agent	Allows running agents in chat.
agent:publish	Publish Agent	Allows publishing agents.
agent:unpublish	Unpublish Agent	Allows unpublishing agents.
agent:manage	agent:manage	\N
agent:*	agent:*	\N
workflow:export	Export Workflow	Allows including workflows in a portable package export.
workflow:import	Import Workflow	Allows importing workflows from a portable package into the project.
workflow:enableRedaction	workflow:enableRedaction	\N
workflow:disableRedaction	workflow:disableRedaction	\N
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	workflow:unpublish
global:owner	workflow:unshare
global:owner	credential:unshare
global:owner	aiAssistant:manage
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:shareGlobally
global:owner	credential:move
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	securitySettings:manage
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:generateInviteLink
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:execute-chat
global:owner	workflow:move
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	insights:read
global:owner	oidc:manage
global:owner	provisioning:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:readColumn
global:owner	dataTable:writeColumn
global:owner	dataTable:listProject
global:owner	execution:reveal
global:owner	role:manage
global:owner	mcp:manage
global:owner	mcp:oauth
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
global:owner	apiKey:manage
global:owner	encryptionKey:manage
global:owner	credentialResolver:create
global:owner	credentialResolver:read
global:owner	credentialResolver:update
global:owner	credentialResolver:delete
global:owner	credentialResolver:list
global:owner	instanceAi:message
global:owner	instanceAi:manage
global:owner	instanceAi:gateway
global:owner	roleMappingRule:create
global:owner	roleMappingRule:read
global:owner	roleMappingRule:update
global:owner	roleMappingRule:delete
global:owner	roleMappingRule:list
global:owner	workflow:publish
global:admin	workflow:unpublish
global:admin	workflow:unshare
global:admin	credential:unshare
global:admin	aiAssistant:manage
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:shareGlobally
global:admin	credential:move
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	securitySettings:manage
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:generateInviteLink
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	projectVariable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:execute-chat
global:admin	workflow:move
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	insights:read
global:admin	oidc:manage
global:admin	provisioning:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:readColumn
global:admin	dataTable:writeColumn
global:admin	dataTable:listProject
global:admin	execution:reveal
global:admin	role:manage
global:admin	mcp:manage
global:admin	mcp:oauth
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
global:admin	apiKey:manage
global:admin	encryptionKey:manage
global:admin	credentialResolver:create
global:admin	credentialResolver:read
global:admin	credentialResolver:update
global:admin	credentialResolver:delete
global:admin	credentialResolver:list
global:admin	instanceAi:message
global:admin	instanceAi:manage
global:admin	instanceAi:gateway
global:admin	roleMappingRule:create
global:admin	roleMappingRule:read
global:admin	roleMappingRule:update
global:admin	roleMappingRule:delete
global:admin	roleMappingRule:list
global:admin	workflow:publish
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	dataTable:list
global:member	mcp:oauth
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
global:member	apiKey:manage
global:member	credentialResolver:list
global:member	instanceAi:message
global:member	instanceAi:gateway
global:chatUser	chatHub:message
global:chatUser	chatHubAgent:create
global:chatUser	chatHubAgent:read
global:chatUser	chatHubAgent:update
global:chatUser	chatHubAgent:delete
global:chatUser	chatHubAgent:list
project:admin	workflow:unpublish
project:admin	credential:unshare
project:admin	credential:share
project:admin	credential:move
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	sourceControl:push
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute
project:admin	workflow:execute-chat
project:admin	workflow:move
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:readColumn
project:admin	dataTable:writeColumn
project:admin	dataTable:listProject
project:admin	execution:reveal
project:admin	workflow:publish
project:personalOwner	workflow:unpublish
project:personalOwner	workflow:unshare
project:personalOwner	credential:unshare
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:execute-chat
project:personalOwner	workflow:move
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:readColumn
project:personalOwner	dataTable:writeColumn
project:personalOwner	dataTable:listProject
project:personalOwner	execution:reveal
project:personalOwner	workflow:publish
project:editor	workflow:unpublish
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute
project:editor	workflow:execute-chat
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:readColumn
project:editor	dataTable:writeColumn
project:editor	dataTable:listProject
project:editor	workflow:publish
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:execute-chat
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:viewer	dataTable:readColumn
project:viewer	dataTable:listProject
project:chatUser	workflow:execute-chat
credential:owner	credential:unshare
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:read
workflow:owner	workflow:unpublish
workflow:owner	workflow:unshare
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:execute-chat
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:owner	workflow:publish
workflow:editor	workflow:unpublish
workflow:editor	workflow:execute
workflow:editor	workflow:execute-chat
workflow:editor	workflow:read
workflow:editor	workflow:update
workflow:editor	workflow:publish
secretsProviderConnection:owner	externalSecretsProvider:sync
secretsProviderConnection:owner	externalSecretsProvider:read
secretsProviderConnection:owner	externalSecretsProvider:update
secretsProviderConnection:owner	externalSecretsProvider:delete
secretsProviderConnection:owner	externalSecretsProvider:list
secretsProviderConnection:owner	externalSecret:list
secretsProviderConnection:user	externalSecretsProvider:read
secretsProviderConnection:user	externalSecretsProvider:list
secretsProviderConnection:user	externalSecret:list
global:admin	workflow:enableRedaction
global:owner	workflow:enableRedaction
project:admin	workflow:enableRedaction
global:admin	workflow:disableRedaction
global:owner	workflow:disableRedaction
project:admin	workflow:disableRedaction
global:owner	agent:create
global:owner	agent:read
global:owner	agent:update
global:owner	agent:delete
global:owner	agent:list
global:owner	agent:execute
global:owner	agent:publish
global:owner	agent:unpublish
global:owner	agent:manage
global:owner	workflow:export
global:owner	workflow:import
global:admin	agent:create
global:admin	agent:read
global:admin	agent:update
global:admin	agent:delete
global:admin	agent:list
global:admin	agent:execute
global:admin	agent:publish
global:admin	agent:unpublish
global:admin	agent:manage
global:admin	workflow:export
global:admin	workflow:import
project:admin	agent:create
project:admin	agent:read
project:admin	agent:update
project:admin	agent:delete
project:admin	agent:list
project:admin	agent:execute
project:admin	agent:publish
project:admin	agent:unpublish
project:admin	workflow:export
project:admin	workflow:import
project:personalOwner	agent:create
project:personalOwner	agent:read
project:personalOwner	agent:update
project:personalOwner	agent:delete
project:personalOwner	agent:list
project:personalOwner	agent:execute
project:personalOwner	agent:publish
project:personalOwner	agent:unpublish
project:personalOwner	workflow:export
project:personalOwner	workflow:import
project:personalOwner	workflow:enableRedaction
project:personalOwner	workflow:disableRedaction
project:editor	agent:create
project:editor	agent:read
project:editor	agent:update
project:editor	agent:delete
project:editor	agent:list
project:editor	agent:execute
project:editor	agent:publish
project:editor	agent:unpublish
project:editor	workflow:export
project:editor	workflow:import
project:viewer	agent:read
project:viewer	agent:list
project:viewer	agent:execute
project:viewer	workflow:export
project:chatUser	agent:execute
workflow:owner	execution:reveal
workflow:owner	workflow:export
workflow:owner	workflow:enableRedaction
workflow:owner	workflow:disableRedaction
workflow:editor	workflow:export
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60,"enforceEmailUniqueness":true}	t
userManagement.isInstanceOwnerSetUp	true	t
instance.firstProductionFailure	{"workflowId":"6L2KXAzhlmhAl1Ds","projectId":"fhQn7QGKBMDITeEY","userId":"eecfd4bf-2ff8-403c-a261-09f2ea67eea1","timestamp":1779398146706}	f
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5YK2JucEdIT2Fya3VXaWwrMjlPWndwQ1k0dktBb00xNkg4UjVQdHcrYmVxNEo2UTQwcHpMb2xaVWE0S21iQ3pvXG44SnhmeExSYTduSXQvTUFBOUkwbVZ0bTNLcCsxbkZPYnVGWkJzd3IxaDk0WE9DRXNJeU1JcDR4U2xyRG5WTHB6XG5TVnU1NUFnZXpBMUl2QWJqMDYwcWRDWW83bENOdFVJTWVJRGRrZ21YMUcxNDJ1Y2FCdFgwUlFZM1BaVm9sMThhXG50cDRYdVk3UXhnenVmcGdXVklUR3p5aG5YSzBETUhhL2RlUEhRcm54M1FxOVVQc0FwVlRKSUtxTnRTY3grMUNGXG43V0tCSE1JeVZkODhPQ2JFSlAvT1Z1YnVFS2YwUVZOU3RsYTdFRHk1ZkdMNXErd1NwVlg0QTZtc0JsdFJYM2MwXG41V3dsdDBzclBUY25JSkxaMDhtUFdBPT18fFUyRnNkR1ZrWDEvSHh2TnBGTGMrTzcwUnFhQ3Y1ZXZ1ZHhtM21MXG4wMUp0dzhqTHp2elViQy9IZndWTllRRE02ZTIrZWwvdHAyTVNaNVZTMElIU2NacXBHNXZYV2h6VnY0N2IxWktxXG55eWxlM210MDU0SlNUSE9CWGVTUEJ4SHpwaFZ6Nk54anRWU2lhQ25oclJBaXIzeHJKbWN1aEJ5OUxLN1VnSzFxXG5tdWRjWnU5S3A5S29iQUJOb3g3VmRZU1hzTVlHRUlRMSt3bk9RRDA0Q2Y2NWRxYW1lcmZKVzNDaFYzUUNNWmQzXG41aXFDa01CUlZabm9GalIxT09iVExnVFVKd3g1VTM5YXVjRWhYTExlRzBENm5lR3ZKL2dOUW1mNHRRZSsyU043XG51b2dWWVI0VnJhTFhVTUZoMlUvbWszTml6ZDVZaitiUXdLdGZzbG03RFJDbzdKSEpEUnpUdTNvdG9mYzFmWXM4XG53bHBFKzZiRDRHTEhnSGlyeTMvR094ZXh0L09zMHloRVMxNTEyNnFxSi9oRE1tSjA5a1dwVGsrQnpKTTJhbk1YXG5VdnJFdHU5MTBWcjBVcVk5NzcyLzhiSFFDRUE5dExNOFdqKzFFckZOK29VNGJUcjhxc1pKREx4SWwzbkdPeC9tXG5EWFJ5V2x5ODNxWHZ3TW96NStmZ1Fsc0VCV2JGRkVIY2JncDdNNWtTK0dtcFo2RFYvWGlJaU5aLzNMbTBEN2RyXG5uK2cwRk1pSW1CcExHaEp5aUJyc1Y3czg3eitONVBudUErc3FNR3Y0TmkwZmFNSlhtb3ErU0ZxOUc3blRBU0FzXG5HeituWXpwOHIxUkJKc2tJdHpyNmRJd0hZQ2VHSEs4czdTSDRHL2lGU2ZJOENpV0w1MjhKOXpsRXJZQXJmZTFZXG5qb0RwenlKcWNjRTh6SHFCWHg2N1ROenIyNlp1ZW5xR3R1VkRCejFvV0JhRVMwbTZOUXVoK052aEFzb3BnazlQXG4yRkhaN0dvK1F1bm5rVUQrVml3UVVOQnI4MTBnalI3ZUljZUxEcmJEQVNLaXdJREdsWGluN2xFZXdoUE9ZVnFDXG52a1pDczVkU2JtZVpaV1J1OS9lb3diQzlqQUZKYVd4VGwxOFdjOS80KzJxRC9ocVBvVWczR2FMVldtVzRQcTZWXG5USk5EMkovcDBFYlQvdVRrSHN5emRwZU9EMi9ZN2hhVFl6UFdJU3M0enoxNjROdmdSOFhyQi85bEtPWnF1RnRKXG5UU1FGc3U2YjhBY2o1WUpjbVVSY1ZkVnd4T0JmQmZkUFRYS1lsbzVTMnpJWEF5Z3hJdGpZM3E5OUZSRW1VVFA0XG5yZ3FCaGZHVFNpYzRvS01vTXNMQnB0VGpaMlFCcitBSVZwTktkb1BVeFVHVThkMlQxdXQxVTVtK2cvNXpTWFZJXG5HQ2ZLaTUvUnh4OHFXTkdCTVBGWW9leWIvU0ZtcmxUdUdCejJQeHBvaWpaem5mS2dZT1ppMkZvSFNyMTV2S3ZlXG53eDVPUFkwcWdST2hjNHZFbGFJOHNDNXZsMjdxVlFmc2tCWk9wdE1NUEZ3L3VEK0ZDanc2Ylg0c1IzbU52L2lCXG5jU0RBR1VIVUNWdWVSSEhod0EyWk5jWjZqVkdSZHlOUCtaRVAwM1doV0lxaDlqcVpiS2l4eTJHVE5VNUxjbVZkXG5LWGwvOENYcHNtM3BQb29wNlZIeXVKU1ZTbzdZY3ZmLzYwM1c3aUhzRzMzd0hQNFdOVWkwSE1tNFZuUG0wM09hXG5ZbUxnRDBtK1RrVUk1MVRwczl3ZG5ZcnYxTW41SnZIdmZlYnE0L3ZTUFNHcFVNS0N3STZQWkswSHRTQmgyNWtjXG55WE1IQm1nRk1teVRIVFhHUzltYU1iQ2FYZkJqcEg3eHRCNWpDS1pxRUNMN29MNXRoQmdtdEp4U2x1cXhUNVU4XG5OSUVSb1BIbXkyeWNPTDcrQmxNZVlFVWs0ZGdHWk5SdUc3SnBJOFRtK3hZeWhITFV3WU1FWjVTNnllaTM4QzF4XG5acFpkeGdaL053K2hsUmFyY1RybzJpM3I2U29QZFhPYjRXVHlPRFdiM1RYYzBMcHBpM3orVkRPVDBaVG1EZUlPXG4ranFoNCtsWElmWENHWXJQandCYjM0UjVsS0h4VDIwUmdUeG91MTRhOFZSZ0sranFOZWpYVWdHdHMzaER2dTJxXG5GSmVEODRCQml3akd2eDB1QUNJcFBBVTlpWHhjU0NnYUVVZXVZb0hhTXYrekw5SFJzOVRMeFNkSDZmcHkyTEVqXG5mUlF3TDdiVEltY2Q3d2EzUHNJaHBEY3BEYVQzWDRXbXNDRXNSTGpRNWFiTFlPVHBMREt1ZjFCaS9QWStUdWRRXG43M0RPZHY3OXNLWjNwYnhGZGtuakNEcy9KYXZ0MWxCYUxwb0RwYzVjRmVsUENMVnBiTHp3ZEU5YVk3ZWhUTWxXXG5YMVhRNnlBdEU0RHhybzB3MlpNN3R1WGp6T2N1RTNqNU11UHIwekdRQWk1eHEzaGh3cTZFM1ZHbStBS01PbUw1XG5uTGV1NkpDTVNyc21NOWU2V3o2RXEyeG5iZzJPVlZ3QzZHV1Z6VTlvVE5OMVZPZCtIblpnUXZFOFFrYngwdHY5XG5MUisvS3d1bXc5NmNlTWR1YzBEZ25rRllVQmVCOTJiOFV3UkFrUzdDSmhzU0wwbW1rTEpqbEFrRzl6alJQakRxXG5KeFZFOHg2ZGRIRGFUVGh1WTBrWkZtR0M1eWVrTWNkTDladExGbnZva0prcUxtMkdzVHRvYWxCb1N0OFhIM0JlXG5oRmRKZ2dublYvb012MFVDQ3N4R3RoNGxCYTZLNWpOUDFocXJzQk8rZ01OeXMvRzduRVJQT0VLYURSVnhpbHI0XG5WWjZoOGNZVElyS1htbWI4bDZLUTBOVmhnUVpHS3J0UjZiMzVJUGNsTlhXUVZ4TlJIbHRhQ1cyNWY5R0xFSWxNXG4wckJ6ZlJldjZDSTQ3a2xVS2RLWEM1WHpML2lVZFl3QnJDUGc1Y3o1dlU1UEtUeVRIZ2JWWVlxZlJRZWhtbTRFXG5hRHVSaUlhMmV0L2hvRUk1NWJ6YmdYQUQvTUlDZHNDZjJTMERxZUNBek9oWnozOXc9PXx8RFo0T3hwWmphcGxUXG5RVUtKSk1FZ05EbFh5Mjd2NXloRTBRQ2tqWUk0MHZxUU10VE5oUVNqRTFMVTkvaHk1Y0U2aGNwMzRqZFhveklLXG52UXJxeG4vaVBHdEFnL3Q5K25rUDljZTJiZTl0SkN6SVQwbzA5Z1pwOGNtTlZ6dVVUKzVMaGNodFpOZE1ZbXFPXG5CMnB6cVpabkhGVFB3eC8wSVE2eTN4dmEzTWMzSW5WSUxLWUFiM0ZDb2hoMWZrZHcxVzYxM21QNE01RXJjODZGXG4xNFdTZnZuSWlSK1pkNUdURDlhaWpsWGoydmdCY1BBYUZQUHc5Zi9wc0MrbHl3NXhsRkVKb1dvZXp5TG0ya0hSXG5xRHRBS2srcnVONnBZS3FMbkNkbmlNZkI1cU95SkQvbjRVOHl4eTU3Szc0V3JjYTgyb05DcERwTzRPKzZFRGgxXG51a2ppZjNNNWJRPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
hnzOthEinhs30BEl	fhQn7QGKBMDITeEY	credential:owner	2026-05-21 20:00:22.598+00	2026-05-21 20:00:22.598+00
90DelCYiWfhmOGho	fhQn7QGKBMDITeEY	credential:owner	2026-06-03 12:07:01.238+00	2026-06-03 12:07:01.238+00
VDn2yHU2F0hroPrO	fhQn7QGKBMDITeEY	credential:owner	2026-06-03 13:33:31.516+00	2026-06-03 13:33:31.516+00
NHqGhrd4pyBuJOTi	fhQn7QGKBMDITeEY	credential:owner	2026-06-03 13:36:46.719+00	2026-06-03 13:36:46.719+00
npiGI4lVZvjYWKUo	fhQn7QGKBMDITeEY	credential:owner	2026-07-02 05:41:42.276+00	2026-07-02 05:41:42.276+00
a9sV3Oh10cbHaTAN	fhQn7QGKBMDITeEY	credential:owner	2026-07-02 06:06:06.3+00	2026-07-02 06:06:06.3+00
2wa3HRAz5QRt9vrQ	fhQn7QGKBMDITeEY	credential:owner	2026-07-02 07:36:29.448+00	2026-07-02 07:36:29.448+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
6L2KXAzhlmhAl1Ds	fhQn7QGKBMDITeEY	workflow:owner	2026-05-20 19:48:43.87+00	2026-05-20 19:48:43.87+00
4BwtbipeXxjLpRpy	fhQn7QGKBMDITeEY	workflow:owner	2026-05-28 02:49:59.877+00	2026-05-28 02:49:59.877+00
9SZO1hHNfShnfd5Y	fhQn7QGKBMDITeEY	workflow:owner	2026-06-03 12:37:15.399+00	2026-06-03 12:37:15.399+00
wPLp2slfjHoiQwGF	fhQn7QGKBMDITeEY	workflow:owner	2026-06-09 07:27:31.351+00	2026-06-09 07:27:31.351+00
6jaIG8BQurnDLztv	fhQn7QGKBMDITeEY	workflow:owner	2026-06-25 03:37:39.887+00	2026-06-25 03:37:39.887+00
hblPfsvtXd3oEUIX	fhQn7QGKBMDITeEY	workflow:owner	2026-07-02 05:35:49.207+00	2026-07-02 05:35:49.207+00
zGzdtmcuZicig0MZ	fhQn7QGKBMDITeEY	workflow:owner	2026-07-02 09:08:40.628+00	2026-07-02 09:08:40.628+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt", "runningInstanceId", "cancelRequested", "workflowVersionId", "evaluationConfigId", "evaluationConfigSnapshot", "collectionId") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs", "runIndex") FROM stdin;
\.


--
-- Data for Name: token_exchange_jti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."token_exchange_jti" ("jti", "expiresAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: trusted_key_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key_source" ("id", "type", "config", "status", "lastError", "lastRefreshedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: trusted_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key" ("sourceId", "kid", "data", "createdAt") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes", "audience", "lastUsedAt") FROM stdin;
\.


--
-- Data for Name: user_favorites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_favorites" ("id", "userId", "resourceId", "resourceType") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id", "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_builder_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_builder_session" ("id", "workflowId", "userId", "messages", "previousSummary", "createdAt", "updatedAt", "activeVersionCardId", "resumeAfterRestoreMessageId") FROM stdin;
\.


--
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_dependency" ("id", "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt", "publishedVersionId") FROM stdin;
25300	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"706021c8-e9fc-48b5-9f63-78bf522ed38a","nodeVersion":1}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25301	wPLp2slfjHoiQwGF	429	credentialId	90DelCYiWfhmOGho	{"nodeId":"706021c8-e9fc-48b5-9f63-78bf522ed38a","nodeVersion":1}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25302	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"5dba1f30-6e27-4000-9d9e-f9b7dfa646b2","nodeVersion":4.7}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25303	wPLp2slfjHoiQwGF	429	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"5dba1f30-6e27-4000-9d9e-f9b7dfa646b2","nodeVersion":4.7}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25304	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.if	{"nodeId":"2ddd8eaa-4ea4-4197-b892-42c278fc480e","nodeVersion":2.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25305	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.if	{"nodeId":"aafa10e6-b2c2-4d97-986a-d00b01cca07d","nodeVersion":2.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25306	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"578490cf-5da1-4e4f-8acd-e38970ff7943","nodeVersion":4.7}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25307	wPLp2slfjHoiQwGF	429	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"578490cf-5da1-4e4f-8acd-e38970ff7943","nodeVersion":4.7}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25308	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.code	{"nodeId":"5994074b-a200-4c9d-96f4-996db8b1d3bd","nodeVersion":2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25309	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.set	{"nodeId":"f0400b93-74a4-4366-b0c8-b0a5e14be06f","nodeVersion":3.4}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25310	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.if	{"nodeId":"1d9cda36-b9c9-43a5-9bd8-62daf444613c","nodeVersion":2.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25311	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"eb53dbd6-9256-46e3-8d56-b64a79ef5465","nodeVersion":1.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25312	wPLp2slfjHoiQwGF	429	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"eb53dbd6-9256-46e3-8d56-b64a79ef5465","nodeVersion":1.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25313	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"88923478-41ef-4a5c-997c-bae0f2434bd9","nodeVersion":1.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25314	wPLp2slfjHoiQwGF	429	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"88923478-41ef-4a5c-997c-bae0f2434bd9","nodeVersion":1.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25315	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"089a66da-f7c0-420d-863b-1ca346238716","nodeVersion":4.7}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25316	wPLp2slfjHoiQwGF	429	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"089a66da-f7c0-420d-863b-1ca346238716","nodeVersion":4.7}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25317	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"3289898b-ddfb-40a7-935f-3cd978d23c86","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25318	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"3289898b-ddfb-40a7-935f-3cd978d23c86","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25319	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"10c0d22a-0d64-4f85-a341-6d4df6d7a04c","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25320	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"10c0d22a-0d64-4f85-a341-6d4df6d7a04c","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25321	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"8671c12a-a03d-405a-ac7b-102ca7a8f2be","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25322	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"8671c12a-a03d-405a-ac7b-102ca7a8f2be","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25323	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"bcc9f292-dc28-4894-9e6a-4c96f2724c70","nodeVersion":1}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25324	wPLp2slfjHoiQwGF	429	credentialId	90DelCYiWfhmOGho	{"nodeId":"bcc9f292-dc28-4894-9e6a-4c96f2724c70","nodeVersion":1}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25325	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.if	{"nodeId":"2f4f8fb4-1043-4061-aff5-74c914ccc578","nodeVersion":2.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25326	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.set	{"nodeId":"5b5b5016-3fbe-48a7-abc0-27ea0677c11f","nodeVersion":3.4}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25327	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"17accebe-9e70-4e09-aa6d-f9d19de8aae4","nodeVersion":1.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
12604	6L2KXAzhlmhAl1Ds	574	credentialId	hnzOthEinhs30BEl	{"nodeId":"27448167-98d4-48dd-b57b-5444f69b5bb1","nodeVersion":2.2}	1	2026-06-10 19:28:39.704+00	\N
12605	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.gmail	{"nodeId":"f71be010-9903-422f-9f01-69e37edc38eb","nodeVersion":2.2}	1	2026-06-10 19:28:39.704+00	\N
12606	6L2KXAzhlmhAl1Ds	574	credentialId	hnzOthEinhs30BEl	{"nodeId":"f71be010-9903-422f-9f01-69e37edc38eb","nodeVersion":2.2}	1	2026-06-10 19:28:39.704+00	\N
12607	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.code	{"nodeId":"2ae610ee-2674-49fc-b8d0-66a4798e91b9","nodeVersion":2}	1	2026-06-10 19:28:39.704+00	\N
12608	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"3417636b-40e7-462c-a938-a49996053c64","nodeVersion":1.3}	1	2026-06-10 19:28:39.704+00	\N
12609	6L2KXAzhlmhAl1Ds	574	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"3417636b-40e7-462c-a938-a49996053c64","nodeVersion":1.3}	1	2026-06-10 19:28:39.704+00	\N
12610	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.gmail	{"nodeId":"5921de67-16bf-4aec-a8eb-8ffd00f4b4b9","nodeVersion":2.2}	1	2026-06-10 19:28:39.704+00	\N
12611	6L2KXAzhlmhAl1Ds	574	credentialId	hnzOthEinhs30BEl	{"nodeId":"5921de67-16bf-4aec-a8eb-8ffd00f4b4b9","nodeVersion":2.2}	1	2026-06-10 19:28:39.704+00	\N
12612	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"a943fb8d-67e6-4231-b880-d4299112acb4","nodeVersion":1}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12613	6L2KXAzhlmhAl1Ds	574	credentialId	90DelCYiWfhmOGho	{"nodeId":"a943fb8d-67e6-4231-b880-d4299112acb4","nodeVersion":1}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12614	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"3113c9d2-6b53-4f69-9d30-848883ce36ab","nodeVersion":4.7}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12615	6L2KXAzhlmhAl1Ds	574	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"3113c9d2-6b53-4f69-9d30-848883ce36ab","nodeVersion":4.7}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
25328	wPLp2slfjHoiQwGF	429	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"17accebe-9e70-4e09-aa6d-f9d19de8aae4","nodeVersion":1.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25329	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"0f5095eb-17b0-4ae0-8c18-f1a07fd8a0ce","nodeVersion":1.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25330	wPLp2slfjHoiQwGF	429	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"0f5095eb-17b0-4ae0-8c18-f1a07fd8a0ce","nodeVersion":1.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25331	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"aefd4750-2178-438d-bcce-6f5028fbbe07","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25332	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"aefd4750-2178-438d-bcce-6f5028fbbe07","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25333	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"2f9fdb44-ef32-41cd-9b03-93ebc2d4782c","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25334	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"2f9fdb44-ef32-41cd-9b03-93ebc2d4782c","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25335	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.code	{"nodeId":"72ff4bc0-9a14-4bd8-a78e-73774f084fd0","nodeVersion":2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25336	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"1f92992c-dc61-41e9-97d3-fb6fbc8c13a6","nodeVersion":4.7}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25337	wPLp2slfjHoiQwGF	429	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"1f92992c-dc61-41e9-97d3-fb6fbc8c13a6","nodeVersion":4.7}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25338	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"70fddcd4-a6da-4c68-95f4-a1300ad4a780","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25339	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"70fddcd4-a6da-4c68-95f4-a1300ad4a780","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25340	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"c7bf72b8-88fb-4a64-824c-138c4e578490","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25341	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"c7bf72b8-88fb-4a64-824c-138c4e578490","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25342	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.stickyNote	{"nodeId":"ba6fca61-0ba5-41b5-9959-e479651e68a5","nodeVersion":1}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25343	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.stickyNote	{"nodeId":"6cfa8ae5-ecdb-4831-822b-804ef4914576","nodeVersion":1}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25344	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.if	{"nodeId":"ad836538-3d81-4f3f-88f5-819eca5c531e","nodeVersion":2.3}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25345	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"d5dc6a7a-9a62-43d2-8f63-19d3e71afaa8","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
25346	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"d5dc6a7a-9a62-43d2-8f63-19d3e71afaa8","nodeVersion":2.2}	1	2026-06-24 21:06:12.541+00	2a9a283f-dd31-4dca-a53c-105e356df6ad
12431	9SZO1hHNfShnfd5Y	4	workflowIndexed	__INDEXED__	\N	1	2026-06-10 18:00:04.941+00	\N
26786	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"e1c7cccc-1690-4a85-b998-c6698d94d390","nodeVersion":1}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26787	6jaIG8BQurnDLztv	117	credentialId	90DelCYiWfhmOGho	{"nodeId":"e1c7cccc-1690-4a85-b998-c6698d94d390","nodeVersion":1}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26788	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"4291b040-c98c-4e0f-ae9f-eed3d2aef3f6","nodeVersion":1.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26789	6jaIG8BQurnDLztv	117	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"4291b040-c98c-4e0f-ae9f-eed3d2aef3f6","nodeVersion":1.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26790	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.set	{"nodeId":"e577841c-faf9-4693-be4b-943cd893a72e","nodeVersion":3.4}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26791	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.if	{"nodeId":"d3dd58e8-f1fb-4fb3-a42b-06637d950a97","nodeVersion":2.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26792	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"1ace90a4-6e92-477a-81e8-e13fc74c2f19","nodeVersion":1.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26793	6jaIG8BQurnDLztv	117	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"1ace90a4-6e92-477a-81e8-e13fc74c2f19","nodeVersion":1.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26794	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"d0cab773-49e9-439d-b2cc-5187fd77e786","nodeVersion":1.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
12616	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.set	{"nodeId":"b5b9c849-f7cf-42f4-bc14-cf8f41462d6e","nodeVersion":3.4}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12617	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"4a6e9368-03be-425e-9ebf-c99a8729b6e0","nodeVersion":4.7}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12618	6L2KXAzhlmhAl1Ds	574	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"4a6e9368-03be-425e-9ebf-c99a8729b6e0","nodeVersion":4.7}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12619	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.gmail	{"nodeId":"403d8b72-2fea-4e45-ad10-0a73ad6d9463","nodeVersion":2.2}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12620	6L2KXAzhlmhAl1Ds	574	credentialId	hnzOthEinhs30BEl	{"nodeId":"403d8b72-2fea-4e45-ad10-0a73ad6d9463","nodeVersion":2.2}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12621	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.if	{"nodeId":"cad511c5-a82a-4363-8148-38d72eeea40a","nodeVersion":2.3}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12622	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.if	{"nodeId":"1f5fddd1-cf87-4e8a-9b17-0acf65c95cca","nodeVersion":2.3}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12623	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.gmail	{"nodeId":"27448167-98d4-48dd-b57b-5444f69b5bb1","nodeVersion":2.2}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12624	6L2KXAzhlmhAl1Ds	574	credentialId	hnzOthEinhs30BEl	{"nodeId":"27448167-98d4-48dd-b57b-5444f69b5bb1","nodeVersion":2.2}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12625	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.gmail	{"nodeId":"f71be010-9903-422f-9f01-69e37edc38eb","nodeVersion":2.2}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12626	6L2KXAzhlmhAl1Ds	574	credentialId	hnzOthEinhs30BEl	{"nodeId":"f71be010-9903-422f-9f01-69e37edc38eb","nodeVersion":2.2}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12627	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.code	{"nodeId":"2ae610ee-2674-49fc-b8d0-66a4798e91b9","nodeVersion":2}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12628	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"3417636b-40e7-462c-a938-a49996053c64","nodeVersion":1.3}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12629	6L2KXAzhlmhAl1Ds	574	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"3417636b-40e7-462c-a938-a49996053c64","nodeVersion":1.3}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12630	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.gmail	{"nodeId":"5921de67-16bf-4aec-a8eb-8ffd00f4b4b9","nodeVersion":2.2}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
12631	6L2KXAzhlmhAl1Ds	574	credentialId	hnzOthEinhs30BEl	{"nodeId":"5921de67-16bf-4aec-a8eb-8ffd00f4b4b9","nodeVersion":2.2}	1	2026-06-10 19:28:48.04+00	57639898-3998-46c4-a37e-dfbe9632acbd
26795	6jaIG8BQurnDLztv	117	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"d0cab773-49e9-439d-b2cc-5187fd77e786","nodeVersion":1.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26796	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.if	{"nodeId":"63277f3b-ad28-4893-b5b8-426088b57af6","nodeVersion":2.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26797	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"38c228a7-0368-44c6-91cf-b546cc4e615b","nodeVersion":1.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26798	6jaIG8BQurnDLztv	117	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"38c228a7-0368-44c6-91cf-b546cc4e615b","nodeVersion":1.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26799	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.gmail	{"nodeId":"3d2f4f40-711c-4844-aa17-e4a3ebde9c8f","nodeVersion":2.2}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26800	6jaIG8BQurnDLztv	117	credentialId	hnzOthEinhs30BEl	{"nodeId":"3d2f4f40-711c-4844-aa17-e4a3ebde9c8f","nodeVersion":2.2}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26801	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.gmail	{"nodeId":"ddb07176-5c9e-4d81-aba4-b5030fe11ae1","nodeVersion":2.2}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26802	6jaIG8BQurnDLztv	117	credentialId	hnzOthEinhs30BEl	{"nodeId":"ddb07176-5c9e-4d81-aba4-b5030fe11ae1","nodeVersion":2.2}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26803	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"320054fb-71be-4ad0-8800-7c12949d9771","nodeVersion":1.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26804	6jaIG8BQurnDLztv	117	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"320054fb-71be-4ad0-8800-7c12949d9771","nodeVersion":1.3}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26805	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.code	{"nodeId":"fa626f84-403e-41ad-a0f8-55f38148818e","nodeVersion":2}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26806	6jaIG8BQurnDLztv	117	nodeType	n8n-nodes-base.gmail	{"nodeId":"02963fbd-ce04-4f37-b180-9c346f32dc9a","nodeVersion":2.2}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
26807	6jaIG8BQurnDLztv	117	credentialId	hnzOthEinhs30BEl	{"nodeId":"02963fbd-ce04-4f37-b180-9c346f32dc9a","nodeVersion":2.2}	1	2026-06-25 04:33:32.629+00	b5d3b2b3-66e5-4a2d-b8b9-e65b6d1440bf
28826	zGzdtmcuZicig0MZ	2	nodeType	n8n-nodes-base.scheduleTrigger	{"nodeId":"02606c7a-2712-4ca0-95c9-d0ee780d43db","nodeVersion":1.3}	1	2026-07-02 09:08:48.208+00	\N
28827	zGzdtmcuZicig0MZ	2	nodeType	@n8n/n8n-nodes-langchain.agent	{"nodeId":"9637cd79-318c-46a5-9892-2f1173a95fff","nodeVersion":3.1}	1	2026-07-02 09:08:48.208+00	\N
28828	zGzdtmcuZicig0MZ	2	nodeType	@n8n/n8n-nodes-langchain.lmChatGoogleGemini	{"nodeId":"3315b301-bcbb-4892-b304-af31e5f62001","nodeVersion":1.1}	1	2026-07-02 09:08:48.208+00	\N
28829	zGzdtmcuZicig0MZ	2	credentialId	npiGI4lVZvjYWKUo	{"nodeId":"3315b301-bcbb-4892-b304-af31e5f62001","nodeVersion":1.1}	1	2026-07-02 09:08:48.208+00	\N
28830	zGzdtmcuZicig0MZ	2	nodeType	n8n-nodes-base.googleSheetsTool	{"nodeId":"fe702473-0753-459c-94db-19caa22ecd0f","nodeVersion":4.7}	1	2026-07-02 09:08:48.208+00	\N
28831	zGzdtmcuZicig0MZ	2	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"fe702473-0753-459c-94db-19caa22ecd0f","nodeVersion":4.7}	1	2026-07-02 09:08:48.208+00	\N
28832	zGzdtmcuZicig0MZ	2	nodeType	n8n-nodes-base.googleSheetsTool	{"nodeId":"6bb41811-178b-4d16-90be-9d3e2f9f9b0c","nodeVersion":4.7}	1	2026-07-02 09:08:48.208+00	\N
28833	zGzdtmcuZicig0MZ	2	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"6bb41811-178b-4d16-90be-9d3e2f9f9b0c","nodeVersion":4.7}	1	2026-07-02 09:08:48.208+00	\N
28834	zGzdtmcuZicig0MZ	2	nodeType	n8n-nodes-base.openWeatherMap	{"nodeId":"6a407a9a-fc2e-477f-a256-52b0001e40fd","nodeVersion":1}	1	2026-07-02 09:08:48.208+00	\N
28835	zGzdtmcuZicig0MZ	2	credentialId	a9sV3Oh10cbHaTAN	{"nodeId":"6a407a9a-fc2e-477f-a256-52b0001e40fd","nodeVersion":1}	1	2026-07-02 09:08:48.208+00	\N
12592	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"a943fb8d-67e6-4231-b880-d4299112acb4","nodeVersion":1}	1	2026-06-10 19:28:39.704+00	\N
28868	hblPfsvtXd3oEUIX	139	nodeType	n8n-nodes-base.scheduleTrigger	{"nodeId":"b1ec821d-6329-42e0-beae-04c74bf0d861","nodeVersion":1.3}	1	2026-07-02 10:10:48.846+00	\N
28869	hblPfsvtXd3oEUIX	139	nodeType	@n8n/n8n-nodes-langchain.agent	{"nodeId":"ec65cecc-0d14-4edc-ae7e-5098a27f50c9","nodeVersion":3.1}	1	2026-07-02 10:10:48.846+00	\N
28870	hblPfsvtXd3oEUIX	139	nodeType	@n8n/n8n-nodes-langchain.lmChatGoogleGemini	{"nodeId":"a29f9204-6faa-469b-b7db-30a83ef5f307","nodeVersion":1.1}	1	2026-07-02 10:10:48.846+00	\N
28871	hblPfsvtXd3oEUIX	139	credentialId	npiGI4lVZvjYWKUo	{"nodeId":"a29f9204-6faa-469b-b7db-30a83ef5f307","nodeVersion":1.1}	1	2026-07-02 10:10:48.846+00	\N
28872	hblPfsvtXd3oEUIX	139	nodeType	n8n-nodes-base.openWeatherMap	{"nodeId":"af90a19b-b8bd-4b01-bca9-83a913d7e633","nodeVersion":1}	1	2026-07-02 10:10:48.846+00	\N
28873	hblPfsvtXd3oEUIX	139	credentialId	a9sV3Oh10cbHaTAN	{"nodeId":"af90a19b-b8bd-4b01-bca9-83a913d7e633","nodeVersion":1}	1	2026-07-02 10:10:48.846+00	\N
12593	6L2KXAzhlmhAl1Ds	574	credentialId	90DelCYiWfhmOGho	{"nodeId":"a943fb8d-67e6-4231-b880-d4299112acb4","nodeVersion":1}	1	2026-06-10 19:28:39.704+00	\N
12594	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"3113c9d2-6b53-4f69-9d30-848883ce36ab","nodeVersion":4.7}	1	2026-06-10 19:28:39.704+00	\N
12595	6L2KXAzhlmhAl1Ds	574	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"3113c9d2-6b53-4f69-9d30-848883ce36ab","nodeVersion":4.7}	1	2026-06-10 19:28:39.704+00	\N
12596	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.set	{"nodeId":"b5b9c849-f7cf-42f4-bc14-cf8f41462d6e","nodeVersion":3.4}	1	2026-06-10 19:28:39.704+00	\N
12597	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"4a6e9368-03be-425e-9ebf-c99a8729b6e0","nodeVersion":4.7}	1	2026-06-10 19:28:39.704+00	\N
12598	6L2KXAzhlmhAl1Ds	574	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"4a6e9368-03be-425e-9ebf-c99a8729b6e0","nodeVersion":4.7}	1	2026-06-10 19:28:39.704+00	\N
12599	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.gmail	{"nodeId":"403d8b72-2fea-4e45-ad10-0a73ad6d9463","nodeVersion":2.2}	1	2026-06-10 19:28:39.704+00	\N
12600	6L2KXAzhlmhAl1Ds	574	credentialId	hnzOthEinhs30BEl	{"nodeId":"403d8b72-2fea-4e45-ad10-0a73ad6d9463","nodeVersion":2.2}	1	2026-06-10 19:28:39.704+00	\N
12601	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.if	{"nodeId":"cad511c5-a82a-4363-8148-38d72eeea40a","nodeVersion":2.3}	1	2026-06-10 19:28:39.704+00	\N
12602	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.if	{"nodeId":"1f5fddd1-cf87-4e8a-9b17-0acf65c95cca","nodeVersion":2.3}	1	2026-06-10 19:28:39.704+00	\N
12603	6L2KXAzhlmhAl1Ds	574	nodeType	n8n-nodes-base.gmail	{"nodeId":"27448167-98d4-48dd-b57b-5444f69b5bb1","nodeVersion":2.2}	1	2026-06-10 19:28:39.704+00	\N
28874	hblPfsvtXd3oEUIX	139	nodeType	@n8n/n8n-nodes-langchain.agent	{"nodeId":"fffe1bbd-6537-4de1-9dc6-2b9fa7ed3d3e","nodeVersion":3.1}	1	2026-07-02 10:10:48.846+00	\N
28875	hblPfsvtXd3oEUIX	139	nodeType	n8n-nodes-base.googleSheetsTool	{"nodeId":"aebeea0e-f63f-4940-95bb-2ea4776eaaa4","nodeVersion":4.7}	1	2026-07-02 10:10:48.846+00	\N
28876	hblPfsvtXd3oEUIX	139	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"aebeea0e-f63f-4940-95bb-2ea4776eaaa4","nodeVersion":4.7}	1	2026-07-02 10:10:48.846+00	\N
28877	hblPfsvtXd3oEUIX	139	nodeType	n8n-nodes-base.googleSheetsTool	{"nodeId":"6ec65565-adfb-4055-90ea-59ed994b0d05","nodeVersion":4.7}	1	2026-07-02 10:10:48.846+00	\N
28878	hblPfsvtXd3oEUIX	139	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"6ec65565-adfb-4055-90ea-59ed994b0d05","nodeVersion":4.7}	1	2026-07-02 10:10:48.846+00	\N
28879	hblPfsvtXd3oEUIX	139	nodeType	n8n-nodes-base.googleSheetsTool	{"nodeId":"646dd433-57a4-400d-bf1d-4faf58725d51","nodeVersion":4.7}	1	2026-07-02 10:10:48.846+00	\N
28880	hblPfsvtXd3oEUIX	139	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"646dd433-57a4-400d-bf1d-4faf58725d51","nodeVersion":4.7}	1	2026-07-02 10:10:48.846+00	\N
28881	hblPfsvtXd3oEUIX	139	nodeType	n8n-nodes-base.googleSheetsTool	{"nodeId":"8228ecd6-7a0f-4b77-9b59-07041c965f32","nodeVersion":4.7}	1	2026-07-02 10:10:48.846+00	\N
28882	hblPfsvtXd3oEUIX	139	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"8228ecd6-7a0f-4b77-9b59-07041c965f32","nodeVersion":4.7}	1	2026-07-02 10:10:48.846+00	\N
28883	hblPfsvtXd3oEUIX	139	nodeType	@n8n/n8n-nodes-langchain.outputParserStructured	{"nodeId":"28dbc3dd-496f-4d1f-b227-26d801df07db","nodeVersion":1.3}	1	2026-07-02 10:10:48.846+00	\N
25253	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"706021c8-e9fc-48b5-9f63-78bf522ed38a","nodeVersion":1}	1	2026-06-24 21:05:56.672+00	\N
25254	wPLp2slfjHoiQwGF	429	credentialId	90DelCYiWfhmOGho	{"nodeId":"706021c8-e9fc-48b5-9f63-78bf522ed38a","nodeVersion":1}	1	2026-06-24 21:05:56.672+00	\N
25255	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"5dba1f30-6e27-4000-9d9e-f9b7dfa646b2","nodeVersion":4.7}	1	2026-06-24 21:05:56.672+00	\N
25256	wPLp2slfjHoiQwGF	429	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"5dba1f30-6e27-4000-9d9e-f9b7dfa646b2","nodeVersion":4.7}	1	2026-06-24 21:05:56.672+00	\N
25257	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.if	{"nodeId":"2ddd8eaa-4ea4-4197-b892-42c278fc480e","nodeVersion":2.3}	1	2026-06-24 21:05:56.672+00	\N
25258	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.if	{"nodeId":"aafa10e6-b2c2-4d97-986a-d00b01cca07d","nodeVersion":2.3}	1	2026-06-24 21:05:56.672+00	\N
25259	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"578490cf-5da1-4e4f-8acd-e38970ff7943","nodeVersion":4.7}	1	2026-06-24 21:05:56.672+00	\N
26830	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"e1c7cccc-1690-4a85-b998-c6698d94d390","nodeVersion":1}	1	2026-06-25 04:54:43.676+00	\N
26831	6jaIG8BQurnDLztv	119	credentialId	90DelCYiWfhmOGho	{"nodeId":"e1c7cccc-1690-4a85-b998-c6698d94d390","nodeVersion":1}	1	2026-06-25 04:54:43.676+00	\N
26832	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"4291b040-c98c-4e0f-ae9f-eed3d2aef3f6","nodeVersion":1.3}	1	2026-06-25 04:54:43.676+00	\N
26833	6jaIG8BQurnDLztv	119	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"4291b040-c98c-4e0f-ae9f-eed3d2aef3f6","nodeVersion":1.3}	1	2026-06-25 04:54:43.676+00	\N
26834	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.set	{"nodeId":"e577841c-faf9-4693-be4b-943cd893a72e","nodeVersion":3.4}	1	2026-06-25 04:54:43.676+00	\N
26835	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.if	{"nodeId":"d3dd58e8-f1fb-4fb3-a42b-06637d950a97","nodeVersion":2.3}	1	2026-06-25 04:54:43.676+00	\N
26836	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"1ace90a4-6e92-477a-81e8-e13fc74c2f19","nodeVersion":1.3}	1	2026-06-25 04:54:43.676+00	\N
26837	6jaIG8BQurnDLztv	119	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"1ace90a4-6e92-477a-81e8-e13fc74c2f19","nodeVersion":1.3}	1	2026-06-25 04:54:43.676+00	\N
26838	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"d0cab773-49e9-439d-b2cc-5187fd77e786","nodeVersion":1.3}	1	2026-06-25 04:54:43.676+00	\N
26839	6jaIG8BQurnDLztv	119	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"d0cab773-49e9-439d-b2cc-5187fd77e786","nodeVersion":1.3}	1	2026-06-25 04:54:43.676+00	\N
26840	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.if	{"nodeId":"63277f3b-ad28-4893-b5b8-426088b57af6","nodeVersion":2.3}	1	2026-06-25 04:54:43.676+00	\N
26841	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"38c228a7-0368-44c6-91cf-b546cc4e615b","nodeVersion":1.3}	1	2026-06-25 04:54:43.676+00	\N
26842	6jaIG8BQurnDLztv	119	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"38c228a7-0368-44c6-91cf-b546cc4e615b","nodeVersion":1.3}	1	2026-06-25 04:54:43.676+00	\N
26843	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.gmail	{"nodeId":"3d2f4f40-711c-4844-aa17-e4a3ebde9c8f","nodeVersion":2.2}	1	2026-06-25 04:54:43.676+00	\N
26844	6jaIG8BQurnDLztv	119	credentialId	hnzOthEinhs30BEl	{"nodeId":"3d2f4f40-711c-4844-aa17-e4a3ebde9c8f","nodeVersion":2.2}	1	2026-06-25 04:54:43.676+00	\N
26845	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.gmail	{"nodeId":"ddb07176-5c9e-4d81-aba4-b5030fe11ae1","nodeVersion":2.2}	1	2026-06-25 04:54:43.676+00	\N
26846	6jaIG8BQurnDLztv	119	credentialId	hnzOthEinhs30BEl	{"nodeId":"ddb07176-5c9e-4d81-aba4-b5030fe11ae1","nodeVersion":2.2}	1	2026-06-25 04:54:43.676+00	\N
26847	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"320054fb-71be-4ad0-8800-7c12949d9771","nodeVersion":1.3}	1	2026-06-25 04:54:43.676+00	\N
26848	6jaIG8BQurnDLztv	119	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"320054fb-71be-4ad0-8800-7c12949d9771","nodeVersion":1.3}	1	2026-06-25 04:54:43.676+00	\N
26849	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.code	{"nodeId":"fa626f84-403e-41ad-a0f8-55f38148818e","nodeVersion":2}	1	2026-06-25 04:54:43.676+00	\N
26850	6jaIG8BQurnDLztv	119	nodeType	n8n-nodes-base.gmail	{"nodeId":"02963fbd-ce04-4f37-b180-9c346f32dc9a","nodeVersion":2.2}	1	2026-06-25 04:54:43.676+00	\N
26851	6jaIG8BQurnDLztv	119	credentialId	hnzOthEinhs30BEl	{"nodeId":"02963fbd-ce04-4f37-b180-9c346f32dc9a","nodeVersion":2.2}	1	2026-06-25 04:54:43.676+00	\N
25260	wPLp2slfjHoiQwGF	429	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"578490cf-5da1-4e4f-8acd-e38970ff7943","nodeVersion":4.7}	1	2026-06-24 21:05:56.672+00	\N
25261	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.code	{"nodeId":"5994074b-a200-4c9d-96f4-996db8b1d3bd","nodeVersion":2}	1	2026-06-24 21:05:56.672+00	\N
25262	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.set	{"nodeId":"f0400b93-74a4-4366-b0c8-b0a5e14be06f","nodeVersion":3.4}	1	2026-06-24 21:05:56.672+00	\N
25263	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.if	{"nodeId":"1d9cda36-b9c9-43a5-9bd8-62daf444613c","nodeVersion":2.3}	1	2026-06-24 21:05:56.672+00	\N
25264	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"eb53dbd6-9256-46e3-8d56-b64a79ef5465","nodeVersion":1.3}	1	2026-06-24 21:05:56.672+00	\N
25265	wPLp2slfjHoiQwGF	429	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"eb53dbd6-9256-46e3-8d56-b64a79ef5465","nodeVersion":1.3}	1	2026-06-24 21:05:56.672+00	\N
25266	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"88923478-41ef-4a5c-997c-bae0f2434bd9","nodeVersion":1.3}	1	2026-06-24 21:05:56.672+00	\N
25267	wPLp2slfjHoiQwGF	429	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"88923478-41ef-4a5c-997c-bae0f2434bd9","nodeVersion":1.3}	1	2026-06-24 21:05:56.672+00	\N
25268	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"089a66da-f7c0-420d-863b-1ca346238716","nodeVersion":4.7}	1	2026-06-24 21:05:56.672+00	\N
25269	wPLp2slfjHoiQwGF	429	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"089a66da-f7c0-420d-863b-1ca346238716","nodeVersion":4.7}	1	2026-06-24 21:05:56.672+00	\N
25270	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"3289898b-ddfb-40a7-935f-3cd978d23c86","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25271	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"3289898b-ddfb-40a7-935f-3cd978d23c86","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25272	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"10c0d22a-0d64-4f85-a341-6d4df6d7a04c","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25273	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"10c0d22a-0d64-4f85-a341-6d4df6d7a04c","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25274	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"8671c12a-a03d-405a-ac7b-102ca7a8f2be","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25275	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"8671c12a-a03d-405a-ac7b-102ca7a8f2be","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25276	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"bcc9f292-dc28-4894-9e6a-4c96f2724c70","nodeVersion":1}	1	2026-06-24 21:05:56.672+00	\N
25277	wPLp2slfjHoiQwGF	429	credentialId	90DelCYiWfhmOGho	{"nodeId":"bcc9f292-dc28-4894-9e6a-4c96f2724c70","nodeVersion":1}	1	2026-06-24 21:05:56.672+00	\N
25278	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.if	{"nodeId":"2f4f8fb4-1043-4061-aff5-74c914ccc578","nodeVersion":2.3}	1	2026-06-24 21:05:56.672+00	\N
25279	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.set	{"nodeId":"5b5b5016-3fbe-48a7-abc0-27ea0677c11f","nodeVersion":3.4}	1	2026-06-24 21:05:56.672+00	\N
25280	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"17accebe-9e70-4e09-aa6d-f9d19de8aae4","nodeVersion":1.3}	1	2026-06-24 21:05:56.672+00	\N
25281	wPLp2slfjHoiQwGF	429	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"17accebe-9e70-4e09-aa6d-f9d19de8aae4","nodeVersion":1.3}	1	2026-06-24 21:05:56.672+00	\N
25282	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"0f5095eb-17b0-4ae0-8c18-f1a07fd8a0ce","nodeVersion":1.3}	1	2026-06-24 21:05:56.672+00	\N
25283	wPLp2slfjHoiQwGF	429	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"0f5095eb-17b0-4ae0-8c18-f1a07fd8a0ce","nodeVersion":1.3}	1	2026-06-24 21:05:56.672+00	\N
25284	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"aefd4750-2178-438d-bcce-6f5028fbbe07","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25285	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"aefd4750-2178-438d-bcce-6f5028fbbe07","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25286	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"2f9fdb44-ef32-41cd-9b03-93ebc2d4782c","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25287	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"2f9fdb44-ef32-41cd-9b03-93ebc2d4782c","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25288	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.code	{"nodeId":"72ff4bc0-9a14-4bd8-a78e-73774f084fd0","nodeVersion":2}	1	2026-06-24 21:05:56.672+00	\N
25289	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"1f92992c-dc61-41e9-97d3-fb6fbc8c13a6","nodeVersion":4.7}	1	2026-06-24 21:05:56.672+00	\N
25290	wPLp2slfjHoiQwGF	429	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"1f92992c-dc61-41e9-97d3-fb6fbc8c13a6","nodeVersion":4.7}	1	2026-06-24 21:05:56.672+00	\N
23076	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"08835e13-8d60-467f-9691-994a427907e7","nodeVersion":1}	1	2026-06-24 19:58:49.939+00	\N
23077	4BwtbipeXxjLpRpy	339	credentialId	90DelCYiWfhmOGho	{"nodeId":"08835e13-8d60-467f-9691-994a427907e7","nodeVersion":1}	1	2026-06-24 19:58:49.939+00	\N
23078	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.set	{"nodeId":"e135db77-57ff-43c8-aa2b-f0452e26d1bf","nodeVersion":3.4}	1	2026-06-24 19:58:49.939+00	\N
23079	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"2bec062e-6f4e-4b90-8ed0-518eaa65cb30","nodeVersion":4.7}	1	2026-06-24 19:58:49.939+00	\N
25291	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"70fddcd4-a6da-4c68-95f4-a1300ad4a780","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25292	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"70fddcd4-a6da-4c68-95f4-a1300ad4a780","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25293	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"c7bf72b8-88fb-4a64-824c-138c4e578490","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25294	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"c7bf72b8-88fb-4a64-824c-138c4e578490","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25295	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.stickyNote	{"nodeId":"ba6fca61-0ba5-41b5-9959-e479651e68a5","nodeVersion":1}	1	2026-06-24 21:05:56.672+00	\N
25296	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.stickyNote	{"nodeId":"6cfa8ae5-ecdb-4831-822b-804ef4914576","nodeVersion":1}	1	2026-06-24 21:05:56.672+00	\N
25297	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.if	{"nodeId":"ad836538-3d81-4f3f-88f5-819eca5c531e","nodeVersion":2.3}	1	2026-06-24 21:05:56.672+00	\N
25298	wPLp2slfjHoiQwGF	429	nodeType	n8n-nodes-base.gmail	{"nodeId":"d5dc6a7a-9a62-43d2-8f63-19d3e71afaa8","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
25299	wPLp2slfjHoiQwGF	429	credentialId	hnzOthEinhs30BEl	{"nodeId":"d5dc6a7a-9a62-43d2-8f63-19d3e71afaa8","nodeVersion":2.2}	1	2026-06-24 21:05:56.672+00	\N
23080	4BwtbipeXxjLpRpy	339	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"2bec062e-6f4e-4b90-8ed0-518eaa65cb30","nodeVersion":4.7}	1	2026-06-24 19:58:49.939+00	\N
23081	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.if	{"nodeId":"3544c34a-0e8b-4b89-885e-e0aaae017d0b","nodeVersion":2.3}	1	2026-06-24 19:58:49.939+00	\N
23082	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.if	{"nodeId":"7539a6b0-d2e1-4338-8852-299c90ab413d","nodeVersion":2.3}	1	2026-06-24 19:58:49.939+00	\N
23083	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"eaabf87e-077e-4b7e-8225-564e1a1f3224","nodeVersion":4.7}	1	2026-06-24 19:58:49.939+00	\N
23084	4BwtbipeXxjLpRpy	339	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"eaabf87e-077e-4b7e-8225-564e1a1f3224","nodeVersion":4.7}	1	2026-06-24 19:58:49.939+00	\N
23085	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"1226c838-78d0-44fb-8a63-8850cf303f57","nodeVersion":1.3}	1	2026-06-24 19:58:49.939+00	\N
23086	4BwtbipeXxjLpRpy	339	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"1226c838-78d0-44fb-8a63-8850cf303f57","nodeVersion":1.3}	1	2026-06-24 19:58:49.939+00	\N
23087	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"ae9dd291-7503-4e1f-853f-1f1e7ca3f897","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23088	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"ae9dd291-7503-4e1f-853f-1f1e7ca3f897","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23089	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"06f158df-e30e-4e20-b46d-9e5533d22538","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23090	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"06f158df-e30e-4e20-b46d-9e5533d22538","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23091	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"625c80e7-24f3-4102-80fc-27d6f634c739","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23092	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"625c80e7-24f3-4102-80fc-27d6f634c739","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23093	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"e2ebf59a-8416-4f26-b22b-e2e5b040035c","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23094	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"e2ebf59a-8416-4f26-b22b-e2e5b040035c","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23095	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"30f89759-b954-456e-a36a-6ef8bd948bc6","nodeVersion":1}	1	2026-06-24 19:58:49.939+00	\N
23096	4BwtbipeXxjLpRpy	339	credentialId	90DelCYiWfhmOGho	{"nodeId":"30f89759-b954-456e-a36a-6ef8bd948bc6","nodeVersion":1}	1	2026-06-24 19:58:49.939+00	\N
23097	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.if	{"nodeId":"98b974fd-9773-469b-8318-b4e2d76ba2d1","nodeVersion":2.3}	1	2026-06-24 19:58:49.939+00	\N
23098	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"e09ab3df-e262-4db3-a8e8-fc07d3fe8efc","nodeVersion":1.3}	1	2026-06-24 19:58:49.939+00	\N
23099	4BwtbipeXxjLpRpy	339	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"e09ab3df-e262-4db3-a8e8-fc07d3fe8efc","nodeVersion":1.3}	1	2026-06-24 19:58:49.939+00	\N
23100	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"2871dbba-311c-43de-8e06-3115908e9ec5","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23101	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"2871dbba-311c-43de-8e06-3115908e9ec5","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23102	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"4f3e31d0-8c29-49e8-9eb8-bc493e345740","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23103	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"4f3e31d0-8c29-49e8-9eb8-bc493e345740","nodeVersion":2.2}	1	2026-06-24 19:58:49.939+00	\N
23104	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.set	{"nodeId":"6bb9d17c-bc6e-4c72-bdcf-d7a9381da38d","nodeVersion":3.4}	1	2026-06-24 19:58:49.939+00	\N
23105	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.stickyNote	{"nodeId":"317b900d-bb5f-4027-a086-946ec09007d5","nodeVersion":1}	1	2026-06-24 19:58:49.939+00	\N
23106	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.stickyNote	{"nodeId":"35095443-ddc9-4093-bb3d-db4d3e5bd710","nodeVersion":1}	1	2026-06-24 19:58:49.939+00	\N
23107	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"08835e13-8d60-467f-9691-994a427907e7","nodeVersion":1}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23108	4BwtbipeXxjLpRpy	339	credentialId	90DelCYiWfhmOGho	{"nodeId":"08835e13-8d60-467f-9691-994a427907e7","nodeVersion":1}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23109	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.set	{"nodeId":"e135db77-57ff-43c8-aa2b-f0452e26d1bf","nodeVersion":3.4}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23110	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"2bec062e-6f4e-4b90-8ed0-518eaa65cb30","nodeVersion":4.7}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23111	4BwtbipeXxjLpRpy	339	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"2bec062e-6f4e-4b90-8ed0-518eaa65cb30","nodeVersion":4.7}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23112	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.if	{"nodeId":"3544c34a-0e8b-4b89-885e-e0aaae017d0b","nodeVersion":2.3}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23113	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.if	{"nodeId":"7539a6b0-d2e1-4338-8852-299c90ab413d","nodeVersion":2.3}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23114	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleSheets	{"nodeId":"eaabf87e-077e-4b7e-8225-564e1a1f3224","nodeVersion":4.7}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23115	4BwtbipeXxjLpRpy	339	credentialId	VDn2yHU2F0hroPrO	{"nodeId":"eaabf87e-077e-4b7e-8225-564e1a1f3224","nodeVersion":4.7}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23116	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"1226c838-78d0-44fb-8a63-8850cf303f57","nodeVersion":1.3}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23117	4BwtbipeXxjLpRpy	339	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"1226c838-78d0-44fb-8a63-8850cf303f57","nodeVersion":1.3}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23118	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"ae9dd291-7503-4e1f-853f-1f1e7ca3f897","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23119	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"ae9dd291-7503-4e1f-853f-1f1e7ca3f897","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23120	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"06f158df-e30e-4e20-b46d-9e5533d22538","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23121	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"06f158df-e30e-4e20-b46d-9e5533d22538","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23122	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"625c80e7-24f3-4102-80fc-27d6f634c739","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23123	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"625c80e7-24f3-4102-80fc-27d6f634c739","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23124	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"e2ebf59a-8416-4f26-b22b-e2e5b040035c","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23125	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"e2ebf59a-8416-4f26-b22b-e2e5b040035c","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23126	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleSheetsTrigger	{"nodeId":"30f89759-b954-456e-a36a-6ef8bd948bc6","nodeVersion":1}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23127	4BwtbipeXxjLpRpy	339	credentialId	90DelCYiWfhmOGho	{"nodeId":"30f89759-b954-456e-a36a-6ef8bd948bc6","nodeVersion":1}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23128	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.if	{"nodeId":"98b974fd-9773-469b-8318-b4e2d76ba2d1","nodeVersion":2.3}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23129	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.googleCalendar	{"nodeId":"e09ab3df-e262-4db3-a8e8-fc07d3fe8efc","nodeVersion":1.3}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23130	4BwtbipeXxjLpRpy	339	credentialId	NHqGhrd4pyBuJOTi	{"nodeId":"e09ab3df-e262-4db3-a8e8-fc07d3fe8efc","nodeVersion":1.3}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23131	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"2871dbba-311c-43de-8e06-3115908e9ec5","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23132	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"2871dbba-311c-43de-8e06-3115908e9ec5","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23133	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.gmail	{"nodeId":"4f3e31d0-8c29-49e8-9eb8-bc493e345740","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23134	4BwtbipeXxjLpRpy	339	credentialId	hnzOthEinhs30BEl	{"nodeId":"4f3e31d0-8c29-49e8-9eb8-bc493e345740","nodeVersion":2.2}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23135	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.set	{"nodeId":"6bb9d17c-bc6e-4c72-bdcf-d7a9381da38d","nodeVersion":3.4}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23136	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.stickyNote	{"nodeId":"317b900d-bb5f-4027-a086-946ec09007d5","nodeVersion":1}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
23137	4BwtbipeXxjLpRpy	339	nodeType	n8n-nodes-base.stickyNote	{"nodeId":"35095443-ddc9-4093-bb3d-db4d3e5bd710","nodeVersion":1}	1	2026-06-24 19:59:01.007+00	81f3c009-2222-49d9-b570-6b391e7fd39f
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections", "name", "autosaved", "description", "nodeGroups") FROM stdin;
745c1ec9-fb27-4bae-b32a-5deb0a81f3a1	9SZO1hHNfShnfd5Y	Anjerico Canasa	2026-06-03 12:56:37.109+00	2026-06-03 12:56:37.109+00	[]	{}	\N	f	\N	[]
57639898-3998-46c4-a37e-dfbe9632acbd	6L2KXAzhlmhAl1Ds	Anjerico Canasa	2026-06-10 19:28:37.804+00	2026-06-10 19:28:48.056+00	[{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1027027248,"mode":"list","cachedResultName":"HostGhe Event Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=1027027248"},"event":"rowAdded","options":{}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-1760,112],"id":"a943fb8d-67e6-4231-b880-d4299112acb4","name":"Google Sheets Trigger","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"filtersUI":{"values":[{"lookupColumn":"EventDate","lookupValue":"={{ $('Set').item.json.eventDate }}"}]},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-1040,352],"id":"3113c9d2-6b53-4f69-9d30-848883ce36ab","name":"Get row(s) in sheet","alwaysOutputData":true,"credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"assignments":{"assignments":[{"id":"16ce8920-47ae-40c0-baf5-3c385f06b1a6","name":"clientName","value":"={{ $json['Full Name'] }}","type":"string"},{"id":"aed0ddf9-d479-4c8c-a301-c2693f4d4a2b","name":"clientEmail","value":"={{ $json['Email Address'] }}","type":"string"},{"id":"4fc6b405-abf8-4439-91dc-4e09baf18b09","name":"clientPhone","value":"={{ $json['Contact Number'] }}","type":"string"},{"id":"68dd9908-48ce-406d-ab1f-830bbda51183","name":"eventType","value":"={{ $json['Event Type '] }}","type":"string"},{"id":"8e74bb71-8cf6-4492-86df-b26d8026c44d","name":"eventDate","value":"={{ $json['Event Date'] }}","type":"string"},{"id":"afbd244d-b384-4d54-85a7-c3390d756b59","name":"guestCount","value":"={{ $json['Number of Guests'] }}","type":"number"},{"id":"73196f2c-c695-4bbe-8813-b3af17e93286","name":"notes","value":"={{ $json.Notes }}","type":"string"},{"id":"678d2eb9-6967-4c3d-bc66-e64f7b7b9c3f","name":"eventPlace","value":"={{ $json['Event Place'] }}","type":"string"},{"id":"0389b0d4-27fd-4849-a0e7-1ec6a7d7da35","name":"eventTheme","value":"={{ $json.Theme }}","type":"string"},{"id":"f143669a-41b6-411b-8345-3765c27bf812","name":"eventMotif","value":"={{ $json['Color Motif'] }}","type":"string"},{"id":"a0f48293-9744-4741-b995-690c875caa65","name":"eventTime","value":"={{ $json['Event Time'].split('—')[1].trim() }}","type":"string"},{"id":"3692a1f7-2c66-445b-8af2-2c0127c54b94","name":"eventSlot","value":"={{ $json['Event Time'].split('—')[0].trim() }}","type":"string"},{"id":"a033ed76-5d6f-4e43-b769-84775db438c2","name":"Package ","value":"={{ $json['Package '] }}","type":"string"},{"id":"91eb96ac-cef5-43f9-bc65-18df90c4a032","name":"depositAmount","value":"={{ Number($json['Package '].replace(/[^0-9]/g, '')) * 0.25 }}","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-1552,112],"id":"b5b9c849-f7cf-42f4-bc14-cf8f41462d6e","name":"Set"},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"columns":{"mappingMode":"defineBelow","value":{"ClientName":"={{ $('Set').item.json.clientName }}","Email":"={{ $('Set').item.json.clientEmail }}","EventType":"={{ $('Set').item.json.eventType }}","Phone":"={{ $('Set').item.json.clientPhone }}","EventDate":"={{ $('Set').item.json.eventDate }}","EventTime":"={{ $('Set').item.json.eventTime }}","TimeSlot":"={{ $('Set').item.json.eventSlot }}","Package":"={{ $('Set').item.json['Package '] }}","DepositAmount ":"={{ $('Set').item.json.depositAmount }}","EventPlace":"={{ $('Set').item.json.eventPlace }}","EventTheme":"={{ $('Set').item.json.eventTheme }}","EventMotif":"={{ $('Set').item.json.eventMotif }}","GuestCount":"={{ $('Set').item.json.guestCount }}","Source":"Client","Status":"={{ $json.status }}","Notes":"={{ $('Set').item.json.notes }}","CalendarEventID":"={{ $json.id }}","Reschedule Count":"0","Original Date":"={{ $('Set').item.json.eventDate }}","Timestamp":"={{ $('Google Sheets Trigger').item.json.Timestamp }}"},"matchingColumns":[],"schema":[{"id":"Timestamp","displayName":"Timestamp","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"ClientName","displayName":"ClientName","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Phone","displayName":"Phone","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventType","displayName":"EventType","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventDate","displayName":"EventDate","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTime","displayName":"EventTime","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"TimeSlot","displayName":"TimeSlot","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Package","displayName":"Package","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositAmount ","displayName":"DepositAmount ","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositStatus","displayName":"DepositStatus","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventPlace","displayName":"EventPlace","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTheme","displayName":"EventTheme","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventMotif","displayName":"EventMotif","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"GuestCount","displayName":"GuestCount","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Source","displayName":"Source","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Notes","displayName":"Notes","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"CalendarEventID","displayName":"CalendarEventID","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Reschedule Count","displayName":"Reschedule Count","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false},{"id":"Original Date","displayName":"Original Date","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-224,208],"id":"4a6e9368-03be-425e-9ebf-c99a8729b6e0","name":"Append row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"=Booking Confirmed — {{ $('Set').item.json.eventType }} on {{ $('Set').item.json.eventDate }}","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},\\n\\nGreat news — your booking is confirmed!\\n\\nHere are your booking details:\\n\\nEvent:      {{ $('Set').item.json.eventType }}\\nDate:       {{ $('Set').item.json.eventDate }}\\nTime:       {{ $('Set').item.json.eventTime }}\\nTime Slot:  {{ $('Set').item.json.eventSlot }}\\nVenue:      {{ $('Set').item.json.eventPlace }}\\nGuests:     {{ $('Set').item.json.guestCount }}\\nPackage:    {{ $('Set').item.json['Package '] }}\\n\\nA Google Calendar invite has been sent to your email.\\n\\nPlease accept it to add the event to your calendar.\\n\\nDEPOSIT REQUIRED:\\nAmount:    ₱{{ $('Set').item.json.depositAmount }}\\nDeadline:  Within 48 hours to secure your booking\\n\\nPlease send your deposit via:\\nGCash:     09XX-XXX-XXXX (Name)\\nMaya:      09XX-XXX-XXXX (Name)\\nBDO:       Account Number XXXX (Name)\\n\\nSend proof of payment to this email with subject:\\nDEPOSIT — {{ $('Set').item.json.clientName }} — {{ $('Set').item.json.eventDate }}\\n\\nNEXT STEPS:\\nWe will contact you at {{ $('Set').item.json.clientPhone }} \\nwithin 24 hours to schedule your initial consultation.\\n\\nDuring consultation we will discuss:\\n- Event requirements and theme details\\n- Timeline and coordination plan\\n- Final headcount confirmation\\n\\nNeed to cancel your booking?\\nSubmit a cancellation request here: https://forms.gle/ngqDhLFnrwBLqMjk8\\n\\nPlease note: Initial deposits are non-refundable.\\n\\nLooking forward to making your event special!\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[0,208],"id":"403d8b72-2fea-4e45-ad10-0a73ad6d9463","name":"Confirm email to client","webhookId":"a29ca897-12b2-4bf0-8e9b-64871a9fc548","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"loose","version":3},"conditions":[{"id":"c29549b8-fa82-40c9-8040-4344f4bc0f63","leftValue":"={{ new Date($json.eventDate).getTime() < new Date().getTime() }}","rightValue":"true","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":true,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-1312,112],"id":"cad511c5-a82a-4363-8148-38d72eeea40a","name":"If Date < todate"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"loose","version":3},"conditions":[{"id":"a4305948-5e89-414e-a25a-0c99eed6581c","leftValue":"={{ $json.allowed }}","rightValue":"true","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"looseTypeValidation":true,"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-624,352],"id":"1f5fddd1-cf87-4e8a-9b17-0acf65c95cca","name":"If Date is Open"},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Re: Your Event Booking Request","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nThank you for your inquiry!  \\n\\nUnfortunately we cannot process bookings for past dates.  Please resubmit with a future date and we will  check availability for you right away.  \\n\\nWarm regards, \\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-1040,-64],"id":"27448167-98d4-48dd-b57b-5444f69b5bb1","name":"Decline message to client 1","webhookId":"8ededf6f-167a-4d2a-9594-ac896bc6077f","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Re: Your Event Booking Request","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},\\n\\nThank you for your inquiry!\\n\\nUnfortunately we are unable to confirm your booking for {{ $('Set').item.json.eventDate }}.\\n\\nReason: {{ $('Smart Conflict Check').item.json.reason }}\\n\\nPlease contact us to discuss alternative dates\\nor time slots.\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-416,464],"id":"f71be010-9903-422f-9f01-69e37edc38eb","name":"Decline message to client 2","webhookId":"8c21fa97-9f8c-4c68-9303-2aad50e5f5b3","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"jsCode":"const existingBookings = $input.all().filter(\\n  item => Object.keys(item.json).length > 0 &&\\n  item.json['Status'] !== 'Cancelled'\\n);\\n\\nconst newTimeSlot = $('Set').item.json.eventSlot;\\nconst newEventType = $('Set').item.json.eventType;\\n\\n// No existing bookings\\nif (existingBookings.length === 0) {\\n  return [{\\n    json: {\\n      allowed: true,\\n      reason: 'Date is free'\\n    }\\n  }];\\n}\\n\\nfor (const booking of existingBookings) {\\n\\n  const existingSlot = booking.json['TimeSlot'];\\n  const existingType = booking.json['EventType'];\\n\\n  // Block same slot\\n  if (existingSlot === newTimeSlot) {\\n    return [{\\n      json: {\\n        allowed: false,\\n        reason: `The ${newTimeSlot} slot on this date is already taken.`\\n      }\\n    }];\\n  }\\n\\n  // If Morning is NOT Baptism → block all other bookings\\n  if (\\n    existingSlot.includes('Morning') &&\\n    !existingType.includes('Baptism')\\n  ) {\\n    return [{\\n      json: {\\n        allowed: false,\\n        reason: 'The host is fully booked on this date.'\\n      }\\n    }];\\n  }\\n}\\n\\nreturn [{\\n  json: {\\n    allowed: true,\\n    reason: 'Booking allowed.'\\n  }\\n}];"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[-832,352],"id":"2ae610ee-2674-49fc-b8d0-66a4798e91b9","name":"Smart Conflict Check"},{"parameters":{"calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"start":"={{ DateTime.fromFormat($('Set').item.json.eventDate + ' ' + $('Set').item.json.eventTime, 'M/d/yyyy h:mma', {zone: 'Asia/Manila'}).toISO() }}","end":"={{ DateTime.fromFormat($('Set').item.json.eventDate + ' ' + $('Set').item.json.eventTime, 'M/d/yyyy h:mma', {zone: 'Asia/Manila'}).plus({hours: 4}).toISO() }}","additionalFields":{"attendees":["={{ $('Set').item.json.clientEmail }}"],"description":"=Client: {{ $('Set').item.json.clientName }} \\nPhone:  {{ $('Set').item.json.clientPhone }}\\nEmail:  {{ $('Set').item.json.clientEmail }}\\nEvent:  {{ $('Set').item.json.eventType }}\\nSlot:   {{ $('Set').item.json.eventSlot }} \\nGuests: {{ $('Set').item.json.guestCount }} \\nVenue:  {{ $('Set').item.json.eventPlace }} \\nPackage: {{ $('Set').item.json['Package '] }}","location":"={{ $('Set').item.json.eventPlace }}","summary":"={{ $('Set').item.json.eventType }} — {{ $('Set').item.json.clientName }}"}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-416,208],"id":"3417636b-40e7-462c-a938-a49996053c64","name":"Add Confirmed Booking to Calendar","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"sendTo":"anjericocanasa@gmail.com","subject":"New booking received via Google Form!","emailType":"text","message":"=To:       [your own Gmail]\\n\\nSubject:  New Booking — {{ $('Set').item.json.eventType }} — {{ $('Set').item.json.eventDate }}\\n\\nBody:\\nNew booking received via Google Form!\\n\\nClient:   {{ $('Set').item.json.clientName }}\\nPhone:    {{ $('Set').item.json.clientPhone }}\\nEmail:    {{ $('Set').item.json.clientEmail }}\\nEvent:    {{ $('Set').item.json.eventType }}\\nDate:     {{ $('Set').item.json.eventDate }}\\nGuests:   {{ $('Set').item.json.guestCount }}\\nNotes:    {{ $('Set').item.json.notes }}\\n\\nCheck Confirmed Bookings sheet for full details.\\n\\nhttps://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?resourcekey=&gid=905873055#gid=905873055","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[208,208],"id":"5921de67-16bf-4aec-a8eb-8ffd00f4b4b9","name":"Alert email to host","webhookId":"252fbe0b-02fc-48e5-ae97-1299ab3d2879","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}}]	{"Google Sheets Trigger":{"main":[[{"node":"Set","type":"main","index":0}]]},"Set":{"main":[[{"node":"If Date < todate","type":"main","index":0}]]},"Get row(s) in sheet":{"main":[[{"node":"Smart Conflict Check","type":"main","index":0}]]},"Append row in sheet":{"main":[[{"node":"Confirm email to client","type":"main","index":0}]]},"Confirm email to client":{"main":[[{"node":"Alert email to host","type":"main","index":0}]]},"If Date < todate":{"main":[[{"node":"Decline message to client 1","type":"main","index":0}],[{"node":"Get row(s) in sheet","type":"main","index":0}]]},"If Date is Open":{"main":[[{"node":"Add Confirmed Booking to Calendar","type":"main","index":0}],[{"node":"Decline message to client 2","type":"main","index":0}]]},"Smart Conflict Check":{"main":[[{"node":"If Date is Open","type":"main","index":0}]]},"Add Confirmed Booking to Calendar":{"main":[[{"node":"Append row in sheet","type":"main","index":0}]]}}	Version 57639898	t		[]
81f3c009-2222-49d9-b570-6b391e7fd39f	4BwtbipeXxjLpRpy	Anjerico Canasa	2026-06-24 19:58:48.157+00	2026-06-24 19:59:01.018+00	[{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1013988101,"mode":"list","cachedResultName":"Cancellation Request","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=1013988101"},"event":"rowAdded","options":{}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-1104,176],"id":"08835e13-8d60-467f-9691-994a427907e7","name":"Google Sheets Trigger","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"assignments":{"assignments":[{"id":"493319e5-9d2b-41ef-9915-ffe382bcf95f","name":"Timestamp","value":"={{ $json.Timestamp }}","type":"string"},{"id":"cbbaa411-f77d-4a5f-a020-cecd0272946a","name":"clientName","value":"={{ $json['Full Name'] }}","type":"string"},{"id":"9cf4a0a0-9369-4c8d-a2a9-82d8faba78b0","name":"clientEmail","value":"={{ $json['Email Address'] }}","type":"string"},{"id":"e6ec6f3d-8db5-4026-a58b-9c17f1f5a9e3","name":"eventDate","value":"={{ $json['Event Date'] }}","type":"string"},{"id":"c7544ef5-2a9e-4fb6-b08a-24dbb35e1566","name":"reason","value":"={{ $json.Reason }}","type":"string"},{"id":"17502b83-8990-43a1-826c-c4894ee55f09","name":"source","value":"Client","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-896,176],"id":"e135db77-57ff-43c8-aa2b-f0452e26d1bf","name":"Set"},{"parameters":{"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-688,176],"id":"2bec062e-6f4e-4b90-8ed0-518eaa65cb30","name":"Get row(s) in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"4cb4cbee-d4a1-44af-b8a8-36faa93dd50d","leftValue":"={{ Object.keys($json).length}}","rightValue":0,"operator":{"type":"number","operation":"gt"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-480,176],"id":"3544c34a-0e8b-4b89-885e-e0aaae017d0b","name":"If"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"9519f04b-a46a-4183-891e-5cbbbb222d7c","leftValue":"={{ $json['Status'] }}","rightValue":"Cancelled","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-272,80],"id":"7539a6b0-d2e1-4338-8852-299c90ab413d","name":"If1"},{"parameters":{"operation":"update","documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"columns":{"mappingMode":"defineBelow","value":{"Status":"Cancelled","Notes":"=Cancellation reason: {{ $('Set').item.json.reason }}","row_number":"={{ $('Get row(s) in sheet').item.json.row_number }}"},"matchingColumns":["row_number"],"schema":[{"id":"Timestamp","displayName":"Timestamp","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"ClientName","displayName":"ClientName","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true,"removed":true},{"id":"Phone","displayName":"Phone","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventType","displayName":"EventType","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventDate","displayName":"EventDate","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTime","displayName":"EventTime","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"TimeSlot","displayName":"TimeSlot","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Package","displayName":"Package","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositAmount ","displayName":"DepositAmount ","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositStatus","displayName":"DepositStatus","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventPlace","displayName":"EventPlace","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTheme","displayName":"EventTheme","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventMotif","displayName":"EventMotif","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"GuestCount","displayName":"GuestCount","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Source","displayName":"Source","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Notes","displayName":"Notes","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"CalendarEventID","displayName":"CalendarEventID","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"row_number","displayName":"row_number","required":false,"defaultMatch":false,"display":true,"type":"number","canBeUsedToMatch":true,"readOnly":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[112,288],"id":"eaabf87e-077e-4b7e-8225-564e1a1f3224","name":"Update row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"operation":"delete","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"eventId":"={{ $('Get row(s) in sheet').item.json.CalendarEventID }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[304,416],"id":"1226c838-78d0-44fb-8a63-8850cf303f57","name":"Delete an event","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"=Booking Cancellation Confirmed — {{ $('Set').item.json.eventDate }}","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nYour cancellation request has been processed.\\n\\nCancelled Booking Details: \\nEvent:    {{ $('Get row(s) in sheet').item.json.EventType }}\\nDate:     {{ $('Set').item.json.eventDate }}  \\n\\nPlease note that as per our policy, the initial deposit is non-refundable. \\n\\nWe hope to work with you again in the future. Feel free to book again anytime.  \\n\\nWarm regards, Host Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[512,656],"id":"ae9dd291-7503-4e1f-853f-1f1e7ca3f897","name":"Send a message","webhookId":"5c759f73-d6be-4fdd-8de7-77b52e8517b1","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"anjericocanasa@gmail.com","subject":"=Booking Cancelled — {{ $('Set').item.json.eventDate }}","emailType":"text","message":"=A booking has been cancelled.  \\n\\nClient:   {{ $('Set').item.json.clientName }} \\nEmail:    {{ $('Set').item.json.clientEmail }} \\nEvent:    {{ $('Get row(s) in sheet').item.json.EventType }}\\nDate:     {{ $('Set').item.json.eventDate }} \\nReason:   {{ $('Set').item.json.reason }} \\nSource:   {{ $('Set').item.json.source }} \\n\\nThe date is now available for new bookings. Google Calendar event has been deleted.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[736,656],"id":"06f158df-e30e-4e20-b46d-9e5533d22538","name":"Send a message1","webhookId":"bcca1c7d-5e2b-405a-9c15-1da2df813e87","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"=Booking Already Cancelled — {{ $('Set').item.json.eventDate }}","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},\\n\\nOur records show that your booking for {{ $('Set').item.json.eventDate }} has already been cancelled.\\n\\nIf you think this is a mistake please \\ncontact us directly.\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[96,-160],"id":"625c80e7-24f3-4102-80fc-27d6f634c739","name":"Send a message2","webhookId":"afaf944f-8755-495a-a19c-f2a74e6aeeb0","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Cancellation Request — Booking Not Found","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nWe could not find a confirmed booking matching:  \\n\\nEmail:  {{ $('Set').item.json.clientEmail }} \\nDate:   {{ $('Set').item.json.eventDate }}  \\n\\nPlease contact us directly so we can  assist you.  \\n\\nWarm regards, Host Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-272,272],"id":"e2ebf59a-8416-4f26-b22b-e2e5b040035c","name":"Send a message3","webhookId":"3d37d9c1-2006-4556-96d0-cdd9337b5f44","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"event":"rowUpdate","options":{"columnsToWatch":[]}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-1136,1072],"id":"30f89759-b954-456e-a36a-6ef8bd948bc6","name":"Google Sheets Trigger1","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"a58f0793-4bbf-4aba-bf94-ee4faed5d4c6","leftValue":"={{ $json['Status'] }}","rightValue":"Cancelled","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-928,1072],"id":"98b974fd-9773-469b-8318-b4e2d76ba2d1","name":"If2"},{"parameters":{"operation":"delete","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"eventId":"={{ $('Google Sheets Trigger1').item.json.CalendarEventID }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-416,1056],"id":"e09ab3df-e262-4db3-a8e8-fc07d3fe8efc","name":"Delete an event1","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"sendTo":"={{ $('Set2').item.json.clientEmail }}","subject":"=Booking Cancellation Confirmed — {{ $('Set2').item.json.eventDate }}","emailType":"text","message":"=Hi {{ $('Set2').item.json.clientName }},  \\n\\nYour cancellation request has been processed.\\n\\nCancelled Booking Details: \\nEvent:    {{ $('Google Sheets Trigger1').item.json.EventType }}\\nDate:     {{ $('Set2').item.json.eventDate }}  \\n\\nPlease note that as per our policy, the initial deposit is non-refundable. \\n\\nWe hope to work with you again in the future. Feel free to book again anytime.  \\n\\nWarm regards, Host Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[512,1056],"id":"2871dbba-311c-43de-8e06-3115908e9ec5","name":"Send a message4","webhookId":"5c759f73-d6be-4fdd-8de7-77b52e8517b1","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"anjericocanasa@gmail.com","subject":"=Booking Cancelled — {{ $('Set2').item.json.eventDate }}","emailType":"text","message":"=A booking has been cancelled.  \\n\\nClient:   {{ $('Set2').item.json.clientName }} \\nEmail:    {{ $('Set2').item.json.clientEmail }} \\nEvent:    {{ $('Set2').item.json.EventType }}\\nDate:     {{ $('Set2').item.json.eventDate }} \\nReason:   {{ $('Set2').item.json.reason }} \\nSource:   {{ $('Set2').item.json.source }} \\n\\nThe date is now available for new bookings. Google Calendar event has been deleted.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[736,1056],"id":"4f3e31d0-8c29-49e8-9eb8-bc493e345740","name":"Send a message5","webhookId":"bcca1c7d-5e2b-405a-9c15-1da2df813e87","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"assignments":{"assignments":[{"id":"0f303c90-744e-4b87-a52b-df78c341a097","name":"clientName","value":"={{ $('Google Sheets Trigger1').item.json.ClientName }}","type":"string"},{"id":"d4b6d281-4177-418d-a8f6-935d68ec31f0","name":"clientEmail","value":"={{ $('Google Sheets Trigger1').item.json.Email }}","type":"string"},{"id":"cf0b09e7-30ab-4332-8a75-265dabc25047","name":"=eventDate","value":"={{ $('Google Sheets Trigger1').item.json.EventDate }}","type":"string"},{"id":"badf2ad5-9363-4c68-a9bb-ad18ac1c7faf","name":"eventType","value":"={{ $('Google Sheets Trigger1').item.json.EventType }}","type":"string"},{"id":"560c0042-b762-47eb-91f8-208f8c86027d","name":"calendarEventID","value":"={{ $('Google Sheets Trigger1').item.json.CalendarEventID }}","type":"string"},{"id":"31ed57ad-f8fc-4f85-81aa-e781c5534a11","name":"reason","value":"Cancelled by host","type":"string"},{"id":"0582c9cd-490c-4f5b-bc1f-ccd04c07cb26","name":"source","value":"Host","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-656,1056],"id":"6bb9d17c-bc6e-4c72-bdcf-d7a9381da38d","name":"Set2"},{"parameters":{"content":"📋 CANCELLATION — CLIENT REQUEST\\n\\nTrigger: Client submits Cancellation Request form\\n\\nFlow:\\n1. Find client's existing confirmed booking\\n   (matched by Email + Event Date)\\n2. Check if booking is already cancelled\\n3. If not yet cancelled:\\n   - Update Status to \\"Cancelled\\"\\n   - Save cancellation reason to Notes\\n   - Delete Google Calendar event\\n   - Email client confirmation \\n     (deposit is non-refundable)\\n   - Email host alert\\n   - Date becomes available for new bookings\\n4. If already cancelled:\\n   - Email client \\"already cancelled\\" notice\\n\\nEdge cases handled:\\n- Booking not found → notify client to contact host directly\\n\\nPolicy: Initial deposit is non-refundable \\non cancellation.","height":704,"width":640},"type":"n8n-nodes-base.stickyNote","position":[1104,-128],"typeVersion":1,"id":"317b900d-bb5f-4027-a086-946ec09007d5","name":"Sticky Note"},{"parameters":{"content":"📋 CANCELLATION — HOST MANUAL OVERRIDE\\n\\nTrigger: Host manually edits Status column \\nin Confirmed Bookings sheet to \\"Cancelled\\"\\n\\nHow to use:\\n1. Host changes \\"Status\\" to \\"Cancelled\\"\\n2. Automation runs automatically\\n\\nFlow:\\n1. Detect row update\\n2. Check if Status = \\"Cancelled\\"\\n3. If yes:\\n   - Delete Google Calendar event\\n     (using saved Calendar Event ID)\\n   - Email client cancellation confirmation\\n   - Email host summary\\n   - Date becomes available for new bookings\\n\\nIf Status ≠ \\"Cancelled\\":\\n   - Workflow stops (prevents unwanted \\n     triggers from unrelated sheet edits)\\n\\nUse case: For clients who request cancellation \\nvia Messenger/call instead of the form — host \\nhandles it directly in the sheet.","height":752,"width":640,"color":"#075964"},"type":"n8n-nodes-base.stickyNote","position":[1104,816],"typeVersion":1,"id":"35095443-ddc9-4093-bb3d-db4d3e5bd710","name":"Sticky Note1"}]	{"Google Sheets Trigger":{"main":[[{"node":"Set","type":"main","index":0}]]},"Set":{"main":[[{"node":"Get row(s) in sheet","type":"main","index":0}]]},"Get row(s) in sheet":{"main":[[{"node":"If","type":"main","index":0}]]},"If":{"main":[[{"node":"If1","type":"main","index":0}],[{"node":"Send a message3","type":"main","index":0}]]},"If1":{"main":[[{"node":"Send a message2","type":"main","index":0}],[{"node":"Update row in sheet","type":"main","index":0}]]},"Update row in sheet":{"main":[[{"node":"Delete an event","type":"main","index":0}]]},"Delete an event":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Send a message":{"main":[[{"node":"Send a message1","type":"main","index":0}]]},"Google Sheets Trigger1":{"main":[[{"node":"If2","type":"main","index":0}]]},"If2":{"main":[[{"node":"Set2","type":"main","index":0}]]},"Delete an event1":{"main":[[{"node":"Send a message4","type":"main","index":0}]]},"Send a message4":{"main":[[{"node":"Send a message5","type":"main","index":0}]]},"Set2":{"main":[[{"node":"Delete an event1","type":"main","index":0}]]}}	Version 81f3c009	t		[]
87dd865b-9e08-4ac5-b022-628430083f46	zGzdtmcuZicig0MZ	Anjerico Canasa	2026-07-02 09:16:45.682+00	2026-07-02 09:16:45.682+00	[{"parameters":{"rule":{"interval":[{"triggerAtHour":7}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-160,-96],"id":"02606c7a-2712-4ca0-95c9-d0ee780d43db","name":"Schedule Trigger"},{"parameters":{"promptType":"define","text":"'''\\nYou are an Inspirational Quote Generator agent. Your daily task is to generate exactly one unique 5-word inspirational quote and save it to the attached spreadsheet.\\n\\nRules and Process (follow strictly in this order every time):\\n\\n1. Access the Spreadsheet: Open the attached spreadsheet and read all existing quotes in the \\"Quote\\" column (or the main quotes column).\\n\\n2. Generate a Quote: Create a fresh, original 5-word inspirational quote. It must be exactly 5 words, positive, motivational, and powerful. Do not use more or fewer words.\\n\\n3. Uniqueness Check:\\n   - Check if the exact quote already exists in the spreadsheet.\\n   - Also check for similar quotes (quotes that share 3 or more words, or convey a very similar message).\\n   - If the quote is identical or too similar to any existing one, discard it and generate a completely new 5-word quote. Repeat this step until you have a truly unique quote.\\n\\n4. Save the Quote:\\n   - Once you have a unique 5-word quote, append it as a new row in the spreadsheet.\\n   - Include today's date in a \\"Date\\" column if it exists, or just add the quote.\\n\\n5. Final Output:\\n   - After saving, reply to the user with:\\n     - The quote in bold\\n     - Confirmation that it was saved successfully\\n     - The total number of quotes now in the spreadsheet (if possible)\\n\\nImportant Guidelines:\\n- Always prioritize originality.\\n- Quotes should feel fresh and not sound like common clichés when possible.\\n- Never output a quote before confirming it is unique.\\n- Never skip the spreadsheet check.\\n\\nStart now and generate today's unique 5-word inspirational quote.\\n'''","options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[48,-96],"id":"9637cd79-318c-46a5-9892-2f1173a95fff","name":"Generate Quote"},{"parameters":{"modelName":"models/gemini-3.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1.1,"position":[-96,112],"id":"3315b301-bcbb-4892-b304-af31e5f62001","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"npiGI4lVZvjYWKUo","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[192,112],"id":"fe702473-0753-459c-94db-19caa22ecd0f","name":"Get row(s) in sheet in Google Sheets","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Quote":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Quote', ``, 'string') }}","Date Posted":"={{ $json['Readable date'] }}"},"matchingColumns":[],"schema":[{"id":"Quote","displayName":"Quote","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Date Posted","displayName":"Date Posted","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[400,112],"id":"6bb41811-178b-4d16-90be-9d3e2f9f9b0c","name":"Append row in sheet in Google Sheets","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"cityName":"manila,ph"},"type":"n8n-nodes-base.openWeatherMap","typeVersion":1,"position":[400,-96],"id":"6a407a9a-fc2e-477f-a256-52b0001e40fd","name":"OpenWeatherMap","credentials":{"openWeatherMapApi":{"id":"a9sV3Oh10cbHaTAN","name":"OpenWeatherMap account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Generate Quote","type":"main","index":0}]]},"Generate Quote":{"main":[[{"node":"OpenWeatherMap","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Quote","type":"ai_languageModel","index":0}]]},"Get row(s) in sheet in Google Sheets":{"ai_tool":[[{"node":"Generate Quote","type":"ai_tool","index":0}]]},"Append row in sheet in Google Sheets":{"ai_tool":[[{"node":"Generate Quote","type":"ai_tool","index":0}]]}}	\N	f	\N	[]
33c70a72-6e31-44d0-8150-e2cc856cde2d	hblPfsvtXd3oEUIX	Anjerico Canasa	2026-07-02 10:10:47.046+00	2026-07-02 10:10:47.046+00	[{"parameters":{"rule":{"interval":[{"triggerAtHour":7}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[-1120,64],"id":"b1ec821d-6329-42e0-beae-04c74bf0d861","name":"Schedule Trigger"},{"parameters":{"promptType":"define","text":"You are an Inspirational Quote Generator. Generate one unique 5-word inspirational quote daily and save it to the attached spreadsheet.\\n\\nFollow these steps strictly:\\n\\n1. Open the spreadsheet and read all existing quotes.\\n2. Generate a fresh, original 5-word motivational quote.\\n3. Check for uniqueness: If the exact quote or a very similar one (3+ shared words or same message) exists, generate a new one. Repeat until unique.\\n4. Append the unique quote as a new row (add today's date if there's a Date column).\\n5. Reply with the quote in bold + confirmation it was saved.\\n\\nRules:\\n- Always ensure the quote is unique before saving/outputting.\\n- Prioritize originality, keep it positive and powerful.\\n- Never skip the spreadsheet check.","options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[-912,64],"id":"ec65cecc-0d14-4edc-ae7e-5098a27f50c9","name":"Generate Quote"},{"parameters":{"modelName":"models/gemini-2.0-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1.1,"position":[-544,-208],"id":"a29f9204-6faa-469b-b7db-30a83ef5f307","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"npiGI4lVZvjYWKUo","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"cityName":"manila,ph"},"type":"n8n-nodes-base.openWeatherMap","typeVersion":1,"position":[-560,80],"id":"af90a19b-b8bd-4b01-bca9-83a913d7e633","name":"OpenWeatherMap","credentials":{"openWeatherMapApi":{"id":"a9sV3Oh10cbHaTAN","name":"OpenWeatherMap account"}}},{"parameters":{"promptType":"define","text":"='''\\nYou are a Weather Forecast Content Generator agent for Facebook posts. Your daily task is to create engaging weather content including a 5-word inspirational quote, a relevant image, and a clear explanation.\\n\\nRules and Process (follow strictly in this order):\\n\\n1. Access the Spreadsheet: Open the attached spreadsheet and review all existing rows for previously used image URLs and quotes.\\n\\n2. Get Image URL:\\n   - Use the connected tool to retrieve a relevant image URL for today's weather (focus on {{ $json.weather[0].description }} theme).\\n   - Check if this image URL already exists in the spreadsheet.\\n   - If the URL is already saved (exact match), request a new image URL from the tool. Repeat until you have a unique image URL.\\n\\n3. Generate 17-Word Explanation:\\n   - Write exactly 17 words explaining the meaning of {{ $json.weather[0].description }} in a simple, engaging way suitable for a Facebook weather post.\\n\\n4. Save to Spreadsheet:\\n   - Append a new row with:\\n     - Date (today's date)\\n     - Image URL\\n     - 17-word Explanation\\n   - Ensure all items are unique before saving.\\n\\n6. Final Output for Facebook Post:\\n   After saving, provide the complete ready-to-post content in this format:\\n\\n   Overcast clouds blanket the sky creating a soft diffused light that brings      peaceful    mood and gentle rain possibilities.\\n\\n   Image: https://example.com/overcast-weather-image-unique.jpg\\n\\n   Return the unique image URL and the 17-word explanation in JSON format.\\n\\n   Confirmation: Content saved to spreadsheet successfully.\\n\\nImportant Guidelines:\\n- All generated content must be original and unique.\\n- Never use previously saved image URLs or quotes.\\n- Keep the 17-word explanation exactly 17 words.\\n- Make everything positive, engaging, and suitable for Facebook audience.\\n- Always complete the spreadsheet check and save before outputting the post.\\n\\nExample Output: \\n\\n{\\n\\"imageUrl\\":\\"https://example.com/overcast-weather-image-unique.jpg\\"\\n\\"weatherForecast\\":\\"Overcast clouds blanket the sky creating a soft diffused light that brings peaceful mood and gentle rain possibilities.\\" \\n}\\n\\nStart now and generate today's complete weather forecast content for {{ $json.weather[0].description }}.\\n''' ","hasOutputParser":true,"options":{}},"type":"@n8n/n8n-nodes-langchain.agent","typeVersion":3.1,"position":[-352,64],"id":"fffe1bbd-6537-4de1-9dc6-2b9fa7ed3d3e","name":"AI Agent"},{"parameters":{"documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-816,384],"id":"aebeea0e-f63f-4940-95bb-2ea4776eaaa4","name":"Check if quote is already used","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Quote":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Quote', ``, 'string') }}","Date Posted":"={{ $json['Readable date'] }}"},"matchingColumns":[],"schema":[{"id":"Quote","displayName":"Quote","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Date Posted","displayName":"Date Posted","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-672,384],"id":"6ec65565-adfb-4055-90ea-59ed994b0d05","name":"save quote","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-416,464],"id":"646dd433-57a4-400d-bf1d-4faf58725d51","name":"check if image url is already used","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"operation":"append","documentId":{"__rl":true,"value":"1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg","mode":"list","cachedResultName":"AI Social Media Content Creator","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":"gid=0","mode":"list","cachedResultName":"Main Sheet","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1QaU_ff1sCxY4AIijIYB3rSQhHqEPqrTCiZmHnjEU8Bg/edit#gid=0"},"columns":{"mappingMode":"defineBelow","value":{"Quote":"={{ /*n8n-auto-generated-fromAI-override*/ $fromAI('Quote', ``, 'string') }}","Date Posted":"={{ $json['Readable date'] }}"},"matchingColumns":[],"schema":[{"id":"Quote","displayName":"Quote","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Date Posted","displayName":"Date Posted","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheetsTool","typeVersion":4.7,"position":[-272,464],"id":"8228ecd6-7a0f-4b77-9b59-07041c965f32","name":"save image url","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"jsonSchemaExample":"{\\n\\"imageUrl\\":\\"https://example.com/overcast-weather-image-unique.jpg\\",\\n\\"weatherForecast\\":\\"Overcast clouds blanket the sky creating a soft diffused light that brings peaceful mood and gentle rain possibilities.\\" \\n}"},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[48,464],"id":"28dbc3dd-496f-4d1f-b227-26d801df07db","name":"Structured Output Parser"}]	{"Schedule Trigger":{"main":[[{"node":"Generate Quote","type":"main","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Quote","type":"ai_languageModel","index":0},{"node":"AI Agent","type":"ai_languageModel","index":0}]]},"Generate Quote":{"main":[[{"node":"OpenWeatherMap","type":"main","index":0}]]},"OpenWeatherMap":{"main":[[{"node":"AI Agent","type":"main","index":0}]]},"Check if quote is already used":{"ai_tool":[[{"node":"Generate Quote","type":"ai_tool","index":0}]]},"save quote":{"ai_tool":[[{"node":"Generate Quote","type":"ai_tool","index":0}]]},"check if image url is already used":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"save image url":{"ai_tool":[[{"node":"AI Agent","type":"ai_tool","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"AI Agent","type":"ai_outputParser","index":0}]]}}	\N	t	\N	[]
2a9a283f-dd31-4dca-a53c-105e356df6ad	wPLp2slfjHoiQwGF	Anjerico Canasa	2026-06-24 21:05:54.57+00	2026-06-24 21:06:12.712+00	[{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1635792048,"mode":"list","cachedResultName":"Reschedule Request","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=1635792048"},"event":"rowAdded","options":{}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-4560,-176],"id":"706021c8-e9fc-48b5-9f63-78bf522ed38a","name":"Google Sheets Trigger","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"filtersUI":{"values":[{"lookupColumn":"Email","lookupValue":"={{ $json.clientEmail }}"},{"lookupColumn":"EventDate","lookupValue":"={{ $json.currentDate }}"}]},"options":{"returnFirstMatch":true}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-3936,-80],"id":"5dba1f30-6e27-4000-9d9e-f9b7dfa646b2","name":"Get row(s) in sheet","alwaysOutputData":true,"credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"92a52204-38eb-42b6-963f-b8d5c1246e35","leftValue":"={{ Object.keys($json).length }}","rightValue":0,"operator":{"type":"number","operation":"gt"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-3744,288],"id":"2ddd8eaa-4ea4-4197-b892-42c278fc480e","name":"If"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"525fc000-b798-4eb0-ae9c-b0274c26a339","leftValue":"={{ $json['Status'] }}","rightValue":"confirmed","operator":{"type":"string","operation":"equals","name":"filter.operator.equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-3536,128],"id":"aafa10e6-b2c2-4d97-986a-d00b01cca07d","name":"If1"},{"parameters":{"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"filtersUI":{"values":[{"lookupColumn":"EventDate","lookupValue":"={{ $('Set').item.json.newDate }}"}]},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-3328,32],"id":"578490cf-5da1-4e4f-8acd-e38970ff7943","name":"Get row(s) in sheet1","alwaysOutputData":true,"credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"jsCode":"const existingBookings = $input.all().filter(\\n  item => Object.keys(item.json).length > 0 &&\\n  item.json['Status'] !== 'Cancelled'\\n);\\n\\nconst newTimeSlot = $('Set').item.json.newSlot;\\nconst newEventType = $('Get row(s) in sheet').item.json['EventType'];\\n\\n// Skip the client's OWN current booking\\nconst filteredBookings = existingBookings.filter(\\n  item => item.json['Email'] !== $('Set').item.json.clientEmail\\n);\\n\\nif (filteredBookings.length === 0) {\\n  if (newEventType.includes('Baptism') &&\\n      !newTimeSlot.includes('Morning')) {\\n    return [{ json: {\\n      allowed: false,\\n      reason: 'Baptism events can only be in the morning slot.'\\n    }}];\\n  }\\n  return [{ json: {\\n    allowed: true,\\n    reason: 'New date is free.'\\n  }}];\\n}\\n\\nfor (const booking of filteredBookings) {\\n  const existingSlot = booking.json['TimeSlot'];\\n  const existingType = booking.json['EventType'];\\n\\n  if (existingSlot === newTimeSlot) {\\n    return [{ json: {\\n      allowed: false,\\n      reason: `The ${newTimeSlot} slot on this date is already taken.`\\n    }}];\\n  }\\n\\n  if (newEventType.includes('Baptism') &&\\n      !newTimeSlot.includes('Morning')) {\\n    return [{ json: {\\n      allowed: false,\\n      reason: 'Baptism events can only be in the morning slot.'\\n    }}];\\n  }\\n\\n  if (existingSlot.includes('Morning') &&\\n      !existingType.includes('Baptism')) {\\n    return [{ json: {\\n      allowed: false,\\n      reason: 'The host is fully booked on this date.'\\n    }}];\\n  }\\n\\n  if (existingSlot.includes('Morning') &&\\n      existingType.includes('Baptism')) {\\n    if (newEventType.includes('Baptism')) {\\n      return [{ json: {\\n        allowed: false,\\n        reason: 'Only one Baptism per day allowed.'\\n      }}];\\n    }\\n    if (!newTimeSlot.includes('Morning')) {\\n      return [{ json: {\\n        allowed: true,\\n        reason: 'Afternoon slot available after morning Baptism.'\\n      }}];\\n    }\\n  }\\n}\\n\\nreturn [{ json: {\\n  allowed: true,\\n  reason: 'New date is available.'\\n}}];"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[-3120,32],"id":"5994074b-a200-4c9d-96f4-996db8b1d3bd","name":"Code in JavaScript"},{"parameters":{"assignments":{"assignments":[{"id":"046ed5da-4cf0-4a9c-9553-8782db1add49","name":"clientName","value":"={{ $json['Full Name'] }}","type":"string"},{"id":"f437633c-b0be-4cb5-b360-1e2fcb02d1c3","name":"clientEmail","value":"={{ $json['Email Address'] }}","type":"string"},{"id":"90a2193d-2865-4fa7-bbf6-fb29ce90e5a2","name":"currentDate","value":"={{ $json['Current Event Date'] }}","type":"string"},{"id":"0fca9acd-6a15-4eea-a0de-b2483ac409ab","name":"newDate","value":"={{ $json['New Requested Date'] }}","type":"string"},{"id":"76239124-3ceb-4f09-93ce-de009eb8088b","name":"newTime","value":"={{ $json['New Preferred Time'].split('—')[1].trim() }}","type":"string"},{"id":"b31902c1-511e-4515-afd5-53bd70f33f6a","name":"newSlot","value":"={{ $json['New Preferred Time'].split('—')[0].trim() }}","type":"string"},{"id":"2409083e-20f6-4ddb-9b3c-02319e031795","name":"reason","value":"={{ $json.Reason }}","type":"string"},{"id":"008d64ce-80e1-4aad-a748-7aac65fa22c3","name":"source","value":"Client","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-4384,-176],"id":"f0400b93-74a4-4366-b0c8-b0a5e14be06f","name":"Set"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"883a8816-7475-4897-b136-a55a73660cfc","leftValue":"={{ $json.allowed }}","rightValue":true,"operator":{"type":"boolean","operation":"equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-2912,32],"id":"1d9cda36-b9c9-43a5-9bd8-62daf444613c","name":"If2"},{"parameters":{"operation":"delete","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"eventId":"={{ $('Get row(s) in sheet').item.json['CalendarEventID'] }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-2688,-80],"id":"eb53dbd6-9256-46e3-8d56-b64a79ef5465","name":"Delete an event","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"start":"={{ DateTime.fromFormat($('Set').item.json.newDate + ' ' + $('Set').item.json.newTime, 'M/d/yyyy h:mma', {zone: 'Asia/Manila'}).toISO() }}","end":"={{ DateTime.fromFormat($('Set').item.json.newDate + ' ' + $('Set').item.json.newTime, 'M/d/yyyy h:mma', {zone: 'Asia/Manila'}).plus({hours: 4}).toISO() }}","additionalFields":{"attendees":["={{ $('Set').item.json.clientEmail }}"],"description":"=Rescheduled from {{ $('Set').item.json.currentDate }}               \\nClient: {{ $('Set').item.json.clientName }}               \\nPhone: {{ $('Get row(s) in sheet').item.json['Phone'] }}","summary":"={{ $('Set').item.json.eventType }} — {{ $('Set').item.json.clientName }} (Rescheduled)"}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-2480,-80],"id":"88923478-41ef-4a5c-997c-bae0f2434bd9","name":"Create an event","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"operation":"update","documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"columns":{"mappingMode":"defineBelow","value":{"row_number":"={{ $('Get row(s) in sheet').item.json.row_number }}","EventDate":"={{ $('Set').item.json.newDate }}","EventTime":"={{ $('Set').item.json.newTime }}","TimeSlot":"={{ $('Set').item.json.newSlot }}","CalendarEventID":"={{ $json.id }}","Status":"confirmed","Reschedule Count":"={{ Number($('Get row(s) in sheet').item.json['Reschedule Count']) + 1 }}","Notes":"=Rescheduled from {{ $('Set').item.json.currentDate }}."},"matchingColumns":["row_number"],"schema":[{"id":"Timestamp","displayName":"Timestamp","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"ClientName","displayName":"ClientName","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Phone","displayName":"Phone","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventType","displayName":"EventType","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventDate","displayName":"EventDate","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTime","displayName":"EventTime","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"TimeSlot","displayName":"TimeSlot","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Package","displayName":"Package","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositAmount ","displayName":"DepositAmount ","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositStatus","displayName":"DepositStatus","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventPlace","displayName":"EventPlace","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTheme","displayName":"EventTheme","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventMotif","displayName":"EventMotif","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"GuestCount","displayName":"GuestCount","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Source","displayName":"Source","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Notes","displayName":"Notes","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"CalendarEventID","displayName":"CalendarEventID","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Reschedule Count","displayName":"Reschedule Count","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Original Date","displayName":"Original Date","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"row_number","displayName":"row_number","required":false,"defaultMatch":false,"display":true,"type":"number","canBeUsedToMatch":true,"readOnly":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-2272,-80],"id":"089a66da-f7c0-420d-863b-1ca346238716","name":"Update row in sheet","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"=Booking Rescheduled — New Date {{ $('Set').item.json.newDate }}","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }}, \\n\\nYour booking has been successfully rescheduled!  \\n\\nUpdated Booking Details: \\n\\nEvent: {{ $('Get row(s) in sheet').item.json['EventType'] }} \\nNew Date:     {{ $('Set').item.json.newDate }} \\nNew Time:     {{ $('Set').item.json.newTime }} \\nVenue:        {{ $('Get row(s) in sheet').item.json['EventPlace'] }} \\nPackage:      {{ $('Get row(s) in sheet').item.json['Package'] }}  \\nPrevious Date: {{ $('Set').item.json.currentDate }}  \\n\\nGood news — your deposit carries over to the new date. No additional deposit required.  \\n\\nA new Google Calendar invite has been sent to your email. Please accept it to update your calendar.  \\n\\nIf you have any questions please contact us directly.  \\n\\nWarm regards, Host Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-2064,-80],"id":"3289898b-ddfb-40a7-935f-3cd978d23c86","name":"Send a message","webhookId":"29c4a611-78f2-4d74-ad93-5787eaf65ae0","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"anjericocanasa@gmail.com","subject":"=Booking Rescheduled — {{ $('Get row(s) in sheet').item.json['EventType'] }} — {{ $('Set').item.json.newDate }}","emailType":"text","message":"=A booking has been rescheduled.  \\n\\nClient: {{ $('Set').item.json.clientName }} \\nEmail:         {{ $('Set').item.json.clientEmail }} \\nEvent:         {{ $('Get row(s) in sheet').item.json['EventType'] }} \\nPrevious Date: {{ $('Set').item.json.currentDate }} \\nNew Date:      {{ $('Set').item.json.newDate }} \\nNew Time:      {{ $('Set').item.json.newTime }} \\nReason:        {{ $('Set').item.json.reason }} \\nSource:        {{ $('Set').item.json.source }}  \\nReschedule Count: {{ Number($('Get row(s) in sheet').item.json['Reschedule Count']) + 1 }}  \\n\\nOld calendar event deleted. New calendar event created.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-1856,-80],"id":"10c0d22a-0d64-4f85-a341-6d4df6d7a04c","name":"Send a message1","webhookId":"11560f9c-d25e-4baf-b863-55f899f517fc","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Reschedule Request — Date Not Available","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nUnfortunately your requested date {{ $('Set').item.json.newDate }} is not available.  \\n\\nPlease submit a new reschedule request with  a different date and we will check availability.\\n\\nWarm regards, Host Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-2688,144],"id":"8671c12a-a03d-405a-ac7b-102ca7a8f2be","name":"Send a message2","webhookId":"eedd766a-748a-4121-a6de-a54ea3b7b928","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"event":"rowUpdate","options":{"columnsToWatch":[]}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-4560,752],"id":"bcc9f292-dc28-4894-9e6a-4c96f2724c70","name":"Google Sheets Trigger1","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"92a52204-38eb-42b6-963f-b8d5c1246e35","leftValue":"={{ $json.Status }}","rightValue":"Reschedule","operator":{"type":"string","operation":"equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-4128,752],"id":"2f4f8fb4-1043-4061-aff5-74c914ccc578","name":"If3"},{"parameters":{"assignments":{"assignments":[{"id":"046ed5da-4cf0-4a9c-9553-8782db1add49","name":"clientName","value":"={{ $('Google Sheets Trigger1').item.json.ClientName }}","type":"string"},{"id":"f437633c-b0be-4cb5-b360-1e2fcb02d1c3","name":"clientEmail","value":"={{ $('Google Sheets Trigger1').item.json.Email }}","type":"string"},{"id":"0fca9acd-6a15-4eea-a0de-b2483ac409ab","name":"newDate","value":"={{ $('Code in JavaScript1').item.json.EventDate }}","type":"string"},{"id":"76239124-3ceb-4f09-93ce-de009eb8088b","name":"newTime","value":"={{ $('Code in JavaScript1').item.json.EventTime }}","type":"string"},{"id":"b31902c1-511e-4515-afd5-53bd70f33f6a","name":"newSlot","value":"={{ $('Code in JavaScript1').item.json.TimeSlot }}","type":"string"},{"id":"2409083e-20f6-4ddb-9b3c-02319e031795","name":"reason","value":"={{ $('Code in JavaScript1').item.json.Notes }}","type":"string"},{"id":"008d64ce-80e1-4aad-a748-7aac65fa22c3","name":"source","value":"Client","type":"string"},{"id":"2422d653-ff9c-48bb-ae9d-01974615f004","name":"oldCalendarEventID","value":"={{ $('Code in JavaScript1').item.json.CalendarEventID }}","type":"string"},{"id":"e4c5728b-56eb-4eec-bd65-139920e90942","name":"eventType","value":"={{ $('Code in JavaScript1').item.json.EventType }}","type":"string"},{"id":"f3449a66-5b14-4019-8ea8-1ee023444288","name":"eventPlace","value":"={{ $('Code in JavaScript1').item.json.EventPlace }}","type":"string"},{"id":"acf55578-4789-4de5-8ffa-71b4d370d953","name":"package","value":"={{ $('Code in JavaScript1').item.json.Package }}","type":"string"},{"id":"ea5a09f0-68eb-4bcb-8141-826a30f83b74","name":"originalDate","value":"={{ $('Code in JavaScript1').item.json['Original Date'] }}","type":"string"},{"id":"f4b35c0a-f4c5-4a3c-a51a-fe43900ab19f","name":"rescheduleCount","value":"={{ $('Code in JavaScript1').item.json['Reschedule Count'] }}","type":"string"},{"id":"dcead9cf-b5e5-4355-9680-7ca7508c0fed","name":"row_number","value":"={{ $('Code in JavaScript1').item.json.row_number }}","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-3920,752],"id":"5b5b5016-3fbe-48a7-abc0-27ea0677c11f","name":"Set1"},{"parameters":{"operation":"delete","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"eventId":"={{ $json.oldCalendarEventID }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-3712,752],"id":"17accebe-9e70-4e09-aa6d-f9d19de8aae4","name":"Delete an event1","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"start":"={{ DateTime.fromFormat($('Set1').item.json.newDate + ' ' + $('Set1').item.json.newTime, 'M/d/yyyy h:mm a', {zone: 'Asia/Manila'}).toISO() }}","end":"={{ DateTime.fromFormat($('Set1').item.json.newDate + ' ' + $('Set1').item.json.newTime, 'M/d/yyyy h:mm a', {zone: 'Asia/Manila'}).plus({hours: 4}).toISO() }}","additionalFields":{"attendees":["={{ $('Set1').item.json.clientEmail }}"],"description":"=Rescheduled by host from {{ $('Set1').item.json.originalDate }}\\nClient: {{ $('Set1').item.json.clientName }}\\nEmail:  {{ $('Set1').item.json.clientEmail }}\\nEvent:  {{ $('Set1').item.json.eventType }}\\nPackage: {{ $('Set1').item.json.package }}","location":"={{ $('Set1').item.json.eventPlace }}","summary":"={{ $('Set1').item.json.eventType }} — {{ $('Set1').item.json.clientName }} (Rescheduled)"}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-3504,752],"id":"0f5095eb-17b0-4ae0-8c18-f1a07fd8a0ce","name":"Create an event1","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"sendTo":"={{ $('Set1').item.json.clientEmail }}","subject":"=our Event Has Been Rescheduled — New Date {{ $('Set1').item.json.newDate }}","emailType":"text","message":"=Hi {{ $('Set1').item.json.clientName }}, \\n\\nYour booking has been successfully rescheduled!  \\n\\nUpdated Booking Details: \\n\\nEvent: {{ $('Set1').item.json['eventType'] }} \\nNew Date:     {{ $('Set1').item.json.newDate }} \\nNew Time:     {{ $('Set1').item.json.newTime }} \\nVenue:        {{ $('Set1').item.json['eventPlace'] }} \\nPackage:      {{ $('Set1').item.json['package'] }}  \\nPrevious Date: {{ $('Set1').item.json.originalDate }}  \\n\\nGood news — your deposit carries over to the new date. No additional deposit required.  \\n\\nA new Google Calendar invite has been sent to your email. Please accept it to update your calendar.  \\n\\nIf you have any questions please contact us directly.  \\n\\nWarm regards, \\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-3056,752],"id":"aefd4750-2178-438d-bcce-6f5028fbbe07","name":"Send a message3","webhookId":"29c4a611-78f2-4d74-ad93-5787eaf65ae0","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"anjericocanasa@gmail.com","subject":"=Booking Rescheduled — {{ $('Set1').item.json['eventType'] }} — {{ $('Set1').item.json.newDate }}","emailType":"text","message":"=A booking has been rescheduled.  \\n\\nClient:        {{ $('Set1').item.json.clientName }} \\nEmail:         {{ $('Set1').item.json.clientEmail }} \\nEvent:         {{ $('Set1').item.json['eventType'] }} \\nPrevious Date: {{ $('Set1').item.json.originalDate }} \\nNew Date:      {{ $('Set1').item.json.newDate }} \\nNew Time:      {{ $('Set1').item.json.newTime }} \\nReason:        {{ $('Set1').item.json.reason }} \\nSource:        {{ $('Set1').item.json.source }}  \\nReschedule Count: {{ Number($('Set1').item.json['Reschedule Count']) + 1 }}  \\n\\nOld calendar event deleted. New calendar event created.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-2832,752],"id":"2f9fdb44-ef32-41cd-9b03-93ebc2d4782c","name":"Send a message4","webhookId":"11560f9c-d25e-4baf-b863-55f899f517fc","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"jsCode":"// Helper: convert Google Sheets serial number to JS Date\\nfunction serialToDate(serial) {\\n  const utcDays = Math.floor(serial - 25569);\\n  const utcValue = utcDays * 86400;\\n  const dateInfo = new Date(utcValue * 1000);\\n\\n  const fractionalDay = serial - Math.floor(serial) + 0.0000001;\\n  let totalSeconds = Math.floor(86400 * fractionalDay);\\n  const seconds = totalSeconds % 60;\\n  totalSeconds -= seconds;\\n  const hours = Math.floor(totalSeconds / 3600);\\n  const minutes = Math.floor(totalSeconds / 60) % 60;\\n\\n  return new Date(dateInfo.getFullYear(), dateInfo.getMonth(), dateInfo.getDate(), hours, minutes, seconds);\\n}\\n\\nfunction formatDate(d) {\\n  return `${d.getMonth() + 1}/${d.getDate()}/${d.getFullYear()}`; // 6/18/2026\\n}\\n\\nfunction formatTime(d) {\\n  let hours = d.getHours();\\n  const minutes = d.getMinutes();\\n  const ampm = hours >= 12 ? 'PM' : 'AM';\\n  hours = hours % 12 || 12;\\n  const minutesStr = minutes < 10 ? '0' + minutes : minutes;\\n  return `${hours}:${minutesStr} ${ampm}`; // 8:00 AM\\n}\\n\\nconst eventDateSerial = $json['EventDate'];\\nconst eventTimeSerial = $json['EventTime'];\\nconst originalDateSerial = $json['Original Date'];\\n\\nreturn {\\n  ...$json,\\n  EventDate: formatDate(serialToDate(eventDateSerial)),\\n  EventTime: formatTime(serialToDate(eventTimeSerial)),\\n  'Original Date': formatDate(serialToDate(originalDateSerial))\\n};"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[-4336,752],"id":"72ff4bc0-9a14-4bd8-a78e-73774f084fd0","name":"Code in JavaScript1"},{"parameters":{"operation":"update","documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":905873055,"mode":"list","cachedResultName":"Confirmed Bookings","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=905873055"},"columns":{"mappingMode":"defineBelow","value":{"row_number":"={{ $('Set1').item.json.row_number }}","EventDate":"={{ $('Set1').item.json.newDate }}","EventTime":"={{ $('Set1').item.json.newTime }}","TimeSlot":"={{ $('Set1').item.json.newSlot }}","CalendarEventID":"={{ $json.id }}","Status":"confirmed","Reschedule Count":"={{ Number($('Set1').item.json['Reschedule Count']) + 1 }}","Notes":"=Rescheduled from {{ $('Set1').item.json.originalDate }}."},"matchingColumns":["row_number"],"schema":[{"id":"Timestamp","displayName":"Timestamp","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"ClientName","displayName":"ClientName","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Email","displayName":"Email","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Phone","displayName":"Phone","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventType","displayName":"EventType","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventDate","displayName":"EventDate","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTime","displayName":"EventTime","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"TimeSlot","displayName":"TimeSlot","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Package","displayName":"Package","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositAmount ","displayName":"DepositAmount ","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"DepositStatus","displayName":"DepositStatus","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventPlace","displayName":"EventPlace","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventTheme","displayName":"EventTheme","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"EventMotif","displayName":"EventMotif","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"GuestCount","displayName":"GuestCount","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Source","displayName":"Source","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Notes","displayName":"Notes","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"CalendarEventID","displayName":"CalendarEventID","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Reschedule Count","displayName":"Reschedule Count","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"Original Date","displayName":"Original Date","required":false,"defaultMatch":false,"display":true,"type":"string","canBeUsedToMatch":true},{"id":"row_number","displayName":"row_number","required":false,"defaultMatch":false,"display":true,"type":"number","canBeUsedToMatch":true,"readOnly":true,"removed":false}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.googleSheets","typeVersion":4.7,"position":[-3280,752],"id":"1f92992c-dc61-41e9-97d3-fb6fbc8c13a6","name":"Update row in sheet1","credentials":{"googleSheetsOAuth2Api":{"id":"VDn2yHU2F0hroPrO","name":"Google Sheets account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Reschedule Request — Booking Not Found","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nWe could not find a confirmed booking matching:\\nEmail: {{ $('Set').item.json.clientEmail }}\\nDate:  {{ $('Set').item.json.currentDate }}\\n\\nPlease contact us directly so we can assist you.\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-3520,464],"id":"70fddcd4-a6da-4c68-95f4-a1300ad4a780","name":"Send a message6","webhookId":"eedd766a-748a-4121-a6de-a54ea3b7b928","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Reschedule Request — Unable to Process","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},\\n\\nWe're unable to process your reschedule request \\nbecause your booking for {{ $('Set').item.json.currentDate }} \\nis either already cancelled or has a different status.\\n\\nPlease contact us directly so we can assist you.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-3328,224],"id":"c7bf72b8-88fb-4a64-824c-138c4e578490","name":"Send a message7","webhookId":"eedd766a-748a-4121-a6de-a54ea3b7b928","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"content":"📋 RESCHEDULE — CLIENT REQUEST\\n\\nTrigger: Client submits Reschedule Request form\\n\\nFlow:\\n1. Find client's existing confirmed booking\\n2. Check if booking is still active (not cancelled)\\n3. Check if new requested date is available\\n   (uses same smart conflict rules as booking:\\n   Baptism morning-only, host fully booked if \\n   non-Baptism morning event exists)\\n4. If available:\\n   - Delete old Google Calendar event\\n   - Create new Google Calendar event\\n   - Update booking with new date/time\\n   - Increment reschedule count\\n   - Email client confirmation (deposit carries over)\\n   - Email host alert\\n5. If NOT available:\\n   - Email client to choose another date\\n\\nEdge cases handled:\\n- Booking not found → notify client\\n- Booking already cancelled → notify client\\n- New date conflicts → notify client with reason\\n\\nNo limit on number of reschedules per client.\\n\\\\","height":720,"width":608},"type":"n8n-nodes-base.stickyNote","position":[-1472,-336],"typeVersion":1,"id":"ba6fca61-0ba5-41b5-9959-e479651e68a5","name":"Sticky Note"},{"parameters":{"content":"📋 RESCHEDULE — HOST MANUAL OVERRIDE\\n\\nTrigger: Host manually edits a row in \\nConfirmed Bookings sheet\\n\\nHow to use:\\n1. Host changes \\"Event Date\\" to new date\\n2. Host changes \\"Status\\" to \\"Reschedule\\"\\n3. Automation runs automatically\\n\\nFlow:\\n1. Detect row update\\n2. Check if Status = \\"Reschedule\\"\\n3. If yes:\\n   - Delete old Google Calendar event\\n   - Create new Google Calendar event \\n     (using new date already in sheet)\\n   - Update row: new Calendar Event ID, \\n     Status back to \\"Confirmed\\", \\n     increment reschedule count\\n   - Email client confirmation\\n   - Email host summary\\n\\nIf Status ≠ \\"Reschedule\\":\\n   - Workflow stops (prevents spam emails \\n     from unrelated sheet edits like notes \\n     or guest count updates)\\n\\nUse case: For clients who request reschedule \\nvia Messenger/call instead of the form — host \\nhandles it directly in the sheet.","height":784,"width":608,"color":"#2E5860"},"type":"n8n-nodes-base.stickyNote","position":[-1456,480],"typeVersion":1,"id":"6cfa8ae5-ecdb-4831-822b-804ef4914576","name":"Sticky Note1"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"6a0d1390-5a56-46c6-bc82-5aecb19de74f","leftValue":"={{ new Date($json.newDate).getTime() < new Date().getTime() }}","rightValue":"","operator":{"type":"boolean","operation":"true","singleValue":true}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-4208,-176],"id":"ad836538-3d81-4f3f-88f5-819eca5c531e","name":"If4"},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Reschedule Request — Booking Not Possible","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nWe could not process past booking dates:\\nEmail: {{ $('Set').item.json.clientEmail }}\\nDate:  {{ $('Set').item.json.newDate }}\\n\\nYou may submit another reschedule form or you may contact us for further assistance.\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-3936,-320],"id":"d5dc6a7a-9a62-43d2-8f63-19d3e71afaa8","name":"Send a message8","webhookId":"eedd766a-748a-4121-a6de-a54ea3b7b928","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}}]	{"Google Sheets Trigger":{"main":[[{"node":"Set","type":"main","index":0}]]},"Get row(s) in sheet":{"main":[[{"node":"If","type":"main","index":0}]]},"If":{"main":[[{"node":"If1","type":"main","index":0}],[{"node":"Send a message6","type":"main","index":0}]]},"If1":{"main":[[{"node":"Get row(s) in sheet1","type":"main","index":0}],[{"node":"Send a message7","type":"main","index":0}]]},"Get row(s) in sheet1":{"main":[[{"node":"Code in JavaScript","type":"main","index":0}]]},"Set":{"main":[[{"node":"If4","type":"main","index":0}]]},"Code in JavaScript":{"main":[[{"node":"If2","type":"main","index":0}]]},"If2":{"main":[[{"node":"Delete an event","type":"main","index":0}],[{"node":"Send a message2","type":"main","index":0}]]},"Delete an event":{"main":[[{"node":"Create an event","type":"main","index":0}]]},"Create an event":{"main":[[{"node":"Update row in sheet","type":"main","index":0}]]},"Update row in sheet":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Send a message":{"main":[[{"node":"Send a message1","type":"main","index":0}]]},"Google Sheets Trigger1":{"main":[[{"node":"Code in JavaScript1","type":"main","index":0}]]},"If3":{"main":[[{"node":"Set1","type":"main","index":0}],[]]},"Delete an event1":{"main":[[{"node":"Create an event1","type":"main","index":0}]]},"Create an event1":{"main":[[{"node":"Update row in sheet1","type":"main","index":0}]]},"Send a message3":{"main":[[{"node":"Send a message4","type":"main","index":0}]]},"Set1":{"main":[[{"node":"Delete an event1","type":"main","index":0}]]},"Code in JavaScript1":{"main":[[{"node":"If3","type":"main","index":0}]]},"Update row in sheet1":{"main":[[{"node":"Send a message3","type":"main","index":0}]]},"If4":{"main":[[{"node":"Send a message8","type":"main","index":0}],[{"node":"Get row(s) in sheet","type":"main","index":0}]]}}	Version 2a9a283f	t		[]
b4d66bf6-0838-4404-aa3a-3e63e1bcd653	6jaIG8BQurnDLztv	Anjerico Canasa	2026-06-25 04:54:41.932+00	2026-06-25 04:54:41.932+00	[{"parameters":{"pollTimes":{"item":[{"mode":"everyMinute"}]},"documentId":{"__rl":true,"value":"1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE","mode":"list","cachedResultName":"HostGhe Event Bookings Master","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit?usp=drivesdk"},"sheetName":{"__rl":true,"value":1106880960,"mode":"list","cachedResultName":"Initial Consultation Meeting","cachedResultUrl":"https://docs.google.com/spreadsheets/d/1ONijtRZwhWM32Xg_Y_RiLQ7rd7HTwMzODl71swUnkCE/edit#gid=1106880960"},"event":"rowAdded","options":{}},"type":"n8n-nodes-base.googleSheetsTrigger","typeVersion":1,"position":[-2512,-336],"id":"e1c7cccc-1690-4a85-b998-c6698d94d390","name":"Google Sheets Trigger","credentials":{"googleSheetsTriggerOAuth2Api":{"id":"90DelCYiWfhmOGho","name":"Google Sheets Trigger account"}}},{"parameters":{"operation":"getAll","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"timeMin":"={{ DateTime.fromFormat($('Set').item.json.date1 + ' ' + $('Set').item.json.time1, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).toISO() }}","timeMax":"={{ DateTime.fromFormat($('Set').item.json.date1 + ' ' + $('Set').item.json.time1, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).plus({hours: 1}).toISO() }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-2096,-336],"id":"4291b040-c98c-4e0f-ae9f-eed3d2aef3f6","name":"Get many events","alwaysOutputData":true,"credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"assignments":{"assignments":[{"id":"0a6e20d5-377c-4c51-8c22-fac0bbd64e63","name":"clientName","value":"={{ $json['Full Name'] }}","type":"string"},{"id":"9631fa51-26de-44c8-be56-e5ea5c16cf5e","name":"clientEmail","value":"={{ $json['Email Address'] }}","type":"string"},{"id":"d3dee78e-ed3d-4d47-b0e9-00d959ed9057","name":"meetingType","value":"={{ $json['Meeting Type'] }}","type":"string"},{"id":"0fd4f36b-e7a6-40fd-84e6-20ea11fa502a","name":"date1","value":"={{ $json['Proposed Date 1'] }}","type":"string"},{"id":"0e485758-e307-4814-94cc-90ab40aa060f","name":"time1","value":"={{ $json['Proposed Time 1'] }}","type":"string"},{"id":"dd6eb665-15d9-422a-8700-da4a6a0cc7e8","name":"date2","value":"={{ $json['Proposed Date 2'] }}","type":"string"},{"id":"0aa6c194-5aa4-441b-a064-5841eedf33f8","name":"time2","value":"={{ $json['Proposed Time 2'] }}","type":"string"},{"id":"dc571a69-1a88-403d-ae32-8bfebc91a1b2","name":"location","value":"={{ $json['F2F Location'] }}","type":"string"}]},"options":{}},"type":"n8n-nodes-base.set","typeVersion":3.4,"position":[-2304,-336],"id":"e577841c-faf9-4693-be4b-943cd893a72e","name":"Set"},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"d0f63040-6d21-4208-bb96-36023add03fe","leftValue":"={{ Object.keys($json).length }}","rightValue":0,"operator":{"type":"number","operation":"equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-1888,-336],"id":"d3dd58e8-f1fb-4fb3-a42b-06637d950a97","name":"If"},{"parameters":{"operation":"getAll","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"timeMin":"={{ DateTime.fromFormat($('Set').item.json.date2 + ' ' + $('Set').item.json.time2, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).toISO() }}","timeMax":"={{ DateTime.fromFormat($('Set').item.json.date2 + ' ' + $('Set').item.json.time2, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).plus({hours: 1}).toISO() }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-1664,32],"id":"1ace90a4-6e92-477a-81e8-e13fc74c2f19","name":"Get many events1","alwaysOutputData":true,"credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"start":"={{ DateTime.fromFormat($('Set').item.json.date1 + ' ' + $('Set').item.json.time1, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).toISO() }}","end":"={{ DateTime.fromFormat($('Set').item.json.date1 + ' ' + $('Set').item.json.time1, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).plus({hours: 1}).toISO() }}","additionalFields":{"attendees":["={{ $('Set').item.json.clientEmail }}"],"conferenceDataUi":{"conferenceDataValues":{"conferenceSolution":"hangoutsMeet"}},"description":"=Client: {{ $('Set').item.json.clientName }} \\nEmail:  {{ $('Set').item.json.clientEmail }} \\nMeeting Type: {{ $('Set').item.json.meetingType }}  \\n\\nThis is your initial consultation meeting to discuss event requirements.","location":"={{ $('Set').item.json.meetingType.includes('Face to Face') ? $('Set').item.json.location : 'Virtual Meeting' }}","summary":"=Initial Consultation — {{ $('Set').item.json.clientName }}"}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-1680,-528],"id":"d0cab773-49e9-439d-b2cc-5187fd77e786","name":"Create an event","credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"conditions":{"options":{"caseSensitive":true,"leftValue":"","typeValidation":"strict","version":3},"conditions":[{"id":"d0f63040-6d21-4208-bb96-36023add03fe","leftValue":"={{ Object.keys($json).length }}","rightValue":0,"operator":{"type":"number","operation":"equals"}}],"combinator":"and"},"options":{}},"type":"n8n-nodes-base.if","typeVersion":2.3,"position":[-1488,32],"id":"63277f3b-ad28-4893-b5b8-426088b57af6","name":"If1"},{"parameters":{"calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"start":"={{ DateTime.fromFormat($('Set').item.json.date2 + ' ' + $('Set').item.json.time2, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).toISO() }}","end":"={{ DateTime.fromFormat($('Set').item.json.date2 + ' ' + $('Set').item.json.time2, 'M/d/yyyy h:mm:ss a', {zone: 'Asia/Manila'}).plus({hours: 1}).toISO() }}","additionalFields":{"attendees":["={{ $('Set').item.json.clientEmail }}"],"conferenceDataUi":{"conferenceDataValues":{"conferenceSolution":"hangoutsMeet"}},"description":"=Client: {{ $('Set').item.json.clientName }} \\nEmail:  {{ $('Set').item.json.clientEmail }} \\nMeeting Type: {{ $('Set').item.json.meetingType }}  \\n\\nThis is your initial consultation meeting to discuss event requirements.","location":"={{ $('Set').item.json.meetingType.includes('Face to Face') ? $('Set').item.json.location : 'Virtual Meeting' }}","summary":"=Initial Consultation — {{ $('Set').item.json.clientName }}"}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-1264,-128],"id":"38c228a7-0368-44c6-91cf-b546cc4e615b","name":"Create an event1","alwaysOutputData":false,"credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Initial Consultation Meeting Confirmed","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},  \\n\\nYour initial consultation meeting has been confirmed!  \\n\\nMeeting Type:  {{ $('Set').item.json.meetingType }} \\nDate & Time:   See calendar invite for exact schedule  \\n\\nA Google Calendar invite has been sent to your email.  \\n\\n{{ $json.hangoutLink ? 'Google Meet Link: ' + $json.hangoutLink : 'Location: ' + $('Set').item.json.location }}  \\n\\nPlease accept the invite to confirm your attendance.  \\n\\nWe look forward to discussing your event requirements!  \\n\\nWarm regards, \\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-1056,-320],"id":"3d2f4f40-711c-4844-aa17-e4a3ebde9c8f","name":"Send a message","webhookId":"53b17e26-f3e9-40d3-96ce-9cd2e057ec76","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"sendTo":"=anjericocanasa@gmail.com","subject":"=New Consultation Meeting Scheduled -  {{ $('Set').item.json.clientEmail }}","emailType":"text","message":"=A consultation meeting has been scheduled.\\n\\nClient:        {{ $('Set').item.json.clientName }}\\nEmail:         {{ $('Set').item.json.clientEmail }}\\nMeeting Type:  {{ $('Set').item.json.meetingType }}\\n\\nCheck your Google Calendar for the exact date/time.","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-848,-320],"id":"ddb07176-5c9e-4d81-aba4-b5030fe11ae1","name":"Send a message1","webhookId":"53b17e26-f3e9-40d3-96ce-9cd2e057ec76","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}},{"parameters":{"operation":"getAll","calendar":{"__rl":true,"value":"anjericocanasa@gmail.com","mode":"list","cachedResultName":"anjericocanasa@gmail.com"},"returnAll":true,"timeMin":"={{ DateTime.now().setZone('Asia/Manila').toISO() }}","timeMax":"={{ DateTime.now().setZone('Asia/Manila').plus({days: 14}).toISO() }}","options":{}},"type":"n8n-nodes-base.googleCalendar","typeVersion":1.3,"position":[-1264,192],"id":"320054fb-71be-4ad0-8800-7c12949d9771","name":"Get many events2","alwaysOutputData":true,"credentials":{"googleCalendarOAuth2Api":{"id":"NHqGhrd4pyBuJOTi","name":"Google Calendar account"}}},{"parameters":{"jsCode":"// Get all existing events in the next 14 days\\nconst existingEvents = $input.all().filter(\\n  item => Object.keys(item.json).length > 0\\n);\\n\\n// Build a list of busy time ranges\\nconst busyRanges = existingEvents.map(event => ({\\n  start: DateTime.fromISO(event.json.start.dateTime),\\n  end: DateTime.fromISO(event.json.end.dateTime)\\n}));\\n\\n// Generate candidate slots: next 14 days at 10:00 AM, 1 hour each\\nconst freeSlots = [];\\nlet dayOffset = 1;\\n\\nwhile (freeSlots.length < 3 && dayOffset <= 20) {\\n  const candidateStart = DateTime.now()\\n    .setZone('Asia/Manila')\\n    .plus({ days: dayOffset })\\n    .set({ hour: 10, minute: 0, second: 0 });\\n  const candidateEnd = candidateStart.plus({ hours: 1 });\\n\\n  // Check if this candidate overlaps with any busy range\\n  const isBusy = busyRanges.some(range => \\n    candidateStart < range.end && candidateEnd > range.start\\n  );\\n\\n  if (!isBusy) {\\n    freeSlots.push({\\n      formattedDate: candidateStart.toFormat('MMMM d, yyyy'),\\n      formattedTime: candidateStart.toFormat('h:mm a'),\\n      isoStart: candidateStart.toISO()\\n    });\\n  }\\n\\n  dayOffset++;\\n}\\n\\nreturn [{ json: { \\n  freeSlots: freeSlots,\\n  slot1: freeSlots[0] ? freeSlots[0].formattedDate + ' at ' + freeSlots[0].formattedTime : 'N/A',\\n  slot2: freeSlots[1] ? freeSlots[1].formattedDate + ' at ' + freeSlots[1].formattedTime : 'N/A',\\n  slot3: freeSlots[2] ? freeSlots[2].formattedDate + ' at ' + freeSlots[2].formattedTime : 'N/A'\\n}}];"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[-1040,192],"id":"fa626f84-403e-41ad-a0f8-55f38148818e","name":"Code in JavaScript"},{"parameters":{"sendTo":"={{ $('Set').item.json.clientEmail }}","subject":"Let's Find a Time — Alternative Dates Available","emailType":"text","message":"=Hi {{ $('Set').item.json.clientName }},\\n\\nUnfortunately both of your proposed dates are \\nalready taken for consultation meetings.\\n\\nHere are 3 open slots instead:\\n\\n1. {{ $json.slot1 }}\\n2. {{ $json.slot2 }}\\n3. {{ $json.slot3 }}\\n\\nPlease reply to this email letting us know which \\nslot works best for you, and we'll confirm it \\nright away.\\n\\nWarm regards,\\nHost Ghe Team","options":{}},"type":"n8n-nodes-base.gmail","typeVersion":2.2,"position":[-832,192],"id":"02963fbd-ce04-4f37-b180-9c346f32dc9a","name":"Send a message2","webhookId":"53b17e26-f3e9-40d3-96ce-9cd2e057ec76","credentials":{"gmailOAuth2":{"id":"hnzOthEinhs30BEl","name":"Gmail account"}}}]	{"Google Sheets Trigger":{"main":[[{"node":"Set","type":"main","index":0}]]},"Set":{"main":[[{"node":"Get many events","type":"main","index":0}]]},"Get many events":{"main":[[{"node":"If","type":"main","index":0}]]},"If":{"main":[[{"node":"Create an event","type":"main","index":0}],[{"node":"Get many events1","type":"main","index":0}]]},"Get many events1":{"main":[[{"node":"If1","type":"main","index":0}]]},"If1":{"main":[[{"node":"Create an event1","type":"main","index":0}],[{"node":"Get many events2","type":"main","index":0}]]},"Create an event":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Create an event1":{"main":[[{"node":"Send a message","type":"main","index":0}]]},"Send a message":{"main":[[{"node":"Send a message1","type":"main","index":0}]]},"Get many events2":{"main":[[{"node":"Code in JavaScript","type":"main","index":0}]]},"Send a message2":{"main":[[]]},"Code in JavaScript":{"main":[[{"node":"Send a message2","type":"main","index":0}]]}}	\N	t	\N	[]
\.


--
-- Data for Name: workflow_publication_outbox; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publication_outbox" ("id", "workflowId", "publishedVersionId", "status", "errorMessage", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_publish_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publish_history" ("id", "workflowId", "versionId", "event", "userId", "createdAt") FROM stdin;
68	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 16:09:46.34+00
69	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 16:16:55.558+00
70	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 16:17:01.367+00
71	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 16:36:37.478+00
72	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 16:36:42.612+00
73	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 16:56:49.999+00
74	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 16:56:54.768+00
75	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 17:02:34.722+00
1	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-21 21:05:33.308+00
2	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-21 21:29:07.594+00
3	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-21 21:29:10.885+00
4	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-21 21:52:35.734+00
5	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-21 21:52:38.894+00
6	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-21 22:13:56.611+00
7	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-21 22:14:00.055+00
8	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-21 22:22:25.087+00
9	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-21 22:22:28.043+00
10	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-21 22:42:03.555+00
84	6L2KXAzhlmhAl1Ds	57639898-3998-46c4-a37e-dfbe9632acbd	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-10 19:28:47.799+00
77	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-10 18:50:16.57+00
58	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 14:49:39.535+00
78	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-10 18:50:19.861+00
11	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-21 22:42:06.736+00
12	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 06:16:32.526+00
79	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-10 19:07:09.414+00
82	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-10 19:15:07.798+00
76	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 17:02:43.697+00
13	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 06:16:35.805+00
14	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 06:39:11.297+00
15	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 06:39:14.405+00
16	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 06:53:55.166+00
17	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 06:53:58.288+00
18	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 07:06:59.479+00
19	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 07:07:02.65+00
20	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 07:14:50.71+00
21	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 07:14:54.407+00
22	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 07:26:09.791+00
25	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 07:31:37.864+00
26	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 07:53:36.157+00
23	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 07:26:12.923+00
24	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 07:31:34.412+00
27	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 07:53:39.181+00
28	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 10:01:54.123+00
29	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 10:01:57.973+00
30	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 10:06:55.032+00
31	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 10:06:58.497+00
32	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 10:09:54.627+00
35	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 10:20:41.573+00
36	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 10:42:22.73+00
37	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 10:42:25.953+00
38	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 14:36:37.247+00
33	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 10:09:57.666+00
34	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 10:20:38.417+00
40	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-28 03:46:22.857+00
41	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-28 03:51:09.504+00
42	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-28 03:51:16.017+00
43	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-28 03:58:18.592+00
44	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-28 03:58:23.633+00
45	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-28 04:05:01.831+00
46	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-28 04:05:06.825+00
47	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-28 04:19:21.204+00
48	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-28 04:19:27.293+00
49	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-28 04:26:43.676+00
50	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-28 04:26:49.04+00
51	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-03 11:53:25.189+00
39	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-05-27 14:36:40.32+00
52	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-03 11:53:44.776+00
53	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-03 12:59:19.278+00
54	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 14:22:19.296+00
55	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 14:22:26.895+00
59	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 15:06:31.518+00
56	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 14:24:18.382+00
57	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 14:49:36.24+00
60	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 15:06:42.199+00
61	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 15:21:59.668+00
62	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 15:22:06.654+00
63	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 15:54:27.727+00
64	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 15:54:36.735+00
65	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 16:05:22.804+00
66	4BwtbipeXxjLpRpy	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 16:05:34.946+00
67	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-04 16:09:35.094+00
83	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-10 19:28:44.647+00
80	6L2KXAzhlmhAl1Ds	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-10 19:07:13.324+00
81	6L2KXAzhlmhAl1Ds	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-10 19:15:04.707+00
88	4BwtbipeXxjLpRpy	81f3c009-2222-49d9-b570-6b391e7fd39f	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 19:59:00.767+00
87	4BwtbipeXxjLpRpy	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 19:58:55.481+00
99	wPLp2slfjHoiQwGF	2a9a283f-dd31-4dca-a53c-105e356df6ad	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 21:06:12.29+00
85	wPLp2slfjHoiQwGF	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 08:04:26.011+00
86	wPLp2slfjHoiQwGF	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 19:11:15.729+00
89	wPLp2slfjHoiQwGF	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 19:59:38.271+00
90	wPLp2slfjHoiQwGF	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 20:41:00.199+00
91	wPLp2slfjHoiQwGF	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 20:41:08.936+00
92	wPLp2slfjHoiQwGF	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 20:45:16.244+00
93	wPLp2slfjHoiQwGF	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 20:45:21.804+00
94	wPLp2slfjHoiQwGF	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 21:02:44.149+00
95	wPLp2slfjHoiQwGF	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 21:02:51.575+00
96	wPLp2slfjHoiQwGF	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 21:03:42.813+00
97	wPLp2slfjHoiQwGF	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 21:03:47.965+00
98	wPLp2slfjHoiQwGF	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-24 21:06:02.946+00
100	6jaIG8BQurnDLztv	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-25 04:25:38.059+00
101	6jaIG8BQurnDLztv	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-25 04:33:28.014+00
104	wPLp2slfjHoiQwGF	2a9a283f-dd31-4dca-a53c-105e356df6ad	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-07-02 08:30:50.12+00
105	4BwtbipeXxjLpRpy	81f3c009-2222-49d9-b570-6b391e7fd39f	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-07-02 08:30:56.63+00
106	6L2KXAzhlmhAl1Ds	57639898-3998-46c4-a37e-dfbe9632acbd	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-07-02 08:31:02.624+00
102	6jaIG8BQurnDLztv	\N	activated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-06-25 04:33:32.388+00
103	6jaIG8BQurnDLztv	\N	deactivated	eecfd4bf-2ff8-403c-a261-09f2ea67eea1	2026-07-02 08:30:43.754+00
\.


--
-- Data for Name: workflow_published_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_published_version" ("workflowId", "publishedVersionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount", "id", "workflowName") FROM stdin;
1	2026-05-21 18:45:16.727+00	data_loaded	6L2KXAzhlmhAl1Ds	1	1	\N
2	2026-06-24 19:08:47.794+00	production_error	wPLp2slfjHoiQwGF	2	382	Event Reschedule
55	2026-06-04 17:01:57.753+00	manual_success	4BwtbipeXxjLpRpy	0	158	Event Cancellation Requests
18	2026-06-04 17:03:59.696+00	production_error	4BwtbipeXxjLpRpy	18	169	Event Cancellation Requests
38	2026-06-24 20:51:58.003+00	production_success	6L2KXAzhlmhAl1Ds	38	49	Events Booking System
65	2026-06-24 21:00:01.663+00	manual_success	wPLp2slfjHoiQwGF	0	299	Event Reschedule Requests
33	2026-06-24 21:06:10.449+00	production_success	4BwtbipeXxjLpRpy	33	174	Event Cancellation Requests
1	2026-06-09 07:28:13.874+00	data_loaded	wPLp2slfjHoiQwGF	1	298	\N
18	2026-06-24 21:07:39.584+00	production_success	wPLp2slfjHoiQwGF	18	389	Event Reschedule Requests
1	2026-06-25 03:38:46.012+00	data_loaded	6jaIG8BQurnDLztv	1	455	\N
17	2026-06-04 15:12:50.89+00	manual_error	4BwtbipeXxjLpRpy	0	160	Event Cancellation Requests
2	2026-06-25 04:03:48.653+00	manual_error	6jaIG8BQurnDLztv	0	461	Event Meeting Scheduler
1	2026-07-02 09:12:45.112+00	manual_error	zGzdtmcuZicig0MZ	0	508	My workflow 2
27	2026-06-24 19:38:12.376+00	manual_error	wPLp2slfjHoiQwGF	0	305	Event Reschedule
1	2026-05-28 02:50:37.119+00	data_loaded	4BwtbipeXxjLpRpy	1	157	\N
41	2026-07-02 09:16:10.913+00	manual_error	6L2KXAzhlmhAl1Ds	0	22	Events Booking System
6	2026-07-02 09:17:38.842+00	manual_success	hblPfsvtXd3oEUIX	0	480	Social Media Agent
26	2026-07-02 09:23:04.363+00	manual_error	hblPfsvtXd3oEUIX	0	481	Social Media Agent
15	2026-06-24 20:02:47.174+00	production_error	6L2KXAzhlmhAl1Ds	15	34	Events Booking System
123	2026-06-24 20:08:26.02+00	manual_success	6L2KXAzhlmhAl1Ds	0	2	Events Booking System
17	2026-06-25 04:09:31.088+00	manual_success	6jaIG8BQurnDLztv	0	456	Event Meeting Scheduler
4	2026-06-25 04:36:36.772+00	production_success	6jaIG8BQurnDLztv	4	475	Event Meeting Scheduler
1	2026-07-02 05:54:11.583+00	data_loaded	hblPfsvtXd3oEUIX	1	479	\N
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: credential_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."credential_dependency_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 61798, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, true);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 149, true);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 10, true);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 349, true);


--
-- Name: instance_version_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."instance_version_history_id_seq"', 2, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 199, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."oauth_user_consents_id_seq"', 1, false);


--
-- Name: secrets_provider_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."secrets_provider_connection_id_seq"', 1, false);


--
-- Name: user_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."user_favorites_id_seq"', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_dependency_id_seq"', 28883, true);


--
-- Name: workflow_publication_outbox_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publication_outbox_id_seq"', 1, false);


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publish_history_id_seq"', 106, true);


--
-- Name: workflow_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_statistics_id_seq"', 513, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict yRUHtCWRWkUDEH0n1UxDfvPqGEq2kfQXR3VOs3wW7iJLWKefAXGKtFsssp5SujC

RESET ALL;
