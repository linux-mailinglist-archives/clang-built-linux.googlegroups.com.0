Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBDF22CQAMGQEGKL5R7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oa1-x38.google.com (mail-oa1-x38.google.com [IPv6:2001:4860:4864:20::38])
	by mail.lfdr.de (Postfix) with ESMTPS id F26BE6BE24D
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Mar 2023 08:55:57 +0100 (CET)
Received: by mail-oa1-x38.google.com with SMTP id 586e51a60fabf-1778b36a88dsf2542051fac.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Mar 2023 00:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679039756;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zbJx27jctnPTGnC3zPZUdHlvl5JvTW6gF6QwLcYIoCY=;
        b=nhHbEJ6gS8Een9rVQBXQf+wceg4YETPnzKclU34wW+aTyn91NNOoLTuCU/12P3siBG
         SOc+YIpuPVDti5wpzWQBe9IbNTRCGqpHe4jituQGWudyH+erWwpNDY/NJB4DNhDS71fE
         P0iH8YBQHO9aZMCHKDOCAAcVZ0rF1VIS/RB0j+Pa3ichpSmkWnMqctH/EKoympQD5dW6
         OhIc3ewb1TWkFADRgSG43cU/uORzmVjPVAyVxUDP75P84bNO6ODc8+Umu/RGbcM4S4aU
         YCiHQgOxsz8gn06TWyrRQbVX7V1s12lnkAp73k7hMsRIIW8SK8QqgE4zgBtIvX4HMMMF
         2PZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679039756;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zbJx27jctnPTGnC3zPZUdHlvl5JvTW6gF6QwLcYIoCY=;
        b=KnOtkpmEleJRsNLpWTZEt9ce1tX10flHkD4j9JuuGd1n7EvTclwFUtd9fiN9Hd2z+K
         ymAqlAOgkv0i+llQbvJG5K0IDzJj01lrbTKhPo/s2SFhIu8PwV6Ob368gFkX73Qx1KW/
         QmPexC/BnAE5zn+NMjqkUJB29qsrIUdbQ/RFJl0Hh6Q4nrjzmeL8Q2l9gxMTrM2C0Oo+
         SjgJX0iH/NC7hdfQGhe7wkIIB9FY/9g8aU6euBGJUh4U1x+W7dNHE3r3qVBXrCmSpPI9
         crDkmK8/UwSYBJd6txBxQtmZsxQF+F+jMQ7ehhySnRx4BiG7atrVqksj86lOJ9nhKMZ1
         ggSA==
X-Gm-Message-State: AO0yUKV5cdB2GpKSbKrk4CozLNIVvc3l3RCxXlz5wPw3uw1K5PiVNsll
	/1r2Z01B+S3zrW51ZMeoBss=
X-Google-Smtp-Source: AK7set+c4Qr+CAhMG+q1gNuLNvTthZRSbR3/HQUXIK2eYos0fLbmIk2VK1Yc13+qBxnvoXjHL+7PiA==
X-Received: by 2002:a05:6808:6ce:b0:386:c6f0:9e18 with SMTP id m14-20020a05680806ce00b00386c6f09e18mr1087656oih.10.1679039756327;
        Fri, 17 Mar 2023 00:55:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:9d0e:b0:176:30d5:30b9 with SMTP id
 pp14-20020a0568709d0e00b0017630d530b9ls1604725oab.9.-pod-prod-gmail; Fri, 17
 Mar 2023 00:55:55 -0700 (PDT)
