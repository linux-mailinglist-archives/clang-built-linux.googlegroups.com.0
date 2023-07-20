Return-Path: <clang-built-linux+bncBC3J7IONUUIBBWGP4OSQMGQEUOVMTGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D35575A847
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Jul 2023 09:52:58 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id d75a77b69052e-403fe35b393sf8507041cf.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Jul 2023 00:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1689839577; x=1690444377;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XtIuWJUMpMFsiHRHVXE7CESqpPSRcwLN+06Y38zOY0I=;
        b=c7d94vmmjqV5F3gO8sha/4n47gxT+jXLlgGe2yWasFQWqbkO1ZH3XFdBdtC/HoDUyT
         COyYo7Vh8luyXYP31PyC8/t2TZ51i9K3gWvRBiAHZYfle8W7niXePfP38NAGbxQcHNwG
         5zzkjpF2qlANhXZz4tn1DiA/2yUtDNSyVSGM0fxvp5i1HK7mFkVduyOB9srbuaQp0F+G
         3u57ddfeG+k3/D0np8kUnCEd2VvFOEMdDRIJHcmGO8aG/0lmM1QLmyCM75wTb1LF08jU
         +2jfIZHNmo64RkeEm5aEyAljOhGYPk8nmKfq7tsyJIbSrpybTbtnX/ibnFoQb2BmMnJx
         6Akg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689839577; x=1690444377;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XtIuWJUMpMFsiHRHVXE7CESqpPSRcwLN+06Y38zOY0I=;
        b=hyMWshJ/zmbVew8eZakxCy3J1xLcyXsFrE6RxtpkRRPt8+6L5GnUShBIZjudSAHzSY
         dOZvnNr6m1xTY29TFba3gTxc7dSKGoZOws1UqAogEnu5PUYaQDZztHND6JM1gqpWAZnu
         GvUg6JonKnMfzSr2fLWUrQ+WDO2HXs3VYOK/nf53trQ2q8c7b8F2lbbU7BbPVfZZemIt
         GM5HP9k6EzmNuXt4YYzY/2lOVfyjjZA/QlmeCXw2s+idnYGDFBI/bz8rXEwU89cHOsJA
         rxfx9yIQG47OKOm5e0jGwRGtONdHGR9xRuWA+vYu+wVB3OuoLiW4SH09+gDnTvhvEE+c
         nwnA==
X-Gm-Message-State: ABy/qLbDegZLa6cp9XPTexexf0ZeALe6VXJe9nXpIOY4yKJOLyXbW4ew
	Fqogw0cbNkORSkU1VPAuQe4=
X-Google-Smtp-Source: APBJJlE97Ur0AQ7dc+vnxQqYqujw1sRjRDOFefkvX/35gW3gnm+1vwzlVc7d6f062mnRGD+J221fWg==
X-Received: by 2002:ac8:5755:0:b0:405:3b92:85fc with SMTP id 21-20020ac85755000000b004053b9285fcmr3704409qtx.38.1689839576868;
        Thu, 20 Jul 2023 00:52:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4615:0:b0:403:b327:26c4 with SMTP id p21-20020ac84615000000b00403b32726c4ls79750qtn.1.-pod-prod-01-us;
 Thu, 20 Jul 2023 00:52:56 -0700 (PDT)
X-Received: by 2002:a05:622a:308:b0:403:a7e5:ad38 with SMTP id q8-20020a05622a030800b00403a7e5ad38mr8465065qtw.45.1689839576238;
        Thu, 20 Jul 2023 00:52:56 -0700 (PDT)
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id ga15-20020a05622a590f00b00403ec96ad23si35867qtb.3.2023.07.20.00.52.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 00:52:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ck.hu@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 69666b0e26d211eeb20a276fd37b9834-20230720
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.28,REQID:cd95972e-3ed8-42aa-b681-79185808e45a,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:45,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:45
X-CID-INFO: VERSION:1.1.28,REQID:cd95972e-3ed8-42aa-b681-79185808e45a,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:45,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:45
X-CID-META: VersionHash:176cd25,CLOUDID:70d3cfdc-dc79-4898-9235-1134b97257a8,B
	ulkID:230720155247FYZ4PZYG,BulkQuantity:0,Recheck:0,SF:29|28|17|19|48|102,
	TC:nil,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,C
	OL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:PA,DKP:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_ULN,TF_CID_SPAM_SNR,
	TF_CID_SPAM_SDM
