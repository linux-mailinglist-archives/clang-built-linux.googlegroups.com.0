Return-Path: <clang-built-linux+bncBAABBMOM47UQKGQEKKFO56A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0F0755A7
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 19:26:10 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id l14sf32555416edw.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 10:26:10 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564075570; cv=pass;
        d=google.com; s=arc-20160816;
        b=LWE70Iz2B0aoK9QagA5fpuaWDDpheDhKKnc8oXtHy5ZBGBkh/eSdQHOo+frX/DAvXv
         pJUfX27WZP+WrC96y90aaJTXxiUMY7f99W5VkcRmQCLeJ19XKvaBMEE3qaQ5G0CcRvxM
         8bxcc95aSe9kk8g0bqnQz5BUSzqwsiwXgqondI7JSCLnaWEIApHyc3x9CQN4kVSXSV5k
         FdGTgOsSFGp1QfTwH6YLzOmwsm87s5/iH9tH+XLvd8ukvq6ikoRv4GPOFM0LLlNFn+dY
         FoyVITc7aQK+icsbgtzFQSpDQlU9nGVO3QP23hIWb+3wZt+X9GCE/SPZleouTvEdVDPO
         c43w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=49qNSxkg37cScXhrlnWlaLGSVh6bJPOhI72FMnBT3xQ=;
        b=aBBbHcRrvtqwPwy4iav7+mnKrvoFwXBhRmYfgaRjakvGee4Hv6b8CjA4oSQTDMmB2B
         iAClKj3v75uuE4GR+o1VfE91Y479mqEgmMkiFa9sDcX+ufEL7Xy/UokNu8fkSdhP823o
         i8Gwy0fgr+5Vawj3gpSoHvWFj8nhjpdZAfB6DSV18Bk9nA4Vkno6msIZEr+Gst5J0h8d
         srqOU+f88xvzNPv46otAiMivoKMtwn27u0xRvqacZltHDCQeJHjX4dqOyBof8boGOXZ0
         6v9RhmPRopO8YBOcE+8uwt0/oVPkpBN6ihTdSZzALi3auwHPBpDTiemD4hhKphTlxuEj
         54eQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=gibfNXvU;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.73.59 is neither permitted nor denied by best guess record for domain of sunpeng.li@amd.com) smtp.mailfrom=Sunpeng.Li@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49qNSxkg37cScXhrlnWlaLGSVh6bJPOhI72FMnBT3xQ=;
        b=Avssgx6QAyPg3EEc1aXEr0f8Cvk7Xr8I8euDgB8Ro5nHWCyRgQmdvWjPSR9K9hW1+G
         W+4kdgM/9TPyszGyqqDff3izqFOMFlYGsPLj3Bv3XlfKnwlE2zTfW0mtP7epIpoe/upU
         plEc4C58rCDYpbbPupJmSZst7IyDXyzlGG851mw4uHRu/9UWW58bLkacNl+J/tt0tY3t
         SmPH0G/KaS6/j3CL7tn9Tl/W45kEyaVjCIpnjjvzzFDV6pjVTb2q3DPIcKM5kjpNm/Em
         ceNoU8bQaPVsvop5bysff//Bm6sSaLx9J7SKpfcmgW1aWmAqj2gBsvjOgyNsBMWLzUQw
         soWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49qNSxkg37cScXhrlnWlaLGSVh6bJPOhI72FMnBT3xQ=;
        b=DI5JKU6mgggqpguNhmaRAu14CQWCLMJlO6jNxy8QH0WUHekFBKJ6y2D03/FclXAm84
         PTbk9F9I1/LJfkFwRJEAorRHi5+0chJVxeYvAEoNpL2CJGD42RMXS1enyk5vkzvji18f
         twvoDxyFZ0sCBXcykjlqJ0qRlOEWIy0z78kS5STo+OfJgQd2uheoMilZ3ZYBtNbOLfZK
         Ad2xqTntahu9xFM4SPmtyMTDAK9Xj0LaBtrXx7oN9E5ydq22pjsidL2S/hRNbOTls1Hy
         V5q+L8EQ59TXYY+0KmU8kYWXsW/QS/kLQvpJhxLibpeRv8OKJvepYVtONFtcLnS4GYlC
         6OUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUe+tqWNtTXMeYUdDlD9PBLFXiInTjhcZBlnaTwW6R1Uft1hwqh
	pF/7E7Q5AhKxoDC7jU/F4Ko=
