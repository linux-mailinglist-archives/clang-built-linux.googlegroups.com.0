Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRB37JZKQAMGQEGBQGPSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7101A6BC609
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Mar 2023 07:19:28 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id dl18-20020ad44e12000000b005a4d5420bc6sf548721qvb.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Mar 2023 23:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112; t=1678947567;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q+AVdnVFPk9VJI3ATJrwQjRzZA+XtqSGR33kTkNtDQs=;
        b=VuizJ77wzDI4v/a43S88JPmDYVG5ptTcafqjg+5Hv2h7pzpt0DdSRHd0dpmlx//Wqr
         bkuQ0F11kwGxJBB2U/ORJ/s1NwYfZ0/SrpwusJbw/Y/jEiH9E1UNBzEQU/zyb0PmYYZG
         +eT1neC86JuEVySLs6Z7TDy7lDUYKdHbMZa+RMycgvAmIdX6sKqhxVlkNzvYy72SPqI0
         In7Q9lJN4il35kL7ObbPQKmL+pVbP3W41vRrLz2T3fY5bbVS96MJs1XwIsiNvkacSsX3
         H/408ntdn7IHaX+Y+oE4E/+zDWuEAaoh4MMnVXnVQWzevKKEHdMxMWKwbHPDoxW0cx0t
         WFqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678947567;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q+AVdnVFPk9VJI3ATJrwQjRzZA+XtqSGR33kTkNtDQs=;
        b=hnD2z8+6cTUabQS8nk/54f61mBm+ufGGtAOv2vPhbiZnrQaLWGJigHYtWcdx+WeQDq
         hRQF/XmkOV4gf7Yaq8pIFrOVFMNJMdYwtyKYGFCfBKjytMvSRsdCuQbm6+JGLxgPrBBl
         gEUXlxxNivEXfN1tstR++6satUYuv3mMaaf+PA6KSLN43PVYUkCvXYiOFYtfI4cRy6ky
         AnGCJa10ktAkIAFFBQCC80cIV9DYSvj+kFec7rqn9UHbX9uY/rGQJRZT2eKGpO9q33Pb
         10CKs28yyYvOhKhI6d53CPPfsO++mtYWZFcItQKuubttmMtGPOZD02m0LdAImfmUObjz
         ePPg==
X-Gm-Message-State: AO0yUKVRj87NEawV1ngl60w3HWbt8vsd/Z8HjlV2msLuQN37pE9dMOGf
	h6Xno+2yVyINJuto/yz2Dg8=
X-Google-Smtp-Source: AK7set++9ldGej8T53LFJSERQKp0xE1WG0dLmeaxMBcRTeQzxRgzkgg9A07974GiU7G3ksY45dDreA==
X-Received: by 2002:a05:6214:9a8:b0:56e:ff38:46a2 with SMTP id du8-20020a05621409a800b0056eff3846a2mr4397172qvb.10.1678947567281;
        Wed, 15 Mar 2023 23:19:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:12c4:0:b0:3bc:edc5:2588 with SMTP id b4-20020ac812c4000000b003bcedc52588ls913232qtj.6.-pod-prod-gmail;
 Wed, 15 Mar 2023 23:19:26 -0700 (PDT)
X-Received: by 2002:a05:622a:1450:b0:3bf:d07e:edf6 with SMTP id v16-20020a05622a145000b003bfd07eedf6mr3937015qtx.36.1678947566479;
        Wed, 15 Mar 2023 23:19:26 -0700 (PDT)
Received: from mailgw01.mediatek.com ([60.244.123.138])
        by gmr-mx.google.com with ESMTPS id az10-20020a05620a170a00b007426692e029si292320qkb.0.2023.03.15.23.19.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 23:19:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 60.244.123.138 as permitted sender) client-ip=60.244.123.138;
X-UUID: 7d15b84ec3c211ed91027fb02e0f1d65-20230316
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.21,REQID:8aa4aff8-3707-4f34-b170-318172e9aca3,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION:
	release,TS:0
X-CID-META: VersionHash:83295aa,CLOUDID:f6a98a28-564d-42d9-9875-7c868ee415ec,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:102,TC:nil,Content:0,EDM:-3,IP:nil,U
	RL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV:0
