Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBRMD4WQAMGQEAP6MV4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id D20946C29DD
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Mar 2023 06:33:59 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id m12-20020a62f20c000000b0062612a76a08sf5973546pfh.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Mar 2023 22:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1679376838;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qzk0vbRYYim6jalKOZGaGe4EVZaDG5lDi1X5jOvAMq0=;
        b=OqZTtpKQPzJCN0rfvBv5gKMXGjNwYMnhmySU95skkI2IwCW5qNcmGcbzo2syYTxkWS
         26Kfm/ivdgJCZ/IeqRCQM7NOlydcUUtn70fHFVdjAqsOd5paLMNTgTFWWEHRUVtn0Zq3
         eTys0TbRe5soxbbATcMJ+zhr6gL52s2/3uFHbdc0sKRwmdrSHtez20JtVpEzg0HHiMUE
         6HterYWLtEL7M0LpG+CVuJqvozfoh3BzCIrk1zRnR5egsRR8D6OjBq8R2/6IOjoNNfmX
         rNfSP4uxQQCc1ooT387r6hjN7Eg/QpoyeUyFu7yLBJK1x05FH5s1BPoxFv+hEQ2PIXDP
         HFjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679376838;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qzk0vbRYYim6jalKOZGaGe4EVZaDG5lDi1X5jOvAMq0=;
        b=2/wsrhsWvh1T7/Pw7fBYbIc3ZnUEkCBu30bYYDqU0/fzTI/QndN55/SUsqGsCArEwH
         12LCe5vfJfT9N90LshEzU3FvES4Pm5eohwowmtd6NRW24nsqAjsVBLGcn/wWpFzk2lVw
         p0NFDRViSspQhjPHIEcq3rS60grshEHQoH32vRDgljHbBboriIfWzN4o0N/DRN3w3P9p
         MtCenHqmOk/6/skUHAPblV2FvKLBJgstGZFSzD7ry1K+b7nqAsGK9p4o55PIR6ysrSKo
         rG44UOjxeeLvUVywmt6EVTKqZ+ref16hQeudy3ov2HNyRZWQ+xTxEApr34PR4IiQ9w2j
         Y8tw==
X-Gm-Message-State: AO0yUKUSJBmcRLjG2yCoCVPh3mUXgAUMNXVdWv3p+9r5WnL+wtY+iji9
	op622vPEdOg4lnqp7n0j6/s=
X-Google-Smtp-Source: AK7set+7qDPFB++ZZKGnOlHp754SzA0AWZE4O9Wx5ZbGko1FO3bEuYy0A2CkzfwFun3KZGDCdiYuyQ==
X-Received: by 2002:a05:6a00:80d7:b0:626:23a1:7b9d with SMTP id ei23-20020a056a0080d700b0062623a17b9dmr476488pfb.6.1679376838044;
        Mon, 20 Mar 2023 22:33:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d2ca:b0:19c:b3c9:49d5 with SMTP id
 n10-20020a170902d2ca00b0019cb3c949d5ls13334624plc.6.-pod-prod-gmail; Mon, 20
 Mar 2023 22:33:57 -0700 (PDT)
