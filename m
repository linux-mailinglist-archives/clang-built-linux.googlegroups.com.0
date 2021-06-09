Return-Path: <clang-built-linux+bncBAABBHG4QCDAMGQEVUNYCAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id F33BA3A0A5F
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 04:57:33 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id u7-20020a6345470000b02902211e79e4c1sf5937027pgk.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 19:57:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623207452; cv=pass;
        d=google.com; s=arc-20160816;
        b=yw+aeRQ0M7ZzAVMcg7TnQKtOQ5LYcMfFmzAxWgu8scgWbcO6E3V0BNsgktwrslqhAZ
         ow94X/DXZPnaPu17yTXklIMSBLoKlGJi1iaYd6YuTMR1M0MihiP84EGcYhBJLRgfcDFK
         ES1ECZu7VL8UTrdRBOuD7HeeBbVjPd/Kz6eypUJYAlB5kjmOiQzlKg0Vcd6FMgY65iYh
         Ewonk5kR/5Kq+PdSHgALL4VWY205fBdCAT2AUPi88rpoODA9T4IKW5v3nGpC56UgnLst
         A13SkcpyHTZ9/zxZxiZnGjyuMEIZSKoBujpsGiULUtU527gZ5r3DLv1YD22z1wjnDBGq
         6hXw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=1n+u4LgA1XP7zlJsDegw4N94Dbq0xA3jKjdT8imVRhY=;
        b=lk3e7TwZdsHHIvlRQRWSZDyp7L7JmINGpjdN/C4tbedGtTUjQUM9acnuWnrtsKDKly
         PMS7DYqBPnylCAyACOrJA0CKVKeMA2NDtYHIqBWKSjuivj1WcuL3Cq8T2og8AbpbNqgz
         ZGk6rYEwPLRRsfBCcqbRWmjian1KYeX1nl3KYepzEwvH+/4TM1ZD5rOJo6ahQUZ+3h7p
         HD2y06WE5B1xf827OIamJa0tlGuUk4NP45mmDry95M0zJzGT5koMiNqJNQGbZ+f8IgdN
         2spIFmpboYRgnZw1ntiwDHxZ0B2h2ucmjJonPqyJb4iKtK4wk9isPnNVoJgxNQNs2kYV
         MnCg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b=n7+PDfLG;
       arc=pass (i=1);
       spf=pass (google.com: domain of mario.limonciello@outlook.com designates 40.92.42.41 as permitted sender) smtp.mailfrom=mario.limonciello@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1n+u4LgA1XP7zlJsDegw4N94Dbq0xA3jKjdT8imVRhY=;
        b=PaJrZ2q/kfg0Z5FwsUMaUMJR1fQbJzFfaSKf53ZctvcowuGZYl6ejbv+bXpRg5dmLX
         ChUw/Vc0HonWYb8C49ZZtXfzjbTk5oSsww9mewmjIHfd/LeF51mxq4wYAFBx1FLfOA7y
         1w/l1ge9gXXn3a9dtI6ElabS75Z0npjREGVPJam/beVu/fBQdUx77ZQQhLNxQGUlqp1R
         V7y798kBKmX/ToRHCf2gLwn/2CtlFG72Zh0WX6NDjY9CM3t0DV2dK4wPmvnEJdjpGNAZ
         8COwgTr2xMrrxzI6c1RGdjWQ6sLBVyWc/MjgKjTMQT+M0+b6ENwxKewf8bCcf1b0IRs9
         Wnqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1n+u4LgA1XP7zlJsDegw4N94Dbq0xA3jKjdT8imVRhY=;
        b=keRtwhDiGP9XTRRbyIX5/Xm54kraB9++wsmMiqjqTdofNJ4ztRgXuWY42FXWCRzogo
         K2EKmsavBZZ6usk0rYmcKO1FC5VmNDux7HqCbgwRAnbkEbFnLXeZBEUgQxjKhDB6aqtS
         pqimT3ZfZMkkeponsVvXB4aC2I3LkMIUTxPa+RiN8PYmO/v19comkxEmoA3znzFUDdpY
         dcmANhrYQT6SB7EdKT8yoih7NFVjo6NUQZi9b4Rc9C/UbJ5lW9D1wOFuMkA3uhOp3Ynz
         JzuI0KJV4kyeQmvW4KR8JGbU+APUQYv8ivMndP2zZR7WIvAUhQkUGtAzCmkHnPaa1gqf
         DiNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531FVA4Nry3eTKISXd9aYOQtOElNtWHrEetcNS+13rOM7b593E1k
	wbIE1ilbpec5HnQhS2b8qhE=