X-CID-BVR: 0,NGT
X-CID-BAS: 0,NGT,0,_
X-UUID: 7d15b84ec3c211ed91027fb02e0f1d65-20230316
Received: from mtkmbs13n2.mediatek.inc [(172.21.101.108)] by mailgw01.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 953079201; Thu, 16 Mar 2023 14:19:20 +0800
Received: from mtkmbs10n2.mediatek.inc (172.21.101.183) by
 mtkmbs11n2.mediatek.inc (172.21.101.187) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Thu, 16 Mar 2023 14:19:19 +0800
Received: from APC01-SG2-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server id
 15.2.1118.25 via Frontend Transport; Thu, 16 Mar 2023 14:19:19 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L1rfqlovsF3B2WVGP4HNX99zN1JtTr8X+owVXFhNlx/W7aPphAAgg3LH9af54et+cradsYVK68wkdIy6xWV749eD6d/517hPbx+lGnyYnAhnFaANO9LDjfVslmE4qHCXV2+lTMC8Rw68eYRoq1YnNO1gAsUkWTOi59mGkoJztvtaqL77brMTHE+949sDHFdv1p0h46g0g7ubewirvyBHxJpuj7F7LiVkog+tqzgQi+by1slmqqaM6KyFGtsAHH7y85z3M7IW+dAAntKjEqMBwZVIPoA+JELaClPsqCUI+Ye3RxETMyPbvYnzRHrMKBUgkIi/ThmNaiLGjd0i+LZqAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LXS9e0JQ08DSTJIOGCsZYj55CpDVowa30+10lg1reIE=;
 b=SoBQpZAn1/n6H9dal3slJ1Dsy21AuQWLgDxMDxjcYxm5mEz5D7rxMSdxn5xUU60Pr0zTaVoEZM6CUx8by2jdSjpZ69yTmsoNqGjGeZk2tlm4Fpzl7PavV7D8gVdzueJDqL3LH9igvIXSnOtzUiI+U9BV13raTJ/9VT4Tz//xVWIuIpgO0TJhpLKiHAUBLtNXkCeJ8jdIoy1Sbdf/E+5QzFOD21b8MKiMKa0J8u9K035csT/HpMi8aVt/pj/GeUhhNj9scebn4Pir65tE6awiudUdcGqApj0l0X82Es2+faslWVQ0Bt6kyjmiSwmc7a48RTcEP/cf+F5/DTo06a4gbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com (2603:1096:820:8::11)
 by TYZPR03MB5566.apcprd03.prod.outlook.com (2603:1096:400:53::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.30; Thu, 16 Mar
 2023 06:19:17 +0000
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::dd54:60c1:df32:bc65]) by KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::dd54:60c1:df32:bc65%4]) with mapi id 15.20.6178.031; Thu, 16 Mar 2023
 06:19:16 +0000
From: =?UTF-8?B?J05hbmN5IExpbiAo5p6X5qyj6J6iKScgdmlhIENsYW5nIEJ1aWx0IExpbnV4?= <clang-built-linux@googlegroups.com>
To: "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
	"krzysztof.kozlowski@linaro.org" <krzysztof.kozlowski@linaro.org>,
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>
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
Thread-Index: AQHZGcrXQb/1V2Icz0ST2hH4Pb2de677rZiAgAA66wCAAYJcAA==
Date: Thu, 16 Mar 2023 06:19:15 +0000
Message-ID: <1d65e8b2de708db18b5f7a0faaa53834e1002d9f.camel@mediatek.com>
References: <20221227081011.6426-1-nancy.lin@mediatek.com>
	 <20221227081011.6426-2-nancy.lin@mediatek.com>
	 <4aff6a7a3b606f26ec793192d9c75774276935e0.camel@mediatek.com>
	 <2700bd6c-f00d-fa99-b730-2fcdf89089fa@linaro.org>
