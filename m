Return-Path: <clang-built-linux+bncBAABBFODWTUQKGQEEBNMUNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EFB6A020
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 03:00:06 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id r200sf15414949qke.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 18:00:06 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1563238805; cv=pass;
        d=google.com; s=arc-20160816;
        b=yIqu50MoWSxEBEoW41Bjq/5ONKM6yc0/Yk61UOti2HCak8u0tC0StxNx4um9eUBcoe
         KFrGra2bUxUpa011FUH4DBziee2rtw4NG5ztQYNf+rUFk9liFMaZ0YQo1DlDV9swvq5F
         fR7G4nu3xxv6VaselAP3VUdyb+CWBNysQgPYlHyM1JbjINOXGkEflQi3FURXta/rI3Su
         bf2fb5IRHYaOdT+uStDWSTLz64+S4sIGn9w8UYVyQPnX+UvxaBu+Ypr5onaWBZDPInkd
         r/H1FDC4b4tNpY1r4D95UYAg8R7UNNZTsZwOjI7M6Fq7kqfPTD2uM7FlGrXiwZxCUlh7
         +tVQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=jQGDzOLZiQVSWp6cluQCz5VmJC669dcLjwK/y0wVyUw=;
        b=h7IVMGQx/3tWljaE9AL/nQ4Rid2YNdsQUPx46pIDJ3oJs4U97QYkfAIyF32gy1gaYf
         OMsrnUzEpPhhfhLKL+rliNtEyHHMeghP4tJk2IQ/Z75A7wvG/oyEZiayEGaJLjrFsAYF
         NOOqBBTIjV6hXb4nDCfThLI2F6jRTsfvAtlF5MFvYiW0DDRebSZnfg6CfjaojQqvWPyd
         eiresM3Dj0x6DXW+/gFUqNiM+INxdbIFK/02nAuAcqhKVVZc6MvYsvIrEjmeBsUDYKAV
         SPVaN8F0ymcWv+jc1ey2PbHzjBW1xkn6nMTVMmUpcHgTxfPd5Js09qtTZzbWAt8dKrXM
         z95A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=lh8huOGO;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 2a01:111:f400:fe40::60f is neither permitted nor denied by best guess record for domain of evan.quan@amd.com) smtp.mailfrom=Evan.Quan@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jQGDzOLZiQVSWp6cluQCz5VmJC669dcLjwK/y0wVyUw=;
        b=EVezI/5FtkoHMLQpXdq5p5qMdbEwELKM2RjIjIR3ktCwf/IuGy2qaTNaM/xgfX8n++
         xU+oenE5mmffAGhE+6k5tcL4Tcoxv+TLrHcR4trUQ4ADD0wql1eGf5jLU+SPNVvHh/rc
         UZSkRA0gb3X7D9AcWAcj2jM1jFvik2Cuz3fmgmYd9nRWaFGSXO0M3MqINDZ/eMSeqHp8
         ZP5Ai4JMs+Uq+go0oQkn7bZYEU99RgmQIJNuy372Pg/ucdmNKMeEaDpQ+B+BHm3p9w4j
         FsA8fvtehUq5jbyHvgUfvupTgpj2rrSqBmeW0/iv0ZcN0zk2SZOcZvNzYksghY37V1Kn
         RfVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jQGDzOLZiQVSWp6cluQCz5VmJC669dcLjwK/y0wVyUw=;
        b=gUcHbC96OXhBDvMYDy055oCpKmUvNco9QHARZkQ6TQMHjx7Jq7I23QjTUOlrhXUuZ/
         DpO1RqCCh4SBnu1xdibX6jFl75ARTOuelNhJ02V9sYrQHIj557QAh4t/yjCJcmpaNWpk
         0CVUJCV+gvUmJKyI2kDCNsCH+eNxl9Ymj6kSsqSobZvtVpQFqqR/gwsdl1jB/Bw28oJ6
         KTh+SkDjeue2k4bVnU7IXD84W722aPJ3WJPWk5V7371eKLbrLgaGTLkUBLxEYH8yqooW
         w6kX7mb7T9vi50jKm1s+hjg5Y9qmHB8BDi5iQYsc1cESmX4hlY6e1BtM+rYtDpXmTors
         /EvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWEjYveD1vLOV5hFAYC7kTy7rpa85XELeEpyvkwZZ2Jc3V+QyJC
	BIKuLEowuRAf47Bl7hsV2so=
