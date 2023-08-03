Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBPWMVWTAMGQE2NK2SJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id A499276E32E
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Aug 2023 10:33:03 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id 46e09a7af769-6b9ef9cd887sf977242a34.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Aug 2023 01:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1691051582; x=1691656382;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=syHvI7V+iSPzH4+yEYN4nJkSSElZMHaPpI3Ft9/QbgE=;
        b=Ek6dyCzoxzMwKsl/iHkwtAn7vKaBAUV4S900jqfLEdGXJqXzAdNCJ8lrQFMrSddNUa
         sg+PaWi/VlsxowLXw+4w2dagSjEFs7YJy43rNzBhgrTaaz+RqdjaRY3csM2C5kBZ27yJ
         IqyBwm7nN/uuyIa1obeWS54rj4LLD6W9RKee9AwkJW8brsGBGtO7kEpm5uVwnLxjpo3f
         ThD+SbcpF2v224K6+IsIjlEMQcMYGzScaspmlDkCdN2Xy/zWMXUPqOp6H8RB39xnmGQo
         1clPZYBVGGvIobUPm0oqK7VWKY5ra68HW3EQ2D1vCLNcjHtklbVugfLeT0SfNSsGSsce
         G/QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691051582; x=1691656382;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=syHvI7V+iSPzH4+yEYN4nJkSSElZMHaPpI3Ft9/QbgE=;
        b=IVOVHOhaGnv6Xy9FpPS0+1+xDba3ZLTQ5nMgAupECu64IP04pShK8w8MSLBPaP9lFY
         0TuNftTnv2u/FCbMrZYtJfg8ea6Di6ur8IWtb++D8RM+eT7q+KupeUKf0qBBsCNgaATA
         8bbbXhcxwvKwkIZugtainJAIvav1HsQET3/SnFgN0RM9Iq7dmPNmqL5l2QpjF6R7z+C1
         Ne3qlHHDOMROCETUA7+yYwZJMV/NAfz3nfucBhBeweaGsz+JdIxv7dM7x47nM/YOlKLZ
         36HVU7s0fSAtsixgs79HgQe5HHhdWKUGAFzfhnwmOkIHCiF88nXjQZVsm8IcWMbjCmsn
         Hi1Q==
X-Gm-Message-State: ABy/qLaDs8IRS1C8tfIW56nvB78xTvpvtjfeoIJzd/RdJey/H2LywduK
	gRb/HeoJyg4bRDiNINjjJVE=
X-Google-Smtp-Source: APBJJlG5nDu4TM3j0bo8JUinV8RqkUriSMDZr4GGTRPz3tdYt4CIsffcwpAJkbCYdYmjyLSsMQv+OA==
X-Received: by 2002:a05:6830:411e:b0:6b9:ea1e:a04a with SMTP id w30-20020a056830411e00b006b9ea1ea04amr18079154ott.3.1691051582219;
        Thu, 03 Aug 2023 01:33:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4fd8:0:b0:56d:28f8:bff6 with SMTP id c207-20020a4a4fd8000000b0056d28f8bff6ls487526oob.0.-pod-prod-00-us;
 Thu, 03 Aug 2023 01:33:01 -0700 (PDT)
X-Received: by 2002:a9d:6851:0:b0:6b7:5235:e9ab with SMTP id c17-20020a9d6851000000b006b75235e9abmr13387971oto.3.1691051581565;
        Thu, 03 Aug 2023 01:33:01 -0700 (PDT)
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id v6-20020a9d7d06000000b006b5d4556760si1219822otn.5.2023.08.03.01.32.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 01:33:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: 586610b431d811eeb20a276fd37b9834-20230803
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.30,REQID:70cb4ce3-be62-44fc-be6f-a9dc42595542,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:1fcc6f8,CLOUDID:71991ab4-a467-4aa9-9e04-f584452e3794,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:
	NO,DKR:0,DKP:0,BRR:0,BRE:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_ULN