In-Reply-To: <2700bd6c-f00d-fa99-b730-2fcdf89089fa@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5175:EE_|TYZPR03MB5566:EE_
x-ms-office365-filtering-correlation-id: ec3c1c21-6084-4cb5-b0ca-08db25e65e31
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kH6xdwiGc55gwjFyetwUM4wHvnrCZ4JWFyDqxZsaN8iaee5HMMr5BtU8a+tYWyvIKYRmmqa9ZLIznKEgOj5ISwtgRhIYQg3Z1eWM0svXdhlIJMqjRPKki2mS9cD5k0GUH6lp3Kvcn9mCW5oGrr0Zm50qJSdLXuodvJL2jB1tWWojvxrP09dgKI0pFxt6NprZe/f+LrR2Wr5/haHPraPYkfg3SnliiTlPMxWIKi55sBhFIdkOK6VZbxIuIOqwVbF2QyFZJmvWOvsX1dkYNfiEaziKLtJ4scqUn4ncqNT8mmF+PhGc5YPBV3lglhuC8PBMNQOu/p2sM0V4r4tZTv02P8zvPtPiDqjaHRovxUKumXhuNhX0QeC61Gw3lSlsGto8sM/EKL9UaTmoRtkYV+9qXulUbyQqQE+PVsrOZvrr+njpRVOfnpc3W6Pl1C8YhcHj+wUZonBxODLzlEQqVouxu6mn/UWdGpSYd0spm+VKiAKZ2hvUq0TeRVxm0rQsgn2hKb5Rp1oFdReqAYx0jxlWZZ94P0YJGNDqjXwbMJHNSos6FCHz8bSCdOAjeM2mqx85arjhUdXHCfnFldPmtvmuPlI9fZc7iv4/KuRKgF2KQGpuRXm7XE+tpJtGV15EQ6NsCl0VigK/g0dyi8OMID6J5FzrY7nXYJYW/eMxTIRSM42RaHlqGxGLOoAYsy0ylNuGpn7BwPlq9z+TpUjc9pmB4w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5175.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(136003)(346002)(366004)(39860400002)(396003)(451199018)(38070700005)(86362001)(85182001)(36756003)(38100700002)(122000001)(2906002)(7416002)(5660300002)(41300700001)(8936002)(4326008)(2616005)(26005)(6506007)(186003)(53546011)(6512007)(83380400001)(316002)(54906003)(110136005)(8676002)(66946007)(66446008)(66476007)(64756008)(66556008)(91956017)(76116006)(6486002)(478600001)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SnhxM1BCdzdSTlFoNlVvNXNBVTdJaVdSUmpXdzBRRDh3OVhYZFluaEZ4R051?=
 =?utf-8?B?RVZUVHRQQjhvOG1MS2hnZ1M4VWFqUGVoQXoyMmhIZk5xVFJFcEY0Q2ROeUtv?=
 =?utf-8?B?VUFBRmFMSzErZjlTVTJiUVJaald4RzJKNlVxOTRLeFVHNDRUSWljNTlTOGxw?=
 =?utf-8?B?aWZPdkYxVWNBdjAvRWF5cTBtT0ZKLzRUYzlnMXg3YkFOVWVEdForYlVya0JJ?=
 =?utf-8?B?ckYyRFoxL28rMm4vUE1wSkcxdnorM20xMTlLVitIOU9hZVZFWThKVE01Yzho?=
 =?utf-8?B?bEVkdmF3d01yeHVZUStLR0VsL3U0empScEsyTm5qc1U3ck9lS0NCaU9Lek1s?=
 =?utf-8?B?dmNXWUV5SzRickZndUE2SlZjdjd4eFZFTXFrMUl2Q3NBS01adEwrWHowcUxK?=
 =?utf-8?B?b29MV0cxbkt5ZC9OODl5UHB6bWQxWWFwaXVaa2htcHVzS21XWHFkL3JoQXNR?=
 =?utf-8?B?dkJIUVFlZWJpYWhNNmpyNmxDMEFuRG9iZnZoMUFXNUdaRG1reS9uVjJoenZN?=
 =?utf-8?B?TFcyc0VCcmtFNG85L1ZwdWlRMmFQSHYzZm5OZXN4cUhxQjkwUk9kTW5DVFd6?=
 =?utf-8?B?bVZjMThMbGxYS3ZmbFVWTDhjN2I1Z0Q3Rzg1SzRkNVVqRU00TE5NZWFPcTlH?=
 =?utf-8?B?RVBLNmp4QXppbHJuOTNHMXlqVFNQdk93b2ZuUTYyb3lacitWVmt5RE9GWk5U?=
 =?utf-8?B?WmJ0UlZaQ3BPUnlmSmNjaDRXREhXbDJLNmFzNHNTdHZhQk5QMnpjUDJQTTlU?=
 =?utf-8?B?KzhOaG1VcitmcU9nRUZra05rVnd1WTdoaU92ejJyZmFJYXBtWUtrYmV1UG5B?=
 =?utf-8?B?N2pGWGN5cTJEQWpMV0MreG1QUUk2ZkJIYTNiK1BGaHhGZVBVZ0pvdFZndE56?=
 =?utf-8?B?aHF6cFh1U25CdVg3ejU2WnR5cC81TTNaSnNteU1mTG1HY1ZsQm84U294R1N4?=
 =?utf-8?B?L2lBRWpGdWd6VmxxMklHc3hUMmZQVDVZakZBanFFeHlpeHpIYXFPVXRsUGtY?=
 =?utf-8?B?eVNGWWtTaC9CNlVrTGZ3YnF0R2lpb3pRMkNkekRZWm5nM09TUHl2QU5wT1Nq?=
 =?utf-8?B?NXRaMzJKMVZGNlM0bXJBVm5mOFc1UisrOVBwSkNBT3JnRUZreEhYS096bnM3?=
 =?utf-8?B?aTB5OVM5TE14MkdCdHZXa3N1a0lVUkNZc2xJUHpSQ2xmS3R4dHpnLzg5aDN2?=
 =?utf-8?B?RTJtN2h3MEwrTGJLYkwxMGh2Tk1HNWQvUGFPcEdGbGQ2MWtxNEFVR1FUdUhV?=
 =?utf-8?B?Z2dMc0krWVV6bWFyNjFRUlhoUnpEY3N4NkRGM0ZhYmhqZkJSVVVEUlhMOUpG?=
 =?utf-8?B?WFduYlFxRUxTYjdXUmFlMHY3YnVnVEgwbVpCN1lDQldWb3Y0RWNHb0RZNk5o?=
 =?utf-8?B?MGJ3djdXUjI5TWxUaUYrZklSdGpNOUl5Z1dmK2dLVGJMUUpsMjdGSzFxWkIy?=
 =?utf-8?B?bjBuS0xrMk93R1ZWb2JUMGlyNTdlaGE3Y09QNkNoK2YxYWIwelRYSGVIMzhP?=
 =?utf-8?B?aTYzbDlGeEx3N2JiQ1I5SFVNd0p6T004Mm5WMzVCakkyemNCZjN2b2ZyZy8r?=
 =?utf-8?B?VGk1V2swUGR0djJGdy9CTjFmckExT25icEpoU1VzYWR5bm1ZVlZzRWRMWWtz?=
 =?utf-8?B?QUFvNG9oZjQ0UjhJd0NFYkZDRFdxaFJQZWpzUEQ0SXJsUi9nV0NuNmIxd0JG?=
 =?utf-8?B?Q0FaM1IxeFFoejF1WDc1ajZIang1Zzh0SllMTGZSYnVNTFVOREhKbW9zaVRN?=
 =?utf-8?B?eG5aRlJzYWNRZFQ1WDMxMXBvZVdPZDlJN2VLLzBQcEVvRFZIVWc0aUN2TFVD?=
 =?utf-8?B?cTNtOGk2bVNnaVFsQTNJWi9BRXFscHZLaHdvWHByOW44cDdhMDY0RGwyejFu?=
 =?utf-8?B?a2FDcUsvaXIzVG1leTFCSVBIRWpROG05dmkyRE1YcURFa2VMdEtUaXFvN1ho?=
 =?utf-8?B?ZFc5U01NWmVSMkFMSVc5eVBkQ0NqQkdoa1ZZZmZLOUpaYVdjdTRsUHBUMVZn?=
 =?utf-8?B?dVhxemVPT09JdGZJM1FEbkZ5RElOVDlrb1VwanZBSFo5cjZVcmRtYWNOaWJS?=
 =?utf-8?B?S2xkWWhObmpqVStYS3laaFl0MDBlMERvbXh3VVpTa29qV2JMeXhmMVpzenJK?=
 =?utf-8?B?THJoSkhKbEphaEJEOTdMNHRSWFJaTURKZVc5Sy90UGdSOUtOOTkxcGJTOU40?=
 =?utf-8?B?blE9PQ==?=
