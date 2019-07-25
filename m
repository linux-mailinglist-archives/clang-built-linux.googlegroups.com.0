Return-Path: <clang-built-linux+bncBAABBENE47UQKGQEFDT4HXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id E54C175361
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 18:00:17 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id v13sf5184987lfa.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 09:00:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564070417; cv=pass;
        d=google.com; s=arc-20160816;
        b=eqM2RPL0+PmtOLzSCOprCf9j+yJl2QVy6hrMlcNFhVAtWdczPyvWNF5Y2Er1LtWV6g
         aPnQtUIBsYmpTUDEVL/e2OQhWYPl8na77FgcWVhtlsyzIhaSDAZus8oh2BzZyZc2299F
         XiyxlVg2GLYbaZExvyy8BOS4yR7Bz2MepjF4hygkxNgZkpfMAQONFOVc/Xydct2KkMeu
         fjPRrwU1sNZ/sNXCihjsbS2/73nc/pVWv+RdfqCXGzKvXdLrMIL7kdy5tl43a/3NrUnj
         ZDiFGQghiNH1lyg45iFOvFA/SpKA7dJ8ZugWVSzmbhseMWgoSOhaHp7vqIau4Rl3bLgX
         Hdpw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=YWUwjTmf11s6KMm0YgHkFu+DPhtCdQo20rtq4ToxGuo=;
        b=h+kD2g+Qf/9BiHzTgvy9EfxeTBLhKm/oJM56YbbHYkKK+ipqJZ7ItMJgHrr+4sQ0iO
         tt+o4uHLMz03Kj7cEZWxTdQlqHGquZ/LM0yWKmpIw0X6jMoeU0tejRxzYAkTNKqCf/r6
         HkccJvxlf8mKugPayIV/hWFBLmRXHGbGbswF2lF1ainVyuyr7np31Ma8UPOxHALkV51b
         kACYRFR1xOv/X8Qxp6o0OXsazmt2uugAT4zitBQf3Cpo5PLB3w0B4tt8KmobTngMTM5y
         0Es91fYT+1CbHxP6udf/L1NrbUjylDpNNbkTWeR52hPdKYQLMZsZvO2NjOxJEyb0bFYg
         ncNw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=Q4wed7lj;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.77.73 is neither permitted nor denied by best guess record for domain of sunpeng.li@amd.com) smtp.mailfrom=Sunpeng.Li@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YWUwjTmf11s6KMm0YgHkFu+DPhtCdQo20rtq4ToxGuo=;
        b=g10cSfuxrdImub1VB2EN7RFytn65oltSRXyXMuA0FQGOMcSpIxtKtOTfVF1/lpRTYj
         IwP+iunwyBCqeHiWmRzDfSbzSuR+AZIz1P5jVtQ8bnTJoNah+ZiLZV7ZKGWIhmXw6r/h
         abgPxhB5ov8xz93rk4YpULpOpWmiqYqi3SRW0QxIzYF7B1/O/MMbbJLDKWdqPpeGedy3
         mIw8dVMFBitM0VkpZCxR2d0Y2hdrEME6vmnX/PQ/+zzwJOXgzbAIdBrTrmwSDu20ZrMJ
         ca3dcQ7Yr1QXnmNdF4XZ1y5cUi4Dhw1TJCzWWpQBzwvUItOPHfrewOMsODzfOi08N9DE
         kj2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YWUwjTmf11s6KMm0YgHkFu+DPhtCdQo20rtq4ToxGuo=;
        b=Gtlv/5h1hdMvrUqyV5gu96YwJFEnWpdG6RXnGrxCJawgY35Ik/O17FqWqEiwrVG2nH
         Xq3/NLsBUivrgL2Pj+g/b+Dhx3FpxhbZ8vGWrtKS2xn4ScTuBmkfd27Db/LLWAyPY4nh
         tVps3Bsp0ayDhc9RMSwHfPddR3WbBDrIy4LYbVklcwzKu2iGZJAE1dCC9PxWUHr7vMpO
         AKy87YrqQogQo9xoCL2XX/Eb1lo8LrWCeSebmKMOfH5NUEGQPe2R2DFVwmlvf4TfzdNh
         ps1AOr4xGgnfdY2ib4HqUWUKet8aySP0f9Wo4f8TaehXTFYYhhwEcGZyoh5UNY1zz6hB
         xTUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVj02JmJN1b4j2RmF1PuMs90CJBC+FG7ngIjhp0xOls8PeCe9AK
	2Azi6488lwxYBj2KUgUCYak=