X-Received: by 2002:a17:90b:1d84:b0:234:1a60:a6b0 with SMTP id pf4-20020a17090b1d8400b002341a60a6b0mr1312997pjb.34.1679376837268;
        Mon, 20 Mar 2023 22:33:57 -0700 (PDT)
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id s3-20020a17090aba0300b0023d1e5feec0si389386pjr.0.2023.03.20.22.33.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Mar 2023 22:33:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: f83d0ae6c7a911edbd2e61cc88cc8f98-20230321
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:e6cfa64e-def0-40ae-83e3-cae48dc65df7,IP:0,U
	RL:0,TC:0,Content:-5,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-META: VersionHash:120426c,CLOUDID:b001fd28-564d-42d9-9875-7c868ee415ec,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-UUID: f83d0ae6c7a911edbd2e61cc88cc8f98-20230321
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 422781930; Tue, 21 Mar 2023 13:33:54 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Tue, 21 Mar 2023 13:33:53 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Tue, 21 Mar 2023 13:33:53 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lf3XRcZ5EGK+Wils+nm/9cm8EoX/k7C6f00CMxtSsYsed3u7FUKUIPciXFvouo3s7h2HD6Zlr+FEHOUDJboJNekwwboQYS0N6xQ9JbR4qgvwSnhD0Y69Jl7PicOQwHU5TWqKZDjvl4j5iD9ACG3KTlom788SD4fjvVM8D5hGs0GTuVscH18kMc3i8TweWIcrp+s2gLzEaLNjwAb0BTCIK0nmmEIFu4oMCcjke2udQEXZuI8PKX13DZ5BtYoIYjfWWzU0W2bykz4RMxbUfSec0FF6BsrfZtGt0GEWHwwcEhGufErsMcOoTcmE6Pfce+r+eATv9rprdiDRc4XPla0+1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B60lQ2Lw4aKnSa1DRnnxZqOW1rKlQS009mpLp7lm5F4=;
 b=iiaQW62wT8cFSvQuqwMM6gT0nKTv5OeugNdurzY8oEf3QHe3sIikYCprEQrQ9tk21WIu0V0yIdFEMXMwPB/tDhwWhZ0Q+UFf+/OoVpwywcAw6IKgxqB2YosTnMTP6C/JRu5gZmHEwVCPtXOt7+nVoEVP42c5QrOZVV4iiN5DjMUX7FTKIcZxCLeER7GIWjE3TYTDya0pdsnRhb4DianmDLMXtrTmEM9sTwLlJlrTB54JbW3c8He3GqF0xtwpSxads1GGZSD1FJaOHcUaKHNmRrhButE5w6oMbZ0OyQHL3Lh6mj1wsC6u0Bw/Yc9jZOaxjDgHLK6j9bYEbaXJI6dx3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com (2603:1096:820:8::11)
 by SEZPR03MB6644.apcprd03.prod.outlook.com (2603:1096:101:7c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 05:33:50 +0000
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::dd54:60c1:df32:bc65]) by KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::dd54:60c1:df32:bc65%4]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 05:33:50 +0000
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
Thread-Index: AQHZGcrXQb/1V2Icz0ST2hH4Pb2de677rZiAgAA66wCAAYJcAIAAA1eAgAA4mYCAABzVgIABVIIAgAATFQCAAAmAAIAABASAgAABlQCABf+CAA==
Date: Tue, 21 Mar 2023 05:33:50 +0000
Message-ID: <74dca3fa90d5cd78286281e2ced45842bee21f91.camel@mediatek.com>
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
	 <5695b8e5ab8339764c646ee581529cb6cee04346.camel@mediatek.com>
	 <34c758c0-cbbb-da11-6263-e7b084040ed6@collabora.com>
