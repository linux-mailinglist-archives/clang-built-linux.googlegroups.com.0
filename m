Return-Path: <clang-built-linux+bncBDDO3Z5P4YJRBFOTQSPAMGQE3GVWBLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 0018266934C
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Jan 2023 10:51:19 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id n22-20020a62e516000000b005817b3a197asf10070022pff.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Jan 2023 01:51:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FHGI7FzbUCkSidU3yXSRtC0VFTdlJ0xKLC+sA285BEk=;
        b=VglFUkSPD0pfa8c6ZiE2NF2bZ1ZMXEGYIELpxYRwle7EOlymfmURVmzC5QbSN+TSDk
         yPMJDuWkM2cxB57CIv2k557M553q7ujjHNhaq46mUUKwxNBTtnZOu54KkKQqeJKI4Ep9
         uWyitYyR0TUwmpfcbRJYHTHJ1xsm3Civke1br9NnF3BiS52o9PGcWcboOEpUT0KMTVhY
         j5LZ2PE/VMaNI5x6TfyQxlt98/EgsGnncBIYspXtETjfd6pf79hZ9q/f0xUIg/5dqo2u
         yygSZGffaLDFJT7hrFoRZCpmYmKsYx3Jo50cynzZgpGcEE7gTK66qFh+ak0kvGf2mXMR
         baSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FHGI7FzbUCkSidU3yXSRtC0VFTdlJ0xKLC+sA285BEk=;
        b=cOMo6tI7jXlzSFVzvucafk6hfSUE6N1gIAvNv8XmDRltc9XVBKPXfh7dbXQOOeslqG
         kpObdzqXShdNi6K9T0IEfNoLeXJXioFU801gGHlQrqjq719xhyaYaRdxdEmxEE6Wm4qK
         58Z7IXb8ziWr4AF8j52gxsvoDdiEZMEhRc7Xr8AIxoSZAi1viQXC3vC5D5bvq/ibrRBv
         aYPkw04uU9wueYHjVWrZ4Z4eHG0zWoQ7KmWjnFTnUcDndSVY4XS2DDfU2i0U6aQSDTda
         yUyuchLaHBZ9ROFxsOPUoBs6qY4+kmAn8tM0zvh8tFz2bGXkEYWmM5hzc6LiZysz0wy2
         P+Kw==
X-Gm-Message-State: AFqh2kqZrbtY9w4SR0u9Gu0ugywuccYLT6B4aPckaQZeE8ftjiUWsIJf
	n0zpCeoGYod+lzls3/9+n4w=
X-Google-Smtp-Source: AMrXdXtU+d3ACsQWXgaeRlNlhWFvE2yNR5cYrCkmM7h5VKAnaOvl4VdDQxk+JpqBOXzeRRbQmOGseQ==
X-Received: by 2002:a63:e54c:0:b0:4be:74f7:d3f7 with SMTP id z12-20020a63e54c000000b004be74f7d3f7mr437048pgj.124.1673603477417;
        Fri, 13 Jan 2023 01:51:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:2cc6:0:b0:475:7659:869 with SMTP id s189-20020a632cc6000000b0047576590869ls1317707pgs.6.-pod-prod-gmail;
 Fri, 13 Jan 2023 01:51:16 -0800 (PST)
X-Received: by 2002:a05:6a00:a07:b0:580:9431:1b1a with SMTP id p7-20020a056a000a0700b0058094311b1amr99835047pfh.5.1673603476627;
        Fri, 13 Jan 2023 01:51:16 -0800 (PST)
Received: from mailgw02.mediatek.com ([210.61.82.184])
        by gmr-mx.google.com with ESMTPS id k21-20020a628415000000b0058613de43a9si1540390pfd.2.2023.01.13.01.51.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 01:51:16 -0800 (PST)
Received-SPF: pass (google.com: domain of nancy.lin@mediatek.com designates 210.61.82.184 as permitted sender) client-ip=210.61.82.184;
X-UUID: ceed7c90932711ed945fc101203acc17-20230113
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.17,REQID:e6c4800a-24c2-4c4e-9760-b3dce5d604d1,IP:0,U
	RL:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:-5
X-CID-INFO: VERSION:1.1.17,REQID:e6c4800a-24c2-4c4e-9760-b3dce5d604d1,IP:0,URL
	:0,TC:0,Content:0,EDM:0,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTION:r
	elease,TS:-5