Content-ID: <3A0969E01705314991BAA273848ED353@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5175.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec3c1c21-6084-4cb5-b0ca-08db25e65e31
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 06:19:15.5452
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v1zsFrXj1YIF5XS0RtDPJg8o5hORGycwcBoxkT7TbHd6EpD7Gk6slZ6FHNWwxUf9/0PgvatBAQWPaxsSqGjJ0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB5566
Content-Type: multipart/alternative;
	boundary="__=_Part_Boundary_007_1190738034.654343376"
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=ZIo9nxkj;       dkim=neutral
 (body hash did not verify) header.i=@mediateko365.onmicrosoft.com
 header.s=selector2-mediateko365-onmicrosoft-com header.b="mP05UjI/";
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

--__=_Part_Boundary_007_1190738034.654343376
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<pre>
On&#32;Wed,&#32;2023-03-15&#32;at&#32;08:16&#32;+0100,&#32;Krzysztof&#32;Ko=
zlowski&#32;wrote:
&gt;&#32;On&#32;15/03/2023&#32;04:45,&#32;Nancy&#32;Lin&#32;(&#26519;&#2742=
7;&#34722;)&#32;wrote:
&gt;&#32;
&gt;&#32;Trim&#32;the&#32;replies&#32;and&#32;remove&#32;unneeded&#32;conte=
xt.&#32;You&#32;want&#32;to&#32;get&#32;the
&gt;&#32;attention&#32;of&#32;other&#32;people,&#32;not&#32;force&#32;them&=
#32;to&#32;read&#32;entire&#32;email.
&gt;&#32;
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;mediatek,gce-client-reg:&gt;&gt;&#32;=
+&#32;&#32;&#32;&#32;&#36;ref:
&gt;&#32;&gt;&#32;&gt;&#32;/schemas/types.yaml#/definitions/phandle-array
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;description:&#32;The&#32;re=
gister&#32;of&#32;display&#32;function&#32;block&#32;to&#32;be
&gt;&#32;&gt;&#32;&gt;&#32;set&#32;by
&gt;&#32;&gt;&#32;&gt;&#32;gce.
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;There&#32;are&#32=
;4&#32;arguments&#32;in&#32;this&#32;property,&#32;gce&#32;node,&#32;subsys
&gt;&#32;&gt;&#32;&gt;&#32;id,
&gt;&#32;&gt;&#32;&gt;&#32;offset&#32;and
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;register&#32;size=
.&#32;The&#32;subsys&#32;id&#32;is&#32;defined&#32;in&#32;the&#32;gce&#32;h=
eader
&gt;&#32;&gt;&#32;&gt;&#32;of
&gt;&#32;&gt;&#32;&gt;&#32;each&#32;chips
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;include/dt-bindin=
gs/gce/&lt;chip&gt;-gce.h,&#32;mapping&#32;to&#32;the
&gt;&#32;&gt;&#32;&gt;&#32;register
&gt;&#32;&gt;&#32;&gt;&#32;of&#32;display
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;function&#32;bloc=
k.
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;items:
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;items:
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;d=
escription:&#32;phandle&#32;of&#32;GCE
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;d=
escription:&#32;GCE&#32;subsys&#32;id
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;d=
escription:&#32;register&#32;offset
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;d=
escription:&#32;register&#32;size
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;minItems:&#32;7
&gt;&#32;&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;maxItems:&#32;7
&gt;&#32;&gt;&#32;&gt;&#32;+
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;Hi&#32;Rob&#32;and&#32;krzysztof,
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;I&#32;got&#32;the&#32;two&#32;messages&#32;when&#32;runni=
ng&#32;dt_binding_check&#32;[1].&#32;This
&gt;&#32;&gt;&#32;binding
&gt;&#32;&gt;&#32;patch&#32;was&#32;sent&#32;previously&#32;in&#32;[2].&#32=
;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;If&#32;I&#32;remove&#32;the&#32;following&#32;items/minIt=
ems/maxItems&#32;in&#32;the
&gt;&#32;&gt;&#32;mediatek,gce-
&gt;&#32;&gt;&#32;client&#32;property,&#32;the&#32;two&#32;message&#32;disa=
ppear.&#32;I&#32;don&#39;t&#32;know&#32;what&#39;s
&gt;&#32;&gt;&#32;wrong
&gt;&#32;&gt;&#32;with&#32;the&#32;original&#32;syntax.&#32;Do&#32;you&#32;=
have&#32;any&#32;suggestions&#32;for&#32;this&#63;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;-&#32;&#32;&#32;&#32;items:
&gt;&#32;&gt;&#32;-&#32;&#32;&#32;&#32;&#32;&#32;items:
&gt;&#32;&gt;&#32;-&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;descriptio=
n:&#32;phandle&#32;of&#32;GCE
&gt;&#32;&gt;&#32;-&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;descriptio=
n:&#32;GCE&#32;subsys&#32;id
&gt;&#32;&gt;&#32;-&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;descriptio=
n:&#32;register&#32;offset
&gt;&#32;&gt;&#32;-&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;descriptio=
n:&#32;register&#32;size
&gt;&#32;&gt;&#32;-&#32;&#32;&#32;&#32;minItems:&#32;7
&gt;&#32;&gt;&#32;-&#32;&#32;&#32;&#32;maxItems:&#32;7
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;[1].
&gt;&#32;&gt;&#32;Documentation/devicetree/bindings/display/mediatek/mediat=
ek,ethdr.e
&gt;&#32;&gt;&#32;xamp
&gt;&#32;&gt;&#32;le.dtb
&gt;&#32;&gt;&#32;/proj/mtk19347/cros/src/third_party/kernel/v5.10/Document=
ation/devi
&gt;&#32;&gt;&#32;cetr
&gt;&#32;&gt;&#32;ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:&=
#32;
&gt;&#32;&gt;&#32;hdr-engine@1c114000:&#32;mediatek,gce-client-reg:0:&#32;[=
4294967295,&#32;7,
&gt;&#32;&gt;&#32;16384,
&gt;&#32;&gt;&#32;4096,&#32;4294967295,&#32;7,&#32;20480,&#32;4096,&#32;429=
4967295,&#32;7,&#32;28672,&#32;4096,
&gt;&#32;&gt;&#32;4294967295,&#32;7,&#32;36864,&#32;4096,&#32;4294967295,&#=
32;7,&#32;40960,&#32;4096,&#32;4294967295,
&gt;&#32;&gt;&#32;7,
&gt;&#32;&gt;&#32;45056,&#32;4096,&#32;4294967295,&#32;7,&#32;49152,&#32;40=
96]&#32;is&#32;too&#32;long
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;From&#32;schema:
&gt;&#32;
&gt;&#32;This&#32;looks&#32;like&#32;known&#32;issue&#32;with&#32;phandles&=
#32;with&#32;variable&#32;number&#32;of
&gt;&#32;arguments.&#32;Either&#32;we&#32;add&#32;it&#32;to&#32;the&#32;exc=
eptions&#32;or&#32;just&#32;define&#32;it&#32;in
&gt;&#32;reduced&#32;way&#32;like&#32;in&#32;other&#32;cases&#32;-&#32;only=
&#32;maxItems:&#32;1&#32;without&#32;describing
&gt;&#32;items.
&gt;&#32;
&gt;&#32;
&gt;&#32;Best&#32;regards,
&gt;&#32;Krzysztof


