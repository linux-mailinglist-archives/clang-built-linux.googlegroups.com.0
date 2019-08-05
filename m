Return-Path: <clang-built-linux+bncBAABBBMJT3VAKGQENPINAMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A5E80FFB
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Aug 2019 03:21:09 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id j10sf37054564wre.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Aug 2019 18:21:09 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564968069; cv=pass;
        d=google.com; s=arc-20160816;
        b=XCt7rMj7msyUWK9eaNLoOn+yzxJJE6hwV55Ck5xTpKsPO+WhMB4lXVQD5mMPEfOlYQ
         yZTNO3xmowJoB2cWU9pJiFDEBdOH5/hs6tBWI1/tzJX5RwhzRrY0+YdIyX9L6mE8x7As
         qQueaVVVWrnREofXB5M+GN67q0XLzvxZ2U4Kpbu3MZIPNeAOPjGlKDdc+CFFxdQXxrjo
         wpwKZagWd0j5RPQ4tgd4xVJ/1DQFI3VKNAD9TJK2oAPcWeIf7zYrYGLvRiI8Q3inlre2
         tXnHL+OAyL6HvWRsd+YnbZnf4m7N8M6T5xkSUYJlr1xnd6G2RDlyFN+Jqw3wsbtlodHr
         bTUQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=4HkS2czSPPdI3r32FAUn2hRaxtcPptfV4qCCJAqJkR8=;
        b=OqM539cD92BG2icGC6Rmm2qWqq1vN/bYt0H7iYSo18x+xrP8vaATRMJ2MY57l68XCk
         DKqnvaWlSobNWqQ5s1C24EMnM0BR0teixtcRZCyG5reZlBlRLAr5Yi8B/R/EtKmVGQ7X
         d+7w0fY0Z6TNilNdeMgGZvyjKu3rR+v/VXrFl8PLWmSgyWUn7zEyA0dgLBzzwfHJK1iN
         jsQFCdh+T5Mc9WEbQwoqbru5UZ6RVw2WFUxxrkiL0S/wlaAHvyerHavceA5wIBGZYXGe
         oWPBJssc3SVRlQOS5U4HYGs5Ag1e/fkj3Aj4+QBioVWEEAF5u2kJSMSOq5gjrIWkWwZY
         zvxA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=K4A4n8xh;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.82.58 is neither permitted nor denied by best guess record for domain of evan.quan@amd.com) smtp.mailfrom=Evan.Quan@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4HkS2czSPPdI3r32FAUn2hRaxtcPptfV4qCCJAqJkR8=;
        b=h6toQg+A+qwVVzFf2s6qtjQlFN+5Fr59N+3SI1sPmryz44ODAH5AYXON0yH9slbOk/
         ZsvcNlrOsnRZea69mNNUFr9AyZ1S5RHzhy7WdG3uYky2yHKyenGRkniXLRLWRqXdX4rT
         lyLNOR9w3RUcrlQ4vbadOuKaiEdHInvYq+H3t3ESA/RVH6sWfAFwfYYEMnLWrINc5ikK
         Fn48WBzKs/5Kr0SVqZ5VrhRo6mr8EedPhlqoJXXZEOeo+nLx9GOb9WZvE7dHsoba071F
         Sg8XXjMQI34X8iIQMBEausbrBrpDN2k0ffwxnT2i8K7A6DK6/mTTMJ6qWWPZDia9iED7
         OIvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4HkS2czSPPdI3r32FAUn2hRaxtcPptfV4qCCJAqJkR8=;
        b=eiyega1REuitmyw4zeIt8kKKjemdqvpXHB6OOZC2eQ/QO3HGc0E4MwkOsJw5t0Yqg9
         6x4f+ev27IXtBnCmbug72OM6LvZAAYlie+ewzhGFb3Pr3CxqN1AyJ0RDJvYxBZp0zCwV
         YrEkqT+mQ9LyQFc2WKqm5mwK7v+Om8bxkvkhRMI/Pjccs9WMpdad75UAYvB7KTO+68K+
         ezIJoFagRCYafVfgYX9gurcEw5trbiDpMY2DtQUYZHsjQniJS3fT3Czix0GvBG3+w/Zg
         w5dyloaqU3RofNfMZI7BFKmAZIivSWmP55QpM73mHVWouZ+0LbSlhqvGU6yjiVKicRjU
         S7hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQ/rkYocZZaNUfFqK+haQVdRAoefpdQvMFcFRvb3l8Gvs8AJoS
	FmtCgoFM5Q/I9YFkbbMekSI=
