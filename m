Return-Path: <clang-built-linux+bncBCS2ZOPPSEBBBZFK47UQKGQEEPPAPTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6D7753A5
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 18:14:30 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id n3sf21161064pgh.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 09:14:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564071268; cv=pass;
        d=google.com; s=arc-20160816;
        b=DiKPRXVtyGWp12etPvzDCKQ/T84R/si4EtqWCUW8K5zATYmpr0tznNs8YiRLEewJkj
         pI4eRJtJibKeQ8tQLkzF/5/UJlJ6qKigKNS6uN6Nk4dmqz2odfH732JTzAjCT37UNwWa
         ZxS0hnpUUk/bAFSAT3oA+RVoDESzUZj2YAQf4NlYaLzaYCsfmLzYkWphd9UeVCAWb6ra
         6JnzBUziVgmEgayfXu90ycxtCejBtzpju9c318pMZuhErXbGzeXNhT9BfeXY6MWaHmsJ
         U54XxyowpvQ7Q+Uk9gQ2MR/fYj1jfb5a39pUpcAihR6+K2cyCbFu2zz/KbNf9F0B2xZm
         u2NA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=56mGRYOme1jvv79wKiLt9yWKQDlaE/hohIp1/RextyM=;
        b=rUvpgAegRyObGnrO84YgY3XkmC2QjxkaGVZS5OiHgfE3YXDnZbLTVNNXtH7O3DGfTW
         XunePivh9BrlmY8z6G5/91ua1Rz8ONcaqIEqLWvVye3o+Ya4IaU7jDokhXnw2WmnwnoT
         D1qDJHzFZurhtQ4W0OUPccvEaJ0opwBu2uBgMW9bvbzX+VXF6qnPkYtxB5E+RBtubToF
         l7pGOngDhfrKI1cLR4rb2H/i9BbMI7ZFc+c3nfge70hZjpi70kvji4vxkzALx6bMU5Bv
         KW+oJQ2n8q0wkQySd0N0yT7jf1RyzcsYB7HuCRcVfg9k7mzF63BR81GN8+efxTGytcQb
         GoWA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=ZZmLSdpq;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.68.89 is neither permitted nor denied by best guess record for domain of nicholas.kazlauskas@amd.com) smtp.mailfrom=Nicholas.Kazlauskas@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=56mGRYOme1jvv79wKiLt9yWKQDlaE/hohIp1/RextyM=;
        b=J568ZYy/rUjPvfB2USHIEKJu/QSWXx8hrsl8SP8bX6sa6smIuUrsNxnlGe2crp2yEn
         rVNUKGWWa/BCfow0uH+rllvy/ZGdZf0hqXiqw/EFEJPAOT+ZpcfOro1AM6R9qm3B0giY
         dYKHFXRDkbvothczNAB59IUOhfFuKcCzp9py8BpBBaHJ+I1isaJE4jIhu9L6wFZkdCuh
         fCbDATlYPZDZom2tk8eOHC29JWWw+JkQqazNi4dN8IBVSSaSvMXx/oY4METK2gvpAthn
         W1ut7kxTt8kjM9MmxaEz3RfLDaUbHW9LVlWoqGPdmJ0IGFynnpFuzXVL0idV0QdWGpPw
         S+2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=56mGRYOme1jvv79wKiLt9yWKQDlaE/hohIp1/RextyM=;
        b=MMUdBnA/PBR4kQb+jB5qFgQzQwCgxTGID5EA90Y9BCaNyEqK/Pq2zKPEk/fr+nAqf+
         l/kHsy1qYOV0utMIXZ8dVMfvKTr+kBeo1fxy0s6b/7nxllxOINBSK0Rx/KwsS6FsgQy1
         ATVP2Q3Q/IJUsnWNWoXNkQXBExYpdH0OlaK+NtnGfL4qQDYkeypBMppWIQoaFFWCRggy
         gX3GMlUGmtmrG3ZvlALQJP6ZhBMYKmleGEyR4lR5Ayur6c/0UVoem6bJdrOAPqD6qZK0
         uEyO77DdQT9MeAm8cQB4CaAyxkETcTB9xn/Hq/uoieFCCYmX18fqzo9N4VS8h1r30sxX
         hjLg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVSlPJDddC+aOPnnPAUl/P7cTPyQUPtw4Uh/El4u1H/UzSVt5R3
	eLdQxAYMEW6N5WVFzMDWG5w=