X-Received: by 2002:a05:6870:a446:b0:17a:c38e:823f with SMTP id n6-20020a056870a44600b0017ac38e823fmr6465900oal.51.1679039755811;
        Fri, 17 Mar 2023 00:55:55 -0700 (PDT)
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id os25-20020a0568707d1900b0017b0d68e731si116816oab.2.2023.03.17.00.55.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 00:55:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 1f5f0228c49911ed91027fb02e0f1d65-20230317
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.21,REQID:ea4a356a-85cc-405f-af0b-460717c30998,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:83295aa,CLOUDID:2e2a1af6-ddba-41c3-91d9-10eeade8eac7,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: 1f5f0228c49911ed91027fb02e0f1d65-20230317
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1152557868; Fri, 17 Mar 2023 15:55:45 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Fri, 17 Mar 2023 15:55:44 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Fri, 17 Mar 2023 15:55:44 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YHmrM2AK9mGNm5ovCp7MrNetJxrq0qKMKaLXRjncZhQtDG4kyqFIJas5NOhr92/U8ywmvdJfPCHH5lGWcot0cKnzTWvfEwqQWZWvkohNFSVbSk9ax8yImU+97edt9JdvMIrZywYADqwbCmONEvY6sMWMXKcfUhgGU1VhM+7A/0Lo1yw9cMg2FMt+P3BbhoYUC9mkOdQQVeAK9fB4M4g1zAZhJ4Z42d+ijBGQTRvOTqlU0gb99JKGSNMLtJStyDD9iXHnJVHL8N37H1yOszJWQdHHQ7FecAUClslNCod+dxwuvzWR4yM/dJIFdRiuk0GEf2DwaqtYCi2XOFGfZPDEzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KNP4mGhPHv+5YCmUfCygaIbRjJImW39t1886vcII2SY=;
 b=XMipXNH3gohlkNy4RT+mWzqmPmNUtFFk1nraw/yPM+WxE50ueBRNrQp1oBLEEb34v8HP0eFsoyxKnd+A0h1HsAHTpmn6mzO+2vp0Ahd5+nV4+iIkZP5rcepUc4i4SEksmV8mst+oVfcxg6q5ki4pbzcs6EEie4pFEB6QWMpZ4UII6e50Y1e3/xGTj69fNtqQstaS1rSvknSEhy09S5XJTS5JyvPMIMzl6N+N7Gx7t8aNVsgxHdhKxsEi2zcf+kXbQT5Ph/MeZ6EytQ+45HUgUKX9IIrr0rFVLE6RpR5BwJMqRn3TZHCYFjGyeBM5pWN+OqFSdDhS/SZWTY2Or48z7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com (2603:1096:820:8::11)
 by SI2PR03MB5832.apcprd03.prod.outlook.com (2603:1096:4:144::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.35; Fri, 17 Mar
 2023 07:55:42 +0000
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::dd54:60c1:df32:bc65]) by KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::dd54:60c1:df32:bc65%4]) with mapi id 15.20.6178.031; Fri, 17 Mar 2023
 07:55:42 +0000
From: =?UTF-8?B?J05hbmN5IExpbiAo5p6X5qyj6J6iKScgdmlhIENsYW5nIEJ1aWx0IExpbnV4?= <clang-built-linux@googlegroups.com>
To: "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	"nathan@kernel.org" <nathan@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
	=?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "ndesaulniers@google.com"
	<ndesaulniers@google.com>
Subject: Re: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for
 mt8195
Thread-Topic: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for
 mt8195
Thread-Index: AQHZGcrXQb/1V2Icz0ST2hH4Pb2de677rZiAgAA66wCAAYJcAIAAA1eAgAA4mYCAABzVgIABVIIA
Date: Fri, 17 Mar 2023 07:55:41 +0000
Message-ID: <72cf6344a1c5942bff0872d05dce82b787b49b76.camel@mediatek.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
	 <20221227081011.6426-2-nancy.lin@mediatek.com>
	 <4aff6a7a3b606f26ec793192d9c75774276935e0.camel@mediatek.com>
	 <2700bd6c-f00d-fa99-b730-2fcdf89089fa@linaro.org>
	 <1d65e8b2de708db18b5f7a0faaa53834e1002d9f.camel@mediatek.com>
	 <b04eb48e-c9aa-0404-33ec-bef623b8282f@linaro.org>
	 <e5ceec9e-d51b-2aeb-1db7-b79b151bd44c@collabora.com>
	 <0ebf187d-972e-4228-d8a0-8c0ce02f642d@linaro.org>
