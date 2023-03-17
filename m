Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBYPQ2CQAMGQEDMBZEEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5CB6BE5EB
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Mar 2023 10:52:37 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id i6-20020a170902c94600b0019d16e4ac0bsf2509192pla.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Mar 2023 02:52:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679046754;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=93WA80OubckIeo3VOfH5Fi6x80Lj9ZF/qfEYfvlo0rE=;
        b=I1fRsMiZrNP8d6RW1m148qUIj9FPWC6bPk0nykBshrEmhV5uxdQ9gE9L5WqKxG+b/t
         3jY7NJpwyghBWaDvW2s6OAdIcttgld1VxaEwoACO1OlRUZj87gG+VArTODu6Ink+H11y
         rnpDHsF5cq7gJivxCmsP/RkbZsixAGvJQs60GYnMy1J7Evr7I+3KYx9E8Os4QFszoy38
         U56L+1l+d2VK1iLl1zwoYcaPZgXwPsH5eBqI3EvI3Kh2nRPwTdkGwmevnK0idaCUZqVy
         dmz30iD26WcYsKX7wem2vSvkB+hYEh9lvRD0O8v8Wz+6i03d66rcOyDSiLeXqdn+fF8S
         4Fgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679046754;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=93WA80OubckIeo3VOfH5Fi6x80Lj9ZF/qfEYfvlo0rE=;
        b=sLKtE2pGS2vWCPfs2NnGLZ7mh8jg95CMfVSBO+Jw4yvfgREbUpebBNcaIEOdeWwp16
         t1Gh3zsp8JcBNmZsJcegrQRvOtzGjVdZaWsRkT+iFH1gYXxAEAqfefaF8xWLarl4ifZv
         624yIgSvTXUD99vM5Nit2gP8wtxv1+CySN4j/awPEdctGGemw8rrDyKb8OjPo6BvRJqb
         W0EaOeI0VXxncmbryWzAc8WIp5KsqVfvCBsXiCY3VOVJC6OjK61dabRPFes8QwkPgXvr
         +DvVfk+t2/okgUSYlWPhQ7GcZ3VMIx/E/sOysOek0rW0i3DXY9EnRJwGfSeXYWMjnByQ
         m8LA==
X-Gm-Message-State: AO0yUKUYNT3YHwQ/VTUz/02h0eG516mkwSAk+CZ/BDr0XkYpNbkdDuK/
	8y1EbW4x4yNIV5oIYN/P4Ms=
X-Google-Smtp-Source: AK7set9uyzBx5HCHU5zAvEInTPSB4QFFY9zIZj9xAXuvKf0yzIQcKLmKEOiENxsFCCGCa3knjruutA==
X-Received: by 2002:a17:90a:8812:b0:23d:429e:7800 with SMTP id s18-20020a17090a881200b0023d429e7800mr2033381pjn.5.1679046753734;
        Fri, 17 Mar 2023 02:52:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:fb0c:b0:19f:3460:3f0 with SMTP id
 le12-20020a170902fb0c00b0019f346003f0ls4670544plb.5.-pod-prod-gmail; Fri, 17
 Mar 2023 02:52:33 -0700 (PDT)