X-Google-Smtp-Source: APXvYqzPDwhejV5agHcU4EQqn4sIKsLdyVyUwHzgarnJ490vL6CipJykQSRVgVgCEN2DO1VsQeJgGg==
X-Received: by 2002:a17:906:7d12:: with SMTP id u18mr67606629ejo.24.1564075570123;
        Thu, 25 Jul 2019 10:26:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:9583:: with SMTP id w3ls11949429eda.5.gmail; Thu, 25 Jul
 2019 10:26:09 -0700 (PDT)
X-Received: by 2002:aa7:d6d3:: with SMTP id x19mr77672894edr.119.1564075569765;
        Thu, 25 Jul 2019 10:26:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564075569; cv=pass;
        d=google.com; s=arc-20160816;
        b=w2vcme8IzpFTbWUBQyfHn3SM287AeXzK65qjACoaVqHFI2fEntMB0uvEMq+B8rcwUQ
         T/B1RCdJ76uFVxTZWpXTk7E0LAzc44U8qmDQMwEHNNuHLLjG6JREXyKWFVeRPylpaFO9
         HyXHIoYNs9kRWsebI4RaaqsxCP0hKNxaH0PKRASYRLwHKudOZULKScsxDySJY9jWwtjK
         x1VORfKQyl1vwWXRkmkB3r5USJmoho41peWn4KpRYFN5AuID1kA64aGzJ4uznphqY7f7
         FTe6ZtTs+IkydHs2L8JM8N/9t8vCKW/k7sG6KJ+U9AWqjQyj0SXPJGN6URcTYY5i6fzm
         yAhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=KabUWb1sUMfXSzsx/9LkWUN1AWQw1TsIY2NdEbB7MWM=;
        b=sJXvf0EmxC29cOnC65npgua0MVhCbC5jSxncWEWVwtLo2JQSc61cBUtijhjt78OCKD
         Kxm8LsjrJzAetaULsNl4vHdZyy0+SWlCseSBRly3kD4RCJS2x+lC1a9ouSR3Ga6wVS6o
         oR6dtazf83MdyTOgKfmARzV4FMcDa4UWyZYCxw4jj4kt4JOzxP026NB3Nur3KHKkDANw
         j5S5Y5t/aeDoL7yWVjDy/sMceA01H7QDNrDq7Ml2FN0LFl3ZNZa6+EWy0Tt8FIklT9hl
         +tHGaO7ORWoJVzIE5CbZFxsaJeytfmEhfusnPxnADTCr7uwUx9UyHOgM9n73Fry6Olqt
         TOMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=gibfNXvU;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.73.59 is neither permitted nor denied by best guess record for domain of sunpeng.li@amd.com) smtp.mailfrom=Sunpeng.Li@amd.com
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (mail-eopbgr730059.outbound.protection.outlook.com. [40.107.73.59])
        by gmr-mx.google.com with ESMTPS id s30si2748060eda.4.2019.07.25.10.26.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 10:26:09 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.73.59 is neither permitted nor denied by best guess record for domain of sunpeng.li@amd.com) client-ip=40.107.73.59;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cShchDhRDEdYN8TbJNLbMbxV8/XBcqWWXd3JLSGmOUMC6kIAJhRDJpCCayIgNUgNtGPVwoBsxw9NQhPfFzajS/mRIo0oYRbU9Aia9137sIZb4vhbmh8zE1md879TprPdx5L9doEUYR7qpf5sElaGEvQ0Askx3BP3d5WagLv8IZDtubrDpFq+i7VkSdU/c6Lvq2DqLqz1D+EGjUVPjINfA/goXGqLxCWdJqK7E588D5y0XawC+Z3CF3u5U6OyZEP8HWt08MtpSxTRZaIDc8r+njEXT1HoSnzkaf2NrWwYoJCtT5/4zRfnirVwSeNnKJveU2LOWZg62wNf4XdMhc7KNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KabUWb1sUMfXSzsx/9LkWUN1AWQw1TsIY2NdEbB7MWM=;
 b=Juagy0/BRwZ/g/jeP3HGkuxcYZ1tg0ceU64xo1x9oJG15aoF77w9jI3X4eMG3dSV+xQy7AaVvYH9hDXw6hIrn9sInVPyXTnKkmNh+li+BKrbBmVruZoExwvte+jL2bsRRUK9FXLRzYY8vCltyeq2N57WI/Fw4R1JRmD+9n5HDlHSxcdEZUcJn4tqIMOHWgfRR8iL97pNBSjLrodU8bTmj/Q+QEnW5PEyLR/f/xH3aahdwpWWjuZHZANEWaMc3To0YeTiLlkQzW2qHEc5lQ7gvx9Fws+viPxj9YBKRdksoBf2o2X1SYTbJh10UkyYp/SlOTy7OpjWs8U2b3dVCHHTGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