X-Google-Smtp-Source: ABdhPJwm7/IBMKUz4edNa0EhBQvf6fqs8z6CN7sfvOYo32gIATEbJ1ah+XHl5Pav3ZROXxGs5/mH1A==
X-Received: by 2002:a62:5545:0:b029:2e9:d88c:15c1 with SMTP id j66-20020a6255450000b02902e9d88c15c1mr2951261pfb.75.1623207452403;
        Tue, 08 Jun 2021 19:57:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:414e:: with SMTP id m14ls484809pjg.3.gmail; Tue, 08
 Jun 2021 19:57:32 -0700 (PDT)
X-Received: by 2002:a17:902:e9cb:b029:101:cebc:b8d with SMTP id 11-20020a170902e9cbb0290101cebc0b8dmr3205447plk.5.1623207451864;
        Tue, 08 Jun 2021 19:57:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623207451; cv=pass;
        d=google.com; s=arc-20160816;
        b=WMCGe3mkEGKdMyb+jq/pZqp4vTXCljpSX05eUv1LJhzsdThPqN6XOfdPbaDs08jDSY
         3xGurmCVzaaT3nviO5FcUGUTJFga8CIAjFvd3hY2hA85642UFe4OBp2BHFbm3e9Mw8h5
         G6DhqHRhv0v1zQNufNfOY1tWTfrsVNAH/C7/7MzaIWtc3+eBySFCZi+wnyowc8iYFgYS
         d8B3o0YLJ9t+LtLU4qiFKafmN02ZsKro+QY3csHm1pAJRRzXKsiMsjdisblIrxadPyZd
         hG3VAOBdGK7GuoaPjUsmp7xkcT/T/w7/1fMjEhCh7EFpvckRy1Skt0nVC75/FVkds9ni
         X60A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:dkim-signature;
        bh=QckLKL3GYiu9JIsFFnNIqhicOsU7KQl02vmVQEZ1lAc=;
        b=MsuEZEkwSPgRryOwH3ERwtUBaiOHdtiwLJqoZbkkKgAj4AmGyhjPiN64Ntgp/N7/vG
         xVO7dlS5MZ7yR9awBwWsNuzoSpmWZ7a9eR3nlBB36CJrheLhlefEiPUfNowk2E9GbuZB
         Vvc220n66zeIKY7EwqiqKmq0VIwFbuK+MS85reC+sgl7ShDtcAC3kGlJiFfNdiYEBzUt
         GvaSgS3ENxCUWAPbrGIsXlayIzD4AX/BDNmrmhheG9QgdnBXYF1rSZv6sybvK5eaipQ9
         ZXwpLzUmi0zTCax+Q8wtb/ncF5lM8DNfJJl3FpgvwEY9kolaAuSymCzR6FuUB4somh7R
         EACg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b=n7+PDfLG;
       arc=pass (i=1);
       spf=pass (google.com: domain of mario.limonciello@outlook.com designates 40.92.42.41 as permitted sender) smtp.mailfrom=mario.limonciello@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10olkn2041.outbound.protection.outlook.com. [40.92.42.41])
        by gmr-mx.google.com with ESMTPS id c23si1836733pjv.2.2021.06.08.19.57.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 19:57:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of mario.limonciello@outlook.com designates 40.92.42.41 as permitted sender) client-ip=40.92.42.41;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eXSXHZx0WKdtK3YRJ+Ta3Buxub1E09ZONpRaDYQ/qjJX+Dg312kwipLhfYoyadldXTz1xo/06xdKHofretMr5XDk0YQs+EsA0zIG/Ia7T37zxwXhKbmUfEUiby2lgdDb6l/B0HffOar8YpWIirmHjJix98XWxo1qzQxkNcYEbK3ktaMbEFCAeJybkvnxVF7VN2FbZW5PLbYI+aekkGeb3Mecxu8PZEcUcoq2pWNPSxlwJLOOiDvZUoA9ArQtaRWWZnwss3X7VSgXeAi4lGd7xklPok6UaMa+fw949+dwahzJOFxaor0UPXZfem8sIZftN5uUQoiPTOIUiDuDSkbd0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QckLKL3GYiu9JIsFFnNIqhicOsU7KQl02vmVQEZ1lAc=;
 b=Kc2JzRm9V9ZHCbMPPIrmZDNRwLyMW1MIjZOgwKwDY291Fuo9gSy5nwtcihM9XD/RZrNtiwe7QJ5/4T1Z8gDRkW/uAI70J7D80GTgr6tO32FdC1ZVYAQnGLc3nIHk7UJ3VNXvYpaoAv+h8vUZ4MKPFRySjYqUFjQlUdcRzKAk9Iou+8qHMC7ryvkTUEZRpv48rEFzNhlPYGy0FzSHWNzEhdLF9Dl/bz9EMUrXYQdneaYcnSlOiDA1t0Fv1bYsLfeUwldo1GDEXyN6LIun+jk926cG9a37cYXidqyEeSk158Nu7Lt2ZLDEafbAOtNhyoQiKkFzRoKMu2s2eI2DhRCXLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6NAM10FT032.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e86::45) by
 DM6NAM10HT132.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e86::457)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.18; Wed, 9 Jun
 2021 02:57:30 +0000
