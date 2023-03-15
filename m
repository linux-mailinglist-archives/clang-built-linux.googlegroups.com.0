Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB2H6YSQAMGQEYDPODBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2DD6BA5BC
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Mar 2023 04:45:46 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id nm11-20020a17090b19cb00b0023d0c90d851sf3302149pjb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Mar 2023 20:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678851945;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yDWPQi0urp1dOUDnnzBJFU/Yh0mWvvnlc0jtF2zCxn8=;
        b=lTYlL8Dgdtk5R6QyhROO6UsRuVsNjouV73xfRDF1GMw83S+GYs14ID/8IajXNuJzcg
         mroyb1jn7nWEd9Mr+3clfbdAAbyGyrr3A0aCrUfkFCN5k2aXSlKWzKxphrLDz2ypsZKR
         6f+jvsB+lc1B6rPwl74zkjisP6YvnzkqLjb2WRHGAd+7xFvQ0brzhR7lG+MJ4PB6J63j
         lvpJKuIax5wOUnTjEUTg0jPfnjCYrJD4SYL+8PNIkchODE+X6KqsIwivvK8on3iflw+4
         0SuqvgN8NFQWsjAvq1V0BW1OhVjkcTRN/xrsifTXtDDshOO9KMDT34jRtraVTd4wObds
         N12Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678851945;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yDWPQi0urp1dOUDnnzBJFU/Yh0mWvvnlc0jtF2zCxn8=;
        b=BRLjOVLLXxH/ezBfOJ5kpU0c3EHaRB4PTG7UwLRwaiBzQk5qZmlpdJi4ttQovrgfM9
         CAaHBdzERQeYePbLlgWIlBCNtDmGpO6Bm4qGyquaCZRdh+kSwo+IzdhirAiImztRQjlG
         Wo8BvKXvgjyck0tbtBJLfzIpsrZuFxhxaytIA10SQf3HfyD36mIS8LuDOME4DYMmQLKB
         zKLfZdEkSLHAPuLCSN5yp23v6D1TtUsmUUZVdRiccvDyd7hoymkr4PnIWj64NJ+CRkaH
         nJoyy3HK2NtBMdaTEuVn/dHUQ58qXuhfO/AAbzZBxFWcC+wqBRUunq4GOWeBYdPQJeRi
         9ZhA==
X-Gm-Message-State: AO0yUKWu0rITwVWRZBwIs+MvzEATV71wTBdAnRME520gI+tHbktRMlRt
	uPB3lr8Kq+5PdfWBS+Xot8Q=
X-Google-Smtp-Source: AK7set+stMvUBf8vfMeGcL8Lg2lrSvwmRYdScuAuGYgMj5XPBRHuYYLxOz9QJbuAK0kBras3srGb8Q==
X-Received: by 2002:a63:4f61:0:b0:507:4737:cdb5 with SMTP id p33-20020a634f61000000b005074737cdb5mr11080415pgl.8.1678851945022;
        Tue, 14 Mar 2023 20:45:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c943:b0:196:751e:4f6e with SMTP id
 i3-20020a170902c94300b00196751e4f6els17604082pla.10.-pod-prod-gmail; Tue, 14
 Mar 2023 20:45:44 -0700 (PDT)
X-Received: by 2002:a17:90b:2742:b0:237:47b0:3235 with SMTP id qi2-20020a17090b274200b0023747b03235mr41205232pjb.32.1678851944130;
        Tue, 14 Mar 2023 20:45:44 -0700 (PDT)
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id nl15-20020a17090b384f00b0023d1b501ed0si133056pjb.1.2023.03.14.20.45.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 20:45:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: d8b32f22c2e311eda06fc9ecc4dadd91-20230315
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.21,REQID:df0dc6c5-effa-4dc2-89fe-1296bc2008d6,IP:0,U
	RL:25,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:20
X-CID-INFO: VERSION:1.1.21,REQID:df0dc6c5-effa-4dc2-89fe-1296bc2008d6,IP:0,URL
	:25,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:20
X-CID-META: VersionHash:83295aa,CLOUDID:6ee0d5f5-ddba-41c3-91d9-10eeade8eac7,B
	ulkID:230315114539D0NPRS7X,BulkQuantity:0,Recheck:0,SF:38|17|19|102,TC:nil
	,Content:0,EDM:-3,IP:nil,URL:11|1,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,O
	SI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: d8b32f22c2e311eda06fc9ecc4dadd91-20230315
Received: from mtkmbs13n1.mediatek.inc [(172.21.101.193)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 80629492; Wed, 15 Mar 2023 11:45:36 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs10n1.mediatek.inc (172.21.101.34) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Wed, 15 Mar 2023 11:45:35 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Wed, 15 Mar 2023 11:45:35 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MCxxPL/PukY6KPzw5VEIlAFMMRj+n4M/xB/AvG0lYSykq7LwqN5IizJy4tor5G8RAaplqZvnmRjICW8+23VQvoxr4xeeWHnNQbZ8FY3O6bFPtzPeP6y2GIYnoRmCcJoXZc+rpKadMfgXNd+4Fvsdowk7Bca+CjHlQwVnbnufgdmANEUbdXDaiDDEpln3mj0fuZmtsY1kZuusEBj+zA53JmC0xhHFXP/4ohJ1LTW//w2k17ccxEYJHmw1vxEy1Ppo0H7KUpzsjdofokvEZJxyYknh8terCEJh24OQ4KHMVpdgOyqYBmrnwPy7QoyKy3tneUAx7/bm7i6UdRsI2RT2rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CrXxvjJX7gNsRX473tBOe6DezouoU9PHJfJQGUsAimA=;
 b=JdmLIv2SaymQZg5ScRFYMvV1N91+qN8eNJmHkmibVaE06D89GTgQo9z6GDXty9Ux1XaAHRQdGnuHjdRHdaQa/yv2JtJnUji+h7zU/uXN3rXTRVcdytSM5rRQ211f0T4VehUzJUY3tb3yeX+tHXtg+adpAAbYygDV0ZORfC0cpJlLN+setN/X4yhhT2eJwxlO+T4fvNiE5/+K/4cGN41dkQQvabflOspt0rohLyRoXt2ruJBn9pvNvPXNjDiBd8QnLU9X6Pl2743ZwbJwOYvwShVhDK3NPQfZ4460KrFBDBbHN5dnj5giymxkiln+B4mypPwKqCi4lUhhS1Me/kyrCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com (2603:1096:820:8::11)
 by KL1PR03MB6923.apcprd03.prod.outlook.com (2603:1096:820:b0::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Wed, 15 Mar
 2023 03:45:33 +0000
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::dd54:60c1:df32:bc65]) by KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::dd54:60c1:df32:bc65%4]) with mapi id 15.20.6178.026; Wed, 15 Mar 2023
 03:45:33 +0000