Received: from BYAPR12MB2853.namprd12.prod.outlook.com (20.179.90.150) by
 BYAPR12MB2824.namprd12.prod.outlook.com (20.177.229.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.17; Thu, 25 Jul 2019 17:26:07 +0000
Received: from BYAPR12MB2853.namprd12.prod.outlook.com
 ([fe80::dd9c:e1c8:face:eaa9]) by BYAPR12MB2853.namprd12.prod.outlook.com
 ([fe80::dd9c:e1c8:face:eaa9%6]) with mapi id 15.20.2115.005; Thu, 25 Jul 2019
 17:26:07 +0000
From: "Li, Sun peng (Leo)" <Sunpeng.Li@amd.com>
To: "Kazlauskas, Nicholas" <Nicholas.Kazlauskas@amd.com>, "Deucher, Alexander"
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
Thread-Index: AQHVMiy9/HNyhezL/UaoUkOqlvXBhabRXHKAgApDQ4CAAAP/gIAAE/QA
Date: Thu, 25 Jul 2019 17:26:06 +0000
Message-ID: <45f3c59a-2c8f-6053-ab05-919b73240e8a@amd.com>
References: <20190704055217.45860-1-natechancellor@gmail.com>
 <20190704055217.45860-6-natechancellor@gmail.com>
 <20190719031647.GA84028@archlinux-threadripper>
 <5f0e8332-50ae-cc9c-1a12-5a097c51297d@amd.com>
 <18b343ab-8834-ea86-1bca-974f23b60b16@amd.com>
In-Reply-To: <18b343ab-8834-ea86-1bca-974f23b60b16@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: YTXPR0101CA0048.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:1::25) To BYAPR12MB2853.namprd12.prod.outlook.com
 (2603:10b6:a03:12c::22)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.55.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 176f41f1-4166-4717-c689-08d711252d3f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:BYAPR12MB2824;
x-ms-traffictypediagnostic: BYAPR12MB2824:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR12MB2824E0E7D51F13C73372872A82C10@BYAPR12MB2824.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(189003)(199004)(52116002)(26005)(14444005)(110136005)(316002)(386003)(81156014)(66446008)(53546011)(71190400001)(6246003)(186003)(6506007)(6116002)(3846002)(81166006)(68736007)(66066001)(7736002)(6436002)(305945005)(66946007)(66476007)(6512007)(4326008)(76176011)(64756008)(256004)(486006)(229853002)(31696002)(8676002)(476003)(86362001)(6486002)(71200400001)(8936002)(66556008)(6306002)(14454004)(54906003)(36756003)(102836004)(966005)(25786009)(478600001)(31686004)(53936002)(99286004)(5660300002)(11346002)(6636002)(446003)(2616005)(2906002)(921003)(1121003);DIR:OUT;SFP:1101;SCL:1;SRVR:BYAPR12MB2824;H:BYAPR12MB2853.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YGjidXH8REvb2bzPVUH+ObMKcwIeQzB8I+chDGUDSn5jiZpAfu6f3q1NT9whq/1llGM+OAouQa1eVvSovgugQtJOCs9ZEDM1fPmE3MW36dpu7fffRiTeuh+B91JZ/iDt6S3fpIrPfD1GQcqJhTEAWYnWBz+ZX8hoJtqFOiFSKQ2yp4cY82j/0BwSxZ5eYSN6nPkGh+UMHB1KBBJYE07BfkR/ph0wnPyHnxfptgAxk8d135It679bNSDMkWSUKknZQ01mW6kf/SW5WyzsJ7cBmwI3HVexlDbYu3lAHOYs/r/bPaR/ZwUfNB6MkL7gslxu1rVYhL7fgf3qYm9rnM1RdoAFiAm45L+3/0qVIjO/LXDKEaXYQLjVdgGTyQHFHeR0QTwY9oYhaKQYftQkCH2QQATRMy98BjNt/LiOs0+yyNQ=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <66F2D06EE05C034E82822CE3237DBD18@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 176f41f1-4166-4717-c689-08d711252d3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 17:26:06.9729
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sunli1@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR12MB2824
X-Original-Sender: sunpeng.li@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com
 header.b=gibfNXvU;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.73.59 is neither permitted nor denied by best guess
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