In-Reply-To: <0ebf187d-972e-4228-d8a0-8c0ce02f642d@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5175:EE_|SI2PR03MB5832:EE_
x-ms-office365-filtering-correlation-id: 84712db1-7013-4b0b-4d46-08db26bd0181
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: n/PkgS1YdhvElwP0xFnqmRQN+fg0VCVJtoW0KeOmzNfWfcLyYzJlU0G5/EMn4ZCGeS3HUHraP91SmNKKrZC1gsB3m8CTBLs3WD8U9pRKaEvSdukUW03iEbcWD17+S8pTw8Zm3rBZjHyz9ZT+jm/Oxg37AfOPVpWEb47gAqFauhmMJ4mjEfUjNf9XWJ1T8RRnHeyfzNlTYlLDPEYKIbrR5uZEn27a2QU92+5EhrGFcx6etQYvjZYe4bBsxflYqtVjh1rt26YUKQ6QIHq3ii1I7NAe5Dq+BOAcUOrCCeo3w24at/UE5P/fQ0LhBFCbYkIn/QRNvvLqecpAZA85Q0kEwmYKkSsgVfQZ8XZBm6ub3lKNq6nuqyp6gvUTNEQWONxvSNV1q+W+gmbYipwm/w7iiFvadmIYjQNzoPJIshT1tI/aCRWzqgOdh2QFRvsMmUp+18AVI/FF76/1fsRjccjSfvFkbTCn41J4j2Ide7w8atiRexVEOvSm9s/jzco1C2ldydBT/SDVmHJVqt16E0Dhy78kxp+6uvjyKzq/4skQxRepR6xYlK0V/AWJTSyvsX2+Wjf6p+KLuBVc42tzulGpTudjPNlB6UqwGiMmdFl49WSAEWYJz3tNueGMi+MWmziWdqxp1O9kEXLtesGhgDLJ/8c2tlw1jZc/eKtRJEqrv2QeAUwH6bETR+bLMW/UzUXL
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5175.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(451199018)(4326008)(53546011)(966005)(71200400001)(6486002)(83380400001)(478600001)(26005)(6506007)(6512007)(54906003)(66946007)(2616005)(316002)(186003)(66556008)(66476007)(66446008)(64756008)(8676002)(76116006)(110136005)(8936002)(5660300002)(41300700001)(7416002)(122000001)(38100700002)(2906002)(36756003)(86362001)(85182001)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RlBZWW5YWE1EMktHZGN6YTlmbURCRDVKSWxvbUV4akJpMWs0U08zSGM3MWpa?=
 =?utf-8?B?amswa1RieWFWTlZHei9YS1dNcEZwUS9CTTAxdmEwQ2dwRDBBNml4cWdHekl3?=
 =?utf-8?B?RjZ3UWpvMFY5UE1KWGV5MG1NT3NOYVJ4elpFaXF2ZGFTbnRSeXhCMkNhMWtB?=
 =?utf-8?B?amtDWGVHV1hxZHAwSWNDM2s2MTRNeWJoR3BoSW13UWVMVFZubDVIVkFsZ0Rm?=
 =?utf-8?B?L3dQemkzcHpKSkNqYzBoWUdod203bEVkWW55TVpkeVJjTkZDOU56THF4K0pa?=
 =?utf-8?B?U3ZYaDh3T1dERFBUTk96dkhQSVdPU2pvV2hZY2JJUjVKQTJEYVhWUXFJTnpH?=
 =?utf-8?B?Y2pwcU1rUGhCa2JuZXA2VmR6S3JzN2txa3AvS0dHRThLNGw1dElMTkpqZVpv?=
 =?utf-8?B?ZnlyRURrc1FGbHBERTI0eG5TYVBrY1ErMDJORU5VelhET1pINzB3YndFRW1R?=
 =?utf-8?B?YnpGeUQ3dnpjeWNiVGlkLzZmNGdiMWQ3cGQ3WVFOM3Y0Z3Zna0gwT0N2bmVi?=
 =?utf-8?B?OU1jRm5NUDhDdTU4cG1pcTVOTlp6WDlZZUFlcWUrRFFIRzhselIzN0tMS1F4?=
 =?utf-8?B?UC9KZFBIWHZ2UklFL0IyZFV2NlZUeStzT1ZaNGNlUWhYeXpEZ1hBa3hNSmxV?=
 =?utf-8?B?ZWxHeTVoVU16R2NSM2VSdjdzRmJDSXlVL2ZKa1dyRHZpdllITk13TVNEaktG?=
 =?utf-8?B?UnkvWjJLb0dsbTRCVUJ0UjBnQloreThhdlBqRFYxYW1paEFFYm9nVVVMUjRN?=
 =?utf-8?B?QzcvbEhTM0YzODFyWVhHYkFoYzV4WXdibm1CWFBlV2pEMG52UFBySGdRZWdp?=
 =?utf-8?B?b1dmcjE3WUhMamxFdEdWWnd0MlR6MXRUL3ZDVTBranB3ZVhjeS9mbVNCVVJr?=
 =?utf-8?B?SnFRakJ5SXc2dy9KZ3cxcmVqQmd1SjBTSXp2b1oyNnhuQUw0b2JLUk9TM1lN?=
 =?utf-8?B?dTJSajltem9sUWxhTHFTRnlLeXhUOTU5alRKL3RoNHdRb3BQTXprb21VS1RG?=
 =?utf-8?B?WXJNc2dEaDB0VjJwOFZlRHY2K3I5VnBONTdubDJ2a3dVWkE1NGhVMlIzWEUx?=
 =?utf-8?B?OWd2N1kwTU54YWs5WVZqQlZ4cytRc0FiMmhBVEs5c2tkeDlSYkNaT1lvVzc3?=
 =?utf-8?B?cE1WWnVVcFJCM1R4YjNhYWFYNEZNLzQ3WDVLcnBXc0cwSkx0c3RhdkhvSkVU?=
 =?utf-8?B?QWIxcDZwRUg0UUVhODRHSXZpUTNhL05VSEs3V3U3QTk1cFJBbFJGU3ZBUW5C?=
 =?utf-8?B?Qy9ISDhwWEt0V05HdXFJb0Vtb1I1TEVqdDY1SEttOXBodTRQWmFVR2tSRTRY?=
 =?utf-8?B?QXYwb2RIZEtsbjgzaXBqNEpWUmZCMFp4SkU1ZlkvTTFyK2RJaWl4QUozRytQ?=
 =?utf-8?B?TnViTC9TL2ZnZ1ZCMUh6NHBTbkJla1ZKUzVTU0NsMkY1YmlIZ1VBQTROTitH?=
 =?utf-8?B?bG4wNlM2Z2NMU1hvdXZoNjVzMDVraGpQdnFrck5HOUtHNlp1SVdwajh0OUtO?=
 =?utf-8?B?UjVwZnYwcTY3Nml3blUvY2RON0w1YWxXYVhydXRsUzI0NERvUmpCbEZ2ckFI?=
 =?utf-8?B?Z2RnZ0dxUDUvMGdZYS9HVTdKU0lKdkRpc0MwSnhoTXZuMVB1NTdvRWQ2L0Z1?=
 =?utf-8?B?ZFpBVjVrby9aR0N2SmY4R3FHRnRuSTRwL0JVQ3pIN2NCdzc3RFFYbzlXOVFa?=
 =?utf-8?B?TkptWXc0R3JRc2FBazgrWlYzMHdaOUwwdDlWKzAvbTd3SVJ5V3BIYWRvOU9W?=
 =?utf-8?B?b0lBYnhHek1VNU5hbHlCZHIxbHFtYkdMYlExeWNqZVcwTTZ0cldoQWdQRzN3?=
 =?utf-8?B?RWRKOEJudkt0OHZrNFVZMENtKzN2Qi9TTUtwdHE5czltT1NheEVkRXplb3c2?=
 =?utf-8?B?ZFVJTlowNU1YMmh0Q0pzOTJSZXRjNWZMd21vWnFTcWJ5LzVHTHpMYVk3Z216?=
 =?utf-8?B?cDlrRGM2c1B0S3Eremo2SGFGQ0NnK2p3U0Z4Z0oxb1VxVTQzU3lCZHhLQldL?=
 =?utf-8?B?N2p3NkRVNUhHTmhYcCs1TGtJMHZpOVdyd1dIN1didmdpWUJ4NEVZNkY1ZFhj?=
 =?utf-8?B?M2piejc3b3kwa1AySzJUNlZvT3ZYN1NWUWJEK0dtNE5VU1R3SDNHMGxpSFYz?=
 =?utf-8?B?eE1Nd2x3bEpkaHMwNm5VZW5vNWllTWNNOGVtVzVPOGM1aEZzQmtiM3ZSN1RF?=
 =?utf-8?B?QkE9PQ==?=