From: =?UTF-8?B?J05hbmN5IExpbiAo5p6X5qyj6J6iKScgdmlhIENsYW5nIEJ1aWx0IExpbnV4?= <clang-built-linux@googlegroups.com>
To: "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "chunkuang.hu@kernel.org"
	<chunkuang.hu@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
CC: "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	"nathan@kernel.org" <nathan@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "daniel@ffwll.ch" <daniel@ffwll.ch>,
	=?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "airlied@linux.ie" <airlied@linux.ie>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>
Subject: Re: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for
 mt8195
Thread-Topic: [PATCH v29 1/7] dt-bindings: mediatek: add ethdr definition for
 mt8195
Thread-Index: AQHZGcrXQb/1V2Icz0ST2hH4Pb2de677rZiA
Date: Wed, 15 Mar 2023 03:45:32 +0000
Message-ID: <4aff6a7a3b606f26ec793192d9c75774276935e0.camel@mediatek.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
	 <20221227081011.6426-2-nancy.lin@mediatek.com>
In-Reply-To: <20221227081011.6426-2-nancy.lin@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5175:EE_|KL1PR03MB6923:EE_
x-ms-office365-filtering-correlation-id: 9edabbfd-f06d-4910-d304-08db2507baaf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mQGNUvJL8ebzgLzCi17+GKvznkc3cbEuZmIfEO9oUnfaLBYFIDESYE5tCnppL4WL656YVPOLUjwJeAgWA8EvAiNshcxej5XR39yqNOQqpFnr0/z1jLm5c+x8e+6IoweqNxhgdId6dBi5WGnlFs6Xzvdc0JJYoSOkGzutmh/DAc7PcONKrHFiYd+6iMLMpo7ukLt40HclFR4u5JuiqaxcGwW2OWkh5W+Dh2xxP0gyD4UMmPAESgeldzSkmnDQBYIGgce8zwCY4oGqoyLq2t6nyqrUK+Slk7V6FPG5ASe2aYwcU5Ba4zSp5ED7Or3nv7f0F3oOtaYnCRVaBMQiO2ikVlTMpxt0eDmdKeAZkPLeL8ZdoLSYRXmlIwX+5IZ2iLIzy4FB4CU4dgTwwCN6WW8J2mcYhgvwzxaDZdUZwmpz/38mZgbTA2oXbfhtz93Oelpti3ADNkUQb0O+Di78bHJPv5g1ksnjnvQlrQDjENK+vsM4gsmbYCGHsx4HbD7lneQVnAx2+xIIohXIvDx8GZXlpF3XbyLH6KtGrbqhvMkpw2edJAgRcc1VgJUpGcPWx+81tnlChrTm5v8j60gY0XVycwKoq/qsRGv/HS0ZHajabPhcqrmgaWXYo873zgXOaXHDWNz4qSM9KCUIgEGzS9LsT3FLrQkV1eJN9kWzVqGFm85gcUqF72Bs+BuBab4/s6qYqxZMYmkvNtRea/pC5tE8hBzyA6sxcKL+SDRjvCiP7fbM9D/nGpinPTZiSqmTirUxCSQ3wKUVJcyWiMb6wpSNsA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5175.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(346002)(39860400002)(376002)(366004)(136003)(451199018)(2906002)(5660300002)(7416002)(8936002)(41300700001)(4001150100001)(38070700005)(38100700002)(85182001)(36756003)(86362001)(122000001)(478600001)(66946007)(66476007)(6486002)(76116006)(91956017)(66556008)(8676002)(66446008)(966005)(64756008)(71200400001)(4326008)(54906003)(110136005)(83380400001)(316002)(6506007)(2616005)(6512007)(26005)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UW96bHNDdHZ4WDhnTVhVci9DeHFRNEdrYlpRK1ExRm5lNERhM29DVWROSzYv?=
 =?utf-8?B?dFRSN0xiQVN6U2JUeDVpczlPK0FHK0pIMmw3S0FzUnFrR1ZLMW05dTVvY09v?=
 =?utf-8?B?M01lM0N2ZURRdkVUNjZYY1pLNllsOTY1aGJCc3dnK09YemI0cUViaU9yWnZJ?=
 =?utf-8?B?NGJNTUJFRkdwM2dtaFZrUkUrR2RTTmg2bjhLeEh0Ykd3SWVScWR4N1NBczR3?=
 =?utf-8?B?WFkxbGlPWVZDdkNzQm1hTTFnOGlhY1IwNmdMcHFzV1BrWnVoY3ZpT2NHMDRw?=
 =?utf-8?B?c2lXQXJGSlhKUnNGL1IzZFpzUENjU2xtMUJrZUJMN0RjT0I0aW1pSFdDNmhz?=
 =?utf-8?B?VnlYYy9YcW00cUo3RDlEWWg3bFJ6V1BGTTBxelZsdllxVnF1Ylp6V3NKNi9H?=
 =?utf-8?B?dW9UQzZFTG9IclpsbmNsbS9DckJQN3NoMS9RNEtHWmxVWUpVc3BaM3ZFcG95?=
 =?utf-8?B?QXlZNVhrZmtySDlSbFdscklTOFViaTZpY24rYmo1amdQRWhodENFcnpqVnc0?=
 =?utf-8?B?RVg0NG5yTHFhOUtZVXZkd2xPMUFPWGxUNk5zRVdDandPY2ZrWFNaQ3kxajVC?=
 =?utf-8?B?MmhkcFNKZ2N1RUhsT01KQ0VUYXFxZWFudEJ2UGtRRlhuNm5hOTF5VFdwSVAx?=
 =?utf-8?B?YjhLK01DYzdyL1FWZElNNmNoOFRJa3d5cXN0WGpPWnlFNDJOQk1FY2lDSUlE?=
 =?utf-8?B?Q0ZZeFJjNmNaTFd1NTdUVVpaMnRqREIrb1k3Z2tNNmw3ZDljRUpub2E0RWRQ?=
 =?utf-8?B?b2htWGMvaEhhWjR2ZFBiMkszekY0U1lRRTRtaXJLQStDNjZFWkwxWko1dmtx?=
 =?utf-8?B?SENxTE5OVzZSK1dkOHUzRmhYU1FGTDh2WnNXKzVsamV1R1hReWxIM2E5UW5S?=
 =?utf-8?B?VG4xUzF6amI2enhMOU1aeENBckV0c3J6cFY0SDU1VkI0c1RnM093REFnYmZ4?=
 =?utf-8?B?dCtrQzR1R295ZDJiN3NVMlhDeGdubm1obTBLelhDSHJKQ3AyeUxoYlFWYzlD?=
 =?utf-8?B?M2pSS0V4K2xISmdabThNTWpWS3dwaHAvRzd5ZkNZaGI3aFpLaTlXUVg4M3dv?=
 =?utf-8?B?SjhPZ2pFdVJPNzFVVzEzTEZKVU1JdHpFeHA4QUs3aVZjRkhLOHBaN0xOQko3?=
 =?utf-8?B?Z3ZUTkc3eURsOGZUbklTdmdaalJDVldHNVpDNFcrUzJIanZSODkxcDZ5bHhK?=
 =?utf-8?B?SHdVNDJ5R2hoUno0WTFrekt5VGNYT1hQWGo3NkVMNHFHWnBtQS9GeHVVdTNQ?=
 =?utf-8?B?UmwwUmdzcTMwbDZib2VoUDdTakJqSVo2WS93NGQrR05Gc051U2VDcWtJNEhj?=
 =?utf-8?B?WGtRWlhxUFpkQk1wbVFDV1pqWFJocFAydWNtejFYdXRYN05INXQyOG1nWnlB?=
 =?utf-8?B?a040UWp6YVNueENLRVE1V2lrOWVlRkpQT0U1akRyc21ZdHNIbC9aUkt3aGpi?=
 =?utf-8?B?NHJWSXQxL2NPZ1FseTkvQnUyUkJzdFVoQ3ZNR3hoSkltVnA4Z0tKWmRleUV2?=
 =?utf-8?B?U0VrTkNLUlRoWWVRSVdHMU5zT0xOYmFtemlSQ0MrS3NxbFJ0NDNvdlBHNjFK?=
 =?utf-8?B?dmxndkF6RmNtTzNrZm5NOTRVUm5EcUVsbS9RbS8weXpWQnJFNmhqdVU3aEVB?=
 =?utf-8?B?NE1tKzFkZFZKSlVjWlVhdDh1THhLb1A0M1E0SGJVUVJZT3haRitQdzJnTUl3?=
 =?utf-8?B?S1hhelptWHN2bWNzNUdFdGFZVnpNTy9tUmpNTUM5dzJwOEloa0RKUk9wZmJE?=
 =?utf-8?B?SUJyWFR0NlR2cDZraHBYOGxSMlRTVVpVcmlOTWdYMHpxeCtMMjdBbnQwdFBn?=
 =?utf-8?B?TVViQ1UvM2FBeEdGVDFDMXdERzBDM1NIRTBkdDlXSjh6YmJtcG1rbzRsNGpr?=
 =?utf-8?B?Y2M5V1lEOG0yQ09JUFd3aUpwd21mVUtFNlR2SUhqSExQQzBWV3Z2Mk1Fd1BE?=
 =?utf-8?B?dFB6VWJqaU4za1NCR1NwYnZRNFF3VzlDNXM5TnNIYi9Da0ptcG5ma2p3YXUv?=
 =?utf-8?B?WlpWN2JsZkdWa2JPZEMzdDZmb3kwNUx0blc4bzgvY0tMZFZ2azFNc0FjMXAr?=
 =?utf-8?B?RnNucU1obUhPNU9pNmpsZFZZWFVjd0FoR3B6cWVjMlRGWXZrNnZybVpsa00x?=
 =?utf-8?B?YXlaVUdEcDFqTW91NWh6bGJlTE1PRW55eGJ0RlBnSndzbzdXeTFXY2YwUU1E?=
 =?utf-8?B?cVE9PQ==?=