X-Google-Smtp-Source: APXvYqxz+VvWtU0c8Zqf5DlC+Z/iAzydpE8WaN1UVYacn16XFkFjz8gwC52gooBWnOeI4PuigJM+xg==
X-Received: by 2002:a19:ed07:: with SMTP id y7mr2085182lfy.56.1564070417259;
        Thu, 25 Jul 2019 09:00:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4a67:: with SMTP id q7ls4169913lfp.2.gmail; Thu, 25 Jul
 2019 09:00:16 -0700 (PDT)
X-Received: by 2002:a19:c80b:: with SMTP id y11mr40713454lff.81.1564070416951;
        Thu, 25 Jul 2019 09:00:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564070416; cv=pass;
        d=google.com; s=arc-20160816;
        b=AKUkJwzPGBveVVZH9hK4moJX8OfxBgjG0khYGgo8cUP4+pJMPaHxGS3Xn3NXoaMRpK
         uq/ZlUXRzxrMcyMSPDP602q+zU0Zo6uGG52OohSgzCw4IrPGi1GDhpW93ij0lfJzwf8f
         6bsL9gwUSIMWew6S8vc1pF6+LDeJQTBnX53bd9q5DUZqLeSEYJsA8FaggkemENAAT6D3
         8DanIiY6fJn/9iT7zijpygTs+fCYTS6CfdU9Y/T/yYgZsMQMQkdCLbHKUgibuv62HhYU
         RPKUW/nQGwggIVtyBYT1W5w2mSbW2SfZYFFrTl1YCR1h/kr+NCQwkpfwYdCFo80ccFcB
         YtWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=tRUWLM56PlUrnuq+fb7CL2nxlt0rTOFxee7IjUxeNb8=;
        b=NYNqCOVJNlwdtHL7ZPhPvBRpCvmqKc2a0KrZAMgQwX8cRex8foRxOq41yFxAC/bMut
         enIXmqZPjA/vQlHsupWxOTtI2FeBqNCF534IO2YWO96hJCUE+P3g6t6S6GMfQTtQuC29
         7iLdp5vpLmqzqTHLgiEK2YrD53U3DA/pWfFTS41g0NRZumY/JoGksEP0jjLqPRWu3Rc3
         eq0vskadF3FdSCDhy5Cyt/5nzL6C7SMBcl+Bt7L/EajSoSMWcyJNybYBsyVFphIKeze6
         5VdC7ErtH5ASyILguE2wGEuBRDMw4UpkPT0D2K8a0nZsvsVgRbXrnTpgTWbC3DD9SB8J
         8v3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=Q4wed7lj;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.77.73 is neither permitted nor denied by best guess record for domain of sunpeng.li@amd.com) smtp.mailfrom=Sunpeng.Li@amd.com
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-eopbgr770073.outbound.protection.outlook.com. [40.107.77.73])
        by gmr-mx.google.com with ESMTPS id q11si2421981ljg.2.2019.07.25.09.00.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Jul 2019 09:00:16 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.77.73 is neither permitted nor denied by best guess record for domain of sunpeng.li@amd.com) client-ip=40.107.77.73;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RPAPTLW3KsxCML8bJ/61+NI4uSolhxSEwoTb/+GQUZSicHBUcGia1DFGDGN4O9HZVmLBDI9ebhD5ASGs4aPzscbxSGjLF/ZNGi6HqBvjLVCRXQXjpGvFfr3hCBOYe3M40Cv86qCcdWvFEicSrCNNErvqmcvG0fz3e2XqV+RtSMYDzf2owma3K0LvFWNMD0FQwPUqTrap8J0QzgHAw3NeisKddC90sLCh02sh8Dmgn2Uf+s/h3YK2MXKY5BMzcYRv1QCT7CVCk+Rb9HyDtWYu9+643sJ6etNNBElGM7coJci47C9b5Lb2MPjRCvJI8nybEbQPD9aJpKklOFj5eeJ6KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tRUWLM56PlUrnuq+fb7CL2nxlt0rTOFxee7IjUxeNb8=;
 b=hgmB+K+lDG3v1QW3fE87b9pFsLHRHksBA+Ia6coG8TarsSCxdhTnRFdQQUfxwLhwDeuiQBehyyEybJfqawwqzaUWte4HZ5L7/5ylegRGlnSMj5nXu1YHA6W+45l1NDPVAJbTWoA0VQSlm+t6GF6Dl9JeFzjL1AeISIJhUBy2jJecR8oClf+ocE/LpAPs6wYowFSukjK2qq2qi4dSKpsTtkqXuGi1fetH+YEnyQ9IEYiiuCviDIRWF1xE09qpjLov2/Ta2bSs9IIrzPDq6+4lfQUe+RYnraeEHw1n2wS6tX6//LQ+iIG6kYcuI0xTfUbOS76oahUHv53A4And6Z9/Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