Content-ID: <3A9962BCA8BF12448C8DF6989A6CE19F@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5175.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84712db1-7013-4b0b-4d46-08db26bd0181
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2023 07:55:41.8514
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TxZFrSgq/VVfnxvtQkBkgvQAstxl7WBMpNxporL2HxylWatflUTJTmM++rjsPFO0m/D1TahouU/GWFQKWvxktQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB5832
Content-Type: multipart/alternative;
	boundary="__=_Part_Boundary_001_1762561408.77045478"
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=DkWqzvtS;       dkim=neutral
 (body hash did not verify) header.i=@mediateko365.onmicrosoft.com
 header.s=selector2-mediateko365-onmicrosoft-com header.b=OT7K9fdH;
       arc=fail (body hash mismatch);       spf=pass (google.com: domain of
 nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender)
 smtp.mailfrom=nancy.lin@mediatek.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=mediatek.com
X-Original-From: =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>
Reply-To: =?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>
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

--__=_Part_Boundary_001_1762561408.77045478
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<pre>
On&#32;Thu,&#32;2023-03-16&#32;at&#32;12:36&#32;+0100,&#32;Krzysztof&#32;Ko=
zlowski&#32;wrote:
&gt;&#32;On&#32;16/03/2023&#32;10:53,&#32;AngeloGioacchino&#32;Del&#32;Regn=
o&#32;wrote:
&gt;&#32;
&gt;&#32;&gt;&#32;Hello&#32;Krzysztof,&#32;Nancy,
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;Since&#32;this&#32;series&#32;has&#32;reached&#32;v29,&#3=
2;can&#32;we&#32;please&#32;reach&#32;an&#32;agreement
&gt;&#32;&gt;&#32;on&#32;the&#32;bindings
&gt;&#32;&gt;&#32;to&#32;use&#32;here,&#32;so&#32;that&#32;we&#32;can&#32;g=
et&#32;this&#32;finally&#32;upstreamed&#63;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;I&#32;will&#32;put&#32;some&#32;examples&#32;to&#32;try&#=
32;to&#32;get&#32;this&#32;issue&#32;resolved.
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;###&#32;Example&#32;1:&#32;Constrain&#32;the&#32;number&#=
32;of&#32;GCE&#32;entries&#32;to&#32;*seven*&#32;array
&gt;&#32;&gt;&#32;elements&#32;(7x4!)
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&#32;&#32;&#32;mediatek,gce-client-reg:
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#36;ref:&#32;/schemas/types.yam=
l#/definitions/phandle-array
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;maxItems:&#32;1
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;description:&#32;The&#32;registe=
r&#32;of&#32;display&#32;function&#32;block&#32;to&#32;be&#32;set
&gt;&#32;&gt;&#32;by&#32;gce.
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;There&#32;are&#32;4&#3=
2;arguments&#32;in&#32;this&#32;property,&#32;gce&#32;node,&#32;subsys&#32;=
id,
&gt;&#32;&gt;&#32;offset&#32;and
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;register&#32;size.&#32=
;The&#32;subsys&#32;id&#32;is&#32;defined&#32;in&#32;the&#32;gce&#32;header=
&#32;of
&gt;&#32;&gt;&#32;each&#32;chips
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;include/dt-bindings/gc=
e/&lt;chip&gt;-gce.h,&#32;mapping&#32;to&#32;the
&gt;&#32;&gt;&#32;register&#32;of&#32;display
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;function&#32;block.
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;items:
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;minItems:&#32;28
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;maxItems:&#32;28
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;items:&#32;&#32;&#32;&=
#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&=
#32;&#32;&#32;&lt;-----&#32;this&#32;block&#32;doesn&#39;t&#32;seem&#32;to
&gt;&#32;&gt;&#32;get&#32;checked&#32;:&#92;
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;descri=
ption:&#32;phandle&#32;of&#32;GCE
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;descri=
ption:&#32;GCE&#32;subsys&#32;id
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;descri=
ption:&#32;register&#32;offset
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;descri=
ption:&#32;register&#32;size
&gt;&#32;
&gt;&#32;This&#32;is&#32;what&#32;we&#32;would&#32;like&#32;to&#32;have&#32=
;but&#32;it&#32;requires&#32;exception&#32;in
&gt;&#32;dtschema.&#32;Thus:
&gt;&#32;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;###&#32;Example&#32;2:&#32;Don&#39;t&#32;care&#32;about&#=
32;constraining&#32;the&#32;number&#32;of
&gt;&#32;&gt;&#32;arguments
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&#32;&#32;&#32;mediatek,gce-client-reg:
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#36;ref:&#32;/schemas/types.yam=
l#/definitions/phandle-array
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;maxItems:&#32;1
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;description:&#32;The&#32;registe=
r&#32;of&#32;display&#32;function&#32;block&#32;to&#32;be&#32;set
&gt;&#32;&gt;&#32;by&#32;gce.
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;There&#32;are&#32;4&#3=
2;arguments&#32;in&#32;this&#32;property,&#32;gce&#32;node,&#32;subsys&#32;=
id,
&gt;&#32;&gt;&#32;offset&#32;and
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;register&#32;size.&#32=
;The&#32;subsys&#32;id&#32;is&#32;defined&#32;in&#32;the&#32;gce&#32;header=
&#32;of
&gt;&#32;&gt;&#32;each&#32;chips
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;include/dt-bindings/gc=
e/&lt;chip&gt;-gce.h,&#32;mapping&#32;to&#32;the
&gt;&#32;&gt;&#32;register&#32;of&#32;display
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;function&#32;block.
&gt;&#32;
&gt;&#32;use&#32;this.
&gt;&#32;
&gt;&#32;Best&#32;regards,
&gt;&#32;Krzysztof