X-Google-Smtp-Source: APXvYqwQp/8AX575L6M4KNm20TicClkChJ9A9eyxpkmQciK9iXz24bCLiUP8u0YhH4HraEnEC66cuw==
X-Received: by 2002:a7b:c148:: with SMTP id z8mr13174669wmi.142.1564968069709;
        Sun, 04 Aug 2019 18:21:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc10:: with SMTP id f16ls28424513wmh.2.gmail; Sun, 04
 Aug 2019 18:21:09 -0700 (PDT)
X-Received: by 2002:a1c:407:: with SMTP id 7mr16095222wme.113.1564968069231;
        Sun, 04 Aug 2019 18:21:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564968069; cv=pass;
        d=google.com; s=arc-20160816;
        b=V3wojHtywaV+e5ai9XqNp7ACuYS69FK+nSuxxf0bF8JmQIwSApAH24w5cB+EUaup+Y
         ZGmUd8BUYRcrEswKWur0aoIaf9QIkg3zMhfyS5aBeYnZaQ3HFL+nzQxqQuBFW5V3qSVI
         grkbxPVRqzQMuSxmmNmiz/eHly5YjuG7I/j/fc/cqfDW1w9B15ahnf2gmgLDYH8duPGZ
         1yE9iFuJImXc7MwtoKd0J/KHqpSRKK9iC+jabY9HLQnJponD8DjYpH/UzMjhUPAn8dJt
         LcY5tjTKIRZ5ogUwumysJwf720eqDkyeNyoGY0PCw9tYL2554Ecyz30VAXzmvZ/tNMul
         GcrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=//eIfGumUqGY4eS+WJUNWHG4yIQcggsiHZv79Ti0IXA=;
        b=OoyZI1ZbOle6HYiT3jZGylseCSQoXrEJRp1pN6VaXL5jX20BZ3+rcOVPF+//h4UrIk
         McK2odL1w5S5jBPsvRVJK3JewqEvFQRx7RNkHPSttEIqnEmiLJusm5ChSLGzCew6VtKW
         V9ma9fldlZiT2kIr8pHyJSEL+WvvSMmC+btmNhhYWw7UPgHZF3UXVilkD0xCBUiYBbST
         LoeHIoUaObB1vCMrxYwwrBqaR2hduhRAjIjONlTZk6j4a1XTROrSg+hw446OYXyz6Ur4
         /0lruJHUYAnjV5XY65Z0q+kznV+xJejnxsjOgXBUKavFcxb7fQfCsZrDEy5dreGbQm1Z
         qo7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=K4A4n8xh;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.82.58 is neither permitted nor denied by best guess record for domain of evan.quan@amd.com) smtp.mailfrom=Evan.Quan@amd.com
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (mail-eopbgr820058.outbound.protection.outlook.com. [40.107.82.58])
        by gmr-mx.google.com with ESMTPS id a10si4391799wmm.2.2019.08.04.18.21.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Aug 2019 18:21:08 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.82.58 is neither permitted nor denied by best guess record for domain of evan.quan@amd.com) client-ip=40.107.82.58;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nMQytuQC8j4YORt9KpjAlt58kZDdFJL9BVnAqsLWTpCcxEI1iE9jh4WLsZq+WG3+BAkVUM+Zfp9k1AAwhk9JPx+PWQ1yQHlrb2n5p9rbi02lpIThCuYSq9G4sVaA0C4RokfyiddnPcuFhizt1xUb4ZFQYKSdkfiY93wuRQulPOFBCc3qwjjR4GNXU2ckiIlppjT6ezX3cSok49zvHzF5cLt53VqlkjGX2k4mJ3KOvfDytmu+8WrURUNViBmDg+CuH515DV3IEaJjObl0r3Kz7KrJHjQYnDaEoaQmP1FAq2jqTcf+6klTnqzRbYqn2Kol8fN5t/CKZgtDb77qSDOzaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=//eIfGumUqGY4eS+WJUNWHG4yIQcggsiHZv79Ti0IXA=;
 b=ngYlFbC2wcl91dztVKfMieO3Rmm42B4eBMziJU2uiGhJJLy2Lu+PW9A2X0tfu+tRqVkTQuP3bldtj3SI807eE8qVnVPkQsGbUuezYonP8bfh13rAd4zl6nXVZwW7Fqigpkyd7QQ2fnLVmHoWOEVzwV583LYcX1M17WQQqm1v85v5YJt+XlffQewgej67q3mu5+wBoY8y93/njmEbddQNMjPo4ZodH8IgCodDBJHfTa+7cS/jJlq3Omd2Wc1pAuhUTx5mT/X1DODyL93DcF/f/WHqg32sg2Y1/NIY0WvysaorGUA55i5spRf4pxDN6A/ckGmJTVGlFiZmOqTr2r4NKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
