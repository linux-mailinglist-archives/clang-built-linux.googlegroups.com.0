Return-Path: <clang-built-linux+bncBC3J7IONUUIBB7VJYSSQMGQEYNU4AHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 820D4753666
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Jul 2023 11:27:27 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id 6a1803df08f44-6237c937691sf22681456d6.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Jul 2023 02:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1689326846; x=1691918846;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IGj4Ls9voc8Nh5NyTWMsVpsC3tZCPEOxwMoYY5F440U=;
        b=fKh5TP3B5LTJTDezdFKiSgiZn7WJKBhknraez2vwsloW9jcTT8e/Xn3e/hjjEE3Q89
         mES57tzmiSFxzA95KDwIqcWh4lRuwfWtezFcKP/ztq+VSlzy2P6GaBE8249J66PiuaGM
         YfZwE2xZ5izYAczSmSzR5OCHVd8a2/SmUnHF3qhKgFPKYTfQXqrJBaMFJPG/Sxo5Ysd4
         YQKBTy7cxgv5eb07SsagfgjJ8gLYMluXQNXtcp/9GoRBQf6JDVDQNj4RM9Q9D9HSpWTR
         AOr7eE0vTwB2d4A2BLMsfJzdCIKNf6XUtU5G51YGRTitAuvylFQiae8ILTZlGtROR1Xv
         eSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689326846; x=1691918846;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IGj4Ls9voc8Nh5NyTWMsVpsC3tZCPEOxwMoYY5F440U=;
        b=hzoFy0icXG3d/r++OuL0Cb64sPJMM8rbiALG1Lp++WnnOjFhYWaQiFWbCZIJLLaxM5
         8JYZzLCn1SfkSOGdcDClYxb1rYQCpdFKj2X/K9Gsr8o9edSPcBv70FtK37ORCbMLvS76
         M0uSI6zgeA8rNtPsgCbDrC7mFFtDfvqafTh6Ki76JQEiChFeIetaS3D4Ps5hNSPG1V9A
         ta7aNFl/VojwpTAF3msKQ9z2TmPXBo60VqwdofIhGvSeSrRGy9gqh8+4L8mbQP4iUKK2
         FSgSmwX1iWN7x2+1j+nMpfwlSdP6xm0bj+OTzeg8Ow5hxcwVfenpCZ8VL0fc4wsmLwSP
         +iAA==
X-Gm-Message-State: ABy/qLZnj30yTPNEUfmR6thA1mFx/o+0z4UFRixlS9khoYKWxT02aXd4
	JVl5eEBKBhK9Jlmh7zC6co0=
X-Google-Smtp-Source: APBJJlE/fhI0wKUN6DA2fGhhWofb/vlhaCq5ZBZtlIfIh56gyeAWVHXMtV8CPr5nQyxVP8aMJo6uIA==
X-Received: by 2002:a05:6214:19e7:b0:62e:d9db:c788 with SMTP id q7-20020a05621419e700b0062ed9dbc788mr2721701qvc.3.1689326846153;
        Fri, 14 Jul 2023 02:27:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:8d05:0:b0:62d:e49c:234d with SMTP id r5-20020a0c8d05000000b0062de49c234dls115465qvb.0.-pod-prod-00-us;
 Fri, 14 Jul 2023 02:27:25 -0700 (PDT)
X-Received: by 2002:a1f:4186:0:b0:481:48b7:4fbb with SMTP id o128-20020a1f4186000000b0048148b74fbbmr817779vka.3.1689326845368;
        Fri, 14 Jul 2023 02:27:25 -0700 (PDT)
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id x187-20020a1f7cc4000000b00481305a02d3si568749vkc.2.2023.07.14.02.27.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jul 2023 02:27:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ck.hu@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: a08ecc1a222811eeb20a276fd37b9834-20230714
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.28,REQID:9e7bdec2-083c-42dc-b1b7-e6fbae1db399,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:176cd25,CLOUDID:0a91a98e-7caa-48c2-8dbb-206f0389473c,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,
	DKR:0,DKP:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: a08ecc1a222811eeb20a276fd37b9834-20230714