Hi&#32;Krzysztof,&#32;Angelo,

Thanks&#32;for&#32;the&#32;comment.
The&#32;Example&#32;2&#32;can&#32;pass&#32;dt_binding_check.&#32;

But&#32;the&#32;example&#32;in&#32;the&#32;binding&#32;has&#32;7&#32;items&=
#32;[1]&#32;and&#32;dts&#32;[2].&#32;Does&#32;the
&quot;maxItems:&#32;1&quot;&#32;affect&#32;any&#32;other&#32;schema&#32;or&=
#32;dts&#32;check&#63;&#32;

[1]
+&#32;&#32;&#32;&#32;mediatek,gce-client-reg&#32;=3D&#32;&lt;&amp;gce0&#32;=
SUBSYS_1c11XXXX&#32;0x4000&#32;0x1000&gt;,
+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&lt;&amp;gce0&#32;SUBSYS_1c11XXXX&#32;0x5000&#32;0x1000&gt;,
+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&lt;&amp;gce0&#32;SUBSYS_1c11XXXX&#32;0x7000&#32;0x1000&gt;,
+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&lt;&amp;gce0&#32;SUBSYS_1c11XXXX&#32;0x9000&#32;0x1000&gt;,
+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&lt;&amp;gce0&#32;SUBSYS_1c11XXXX&#32;0xa000&#32;0x1000&gt;,
+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&lt;&amp;gce0&#32;SUBSYS_1c11XXXX&#32;0xb000&#32;0x1000&gt;,
+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&lt;&amp;gce0&#32;SUBSYS_1c11XXXX&#32;0xc000&#32;0x1000&gt;;
&gt;&#32;