Hi&#32;Krzysztof,

Thanks&#32;for&#32;the&#32;comment.

But&#32;I&#32;have&#32;several&#32;items&#32;for&#32;this&#32;vendor&#32;pr=
operty&#32;in&#32;the&#32;binding
example.
Can&#32;I&#32;remove&#32;maxItems&#63;&#32;Change&#32;the&#32;mediatek,gce-=
client-reg&#32;as&#32;[1].

[1]
&#32;&#32;mediatek,gce-client-reg:
&#32;&#32;&#32;&#32;&#36;ref:&#32;/schemas/types.yaml#/definitions/phandle-=
array
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

&gt;&#32;

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
om/d/msgid/clang-built-linux/1d65e8b2de708db18b5f7a0faaa53834e1002d9f.camel=
%40mediatek.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/clang-built-linux/1d65e8b2de708db18b5f7a0faaa53834e1002d9f.c=
amel%40mediatek.com</a>.<br />

--__=_Part_Boundary_007_1190738034.654343376
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2023-03-15 at 08:16 +0100, Krzysztof Kozlowski wrote:
> On 15/03/2023 04:45, Nancy Lin (=E6=9E=97=E6=AC=A3=E8=9E=A2) wrote:
>=20
> Trim the replies and remove unneeded context. You want to get the
> attention of other people, not force them to read entire email.
>=20
> > > +  mediatek,gce-client-reg:>> +    $ref:
> > > /schemas/types.yaml#/definitions/phandle-array
> > > +    description: The register of display function block to be
> > > set by
> > > gce.
> > > +      There are 4 arguments in this property, gce node, subsys
> > > id,
> > > offset and
> > > +      register size. The subsys id is defined in the gce header
> > > of
> > > each chips
> > > +      include/dt-bindings/gce/<chip>-gce.h, mapping to the
> > > register
> > > of display
> > > +      function block.
> > > +    items:
> > > +      items:
> > > +        - description: phandle of GCE
> > > +        - description: GCE subsys id
> > > +        - description: register offset
> > > +        - description: register size
> > > +    minItems: 7
> > > +    maxItems: 7
> > > +
> >=20
> > Hi Rob and krzysztof,
> >=20
> > I got the two messages when running dt_binding_check [1]. This
> > binding
> > patch was sent previously in [2].=20
> >=20
> > If I remove the following items/minItems/maxItems in the
> > mediatek,gce-
> > client property, the two message disappear. I don't know what's
> > wrong
> > with the original syntax. Do you have any suggestions for this?
> >=20
> > -    items:
> > -      items:
> > -        - description: phandle of GCE
> > -        - description: GCE subsys id
> > -        - description: register offset
> > -        - description: register size
> > -    minItems: 7
> > -    maxItems: 7
> >=20
> >=20
> > [1].
> > Documentation/devicetree/bindings/display/mediatek/mediatek,ethdr.e
> > xamp
> > le.dtb
> > /proj/mtk19347/cros/src/third_party/kernel/v5.10/Documentation/devi
> > cetr
> > ee/bindings/display/mediatek/mediatek,ethdr.example.dtb:=20
> > hdr-engine@1c114000: mediatek,gce-client-reg:0: [4294967295, 7,
> > 16384,
> > 4096, 4294967295, 7, 20480, 4096, 4294967295, 7, 28672, 4096,
> > 4294967295, 7, 36864, 4096, 4294967295, 7, 40960, 4096, 4294967295,
> > 7,
> > 45056, 4096, 4294967295, 7, 49152, 4096] is too long
> >         From schema:
>=20
> This looks like known issue with phandles with variable number of
> arguments. Either we add it to the exceptions or just define it in
> reduced way like in other cases - only maxItems: 1 without describing
> items.
>=20
>=20
> Best regards,
> Krzysztof


Hi Krzysztof,

Thanks for the comment.

But I have several items for this vendor property in the binding
example.
Can I remove maxItems? Change the mediatek,gce-client-reg as [1].

[1]
  mediatek,gce-client-reg:
    $ref: /schemas/types.yaml#/definitions/phandle-array
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

>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1d65e8b2de708db18b5f7a0faaa53834e1002d9f.camel%40mediatek=
.com.

--__=_Part_Boundary_007_1190738034.654343376--

