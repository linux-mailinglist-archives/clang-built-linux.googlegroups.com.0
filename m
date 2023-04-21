Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB2PBQ6RAMGQE2STDZRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F44B6EA17D
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Apr 2023 04:11:55 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id 5614622812f47-38be01afd10sf1351791b6e.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Apr 2023 19:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1682043114; x=1684635114;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ch1TU2Hl6eIuyhe1a4Wt3b0o+rWSkyk+EsObOcr9kIQ=;
        b=b1VhB4Eo8OZj6d4mi8QEOVNJZEN8n5LHbCH48qfU3ze2rxNDYKVNZEQVKAtssPGiot
         8qVCR/Yv/Gw/DDi1hi7al28p6pwimRx1AnLsinBSGSLncpJnN3LV/Wtw38eA9NfZqxl0
         akK4FxMWybf6RGQQC1V4HxAw2XARPfRuwJvAyJnMSubanb7o8Z+FZUO7k746kibVdAqW
         BgvDhWD37krV/9Uc2ZgyL0sHedzVhlku3TKe5p2ZuGijHE81XujTIxLCZkgnYbRLQ2kC
         dMM9qQtiktaZYIYixoSkoUuIeprz3P86IxyEwjgDJjbembEXzCuLnSpZZavgISwfkQ1p
         pV8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682043114; x=1684635114;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ch1TU2Hl6eIuyhe1a4Wt3b0o+rWSkyk+EsObOcr9kIQ=;
        b=Zmb8FQiONdo0rqg1A2ts0ksvYR9JZXuXI752/+VHw8uHqFevORmZBa5F97gBx+LTwI
         M5bzHVzqU0M8iW9w8IiKjrq7xSRKy5idxtDsETeXnzHnOS3iBGJQXew+64ugDYxag7ZU
         TmccRJdR6KjACF9/4JO+8EYreMz4W/c7ghyGm9yxWH5SJ0CRH7KJoclq/AHgdFX7YWch
         ahqfziL2MHwNvlD9iG2wlDQHw94GPi+2QQ1XHWsq7uaXBkVu+3RWo34wOPyo3skz1wXd
         UFkya5LbejYmTOZkkUvZAH9Dh1h+bVBBSjy9G0K4lttmgpGBIweGPC70STJnuWTBgdSU
         8uHg==
X-Gm-Message-State: AAQBX9d3b+MYMFF59rBL3oA0R+RAR9LJY/8T4lnJFRECS3NiLcYLDAHp
	nq+Zu1jV/BnaV0LM1bKMW9A=
X-Google-Smtp-Source: AKy350YG0YMalayv7u+O0T4bL/QeQIXmF8Y/aLK8NRO8NwNTN70miUIkiHYz7bxG9PvpyHNG3AaDJQ==
X-Received: by 2002:aca:d746:0:b0:38d:ee6e:2369 with SMTP id o67-20020acad746000000b0038dee6e2369mr977657oig.7.1682043113795;
        Thu, 20 Apr 2023 19:11:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6870:2413:b0:187:edbb:2bc4 with SMTP id
 n19-20020a056870241300b00187edbb2bc4ls1207976oap.7.-pod-prod-gmail; Thu, 20
 Apr 2023 19:11:53 -0700 (PDT)