Received: from BYAPR12MB2853.namprd12.prod.outlook.com (20.179.90.150) by
 BYAPR12MB2790.namprd12.prod.outlook.com (20.177.126.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.13; Thu, 25 Jul 2019 16:00:10 +0000
Received: from BYAPR12MB2853.namprd12.prod.outlook.com
 ([fe80::dd9c:e1c8:face:eaa9]) by BYAPR12MB2853.namprd12.prod.outlook.com
 ([fe80::dd9c:e1c8:face:eaa9%6]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 16:00:10 +0000
From: "Li, Sun peng (Leo)" <Sunpeng.Li@amd.com>
To: "Deucher, Alexander" <Alexander.Deucher@amd.com>, "Koenig, Christian"
	<Christian.Koenig@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>,
	"Wentland, Harry" <Harry.Wentland@amd.com>, Rex Zhu <rex.zhu@amd.com>, "Quan,
 Evan" <Evan.Quan@amd.com>
CC: Nathan Chancellor <natechancellor@gmail.com>, David Airlie
	<airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	"amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 5/7] drm/amd/display: Use proper enum conversion functions
Thread-Topic: [PATCH 5/7] drm/amd/display: Use proper enum conversion
 functions
Thread-Index: AQHVMiy9/HNyhezL/UaoUkOqlvXBhabRXHKAgApDQ4A=
Date: Thu, 25 Jul 2019 16:00:10 +0000
Message-ID: <5f0e8332-50ae-cc9c-1a12-5a097c51297d@amd.com>
References: <20190704055217.45860-1-natechancellor@gmail.com>
 <20190704055217.45860-6-natechancellor@gmail.com>
 <20190719031647.GA84028@archlinux-threadripper>
In-Reply-To: <20190719031647.GA84028@archlinux-threadripper>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: YTOPR0101CA0063.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:14::40) To BYAPR12MB2853.namprd12.prod.outlook.com
 (2603:10b6:a03:12c::22)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.55.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 784c5283-70bb-4892-f97b-08d711192be3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:BYAPR12MB2790;
x-ms-traffictypediagnostic: BYAPR12MB2790:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BYAPR12MB279071942B712369CC870DA682C10@BYAPR12MB2790.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:741;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(376002)(136003)(39860400002)(366004)(346002)(396003)(189003)(199004)(25786009)(6246003)(6512007)(2906002)(316002)(36756003)(6306002)(53936002)(71190400001)(52116002)(71200400001)(229853002)(4326008)(6486002)(31686004)(66946007)(66476007)(66556008)(64756008)(66446008)(6636002)(81156014)(81166006)(305945005)(6116002)(8676002)(76176011)(66066001)(7736002)(31696002)(53546011)(102836004)(8936002)(3846002)(99286004)(86362001)(6506007)(386003)(14444005)(68736007)(478600001)(54906003)(476003)(486006)(11346002)(446003)(5660300002)(14454004)(6436002)(966005)(186003)(110136005)(26005)(256004)(2616005)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:BYAPR12MB2790;H:BYAPR12MB2853.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yRYj4CcKsZufXiKSZHSAI9XpmE+MXkJiVNm9eR1ySmR7zZQB8ObG1gRLtnBq9w9Zkt2PJcm6qH/ESue6sSkUr964Wj739yfP26CgxOsfsdTLuq6tWNuLq8BZkyga283E4fA2OQnC2/cyEwl6f0R5To+2G2kRbqwvbu3aqIOBL88giYB2npilHgSJH/F9zZ6+eM73rwjtbzSeOfZACfDjCB5B9XunGIvo77ykkmrZZl1t6MMkzWeEVOytgNNaQNKODqF4hKg9+x/vliyjetghlnn2F8PsefR0SkNsuFJTr0pXs002gNX8Pj5lX8n1XpjVplh+wXtYiU+3yrbQzLqTkcJN7JtF0rAWg1pK6EgA8AxO3Rod2s3Z3lXoDhYl5DKjmL9p6yzSI1myNEZ2u20mDd6bZ1pTzDp8tqZaaHELGSk=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <3C344A9FB9ABC84D8EE0493DC20FF21F@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 784c5283-70bb-4892-f97b-08d711192be3
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 16:00:10.7158
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sunli1@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2790
X-Original-Sender: sunpeng.li@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com
 header.b=Q4wed7lj;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.77.73 is neither permitted nor denied by best guess
 record for domain of sunpeng.li@amd.com) smtp.mailfrom=Sunpeng.Li@amd.com
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