Received: from FR1PR80MB5051.lamprd80.prod.outlook.com
 (2a01:111:e400:7e86::4b) by DM6NAM10FT032.mail.protection.outlook.com
 (2a01:111:e400:7e86::306) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.18 via Frontend
 Transport; Wed, 9 Jun 2021 02:57:30 +0000
Received: from FR1PR80MB5051.lamprd80.prod.outlook.com
 ([fe80::567:c444:1ea4:8469]) by FR1PR80MB5051.lamprd80.prod.outlook.com
 ([fe80::567:c444:1ea4:8469%5]) with mapi id 15.20.4195.030; Wed, 9 Jun 2021
 02:57:30 +0000
From: Mario Limonciello <mario.limonciello@outlook.com>
To: Hans de Goede <hdegoede@redhat.com>, kernel test robot <lkp@intel.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warning:
 unused variable 'dell_device_table'
Thread-Topic: drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warning:
 unused variable 'dell_device_table'
Thread-Index: AQHXXEFmMwAF7ZMm6k2HDGzgEL5FGasK/TqR
Date: Wed, 9 Jun 2021 02:57:30 +0000
Message-ID: <FR1PR80MB5051850F4403689F21893377E1369@FR1PR80MB5051.lamprd80.prod.outlook.com>
References: <202106080633.CrTbLIPD-lkp@intel.com>,<e706a5d6-fabb-4506-1192-d8b40d1c2cf2@redhat.com>
In-Reply-To: <e706a5d6-fabb-4506-1192-d8b40d1c2cf2@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2F459E9DD9011FF4343A4B384FC92A1247447419B9DF68769630CED2085FF493;UpperCasedChecksum:E71CACDB242B20ECC0BCB13712DD1508025FF6B708BE918C710752393E23640D;SizeAsReceived:7200;Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Mxyk3aA6AAdHUTIVL99uBp6dH4+kATai]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 97864c3f-95ea-44c8-15fd-08d92af2529d
x-ms-traffictypediagnostic: DM6NAM10HT132:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bCwivv1B7Llhauepp4824gIn0OgZ75RqNQqeALTL7g1C3oa0HeDQJpk+yeszBiqlZBzBNR9hc0/zvE53FpRSFvssUBgcid+BOEMZl7BCzyZwAZthwqhL4U41W7NBuqClci9j6XAi4kzqiKgP/VMDwblGrz73Ib3VzwrUg+lvz+ZCD4kEbAdGScqr/Q/LtOmHL7wMsHyTXYHkokoNDaNWS9iRTfYRgll8+eXV/epsPjxjlq6p8awMGAFllrkXwHY85UEeu3dW01KKWlUVwyGRITI33U3ceSpOjjX6sPCZEntQ4mfpAmbkU21T/KNVFPoiwSHwc28AIMpBEij6F1LKC96qmXpH82qeO/M6HgN6ZwmF7fQIdD79t25sUrF28U/gSx2sw1wq6wSkLpEZTKaB5dD5iUbJYRr2r/BbJYy4944nYiP2Mvit3be8Bw6bRAAETPUrh9CfpVOXKOvmqBJPAA==
x-ms-exchange-antispam-messagedata: BSJr6RxpGAsYcenuAjjfEvOlbCA2Sm6LSktEp8lQUYQbKu2Q54qLM8UUPrc1OSq0FNlDbq8dzjZajPFwlnRHXizaOE2m8rQj1bfUtoFSQxNHKesEAVwSrNRZITJ9p1kVhyFx9rHgzLucV8rq0UItFw==
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_FR1PR80MB5051850F4403689F21893377E1369FR1PR80MB5051lamp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM10FT032.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 97864c3f-95ea-44c8-15fd-08d92af2529d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2021 02:57:30.4795
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM10HT132
X-Original-Sender: mario.limonciello@outlook.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@outlook.com header.s=selector1 header.b=n7+PDfLG;       arc=pass
 (i=1);       spf=pass (google.com: domain of mario.limonciello@outlook.com
 designates 40.92.42.41 as permitted sender) smtp.mailfrom=mario.limonciello@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
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