X-CID-META: VersionHash:543e81c,CLOUDID:afe6bbf5-ff42-4fb0-b929-626456a83c14,B
	ulkID:230113175113HICS2AWR,BulkQuantity:0,Recheck:0,SF:38|17|19|102,TC:nil
	,Content:0,EDM:-3,IP:nil,URL:0,File:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:
	0,OSA:0
X-CID-APTURL: Status:success,Category:nil,Trust:0,Unknown:0,Malicious:0
X-CID-BVR: 0
X-UUID: ceed7c90932711ed945fc101203acc17-20230113
Received: from mtkmbs10n1.mediatek.inc [(172.21.101.34)] by mailgw02.mediatek.com
	(envelope-from <nancy.lin@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 1389240408; Fri, 13 Jan 2023 17:51:10 +0800
Received: from mtkmbs10n1.mediatek.inc (172.21.101.34) by
 mtkmbs10n2.mediatek.inc (172.21.101.183) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.792.3;
 Fri, 13 Jan 2023 17:51:09 +0800
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (172.21.101.239)
 by mtkmbs10n1.mediatek.com (172.21.101.34) with Microsoft SMTP Server id
 15.2.792.15 via Frontend Transport; Fri, 13 Jan 2023 17:51:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dDpQEm2K3pZuW99jmDhz+SJBu48FdDs8Nz3TP610+wnqVXni7fOsO1o+2T1PvtnV7DWcBHeC3swZG7a9CrwyW0ykr2FcJrqEavBsPAz38ehG3WBuxl73hIiUwaaWE1rZuXe2SST0YX8hsNBXd3Lli4Cd2xnRyAfLBlEtUY3kDEmT8rSI04d8DVYjDS6bLh+8HVb0G5qteks93MFFB3RWXm54HtKt83j5hrIhHNOSvRbE/51kleiM78D8rRZhpxUrsKqoqNaRE6bhi+GtQxGTJCdhkOM2RdE4qof8M/j6yHbKr82FDHMEtSj/mpzc/u2bhzbg8H/iM3YyL6RdIlqMPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lKlVCm5a7+ZRDB1kDr0f0gvys7YWDrPR4fIXcoBeuZA=;
 b=IkFLbeoQkNNYd2MWrqqgBVh4t0DrC8A3+xLYOqkOe8xTLULKq2ioTKZKr+iNc5Yt6qYq8cUzuFdtolRZThYkk5KOlg4NWOcvI7Zdv2AC93EEqkfUzQuW/HpINdGbGg1ssngLbC8qglkdY289yF8C+FUpd4s6qeRKNuW9QzohOtcrsiM+IhWLRWCx0ZYrlqVrkf9xtQybr/gWobfbnBJcPWqRzT/5JuGMrsG+av6whDJ2R7Nvp3j73yNpxAMZRLr04SgJL1YzWsvc+P7Ufl+cBf7moZxZAp4PoDo24uPrapjOlp+B8UGjp87VRLACd69N/mDEnBHDDCPCGXSMOgbWZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mediatek.com; dmarc=pass action=none header.from=mediatek.com;
 dkim=pass header.d=mediatek.com; arc=none
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com (2603:1096:820:8::11)
 by SEZPR03MB6812.apcprd03.prod.outlook.com (2603:1096:101:67::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Fri, 13 Jan
 2023 09:51:07 +0000
Received: from KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::9386:8c80:d06e:1c5b]) by KL1PR03MB5175.apcprd03.prod.outlook.com
 ([fe80::9386:8c80:d06e:1c5b%5]) with mapi id 15.20.6002.013; Fri, 13 Jan 2023
 09:51:06 +0000
From: =?UTF-8?B?J05hbmN5IExpbiAo5p6X5qyj6J6iKScgdmlhIENsYW5nIEJ1aWx0IExpbnV4?= <clang-built-linux@googlegroups.com>
To: "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
	"matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, "wim@linux-watchdog.org"
	<wim@linux-watchdog.org>, "krzysztof.kozlowski@linaro.org"
	<krzysztof.kozlowski@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	=?utf-8?B?Q0sgSHUgKOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
	=?utf-8?B?U2luZ28gQ2hhbmcgKOW8teiIiOWciyk=?= <Singo.Chang@mediatek.com>,
	"nathan@kernel.org" <nathan@kernel.org>,
	=?utf-8?B?SmFzb24tSkggTGluICjmnpfnnb/npaUp?= <Jason-JH.Lin@mediatek.com>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Project_Global_Chrome_Upstream_Group
	<Project_Global_Chrome_Upstream_Group@mediatek.com>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "ndesaulniers@google.com"
	<ndesaulniers@google.com>