Content-ID: <A5C63BDE7B34ED43B60273DBAE485633@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5175.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9edabbfd-f06d-4910-d304-08db2507baaf
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2023 03:45:32.9515
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xSN7gBcMRUUp2O9EKjdurtkvl5OGbW6oJWwt8XmDXpkkQcS/+GkICQFNw2gx2D0WttX7l8AYD9MzAzau7h43Ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB6923
Content-Type: multipart/alternative;
	boundary="__=_Part_Boundary_008_1252961165.566447280"
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=L4RaPV2P;       dkim=neutral
 (body hash did not verify) header.i=@mediateko365.onmicrosoft.com
 header.s=selector2-mediateko365-onmicrosoft-com header.b=YWWMLCL9;
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

--__=_Part_Boundary_008_1252961165.566447280
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<pre>
On&#32;Tue,&#32;2022-12-27&#32;at&#32;16:10&#32;+0800,&#32;Nancy.Lin&#32;wr=
ote:
&gt;&#32;Add&#32;vdosys1&#32;ETHDR&#32;definition.
&gt;&#32;
&gt;&#32;Signed-off-by:&#32;Nancy.Lin&#32;&lt;nancy.lin@mediatek.com&gt;
&gt;&#32;Reviewed-by:&#32;Chun-Kuang&#32;Hu&#32;&lt;chunkuang.hu@kernel.org=
&gt;
&gt;&#32;Reviewed-by:&#32;AngeloGioacchino&#32;Del&#32;Regno&#32;&lt;
&gt;&#32;angelogioacchino.delregno@collabora.com&gt;
&gt;&#32;Reviewed-by:&#32;Krzysztof&#32;Kozlowski&#32;&lt;krzysztof.kozlows=
ki@linaro.org&gt;
&gt;&#32;Tested-by:&#32;AngeloGioacchino&#32;Del&#32;Regno&#32;&lt;
&gt;&#32;angelogioacchino.delregno@collabora.com&gt;
&gt;&#32;---
&gt;&#32;&#32;.../display/mediatek/mediatek,ethdr.yaml&#32;&#32;&#32;&#32;&=
#32;&#32;|&#32;188
&gt;&#32;++++++++++++++++++
&gt;&#32;&#32;1&#32;file&#32;changed,&#32;188&#32;insertions(+)
&gt;&#32;&#32;create&#32;mode&#32;100644
&gt;&#32;Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.=
yam
&gt;&#32;l
&gt;&#32;
&gt;&#32;diff&#32;--git
&gt;&#32;a/Documentation/devicetree/bindings/display/mediatek/mediatek,ethd=
r.y
&gt;&#32;aml
&gt;&#32;b/Documentation/devicetree/bindings/display/mediatek/mediatek,ethd=
r.y
&gt;&#32;aml
&gt;&#32;new&#32;file&#32;mode&#32;100644
&gt;&#32;index&#32;000000000000..3b11e47a8834
&gt;&#32;---&#32;/dev/null
&gt;&#32;+++
&gt;&#32;b/Documentation/devicetree/bindings/display/mediatek/mediatek,ethd=
r.y
&gt;&#32;aml
&gt;&#32;@@&#32;-0,0&#32;+1,188&#32;@@
&gt;&#32;+#&#32;SPDX-License-Identifier:&#32;(GPL-2.0-only&#32;OR&#32;BSD-2=
-Clause)
&gt;&#32;+%YAML&#32;1.2
&gt;&#32;+---
&gt;&#32;+&#36;id:&#32;
&gt;&#32;http://devicetree.org/schemas/display/mediatek/mediatek,ethdr.yaml=
#
&gt;&#32;+&#36;schema:&#32;http://devicetree.org/meta-schemas/core.yaml#
&gt;&#32;+
&gt;&#32;+title:&#32;MediaTek&#32;Ethdr&#32;Device
&gt;&#32;+
&gt;&#32;+maintainers:
&gt;&#32;+&#32;&#32;-&#32;Chun-Kuang&#32;Hu&#32;&lt;chunkuang.hu@kernel.org=
&gt;
&gt;&#32;+&#32;&#32;-&#32;Philipp&#32;Zabel&#32;&lt;p.zabel@pengutronix.de&=
gt;
&gt;&#32;+
&gt;&#32;+description:
&gt;&#32;+&#32;&#32;ETHDR&#32;(ET&#32;High&#32;Dynamic&#32;Range)&#32;is&#3=
2;a&#32;MediaTek&#32;internal&#32;HDR&#32;engine
&gt;&#32;and&#32;is
&gt;&#32;+&#32;&#32;designed&#32;for&#32;HDR&#32;video&#32;and&#32;graphics=
&#32;conversion&#32;in&#32;the&#32;external
&gt;&#32;display&#32;path.
&gt;&#32;+&#32;&#32;It&#32;handles&#32;multiple&#32;HDR&#32;input&#32;types=
&#32;and&#32;performs&#32;tone&#32;mapping,
&gt;&#32;color
&gt;&#32;+&#32;&#32;space/color&#32;format&#32;conversion,&#32;and&#32;then=
&#32;combine&#32;different&#32;layers,
&gt;&#32;+&#32;&#32;output&#32;the&#32;required&#32;HDR&#32;or&#32;SDR&#32;=
signal&#32;to&#32;the&#32;subsequent&#32;display
&gt;&#32;path.
&gt;&#32;+&#32;&#32;This&#32;engine&#32;is&#32;composed&#32;of&#32;two&#32;=
video&#32;frontends,&#32;two&#32;graphic
&gt;&#32;frontends,
&gt;&#32;+&#32;&#32;one&#32;video&#32;backend&#32;and&#32;a&#32;mixer.&#32;=
ETHDR&#32;has&#32;two&#32;DMA&#32;function&#32;blocks,
&gt;&#32;DS&#32;and&#32;ADL.
&gt;&#32;+&#32;&#32;These&#32;two&#32;function&#32;blocks&#32;read&#32;the&=
#32;pre-programmed&#32;registers&#32;from
&gt;&#32;DRAM&#32;and
&gt;&#32;+&#32;&#32;set&#32;them&#32;to&#32;HW&#32;in&#32;the&#32;v-blankin=
g&#32;period.
&gt;&#32;+
&gt;&#32;+properties:
&gt;&#32;+&#32;&#32;compatible:
&gt;&#32;+&#32;&#32;&#32;&#32;const:&#32;mediatek,mt8195-disp-ethdr
&gt;&#32;+
&gt;&#32;+&#32;&#32;reg:
&gt;&#32;+&#32;&#32;&#32;&#32;maxItems:&#32;7
&gt;&#32;+
&gt;&#32;+&#32;&#32;reg-names:
&gt;&#32;+&#32;&#32;&#32;&#32;items:
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;mixer
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_fe0
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_fe1
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;gfx_fe0
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;gfx_fe1
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_be
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;adl_ds
&gt;&#32;+
&gt;&#32;+&#32;&#32;interrupts:
&gt;&#32;+&#32;&#32;&#32;&#32;maxItems:&#32;1
&gt;&#32;+
&gt;&#32;+&#32;&#32;iommus:
&gt;&#32;+&#32;&#32;&#32;&#32;minItems:&#32;1
&gt;&#32;+&#32;&#32;&#32;&#32;maxItems:&#32;2
&gt;&#32;+
&gt;&#32;+&#32;&#32;clocks:
&gt;&#32;+&#32;&#32;&#32;&#32;items:
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;mixer&#32;cl=
ock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;video&#32;fr=
ontend&#32;0&#32;clock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;video&#32;fr=
ontend&#32;1&#32;clock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;graphic&#32;=
frontend&#32;0&#32;clock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;graphic&#32;=
frontend&#32;1&#32;clock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;video&#32;ba=
ckend&#32;clock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;autodownload=
&#32;and&#32;menuload&#32;clock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;video&#32;fr=
ontend&#32;0&#32;async&#32;clock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;video&#32;fr=
ontend&#32;1&#32;async&#32;clock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;graphic&#32;=
frontend&#32;0&#32;async&#32;clock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;graphic&#32;=
frontend&#32;1&#32;async&#32;clock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;video&#32;ba=
ckend&#32;async&#32;clock
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;ethdr&#32;to=
p&#32;clock
&gt;&#32;+
&gt;&#32;+&#32;&#32;clock-names:
&gt;&#32;+&#32;&#32;&#32;&#32;items:
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;mixer
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_fe0
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_fe1
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;gfx_fe0
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;gfx_fe1
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_be
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;adl_ds
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_fe0_async
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_fe1_async
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;gfx_fe0_async
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;gfx_fe1_async
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_be_async
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;ethdr_top
&gt;&#32;+
&gt;&#32;+&#32;&#32;power-domains:
&gt;&#32;+&#32;&#32;&#32;&#32;maxItems:&#32;1
&gt;&#32;+
&gt;&#32;+&#32;&#32;resets:
&gt;&#32;+&#32;&#32;&#32;&#32;items:
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;video&#32;fr=
ontend&#32;0&#32;async&#32;reset
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;video&#32;fr=
ontend&#32;1&#32;async&#32;reset
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;graphic&#32;=
frontend&#32;0&#32;async&#32;reset
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;graphic&#32;=
frontend&#32;1&#32;async&#32;reset
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;video&#32;ba=
ckend&#32;async&#32;reset
&gt;&#32;+
&gt;&#32;+&#32;&#32;reset-names:
&gt;&#32;+&#32;&#32;&#32;&#32;items:
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_fe0_async
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_fe1_async
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;gfx_fe0_async
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;gfx_fe1_async
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;vdo_be_async
&gt;&#32;+
&gt;&#32;+&#32;&#32;mediatek,gce-client-reg:
&gt;&#32;+&#32;&#32;&#32;&#32;&#36;ref:&#32;/schemas/types.yaml#/definition=
s/phandle-array
&gt;&#32;+&#32;&#32;&#32;&#32;description:&#32;The&#32;register&#32;of&#32;=
display&#32;function&#32;block&#32;to&#32;be&#32;set&#32;by
&gt;&#32;gce.
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;There&#32;are&#32;4&#32;arguments&#=
32;in&#32;this&#32;property,&#32;gce&#32;node,&#32;subsys&#32;id,
&gt;&#32;offset&#32;and
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;register&#32;size.&#32;The&#32;subs=
ys&#32;id&#32;is&#32;defined&#32;in&#32;the&#32;gce&#32;header&#32;of
&gt;&#32;each&#32;chips
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;include/dt-bindings/gce/&lt;chip&gt=
;-gce.h,&#32;mapping&#32;to&#32;the&#32;register
&gt;&#32;of&#32;display
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;function&#32;block.
&gt;&#32;+&#32;&#32;&#32;&#32;items:
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;items:
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;ph=
andle&#32;of&#32;GCE
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;GC=
E&#32;subsys&#32;id
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;re=
gister&#32;offset
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;re=
gister&#32;size
&gt;&#32;+&#32;&#32;&#32;&#32;minItems:&#32;7
&gt;&#32;+&#32;&#32;&#32;&#32;maxItems:&#32;7
&gt;&#32;+