[2]&#32;[v21,25/25]&#32;arm64:&#32;dts:&#32;mt8195:&#32;add&#32;display&#32=
;node&#32;for&#32;vdosys1

https://patchwork.kernel.org/project/linux-mediatek/patch/20220504091440.20=
52-26-nancy.lin@mediatek.com/

Regards,
Nancy

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
om/d/msgid/clang-built-linux/72cf6344a1c5942bff0872d05dce82b787b49b76.camel=
%40mediatek.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/clang-built-linux/72cf6344a1c5942bff0872d05dce82b787b49b76.c=
amel%40mediatek.com</a>.<br />

--__=_Part_Boundary_001_1762561408.77045478
Content-Type: text/plain; charset="UTF-8"

On Thu, 2023-03-16 at 12:36 +0100, Krzysztof Kozlowski wrote:
> On 16/03/2023 10:53, AngeloGioacchino Del Regno wrote:
> 
> > Hello Krzysztof, Nancy,
> > 
> > Since this series has reached v29, can we please reach an agreement
> > on the bindings
> > to use here, so that we can get this finally upstreamed?
> > 
> > I will put some examples to try to get this issue resolved.
> > 
> > ### Example 1: Constrain the number of GCE entries to *seven* array
> > elements (7x4!)
> > 
> >    mediatek,gce-client-reg:
> >      $ref: /schemas/types.yaml#/definitions/phandle-array
> >      maxItems: 1
> >      description: The register of display function block to be set
> > by gce.
> >        There are 4 arguments in this property, gce node, subsys id,
> > offset and
> >        register size. The subsys id is defined in the gce header of
> > each chips
> >        include/dt-bindings/gce/<chip>-gce.h, mapping to the
> > register of display
> >        function block.
> >      items:
> >        minItems: 28
> >        maxItems: 28
> >        items:                     <----- this block doesn't seem to
> > get checked :\
> >          - description: phandle of GCE
> >          - description: GCE subsys id
> >          - description: register offset
> >          - description: register size
> 
> This is what we would like to have but it requires exception in
> dtschema. Thus:
> 
> > 
> > 
> > ### Example 2: Don't care about constraining the number of
> > arguments
> > 
> >    mediatek,gce-client-reg:
> >      $ref: /schemas/types.yaml#/definitions/phandle-array
> >      maxItems: 1
> >      description: The register of display function block to be set
> > by gce.
> >        There are 4 arguments in this property, gce node, subsys id,
> > offset and
> >        register size. The subsys id is defined in the gce header of
> > each chips
> >        include/dt-bindings/gce/<chip>-gce.h, mapping to the
> > register of display
> >        function block.
> 
> use this.
> 
> Best regards,
> Krzysztof