X-UUID: 69666b0e26d211eeb20a276fd37b9834-20230720
Received: from mtkmbs14n1.mediatek.inc [(172.21.101.75)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 922282141; Thu, 20 Jul 2023 15:52:44 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 MTKMBS14N1.mediatek.inc (172.21.101.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 20 Jul 2023 15:52:43 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 20 Jul 2023 15:52:43 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LWMtMgleCeWK9hkfXcZxNo15BRNxyfs0U5htH//0ZhhacVV2GqfMMbWaWsCK4Ai5z36Zr/YF7c/umRoZwTmdhRIYnofygR8ekeALjIHJCAh2g89A0X2atjNEef7hIzdXzfttQsq6qWrW1DpvW+5XHvPysdz91VlmHwhHHOFv2EjRb8KZB3TwSGpKI1MbGpp3lonssv4A4+SfopDVmBEjo/70LP6INerUaIoogheumIYBSpvJO9KYVe2bgLS/UuX+lZSlGLIcSQBtFjlQSAYK71+n6QaZFrsIBvu+e7E8X+Tu25fOOmKiw3OeRRM3Zej+Ut8Q2s9nkE1y3rDzWFG5Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gzTH4JAUYZJkMQSBXaOlJyntOm1fWWaMrTWJlG9JEPk=;
 b=UiWPHX+WhnoSs8JMeEXGPuupxC08hqqj14W9LU94Bgyemdzn5nLM7y0IhX69j9UE26JwPuK6VtoebPkunMLxmbmh003HcFAY/ERaEd5Bz7iQnH4MOHM8pEtWsPIwBnT/UcBm6mR17xKxemKDe1xyrGYAhPE7CovcWA0Sr+XsBzc9XhgvPvDaac57HfQFDHCYqqSDMzqEe4MSlROwt6gRE8sb/vvwvmrZqI+aNX0Ygr59pPEH8qNxBIlTD2ck3j2QmJiw6XWJ058iKNLa910YpWwUjLUS7mNxrRydF43s8QFC/egVt/gHIcwXw0bk/PyYA6IQsodyAjD2U22YyC27Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com (2603:1096:400:1f4::13)
 by SG2PR03MB6660.apcprd03.prod.outlook.com (2603:1096:4:1b9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Thu, 20 Jul
 2023 07:52:40 +0000
Received: from TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::d126:7f34:9e4f:a95]) by TYZPR03MB6624.apcprd03.prod.outlook.com
 ([fe80::d126:7f34:9e4f:a95%4]) with mapi id 15.20.6588.031; Thu, 20 Jul 2023
 07:52:40 +0000
From: =?UTF-8?B?J0NLIEh1ICjog6Hkv4rlhYkpJyB2aWEgQ2xhbmcgQnVpbHQgTGludXg=?= <clang-built-linux@googlegroups.com>
To: "fshao@chromium.org" <fshao@chromium.org>
CC: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>,
	=?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v2] drm/mediatek: fix uninitialized symbol
Thread-Topic: [PATCH v2] drm/mediatek: fix uninitialized symbol
Thread-Index: AQHZc/dS0+UnhHpH9UKQpbsnSvSsEK+5gs+AgARbeACABPgZgA==
Date: Thu, 20 Jul 2023 07:52:40 +0000
Message-ID: <7e1124a15395dbb6906c17e240e5011a4274a9b5.camel@mediatek.com>
References: <20230421021609.7730-1-nancy.lin@mediatek.com>
	 <ae96299cffaacdbf51beae96e3a257c95a04ac95.camel@mediatek.com>
	 <CAC=S1njEG2sV28XAWDw8FoQ0p5w=-sU4i+D-ESfapHMQC1ZW3Q@mail.gmail.com>