X-Received: by 2002:a05:6870:b628:b0:188:1338:fbb6 with SMTP id cm40-20020a056870b62800b001881338fbb6mr3268854oab.36.1682043113232;
        Thu, 20 Apr 2023 19:11:53 -0700 (PDT)
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id hg11-20020a056870790b00b0018b205ed7c7si273084oab.0.2023.04.20.19.11.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Apr 2023 19:11:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: dd71541cdfe911eda9a90f0bb45854f4-20230421
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.22,REQID:515e455d-7bc0-44c5-bdb1-e04bc686f7c4,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:120426c,CLOUDID:af5ac384-cd9c-45f5-8134-710979e3df0e,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-UUID: dd71541cdfe911eda9a90f0bb45854f4-20230421
Received: from mtkmbs11n2.mediatek.inc [(172.21.101.187)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1576720128; Fri, 21 Apr 2023 10:11:45 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n1.mediatek.inc (172.21.101.185) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Fri, 21 Apr 2023 10:11:44 +0800
Received: from APC01-PSA-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Fri, 21 Apr 2023 10:11:44 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GYQjMxH/7iqUpyIWL72erlhw8pS5cZXuFgPFmYKeFH59MZcRGwL4LhfjGQgm4TwuKqZdCXV7MESARQJWVRWlHBkAfvA11U5c0RxWyuyCuXieEWL6ZposXKVlq1HACapBC2EveveumZF6scVfXoafdSLpjXuyeHgkKS3v3JsTohaZX9OLeklv6118Bu1VEoF4jxXlsXfhRBY7BhB2ct05ypu1x3e/gg8A7Iw3bCO/dbDbpJbXveEO7+3VUHYfXWr8hDFBki0IPY4KRTWjHCjCqnOorXWUy9GOsAqNM6LGlB4mf1iQRfR+bdG1rDANjrFYazCRGrq1f+F6bCL1n4SN1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OZ25hARgc/C4N6ExNNaTX6XcVVpyDPa6bV+P8zLj9zA=;
 b=Cq9LocQqGatnWVjaigQ9wx7OE3u212DdlIG86cJhOcAstZt1wB4tXNFp8bhg3KlzR7O3DIZM/ndEi9gecy9XiSksoXhG89kvhIm2JcweTdMd8MZEbOqKuejj+QiKN+hfSdehjbpB9yjDaid4cJA7k6QIPv0t5PJrdit1BWNxwPm4JCie1ZS58k0T+fBFP3ccR9sxRfujtf4MzbB0TGIIkWrSV3kGep9fQlK4bA3t/hO1jAxyqBM9ktdMNiKyIwbDN6CmmYR2z8bgsHFTH4/9txoQ5jM4zSs6kGX3p+MjyiSruGtHiy3vMvzZPrTRrLUvjPTKNq65S/3tGlvf706zcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com (2603:1096:820:8::11)
 by KL1PR03MB6031.apcprd03.prod.outlook.com (2603:1096:820:85::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 02:11:41 +0000
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::a9f2:b477:6a2d:b8aa]) by KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::a9f2:b477:6a2d:b8aa%4]) with mapi id 15.20.6298.045; Fri, 21 Apr 2023
 02:11:41 +0000
From: =?UTF-8?B?J05hbmN5IExpbiAo5p6X5qyj6J6iKScgdmlhIENsYW5nIEJ1aWx0IExpbnV4?= <clang-built-linux@googlegroups.com>
To: "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>
CC: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>, "airlied@gmail.com"
	<airlied@gmail.com>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] drm/mediatek: fix uninitialized symbol
Thread-Topic: [PATCH] drm/mediatek: fix uninitialized symbol
Thread-Index: AQHZc3YgfsA23QK3cUqJHFZ/dfAphK80GOCAgADtaoA=
Date: Fri, 21 Apr 2023 02:11:40 +0000
Message-ID: <842fefa133982cf20ec44c324141a4bcfadea255.camel@mediatek.com>
References: <20230420105115.26838-1-nancy.lin@mediatek.com>
	 <e1619d7a-2ac3-55bf-bcf1-cad3f07d20fe@collabora.com>