Received: from mtkmbs11n1.mediatek.inc [(172.21.101.185)] by mailgw02.mediatek.com
	(envelope-from <ck.hu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 55664591; Fri, 14 Jul 2023 17:27:18 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Fri, 14 Jul 2023 17:27:17 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Fri, 14 Jul 2023 17:27:15 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XDy8NFbvrcmepotcYbXxSVKDsnE/4mH6eJmsxuDZU/F/oCV8xEc5vTcorIzeTSlYuHGN/VgQdB2s26AKtKmuUKcPZz2V5nCV31S5PUv5hgA+mE52A1XdNdfHTCZAx2h/DljTYQFLkzdTtRkB6XMXc5cMVi0Zc8dWxolGq73n3ZFS4mI2DPWObqbgp2i3FVOupI/k9jliDOfo43KKfhpklpDq9y51xSx9PWT6inj3J2NYHxglhgMijhlGLOsYxc6QZK/Df2V2EzcHxrHAkm77VQfcHaLmLqIJ6GiI/VGeC/nQMmNjonpISFx4VOevHem3OpQk68ankzo1I9eyh5RT2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qA4b2FKDbkjW0aSuqcIQg7pscgBbR9tVUJ3a4C1d20o=;
 b=LYTnmuXq1qejJySLr+PBw9GhqhYDV2lLl5B52Qi1vp+Ho/kBnmhOQ9zrA0oOdQWrEdvOrIvxMErHGHlw97+EdyigP//0nnoe0hl6pQfeuRDsPYYMIj5v4RrUFYtluJ6t2o7QHYJQJqobluOyoJQlwZDR118FnP8JRVlzR1PUW+BzHqb4UWbMSnRV5OIQNvCtj9XGIuGIngpi3ee2yNuDp2APPzCmP+t2Ub80c+6dNAqDMQXeiXw0DoCCTa6onZ6AI6v9CUBYv+VPUfswh0b/Oj0YNPHvCHtohvazNlE2Bdd9/aCETS2dPz1jm0XhlHpWAaWuS+24ODUongmyQggH2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
Received: from SEYPR03MB6626.apcprd03.prod.outlook.com (2603:1096:101:83::7)
 by TYZPR03MB5549.apcprd03.prod.outlook.com (2603:1096:400:52::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.27; Fri, 14 Jul
 2023 09:27:14 +0000
Received: from SEYPR03MB6626.apcprd03.prod.outlook.com
 ([fe80::a4a4:6568:36f8:a4d9]) by SEYPR03MB6626.apcprd03.prod.outlook.com
 ([fe80::a4a4:6568:36f8:a4d9%4]) with mapi id 15.20.6588.027; Fri, 14 Jul 2023
 09:27:14 +0000
From: =?UTF-8?B?J0NLIEh1ICjog6Hkv4rlhYkpJyB2aWEgQ2xhbmcgQnVpbHQgTGludXg=?= <clang-built-linux@googlegroups.com>
To: "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	=?utf-8?B?TmFuY3kgTGluICjmnpfmrKPonqIp?= <Nancy.Lin@mediatek.com>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
CC: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>
Subject: Re: [PATCH v2] drm/mediatek: fix uninitialized symbol
Thread-Topic: [PATCH v2] drm/mediatek: fix uninitialized symbol
Thread-Index: AQHZc/dS0+UnhHpH9UKQpbsnSvSsEK+5gs+A
Date: Fri, 14 Jul 2023 09:27:14 +0000
Message-ID: <ae96299cffaacdbf51beae96e3a257c95a04ac95.camel@mediatek.com>
References: <20230421021609.7730-1-nancy.lin@mediatek.com>
In-Reply-To: <20230421021609.7730-1-nancy.lin@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEYPR03MB6626:EE_|TYZPR03MB5549:EE_
x-ms-office365-filtering-correlation-id: b1b7683e-8680-495e-1799-08db844c8241
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: piftb9G+4lHTC2JwMTZsoqWlRC+YEwBfD9dWqWg1xel+81eNITgOLv4jChlEat6vdtVMG/lDa2f7f2K02ci08NiSg1Xx/znm9QgrKXZjij1ovJPBhChbMvoi8w0bUCVOYznTb+nM1DO1YKmIKU2NsonKF1uAJobRYxSqHSaqvx7siFI4UngWZwO/SRemBZq3zQrFnqfFYuDOYKYDUl4HICobYuooG25JMkpGNncYe0963kAObLJZVI8/G7RQWfhHCOCG2msHRlwx7jdh88iLl7ktOH39djjUJVylQAWArDdo1sUFOU5iiR7YZH8KSENxvm5M9boWvjoFNQ3b2JlVBWQwO2k3OWyF6GAwiGf/AgjiPQuz1WWGtd3b5aQ0Uqa0tbBccMJQDZbk1k8XBF+KwS7EgGs39MKMVtXbBlHXfiwB5dChaYGW+bG4Eo8w34KDRSvaNit4b/IuZQJ6rojyp6dyCgAGL8btcP47j9SQKRavO01OT6PlwdCwZe6ne4o8zgocaCsIrIz0agVgXI3xNY33cOgTqJh+dlcvUke5H5ZgldfR7QR5DcTys8MVi7QdAKY6ijC5QZ2Cp5T7oAVQnsvklK4zKEm7cCh8fdmN7dOBPO1+2cb6w+udBYo+vnBvFaFlZTmZEu6nmXkgT4sO1vu8x/txksy4MnEH6EPLcSE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEYPR03MB6626.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(396003)(39860400002)(366004)(136003)(451199021)(2616005)(6486002)(186003)(36756003)(85182001)(83380400001)(6512007)(6506007)(26005)(71200400001)(107886003)(64756008)(66946007)(66446008)(66476007)(66556008)(4326008)(91956017)(76116006)(478600001)(110136005)(54906003)(122000001)(316002)(38070700005)(41300700001)(5660300002)(38100700002)(8936002)(8676002)(86362001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0xIclNDQmNSK2xnQUdkTjhLQklsZHBmMW4waWJEYmNocktsL016bjlwaGxj?=
 =?utf-8?B?bVppcDJEL0E2S1NXVkNnNTdDWnBET3J6TVRoWDByaER2U0M3K3hzdzYzdGFU?=
 =?utf-8?B?MmNVZ0ZoUVl6b3lSeE83VXluMHM0SFgyaTkzSXpsUXljWVFsUGx2NWVEcnZ1?=
 =?utf-8?B?dWY3WHNPb012UW9saWc1Zk10RGkyOEF1Q0h0SXdlQWMwdW8xUGZaN1VMbzkv?=
 =?utf-8?B?Rk8vdzRmZGJZL3dXRDNNaDNjelk4dFBZVEQ5cEt5ak9zUTRjZi9ha0dTbmxB?=
 =?utf-8?B?TkF0dXdDajgvK29VUURMVXQ1OGFKK2x4N2FkQmkzT2Z6VGN1YndRWUVUZXVE?=
 =?utf-8?B?VkI2MlllMEp2SlpscGNyNzBBU2srSGd3aE05alB4UkZFVUROM3VGT0tqTjkx?=
 =?utf-8?B?S2hjYkZhUmlpTmhGeW1Kc2d2bXkzMnlRUHduT2Z6OE1XTW8wanFraUZpVlI1?=
 =?utf-8?B?dDh0Nm1XMUoyUkFScXk3WGN5WUNrUFZpcmpFbmdGVW1SNXJ1OEM4V1FrUzYz?=
 =?utf-8?B?NitKNDNGa0lNZEtEWFRwNG9maDRUR2NyM09uc2d3YXJickgvSS82bEp4OER5?=
 =?utf-8?B?bGk3VTdrMWhRTUFLR2ZYWmJzNTU2RzhIUW1lOUU5UTc2QkJhdHhWbytwR0tZ?=
 =?utf-8?B?d1hpWmFoNFdpRUtRM2svcS9pZytFWXZjZXNUY2NlOElBSHVNSzlKQzFiTTZm?=
 =?utf-8?B?TGgyMTNnUWZ4Q0N1R0ZEa3Q4ZXYrZFdJcWtkU1FRRGh6K2V3MFdBVm9HRHdN?=
 =?utf-8?B?WERsL1JoamhrbXo0L3pqb0I4QndUNTNqaWcyd25SRzNiQ0FzQlo0Znp0bm5T?=
 =?utf-8?B?YXYvWEltY1dHTTgzMUluQ0hST0JRRUlKcGxJcnZBQWZJU0xpWUN5N1ZhRGwz?=
 =?utf-8?B?MFNNSUo5Z2lCZUt4VWhSNlBKYncyckRYR1pUcXhKL2pFZXJIU2sxVExtVi9T?=
 =?utf-8?B?Qm9NYXYrWmxrUzFzdDVDU0RaczNQNWdrL3VkcnlVTXI0ZkViVnFHVWdxSjZq?=
 =?utf-8?B?ZUF1K081WG9vM2ZGSERGbU42RmtMeFlkL2l0V3p3SVg1bXNIVGNueFhYSy9y?=
 =?utf-8?B?cFc5Si9YRnBvYlpkM0RiaGgwYzFBSTYxdWloT01TNFlqais0WVd3UmEwa1Z2?=
 =?utf-8?B?UXFMRjgwYlVGU0VyWXp3aTEydkRBMHhLaUoyNTMrcVFJUVh6bVNPVzBUeURx?=
 =?utf-8?B?ckRJUmdtaTI5aFZBWEpEMkRzeElMZEo5MXI1UjJpbk9lL2RTUHZmaVJodVpZ?=
 =?utf-8?B?RG5Ba3pKTkdscTN1aFNORFNzaDBQZS85OVVvMEhkbUovbGxZNDNncVlGeFpi?=
 =?utf-8?B?MjFPd2lMUEVPSFI3WU9aME1udExvajVTQ25YcytkV3FqN3o0QXk5a0ZBL3pX?=
 =?utf-8?B?M0pIZDZXczNSWkdNMk5OeW5BVDBMU2lxSjB2bHk2N1d6SG1KSWx0a2Mybnla?=
 =?utf-8?B?MVp2ZUEyczRmdGtWcmM0TitiVXhnazRXeW1GTTJBSjFBTjkrLzFlcytBTXZZ?=
 =?utf-8?B?N1ZTbUVTWlk5VThpTkZTQUZWcmsyWENaTENhNExjMk1FZ05uSkgwTTEwTmhk?=
 =?utf-8?B?c3h2WVk4REtkN21Kc0VLK1ZTc29SWk5uTXc2Y3lWR25iOXNBeHRqQWpUZjBG?=
 =?utf-8?B?ZlZDZGhQNVJyMnl3Z2wzbmJRRmRDWEZXTDNOeCtmOWJJNzJhKzlmZFpXaWFT?=
 =?utf-8?B?a1FSK1dEbjlaWVdxWjVuR1BlUFBhZDFKanJ2TUdCcnZkb2I4NU1UcTlkZXhu?=
 =?utf-8?B?aGxQUzNxVHdXUGs1YXFuWFdNTlVzNGx5UGljNTAxMkVLSDM1RWJnQjRrWjlk?=
 =?utf-8?B?MmZyVlBQMXhJeU5qN0toQnV4TkFzRmx1VVByU3NoUVhQdTljaU9XenpIaWkr?=
 =?utf-8?B?UFhLNHhlVlFNSlczYTU0V1kwSWpQZ1lxUnVVN2trTkp5N01tTjBwQWtZNkps?=
 =?utf-8?B?UFBrNzlNbCs0WTRjcC9DVk1tb3o1bEpTOWJIZWJnUGh4Q0xMTEI4YW9qNE5X?=
 =?utf-8?B?MStKaVc0WlVMSjdsQllNOVVpSk41cnREYitzbFdiSDFrbjYxKzV2NG4vYzV1?=
 =?utf-8?B?eTFReXc4T2VTRkVPdlJhTFVoREdtVGQ5cFpoc2U1aDVnbU9ITlFMRDBMeFRW?=
 =?utf-8?Q?6ZjB1vIB76aX+hd6wRyQtvrm7?=
Content-ID: <F183907D78C655428590645225D05662@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEYPR03MB6626.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1b7683e-8680-495e-1799-08db844c8241
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2023 09:27:14.0510
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NQdE1Kx/EFVsMlyMj7mAS6Z3PCAE6VswhStsSuNxfLg/t3309Ir05gTErSTSsXOUzWNRtdZYR5bGXu6cYLWn9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB5549
Content-Type: multipart/alternative;
	boundary="__=_Part_Boundary_005_1189468712.1243581778"
X-Original-Sender: ck.hu@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=WlP0lsn4;       dkim=neutral
 (body hash did not verify) header.i=@mediateko365.onmicrosoft.com
 header.s=selector2-mediateko365-onmicrosoft-com header.b="K8/UB1s1";
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

--__=_Part_Boundary_005_1189468712.1243581778
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<pre>
Hi,&#32;Nancy:

On&#32;Fri,&#32;2023-04-21&#32;at&#32;10:16&#32;+0800,&#32;Nancy.Lin&#32;wr=
ote:
&gt;&#32;fix&#32;Smatch&#32;static&#32;checker&#32;warning
&gt;&#32;&#32;&#32;-&#32;uninitialized&#32;symbol&#32;comp_pdev&#32;in&#32;=
mtk_ddp_comp_init.
&gt;&#32;
&gt;&#32;Fixes:&#32;0d9eee9118b7&#32;(&quot;drm/mediatek:&#32;Add&#32;drm&#=
32;ovl_adaptor&#32;sub&#32;driver
&gt;&#32;for&#32;MT8195&quot;)
&gt;&#32;Signed-off-by:&#32;Nancy.Lin&#32;&lt;nancy.lin@mediatek.com&gt;
&gt;&#32;---
&gt;&#32;v2:&#32;add&#32;Fixes&#32;tag
&gt;&#32;---
&gt;&#32;&#32;drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c&#32;|&#32;5&#32;+=
+++-
&gt;&#32;&#32;1&#32;file&#32;changed,&#32;4&#32;insertions(+),&#32;1&#32;de=
letion(-)
&gt;&#32;
&gt;&#32;diff&#32;--git&#32;a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
&gt;&#32;b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
&gt;&#32;index&#32;f114da4d36a9..e987ac4481bc&#32;100644
&gt;&#32;---&#32;a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
&gt;&#32;+++&#32;b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
&gt;&#32;@@&#32;-546,7&#32;+546,7&#32;@@&#32;unsigned&#32;int
&gt;&#32;mtk_drm_find_possible_crtc_by_comp(struct&#32;drm_device&#32;*drm,
&gt;&#32;&#32;int&#32;mtk_ddp_comp_init(struct&#32;device_node&#32;*node,&#=
32;struct&#32;mtk_ddp_comp
&gt;&#32;*comp,
&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;unsigned&#32;int&#32;comp_id)
&gt;&#32;&#32;{
&gt;&#32;-struct&#32;platform_device&#32;*comp_pdev;
&gt;&#32;+struct&#32;platform_device&#32;*comp_pdev&#32;=3D&#32;NULL;
&gt;&#32;&#32;enum&#32;mtk_ddp_comp_type&#32;type;
&gt;&#32;&#32;struct&#32;mtk_ddp_comp_dev&#32;*priv;
&gt;&#32;&#32;#if&#32;IS_REACHABLE(CONFIG_MTK_CMDQ)
&gt;&#32;@@&#32;-588,6&#32;+588,9&#32;@@&#32;int&#32;mtk_ddp_comp_init(stru=
ct&#32;device_node&#32;*node,
&gt;&#32;struct&#32;mtk_ddp_comp&#32;*comp,
&gt;&#32;&#32;&#32;&#32;&#32;&#32;type&#32;=3D=3D&#32;MTK_DSI)
&gt;&#32;&#32;return&#32;0;
&gt;&#32;&#32;
&gt;&#32;+if&#32;(!comp_pdev)
&gt;&#32;+return&#32;-EPROBE_DEFER;

In&#32;line&#32;566,&#32;the&#32;statement&#32;is

if&#32;(nodo)&#32;{
comp_pdev&#32;=3D&#32;...
}

The&#32;comment&#32;says&#32;that&#32;only&#32;ovl_adaptoer&#32;has&#32;no&=
#32;device&#32;node,&#32;so&#32;the
checking&#32;should&#32;be

if&#32;(type&#32;!=3D&#32;MTK_DISP_OVL_ADAPTOR)&#32;{
comp_pdev&#32;=3D&#32;...
}

and&#32;later&#32;it&#32;would&#32;return&#32;when&#32;type&#32;=3D&#32;MTK=
_DISP_OVL_ADAPTOR,
so&#32;there&#32;would&#32;be&#32;no&#32;problem&#32;of&#32;uninitialized&#=
32;symbol.

Regards,
CK

&gt;&#32;+
&gt;&#32;&#32;priv&#32;=3D&#32;devm_kzalloc(comp-&gt;dev,&#32;sizeof(*priv)=
,&#32;GFP_KERNEL);
&gt;&#32;&#32;if&#32;(!priv)
&gt;&#32;&#32;return&#32;-ENOMEM;

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
om/d/msgid/clang-built-linux/ae96299cffaacdbf51beae96e3a257c95a04ac95.camel=
%40mediatek.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/clang-built-linux/ae96299cffaacdbf51beae96e3a257c95a04ac95.c=
amel%40mediatek.com</a>.<br />

--__=_Part_Boundary_005_1189468712.1243581778
Content-Type: text/plain; charset="UTF-8"

Hi, Nancy:

On Fri, 2023-04-21 at 10:16 +0800, Nancy.Lin wrote:
> fix Smatch static checker warning
>   - uninitialized symbol comp_pdev in mtk_ddp_comp_init.
> 
> Fixes: 0d9eee9118b7 ("drm/mediatek: Add drm ovl_adaptor sub driver
> for MT8195")
> Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
> ---
> v2: add Fixes tag
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index f114da4d36a9..e987ac4481bc 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -546,7 +546,7 @@ unsigned int
> mtk_drm_find_possible_crtc_by_comp(struct drm_device *drm,
>  int mtk_ddp_comp_init(struct device_node *node, struct mtk_ddp_comp
> *comp,
>  		      unsigned int comp_id)
>  {
> -	struct platform_device *comp_pdev;
> +	struct platform_device *comp_pdev = NULL;
>  	enum mtk_ddp_comp_type type;
>  	struct mtk_ddp_comp_dev *priv;
>  #if IS_REACHABLE(CONFIG_MTK_CMDQ)
> @@ -588,6 +588,9 @@ int mtk_ddp_comp_init(struct device_node *node,
> struct mtk_ddp_comp *comp,
>  	    type == MTK_DSI)
>  		return 0;
>  
> +	if (!comp_pdev)
> +		return -EPROBE_DEFER;

In line 566, the statement is

if (nodo) {
	comp_pdev = ...
}

The comment says that only ovl_adaptoer has no device node, so the
checking should be

if (type != MTK_DISP_OVL_ADAPTOR) {
	comp_pdev = ...
}

and later it would return when type = MTK_DISP_OVL_ADAPTOR,
so there would be no problem of uninitialized symbol.

Regards,
CK

> +
>  	priv = devm_kzalloc(comp->dev, sizeof(*priv), GFP_KERNEL);
>  	if (!priv)
>  		return -ENOMEM;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ae96299cffaacdbf51beae96e3a257c95a04ac95.camel%40mediatek.com.

--__=_Part_Boundary_005_1189468712.1243581778--