On 2019-07-18 11:16 p.m., Nathan Chancellor wrote:
> On Wed, Jul 03, 2019 at 10:52:16PM -0700, Nathan Chancellor wrote:
>> clang warns:
>>
>> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:336:8:
>> warning: implicit conversion from enumeration type 'enum smu_clk_type'
>> to different enumeration type 'enum amd_pp_clock_type'
>> [-Wenum-conversion]
>>                                         dc_to_smu_clock_type(clk_type),
>>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:421:14:
>> warning: implicit conversion from enumeration type 'enum
>> amd_pp_clock_type' to different enumeration type 'enum smu_clk_type'
>> [-Wenum-conversion]
>>                                         dc_to_pp_clock_type(clk_type),
>>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>
>> There are functions to properly convert between all of these types, use
>> them so there are no longer any warnings.
>>
>> Fixes: a43913ea50a5 ("drm/amd/powerplay: add function get_clock_by_type_with_latency for navi10")
>> Fixes: e5e4e22391c2 ("drm/amd/powerplay: add interface to get clock by type with latency for display (v2)")
>> Link: https://github.com/ClangBuiltLinux/linux/issues/586
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>> ---
>>  drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
>> index eac09bfe3be2..0f76cfff9d9b 100644
>> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
>> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
>> @@ -333,7 +333,7 @@ bool dm_pp_get_clock_levels_by_type(
>>  		}
>>  	} else if (adev->smu.funcs && adev->smu.funcs->get_clock_by_type) {
>>  		if (smu_get_clock_by_type(&adev->smu,
>> -					  dc_to_smu_clock_type(clk_type),
>> +					  dc_to_pp_clock_type(clk_type),

smu_funcs->get_clock_by_type doesn't seem to be hooked up anywhere,
so this looks to be the most correct.

Although it makes more sense to use smu_clk_types here rather than
amd_pp_clock_type - any reason why this isn't the case?

>>  					  &pp_clks)) {
>>  			get_default_clock_levels(clk_type, dc_clks);
>>  			return true;
>> @@ -418,7 +418,7 @@ bool dm_pp_get_clock_levels_by_type_with_latency(
>>  			return false;
>>  	} else if (adev->smu.ppt_funcs && adev->smu.ppt_funcs->get_clock_by_type_with_latency) {
>>  		if (smu_get_clock_by_type_with_latency(&adev->smu,
>> -						       dc_to_pp_clock_type(clk_type),
>> +						       dc_to_smu_clock_type(clk_type),

This is slightly concerning. The functions are doing the right thing,
but amd_pp_clock_type doesn't map 1-1 to smu_clk_type... In any case,
this looks good to me.

Reviewed-by: Leo Li <sunpeng.li@amd.com>

>>  						       &pp_clks))
>>  			return false;
>>  	}
>> -- 
>> 2.22.0
>>
> 
> Gentle ping for review, this is the last remaining warning that I see
> from amdgpu on next-20190718.
> 
> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5f0e8332-50ae-cc9c-1a12-5a097c51297d%40amd.com.