X-Google-Smtp-Source: APXvYqz2U065AaIcnHQOLqFx8iDp1y7g9le33vbEDzwdgdTc4wIT8gI0Rna2I4Fs50GDhXXy3xJ58w==
X-Received: by 2002:ac8:37b9:: with SMTP id d54mr20923022qtc.189.1563238805677;
        Mon, 15 Jul 2019 18:00:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4e4c:: with SMTP id c73ls299582qkb.3.gmail; Mon, 15 Jul
 2019 18:00:05 -0700 (PDT)
X-Received: by 2002:a37:311:: with SMTP id 17mr17983235qkd.466.1563238805448;
        Mon, 15 Jul 2019 18:00:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563238805; cv=pass;
        d=google.com; s=arc-20160816;
        b=V0OybIQx1BleXwKhystVGz+K4GEQM+uFqcDVMIfFDEEXv/P3CH6w64i4tWbHRG4g1j
         Il0Qs6K153zLcjEzHnHzSRKb3TKrfR6AI8L2t7ua8am7sEOY1bHOf/21B8RmrM4uV2x/
         UFuDxBd0MZUWPOxdN53wF5a6fYJx5xkb6Z2BvkPpJKG5d2WGolQHczPMsCqlFtvI695u
         I0rOs+Bm2BCxP46u7SuJCKJ7NSX1OAJ/PcwUgToeuui0V2SN/Copvzaj8eCDYHccOkkb
         MsMRCo5VGiFyf5SRFWlbmTuVrdjRkGZQy6tR5qeUhBjL/FWaFrLNolZiIIv+zXoVx2Mc
         RzoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=ponYNR/SjVfpHOyAlaLaBWp3UZAlujOL61NwruHeF4Y=;
        b=FAt9PymdFJ5xnlxybe/kOfzegLvxL66OOq1lYJA8sqCZuykipU2oVrm0PtyPdZaIum
         ghN5zfJOtS86xz3+/zYPU9lfdwyOOzMxcaGRJ0p6BKVIRActXg758WuJjk8yKOsvL+Cy
         2YnzYOSu5b0sHY6FrA9jxnBI1X2Q24OXI/8n/aZ2/NO09d0+u0uI7N3Ev8tkwaroZh4W
         ZA3pIxx4CaZSic4uo0QWrr6eSzY5tU3+II4llXjh9cMOsJuRlTBdYgtv8E0KXCgbeGIs
         53/mPVANG5Y5R65Zqb5Kx29EfFLyI1GUtaxrMZn4K5NjFbNbbbqW9SJOixagSQdkcf1U
         uOVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=lh8huOGO;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 2a01:111:f400:fe40::60f is neither permitted nor denied by best guess record for domain of evan.quan@amd.com) smtp.mailfrom=Evan.Quan@amd.com
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (mail-sn1nam01on060f.outbound.protection.outlook.com. [2a01:111:f400:fe40::60f])
        by gmr-mx.google.com with ESMTPS id u204si703342qka.6.2019.07.15.18.00.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 15 Jul 2019 18:00:05 -0700 (PDT)