In-Reply-To: <CAC=S1njEG2sV28XAWDw8FoQ0p5w=-sU4i+D-ESfapHMQC1ZW3Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB6624:EE_|SG2PR03MB6660:EE_
x-ms-office365-filtering-correlation-id: f310637e-8970-4cfc-0b87-08db88f64af6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vHPXN72VG1XHQlkgJ+sc8bxAexMpKBW3YTX2Kj2j3ppwGlJIOifjlXiIySNdJnmYXWD5pEAFRkK9DOl16RqC69l5xZ+KCmFzAJioTTQ+dIMiqaLSUikXT1EHAHpBqDWbVlohxrsHamicnCHyJyU71gHCVXqlmM+PDM0ojDo3b9AjEnU279yoGCd1+uWwgUN/JQsvdwyxWmmG6SfSLi7uX9jEm5zfJD0EEmc9gEnLPXdmNsoYl3z1i1zkdv4Ihq4fXnACdJm2AiBWjdrP/kSrwVOM3fHQAS4Dd38FkRviGtMrC/Z7eQ/UEYmMsVQAH7t6X3J5eY5Y8lxz2h3knnzCtva3Qv43xMq0qTdX7+fB07tvmKrsaQ7eLa9HvEuuhn1qlUKIyHd+susrXzZupvyvCQJbsA40QrQDzYjBAKt4hFGdiHJXSWAx+9Hb2RciADO5iYHHeTsaTtc6pj96AYfEBjbqtMMoKrqnedMpvkeBCeZ9tAe203BD5j0K8miD+a/ophI2QV5N+6YRHiuZ7o7C1mYv0bO7HL6mexgDHL/vNYQfoSmzS4IECp0URDoX0f93l757BMr0hF8OK1N52p3Jm0tS7Inb/sJ8v1jnA481r3cA6Nrrixa7SYvQDou/RbeVuk649Py5ZVp7eHO2zIKxct9Hau+5l2MthFJ+t2NokOg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB6624.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(451199021)(122000001)(38100700002)(85182001)(38070700005)(86362001)(36756003)(6512007)(6486002)(71200400001)(478600001)(26005)(2906002)(186003)(6506007)(53546011)(8676002)(316002)(76116006)(8936002)(41300700001)(54906003)(4326008)(7416002)(66946007)(66476007)(66446008)(6916009)(66556008)(64756008)(5660300002)(2616005)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?blMrY2FNTS9ETnU3WEZBc3dMWnJLUXFzTXVXSlJHcjdpNmJnRGIvbm5MSlND?=
 =?utf-8?B?RG1FdHBpRjFWQm9YS3hraVdNcEtNZXVJUzhzbGpBKzkxOENqQXYyRjR0S3RQ?=
 =?utf-8?B?Nk9uMUNmbklqaGNSMlQ4Ky8yRjRzM3UyZEdEME1PT2ZselRLd1hYa3Zpakk4?=
 =?utf-8?B?UGsxSStLZGhJa2dzRWtFTVhqN2xwa2NzT2RQeXRqcVMwc1p2R2hld2dLelMx?=
 =?utf-8?B?akJGclNLLzZRV3JtdFYyZURrejJrRkFZd3ZDNWNCWUNacFh5TlROU3NWQ3ZP?=
 =?utf-8?B?MSs3MDNCYkRIMk54cnpISUJ5Ym16QkZlcHNIbkYvQkdpTFlzeWJJM01HZVgr?=
 =?utf-8?B?eDFLU1F2VTlUY2V3aVl2ckdoQVlocXhwbGJ5V3BHWXE5dkI4c0EvSWVRa0t4?=
 =?utf-8?B?N0VYTWJackNWQnY3eEZmWGlER2srVmExQXN2SGhqbmdleS9sUW92OGhjeDc1?=
 =?utf-8?B?VHpIUkdneC9TdzRMZmRUcEx2amY1WFhoZXNvd0hkbjB3MEV4YmV6eVozdC83?=
 =?utf-8?B?SUgrT2hyc2R6bWhlc2pvUU5nbDJPV2RNQlFOS2ttTjhKamM4UGFRVFl6Q1Vv?=
 =?utf-8?B?eTFhdU5EZnk0U1lrRjR6czhSOVV0VWppTWV1OFZLdS9aUDIyQUlNbC94M1k0?=
 =?utf-8?B?YzB4WTJ0c09vdlFvM2EwMmdraEd6NWpXTTRLS0gwTHdNMkVQblg2V0tVQ0lq?=
 =?utf-8?B?N0FrZFJ2ZCtMVlVhRWpZZzBmbmJJYSsxNmh3ZFc5MmJXOW9mSENFdHdjUHNh?=
 =?utf-8?B?MklIWkx6MkJTVndsbUpVS2d2TGNUYkc0ZXZRTGtaR3ROUmdxbzd4NEFFRVht?=
 =?utf-8?B?SWhYV0pYSVFJOUFPME5RVTRSbkVRZHZWYjV2NGJaMjJ0YVlVYTBGTElCUzJu?=
 =?utf-8?B?eDRPQTdCV2kza3h0Z2NRVVFIcm5Cci81emd0ajBKWEp6VXhvMnlObm1HUk16?=
 =?utf-8?B?aithcHJQTzFBQjhlQkVrT0dRbU1mVHNZOVZ0V29vY1pwRGl0SkJ0eGVGVWZs?=
 =?utf-8?B?SXhDbVliZW9wYjlqaWlhaEVhOEFnaktYTGFoc3o2aUJCQ3JqTWRKbWU5ejNJ?=
 =?utf-8?B?RFU1OEtRNHQ3Qjd4OGZzdjEzSmFRUURybkVVV282KzBTZEwvZHRlWEQxU2xS?=
 =?utf-8?B?MFdSZVBjMWpiUFZpVUZHY3E3SU9zK1pSNkRsZXlDZS9mWWhxTUpXdlJoWjRN?=
 =?utf-8?B?L2ZveCtDWGtuWkIwT1NMaThtYXlrOVpINmVHNUs0cnRwVUZSaEU1cW5lZ3RQ?=
 =?utf-8?B?MGI5Znc0aDNCQmlJL1lXV1ZXdlJveHR2WFhNZ2ZTRnVpMldPVUtwNjVqQWJ6?=
 =?utf-8?B?U0xTMG5KYnNxN0kya3FEOEFwcXFDazd1dmZnWUNVRS9OWWV0blZ0SjV2clBk?=
 =?utf-8?B?STdWWjNvMzhhTUpmTWZpaWE3REVPbGlCWUFFUzdqYXUzQUZPNEIrOVIxNjU5?=
 =?utf-8?B?UU9nazhCWFY1N29GUU5HaFJReTRZVlhCK1pkWVl2Q3g3TFBJaXBqelRPSGlQ?=
 =?utf-8?B?QTgzUTBORHpOdU15M3NPdFFSSjcrWVZKQ1UxK3pYV2VBSkhReXB3TGxvVit6?=
 =?utf-8?B?WEJGOGYrY2RldXFEMmhUbXZCbDM0MXdjU2pwSWNVSU41U0NCSmNpUHg1eTN4?=
 =?utf-8?B?cUJ4R0IyS2Vmbmp5WnQ4dEtuU3FXTnhXak1pS05WRGd1eEVRRlNDRWgvWHNo?=
 =?utf-8?B?cU9KdnZaMCswT0wybVhvdzdPWmQzcWw0TXlGbktYbG9ocEdrRkk4UU94ZVF0?=
 =?utf-8?B?ZWF4ZElzNkZwK0pXSlB2QWFKa245M1RMT2dnWmJqWnc0UGRXZzBtTy9sckd5?=
 =?utf-8?B?eHFXWHBqWlZMVkN4amxmTXZaVkhGVlhQSlFVbDc4R2hiZ09QWXgvaFdIZEhx?=
 =?utf-8?B?MTJLNkJMTlM5cThydGkzR2s0V0pyd29XRUIya3lDN2VwY0pSbTRJdnhSTU8r?=
 =?utf-8?B?eml6UzJQMThlWGltV0RuS3o5T1czaWNLay9wRURtbW16NUlaQVl0eVhuMHdZ?=
 =?utf-8?B?RU90M3BvemQ3MnV1VlJOZHpPUkFteG10RjdUcXRveUhnbm1uNTJ4N0poM09F?=
 =?utf-8?B?MFc3VWo5ak51RXF6VmNFaXFHQ3h4bVc3RG5BNVZ1YzZ6UTRCNzlMV1pPQkc2?=
 =?utf-8?Q?YIb1VpBmAECLVnu43n3EJC+ev?=