X-UUID: 586610b431d811eeb20a276fd37b9834-20230803
Received: from mtkmbs10n2.mediatek.inc [(172.21.101.183)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 88224360; Thu, 03 Aug 2023 16:32:56 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 MTKMBS14N2.mediatek.inc (172.21.101.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Thu, 3 Aug 2023 16:32:55 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.237)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.26 via Frontend Transport; Thu, 3 Aug 2023 16:32:54 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XpLWST64F1QNsNAk5Mln1IsBkV+rTlm/FvsB3pVMJ2I2CK7sxAY95TNOPpsTN3W68/eyHlJ8DCRnBHZbTDXtnEROao3GIfCJyf6E4SsOSCFgSGNf93/7I5qaoBlYry9o/qawo+ngjtiIFo3NUVJAT6oQfk1J73KRitaLI+/bMkTNU2rEEVvNxFEhNsGMJm95Q+TaDuDKp3iagNEMiMY49qoKpoZOGH/zWwalsPlfLm4sEKbeXAb5awmkdId85E+ipI3ICvMnIWUW8PX0fUB59dFc53Ng85+qTXBq73cQYw7uOKMoWOfL0g7iB02qEMG7gadk8yLTOSs/z6CMjSd2gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8UauAPglruVzPTeL1vqBzuPGZ4I2xYduAu/C+s80cd8=;
 b=dcCFsOuQBL1rmEIcplY7w0iDvaod8c6th96OeQX9TqY5ljPdFzfXFYcUMF5EZxO8FX3kfo1zOcaj8g/Tk8Sa690wDEDhuYGCUMBt1UabO+OgXyPSk9WR8jEDtG5r288h+9U9Ne+QeXgmkn4PQB4fuRimU53d4uR2NasKKwdYedYMeeOaA8ExrSSPg73Kc6hOm6LNR3DuzDft0szjG09JvgegxOcjYl5o0oCMPoEIv7YOGDjCUk+1wulMPRLgk1FVveDaddb+kt+8pWcKBkLVoY4buLaopXrTrz1Dwg4SUqViz06SquFV9QP5jQDbQcBA6Jcdkl//0h69PJVFHkWw2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
Received: from SEZPR03MB7616.apcprd03.prod.outlook.com (2603:1096:101:123::9)
 by SEZPR03MB7375.apcprd03.prod.outlook.com (2603:1096:101:10d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Thu, 3 Aug
 2023 08:32:52 +0000
Received: from SEZPR03MB7616.apcprd03.prod.outlook.com
 ([fe80::2310:62b8:e345:dae4]) by SEZPR03MB7616.apcprd03.prod.outlook.com
 ([fe80::2310:62b8:e345:dae4%7]) with mapi id 15.20.6631.046; Thu, 3 Aug 2023
 08:32:52 +0000
From: =?UTF-8?B?J05hbmN5IExpbiAo5p6X5qyj6J6iKScgdmlhIENsYW5nIEJ1aWx0IExpbnV4?= <clang-built-linux@googlegroups.com>
To: =?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
	"fshao@chromium.org" <fshao@chromium.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "p.zabel@pengutronix.de"
	<p.zabel@pengutronix.de>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "matthias.bgg@gmail.com"
	<matthias.bgg@gmail.com>, "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH v2] drm/mediatek: fix uninitialized symbol
Thread-Topic: [PATCH v2] drm/mediatek: fix uninitialized symbol
Thread-Index: AQHZc/dVWUY2pJ1cl0a+Yt4DL3ZbCa+5gtAAgARbdwCABPgaAIAWC96A
Date: Thu, 3 Aug 2023 08:32:51 +0000
Message-ID: <ecedbe0bd06a67654bc90421569ad6e6bd9ddfe7.camel@mediatek.com>
References: <20230421021609.7730-1-nancy.lin@mediatek.com>
	 <ae96299cffaacdbf51beae96e3a257c95a04ac95.camel@mediatek.com>
	 <CAC=S1njEG2sV28XAWDw8FoQ0p5w=-sU4i+D-ESfapHMQC1ZW3Q@mail.gmail.com>
	 <7e1124a15395dbb6906c17e240e5011a4274a9b5.camel@mediatek.com>
In-Reply-To: <7e1124a15395dbb6906c17e240e5011a4274a9b5.camel@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SEZPR03MB7616:EE_|SEZPR03MB7375:EE_
x-ms-office365-filtering-correlation-id: 1035d5ca-b0ec-4523-74fb-08db93fc3a39
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O32J/DTluzFoqNq/kx67DkFXIafJdFqFzP4LeRueMSniY9vDPOFy9jVQ9mbAqdEl/vUIEMsG6ChmieZjxCYsakPMDRExQIE0IFUP5LwXsqKAzJwP60TSvW82ygU8/Nf3yqFc8uokIz5dpoHjYRgFyAvtWP7k06Dxi6UtugaEpe9UnBB/c8Fqxj7oDgt8aUijLpm/u2oLtovDGQDL3+lnw8jf8AzryFFwYStICghs/oGDtlg6at9WO41+6OGoOUr/mrXlNk4b0xYbya8DXschyAX5lsz+gd0x4Rmajsz0JAzwHT6731fpcdER/asx3lOQREoxCIm1qlWGaHSAmRIQcfl2BElUwmP9qaGiun5a822m/ISM49V88aJ4UbgQJSbfRLs5UuyQJapn/dDIgJHIM1qVxVYy6evVDqly4Bcjnlbq5d5U4Kh3Fbissh+JadoF0rNgydKZ/jLtmE5aFtVlyednvjJSo6KCWv9V0q36oLZLQnVKz1Z0C4kuCH+YeK/+ihqNMWjLfwFA5pju0ptkBc6o1EAmRjP3d1DEOKaQHRQd9cFuWQmqT1Ww2dyIq5+iMBVjdLbkHjTlJpsigZmbD3mX2lqNvsEsPttkGwwJF3S5z9kkRF4Az3Py1yvD1O9xeZj6YhJlGHTVL2K1NKkUwrl+eQFM//7dM8Mr8VUGiyA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR03MB7616.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(376002)(396003)(136003)(346002)(366004)(39860400002)(451199021)(122000001)(53546011)(6506007)(26005)(38100700002)(186003)(38070700005)(2616005)(83380400001)(2906002)(85182001)(36756003)(5660300002)(7416002)(8676002)(478600001)(110136005)(86362001)(6512007)(54906003)(71200400001)(6486002)(41300700001)(316002)(91956017)(8936002)(64756008)(66446008)(66476007)(76116006)(66946007)(66556008)(4326008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZXQvcTYxclJPTnZieVJxVm9aRmFSbWlxSzdlSjBYR2NBK2ozL3JuZlptcmRp?=
 =?utf-8?B?YTBwakJNaTFLMWhFMzVoYXFvckxaaGcvdGh2MEhqRmh6MlZYMFFqcjZEOVpJ?=
 =?utf-8?B?cFFud3k1ZkkzM2M1WGFRL3hLaDhab01ucTNTeHlWU1BFdGtFU01oTGxXSUpN?=
 =?utf-8?B?QVNkcHp3dEgyY3Zydi9MRnBoTC9qYmNRNlVDSHBTU1lJNk5ERTg3UER3UWc5?=
 =?utf-8?B?N2EwZHlvUktUSmNENGdPc0JTNmQwVGxQZm04SVlTVUNOZzVqZ1F6VHFQZFha?=
 =?utf-8?B?OVlOTjNrclV4bTAxQWc3RTFPbGo4UjBhbnRRUVRXQ3d4eG1sbHJ5WVAyVVZt?=
 =?utf-8?B?aHhlRVN0R1Yzc2tmQ1NPd2cxc0RrTGg5Q3JrVzZ1cnhaVW0ybi92Ym1OeFVE?=
 =?utf-8?B?bVZCOE9KWUZvSGVVWEpja3VYd2JzVTIwSXcxM0hmVUtLMzAxRXQ0N2dIK2Vn?=
 =?utf-8?B?cVJ3QTNBS0trdzhsUUpCUmFlaE55N3MvczUrN1NveTJxanRTMy85bHovL2NX?=
 =?utf-8?B?N3M5S2hzMVI0WDMxa3FGemtuelVjYWZmYktnNnN5L0hwVmpudVQvSnRRcnox?=
 =?utf-8?B?a2V6T3MrMWdVTHNEeDJJNFpXYnVpZHdTRlhZWlMrN29hMGhWTkZhM2o1VFN2?=
 =?utf-8?B?dXYwWWp1UDZmbWtxenlZczJGRGs0ODVDQ09jcHhEd3ovWnNmRVVjUGl1cktw?=
 =?utf-8?B?WXBVYUw3M2NqWWNXU0VFdE1DZVBOWDI5eGhSRHVrK1cxWkszZzJLaGN1N0hX?=
 =?utf-8?B?cVpsVTlpOENkMHY0YzVzNXM2d0MxcDlpSmFDYVZLb2d4NnZvSTI1VnJxaVE5?=
 =?utf-8?B?TCtXbnR0dHh5dFUvd3pOVEVtYlBEbFdncHNEQXBKS0svb0daZG9Ccy82WFRZ?=
 =?utf-8?B?OURSaVE2VmRhRi9qNG5ETHIzL050RWdET3NHY0FWdmovQkg1dUh2bXcyYzVn?=
 =?utf-8?B?WkIzaWZRSEJvSEVGUVJRanhxbEdDamtEQU5SQUJTR0hoTUFrak13dXY4L09j?=
 =?utf-8?B?WDdlMjYzNFVPODZXOXY0aU9iL0Uvclg4RDY0aC9oZ25qVUprRURyTWgxN3V5?=
 =?utf-8?B?T3lBNEtTVGVza3JsMG50TjBQS0QyUFgyZDFxNFJsWWVZZmp1SDhoMDhHWFFP?=
 =?utf-8?B?dDA1YWFRK2ZUblR1YVlCeEdTUUE1dC9hWnlIM2p0M2FlQXNzOVZWVW9MMUtp?=
 =?utf-8?B?QUFyNUlBajJUbWxvd1lpbGQ3eHBCMlNtZXZwdWU3YTRKNFNYOFNSVWdoaTFs?=
 =?utf-8?B?VFRmaFNkR3N2Mm5NSVJUM05GTmtSMG5uZXp1NDFRSVppR284eXA4VUhET1dQ?=
 =?utf-8?B?Qmt3MkxPUHpEUkl6enlCdmRVMDFmczR1VDR4YjkxeC8xejhZSHl4ZXJxUnRv?=
 =?utf-8?B?N0Rkd1liS2FKYnVFd2d1dyszcHYxWnJoM2hUanllQkR3ZWRrUmxzdjVHMWsx?=
 =?utf-8?B?eVA0MGJwR1RUM3ZMdUViRENKTHVEckpQaS9KRi9NZWNCOXZyYVM3Q2pmZDNV?=
 =?utf-8?B?MFVESzRPNHhIVzNiYXNXV3BqTU1oNDR3ZUdNZ3RSZFhSMXp6MHhBU2VjbWgw?=
 =?utf-8?B?WjBLL2hrM1RVV0l4dmJNWHZBZ0hPVDZFdTFVTk12b1JtLyt4MW1rci8rNml1?=
 =?utf-8?B?ekQ3M2JXSmI0Nkgyd1B6REpwZCtlMDNxOWRVQVhCVE4wa2g4bTgwL29SQnVV?=
 =?utf-8?B?OGVPdzBPaHFOcnZjMmxvc0t0UGxpVFhqVk9kYWRjK2pPUzcxTDFncm5UNzBK?=
 =?utf-8?B?WG11ZmxtKzdLZ0JqanpkTTROUFBKMWVRbkQ4OVZvNTN5N0cwOEhYN0w2RG1Z?=
 =?utf-8?B?SUMzek95cmhTKytDOCtDTUx0NFNoSGJoTzJOQ05QcHBGMzFJOTAweHRMQ0ds?=
 =?utf-8?B?Tk9jTEZaUWpwMVJnUDIyNVFPUWd3SitHVXljZW8vS3JLdmhiU09FZUlXWlgz?=
 =?utf-8?B?TS9yMU5HS1VFQWQ1TFhuRmp6R0FaUFJ4d2FOYzlOaTJ4bVcxS2VPcGUrQ0da?=
 =?utf-8?B?SWdVZEZyOWdKVEVtKzB3dG54ZGhHaERrZld6V3ZvT3Z1MGhhdkQvRkluZUhm?=
 =?utf-8?B?c3lhZUF1Z0lEMWxDYWRtakxxN3pCaFdlMHdIU0NhbEUzL1ZpRzRKdmwrMjZv?=
 =?utf-8?B?MERUUXZHT2lOdkgwOEF1V3R3VnUzV2xIOGVzOFliYjNXTTdCS0FNWUxKU1kz?=
 =?utf-8?B?eGc9PQ==?=
Content-ID: <DFDBC3588F495C49B1B0E8ED31381835@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SEZPR03MB7616.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1035d5ca-b0ec-4523-74fb-08db93fc3a39
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2023 08:32:52.0918
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h5yQjOouypQdiItFoZeDh/nbrPOPpYC+e51DVm2HgS0EsS0cHHi5cuMEFcTSehCbhzGhjDmIqPZQ+3j9WH+bdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB7375
Content-Type: multipart/alternative;
	boundary="__=_Part_Boundary_002_1801065578.374948272"
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=NXPPT5V4;       dkim=neutral
 (body hash did not verify) header.i=@mediateko365.onmicrosoft.com
 header.s=selector2-mediateko365-onmicrosoft-com header.b=NkRGhW94;
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

--__=_Part_Boundary_002_1801065578.374948272
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<pre>
Hi&#32;CK&#32;and&#32;Fei,

Thanks&#32;for&#32;the&#32;review.

On&#32;Thu,&#32;2023-07-20&#32;at&#32;07:52&#32;+0000,&#32;CK&#32;Hu&#32;(&=
#32993;&#20426;&#20809;)&#32;wrote:
&gt;&#32;Hi,&#32;Fei:
&gt;&#32;
&gt;&#32;On&#32;Mon,&#32;2023-07-17&#32;at&#32;11:59&#32;+0800,&#32;Fei&#32=
;Shao&#32;wrote:
&gt;&#32;&gt;&#32;&#32;&#32;
&gt;&#32;&gt;&#32;External&#32;email&#32;:&#32;Please&#32;do&#32;not&#32;cl=
ick&#32;links&#32;or&#32;open&#32;attachments
&gt;&#32;&gt;&#32;until
&gt;&#32;&gt;&#32;you&#32;have&#32;verified&#32;the&#32;sender&#32;or&#32;t=
he&#32;content.
&gt;&#32;&gt;&#32;&#32;Hi&#32;CK,
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;On&#32;Fri,&#32;Jul&#32;14,&#32;2023&#32;at&#32;5:27&#823=
9;PM&#32;CK&#32;Hu&#32;(&#32993;&#20426;&#20809;)&#32;&lt;ck.hu@mediatek.co=
m&gt;
&gt;&#32;&gt;&#32;wrote:
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;Hi,&#32;Nancy:
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;On&#32;Fri,&#32;2023-04-21&#32;at&#32;10:16&#32;=
+0800,&#32;Nancy.Lin&#32;wrote:
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;snip
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;In&#32;line&#32;566,&#32;the&#32;statement&#32;i=
s
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;if&#32;(nodo)&#32;{
&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;comp_pde=
v&#32;=3D&#32;...
&gt;&#32;&gt;&#32;&gt;&#32;}
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;The&#32;comment&#32;says&#32;that&#32;only&#32;o=
vl_adaptoer&#32;has&#32;no&#32;device&#32;node,&#32;so
&gt;&#32;&gt;&#32;&gt;&#32;the
&gt;&#32;&gt;&#32;&gt;&#32;checking&#32;should&#32;be
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;if&#32;(type&#32;!=3D&#32;MTK_DISP_OVL_ADAPTOR)&=
#32;{
&gt;&#32;&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;comp_pde=
v&#32;=3D&#32;...
&gt;&#32;&gt;&#32;&gt;&#32;}
&gt;&#32;&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;and&#32;later&#32;it&#32;would&#32;return&#32;wh=
en&#32;type&#32;=3D&#32;MTK_DISP_OVL_ADAPTOR,
&gt;&#32;&gt;&#32;&gt;&#32;so&#32;there&#32;would&#32;be&#32;no&#32;problem=
&#32;of&#32;uninitialized&#32;symbol.
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;That&#32;sounds&#32;fair,&#32;but&#32;IIUC&#32;what&#32;N=
ancy&#32;tries&#32;to&#32;resolve&#32;here&#32;is&#32;the
&gt;&#32;&gt;&#32;false-positive&#32;Smatch&#32;warning.
&gt;&#32;&gt;&#32;How&#32;about&#32;this:&#32;given&#32;the&#32;&#96;if&#32=
;(node)&#96;&#32;block&#32;was&#32;exclusively&#32;added
&gt;&#32;&gt;&#32;for
&gt;&#32;&gt;&#32;ovl_adaptor&#32;in&#32;[1],&#32;plus&#32;the&#32;init&#32=
;function&#32;will&#32;immediately&#32;return
&gt;&#32;&gt;&#32;after&#32;that&#32;in&#32;this&#32;case,&#32;it&#32;shoul=
d&#32;be&#32;safe&#32;to&#32;do&#32;the&#32;following
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;&#96;&#96;&#96;
&gt;&#32;&gt;&#32;/*&#32;Not&#32;all&#32;drm&#32;components&#32;have&#32;a&=
#32;DTS&#32;device&#32;node...&#32;*/
&gt;&#32;&gt;&#32;if&#32;(node&#32;=3D=3D&#32;NULL)
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;return&#32;0;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;comp_pdev&#32;=3D&#32;of_find_device_by_node(node);
&gt;&#32;&gt;&#32;...
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;if&#32;(type&#32;=3D=3D&#32;MTK_DISP_AAL&#32;||
&gt;&#32;&gt;&#32;...
&gt;&#32;&gt;&#32;&#96;&#96;&#96;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;which&#32;is&#32;equivalent&#32;to&#32;adding&#32;a&#32;&=
#96;node&#32;=3D=3D&#32;NULL&#96;&#32;check&#32;before&#32;[1].
&gt;&#32;&gt;&#32;This&#32;should&#32;suppress&#32;the&#32;Smatch&#32;warni=
ng&#32;because&#32;&#96;comp_pdev&#96;&#32;will&#32;be
&gt;&#32;&gt;&#32;(again)&#32;unconditionally&#32;assigned&#32;to&#32;somet=
hing,&#32;and&#32;the&#32;&#96;type&#32;=3D=3D
&gt;&#32;&gt;&#32;MTK_DISP_OVL_ADAPTOR&#96;&#32;line&#32;can&#32;be&#32;dro=
pped&#32;also&#32;(optional&#63;).
&gt;&#32;
&gt;&#32;This&#32;solution&#32;also&#32;looks&#32;good&#32;to&#32;me.
&gt;&#32;
&gt;&#32;Regards,
&gt;&#32;CK
&gt;&#32;
I&#32;will&#32;send&#32;the&#32;next&#32;version&#32;of&#32;modifications&#=
32;based&#32;on&#32;your
suggestions.

Thanks,
Nancy

&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;[1]:&#32;commit&#32;0d9eee9118b7&#32;(&quot;drm/mediatek:=
&#32;Add&#32;drm&#32;ovl_adaptor&#32;sub
&gt;&#32;&gt;&#32;driver&#32;for&#32;MT8195&quot;)
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;Regards,
&gt;&#32;&gt;&#32;Fei

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
om/d/msgid/clang-built-linux/ecedbe0bd06a67654bc90421569ad6e6bd9ddfe7.camel=
%40mediatek.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/clang-built-linux/ecedbe0bd06a67654bc90421569ad6e6bd9ddfe7.c=
amel%40mediatek.com</a>.<br />

--__=_Part_Boundary_002_1801065578.374948272
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi CK and Fei,

Thanks for the review.

On Thu, 2023-07-20 at 07:52 +0000, CK Hu (=E8=83=A1=E4=BF=8A=E5=85=89) wrot=
e:
> Hi, Fei:
>=20
> On Mon, 2023-07-17 at 11:59 +0800, Fei Shao wrote:
> >  	=20
> > External email : Please do not click links or open attachments
> > until
> > you have verified the sender or the content.
> >  Hi CK,
> >=20
> > On Fri, Jul 14, 2023 at 5:27=E2=80=AFPM CK Hu (=E8=83=A1=E4=BF=8A=E5=85=
=89) <ck.hu@mediatek.com>
> > wrote:
> > >=20
> > > Hi, Nancy:
> > >=20
> > > On Fri, 2023-04-21 at 10:16 +0800, Nancy.Lin wrote:
> >=20
> > snip
> > >=20
> > > In line 566, the statement is
> > >=20
> > > if (nodo) {
> > >         comp_pdev =3D ...
> > > }
> > >=20
> > > The comment says that only ovl_adaptoer has no device node, so
> > > the
> > > checking should be
> > >=20
> > > if (type !=3D MTK_DISP_OVL_ADAPTOR) {
> > >         comp_pdev =3D ...
> > > }
> > >=20
> > > and later it would return when type =3D MTK_DISP_OVL_ADAPTOR,
> > > so there would be no problem of uninitialized symbol.
> >=20
> > That sounds fair, but IIUC what Nancy tries to resolve here is the
> > false-positive Smatch warning.
> > How about this: given the `if (node)` block was exclusively added
> > for
> > ovl_adaptor in [1], plus the init function will immediately return
> > after that in this case, it should be safe to do the following
> >=20
> > ```
> > /* Not all drm components have a DTS device node... */
> > if (node =3D=3D NULL)
> >     return 0;
> >=20
> > comp_pdev =3D of_find_device_by_node(node);
> > ...
> >=20
> > if (type =3D=3D MTK_DISP_AAL ||
> > ...
> > ```
> >=20
> > which is equivalent to adding a `node =3D=3D NULL` check before [1].
> > This should suppress the Smatch warning because `comp_pdev` will be
> > (again) unconditionally assigned to something, and the `type =3D=3D
> > MTK_DISP_OVL_ADAPTOR` line can be dropped also (optional?).
>=20
> This solution also looks good to me.
>=20
> Regards,
> CK
>=20
I will send the next version of modifications based on your
suggestions.

Thanks,
Nancy

> >=20
> > [1]: commit 0d9eee9118b7 ("drm/mediatek: Add drm ovl_adaptor sub
> > driver for MT8195")
> >=20
> > Regards,
> > Fei

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ecedbe0bd06a67654bc90421569ad6e6bd9ddfe7.camel%40mediatek=
.com.

--__=_Part_Boundary_002_1801065578.374948272--