Hi&#32;Rob&#32;and&#32;krzysztof,

I&#32;got&#32;the&#32;two&#32;messages&#32;when&#32;running&#32;dt_binding_=
check&#32;[1].&#32;This&#32;binding
patch&#32;was&#32;sent&#32;previously&#32;in&#32;[2].&#32;

If&#32;I&#32;remove&#32;the&#32;following&#32;items/minItems/maxItems&#32;i=
n&#32;the&#32;mediatek,gce-
client&#32;property,&#32;the&#32;two&#32;message&#32;disappear.&#32;I&#32;d=
on&#39;t&#32;know&#32;what&#39;s&#32;wrong
with&#32;the&#32;original&#32;syntax.&#32;Do&#32;you&#32;have&#32;any&#32;s=
uggestions&#32;for&#32;this&#63;

-&#32;&#32;&#32;&#32;items:
-&#32;&#32;&#32;&#32;&#32;&#32;items:
-&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;phandle&#32=
;of&#32;GCE
-&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;GCE&#32;sub=
sys&#32;id
-&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;register&#3=
2;offset
-&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;description:&#32;register&#3=
2;size
-&#32;&#32;&#32;&#32;minItems:&#32;7
-&#32;&#32;&#32;&#32;maxItems:&#32;7


[1].
Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.examp
le.dtb
/proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devicetr
ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:&#32;
hdr-engine@1c114000:&#32;mediatek,gce-client-reg:0:&#32;[4294967295,&#32;7,=
&#32;16384,
4096,&#32;4294967295,&#32;7,&#32;20480,&#32;4096,&#32;4294967295,&#32;7,&#3=
2;28672,&#32;4096,
4294967295,&#32;7,&#32;36864,&#32;4096,&#32;4294967295,&#32;7,&#32;40960,&#=
32;4096,&#32;4294967295,&#32;7,
45056,&#32;4096,&#32;4294967295,&#32;7,&#32;49152,&#32;4096]&#32;is&#32;too=
&#32;long
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;From&#32;schema:
/proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devicetr
ee/bindings/display/mediatek/mediatek,ethdr.yaml
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
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;From&#32;schema:
/proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devicetr
ee/bindings/display/mediatek/mediatek,ethdr.yaml