X-Google-Smtp-Source: APXvYqz7yty3OenxA02Gxcwu48UmDtNYIFTo/t3Lu7iS/htFDMo3a7vq1D3+YYBZGXN9RJhWpvCxXQ==
X-Received: by 2002:a63:2252:: with SMTP id t18mr87290570pgm.5.1564071268637;
        Thu, 25 Jul 2019 09:14:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3787:: with SMTP id v7ls16622743pjb.4.canary-gmail;
 Thu, 25 Jul 2019 09:14:28 -0700 (PDT)
X-Received: by 2002:a17:902:7c05:: with SMTP id x5mr92559506pll.321.1564071268296;
        Thu, 25 Jul 2019 09:14:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564071268; cv=pass;
        d=google.com; s=arc-20160816;
        b=h656EYGZyckJfAgswjoXRM9H4GxzlCteF4pTSWJac+/AajjQ+qEcQG+pe2MYExhaMn
         9WSLcwj799VjlA0OLufofnZ2Jnzx9v1oghw2g8c4LvQGvaB5paZRnfjNBw8srqNw0W3a
         /UaEmntUAmaZsUl8fmVya9mMYosz/c6dKsgfPGV+9dL6zOtnG5PzEC113iyiF7n114eq
         oel5cLo5bx7voP8pwDySS7xNqkFOHeBHZZR87Vw2FDEpyqrZK79aSVfTzxR9maeMUSTz
         59hgWvnTyXuaLNcQGBVW/gF1zKCCMp7U65m4Nhwb/n/wRsvXwBHYBnnjHnpBGUx4rc/+
         Le/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=k/hasSJXrSl4WPd8vYfEjO2Oa8pS5LzLaSVVc7ykuFk=;
        b=AXdSgOjIfKAXJ6mOiopuyv8je4DFCvlv0IeA2wsf/0NwPftNo/VJCPcRlxsBkR0aUE
         EQkSNqf1ChRwqaoVywLYV2VkcbV2u4632sGJaUB2do2+0mYyVsPGyO8Tk0u+sRJ/R1sU
         c50DPp3fkSRKVXiddhKVUBoQuM8F8uoLaR1KTzs+6S5ohl4iqWG1RvyOklpMSQb4Exzk
         A/3iH4SAp/yQp0qcuopZkTOXwQWM2mp7eUc+41pFeGZyLhISrkqZlhjlAXCCB0ZQhXG/
         Ltr/rAbg9IdcTkstFwSw9ik7ozTyl8703cbBDp/vtSeUgMHO+TyuTVzXjwlTDwus7uyV
         /P/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=ZZmLSdpq;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.68.89 is neither permitted nor denied by best guess record for domain of nicholas.kazlauskas@amd.com) smtp.mailfrom=Nicholas.Kazlauskas@amd.com
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (mail-eopbgr680089.outbound.protection.outlook.com. [40.107.68.89])
        by gmr-mx.google.com with ESMTPS id q2si1300085pgq.3.2019.07.25.09.14.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 09:14:28 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.68.89 is neither permitted nor denied by best guess record for domain of nicholas.kazlauskas@amd.com) client-ip=40.107.68.89;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b9d8YQLc9UIALoYX8xzvM5TFDq4BP5wP7Rmv8rcntAFdZ1M5NUFs/sS3Sgk8GXZ12CVQdMLSrGeIhhl+HiONuUI/Uo0ytz3VpqgkgTzavBeFp/wtt0H4LhBPglFgyVZHA4Crqgm2CKGCx0FpDZpcs50+BTFOAhSFitYM1eKOGNLU/vAlES4iTh0s/lIITEhFmDK/HBnEiXdDcHK89DSUZCrg4RcYyLtvIxBTSXuWSVP4gwTAkOgURGT9oSGEratlOSS/WHYi8lHyIT3VQquRLqCrFyuD/ti7flxf4Pdt1cDBkrS9Kkiww6roolSpgr6GdOkS4aC3K+VUE16SsMnMTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k/hasSJXrSl4WPd8vYfEjO2Oa8pS5LzLaSVVc7ykuFk=;
 b=DZBPnNfKd3ERKkQ5bYwG3smS41bl0segDnqBozHL78e8/fOWBrg/PdstKisHJ/orgk88eZP1oPitaOgXs4HEcOiAaDJ2KIgYzY7K+JjwQru9zG8VfOLGd2huCollCvHcycFBVY2JsuQcyGP/8Wxa1XNWGWJ0usvzjQq15Sh4FDMMsO22WdrJ56QpSpopGLhIuFWcmVDI6MF2LyVdU1kM4ksvkHG/g3GVynhP32F+OC3nX6GcMZ+LygYOL8uyR0atiEGDGFf/RT5+nsuBA2mm6ErOgaS7cszlnZ2fbJ6TWYN8kchHaJvdCcvZqPq9EVM8kZsUHeCcvaLK4jtT2TVWAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