Received: from MN2PR12MB3344.namprd12.prod.outlook.com (20.178.241.74) by
 MN2PR12MB4208.namprd12.prod.outlook.com (10.255.224.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Mon, 5 Aug 2019 01:21:06 +0000
Received: from MN2PR12MB3344.namprd12.prod.outlook.com
 ([fe80::bd9b:19ce:ef42:ab26]) by MN2PR12MB3344.namprd12.prod.outlook.com
 ([fe80::bd9b:19ce:ef42:ab26%7]) with mapi id 15.20.2136.018; Mon, 5 Aug 2019
 01:21:06 +0000
From: "Quan, Evan" <Evan.Quan@amd.com>
To: Nathan Chancellor <natechancellor@gmail.com>, "Deucher, Alexander"
	<Alexander.Deucher@amd.com>, "Koenig, Christian" <Christian.Koenig@amd.com>,
	"Zhou, David(ChunMing)" <David1.Zhou@amd.com>
CC: "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] drm/amd/powerplay: Zero initialize some variables
Thread-Topic: [PATCH] drm/amd/powerplay: Zero initialize some variables
Thread-Index: AQHVSwR3BVBtbsqdn0qOQ80AgffoNqbrwc9Q
Date: Mon, 5 Aug 2019 01:21:06 +0000
Message-ID: <MN2PR12MB3344B936DC2DBD85443C6AC7E4DA0@MN2PR12MB3344.namprd12.prod.outlook.com>
References: <20190804203713.13724-1-natechancellor@gmail.com>
In-Reply-To: <20190804203713.13724-1-natechancellor@gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [180.167.199.189]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d641ff65-0108-4a77-f91b-08d7194330b1
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:MN2PR12MB4208;
x-ms-traffictypediagnostic: MN2PR12MB4208:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR12MB420862FCBC030A25B98CF4F0E4DA0@MN2PR12MB4208.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:390;
x-forefront-prvs: 01208B1E18
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(366004)(199004)(189003)(13464003)(6636002)(305945005)(68736007)(6506007)(102836004)(53546011)(76176011)(186003)(26005)(33656002)(8936002)(81166006)(81156014)(8676002)(486006)(446003)(11346002)(476003)(14444005)(110136005)(54906003)(7696005)(5660300002)(99286004)(14454004)(966005)(256004)(3846002)(6116002)(7736002)(316002)(71200400001)(71190400001)(2906002)(52536014)(74316002)(66476007)(66556008)(64756008)(66446008)(66946007)(76116006)(478600001)(6246003)(25786009)(4326008)(86362001)(229853002)(6306002)(9686003)(6436002)(55016002)(53936002)(66066001);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB4208;H:MN2PR12MB3344.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PCxYWwZaQcgzMm1pp9eEwQJd8E+IQUOx54dc8fvHOAT4SoxPoZuYt1yLeGxaeRZVgquq87+43HCxRU7hwqEHpNVwldIR163u68cWF170ey7zMWFsL2lrGh2ygwrkuLmVwP42O1GAy7ox3lc4Hl64L8P+mDAwZkbALhXsaSRcacilCSud6PvtWvBEGGmlI+75r1vgCJgPNqOG0L5dGXfVPCRrrc9xCbhkiE98fULEDMoeQ4duJF0D/RA9RUr+lUBqWIfxIKqoL8LepB1rXScTaCzVrSnttwSR67jY0arjKdbediuczH0Nec9t6mvS5pyuOqon1fbbrwtORH6Rtpt3OPiijfnv15CPhplMFyPP7CLJKMguZHND1gaNkSCP5Huig984WrvokNEKRYX8PoKmyu/FJJ/uJMafHOK/UN+vqR4=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d641ff65-0108-4a77-f91b-08d7194330b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2019 01:21:06.4738
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: equan@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4208
X-Original-Sender: evan.quan@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com
 header.b=K4A4n8xh;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.82.58 is neither permitted nor denied by best guess
 record for domain of evan.quan@amd.com) smtp.mailfrom=Evan.Quan@amd.com
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

Thanks Nathan. The patch is reviewed-by: Evan Quan <evan.quan@amd.com>