X-Received: by 2002:a17:90b:3e82:b0:236:a1f9:9a8a with SMTP id rj2-20020a17090b3e8200b00236a1f99a8amr2567148pjb.8.1679046752870;
        Fri, 17 Mar 2023 02:52:32 -0700 (PDT)
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id h7-20020a17090ac38700b0023dbbc039bbsi338840pjt.0.2023.03.17.02.52.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 02:52:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 6c4bdb50c4a911edbd2e61cc88cc8f98-20230317
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.21,REQID:864c1f8c-b696-4ef6-8503-5a11743c51bf,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:83295aa,CLOUDID:a982af28-564d-42d9-9875-7c868ee415ec,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-UUID: 6c4bdb50c4a911edbd2e61cc88cc8f98-20230317
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1538863733; Fri, 17 Mar 2023 17:52:26 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs13n2.mediatek.inc (172.21.101.108) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Fri, 17 Mar 2023 17:52:25 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Fri, 17 Mar 2023 17:52:25 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mkuaTuuZukmSBGbRTkdkI21RiM1qBEdVCj8DLzrSprlDSmrBY3abaEmvtSYCdfvomJOUbXc5uQeDr5u8BBHG6kEl5WIADMvba0dogs0m5xG6G6a1SKWmOwBmhrOT4zGp2+MVIf+09XRBvXNnIIYBr/S9gYPMbJ5YYr/jZhB9SU13e1FNy5knl1I9U6a+H/7DDGGBh2J62NU4+COh2XVBJ8ivnCbPlFpBP7Vdir4ZnIIf1n9ll2KJRPQYVGQzT62IO3XpV6HG3HNijAbp8/w8o1lhOBTDmG3SyG6OM3KPv4GDM8vt4CNPuD2kP7LZBlsB6ZwfThBpbW0GMUw+XjhXZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cRnjvJM/d5t+hNkhEbUK0wMlxFnr0KXf49brPrYZiFE=;
 b=SpMzdmJc3A+5m3VRBbKqcofcTvx/+z7SNr+YbHEo8qQlpFd6PJQGPGgus6N2z1oAd2/eZhdPcLc34kC2vS+GjZ+kIGMhO37P1SSjcG3maxI7ycPA+z5F8fo6lrFhFFC+P1UYaWrwr6D2LdAvZ3amfmlsAq2ZyFCNxK8C2TwCcbpOkp4wUXF6I1QPHlAP5YLdSotXayQ2Z117KJNgGV+xQLc4O/1VEOabKaw8RWfob+GGsSthrvN9ja8F68KsjFFvZEPTS3F7bUVRCtR3XZBeNU1WxV64fITMT3znBpu5ZrA1MJfElQsnLSrQN/WkQNhgtdCmZZDqy5E1vFWoRjrf4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com (2603:1096:820:8::11)
 by SI2PR03MB5435.apcprd03.prod.outlook.com (2603:1096:4:ef::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Fri, 17 Mar
 2023 09:52:23 +0000
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::dd54:60c1:df32:bc65]) by KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::dd54:60c1:df32:bc65%4]) with mapi id 15.20.6178.031; Fri, 17 Mar 2023
 09:52:22 +0000
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
Thread-Index: AQHZGcrXQb/1V2Icz0ST2hH4Pb2de677rZiAgAA66wCAAYJcAIAAA1eAgAA4mYCAABzVgIABVIIAgAATFQCAAAmAAIAABASA
Date: Fri, 17 Mar 2023 09:52:22 +0000
Message-ID: <5695b8e5ab8339764c646ee581529cb6cee04346.camel@mediatek.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
	 <20221227081011.6426-2-nancy.lin@mediatek.com>
	 <4aff6a7a3b606f26ec793192d9c75774276935e0.camel@mediatek.com>
	 <2700bd6c-f00d-fa99-b730-2fcdf89089fa@linaro.org>
	 <1d65e8b2de708db18b5f7a0faaa53834e1002d9f.camel@mediatek.com>
	 <b04eb48e-c9aa-0404-33ec-bef623b8282f@linaro.org>
	 <e5ceec9e-d51b-2aeb-1db7-b79b151bd44c@collabora.com>
	 <0ebf187d-972e-4228-d8a0-8c0ce02f642d@linaro.org>
	 <72cf6344a1c5942bff0872d05dce82b787b49b76.camel@mediatek.com>
	 <4027714e-b4e8-953b-68e2-f74f7a7f0e8e@linaro.org>
	 <fdd0a157-eedb-bf21-c632-79b02a4cd6b0@collabora.com>