[2]&#32;[RESEND,v5,3/3]&#32;dt-bindings:&#32;mediatek:&#32;add&#32;ethdr&#3=
2;definition&#32;for
mt8195

https://patchwork.ozlabs.org/project/devicetree-bindings/patch/202206080438=
52.4980-4-rex-bc.chen@mediatek.com/


Regards,
Nancy















&gt;&#32;+required:
&gt;&#32;+&#32;&#32;-&#32;compatible
&gt;&#32;+&#32;&#32;-&#32;reg
&gt;&#32;+&#32;&#32;-&#32;clocks
&gt;&#32;+&#32;&#32;-&#32;clock-names
&gt;&#32;+&#32;&#32;-&#32;interrupts
&gt;&#32;+&#32;&#32;-&#32;power-domains
&gt;&#32;+&#32;&#32;-&#32;resets
&gt;&#32;+&#32;&#32;-&#32;mediatek,gce-client-reg
&gt;&#32;+
&gt;&#32;+additionalProperties:&#32;false
&gt;&#32;+
&gt;&#32;+examples:
&gt;&#32;+&#32;&#32;-&#32;|
&gt;&#32;+&#32;&#32;&#32;&#32;#include&#32;&lt;dt-bindings/interrupt-contro=
ller/arm-gic.h&gt;
&gt;&#32;+&#32;&#32;&#32;&#32;#include&#32;&lt;dt-bindings/clock/mt8195-clk=
.h&gt;
&gt;&#32;+&#32;&#32;&#32;&#32;#include&#32;&lt;dt-bindings/gce/mt8195-gce.h=
&gt;
&gt;&#32;+&#32;&#32;&#32;&#32;#include&#32;&lt;dt-bindings/memory/mt8195-me=
mory-port.h&gt;
&gt;&#32;+&#32;&#32;&#32;&#32;#include&#32;&lt;dt-bindings/power/mt8195-pow=
er.h&gt;
&gt;&#32;+&#32;&#32;&#32;&#32;#include&#32;&lt;dt-bindings/reset/mt8195-res=
ets.h&gt;
&gt;&#32;+
&gt;&#32;+&#32;&#32;&#32;&#32;soc&#32;{
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;#address-cells&#32;=3D&#3=
2;&lt;2&gt;;
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;#size-cells&#32;=3D&#32;&=
lt;2&gt;;
&gt;&#32;+
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;hdr-engine@1c114000&#32;{
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;compatible&#32;=3D&#32;&quot;mediatek,mt8195-disp-ethdr&quot=
;;
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;reg&#32;=3D&#32;&lt;0&#32;0x1c114000&#32;0&#32;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;0&#32;0x1c115000&#32;0&#32=
;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;0&#32;0x1c117000&#32;0&#32=
;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;0&#32;0x1c119000&#32;0&#32=
;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;0&#32;0x1c11a000&#32;0&#32=
;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;0&#32;0x1c11b000&#32;0&#32=
;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;0&#32;0x1c11c000&#32;0&#32=
;0x1000&gt;;
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;reg-names&#32;=3D&#32;&quot;mixer&quot;,&#32;&quot;vdo_fe0&q=
uot;,&#32;&quot;vdo_fe1&quot;,
&gt;&#32;&quot;gfx_fe0&quot;,&#32;&quot;gfx_fe1&quot;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&quot;vdo_be&quot;,&#32;&quot;adl_ds&quot;;
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;mediatek,gce-client-reg&#32;=3D&#32;&lt;&amp;gce0&#32;SUBSYS=
_1c11XXXX
&gt;&#32;0x4000&#32;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&=
amp;gce0&#32;SUBSYS_1c11XXXX
&gt;&#32;0x5000&#32;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&=
amp;gce0&#32;SUBSYS_1c11XXXX
&gt;&#32;0x7000&#32;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&=
amp;gce0&#32;SUBSYS_1c11XXXX
&gt;&#32;0x9000&#32;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&=
amp;gce0&#32;SUBSYS_1c11XXXX
&gt;&#32;0xa000&#32;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&=
amp;gce0&#32;SUBSYS_1c11XXXX
&gt;&#32;0xb000&#32;0x1000&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&=
amp;gce0&#32;SUBSYS_1c11XXXX
&gt;&#32;0xc000&#32;0x1000&gt;;
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;clocks&#32;=3D&#32;&lt;&amp;vdosys1&#32;CLK_VDO1_DISP_MIXER&=
gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1&#32;CLK_VDO1_HDR_VDO_FE0&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1&#32;CLK_VDO1_HDR_VDO_FE1&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1&#32;CLK_VDO1_HDR_GFX_FE0&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1&#32;CLK_VDO1_HDR_GFX_FE1&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1&#32;CLK_VDO1_HDR_VDO_BE&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1&#32;CLK_VDO1_26M_SLOW&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1&#32;CLK_VDO1_HDR_VDO_FE0_DL_ASYNC&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1&#32;CLK_VDO1_HDR_VDO_FE1_DL_ASYNC&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1&#32;CLK_VDO1_HDR_GFX_FE0_DL_ASYNC&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1&#32;CLK_VDO1_HDR_GFX_FE1_DL_ASYNC&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1&#32;CLK_VDO1_HDR_VDO_BE_DL_ASYNC&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;topckg=
en&#32;CLK_TOP_ETHDR&gt;;
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;clock-names&#32;=3D&#32;&quot;mixer&quot;,&#32;&quot;vdo_fe0=
&quot;,&#32;&quot;vdo_fe1&quot;,
&gt;&#32;&quot;gfx_fe0&quot;,&#32;&quot;gfx_fe1&quot;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&quot;vdo_be&quot;,&#32;&quot;adl_ds&quot;,&#32;&quot;vdo_fe0_asy=
nc&quot;,
&gt;&#32;&quot;vdo_fe1_async&quot;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&quot;gfx_fe0_async&quot;,
&gt;&#32;&quot;gfx_fe1_async&quot;,&quot;vdo_be_async&quot;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&quot;ethdr_top&quot;;
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;power-domains&#32;=3D&#32;&lt;&amp;spm&#32;MT8195_POWER_DOMA=
IN_VDOSYS1&gt;;
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;iommus&#32;=3D&#32;&lt;&amp;iommu_vpp&#32;M4U_PORT_L3_HDR_DS=
&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;iommu_=
vpp&#32;M4U_PORT_L3_HDR_ADL&gt;;
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;interrupts&#32;=3D&#32;&lt;GIC_SPI&#32;517&#32;IRQ_TYPE_LEVE=
L_HIGH&#32;0&gt;;&#32;/*
&gt;&#32;disp&#32;mixer&#32;*/
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;resets&#32;=3D&#32;&lt;&amp;vdosys1
&gt;&#32;MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_FE0_DL_ASYNC&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1
&gt;&#32;MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_FE1_DL_ASYNC&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1
&gt;&#32;MT8195_VDOSYS1_SW1_RST_B_HDR_GFX_FE0_DL_ASYNC&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1
&gt;&#32;MT8195_VDOSYS1_SW1_RST_B_HDR_GFX_FE1_DL_ASYNC&gt;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&lt;&amp;vdosys=
1
&gt;&#32;MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_BE_DL_ASYNC&gt;;
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;reset-names&#32;=3D&#32;&quot;vdo_fe0_async&quot;,&#32;&quot=
;vdo_fe1_async&quot;,
&gt;&#32;&quot;gfx_fe0_async&quot;,
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
&#32;&#32;&quot;gfx_fe1_async&quot;,&#32;&quot;vdo_be_async&quot;;
&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;};
&gt;&#32;+&#32;&#32;&#32;&#32;};
&gt;&#32;+...

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
om/d/msgid/clang-built-linux/4aff6a7a3b606f26ec793192d9c75774276935e0.camel=
%40mediatek.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/clang-built-linux/4aff6a7a3b606f26ec793192d9c75774276935e0.c=
amel%40mediatek.com</a>.<br />