In-Reply-To: <e1619d7a-2ac3-55bf-bcf1-cad3f07d20fe@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5175:EE_|KL1PR03MB6031:EE_
x-ms-office365-filtering-correlation-id: d9e79b0f-2b73-42ef-518b-08db420dbef9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7zrd82zyRKXz5fPrWt/CqtpSXDjTVx2/bDHAlL0drm5EEatDLBjyEeBjC4/e6PDCSM4m53aXl0DP7BBRb8OeXaWNwclBkIO2gqDhydy46Qdhk93Y0kkLTbungcS4V7iEDUI71BRh9wCoILyIuUvSBi9Bv/pgJ6yCokFPD6rYtz+it7qsvyVgtK0aYow9GChaVj9HVJHtIiHcoA6tJjLa395BxWQJUAbb9E1lijZ0TI0K94bXHrdv8lLtg5TzN34j/sB7v+simarn9UBPvfcV0E+kqFceRzldY8pCD0aFPiOyzShDEjGTdlcTLC/UxLU19hfkfY8TW6tVj5ZXAOQ6GZJ6tqoCgANK2a/JBf5EE5lGg8m1OQi+V/gUsaGNKnGwl4hcTvroOhnG8dnsMbJO5bST6WyN7i08kbiClxY6UmNJP435LGFuftHRW5d7+0HPd0ayiULc0kQhLaVBFZFkO07vLTpBpLDh6G0e3sI/h3u660Kpz3ux5bb23O/61zA6/WqtI4k81yI9qIGdhZwxB2B8RG1GT2oPFtKvVkFlQ9ktYjFlWwn4dXhlukK4dBOGdteOvnFoEgXhGL2350y/+BDBREq9dRz/5Ry428cGh+/YKZ92wVjN0viHDPUuob45
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5175.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(39860400002)(136003)(396003)(366004)(451199021)(4326008)(38100700002)(8936002)(8676002)(41300700001)(76116006)(91956017)(122000001)(66556008)(64756008)(316002)(66476007)(38070700005)(66446008)(66946007)(2906002)(4744005)(5660300002)(7416002)(186003)(6512007)(6506007)(26005)(85182001)(83380400001)(36756003)(2616005)(110136005)(54906003)(86362001)(6486002)(478600001)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZkNDdld5UzhuaWxaMEp0VWYzSWd5ay9EMjB4VFM2Vy9YSlROSnAwWG4yQTdx?=
 =?utf-8?B?RnlZU2tOY05Kd21JVFNYN25yb29kejZJajdyamd0YXVjeVNuNVdSQU5mR3l6?=
 =?utf-8?B?TWdaaWRHdnN1ZGVOMVNYVUVjOE9JYmltZ1lpWFR0TE1pVWpkZkxhckROQTE4?=
 =?utf-8?B?Ujk1SEJqNUY0UFNzSGx6eDhvdG5zbDhiQmdUeDIxYy9tcWRDWmloMVNuWkRF?=
 =?utf-8?B?TVk1cGFQeFM1cFFDZ3VURWpPS0VrRjM1cHlJc3dqVE9VNVVSVUQ3OHlsOCtE?=
 =?utf-8?B?R0M2dWpsRHc4YWVuOFRUcEdpK0xCaThmVGVpZ0pZdWtHdDZwUENNWnFSOExG?=
 =?utf-8?B?MHZsbTFDVkxOdWloaGc3empINUVoMEpTRWltc0o1eUpJYUVoZk1sSVZlNTh0?=
 =?utf-8?B?ZzYweVA2QlJjczNkNDVHeW91RHErbU9kcUlKVFlrelNhQVZXYUpyRTUzZzho?=
 =?utf-8?B?UDVDaDNkWklXcWwzbXBjL0wxVm9ZY0h0dXRCZHJZUk5NdXZnL0UyMG0yd1dw?=
 =?utf-8?B?bEFIa3g3bTFvVHFpZkg0Y2NBWVVJZjVOV2FybkZwVFRjSERkcEk1MG5yd0Jp?=
 =?utf-8?B?NHdIZURvMVlvbHdYWlBhMDNLS3ZnSVloMFhUa1lyNVdsZHp0T0tWNS9hZ3cy?=
 =?utf-8?B?UzVaanRKczhaLzNxMjV2NFo5M2IwWDdtVzFHZ2VnMGdwVUgvMDRtekg5WCtD?=
 =?utf-8?B?UjBwVXVRZk1XV0prSHJQZ1VwaFkrUGNzZWU0clBudVlwOTkwM1BoYmtsd254?=
 =?utf-8?B?Y29BZkE0cUZsZjRiTWc1TUllc0dGUUtxK3hldUZYbTY4UE1VNlVlck04MUN1?=
 =?utf-8?B?d1AxdkdLSUdBNG5od1ZweTRUdTN0eEZRWnFvcTZiZTZmaDFpWWNYa09lbEFI?=
 =?utf-8?B?RXEyU3Q3eUhrZ0pmS2FWcjlKZWFUUFJQZFdiQ1U3SU84U1JPellwWDFZbDNw?=
 =?utf-8?B?NjBpY1phRXF4c3hDSXVtZGQzeDRibnZlVDBQUnM5Y1RvL0VManhQb3VIay9R?=
 =?utf-8?B?dWVOVHRZNnRJc2dXdWk2YkhYRm9pN2tONHpaSjhySlJaTnBBaTJFc1c2c01q?=
 =?utf-8?B?OGc2M0ZpLzFsVmpkZTFOQVYvYVFtN0RNS2dkOEVpVER2V2VwL3o5UmJPY0J3?=
 =?utf-8?B?Q2V1M2dFRHdaeEV0SUJtUDdRYjcvZ0FTK0tUUFAzYjJBZXpLUXc2cG12K1dG?=
 =?utf-8?B?Y0YvdDNNZVB3cEhFY0R4VE55RzlvcTI2bmtxRWhMRlRIc2dwVkU1TWtVaDgr?=
 =?utf-8?B?T1MzY2hydUp5WnFERlVqN216dGFnanZNVDlqMjFobGJ3YlZiWkNMS0V4SHg0?=
 =?utf-8?B?blAyUzdJVFIxNnhxejFGdjNDbTVQVUE0MGNXNTlES0YyUEhXdnpYVmdyR3VW?=
 =?utf-8?B?djdQQmRpOE9qMjFvcW9Wb3I4YUNVK3l2L2FGbEtpU1pFYXRaQ0NFYVNJeDho?=
 =?utf-8?B?Q1o0b0lpMnNER0EyanVNZU1oeXFtNXdVTXpHcGIyeTRlcU1RaXVZRmRuTUho?=
 =?utf-8?B?NFAwMkh3ZG9hZVhrR0NEdzlqdkk4ZHVvYUZnd0lCTm5qZGhlYjdlTTY2cVZa?=
 =?utf-8?B?Y2xUV3k5UXM3Wm5VelVvUGR3UW1YR2R2cHFhNTZ0L2hJeE9KK3pHQ1gyUGRV?=
 =?utf-8?B?WHNuam1ubnpIeit1WEZ6aml0bFU4VFh1TzdvWC9tUjd1UEtEVUNzZEthaTlP?=
 =?utf-8?B?THNBOG1WMXU5MStuSDFKTHpobWVpRE5LTmM3bUUzK3BGOEVWN0kxSm5EQ0hJ?=
 =?utf-8?B?U0Q4YUxscUhtNFNUb2NKYVF2emt1NTlTRnA0ZVdLRFY0RUV1dFl3VGx3T3dF?=
 =?utf-8?B?Z212TkFrWms4Ti9SWjk2YndraEhpTDQxK0R1bGtHajRwMmQxNHg2SWJyT2gv?=
 =?utf-8?B?bTdVc3JkOStlalg1c2pjMnZRaTlZSnBBSjJOeUw2ZU9va0hvLzU1czgzTDdw?=
 =?utf-8?B?N1VyNlExZTNlMVNwbTcvU2ZNcUFNanVNajNUeTZoTHUzMXVuTjR0UVBHTjN3?=
 =?utf-8?B?Sm9PcE5jN0dpeVk4TFAxbGI5YUIyZHp0V285UUMzYVp5c05sRlExNUgvcW94?=
 =?utf-8?B?VDQ2bVB4Y040RklqWE9XdHJCeml0bnpRQVNEbHMzY292NklKQ0FPKzFUU2I3?=
 =?utf-8?B?emhyWGxBVjRZUTZPVXNqSUR0c0FFaURIcUdJcUJIeGtzdG5YVFBqWjQ3dFlq?=
 =?utf-8?B?clE9PQ==?=