Subject: Re: [PATCH v29 01/11] dt-bindings: arm: mediatek: mmsys: add vdosys1
 compatible for MT8195
Thread-Topic: [PATCH v29 01/11] dt-bindings: arm: mediatek: mmsys: add vdosys1
 compatible for MT8195
Thread-Index: AQHZGcol0i/l8fqSpkSrcJKRGEgYGa6XjyIAgASmZIA=
Date: Fri, 13 Jan 2023 09:51:06 +0000
Message-ID: <752d6f553af0aeaadaa518c2a6517a93fca4731f.camel@mediatek.com>
References: <20221227080443.6273-1-nancy.lin@mediatek.com>
	 <20221227080443.6273-2-nancy.lin@mediatek.com>
	 <cbd6ff49-a31b-00ad-c5bb-9a185391132d@linaro.org>
In-Reply-To: <cbd6ff49-a31b-00ad-c5bb-9a185391132d@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KL1PR03MB5175:EE_|SEZPR03MB6812:EE_
x-ms-office365-filtering-correlation-id: 8b7c6309-7dcb-45e8-8297-08daf54bb0e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: skKVXYOAMm26fYLk6q2e/d7zTl0ATBRv6W9lxIZ9K4hEwzlcNzJielfAfYDIVYo0AdZMJ6ZF5rAw86x77Qyd/OFu/eE8eYLGXhEJEbKzBA3xAllmWEi3VxrmcEpmxA0XLSbB8Y9DmE/gx35VyaoyktVdEKIROdSLD5+V13YNuEWvMUaLAO5/Lj6dVPQvtJfCfTmU5nmxQOp8ejdMx0RCIKIQOuyq/B8j6HRao9BteTIZRA1/l2K+IsnKAFWMJI1mx97EoqOuQQwaHTQMWubSjd2sv1lQwZjj37KmLqTS2v711bi6NPuu0KqVvHSM1xsLa75jxiDeTR5kz8FmtfhLK8z5fEYOkNOQAdoqILAC0de4XviQV1DyNXj7pu1+QXhXgBHkSarJt08lIn1kd/bLh4AkVChbnU3K37Lt4DPtHBuu7IomN6F8qtN3emMnczFPIDqBElj0xms9f8nHQVHZpSzGP4qfSoMkT5DSRPmGX/Gt34C5vBzZLdS0A8M17nWidN8vCqvXhaO20LY5avkp9NP9VcbD1QyWNO3pb8yBs+NqKlVtdmCgEUPAtlFov2QGieZ6/nrBm9yKerJHej7YQdFJ7Y6sAusRiHvb9qk5s+DvEilNJer+Iio1dJWKvVt4v4n2Z8UgBJXQ3hjPIUdc98yVig0M/h7QtOvrR3IJE63DaS+h1155TwXUWTlbO2OESSNDihkPkMfvZQN8vCnUprW2my60HjxGxpsUDyL4q/odaDgtoOpOj5g6zDAk47Y9
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KL1PR03MB5175.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(366004)(136003)(396003)(346002)(376002)(451199015)(26005)(2616005)(7416002)(316002)(6512007)(478600001)(71200400001)(186003)(5660300002)(38070700005)(4326008)(41300700001)(76116006)(8676002)(64756008)(66476007)(66556008)(110136005)(66446008)(66946007)(66574015)(54906003)(91956017)(83380400001)(8936002)(86362001)(85182001)(36756003)(6486002)(6506007)(122000001)(38100700002)(53546011)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RldxcDBtbEdtZnZQajJBQ21EdG9uR3FuNy9kMHl1c04wMVppTUJDcEpCM1Rs?=
 =?utf-8?B?V2F1cUozOXBFby94cHBOVFFUNDFaRnFlVlJYZVV4aC9XNkNyUFZWTXBXMFpI?=
 =?utf-8?B?OTNqUWRNNFFWZWc5dG93WTlZZmZ6OFFoQ0RvVnBIWmVra2R3dDhWbTFJU1FC?=
 =?utf-8?B?ajIxaXdKSUtnN2ZoNERSZkF4Yld0NW1JZUtwbUdETEZXelFaWEhJZDIxQVY2?=
 =?utf-8?B?RmFlSFZMZElOZEJRcEtPZi9oRWZTM0kyMmxrWEVtK0ROSG91U0ZWUEJqdnRa?=
 =?utf-8?B?KzZraUp3bHlhUE5ncjI1RUtoZVBMYmR6cGpqZ2VyQXB6T0dkdEJCNjdPTU1s?=
 =?utf-8?B?ZGdXNDVZV1RsUjVoOVQvOGNpbXVBVzY3K1lVaEVQeWhaNVJrWDhaeXc3UXk2?=
 =?utf-8?B?cW5LTGszTjFzYTJxK0E0WmpUZEhzODV6L0FKV1Y5c2VDYTBhSXk1bFNKeFZO?=
 =?utf-8?B?d0JkQ0p3d3ZrQmtTRVZmWkkxNTE1QkVTa0x3TXhKL014RWVvSFRJRHN0Wlhx?=
 =?utf-8?B?NzdkMnNZYlByTXh5dWNDVURmTXRPOWhLRFpzMUFEemRyaDRhaVVPQk9EU3Vu?=
 =?utf-8?B?eDFqdjZnR25IMjd0VWdOWmZBSk95dEt4QXk4UENCZlIydUViTjA0Z1lXMnF5?=
 =?utf-8?B?OUgyUkY4U2dVdkhaMGNXZ1JyYXliTkVIeFRTZ0FRQXhhSHkzdVkzQWpKSm9R?=
 =?utf-8?B?Rm1iQ0J3Y0hsWlptZEowc1FCckptNi80WXBnT1o5ZnBOWVN4VXViZFFaVlY5?=
 =?utf-8?B?aDN3Z2pWU29rRHZWYWo3QWk2cGRDMnBhUmpZUGlLUnNPMW1pUCtxV0FnL1JX?=
 =?utf-8?B?REJQZ0gxRmlsMUE1SlpPMmUydWlHRnJsZ1FleHR1d3VOUUIrQi9hb2VJR2o0?=
 =?utf-8?B?SWJHN2x0S0pGSzhkUzRmd2taRmhTclhQM3V2aVlVUERNVUNJWE9lOGJXVDdD?=
 =?utf-8?B?QjRwNHVTMmUrSWFTSStqSUxpMTI4b3BkdGhIa0pKRWgyb0htOVY2blcrZmFl?=
 =?utf-8?B?b3I5QW1qTEdGOEJ5SC9zdThsQTUwcEtJdmJNRFNQQ3RkZG10L2hwTUdpWWRt?=
 =?utf-8?B?NXJHMmxNUVFCMnkyZlJLY2VZOGhYUEU2N3ViUDVlbWFuTkk0VGo4SWdzUURT?=
 =?utf-8?B?TWhQdlIrbytmZWl6K2Iza2QreVZVcTlvSGI4M3MxNk1pWVBzK2NmQitzMVRt?=
 =?utf-8?B?SUw1T09oNmU3VG1ZZTU1WXkrYTFlYUtCYTRTMjBnZTdlMnVPTTJPa0E5OUhs?=
 =?utf-8?B?SmpZeUdBTzhjOExJdUp4bzViVFhJM1h5SEdVdmN3eVpsRGdnZDYvendpelNz?=
 =?utf-8?B?UGs5Qk9LYjZoS2JIQk9wMlN1bmY1OVprbWNRd0ZTYkd3elBHbTFSYzV5NkV6?=
 =?utf-8?B?QlJ5K2RwNUFMWnFKRE1scnBrSE1DZURSSlh2UDF4YklWNk5ONHBFYklVWlRm?=
 =?utf-8?B?VXFlaE5BT2R3RC9ab25pOGh6dXpHKy9pekpiTGpValQxM3lqM0grKzVCcjFU?=
 =?utf-8?B?STROV2VzTDNFQ3VNVk5TcHJMOEtLamQ4MlY0L21DcXQwZ2tGM0tkM3plZzJR?=
 =?utf-8?B?Z2JQUDNxaThaNEpvWDFsYmovWEJ0dWw0RzJXWG9oeWY3UXV2Ykx3a2pUTUVY?=
 =?utf-8?B?QUNvM28vTVcwNmNZY0tVWTdwQ29kQ2NjUnJjekVVMDhScUpkbzVlTTA0NEZk?=
 =?utf-8?B?QnNpbDBnQ25aeldUNUVyVHVWdmtHR2swbGY1Zy9OYnhEQVBTMlJWTTB0RUpn?=
 =?utf-8?B?b0szM1ZNN1laMmtqU3hmUTFBRWxLUUVveDgxZFZPbFhVSkxpR3dUSzNucWNE?=
 =?utf-8?B?TUZnUmxmV3JhZDJseG1OSXZVbEFDMXJkS3pKY3F6blBsWUgyL1JkYzM2RUhT?=
 =?utf-8?B?YVlEWHF2TVhOcUU3WW4yTHdielRwalZheWJ3Q2VPQmlSY0R1blpnS0FSd3cy?=
 =?utf-8?B?ekhJMUI3VjY4SzFyZFF5QVF5S0ZRKytjNytrYUVrT2N6ejM5b1NZRWtsUVJl?=
 =?utf-8?B?NHVxeDl4ZU0rVlVzM3ZiK3AzMXM4QTkyRkVUZHJDMmJvS00wMGFrM0gya1BX?=
 =?utf-8?B?U1o3dnVSTUtXcFI4cHh0bmdVb0pzZE50alFpYkFpSTlWa2pEbENYTWVEQ1g2?=
 =?utf-8?B?YXpmcUhvOVQ5T1NpOUNsOXFJeVZ2ZTZmZjdNTHJuSmswMXJzNHhhU0t5Mjlj?=
 =?utf-8?B?NFE9PQ==?=