--__=_Part_Boundary_008_1252961165.566447280
Content-Type: text/plain; charset="UTF-8"

On Tue, 2022-12-27 at 16:10 +0800, Nancy.Lin wrote:
> Add vdosys1 ETHDR definition.
> 
> Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
> Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
> Reviewed-by: AngeloGioacchino Del Regno <
> angelogioacchino.delregno@collabora.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Tested-by: AngeloGioacchino Del Regno <
> angelogioacchino.delregno@collabora.com>
> ---
>  .../display/mediatek/mediatek,ethdr.yaml      | 188
> ++++++++++++++++++
>  1 file changed, 188 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.yam
> l
> 
> diff --git
> a/Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.y
> aml
> b/Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.y
> aml
> new file mode 100644
> index 000000000000..3b11e47a8834
> --- /dev/null
> +++
> b/Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.y
> aml
> @@ -0,0 +1,188 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: 
> http://devicetree.org/schemas/display/mediatek/mediatek,ethdr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Ethdr Device
> +
> +maintainers:
> +  - Chun-Kuang Hu <chunkuang.hu@kernel.org>
> +  - Philipp Zabel <p.zabel@pengutronix.de>
> +
> +description:
> +  ETHDR (ET High Dynamic Range) is a MediaTek internal HDR engine
> and is
> +  designed for HDR video and graphics conversion in the external
> display path.
> +  It handles multiple HDR input types and performs tone mapping,
> color
> +  space/color format conversion, and then combine different layers,
> +  output the required HDR or SDR signal to the subsequent display
> path.
> +  This engine is composed of two video frontends, two graphic
> frontends,
> +  one video backend and a mixer. ETHDR has two DMA function blocks,
> DS and ADL.
> +  These two function blocks read the pre-programmed registers from
> DRAM and
> +  set them to HW in the v-blanking period.
> +
> +properties:
> +  compatible:
> +    const: mediatek,mt8195-disp-ethdr
> +
> +  reg:
> +    maxItems: 7
> +
> +  reg-names:
> +    items:
> +      - const: mixer
> +      - const: vdo_fe0
> +      - const: vdo_fe1
> +      - const: gfx_fe0
> +      - const: gfx_fe1
> +      - const: vdo_be
> +      - const: adl_ds
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  iommus:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clocks:
> +    items:
> +      - description: mixer clock
> +      - description: video frontend 0 clock
> +      - description: video frontend 1 clock
> +      - description: graphic frontend 0 clock
> +      - description: graphic frontend 1 clock
> +      - description: video backend clock
> +      - description: autodownload and menuload clock
> +      - description: video frontend 0 async clock
> +      - description: video frontend 1 async clock
> +      - description: graphic frontend 0 async clock
> +      - description: graphic frontend 1 async clock
> +      - description: video backend async clock
> +      - description: ethdr top clock
> +
> +  clock-names:
> +    items:
> +      - const: mixer
> +      - const: vdo_fe0
> +      - const: vdo_fe1
> +      - const: gfx_fe0
> +      - const: gfx_fe1
> +      - const: vdo_be
> +      - const: adl_ds
> +      - const: vdo_fe0_async
> +      - const: vdo_fe1_async
> +      - const: gfx_fe0_async
> +      - const: gfx_fe1_async
> +      - const: vdo_be_async
> +      - const: ethdr_top
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    items:
> +      - description: video frontend 0 async reset
> +      - description: video frontend 1 async reset
> +      - description: graphic frontend 0 async reset
> +      - description: graphic frontend 1 async reset
> +      - description: video backend async reset
> +
> +  reset-names:
> +    items:
> +      - const: vdo_fe0_async
> +      - const: vdo_fe1_async
> +      - const: gfx_fe0_async
> +      - const: gfx_fe1_async
> +      - const: vdo_be_async
> +
> +  mediatek,gce-client-reg:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    description: The register of display function block to be set by
> gce.
> +      There are 4 arguments in this property, gce node, subsys id,
> offset and
> +      register size. The subsys id is defined in the gce header of
> each chips
> +      include/dt-bindings/gce/<chip>-gce.h, mapping to the register
> of display
> +      function block.
> +    items:
> +      items:
> +        - description: phandle of GCE
> +        - description: GCE subsys id
> +        - description: register offset
> +        - description: register size
> +    minItems: 7
> +    maxItems: 7
> +