--_000_FR1PR80MB5051850F4403689F21893377E1369FR1PR80MB5051lamp_
Content-Type: text/plain; charset="UTF-8"

Apologies for top post, I'm on mobile.

I agree it sounds like a corner case to support someone not compiling dell-laptop, but there are actually desktops and workstations that are also supported by dell-smbios-smm.

But then the intersection of systems supporting only smm and not wmi is very small and wmi will load based on the bus. So I'm in agreement with you.

Get Outlook for Android<https://aka.ms/AAb9ysg>
________________________________
From: Hans de Goede <hdegoede@redhat.com>
Sent: Tuesday, June 8, 2021 3:36:27 AM
To: kernel test robot <lkp@intel.com>; Mario Limonciello <mario.limonciello@outlook.com>
Cc: kbuild-all@lists.01.org <kbuild-all@lists.01.org>; clang-built-linux@googlegroups.com <clang-built-linux@googlegroups.com>; linux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>
Subject: Re: drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warning: unused variable 'dell_device_table'

<replaced Mario's old Dell email address which one which works>

Hi all,

On 6/8/21 12:41 AM, kernel test robot wrote:
> Hi Mario,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   614124bea77e452aa6df7a8714e8bc820b489922
> commit: f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28 platform/x86: Move all dell drivers to their own subdirectory
> date:   4 months ago
> config: x86_64-randconfig-r023-20210608 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ae973380c5f6be77ce395022be40350942260be9)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>>> drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warning: unused variable 'dell_device_table' [-Wunused-const-variable]
>    static const struct dmi_system_id dell_device_table[] __initconst = {
>                                      ^
>    1 warning generated.
>
>
> vim +/dell_device_table +27 drivers/platform/x86/dell/dell-smbios-smm.c
>
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  26
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01 @27  static const struct dmi_system_id dell_device_table[] __initconst = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  28         {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  29                 .ident = "Dell laptop",
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  30                 .matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  31                         DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  32                         DMI_MATCH(DMI_CHASSIS_TYPE, "8"),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  33                 },
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  34         },
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  35         {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  36                 .matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  37                         DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  38                         DMI_MATCH(DMI_CHASSIS_TYPE, "9"), /*Laptop*/
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  39                 },
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  40         },
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  41         {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  42                 .matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  43                         DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  44                         DMI_MATCH(DMI_CHASSIS_TYPE, "10"), /*Notebook*/
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  45                 },
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  46         },
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  47         {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  48                 .ident = "Dell Computer Corporation",
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  49                 .matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  50                         DMI_MATCH(DMI_SYS_VENDOR, "Dell Computer Corporation"),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  51                         DMI_MATCH(DMI_CHASSIS_TYPE, "8"),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  52                 },
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  53         },
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  54         { }
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  55  };
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  56  MODULE_DEVICE_TABLE(dmi, dell_device_table);