Content-ID: <89A963CA534B694384ACD7E77A49A205@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5175.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9e79b0f-2b73-42ef-518b-08db420dbef9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2023 02:11:40.8616
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VKaHkjijbmMGGZsc8Mh/qbnvvMy/8Jkcd1+nRsYa2zA6KC59dFmxQRhq3V5dIhiHcUJ+9HO8rph92eNeTrZgXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB6031
Content-Type: multipart/alternative;
	boundary="__=_Part_Boundary_003_1391819.1966014937"
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=Pn0SY346;       dkim=neutral
 (body hash did not verify) header.i=@mediateko365.onmicrosoft.com
 header.s=selector2-mediateko365-onmicrosoft-com header.b=Cr5+93cy;
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

--__=_Part_Boundary_003_1391819.1966014937
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<pre>
Hi&#32;Angelo,

On&#32;Thu,&#32;2023-04-20&#32;at&#32;14:01&#32;+0200,&#32;AngeloGioacchino=
&#32;Del&#32;Regno&#32;wrote:
&gt;&#32;External&#32;email&#32;:&#32;Please&#32;do&#32;not&#32;click&#32;l=
inks&#32;or&#32;open&#32;attachments&#32;until
&gt;&#32;you&#32;have&#32;verified&#32;the&#32;sender&#32;or&#32;the&#32;co=
ntent.
&gt;&#32;
&gt;&#32;
&gt;&#32;Il&#32;20/04/23&#32;12:51,&#32;Nancy.Lin&#32;ha&#32;scritto:
&gt;&#32;&gt;&#32;fix&#32;Smatch&#32;static&#32;checker&#32;warning
&gt;&#32;&gt;&#32;&#32;&#32;&#32;-&#32;uninitialized&#32;symbol&#32;comp_pd=
ev&#32;in&#32;mtk_ddp_comp_init.
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;Signed-off-by:&#32;Nancy.Lin&#32;&lt;nancy.lin@mediatek.c=
om&gt;
&gt;&#32;
&gt;&#32;I&#32;agree&#32;with&#32;this&#32;commit,&#32;but&#32;please&#32;a=
dd&#32;a&#32;Fixes&#32;tag.
&gt;&#32;
&gt;&#32;Thanks,
&gt;&#32;Angelo