Hi Rob and krzysztof,

I got the two messages when running dt_binding_check [1]. This binding
patch was sent previously in [2]. 

If I remove the following items/minItems/maxItems in the mediatek,gce-
client property, the two message disappear. I don't know what's wrong
with the original syntax. Do you have any suggestions for this?

-    items:
-      items:
-        - description: phandle of GCE
-        - description: GCE subsys id
-        - description: register offset
-        - description: register size
-    minItems: 7
-    maxItems: 7


[1].
Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.examp
le.dtb
/proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devicetr
ee/bindings/display/mediatek/mediatek,ethdr.example.dtb: 
hdr-engine@1c114000: mediatek,gce-client-reg:0: [4294967295, 7, 16384,
4096, 4294967295, 7, 20480, 4096, 4294967295, 7, 28672, 4096,
4294967295, 7, 36864, 4096, 4294967295, 7, 40960, 4096, 4294967295, 7,
45056, 4096, 4294967295, 7, 49152, 4096] is too long
        From schema:
/proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devicetr
ee/bindings/display/mediatek/mediatek,ethdr.yaml
/proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devicetr
ee/bindings/display/mediatek/mediatek,ethdr.example.dtb: 
hdr-engine@1c114000: mediatek,gce-client-reg: [[4294967295, 7, 16384,
4096, 4294967295, 7, 20480, 4096, 4294967295, 7, 28672, 4096,
4294967295, 7, 36864, 4096, 4294967295, 7, 40960, 4096, 4294967295, 7,
45056, 4096, 4294967295, 7, 49152, 4096]] is too short
        From schema:
/proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devicetr
ee/bindings/display/mediatek/mediatek,ethdr.yaml

[2] [RESEND,v5,3/3] dt-bindings: mediatek: add ethdr definition for
mt8195

https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220608043852.4980-4-rex-bc.chen@mediatek.com/


Regards,
Nancy















> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - power-domains
> +  - resets
> +  - mediatek,gce-client-reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/mt8195-clk.h>
> +    #include <dt-bindings/gce/mt8195-gce.h>
> +    #include <dt-bindings/memory/mt8195-memory-port.h>
> +    #include <dt-bindings/power/mt8195-power.h>
> +    #include <dt-bindings/reset/mt8195-resets.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        hdr-engine@1c114000 {
> +                compatible = "mediatek,mt8195-disp-ethdr";
> +                reg = <0 0x1c114000 0 0x1000>,
> +                      <0 0x1c115000 0 0x1000>,
> +                      <0 0x1c117000 0 0x1000>,
> +                      <0 0x1c119000 0 0x1000>,
> +                      <0 0x1c11a000 0 0x1000>,
> +                      <0 0x1c11b000 0 0x1000>,
> +                      <0 0x1c11c000 0 0x1000>;
> +                reg-names = "mixer", "vdo_fe0", "vdo_fe1",
> "gfx_fe0", "gfx_fe1",
> +                            "vdo_be", "adl_ds";
> +                mediatek,gce-client-reg = <&gce0 SUBSYS_1c11XXXX
> 0x4000 0x1000>,
> +                                          <&gce0 SUBSYS_1c11XXXX
> 0x5000 0x1000>,
> +                                          <&gce0 SUBSYS_1c11XXXX
> 0x7000 0x1000>,
> +                                          <&gce0 SUBSYS_1c11XXXX
> 0x9000 0x1000>,
> +                                          <&gce0 SUBSYS_1c11XXXX
> 0xa000 0x1000>,
> +                                          <&gce0 SUBSYS_1c11XXXX
> 0xb000 0x1000>,
> +                                          <&gce0 SUBSYS_1c11XXXX
> 0xc000 0x1000>;
> +                clocks = <&vdosys1 CLK_VDO1_DISP_MIXER>,
> +                         <&vdosys1 CLK_VDO1_HDR_VDO_FE0>,
> +                         <&vdosys1 CLK_VDO1_HDR_VDO_FE1>,
> +                         <&vdosys1 CLK_VDO1_HDR_GFX_FE0>,
> +                         <&vdosys1 CLK_VDO1_HDR_GFX_FE1>,
> +                         <&vdosys1 CLK_VDO1_HDR_VDO_BE>,
> +                         <&vdosys1 CLK_VDO1_26M_SLOW>,
> +                         <&vdosys1 CLK_VDO1_HDR_VDO_FE0_DL_ASYNC>,
> +                         <&vdosys1 CLK_VDO1_HDR_VDO_FE1_DL_ASYNC>,
> +                         <&vdosys1 CLK_VDO1_HDR_GFX_FE0_DL_ASYNC>,
> +                         <&vdosys1 CLK_VDO1_HDR_GFX_FE1_DL_ASYNC>,
> +                         <&vdosys1 CLK_VDO1_HDR_VDO_BE_DL_ASYNC>,
> +                         <&topckgen CLK_TOP_ETHDR>;
> +                clock-names = "mixer", "vdo_fe0", "vdo_fe1",
> "gfx_fe0", "gfx_fe1",
> +                              "vdo_be", "adl_ds", "vdo_fe0_async",
> "vdo_fe1_async",
> +                              "gfx_fe0_async",
> "gfx_fe1_async","vdo_be_async",
> +                              "ethdr_top";
> +                power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
> +                iommus = <&iommu_vpp M4U_PORT_L3_HDR_DS>,
> +                         <&iommu_vpp M4U_PORT_L3_HDR_ADL>;
> +                interrupts = <GIC_SPI 517 IRQ_TYPE_LEVEL_HIGH 0>; /*
> disp mixer */
> +                resets = <&vdosys1
> MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_FE0_DL_ASYNC>,
> +                         <&vdosys1
> MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_FE1_DL_ASYNC>,
> +                         <&vdosys1
> MT8195_VDOSYS1_SW1_RST_B_HDR_GFX_FE0_DL_ASYNC>,
> +                         <&vdosys1
> MT8195_VDOSYS1_SW1_RST_B_HDR_GFX_FE1_DL_ASYNC>,
> +                         <&vdosys1
> MT8195_VDOSYS1_SW1_RST_B_HDR_VDO_BE_DL_ASYNC>;
> +                reset-names = "vdo_fe0_async", "vdo_fe1_async",
> "gfx_fe0_async",
> +                              "gfx_fe1_async", "vdo_be_async";
> +        };
> +    };
> +...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4aff6a7a3b606f26ec793192d9c75774276935e0.camel%40mediatek.com.

--__=_Part_Boundary_008_1252961165.566447280--