Note the MODULE_DEVICE_TABLE() here; and I checked and CONFIG_DMI=y in the config used
here as expected, so this seems like a false-positive warnings, with that said I was
still a bit surprised about the presence of this table since dell-smbios is depended
on by dell-laptop and that has this same table + same extra entries for chassis-type
30, 31 and 32.

Since dell-laptop will already auto-load based on the DMI table in there (which also is
more complete) and since dell-laptop will then bring in the dell-smbios module, the only
scenario I can think of where this DMI table inside dell-smbios-smm.c is useful is if
users have the dell-laptop module disabled and they want to use the sysfs interface
offered by dell-smbios-smm.c. But that seems such a corner case that I believe it
would be fair to tell users to do a modprobe themselves in this case ?

This would allow removing the dupplicate table from dell-smbios-smm.c, which would be
a good thing, because as the differences between the 2 copies which have accumulated
over time show, having the same table in 2 places seems like a bad idea.

Mario, even though you are no longer at Dell, I would still very much appreciate your
thoughts on this.

Regards,

Hans



> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  57
>
> :::::: The code at line 27 was first introduced by commit
> :::::: 549b4930f057658dc50d8010e66219233119a4d8 platform/x86: dell-smbios: Introduce dispatcher for SMM calls
>
> :::::: TO: Mario Limonciello <mario.limonciello@dell.com>
> :::::: CC: Darren Hart (VMware) <dvhart@infradead.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/FR1PR80MB5051850F4403689F21893377E1369%40FR1PR80MB5051.lamprd80.prod.outlook.com.