Thanks&#32;for&#32;the&#32;review.&#32;I&#32;will&#32;resend&#32;it&#32;wit=
h&#32;Fixes&#32;tag.

Regards,
Nancy



</pre><!--type:text--><!--{--><pre>************* MEDIATEK Confidentiality N=
otice
 ********************
The information contained in this e-mail message (including any=20
attachments) may be confidential, proprietary, privileged, or otherwise
exempt from disclosure under applicable laws. It is intended to be=20
conveyed only to the designated recipient(s). Any use, dissemination,=20
distribution, printing, retaining or copying of this e-mail (including its=
=20
attachments) by unintended recipient(s) is strictly prohibited and may=20
be unlawful. If you are not an intended recipient of this e-mail, or believ=
e
=20
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
om/d/msgid/clang-built-linux/842fefa133982cf20ec44c324141a4bcfadea255.camel=
%40mediatek.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/clang-built-linux/842fefa133982cf20ec44c324141a4bcfadea255.c=
amel%40mediatek.com</a>.<br />

--__=_Part_Boundary_003_1391819.1966014937
Content-Type: text/plain; charset="UTF-8"

Hi Angelo,

On Thu, 2023-04-20 at 14:01 +0200, AngeloGioacchino Del Regno wrote:
> External email : Please do not click links or open attachments until
> you have verified the sender or the content.
> 
> 
> Il 20/04/23 12:51, Nancy.Lin ha scritto:
> > fix Smatch static checker warning
> >    - uninitialized symbol comp_pdev in mtk_ddp_comp_init.
> > 
> > Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
> 
> I agree with this commit, but please add a Fixes tag.
> 
> Thanks,
> Angelo

Thanks for the review. I will resend it with Fixes tag.

Regards,
Nancy


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/842fefa133982cf20ec44c324141a4bcfadea255.camel%40mediatek.com.

--__=_Part_Boundary_003_1391819.1966014937--