Received-SPF: neutral (google.com: 2a01:111:f400:fe40::60f is neither permitted nor denied by best guess record for domain of evan.quan@amd.com) client-ip=2a01:111:f400:fe40::60f;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bdI6igq3l0lpcLKOFNVU7COigYP4MC6Q6cRiAA29sh1D5hPDf6HjxN9BeiXYEXj8oWPAsPqgI8XDi8fYaG6BMtQX0jYK8W0nuQKkRIrdO6ccrt8Ofb+yWTeIPIALwvJNvU98yOy83q7ppif3zPR4OlWtbkr12am1yrahUL9RLD9WZF6LyzC2zkSpOIshEBqK5p33y2yqAekBKB472Hv7Q2cGivIsd8FyWDb+sGvDQEpeJ7WpZE/BHO/x/A5ejd8C+WX4ql759Ykkz6U5Ht3KqMEJRT5FhMwPZ2ReCJ0p7mLU6c3QqOGYDHQqXYVEgbUDWikFkybvQJl1ARiJhuxtyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ponYNR/SjVfpHOyAlaLaBWp3UZAlujOL61NwruHeF4Y=;
 b=jvmm8HOArWk2tYBgaF58Nf78bJYvUkk93uts8HfSKcsDtKQ2Ok669mY20gUGrPJuZmDEAgzg5jva7D2aosQosvryFcEXtLWtXob+ETyyqKKaLho8qWeJTZ8B//hwrOsdYIwRvLujH69GFLTUFj3DEFhbseXJhzB1JadcSIkiofkyo2er9rCji6IZqDpy8M8+rDBPPraaZKF7/4QLyHYv6PHRogtmBDm0SBwqMgmALbFK2NJCy8Vg3s93uMVVZwV1gztss3WnMkTFMTqT9TIvJ9s9JQzPJ2GwUJy0LarpLKNT90xwflaDyf+N04oOJbnSzB4mdJ4gLYJer3WHaJ62Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
Received: from MN2PR12MB3344.namprd12.prod.outlook.com (20.178.241.74) by
 MN2PR12MB3726.namprd12.prod.outlook.com (10.255.236.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Tue, 16 Jul 2019 01:00:02 +0000
Received: from MN2PR12MB3344.namprd12.prod.outlook.com
 ([fe80::9170:5b18:b195:24b1]) by MN2PR12MB3344.namprd12.prod.outlook.com
 ([fe80::9170:5b18:b195:24b1%3]) with mapi id 15.20.2073.012; Tue, 16 Jul 2019
 01:00:02 +0000
From: "Quan, Evan" <Evan.Quan@amd.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann
	<arnd@arndb.de>
CC: "Deucher, Alexander" <Alexander.Deucher@amd.com>, "Koenig, Christian"
	<Christian.Koenig@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>,
	"Wentland, Harry" <Harry.Wentland@amd.com>, "Li, Sun peng (Leo)"
	<Sunpeng.Li@amd.com>, Rex Zhu <rex.zhu@amd.com>, David Airlie
	<airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, amd-gfx list
	<amd-gfx@lists.freedesktop.org>, dri-devel <dri-devel@lists.freedesktop.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, "Wang, Kevin(Yang)"
	<Kevin1.Wang@amd.com>
Subject: RE: [PATCH 6/7] drm/amd/powerplay: Use proper enums in
 vega20_print_clk_levels
Thread-Topic: [PATCH 6/7] drm/amd/powerplay: Use proper enums in
 vega20_print_clk_levels
Thread-Index: AQHVMiy+c88EcKEMTUmwHunc6S+NV6bLeiKAgABoggCAAJxnMA==
Date: Tue, 16 Jul 2019 01:00:02 +0000
Message-ID: <MN2PR12MB3344EFEEA62F1FC0CE238F2CE4CE0@MN2PR12MB3344.namprd12.prod.outlook.com>
References: <20190704055217.45860-1-natechancellor@gmail.com>
 <20190704055217.45860-7-natechancellor@gmail.com>
 <CAK8P3a1e4xKTZc1Fcd9KLwaGG_wpcAnSNu7mrB6zw+aBJ0e0CA@mail.gmail.com>
 <20190715153932.GA41785@archlinux-threadripper>
In-Reply-To: <20190715153932.GA41785@archlinux-threadripper>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [180.167.199.189]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94e8122c-e187-4f62-40f1-08d70988eedf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);SRVR:MN2PR12MB3726;
x-ms-traffictypediagnostic: MN2PR12MB3726:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <MN2PR12MB37264272F71652FCB599E40FE4CE0@MN2PR12MB3726.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:215;
x-forefront-prvs: 0100732B76
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(366004)(39860400002)(136003)(346002)(396003)(376002)(199004)(189003)(13464003)(5660300002)(256004)(52536014)(33656002)(3846002)(14444005)(4326008)(6116002)(53936002)(76176011)(6436002)(55016002)(229853002)(9686003)(186003)(26005)(53546011)(446003)(11346002)(6506007)(6306002)(99286004)(476003)(6246003)(102836004)(2906002)(7696005)(71190400001)(305945005)(71200400001)(486006)(7736002)(74316002)(25786009)(81156014)(81166006)(966005)(86362001)(478600001)(54906003)(8676002)(110136005)(68736007)(66066001)(8936002)(316002)(14454004)(66476007)(66556008)(64756008)(66446008)(76116006)(66946007);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3726;H:MN2PR12MB3344.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: paO9GgWtdmuPV4MKvAqjo4zGI2CG8PHjvONcqO0S0Z9JDv9It+HWyBhgCJclbhPoSRNAKFd+fv6XVQB7kuaFRC1oHiDC9lDIXc5xOq70HEV5Z65IFkyBFcxKTRPSmSKeAuBUbE0LELJ10BXxpD98kdHsFSJY5iWUn8Df3C8SZV+uRRT9yaHvp3MDIV0Hnfk3xv+Lvs8ejSvwb9JitOuysMjZuCIkUUoPC5A/E9mvi2ydViI9y0xg4SZYZl7dL05iUmMSpIMfaut90nVHhs94bCD/FNlJLSSnhOcWl1/OmdLbDOjvZospQkg1Sr6eCg4TSMweqhory1zt+AILQtKu/4dkjQWCuNLtSFOL1XnlTBtp7gj6DVxk44lgNGDc2kodkUyrK7+C++fwHb1GDHDoqGBFe+mwkBVKBoV9RUErXyQ=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94e8122c-e187-4f62-40f1-08d70988eedf
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2019 01:00:02.1566
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: equan@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3726
X-Original-Sender: evan.quan@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com
 header.b=lh8huOGO;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 2a01:111:f400:fe40::60f is neither permitted nor denied by best
 guess record for domain of evan.quan@amd.com) smtp.mailfrom=Evan.Quan@amd.com
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