Content-ID: <BB8D395E7828364EA4623A9A8163BC65@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB6624.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f310637e-8970-4cfc-0b87-08db88f64af6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 07:52:40.3306
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PAKnAXxU3APQIVeZGzJqv4xffQkGQKJKNzRva3NJ6RSnbPeMBVVZY6+npeS7A4ezOwO1un6oWFdVTaPj/ZOZpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB6660
Content-Type: multipart/alternative;
	boundary="__=_Part_Boundary_009_650922250.1456923924"
X-Original-Sender: ck.hu@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=XAuKtuXM;       dkim=neutral
 (body hash did not verify) header.i=@mediateko365.onmicrosoft.com
 header.s=selector2-mediateko365-onmicrosoft-com header.b=u8p1ZCxT;
       arc=fail (body hash mismatch);       spf=pass (google.com: domain of
 ck.hu@mediatek.com designates 210.61.82.184 as permitted sender)
 smtp.mailfrom=ck.hu@mediatek.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=mediatek.com
X-Original-From: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Reply-To: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

--__=_Part_Boundary_009_650922250.1456923924
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<pre>
Hi,&#32;Fei:

On&#32;Mon,&#32;2023-07-17&#32;at&#32;11:59&#32;+0800,&#32;Fei&#32;Shao&#32=
;wrote:
&gt;&#32;&#32;&#32;
&gt;&#32;External&#32;email&#32;:&#32;Please&#32;do&#32;not&#32;click&#32;l=
inks&#32;or&#32;open&#32;attachments&#32;until
&gt;&#32;you&#32;have&#32;verified&#32;the&#32;sender&#32;or&#32;the&#32;co=
ntent.
&gt;&#32;&#32;Hi&#32;CK,
&gt;&#32;
&gt;&#32;On&#32;Fri,&#32;Jul&#32;14,&#32;2023&#32;at&#32;5:27&#8239;PM&#32;=
CK&#32;Hu&#32;(&#32993;&#20426;&#20809;)&#32;&lt;ck.hu@mediatek.com&gt;
&gt;&#32;wrote:
&gt;&#32;&gt;
&gt;&#32;&gt;&#32;Hi,&#32;Nancy:
&gt;&#32;&gt;
&gt;&#32;&gt;&#32;On&#32;Fri,&#32;2023-04-21&#32;at&#32;10:16&#32;+0800,&#3=
2;Nancy.Lin&#32;wrote:
&gt;&#32;snip
&gt;&#32;&gt;
&gt;&#32;&gt;&#32;In&#32;line&#32;566,&#32;the&#32;statement&#32;is
&gt;&#32;&gt;
&gt;&#32;&gt;&#32;if&#32;(nodo)&#32;{
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;comp_pdev&#32;=3D=
&#32;...
&gt;&#32;&gt;&#32;}
&gt;&#32;&gt;
&gt;&#32;&gt;&#32;The&#32;comment&#32;says&#32;that&#32;only&#32;ovl_adapto=
er&#32;has&#32;no&#32;device&#32;node,&#32;so&#32;the
&gt;&#32;&gt;&#32;checking&#32;should&#32;be
&gt;&#32;&gt;
&gt;&#32;&gt;&#32;if&#32;(type&#32;!=3D&#32;MTK_DISP_OVL_ADAPTOR)&#32;{
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;comp_pdev&#32;=3D=
&#32;...
&gt;&#32;&gt;&#32;}
&gt;&#32;&gt;
&gt;&#32;&gt;&#32;and&#32;later&#32;it&#32;would&#32;return&#32;when&#32;ty=
pe&#32;=3D&#32;MTK_DISP_OVL_ADAPTOR,
&gt;&#32;&gt;&#32;so&#32;there&#32;would&#32;be&#32;no&#32;problem&#32;of&#=
32;uninitialized&#32;symbol.
&gt;&#32;
&gt;&#32;That&#32;sounds&#32;fair,&#32;but&#32;IIUC&#32;what&#32;Nancy&#32;=
tries&#32;to&#32;resolve&#32;here&#32;is&#32;the
&gt;&#32;false-positive&#32;Smatch&#32;warning.
&gt;&#32;How&#32;about&#32;this:&#32;given&#32;the&#32;&#96;if&#32;(node)&#=
96;&#32;block&#32;was&#32;exclusively&#32;added&#32;for
&gt;&#32;ovl_adaptor&#32;in&#32;[1],&#32;plus&#32;the&#32;init&#32;function=
&#32;will&#32;immediately&#32;return
&gt;&#32;after&#32;that&#32;in&#32;this&#32;case,&#32;it&#32;should&#32;be&=
#32;safe&#32;to&#32;do&#32;the&#32;following
&gt;&#32;
&gt;&#32;&#96;&#96;&#96;
&gt;&#32;/*&#32;Not&#32;all&#32;drm&#32;components&#32;have&#32;a&#32;DTS&#=
32;device&#32;node...&#32;*/
&gt;&#32;if&#32;(node&#32;=3D=3D&#32;NULL)
&gt;&#32;&#32;&#32;&#32;&#32;return&#32;0;
&gt;&#32;
&gt;&#32;comp_pdev&#32;=3D&#32;of_find_device_by_node(node);
&gt;&#32;...
&gt;&#32;
&gt;&#32;if&#32;(type&#32;=3D=3D&#32;MTK_DISP_AAL&#32;||
&gt;&#32;...
&gt;&#32;&#96;&#96;&#96;
&gt;&#32;
&gt;&#32;which&#32;is&#32;equivalent&#32;to&#32;adding&#32;a&#32;&#96;node&=
#32;=3D=3D&#32;NULL&#96;&#32;check&#32;before&#32;[1].
&gt;&#32;This&#32;should&#32;suppress&#32;the&#32;Smatch&#32;warning&#32;be=
cause&#32;&#96;comp_pdev&#96;&#32;will&#32;be
&gt;&#32;(again)&#32;unconditionally&#32;assigned&#32;to&#32;something,&#32=
;and&#32;the&#32;&#96;type&#32;=3D=3D
&gt;&#32;MTK_DISP_OVL_ADAPTOR&#96;&#32;line&#32;can&#32;be&#32;dropped&#32;=
also&#32;(optional&#63;).