Hi Krzysztof, Angelo,

Thanks for the comment.
The Example 2 can pass dt_binding_check. 

But the example in the binding has 7 items [1] and dts [2]. Does the
"maxItems: 1" affect any other schema or dts check? 

[1]
+    mediatek,gce-client-reg = <&gce0 SUBSYS_1c11XXXX 0x4000 0x1000>,
+                              <&gce0 SUBSYS_1c11XXXX 0x5000 0x1000>,
+                              <&gce0 SUBSYS_1c11XXXX 0x7000 0x1000>,
+                              <&gce0 SUBSYS_1c11XXXX 0x9000 0x1000>,
+                              <&gce0 SUBSYS_1c11XXXX 0xa000 0x1000>,
+                              <&gce0 SUBSYS_1c11XXXX 0xb000 0x1000>,
+                              <&gce0 SUBSYS_1c11XXXX 0xc000 0x1000>;
> 

[2] [v21,25/25] arm64: dts: mt8195: add display node for vdosys1

https://patchwork.kernel.org/project/linux-mediatek/patch/20220504091440.2052-26-nancy.lin@mediatek.com/

Regards,
Nancy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/72cf6344a1c5942bff0872d05dce82b787b49b76.camel%40mediatek.com.

--__=_Part_Boundary_001_1762561408.77045478--