In-Reply-To: <34c758c0-cbbb-da11-6263-e7b084040ed6@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5175:EE_|SEZPR03MB6644:EE_
x-ms-office365-filtering-correlation-id: fe3baa8d-bdc6-485a-bede-08db29cdd9d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tljLYhhPln5JaBPS+1b1Xyu+mHsMSc0mt+QH16dbuE1zYaAcL96+KNfacpURrY2VUvIuntS8fM4OrNn3pg6OSvfPFeIA82wZtIQVgCB5qJXTToI35HcBjkxIB8uA3q8nkxnG7tzQvElds41DiICdFAhwRuKQkXT88HXYGxvAj7FxGlKvsZQQQ61MjHcy8dC65wSthC8wD82HIZGUUPSp+dS/jm/9Y7drttlSE2D9c0o23RBaB6zvBOjhM47jw5iH0r5no21PhaiQInb3BR/RX98LLfivhWBtT5L2JT+l68/2FqHQ5yFm0jrHF5gazJmWIMKYr1eMRq5ULb0VasguvqlKRvMppg0LOa6InUY79BqLjwGzfZlVdEDrS9SMMyfEcRIklIP4NfPZQItCty9O9fzUhiU2JrEgblUGeWL0IL3QoCT2xyrHI15XSULNEYIV2k6LZLUeZsDe1CqlUOScCNDwrwx86qIJsTWWA4xgtOUQFmz/8zHeBvUPvU1RnziWqpGdKl7HXXZo/Y0takwP2p+eZmeK/O8obhM/CIw4AVxT0JNMO7fh8bekcpRNH+S9RLYaUFviE/AO7i3BSWqZAljETKTT9Qh2N4rPehLXDABjWJtD9ou36GRknqlPmLXubQf8+js4Rhd1rndRESC3/eK0ITROxgxuC9pK6bkR0HquOkwuscWSk0KTXb58NmYP
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5175.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(366004)(39860400002)(396003)(376002)(451199018)(2616005)(54906003)(83380400001)(86362001)(91956017)(38100700002)(38070700005)(122000001)(110136005)(8936002)(66446008)(4326008)(8676002)(64756008)(66556008)(36756003)(85182001)(66476007)(66946007)(2906002)(41300700001)(76116006)(5660300002)(53546011)(186003)(26005)(6486002)(6506007)(478600001)(6512007)(71200400001)(316002)(966005)(7416002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?andtVUNnQjUxSGx3V2xkc1BycnQyajdGSHU5bkwyT0F6YkF5NnJZUzNSamJz?=
 =?utf-8?B?MURRaUV6bTNWZ01TQXFBUVBpZjBkV3RVR3ROVEFTT1QwZXpWRHpPTXBIeFNq?=
 =?utf-8?B?M2hyek10Und5eWJoK0ZMeUYwam9VSVVoN2owUXVtaVZvWU53MHppeDBHLytl?=
 =?utf-8?B?cDhnbEZwLzNmT2dHUExtYWxDYmw2UHJFeHFJZ1RrT2VqS1lWeEdCeEJ2LzBY?=
 =?utf-8?B?UG5zZC9rZkhiWVhtRlEwMU9GMThEM1RTdUZGaStmYUxabXMyc0hsZno1SXND?=
 =?utf-8?B?cEpXc2REaStKWFdUSWFpWmR3NmIwL3U3Snd6NUZybTZWUUh6T2VDOGJXMkxX?=
 =?utf-8?B?TFZYM0hQSVBienZHR0Q3bDhwTXc2d2hQcDJ2eVVmSDByajZ4QUd4ZTdtSHZx?=
 =?utf-8?B?Z2tleGZuUVgvUEJ5T1V3d0xNNUM2c1krYm02UkVRTFFCWlZuNHlPVk5HQTM2?=
 =?utf-8?B?Sko2ZnVsblNYR2E4MCtpYzNDM1pDWlZ6ZGd0a1BHQXZjUWlKNFZsUFBPNnpz?=
 =?utf-8?B?SFhYb0t4Zjc4NkljVjM3LzJlS1FKRjZOV3gvczFWWktML1RBL0U3ajBUS1d0?=
 =?utf-8?B?cG9TN08yV0drM1JTTHpWc1JrU1NoZHp0L3B6SFB2S1FZbU5DeEpXdkFxR3NQ?=
 =?utf-8?B?NmZqby8xRysxREtqV0xXVFZOZEdZbk9vOFhYbVl3ZFRsRDhWc2x4MU42VjNL?=
 =?utf-8?B?aEdUbE5VZ2hXY0JlenMxU250MUhrcjhDd3V5SjhlUE1rZE9DaGR6dWxoZTEr?=
 =?utf-8?B?Vlp5cDhnYzJwaEJoKzltdTRYL1RsdVVWNDZ4dFRuWkdweFA2T0VLYmIyNEsx?=
 =?utf-8?B?cDdyUkhJb1V0THM2akVjOXcwNU1pNzFWc01KV3NRbSs4TVZwaytkSVBNRGRD?=
 =?utf-8?B?OFdJaXJYeDhCQ3RRcVBMT1pza0s3ZkJoNWtoL3drS1ZCaGk2cDltOVI3ejJk?=
 =?utf-8?B?OFdDNlFad2Z4RUtud0F4NmhxRGxRYlUzL3hEeWU1eFhWUlgvcWU2NlRIY1RW?=
 =?utf-8?B?WGJUZklPVzE3K2srZ3BPbElOS2MzT2N5ZjMwRnl2N3NmQUVvQzNiWUpqS0lv?=
 =?utf-8?B?RS9sY2NKdW8yU2U2RXp0OEZNWWxFMjdXemc0aFNKcXozeG9aSlVEVldqalF0?=
 =?utf-8?B?Y2hxbDM1U0t1YmRBWkFINWhKRjlPRWsybGdud3prSzg5THJ3Z2twQkFPSGkx?=
 =?utf-8?B?UHo1NFAxZDM0NXlNOFc4WXNnRmVKcG5kc2NNNnFVRWczKy9KSk9DZUE5ZU5i?=
 =?utf-8?B?bmlxd0tBTjdzd2h4WnBxMnhKaTcrdzhHSysvZHlIeGJzaXp1eXlRUHdXS1ZX?=
 =?utf-8?B?eWdtWHlLUWF1WHFFdmhYRGtzVkpvbVVXZDcrSlh0ekRrZERrakRZY2NubUk1?=
 =?utf-8?B?SVh5c0Z5dVF3ZWpiSXM1bTBhb3loZDdzWWZuNW5NTzB4SVJubTdYTllTckZY?=
 =?utf-8?B?eWYwQThlWmhScEc2d0dsaEZQMGE1Uy9DUXR0K2wzUTZmTEFjLzdmNlhyS3lo?=
 =?utf-8?B?UjJ0c25hR2xCbG5oVkVzcUFaZ0poT2xTb2VhbHd2dWZDQkozVm02QkF3TmFm?=
 =?utf-8?B?eWI0OWZydGlNbVQwdzNsL2xGMXpMT3NnY2tWNDZ6V2s4TXFhbXJJUzVKZTlR?=
 =?utf-8?B?WDVyRXZOaEg5VGFMZHlHSXI3cXpURi8zQjlBZERoOVFmdTlyYkJZQXJ4c09V?=
 =?utf-8?B?SE9TUGRxd0t2NDNzYWUvU3gvODVRVHBDQ3U5SElXWHBBV3FsZkhHNVkyYmUz?=
 =?utf-8?B?UDA4RVZOWmx0dWtGNlExWWxKUnNkWWdYRk04WTg5TkNEdVZEY1lzU05CR2o1?=
 =?utf-8?B?a2VROTdoeUZYeWxaUEZFcVZtZ3A1eUYzL1VnVWJpQ012VDd2eHdVT3BHSlFz?=
 =?utf-8?B?bFRadDFid2dVU1lsUjFqRjRHUi9zRVV1TnZLY2ZON0dBeExnSUVvSWg0Unhh?=
 =?utf-8?B?MmxMQ1FKdkVuelZhVUhSY2tINStNSzFXdVZJdlI0emRIbjAzTmJ6RUdOY1or?=
 =?utf-8?B?S0Rwa1hyUkV6MEY2ZjlmUkJmakJaeHRxMzhGa2Z2R1R3YzN6d1I5Y25mdnBX?=
 =?utf-8?B?aGN6N1ZzZ3YyUnc2UHpKd2R2SWEvWU1FVG9Yb2pTbVNMK2V2eS9ja1hJZEJv?=
 =?utf-8?B?c3ZlbjdFTHloWXJtV09lcDZzUll1UXZlcFpNNUdIZE83VXdENVc2TnltQ2Ft?=
 =?utf-8?B?T2c9PQ==?=
Content-ID: <2207BA0D6D02F94D9B19246B9A05FBCE@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5175.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe3baa8d-bdc6-485a-bede-08db29cdd9d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2023 05:33:50.1934
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W4gvItNTGFwbGYqdFyYMsGIVMrdPT/lahy4H0TwZtNp3/Ko3KCPr27V3EGMwrwFJwXdlZgbWeuo5OMIE7CsWMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB6644
Content-Type: multipart/alternative;
	boundary="__=_Part_Boundary_006_91262670.1930372964"
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=Mm6TSnQC;       dkim=neutral
 (body hash did not verify) header.i=@mediateko365.onmicrosoft.com
 header.s=selector2-mediateko365-onmicrosoft-com header.b=Qu+xMGqP;
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

--__=_Part_Boundary_006_91262670.1930372964
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<pre>
Dear&#32;Angelo,

Sorry&#32;for&#32;late&#32;reply.

On&#32;Fri,&#32;2023-03-17&#32;at&#32;10:58&#32;+0100,&#32;AngeloGioacchino=
&#32;Del&#32;Regno&#32;wrote:
&gt;&#32;Il&#32;17/03/23&#32;10:52,&#32;Nancy&#32;Lin&#32;(&#26519;&#27427;=
&#34722;)&#32;ha&#32;scritto:
&gt;&#32;&gt;&#32;On&#32;Fri,&#32;2023-03-17&#32;at&#32;10:37&#32;+0100,&#3=
2;AngeloGioacchino&#32;Del&#32;Regno
&gt;&#32;&gt;&#32;wrote:
&gt;&#32;&gt;&#32;&gt;&#32;Il&#32;17/03/23&#32;10:03,&#32;Krzysztof&#32;Koz=
lowski&#32;ha&#32;scritto:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;On&#32;17/03/2023&#32;08:55,&#32;Nancy&=
#32;Lin&#32;(&#26519;&#27427;&#34722;)&#32;wrote:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;On&#32;Thu,&#32;2023-03-16&#32=
;at&#32;12:36&#32;+0100,&#32;Krzysztof&#32;Kozlowski&#32;wrote:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;On&#32;16/03/2023&#32=
;10:53,&#32;AngeloGioacchino&#32;Del&#32;Regno&#32;wrote:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Hello&#32;Kr=
zysztof,&#32;Nancy,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Since&#32;th=
is&#32;series&#32;has&#32;reached&#32;v29,&#32;can&#32;we&#32;please&#32;re=
ach&#32;an
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;agreement
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;on&#32;the&#=
32;bindings
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;to&#32;use&#=
32;here,&#32;so&#32;that&#32;we&#32;can&#32;get&#32;this&#32;finally&#32;up=
streamed&#63;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;I&#32;will&#=
32;put&#32;some&#32;examples&#32;to&#32;try&#32;to&#32;get&#32;this&#32;iss=
ue
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;resolved.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;###&#32;Exam=
ple&#32;1:&#32;Constrain&#32;the&#32;number&#32;of&#32;GCE&#32;entries&#32;=
to
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;*seven*
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;array
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;elements&#32=
;(7x4!)
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;mediatek,gce-client-reg:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#36;ref:&#32;/schemas/types.yaml#/definitions/phand=
le-
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;array
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;maxItems:&#32;1
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;description:&#32;The&#32;register&#32;of&#32;display=
&#32;function
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;block&#32;to
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;be&#32;set
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;by&#32;gce.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;There&#32;are&#32;4&#32;arguments&#32;in&#=
32;this&#32;property,&#32;gce
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;node,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;subsys&#32;i=
d,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;offset&#32;a=
nd
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;register&#32;size.&#32;The&#32;subsys&#32;=
id&#32;is&#32;defined&#32;in&#32;the
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;gce
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;header&#32;o=
f
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;each&#32;chi=
ps
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;include/dt-bindings/gce/&lt;chip&gt;-gce.h=
,&#32;mapping&#32;to
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;the
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;register&#32=
;of&#32;display
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;function&#32;block.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;items:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;minItems:&#32;28
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;maxItems:&#32;28
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;items:&#32;&#32;&#32;&#32;&#32;&#32;&#32;&=
#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;--=
---&#32;this&#32;block
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;doesn&#39;t
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;seem&#32;to
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;get&#32;chec=
ked&#32;:&#92;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;phandle&#=
32;of&#32;GCE
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;GCE&#32;s=
ubsys&#32;id
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;register&=
#32;offset
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;register&=
#32;size
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;This&#32;is&#32;what&=
#32;we&#32;would&#32;like&#32;to&#32;have&#32;but&#32;it&#32;requires
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;exception&#32;in
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;dtschema.&#32;Thus:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;###&#32;Exam=
ple&#32;2:&#32;Don&#39;t&#32;care&#32;about&#32;constraining&#32;the&#32;nu=
mber
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;of
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;arguments
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;mediatek,gce-client-reg:
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#36;ref:&#32;/schemas/types.yaml#/definitions/phand=
le-
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;array
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;maxItems:&#32;1
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;description:&#32;The&#32;register&#32;of&#32;display=
&#32;function
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;block&#32;to
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;be&#32;set
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;by&#32;gce.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;There&#32;are&#32;4&#32;arguments&#32;in&#=
32;this&#32;property,&#32;gce
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;node,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;subsys&#32;i=
d,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;offset&#32;a=
nd
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;register&#32;size.&#32;The&#32;subsys&#32;=
id&#32;is&#32;defined&#32;in&#32;the
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;gce
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;header&#32;o=
f
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;each&#32;chi=
ps
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;include/dt-bindings/gce/&lt;chip&gt;-gce.h=
,&#32;mapping&#32;to
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;the
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;register&#32=
;of&#32;display
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#=
32;&#32;&#32;&#32;&#32;&#32;&#32;function&#32;block.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;use&#32;this.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Best&#32;regards,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Krzysztof
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Hi&#32;Krzysztof,&#32;Angelo,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Thanks&#32;for&#32;the&#32;com=
ment.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;The&#32;Example&#32;2&#32;can&=
#32;pass&#32;dt_binding_check.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;But&#32;the&#32;example&#32;in=
&#32;the&#32;binding&#32;has&#32;7&#32;items&#32;[1]&#32;and&#32;dts&#32;[2=
].
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Does
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;the
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;&quot;maxItems:&#32;1&quot;&#3=
2;affect&#32;any&#32;other&#32;schema&#32;or&#32;dts&#32;check&#63;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Ah,&#32;then&#32;it&#32;should&#32;be&#=
32;maxItems:&#32;7,&#32;not&#32;1.
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;Keep&#32;in&#32;mind&#32;for&#32;your&#32;v30:
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;maxItems:&#32;7&#32;will&#32;pass&#32;-&#32;but&=
#32;only&#32;if&#32;minItems&#32;is&#32;*not*&#32;7&#32;:-)
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;-&gt;&#32;(so,&#32;do&#32;not&#32;declare&#32;mi=
nItems,&#32;as&#32;default&#32;is&#32;1)&#32;&lt;-
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;Regards,
&gt;&#32;&gt;&#32;&gt;&#32;Angelo
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;Hi&#32;Angelo,
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;I&#32;still&#32;have&#32;one&#32;message&#32;[1]&#32;when=
&#32;runing&#32;dt_binding_check&#32;for
&gt;&#32;&gt;&#32;&quot;example
&gt;&#32;&gt;&#32;2&#32;+&#32;maxItems:&#32;7&quot;&#32;[2].
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;[1]
&gt;&#32;&gt;&#32;/proj/mtk19347/cros/src/third_party/kernel/v5.10/Document=
ation/devi
&gt;&#32;&gt;&#32;cetr
&gt;&#32;&gt;&#32;ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:
&gt;&#32;&gt;&#32;hdr-engine@1c114000:&#32;mediatek,gce-client-reg:&#32;[[4=
294967295,&#32;7,
&gt;&#32;&gt;&#32;16384,
&gt;&#32;&gt;&#32;4096,&#32;4294967295,&#32;7,&#32;20480,&#32;4096,&#32;429=
4967295,&#32;7,&#32;28672,&#32;4096,
&gt;&#32;&gt;&#32;4294967295,&#32;7,&#32;36864,&#32;4096,&#32;4294967295,&#=
32;7,&#32;40960,&#32;4096,&#32;4294967295,
&gt;&#32;&gt;&#32;7,
&gt;&#32;&gt;&#32;45056,&#32;4096,&#32;4294967295,&#32;7,&#32;49152,&#32;40=
96]]&#32;is&#32;too&#32;short
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;[2]
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;mediatek,gce-client-reg:
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#36;ref:&#32;/schemas/type=
s.yaml#/definitions/phandle-array
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;maxItems:&#32;7
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;description:&#32;The&#32;re=
gister&#32;of&#32;display&#32;function&#32;block&#32;to&#32;be&#32;set
&gt;&#32;&gt;&#32;by
&gt;&#32;&gt;&#32;gce.
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;There&#32;are&#32=
;4&#32;arguments&#32;in&#32;this&#32;property,&#32;gce&#32;node,&#32;subsys
&gt;&#32;&gt;&#32;id,
&gt;&#32;&gt;&#32;offset&#32;and
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;register&#32;size=
.&#32;The&#32;subsys&#32;id&#32;is&#32;defined&#32;in&#32;the&#32;gce&#32;h=
eader
&gt;&#32;&gt;&#32;of
&gt;&#32;&gt;&#32;each&#32;chips
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;include/dt-bindin=
gs/gce/&lt;chip&gt;-gce.h,&#32;mapping&#32;to&#32;the
&gt;&#32;&gt;&#32;register&#32;of
&gt;&#32;&gt;&#32;display
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;function&#32;bloc=
k.
&gt;&#32;&gt;&#32;
&gt;&#32;
&gt;&#32;Maybe&#32;I&#39;m&#32;wrong&#32;about&#32;the&#32;&quot;do&#32;not=
&#32;declare&#32;minItems&quot;...&#32;try&#32;with
&gt;&#32;
&gt;&#32;minItems:&#32;1
&gt;&#32;maxItems:&#32;7
&gt;&#32;
&gt;&#32;
&gt;&#32;...does&#32;it&#32;work&#32;now&#63;
&gt;&#32;