Received: from BYAPR12MB3560.namprd12.prod.outlook.com (20.178.197.10) by
 BYAPR12MB3207.namprd12.prod.outlook.com (20.179.92.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Thu, 25 Jul 2019 16:14:26 +0000
Received: from BYAPR12MB3560.namprd12.prod.outlook.com
 ([fe80::8581:1f0c:2002:db97]) by BYAPR12MB3560.namprd12.prod.outlook.com
 ([fe80::8581:1f0c:2002:db97%7]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 16:14:26 +0000
From: "Kazlauskas, Nicholas" <Nicholas.Kazlauskas@amd.com>
To: "Li, Sun peng (Leo)" <Sunpeng.Li@amd.com>, "Deucher, Alexander"
	<Alexander.Deucher@amd.com>, "Koenig, Christian" <Christian.Koenig@amd.com>,
	"Zhou, David(ChunMing)" <David1.Zhou@amd.com>, "Wentland, Harry"
	<Harry.Wentland@amd.com>, Rex Zhu <rex.zhu@amd.com>, "Quan, Evan"
	<Evan.Quan@amd.com>
CC: David Airlie <airlied@linux.ie>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "dri-devel@lists.freedesktop.org"
	<dri-devel@lists.freedesktop.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "amd-gfx@lists.freedesktop.org"
	<amd-gfx@lists.freedesktop.org>, Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH 5/7] drm/amd/display: Use proper enum conversion functions
Thread-Topic: [PATCH 5/7] drm/amd/display: Use proper enum conversion
 functions
Thread-Index: AQHVMjm3BBZjBABNkkubYh2hnztXdKbRXFiAgApDRgCAAAP4AA==
Date: Thu, 25 Jul 2019 16:14:25 +0000
Message-ID: <18b343ab-8834-ea86-1bca-974f23b60b16@amd.com>
References: <20190704055217.45860-1-natechancellor@gmail.com>
 <20190704055217.45860-6-natechancellor@gmail.com>
 <20190719031647.GA84028@archlinux-threadripper>
 <5f0e8332-50ae-cc9c-1a12-5a097c51297d@amd.com>
In-Reply-To: <5f0e8332-50ae-cc9c-1a12-5a097c51297d@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: YTOPR0101CA0024.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:15::37) To BYAPR12MB3560.namprd12.prod.outlook.com
 (2603:10b6:a03:ae::10)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.55.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: eaec22b3-ad22-4fb7-9457-08d7111b299a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:BYAPR12MB3207;
x-ms-traffictypediagnostic: BYAPR12MB3207:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR12MB3207442691525AC17D550051ECC10@BYAPR12MB3207.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(346002)(366004)(376002)(39860400002)(396003)(136003)(199004)(189003)(36756003)(486006)(99286004)(6436002)(6512007)(6306002)(71200400001)(71190400001)(256004)(305945005)(31696002)(110136005)(54906003)(2906002)(316002)(14454004)(86362001)(7736002)(3846002)(6116002)(66066001)(6486002)(53936002)(6246003)(31686004)(14444005)(4326008)(66476007)(25786009)(66946007)(66556008)(26005)(68736007)(66446008)(64756008)(186003)(966005)(229853002)(478600001)(81156014)(81166006)(8676002)(8936002)(5660300002)(2616005)(11346002)(446003)(386003)(6506007)(52116002)(102836004)(53546011)(476003)(6636002)(76176011)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:BYAPR12MB3207;H:BYAPR12MB3560.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KIMkqZy5eM/n5rgoJcDmcDfOE8R0U3EKd+gyoWmWbpQxr81vaT+6rOc8ri1YG6XVgPtLyz0bWb2eOAwVk5TuXFK2hgQ3qprKd7TD0oFScRIVaH4e5MoqjAttN5S1I/4PN6GILEOI0kQS4sKz3A3zqok/CIPt/R6/2uNktt+6l6rxvY13fKuyHBjrqblY7cQyesuG9KuAxKiHOLmnAxvcNcCdbvkLkuHRsAqO13GDi9ep1sXwK+aeP2G6YxmCIk9dOnKzXb2ZcaHS4Etqn4O3CqzZC2F6sfljzL2zW1HWxeTcuvtt0uiMEcC2+niGcOUzGTRaRNd/exhbbG4bzvJ2X1crjodzUEtCepSC9EFmexOi9TACm0Cgq63kHfBy9EpKdCk+1AYn/ljyDGoLxs56PYH/gOsVNv/DUK/dfscjczg=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <ACB2C3C9055D6F4C88F9A0B2C09CF89F@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eaec22b3-ad22-4fb7-9457-08d7111b299a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 16:14:25.9168
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nkazlaus@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB3207
X-Original-Sender: nicholas.kazlauskas@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com
 header.b=ZZmLSdpq;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.68.89 is neither permitted nor denied by best guess
 record for domain of nicholas.kazlauskas@amd.com) smtp.mailfrom=Nicholas.Kazlauskas@amd.com
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