--_000_FR1PR80MB5051850F4403689F21893377E1369FR1PR80MB5051lamp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
Apologies for top post, I'm on mobile.</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
I agree it sounds like a corner case to support someone not compiling dell-=
laptop, but there are actually desktops and workstations that are also supp=
orted by dell-smbios-smm.</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
<br>
</div>
<div style=3D"color: rgb(33, 33, 33); background-color: rgb(255, 255, 255);=
" dir=3D"auto">
But then the intersection of systems supporting only smm and not wmi is ver=
y small and wmi will load based on the bus. So I'm in agreement with you.</=
div>
<div id=3D"ms-outlook-mobile-signature">
<div><br>
</div>
Get <a href=3D"https://aka.ms/AAb9ysg">Outlook for Android</a></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Hans de Goede &lt;hde=
goede@redhat.com&gt;<br>
<b>Sent:</b> Tuesday, June 8, 2021 3:36:27 AM<br>
<b>To:</b> kernel test robot &lt;lkp@intel.com&gt;; Mario Limonciello &lt;m=
ario.limonciello@outlook.com&gt;<br>
<b>Cc:</b> kbuild-all@lists.01.org &lt;kbuild-all@lists.01.org&gt;; clang-b=
uilt-linux@googlegroups.com &lt;clang-built-linux@googlegroups.com&gt;; lin=
ux-kernel@vger.kernel.org &lt;linux-kernel@vger.kernel.org&gt;<br>
<b>Subject:</b> Re: drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warn=
ing: unused variable 'dell_device_table'</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">&lt;replaced Mario's old Dell email address which =
one which works&gt;<br>
<br>
Hi all,<br>
<br>
On 6/8/21 12:41 AM, kernel test robot wrote:<br>
&gt; Hi Mario,<br>
&gt; <br>
&gt; FYI, the error/warning still remains.<br>
&gt; <br>
&gt; tree:&nbsp;&nbsp; <a href=3D"https://git.kernel.org/pub/scm/linux/kern=
el/git/torvalds/linux.git">
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git</a> mast=
er<br>
&gt; head:&nbsp;&nbsp; 614124bea77e452aa6df7a8714e8bc820b489922<br>
&gt; commit: f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28 platform/x86: Move al=
l dell drivers to their own subdirectory<br>
&gt; date:&nbsp;&nbsp; 4 months ago<br>
&gt; config: x86_64-randconfig-r023-20210608 (attached as .config)<br>
&gt; compiler: clang version 13.0.0 (<a href=3D""></a>https://github.com/ll=
vm/llvm-project ae973380c5f6be77ce395022be40350942260be9)<br>
&gt; reproduce (this is a W=3D1 build):<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wget <a href=3D"https:=
//raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross">
https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross</a=
> -O ~/bin/make.cross<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chmod +x ~/bin/make.cr=
oss<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # install x86_64 cross=
 compiling tool for clang build<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # apt-get install binu=
tils-x86-64-linux-gnu<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # <a href=3D"https://g=
it.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=3Df1e1=
ea516721d1ea0b21327ff9e6cb2c2bb86e28">
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3Df1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28</a><br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git remote add linus <=
a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t">
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git</a><br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git fetch --no-tags li=
nus master<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; git checkout f1e1ea516=
721d1ea0b21327ff9e6cb2c2bb86e28<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # save the attached .c=
onfig to linux build tree<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COMPILER_INSTALL_PATH=
=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=3Dx86_64 <br>
&gt; <br>
&gt; If you fix the issue, kindly add following tag as appropriate<br>
&gt; Reported-by: kernel test robot &lt;lkp@intel.com&gt;<br>
&gt; <br>
&gt; All warnings (new ones prefixed by &gt;&gt;):<br>
&gt; <br>
&gt;&gt;&gt; drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warning: un=
used variable 'dell_device_table' [-Wunused-const-variable]<br>
&gt;&nbsp;&nbsp;&nbsp; static const struct dmi_system_id dell_device_table[=
] __initconst =3D {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; ^<br>
&gt;&nbsp;&nbsp;&nbsp; 1 warning generated.<br>
&gt; <br>
&gt; <br>
&gt; vim +/dell_device_table +27 drivers/platform/x86/dell/dell-smbios-smm.=
c<br>
&gt; <br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 26&nbsp;
<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01 @27&nbsp; static const struct dmi_system_id dell_device_table[=
] __initconst =3D {<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 28&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 29&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .ident =3D &quot;Dell laptop&quo=
t;,<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 30&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .matches =3D {<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 31&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; DMI_MATCH(DMI_SYS_VENDOR, &quot;Dell Inc.&quot;),<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 32&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; DMI_MATCH(DMI_CHASSIS_TYPE, &quot;8&quot;),<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 33&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; },<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 34&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; },<br=
>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 35&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 36&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .matches =3D {<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 37&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; DMI_MATCH(DMI_SYS_VENDOR, &quot;Dell Inc.&quot;),<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 38&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; DMI_MATCH(DMI_CHASSIS_TYPE, &quot;9&quot;), /*Laptop*/<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 39&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; },<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 40&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; },<br=
>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 41&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 42&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .matches =3D {<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 43&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; DMI_MATCH(DMI_SYS_VENDOR, &quot;Dell Inc.&quot;),<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 44&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; DMI_MATCH(DMI_CHASSIS_TYPE, &quot;10&quot;), /*Notebook*/<b=
r>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 45&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; },<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 46&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; },<br=
>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 47&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 48&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .ident =3D &quot;Dell Computer C=
orporation&quot;,<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 49&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .matches =3D {<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 50&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; DMI_MATCH(DMI_SYS_VENDOR, &quot;Dell Computer Corporation&q=
uot;),<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 51&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; DMI_MATCH(DMI_CHASSIS_TYPE, &quot;8&quot;),<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 52&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; },<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 53&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; },<br=
>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 54&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; { }<b=
r>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 55&nbsp; };<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 56&nbsp; MODULE_DEVICE_TABLE(dmi, dell_device_table);<br=
>
<br>
Note the MODULE_DEVICE_TABLE() here; and I checked and CONFIG_DMI=3Dy in th=
e config used<br>
here as expected, so this seems like a false-positive warnings, with that s=
aid I was<br>
still a bit surprised about the presence of this table since dell-smbios is=
 depended<br>