Content-ID: <E338D85A6DD41045B82DF21AD8674A0F@apcprd03.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KL1PR03MB5175.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b7c6309-7dcb-45e8-8297-08daf54bb0e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2023 09:51:06.5101
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a7687ede-7a6b-4ef6-bace-642f677fbe31
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UzG7lx8XKY4TvNtmGWI8zTFg4uB5LHQdbubDBfaNKhdRgUzlvnsDUQTrNxicjvtiUr9AHdqS8lkOL/Vncxw6cA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB6812
Content-Type: multipart/alternative;
	boundary="__=_Part_Boundary_004_896955126.1989562382"
X-Original-Sender: nancy.lin@mediatek.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mediatek.com header.s=dk header.b=XtxfuM+M;       dkim=neutral
 (body hash did not verify) header.i=@mediateko365.onmicrosoft.com
 header.s=selector2-mediateko365-onmicrosoft-com header.b="FiHJDp/e";
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

--__=_Part_Boundary_004_896955126.1989562382
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<pre>
Dear&#32;Krzysztof,

Thanks&#32;for&#32;the&#32;review.

On&#32;Tue,&#32;2023-01-10&#32;at&#32;11:50&#32;+0100,&#32;Krzysztof&#32;Ko=
zlowski&#32;wrote:
&gt;&#32;On&#32;27/12/2022&#32;09:04,&#32;Nancy.Lin&#32;wrote:
&gt;&#32;&gt;&#32;Add&#32;vdosys1&#32;mmsys&#32;compatible&#32;for&#32;MT81=
95&#32;platform.
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;For&#32;MT8195,&#32;VDOSYS0&#32;and&#32;VDOSYS1&#32;are&#=
32;2&#32;display&#32;HW&#32;pipelines&#32;binding
&gt;&#32;&gt;&#32;to
&gt;&#32;&gt;&#32;2&#32;different&#32;power&#32;domains,&#32;different&#32;=
clock&#32;drivers&#32;and&#32;different
&gt;&#32;&gt;&#32;mediatek-drm&#32;drivers.
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;Signed-off-by:&#32;Nancy.Lin&#32;&lt;nancy.lin@mediatek.c=
om&gt;
&gt;&#32;&gt;&#32;Reviewed-by:&#32;N&#237;colas&#32;F.&#32;R.&#32;A.&#32;Pr=
ado&#32;&lt;nfraprado@collabora.com&gt;
&gt;&#32;&gt;&#32;---
&gt;&#32;&gt;&#32;&#32;.../devicetree/bindings/arm/mediatek/mediatek,mmsys.=
yaml&#32;&#32;&#32;&#32;&#32;&#32;|&#32;4
&gt;&#32;&gt;&#32;++++
&gt;&#32;&gt;&#32;&#32;1&#32;file&#32;changed,&#32;4&#32;insertions(+)
&gt;&#32;&gt;&#32;
&gt;&#32;&gt;&#32;diff&#32;--git
&gt;&#32;&gt;&#32;a/Documentation/devicetree/bindings/arm/mediatek/mediatek=
,mmsys.yam
&gt;&#32;&gt;&#32;l
&gt;&#32;&gt;&#32;b/Documentation/devicetree/bindings/arm/mediatek/mediatek=
,mmsys.yam
&gt;&#32;&gt;&#32;l
&gt;&#32;&gt;&#32;index&#32;0711f1834fbd..242ce5a69432&#32;100644
&gt;&#32;&gt;&#32;---
&gt;&#32;&gt;&#32;a/Documentation/devicetree/bindings/arm/mediatek/mediatek=
,mmsys.yam
&gt;&#32;&gt;&#32;l
&gt;&#32;&gt;&#32;+++
&gt;&#32;&gt;&#32;b/Documentation/devicetree/bindings/arm/mediatek/mediatek=
,mmsys.yam
&gt;&#32;&gt;&#32;l
&gt;&#32;&gt;&#32;@@&#32;-52,6&#32;+52,10&#32;@@&#32;properties:
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&=
#32;const:&#32;mediatek,mt8195-mmsys
&gt;&#32;&gt;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&=
#32;const:&#32;syscon
&gt;&#32;&gt;&#32;&#32;
&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;-&#32;items:
&gt;&#32;&gt;&#32;+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;=
const:&#32;mediatek,mt8195-vdosys1
&gt;&#32;
&gt;&#32;This&#32;should&#32;be&#32;part&#32;of&#32;first&#32;enum.&#32;Don=
&#39;t&#32;create&#32;redundant&#32;entries.
&gt;&#32;
&gt;&#32;Best&#32;regards,
&gt;&#32;Krzysztof