On 7/25/19 12:00 PM, Li, Sun peng (Leo) wrote:
> 
> 
> On 2019-07-18 11:16 p.m., Nathan Chancellor wrote:
>> On Wed, Jul 03, 2019 at 10:52:16PM -0700, Nathan Chancellor wrote:
>>> clang warns:
>>>
>>> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:336:8:
>>> warning: implicit conversion from enumeration type 'enum smu_clk_type'
>>> to different enumeration type 'enum amd_pp_clock_type'
>>> [-Wenum-conversion]
>>>                                          dc_to_smu_clock_type(clk_type),
>>>                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:421:14:
>>> warning: implicit conversion from enumeration type 'enum
>>> amd_pp_clock_type' to different enumeration type 'enum smu_clk_type'
>>> [-Wenum-conversion]
>>>                                          dc_to_pp_clock_type(clk_type),
>>>                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>
>>> There are functions to properly convert between all of these types, use
>>> them so there are no longer any warnings.
>>>
>>> Fixes: a43913ea50a5 ("drm/amd/powerplay: add function get_clock_by_type_with_latency for navi10")
>>> Fixes: e5e4e22391c2 ("drm/amd/powerplay: add interface to get clock by type with latency for display (v2)")
>>> Link: https://github.com/ClangBuiltLinux/linux/issues/586
>>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>>> ---
>>>   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
>>> index eac09bfe3be2..0f76cfff9d9b 100644
>>> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
>>> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
>>> @@ -333,7 +333,7 @@ bool dm_pp_get_clock_levels_by_type(
>>>   		}
>>>   	} else if (adev->smu.funcs && adev->smu.funcs->get_clock_by_type) {
>>>   		if (smu_get_clock_by_type(&adev->smu,
>>> -					  dc_to_smu_clock_type(clk_type),
>>> +					  dc_to_pp_clock_type(clk_type),
> 
> smu_funcs->get_clock_by_type doesn't seem to be hooked up anywhere,
> so this looks to be the most correct.
> 
> Although it makes more sense to use smu_clk_types here rather than
> amd_pp_clock_type - any reason why this isn't the case?
> 
>>>   					  &pp_clks)) {
>>>   			get_default_clock_levels(clk_type, dc_clks);
>>>   			return true;
>>> @@ -418,7 +418,7 @@ bool dm_pp_get_clock_levels_by_type_with_latency(
>>>   			return false;
>>>   	} else if (adev->smu.ppt_funcs && adev->smu.ppt_funcs->get_clock_by_type_with_latency) {
>>>   		if (smu_get_clock_by_type_with_latency(&adev->smu,
>>> -						       dc_to_pp_clock_type(clk_type),
>>> +						       dc_to_smu_clock_type(clk_type),
> 
> This is slightly concerning. The functions are doing the right thing,
> but amd_pp_clock_type doesn't map 1-1 to smu_clk_type... In any case,
> this looks good to me.
> 
> Reviewed-by: Leo Li <sunpeng.li@amd.com>

Looks mostly like the table just needs to be sized properly:

	static int dc_clk_type_map[] = {
->
	static int dc_clk_type_map[DM_PP_CLOCK_TYPE_NUM_TYPES] = {

where DM_PP_CLOCK_TYPE_NUM_TYPES would be added to enum dm_pp_clock_type.

Or it could just use a switch table instead, like the other function does.

Nicholas Kazlauskas


> 
>>>   						       &pp_clks))
>>>   			return false;
>>>   	}
>>> -- 
>>> 2.22.0
>>>
>>
>> Gentle ping for review, this is the last remaining warning that I see
>> from amdgpu on next-20190718.
>>
>> Cheers,
>> Nathan
>>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/18b343ab-8834-ea86-1bca-974f23b60b16%40amd.com.