Yes,&#32;It&#32;works&#32;well&#32;with&#32;&quot;example2&#32;+&#32;minIte=
ms:1&#32;+&#32;maxItems:&#32;7&quot;&#32;[1]

[1]
&#32;&#32;mediatek,gce-client-reg:
&#32;&#32;&#32;&#32;&#36;ref:&#32;/schemas/types.yaml#/definitions/phandle-=
array
&#32;&#32;&#32;&#32;minItems:&#32;1
&#32;&#32;&#32;&#32;maxItems:&#32;7
&#32;&#32;&#32;&#32;description:&#32;The&#32;register&#32;of&#32;display&#3=
2;function&#32;block&#32;to&#32;be&#32;set&#32;by
gce.
&#32;&#32;&#32;&#32;&#32;&#32;There&#32;are&#32;4&#32;arguments&#32;in&#32;=
this&#32;property,&#32;gce&#32;node,&#32;subsys&#32;id,
offset&#32;and
&#32;&#32;&#32;&#32;&#32;&#32;register&#32;size.&#32;The&#32;subsys&#32;id&=
#32;is&#32;defined&#32;in&#32;the&#32;gce&#32;header&#32;of&#32;each
chips
&#32;&#32;&#32;&#32;&#32;&#32;include/dt-bindings/gce/&lt;chip&gt;-gce.h,&#=
32;mapping&#32;to&#32;the&#32;register&#32;of
display
&#32;&#32;&#32;&#32;&#32;&#32;function&#32;block.