Thanks!  This is reviewed-by: Evan Quan <evan.quan@amd.com>

Regards
Evan
> -----Original Message-----
> From: Nathan Chancellor <natechancellor@gmail.com>
> Sent: Monday, July 15, 2019 11:40 PM
> To: Arnd Bergmann <arnd@arndb.de>
> Cc: Deucher, Alexander <Alexander.Deucher@amd.com>; Koenig, Christian
> <Christian.Koenig@amd.com>; Zhou, David(ChunMing)
> <David1.Zhou@amd.com>; Wentland, Harry <Harry.Wentland@amd.com>;
> Li, Sun peng (Leo) <Sunpeng.Li@amd.com>; Rex Zhu <rex.zhu@amd.com>;
> Quan, Evan <Evan.Quan@amd.com>; David Airlie <airlied@linux.ie>; Daniel
> Vetter <daniel@ffwll.ch>; amd-gfx list <amd-gfx@lists.freedesktop.org>; dri-
> devel <dri-devel@lists.freedesktop.org>; Linux Kernel Mailing List <linux-
> kernel@vger.kernel.org>; clang-built-linux <clang-built-
> linux@googlegroups.com>; Wang, Kevin(Yang) <Kevin1.Wang@amd.com>
> Subject: Re: [PATCH 6/7] drm/amd/powerplay: Use proper enums in
> vega20_print_clk_levels
> 
> On Mon, Jul 15, 2019 at 11:25:29AM +0200, Arnd Bergmann wrote:
> > On Thu, Jul 4, 2019 at 7:52 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > clang warns:
> > >
> > > drivers/gpu/drm/amd/amdgpu/../powerplay/vega20_ppt.c:995:39:
> warning:
> > > implicit conversion from enumeration type 'PPCLK_e' to different
> > > enumeration type 'enum smu_clk_type' [-Wenum-conversion]
> > >                 ret = smu_get_current_clk_freq(smu, PPCLK_SOCCLK, &now);
> > >
> > > ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> > > drivers/gpu/drm/amd/amdgpu/../powerplay/vega20_ppt.c:1016:39:
> warning:
> > > implicit conversion from enumeration type 'PPCLK_e' to different
> > > enumeration type 'enum smu_clk_type' [-Wenum-conversion]
> > >                 ret = smu_get_current_clk_freq(smu, PPCLK_FCLK, &now);
> > >
> > > ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~
> > > drivers/gpu/drm/amd/amdgpu/../powerplay/vega20_ppt.c:1031:39:
> warning:
> > > implicit conversion from enumeration type 'PPCLK_e' to different
> > > enumeration type 'enum smu_clk_type' [-Wenum-conversion]
> > >                 ret = smu_get_current_clk_freq(smu, PPCLK_DCEFCLK, &now);
> > >
> > > ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
> > >
> > > The values are mapped one to one in vega20_get_smu_clk_index so just
> > > use the proper enums here.
> > >
> > > Fixes: 096761014227 ("drm/amd/powerplay: support sysfs to get
> > > socclk, fclk, dcefclk")
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/587
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > ---
> >
> > Adding Kevin Wang for further review, as he sent a related patch in
> > d36893362d22 ("drm/amd/powerplay: fix smu clock type change miss
> > error")
> >
> > I assume this one is still required as it triggers the same warning.
> > Kevin, can you have a look?
> >
> >       Arnd
> 
> Indeed, this one and https://github.com/ClangBuiltLinux/linux/issues/586
> are still outstanding.
> 
> https://patchwork.freedesktop.org/patch/315581/
> 
> Cheers,
> Nathan
> 
> >
> > >  drivers/gpu/drm/amd/powerplay/vega20_ppt.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/amd/powerplay/vega20_ppt.c
> > > b/drivers/gpu/drm/amd/powerplay/vega20_ppt.c
> > > index 0f14fe14ecd8..e62dd6919b24 100644
> > > --- a/drivers/gpu/drm/amd/powerplay/vega20_ppt.c
> > > +++ b/drivers/gpu/drm/amd/powerplay/vega20_ppt.c
> > > @@ -992,7 +992,7 @@ static int vega20_print_clk_levels(struct
> smu_context *smu,
> > >                 break;
> > >
> > >         case SMU_SOCCLK:
> > > -               ret = smu_get_current_clk_freq(smu, PPCLK_SOCCLK, &now);
> > > +               ret = smu_get_current_clk_freq(smu, SMU_SOCCLK,
> > > + &now);
> > >                 if (ret) {
> > >                         pr_err("Attempt to get current socclk Failed!");
> > >                         return ret;
> > > @@ -1013,7 +1013,7 @@ static int vega20_print_clk_levels(struct
> smu_context *smu,
> > >                 break;
> > >
> > >         case SMU_FCLK:
> > > -               ret = smu_get_current_clk_freq(smu, PPCLK_FCLK, &now);
> > > +               ret = smu_get_current_clk_freq(smu, SMU_FCLK, &now);
> > >                 if (ret) {
> > >                         pr_err("Attempt to get current fclk Failed!");
> > >                         return ret;
> > > @@ -1028,7 +1028,7 @@ static int vega20_print_clk_levels(struct
> smu_context *smu,
> > >                 break;
> > >
> > >         case SMU_DCEFCLK:
> > > -               ret = smu_get_current_clk_freq(smu, PPCLK_DCEFCLK, &now);
> > > +               ret = smu_get_current_clk_freq(smu, SMU_DCEFCLK,
> > > + &now);
> > >                 if (ret) {
> > >                         pr_err("Attempt to get current dcefclk Failed!");
> > >                         return ret;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MN2PR12MB3344EFEEA62F1FC0CE238F2CE4CE0%40MN2PR12MB3344.namprd12.prod.outlook.com.