on by dell-laptop and that has this same table + same extra entries for cha=
ssis-type<br>
30, 31 and 32.<br>
<br>
Since dell-laptop will already auto-load based on the DMI table in there (w=
hich also is<br>
more complete) and since dell-laptop will then bring in the dell-smbios mod=
ule, the only<br>
scenario I can think of where this DMI table inside dell-smbios-smm.c is us=
eful is if<br>
users have the dell-laptop module disabled and they want to use the sysfs i=
nterface<br>
offered by dell-smbios-smm.c. But that seems such a corner case that I beli=
eve it<br>
would be fair to tell users to do a modprobe themselves in this case ?<br>
<br>
This would allow removing the dupplicate table from dell-smbios-smm.c, whic=
h would be<br>
a good thing, because as the differences between the 2 copies which have ac=
cumulated<br>
over time show, having the same table in 2 places seems like a bad idea.<br=
>
<br>
Mario, even though you are no longer at Dell, I would still very much appre=
ciate your<br>
thoughts on this.<br>
<br>
Regards,<br>
<br>
Hans<br>
<br>
<br>
<br>
&gt; 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciell=
o 2017-11-01&nbsp; 57&nbsp;
<br>
&gt; <br>
&gt; :::::: The code at line 27 was first introduced by commit<br>
&gt; :::::: 549b4930f057658dc50d8010e66219233119a4d8 platform/x86: dell-smb=
ios: Introduce dispatcher for SMM calls<br>
&gt; <br>
&gt; :::::: TO: Mario Limonciello &lt;mario.limonciello@dell.com&gt;<br>
&gt; :::::: CC: Darren Hart (VMware) &lt;dvhart@infradead.org&gt;<br>
&gt; <br>
&gt; ---<br>
&gt; 0-DAY CI Kernel Test Service, Intel Corporation<br>
&gt; <a href=3D"https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.or=
g">https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org</a><br>
&gt; <br>
<br>
</div>
</span></font></div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/FR1PR80MB5051850F4403689F21893377E1369%40FR1PR=
80MB5051.lamprd80.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">=
https://groups.google.com/d/msgid/clang-built-linux/FR1PR80MB5051850F440368=
9F21893377E1369%40FR1PR80MB5051.lamprd80.prod.outlook.com</a>.<br />

--_000_FR1PR80MB5051850F4403689F21893377E1369FR1PR80MB5051lamp_--