OK,&#32;I&#32;will&#32;modify&#32;as&#32;following:

@@&#32;-33,6&#32;+33,7&#32;@@&#32;properties:
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
-&#32;mediatek,mt8186-mmsys
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
-&#32;mediatek,mt8188-vdosys0
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
-&#32;mediatek,mt8192-mmsys
+&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#3=
2;mediatek,mt8195-vdosys1
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;=
-&#32;mediatek,mt8365-mmsys
&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;&#32;-&#32;const:&#32;sys=
con

Best,
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
om/d/msgid/clang-built-linux/752d6f553af0aeaadaa518c2a6517a93fca4731f.camel=
%40mediatek.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.goog=
le.com/d/msgid/clang-built-linux/752d6f553af0aeaadaa518c2a6517a93fca4731f.c=
amel%40mediatek.com</a>.<br />

--__=_Part_Boundary_004_896955126.1989562382
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Krzysztof,

Thanks for the review.

On Tue, 2023-01-10 at 11:50 +0100, Krzysztof Kozlowski wrote:
> On 27/12/2022 09:04, Nancy.Lin wrote:
> > Add vdosys1 mmsys compatible for MT8195 platform.
> >=20
> > For MT8195, VDOSYS0 and VDOSYS1 are 2 display HW pipelines binding
> > to
> > 2 different power domains, different clock drivers and different
> > mediatek-drm drivers.
> >=20
> > Signed-off-by: Nancy.Lin <nancy.lin@mediatek.com>
> > Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> > ---
> >  .../devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml      | 4
> > ++++
> >  1 file changed, 4 insertions(+)
> >=20
> > diff --git
> > a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yam
> > l
> > b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yam
> > l
> > index 0711f1834fbd..242ce5a69432 100644
> > ---
> > a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yam
> > l
> > +++
> > b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yam
> > l
> > @@ -52,6 +52,10 @@ properties:
> >            - const: mediatek,mt8195-mmsys
> >            - const: syscon
> > =20
> > +      - items:
> > +          - const: mediatek,mt8195-vdosys1
>=20
> This should be part of first enum. Don't create redundant entries.
>=20
> Best regards,
> Krzysztof

OK, I will modify as following:

@@ -33,6 +33,7 @@ properties:
               - mediatek,mt8186-mmsys
               - mediatek,mt8188-vdosys0
               - mediatek,mt8192-mmsys
+              - mediatek,mt8195-vdosys1
               - mediatek,mt8365-mmsys
           - const: syscon

Best,
Nancy
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/752d6f553af0aeaadaa518c2a6517a93fca4731f.camel%40mediatek=
.com.

--__=_Part_Boundary_004_896955126.1989562382--