This&#32;solution&#32;also&#32;looks&#32;good&#32;to&#32;me.

Regards,
CK

&gt;&#32;
&gt;&#32;[1]:&#32;commit&#32;0d9eee9118b7&#32;(&quot;drm/mediatek:&#32;Add&=
#32;drm&#32;ovl_adaptor&#32;sub
&gt;&#32;driver&#32;for&#32;MT8195&quot;)
&gt;&#32;
&gt;&#32;Regards,
&gt;&#32;Fei

</pre><!--type:text--><!--{--><pre>************* MEDIATEK Confidentiality N=
otice ********************
The information contained in this e-mail message (including any=20
attachments) may be confidential, proprietary, privileged, or otherwise
exempt from disclosure under applicable laws. It is intended to be=20
conveyed only to the designated recipient(s). Any use, dissemination,=20
distribution, printing, retaining or copying of this e-mail (including its=
=20
attachments) by unintended recipient(s) is strictly prohibited and may=20
be unlawful. If you are not an intended recipient of this e-mail, or believ=
e=20
that you have received this e-mail in error, please notify the sender=20
immediately (by replying to this e-mail), delete any and all copies of=20
this e-mail (including any attachments) from your system, and do not
disclose the content of this e-mail to any other person. Thank you!
</pre><!--}-->

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/7e1124a15395dbb6906c17e240e5011a4274a9b5.camel=
%40mediatek.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/clang-built-linux/7e1124a15395dbb6906c17e240e5011a4274a9b5.c=
amel%40mediatek.com</a>.<br />