On 2019-07-25 12:14 p.m., Kazlauskas, Nicholas wrote:
> On 7/25/19 12:00 PM, Li, Sun peng (Leo) wrote:
>>
>>
>> On 2019-07-18 11:16 p.m., Nathan Chancellor wrote:
>>> On Wed, Jul 03, 2019 at 10:52:16PM -0700, Nathan Chancellor wrote:
>>>> clang warns:
>>>>
>>>> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:336:8:
>>>> warning: implicit conversion from enumeration type 'enum smu_clk_type'
>>>> to different enumeration type 'enum amd_pp_clock_type'
>>>> [-Wenum-conversion]
>>>>                                          dc_to_smu_clock_type(clk_type),
>>>>                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:421:14:
>>>> warning: implicit conversion from enumeration type 'enum
>>>> amd_pp_clock_type' to different enumeration type 'enum smu_clk_type'
>>>> [-Wenum-conversion]
>>>>                                          dc_to_pp_clock_type(clk_type),
>>>>                                          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>>
>>>> There are functions to properly convert between all of these types, use
>>>> them so there are no longer any warnings.
>>>>
>>>> Fixes: a43913ea50a5 ("drm/amd/powerplay: add function get_clock_by_type_with_latency for navi10")
>>>> Fixes: e5e4e22391c2 ("drm/amd/powerplay: add interface to get clock by type with latency for display (v2)")
>>>> Link: https://github.com/ClangBuiltLinux/linux/issues/586
>>>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>>>> ---
>>>>   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c | 4 ++--
>>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
>>>> index eac09bfe3be2..0f76cfff9d9b 100644
>>>> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
>>>> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
>>>> @@ -333,7 +333,7 @@ bool dm_pp_get_clock_levels_by_type(
>>>>   		}
>>>>   	} else if (adev->smu.funcs && adev->smu.funcs->get_clock_by_type) {
>>>>   		if (smu_get_clock_by_type(&adev->smu,
>>>> -					  dc_to_smu_clock_type(clk_type),
>>>> +					  dc_to_pp_clock_type(clk_type),
>>
>> smu_funcs->get_clock_by_type doesn't seem to be hooked up anywhere,
>> so this looks to be the most correct.
>>
>> Although it makes more sense to use smu_clk_types here rather than
>> amd_pp_clock_type - any reason why this isn't the case?
>>
>>>>   					  &pp_clks)) {
>>>>   			get_default_clock_levels(clk_type, dc_clks);
>>>>   			return true;
>>>> @@ -418,7 +418,7 @@ bool dm_pp_get_clock_levels_by_type_with_latency(
>>>>   			return false;
>>>>   	} else if (adev->smu.ppt_funcs && adev->smu.ppt_funcs->get_clock_by_type_with_latency) {
>>>>   		if (smu_get_clock_by_type_with_latency(&adev->smu,
>>>> -						       dc_to_pp_clock_type(clk_type),
>>>> +						       dc_to_smu_clock_type(clk_type),
>>
>> This is slightly concerning. The functions are doing the right thing,
>> but amd_pp_clock_type doesn't map 1-1 to smu_clk_type... In any case,
>> this looks good to me.
>>
>> Reviewed-by: Leo Li <sunpeng.li@amd.com>
> 
> Looks mostly like the table just needs to be sized properly:
> 
> 	static int dc_clk_type_map[] = {
> ->
> 	static int dc_clk_type_map[DM_PP_CLOCK_TYPE_NUM_TYPES] = {
> 
> where DM_PP_CLOCK_TYPE_NUM_TYPES would be added to enum dm_pp_clock_type.
> 
> Or it could just use a switch table instead, like the other function does.
> 
> Nicholas Kazlauskas

Good catch, I'll spin up something quick.

Leo

> 
> 
>>
>>>>   						       &pp_clks))
>>>>   			return false;
>>>>   	}
>>>> -- 
>>>> 2.22.0
>>>>
>>>
>>> Gentle ping for review, this is the last remaining warning that I see
>>> from amdgpu on next-20190718.
>>>
>>> Cheers,
>>> Nathan
>>>
>> _______________________________________________
>> dri-devel mailing list
>> dri-devel@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/dri-devel
>>
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/45f3c59a-2c8f-6053-ab05-919b73240e8a%40amd.com.