In-Reply-To: <fdd0a157-eedb-bf21-c632-79b02a4cd6b0@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5175:EE_|SI2PR03MB5435:EE_
x-ms-office365-filtering-correlation-id: 78ac7168-1e59-499d-4a5f-08db26cd4e45
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7/0H2MkgJrK1QvAShYMaK6pJzotLLxJo/lfegRA/K5/2qrTbZQNBOgh8qGAfQQ5V74WffmmEj6OX2VuShLKWJbs8/VuePA7nzizEYGepTFXdQH3C4/UglkNpo4O9qnwH6x80WHOJz/RttaLti7+70YaO3gAIwuMuqIqEl38schcceOW6wpXKGCsnkqrM6OrNUKZM3XA3gX76Fy4qL2sEkzPOyW1FOzLJImFsajNFw3Rsv/BjvVPqDd52/J/I87sCr6XQ/fOonE8061o/dyO9CnEHURFc+MQ2KqpEG/6YiXrexcPbAZQPPF+Y4aMHRKSi/OVvWSOWrPN3s2l+sRY7+tZklJK30+wxaH/lnnelv7b/LcLzXi0SOyPnMdK8s0sCj3i/BeSFLC46JOe5cGPNK0YLGqWHfWTRmQeZqJSZ5fjum7mHQlB0Biic9zuce2bsBdM2syg6mxQCkaNnrTmyI/KAazuz8PKe7kkfHRp5MCvIVdsso+Nues6rcN7q3jeudZAMW5jzxlLiWWItzmxS5d+zjGlni7otTtyKWodvIRL57qudfj6Kf4deWM+ZasX+WLVwXhbft9iNpuimvGCwTBHqpCUCgiLEwYNmIuZ79dlweXGxCIf5AqD2/KVbuKOU5XMZjBwkQ3KclJYhJS04LcGokjIOrQCXw0l2MVm/rvMhTLoelNt9ckG9ipro86i4bQRmeOXA6lkoOCY2vwghvA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5175.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199018)(7416002)(5660300002)(110136005)(83380400001)(85182001)(36756003)(186003)(91956017)(66476007)(26005)(6506007)(53546011)(478600001)(6512007)(66556008)(6486002)(2616005)(38070700005)(316002)(4326008)(71200400001)(86362001)(38100700002)(8676002)(41300700001)(66946007)(8936002)(64756008)(66446008)(76116006)(54906003)(2906002)(122000001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UzlsWnNCUys1eS9xMWxpdzRGcEdRclozQmc1YjJiUlE0YXJSSjNlSk5naWl4?=
 =?utf-8?B?RmQ5Y2VnSXZQckwzem9aU09jOXdMWEVQczBFak9lYW12djFXU2FqTkRIWkdW?=
 =?utf-8?B?YlpTTVRVcHNia0J4NUl2ZEl1WHdBSWM5ZWFhRGpXZlcwYmNFdWwxOUlqYngv?=
 =?utf-8?B?RzNVV2FsYWU1SzgrK3l1R3Z4WEt6c2ZGamRlL1lMYmU5MitmK0JHaUoxRUVY?=
 =?utf-8?B?S2pSR1I0Njh6MDFPdjhwRG1DaG82RnozU1pLV2ZrcEdkUjFZc1BmeGYrUS82?=
 =?utf-8?B?L2NkZzZob2tza0ptUVBPUzhCSk5uNExnMmZ2My9PSDlUL0R6NjRsUDRyeE1D?=
 =?utf-8?B?UFl6Q1hZdHR4KzZYK1BTR21QT1NORmJDZ2ZORmRYYW10b2hCY1hXTlNmTXdi?=
 =?utf-8?B?VGZQaDlncjRKdTFPcjhsWnBIeDEwRW9jZG0wanR6S2k0ZzBMNWhyU1F3VDBl?=
 =?utf-8?B?cWI5UXdSTEIzV1cxQk5rVTdMTjZpaEpOV0MrL1ZjOGNFWFd2UXA1TkVpSkdw?=
 =?utf-8?B?OGxRb1MwSW5kczRmQ1VqWnp4eno5bG1VVUtWZzZnVFNvY0Zxc1RtSjlvSlN0?=
 =?utf-8?B?OWlRZXZDQ2xnMklqWUFZVXF6QzhhUytTeEhqVHZDWXNCbDdER0J2WWJvY3Fw?=
 =?utf-8?B?a3c5NFNZTmVTMGpodGVUbVFRSXYxYVFXejhGQjBLenR5VnlnNW92OEJ3K01q?=
 =?utf-8?B?MkE0cW14dkY0dGpQRGQzN1ZUM29Oc1Arc3RreDZWWlhnM0ZlQ2FlKzVubGZK?=
 =?utf-8?B?MjVRaG1KZ2k1anBmZ2hrQUlEaGd2L3A5VlV3aFdKNGhMWTlTSE14TmtYdzNM?=
 =?utf-8?B?R2JHZWtrUi9tczNXbXZHU3BzcU5kbXlyZUs3NWI5YjdDcW4xMm9razMyTWNG?=
 =?utf-8?B?RDd6MUo5Vm43cmU1QW9lTlJQTXBsU2lUNEFOanhFK2k5UUYyVFl5TFFVZk1W?=
 =?utf-8?B?bDdHdEZDTGZ3RTBXV2NBcTVybWQ1OXBpek1LQmdHTXVkTnpKOEd2aWRMMnN6?=
 =?utf-8?B?MGR6ODBmMmVZZ241Vm5mZXUyOTJnR1BPY0dtak1SSXVlUDlFM1dGYVpOcDZl?=
 =?utf-8?B?Ulh1djMxVkRtbEVpZy9zVUNmWU9CcldaOW5pR3RJVzA5Vk9iRi8wd2lERlFI?=
 =?utf-8?B?Y0toVnk2Yk1PZmlmTlpIajd0L0RwaUt1Vm5hdFN2aDErNllqYysya0Vjc3lz?=
 =?utf-8?B?NkltMnVjQ1VuSDE3UUlYTHdsaXIxV0E4UDNWSjdWTVlkcTZteVlBS1NhRGR1?=
 =?utf-8?B?d2dGbm9TS3ZSY21lUFNqQkg5Z3ZacTFTeWdCWSsrU3F6bTRwUlJSZU1oZzBW?=
 =?utf-8?B?VTdoNlBxZURWOXNGMUpJWlIrNUhQK0QyYU5rVk1xbTg0YkNMSGNxYUs2NGlp?=
 =?utf-8?B?Sk0rY2ZLdmJEZi9yQ05JdDk2YUJkdlBQaUl4cHRRZk9qUGVsMWN5RjNxTTNq?=
 =?utf-8?B?a0xWaTZDSUtTbmFzdmhacFNvcmdTRXFBd3Bvb1oxUmptUVkvZTdFUE5OSklN?=
 =?utf-8?B?L3BxM0t5UlZWdnBOT1pDZzNHOGxlbU9zZmFzVkZsaG8wdG9iRm1FcVJVS3BP?=
 =?utf-8?B?SXNEQTNQYmszd1YyNFEyQVYrS0JrWUNydSt5OVpyUk1ianVrS1daUnVhWVZC?=
 =?utf-8?B?dWg2Q0dFMHlkZ3h3YnluL2diSFZMNmZsbjVJVnl5cnVFWVFMRnVNVWdiVU4z?=
 =?utf-8?B?UXBYYTY0eXEyZS9xc2pDdVNlRm4zZEdsUmxlamd0K0xNMFNmYkFDb3RNQWtY?=
 =?utf-8?B?K1FuZFdVV0FJNWxKaGt1RjF0VkZKeVJvb1haMGZOVTNwNUxDTEpKK2JMSmNQ?=
 =?utf-8?B?SUhuNEhWbVJzTnNoY1BVVXNYZXZlOGVCQXBkN05QK3lzQlpKUU9halVNYzlq?=
 =?utf-8?B?ODFjZXlkSE9uTG8ra1pCUEsxRk1zMzV0MVVTMFpWVEdMR0pwTGtRaU5nSS9S?=
 =?utf-8?B?b09uY0lzZGJpVnhJc08yWjBUNGM2V1ZBOFVkTW1FOVdpR3E3R3FxM285cEtX?=
 =?utf-8?B?YUw2TGgzekZOaEtnL0JXb1lFQWxVdVF1RmlFRENFTWRoWkJWZm5JREcwdU5y?=
 =?utf-8?B?eERGU28yaXF0TWNpTnN5ZzVGLyt6eXArcVl3Z2kxKzR6YzZPWndVV2QwZXhP?=
 =?utf-8?B?NGhMK3JZS0lPdDBOUUtZOEpjZ2hRN2l3cGtmcU1SM243bVkwTUpIbXpGZWdx?=
 =?utf-8?B?d1E9PQ==?=
Content-ID: <119F44B48FEF214294A2E36F45B577E4@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5175.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78ac7168-1e59-499d-4a5f-08db26cd4e45
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2023 09:52:22.5903
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X3iPqHpNBRas7NFea0wq3Yyh9TGBpgOdmcYosnCvPnOGeMJTEvvTRkOCF1zP0sre/X1TUHC1HGp2WmTBXkXi8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR03MB5435
Content-Type: multipart/alternative;
	boundary="__=_Part_Boundary_007_2045131514.1599548515"
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b="sh/6r48H";       dkim=neutral
 (body hash did not verify) header.i=@mediateko365.onmicrosoft.com
 header.s=selector2-mediateko365-onmicrosoft-com header.b=MOS4T9dX;
       arc=fail (body hash mismatch);       spf=pass (google.com: domain of
 nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender)
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

--__=_Part_Boundary_007_2045131514.1599548515
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<pre>
On&#32;Fri,&#32;2023-03-17&#32;at&#32;10:37&#32;+0100,&#32;AngeloGioacchino=
&#32;Del&#32;Regno&#32;wrote:
&gt;&#32;Il&#32;17/03/23&#32;10:03,&#32;Krzysztof&#32;Kozlowski&#32;ha&#32;=
scritto:
&gt;&#32;&gt;&#32;On&#32;17/03/2023&#32;08:55,&#32;Nancy&#32;Lin&#32;(&#265=
19;&#27427;&#34722;)&#32;wrote:
&gt;&#32;&gt;&#32;&gt;&#32;On&#32;Thu,&#32;2023-03-16&#32;at&#32;12:36&#32;=
+0100,&#32;Krzysztof&#32;Kozlowski&#32;wrote:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;On&#32;16/03/2023&#32;10:53,&#32;Angelo=
Gioacchino&#32;Del&#32;Regno&#32;wrote:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Hello&#32;Krzysztof,&#32;Nancy=
,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Since&#32;this&#32;series&#32;=
has&#32;reached&#32;v29,&#32;can&#32;we&#32;please&#32;reach&#32;an
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;agreement
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;on&#32;the&#32;bindings
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;to&#32;use&#32;here,&#32;so&#3=
2;that&#32;we&#32;can&#32;get&#32;this&#32;finally&#32;upstreamed&#63;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;I&#32;will&#32;put&#32;some&#3=
2;examples&#32;to&#32;try&#32;to&#32;get&#32;this&#32;issue&#32;resolved.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;###&#32;Example&#32;1:&#32;Con=
strain&#32;the&#32;number&#32;of&#32;GCE&#32;entries&#32;to&#32;*seven*
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;array
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;elements&#32;(7x4!)
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;mediatek,g=
ce-client-reg:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#36;ref:&#32;/schemas/types.yaml#/definitions/phandle-array
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
maxItems:&#32;1
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
description:&#32;The&#32;register&#32;of&#32;display&#32;function&#32;block=
&#32;to
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;be&#32;set
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;by&#32;gce.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;There&#32;are&#32;4&#32;arguments&#32;in&#32;this&#32;property,&#=
32;gce&#32;node,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;subsys&#32;id,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;offset&#32;and
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;register&#32;size.&#32;The&#32;subsys&#32;id&#32;is&#32;defined&#=
32;in&#32;the&#32;gce
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;header&#32;of
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;each&#32;chips
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;include/dt-bindings/gce/&lt;chip&gt;-gce.h,&#32;mapping&#32;to&#3=
2;the
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;register&#32;of&#32;display
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;function&#32;block.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
items:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;minItems:&#32;28
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;maxItems:&#32;28
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;items:&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32=
;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;-----&#32;this&#32;block&=
#32;doesn&#39;t
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;seem&#32;to
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;get&#32;checked&#32;:&#92;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;-&#32;description:&#32;phandle&#32;of&#32;GCE
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;-&#32;description:&#32;GCE&#32;subsys&#32;id
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;-&#32;description:&#32;register&#32;offset
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;-&#32;description:&#32;register&#32;size
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;This&#32;is&#32;what&#32;we&#32;would&#=
32;like&#32;to&#32;have&#32;but&#32;it&#32;requires&#32;exception&#32;in
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;dtschema.&#32;Thus:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;###&#32;Example&#32;2:&#32;Don=
&#39;t&#32;care&#32;about&#32;constraining&#32;the&#32;number&#32;of
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;arguments
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;mediatek,g=
ce-client-reg:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#36;ref:&#32;/schemas/types.yaml#/definitions/phandle-array
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
maxItems:&#32;1
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
description:&#32;The&#32;register&#32;of&#32;display&#32;function&#32;block=
&#32;to
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;be&#32;set
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;by&#32;gce.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;There&#32;are&#32;4&#32;arguments&#32;in&#32;this&#32;property,&#=
32;gce&#32;node,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;subsys&#32;id,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;offset&#32;and
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;register&#32;size.&#32;The&#32;subsys&#32;id&#32;is&#32;defined&#=
32;in&#32;the&#32;gce
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;header&#32;of
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;each&#32;chips
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;include/dt-bindings/gce/&lt;chip&gt;-gce.h,&#32;mapping&#32;to&#3=
2;the
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;register&#32;of&#32;display
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;function&#32;block.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;use&#32;this.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Best&#32;regards,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Krzysztof
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;Hi&#32;Krzysztof,&#32;Angelo,
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;Thanks&#32;for&#32;the&#32;comment.
&gt;&#32;&gt;&#32;&gt;&#32;The&#32;Example&#32;2&#32;can&#32;pass&#32;dt_bi=
nding_check.
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;But&#32;the&#32;example&#32;in&#32;the&#32;bindi=
ng&#32;has&#32;7&#32;items&#32;[1]&#32;and&#32;dts&#32;[2].&#32;Does
&gt;&#32;&gt;&#32;&gt;&#32;the
&gt;&#32;&gt;&#32;&gt;&#32;&quot;maxItems:&#32;1&quot;&#32;affect&#32;any&#=
32;other&#32;schema&#32;or&#32;dts&#32;check&#63;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;Ah,&#32;then&#32;it&#32;should&#32;be&#32;maxItems:&#32;7=
,&#32;not&#32;1.
&gt;&#32;&gt;&#32;
&gt;&#32;
&gt;&#32;Keep&#32;in&#32;mind&#32;for&#32;your&#32;v30:
&gt;&#32;
&gt;&#32;maxItems:&#32;7&#32;will&#32;pass&#32;-&#32;but&#32;only&#32;if&#3=
2;minItems&#32;is&#32;*not*&#32;7&#32;:-)
&gt;&#32;
&gt;&#32;-&gt;&#32;(so,&#32;do&#32;not&#32;declare&#32;minItems,&#32;as&#32=
;default&#32;is&#32;1)&#32;&lt;-
&gt;&#32;
&gt;&#32;Regards,
&gt;&#32;Angelo
&gt;&#32;
Hi&#32;Angelo,

I&#32;still&#32;have&#32;one&#32;message&#32;[1]&#32;when&#32;runing&#32;dt=
_binding_check&#32;for&#32;&quot;example
2&#32;+&#32;maxItems:&#32;7&quot;&#32;[2].

[1]
/proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devicetr
ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:&#32;
hdr-engine@1c114000:&#32;mediatek,gce-client-reg:&#32;[[4294967295,&#32;7,&=
#32;16384,
4096,&#32;4294967295,&#32;7,&#32;20480,&#32;4096,&#32;4294967295,&#32;7,&#3=
2;28672,&#32;4096,
4294967295,&#32;7,&#32;36864,&#32;4096,&#32;4294967295,&#32;7,&#32;40960,&#=
32;4096,&#32;4294967295,&#32;7,
45056,&#32;4096,&#32;4294967295,&#32;7,&#32;49152,&#32;4096]]&#32;is&#32;to=
o&#32;short


[2]
&#32;&#32;&#32;mediatek,gce-client-reg:
&#32;&#32;&#32;&#32;&#32;&#36;ref:&#32;/schemas/types.yaml#/definitions/pha=
ndle-array
&#32;&#32;&#32;&#32;&#32;maxItems:&#32;7
&#32;&#32;&#32;&#32;&#32;description:&#32;The&#32;register&#32;of&#32;displ=
ay&#32;function&#32;block&#32;to&#32;be&#32;set&#32;by
gce.
&#32;&#32;&#32;&#32;&#32;&#32;&#32;There&#32;are&#32;4&#32;arguments&#32;in=
&#32;this&#32;property,&#32;gce&#32;node,&#32;subsys&#32;id,
offset&#32;and
&#32;&#32;&#32;&#32;&#32;&#32;&#32;register&#32;size.&#32;The&#32;subsys&#3=
2;id&#32;is&#32;defined&#32;in&#32;the&#32;gce&#32;header&#32;of
each&#32;chips
&#32;&#32;&#32;&#32;&#32;&#32;&#32;include/dt-bindings/gce/&lt;chip&gt;-gce=
.h,&#32;mapping&#32;to&#32;the&#32;register&#32;of
display
&#32;&#32;&#32;&#32;&#32;&#32;&#32;function&#32;block.

Regards,
Nancy


&gt;&#32;&gt;&#32;Best&#32;regards,
&gt;&#32;&gt;&#32;Krzysztof
&gt;&#32;&gt;&#32;

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
om/d/msgid/clang-built-linux/5695b8e5ab8339764c646ee581529cb6cee04346.camel=
%40mediatek.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/clang-built-linux/5695b8e5ab8339764c646ee581529cb6cee04346.c=
amel%40mediatek.com</a>.<br />

--__=_Part_Boundary_007_2045131514.1599548515
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2023-03-17 at 10:37 +0100, AngeloGioacchino Del Regno wrote:
> Il 17/03/23 10:03, Krzysztof Kozlowski ha scritto:
> > On 17/03/2023 08:55, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:
> > > On Thu, 2023-03-16 at 12:36 +0100, Krzysztof Kozlowski wrote:
> > > > On 16/03/2023 10:53, AngeloGioacchino Del Regno wrote:
> > > >=20
> > > > > Hello Krzysztof, Nancy,
> > > > >=20
> > > > > Since this series has reached v29, can we please reach an
> > > > > agreement
> > > > > on the bindings
> > > > > to use here, so that we can get this finally upstreamed?
> > > > >=20
> > > > > I will put some examples to try to get this issue resolved.
> > > > >=20
> > > > > ### Example 1: Constrain the number of GCE entries to *seven*
> > > > > array
> > > > > elements (7x4!)
> > > > >=20
> > > > >     mediatek,gce-client-reg:
> > > > >       $ref: /schemas/types.yaml#/definitions/phandle-array
> > > > >       maxItems: 1
> > > > >       description: The register of display function block to
> > > > > be set
> > > > > by gce.
> > > > >         There are 4 arguments in this property, gce node,
> > > > > subsys id,
> > > > > offset and
> > > > >         register size. The subsys id is defined in the gce
> > > > > header of
> > > > > each chips
> > > > >         include/dt-bindings/gce/<chip>-gce.h, mapping to the
> > > > > register of display
> > > > >         function block.
> > > > >       items:
> > > > >         minItems: 28
> > > > >         maxItems: 28
> > > > >         items:                     <----- this block doesn't
> > > > > seem to
> > > > > get checked :\
> > > > >           - description: phandle of GCE
> > > > >           - description: GCE subsys id
> > > > >           - description: register offset
> > > > >           - description: register size
> > > >=20
> > > > This is what we would like to have but it requires exception in
> > > > dtschema. Thus:
> > > >=20
> > > > >=20
> > > > >=20
> > > > > ### Example 2: Don't care about constraining the number of
> > > > > arguments
> > > > >=20
> > > > >     mediatek,gce-client-reg:
> > > > >       $ref: /schemas/types.yaml#/definitions/phandle-array
> > > > >       maxItems: 1
> > > > >       description: The register of display function block to
> > > > > be set
> > > > > by gce.
> > > > >         There are 4 arguments in this property, gce node,
> > > > > subsys id,
> > > > > offset and
> > > > >         register size. The subsys id is defined in the gce
> > > > > header of
> > > > > each chips
> > > > >         include/dt-bindings/gce/<chip>-gce.h, mapping to the
> > > > > register of display
> > > > >         function block.
> > > >=20
> > > > use this.
> > > >=20
> > > > Best regards,
> > > > Krzysztof
> > >=20
> > >=20
> > > Hi Krzysztof, Angelo,
> > >=20
> > > Thanks for the comment.
> > > The Example 2 can pass dt_binding_check.
> > >=20
> > > But the example in the binding has 7 items [1] and dts [2]. Does
> > > the
> > > "maxItems: 1" affect any other schema or dts check?
> >=20
> > Ah, then it should be maxItems: 7, not 1.
> >=20
>=20
> Keep in mind for your v30:
>=20
> maxItems: 7 will pass - but only if minItems is *not* 7 :-)
>=20
> -> (so, do not declare minItems, as default is 1) <-
>=20
> Regards,
> Angelo
>=20
Hi Angelo,

I still have one message [1] when runing dt_binding_check for "example
2 + maxItems: 7" [2].

[1]
/proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devicetr
ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:=20
hdr-engine@1c114000: mediatek,gce-client-reg: [[4294967295, 7, 16384,
4096, 4294967295, 7, 20480, 4096, 4294967295, 7, 28672, 4096,
4294967295, 7, 36864, 4096, 4294967295, 7, 40960, 4096, 4294967295, 7,
45056, 4096, 4294967295, 7, 49152, 4096]] is too short


[2]
   mediatek,gce-client-reg:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     maxItems: 7
     description: The register of display function block to be set by
gce.
       There are 4 arguments in this property, gce node, subsys id,
offset and
       register size. The subsys id is defined in the gce header of
each chips
       include/dt-bindings/gce/<chip>-gce.h, mapping to the register of
display
       function block.

Regards,
Nancy


> > Best regards,
> > Krzysztof
> >=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/5695b8e5ab8339764c646ee581529cb6cee04346.camel%40mediatek=
.com.

--__=_Part_Boundary_007_2045131514.1599548515--