> -----Original Message-----
> From: Nathan Chancellor <natechancellor@gmail.com>
> Sent: Monday, August 05, 2019 4:37 AM
> To: Quan, Evan <Evan.Quan@amd.com>; Deucher, Alexander
> <Alexander.Deucher@amd.com>; Koenig, Christian
> <Christian.Koenig@amd.com>; Zhou, David(ChunMing)
> <David1.Zhou@amd.com>
> Cc: amd-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; linux-
> kernel@vger.kernel.org; clang-built-linux@googlegroups.com; Nathan
> Chancellor <natechancellor@gmail.com>
> Subject: [PATCH] drm/amd/powerplay: Zero initialize some variables
> 
> Clang warns (only Navi warning shown but Arcturus warns as well):
> 
> drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1534:4: warning:
> variable 'asic_default_power_limit' is used uninitialized whenever '?:'
> condition is false [-Wsometimes-uninitialized]
>                         smu_read_smc_arg(smu, &asic_default_power_limit);
>                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/../powerplay/inc/amdgpu_smu.h:588:3:
> note:
> expanded from macro 'smu_read_smc_arg'
>         ((smu)->funcs->read_smc_arg? (smu)->funcs->read_smc_arg((smu),
> (arg)) : 0)
>          ^~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1550:30: note:
> uninitialized use occurs here
>                 smu->default_power_limit = asic_default_power_limit;
>                                            ^~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1534:4: note:
> remove the '?:' if its condition is always true
>                         smu_read_smc_arg(smu, &asic_default_power_limit);
>                         ^
> drivers/gpu/drm/amd/amdgpu/../powerplay/inc/amdgpu_smu.h:588:3:
> note:
> expanded from macro 'smu_read_smc_arg'
>         ((smu)->funcs->read_smc_arg? (smu)->funcs->read_smc_arg((smu),
> (arg)) : 0)
>          ^
> drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1517:35: note:
> initialize the variable 'asic_default_power_limit' to silence this warning
>         uint32_t asic_default_power_limit;
>                                          ^
>                                           = 0
> 1 warning generated.
> 
> As the code is currently written, if read_smc_arg were ever NULL, arg would
> fail to be initialized but the code would continue executing as normal
> because the return value would just be zero.
> 
> There are a few different possible solutions to resolve this class of warnings
> which have appeared in these drivers before:
> 
> 1. Assume the function pointer will never be NULL and eliminate the
>    wrapper macros.
> 
> 2. Have the wrapper macros initialize arg when the function pointer is
>    NULL.
> 
> 3. Have the wrapper macros return an error code instead of 0 when the
>    function pointer is NULL so that the callsites can properly bail out
>    before arg can be used.
> 
> 4. Initialize arg at the top of its function.
> 
> Number four is the path of least resistance right now as every other change
> will be driver wide so do that here. I only make the comment now as food for
> thought.
> 
> Fixes: b4af964e75c4 ("drm/amd/powerplay: make power limit retrieval as
> asic specific")
> Link: https://github.com/ClangBuiltLinux/linux/issues/627
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/gpu/drm/amd/powerplay/arcturus_ppt.c | 2 +-
>  drivers/gpu/drm/amd/powerplay/navi10_ppt.c   | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c
> b/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c
> index 215f7173fca8..b92eded7374f 100644
> --- a/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c
> +++ b/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c
> @@ -1326,7 +1326,7 @@ static int arcturus_get_power_limit(struct
> smu_context *smu,
>  				     bool asic_default)
>  {
>  	PPTable_t *pptable = smu->smu_table.driver_pptable;
> -	uint32_t asic_default_power_limit;
> +	uint32_t asic_default_power_limit = 0;
>  	int ret = 0;
>  	int power_src;
> 
> diff --git a/drivers/gpu/drm/amd/powerplay/navi10_ppt.c
> b/drivers/gpu/drm/amd/powerplay/navi10_ppt.c
> index 106352a4fb82..d844bc8411aa 100644
> --- a/drivers/gpu/drm/amd/powerplay/navi10_ppt.c
> +++ b/drivers/gpu/drm/amd/powerplay/navi10_ppt.c
> @@ -1514,7 +1514,7 @@ static int navi10_get_power_limit(struct
> smu_context *smu,
>  				     bool asic_default)
>  {
>  	PPTable_t *pptable = smu->smu_table.driver_pptable;
> -	uint32_t asic_default_power_limit;
> +	uint32_t asic_default_power_limit = 0;
>  	int ret = 0;
>  	int power_src;
> 
> --
> 2.23.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MN2PR12MB3344B936DC2DBD85443C6AC7E4DA0%40MN2PR12MB3344.namprd12.prod.outlook.com.