--__=_Part_Boundary_009_650922250.1456923924
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Fei:

On Mon, 2023-07-17 at 11:59 +0800, Fei Shao wrote:
>  	=20
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
>  Hi CK,
>=20
> On Fri, Jul 14, 2023 at 5:27=E2=80=AFPM CK Hu (=E8=83=A1=E4=BF=8A=E5=85=
=89) <ck.hu@mediatek.com>
> wrote:
> >
> > Hi, Nancy:
> >
> > On Fri, 2023-04-21 at 10:16 +0800, Nancy.Lin wrote:
> snip
> >
> > In line 566, the statement is
> >
> > if (nodo) {
> >         comp_pdev =3D ...
> > }
> >
> > The comment says that only ovl_adaptoer has no device node, so the
> > checking should be
> >
> > if (type !=3D MTK_DISP_OVL_ADAPTOR) {
> >         comp_pdev =3D ...
> > }
> >
> > and later it would return when type =3D MTK_DISP_OVL_ADAPTOR,
> > so there would be no problem of uninitialized symbol.
>=20
> That sounds fair, but IIUC what Nancy tries to resolve here is the
> false-positive Smatch warning.
> How about this: given the `if (node)` block was exclusively added for
> ovl_adaptor in [1], plus the init function will immediately return
> after that in this case, it should be safe to do the following
>=20
> ```
> /* Not all drm components have a DTS device node... */
> if (node =3D=3D NULL)
>     return 0;
>=20
> comp_pdev =3D of_find_device_by_node(node);
> ...
>=20
> if (type =3D=3D MTK_DISP_AAL ||
> ...
> ```
>=20
> which is equivalent to adding a `node =3D=3D NULL` check before [1].
> This should suppress the Smatch warning because `comp_pdev` will be
> (again) unconditionally assigned to something, and the `type =3D=3D
> MTK_DISP_OVL_ADAPTOR` line can be dropped also (optional?).

This solution also looks good to me.

Regards,
CK

>=20
> [1]: commit 0d9eee9118b7 ("drm/mediatek: Add drm ovl_adaptor sub
> driver for MT8195")
>=20
> Regards,
> Fei

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/7e1124a15395dbb6906c17e240e5011a4274a9b5.camel%40mediatek=
.com.

--__=_Part_Boundary_009_650922250.1456923924--