Regards,
Nancy


&gt;&#32;&gt;&#32;Regards,
&gt;&#32;&gt;&#32;Nancy
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Best&#32;regards,
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;Krzysztof
&gt;&#32;&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;
&gt;&#32;
&gt;&#32;
&gt;&#32;
&gt;&#32;_______________________________________________
&gt;&#32;linux-arm-kernel&#32;mailing&#32;list
&gt;&#32;linux-arm-kernel@lists.infradead.org
&gt;&#32;http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

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
om/d/msgid/clang-built-linux/74dca3fa90d5cd78286281e2ced45842bee21f91.camel=
%40mediatek.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/clang-built-linux/74dca3fa90d5cd78286281e2ced45842bee21f91.c=
amel%40mediatek.com</a>.<br />

--__=_Part_Boundary_006_91262670.1930372964
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Angelo,

Sorry for late reply.

On Fri, 2023-03-17 at 10:58 +0100, AngeloGioacchino Del Regno wrote:
> Il 17/03/23 10:52, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) ha scritto:
> > On Fri, 2023-03-17 at 10:37 +0100, AngeloGioacchino Del Regno
> > wrote:
> > > Il 17/03/23 10:03, Krzysztof Kozlowski ha scritto:
> > > > On 17/03/2023 08:55, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:
> > > > > On Thu, 2023-03-16 at 12:36 +0100, Krzysztof Kozlowski wrote:
> > > > > > On 16/03/2023 10:53, AngeloGioacchino Del Regno wrote:
> > > > > >=20
> > > > > > > Hello Krzysztof, Nancy,
> > > > > > >=20
> > > > > > > Since this series has reached v29, can we please reach an
> > > > > > > agreement
> > > > > > > on the bindings
> > > > > > > to use here, so that we can get this finally upstreamed?
> > > > > > >=20
> > > > > > > I will put some examples to try to get this issue
> > > > > > > resolved.
> > > > > > >=20
> > > > > > > ### Example 1: Constrain the number of GCE entries to
> > > > > > > *seven*
> > > > > > > array
> > > > > > > elements (7x4!)
> > > > > > >=20
> > > > > > >      mediatek,gce-client-reg:
> > > > > > >        $ref: /schemas/types.yaml#/definitions/phandle-
> > > > > > > array
> > > > > > >        maxItems: 1
> > > > > > >        description: The register of display function
> > > > > > > block to
> > > > > > > be set
> > > > > > > by gce.
> > > > > > >          There are 4 arguments in this property, gce
> > > > > > > node,
> > > > > > > subsys id,
> > > > > > > offset and
> > > > > > >          register size. The subsys id is defined in the
> > > > > > > gce
> > > > > > > header of
> > > > > > > each chips
> > > > > > >          include/dt-bindings/gce/<chip>-gce.h, mapping to
> > > > > > > the
> > > > > > > register of display
> > > > > > >          function block.
> > > > > > >        items:
> > > > > > >          minItems: 28
> > > > > > >          maxItems: 28
> > > > > > >          items:                     <----- this block
> > > > > > > doesn't
> > > > > > > seem to
> > > > > > > get checked :\
> > > > > > >            - description: phandle of GCE
> > > > > > >            - description: GCE subsys id
> > > > > > >            - description: register offset
> > > > > > >            - description: register size
> > > > > >=20
> > > > > > This is what we would like to have but it requires
> > > > > > exception in
> > > > > > dtschema. Thus:
> > > > > >=20
> > > > > > >=20
> > > > > > >=20
> > > > > > > ### Example 2: Don't care about constraining the number
> > > > > > > of
> > > > > > > arguments
> > > > > > >=20
> > > > > > >      mediatek,gce-client-reg:
> > > > > > >        $ref: /schemas/types.yaml#/definitions/phandle-
> > > > > > > array
> > > > > > >        maxItems: 1
> > > > > > >        description: The register of display function
> > > > > > > block to
> > > > > > > be set
> > > > > > > by gce.
> > > > > > >          There are 4 arguments in this property, gce
> > > > > > > node,
> > > > > > > subsys id,
> > > > > > > offset and
> > > > > > >          register size. The subsys id is defined in the
> > > > > > > gce
> > > > > > > header of
> > > > > > > each chips
> > > > > > >          include/dt-bindings/gce/<chip>-gce.h, mapping to
> > > > > > > the
> > > > > > > register of display
> > > > > > >          function block.
> > > > > >=20
> > > > > > use this.
> > > > > >=20
> > > > > > Best regards,
> > > > > > Krzysztof
> > > > >=20
> > > > >=20
> > > > > Hi Krzysztof, Angelo,
> > > > >=20
> > > > > Thanks for the comment.
> > > > > The Example 2 can pass dt_binding_check.
> > > > >=20
> > > > > But the example in the binding has 7 items [1] and dts [2].
> > > > > Does
> > > > > the
> > > > > "maxItems: 1" affect any other schema or dts check?
> > > >=20
> > > > Ah, then it should be maxItems: 7, not 1.
> > > >=20
> > >=20
> > > Keep in mind for your v30:
> > >=20
> > > maxItems: 7 will pass - but only if minItems is *not* 7 :-)
> > >=20
> > > -> (so, do not declare minItems, as default is 1) <-
> > >=20
> > > Regards,
> > > Angelo
> > >=20
> >=20
> > Hi Angelo,
> >=20
> > I still have one message [1] when runing dt_binding_check for
> > "example
> > 2 + maxItems: 7" [2].
> >=20
> > [1]
> > /proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devi
> > cetr
> > ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:
> > hdr-engine@1c114000: mediatek,gce-client-reg: [[4294967295, 7,
> > 16384,
> > 4096, 4294967295, 7, 20480, 4096, 4294967295, 7, 28672, 4096,
> > 4294967295, 7, 36864, 4096, 4294967295, 7, 40960, 4096, 4294967295,
> > 7,
> > 45056, 4096, 4294967295, 7, 49152, 4096]] is too short
> >=20
> >=20
> > [2]
> >     mediatek,gce-client-reg:
> >       $ref: /schemas/types.yaml#/definitions/phandle-array
> >       maxItems: 7
> >       description: The register of display function block to be set
> > by
> > gce.
> >         There are 4 arguments in this property, gce node, subsys
> > id,
> > offset and
> >         register size. The subsys id is defined in the gce header
> > of
> > each chips
> >         include/dt-bindings/gce/<chip>-gce.h, mapping to the
> > register of
> > display
> >         function block.
> >=20
>=20
> Maybe I'm wrong about the "do not declare minItems"... try with
>=20
> minItems: 1
> maxItems: 7
>=20
>=20
> ...does it work now?
>=20

Yes, It works well with "example2 + minItems:1 + maxItems: 7" [1]

[1]
  mediatek,gce-client-reg:
    $ref: /schemas/types.yaml#/definitions/phandle-array
    minItems: 1
    maxItems: 7
    description: The register of display function block to be set by
gce.
      There are 4 arguments in this property, gce node, subsys id,
offset and
      register size. The subsys id is defined in the gce header of each
chips
      include/dt-bindings/gce/<chip>-gce.h, mapping to the register of
display
      function block.

Regards,
Nancy


> > Regards,
> > Nancy
> >=20
> >=20
> > > > Best regards,
> > > > Krzysztof
> > > >=20
>=20
>=20
>=20
>=20
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/74dca3fa90d5cd78286281e2ced45842bee21f91.camel%40mediatek=
.com.

--__=_Part_Boundary_006_91262670.1930372964--

