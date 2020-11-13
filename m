Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBBH7JXP6QKGQE2DMATUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F45F2B262B
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 22:03:29 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id t141sf2339118qke.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 13:03:29 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605301408; cv=pass;
        d=google.com; s=arc-20160816;
        b=qbR0s5dUOOoqICQaXOcTFJMcz1NSqgvz3Y0fbZ21xAcoEBKhcMWaz6IjG8TSHbgP3b
         ZMojmjoSFdUCkANAn8L9mqyUpWmpzB9O4TEmXGtxsCX5q/uAQx2mQuxrCqMopTohbHfK
         GqEmSCb0f/ckadT7Om6dvrDKZVPYW642iXuBE9H2HchdJU0riyxsNUGxZmIkfN6v3tck
         tAg4uZ8Os5II3iU9kVfIU/suaFuZWTYAW97nuzAulmE6X0eo8L7U+xPkGjdqa/2JdLqd
         d8zQkztzXMQjAMrCfiB5flrkJLlAeMdUw7nLbVV3j7YluCbBB7gyiZBpvlHXwiykYruf
         mgoA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-product:dlp-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=yZCNIBGk4ghAwjta19foTx7sk9ILD3/jg0jH/AnOg0I=;
        b=ojAu9xkkhPkNqTEju8ASGK6TkP3VD+ATHxvsuXSuCfj7hoM3a8JDZIGHUhCZdhSMzN
         br7JvjzbEG8n6cvTd11rOPgeafZBdl3VBFCvu2p42DHVoxGXf6s+L6NpWVIhZNns0Xax
         2tLunj4XghOVFntE0A3B59bQR6ZKZUzzxxTmWQcbC2ad7dqkSHQrhhflXzFFQSZ5bqNF
         ijvWecEX362esa3ulBomIWOqt8J5R60I0urAsyoaWQN4LJkBnji8B4OFYYAV7ve0JOJd
         6gNysAiubSUSe5qw9/nOxr9YyooERvcKio76zlpc604eb2p/PYeZFLvr74gyHdcMo6gV
         DT6w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=FfmLECtn;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yZCNIBGk4ghAwjta19foTx7sk9ILD3/jg0jH/AnOg0I=;
        b=LxOA92Zn/0dT457+rkoLccrXqB8iHdcRUZnHPpX37SOI2d3a/ymxXhI09ps3gAEr3G
         M2I6MDhbkPpE9IRwcDsf46dQ1TT8gsBFSxcV1WmjriqpfuRZWERvWqV2lwve0obzGb3U
         Z3jQ0j/s/trXgSZxm526vdPuHqd8DYsfvHzzYpKl7GDODIN3V90/JrdY+DT4OymDZhDI
         DMSC3JcnoSV6KiEJOfktMd2foc421QILjsqld0yg2PuMu9Oc/ywNpmNYTaS8g/66VRFL
         nzpsnN2ZduT57+F5/BivlRHy9y4clY7s/LuHxMVjomcjNoS+Rgo1Amol71hA62A/ozhp
         VXfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yZCNIBGk4ghAwjta19foTx7sk9ILD3/jg0jH/AnOg0I=;
        b=FTGId5lFsRu1tzBZozcHMH5w7HaNrbmo1tjbE/T/pGaZgTDdqk0SxbrMj8/LQsTx/k
         agd/UFEUm5EsLHAI+Q6UhZI+11rpDlKqFzsT9qH4UWispaXNKKfGdZ87vKfeYbW9GqXC
         T6GznjyG9yb5jcfsgvromgIp2HCQ0Haj+UrK0Ra3bi81Ac2PqkZY0bzGBM9+OkQWXqlG
         EoNdbgk//y/BPzWrXn2fy3N8lG6UrimcsX2s617JLDw0nkTCTlA3bJQaqpvYDHsXsEgA
         a1fXmwrA0XWzJWLQS1DrZ1Ueg98SFv2uVreovIe9GZgpkAdnrd6vZjThvjO9NWtqnEhz
         Xwcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AMs+z2t/X3IRHDKRaEeDFvSiaLZfyKvXXY5+3bh6KwO714cZo
	gei7CFXwlU/7NhRjpmjhV0M=
X-Google-Smtp-Source: ABdhPJztp9Ve0+OJAF1TLatM0Mjqfc41qJqOuZ/5VOSHcRP0qWpomiEA3OZNdIEI8Gj6pVLUeNsk0g==
X-Received: by 2002:a37:4d13:: with SMTP id a19mr3902146qkb.159.1605301408165;
        Fri, 13 Nov 2020 13:03:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7006:: with SMTP id l6ls3454507qkc.5.gmail; Fri, 13 Nov
 2020 13:03:27 -0800 (PST)
X-Received: by 2002:a05:620a:15ce:: with SMTP id o14mr4022498qkm.408.1605301290842;
        Fri, 13 Nov 2020 13:01:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605301290; cv=pass;
        d=google.com; s=arc-20160816;
        b=HZ9E9M+m+Hq8h3m0gQ1nch0w4ZM1+4SgeBnXW/MqlVizBXJ4cDAJATKAOOiaNsePzc
         0xKYofQB1XT52QS35Nn8YG3V7MX3K3lyCnOtkFyLTMBxeGErqhP0GmEvzUu/Q0046x8+
         8lY5JkvwN22OxLK/PJokKxls7zU3LRE2w8UQQLoBO20IJZCYfWDhx0aAaMqAlOiJldek
         0NFn7PpmZgf9ZAeBrQv5WN92kYX3OniTWT5jpYEMGiVRoEBkT6JFC2sOJOecu4VsMzVH
         JFCIMRcUcDdPkfvFOqGIQC8K2IPRCEhIyrMoeYrR6gajCm8HdUbcL6qoan8UFoN7TiBQ
         TtCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=zN6OEL0yn6mehCc508tR3MOSawGaCmmZsuPzGMLeB8Y=;
        b=R+yS6MJGHQjZXPzDO9vz846O2AmBUZEdlOIF1d7XZx0smNa/+MY2N+xNzJE0cM7E4i
         0ctomG1ptmVHF1z2vfKr5lRhTYNbHJF+yWSJRhNETsXwo+SYtFfaEV+SEMVBJzbGKkDW
         4kaD5gBup5iphqrS30EZh8ZUIIJ9X242RunhxKpcwhi7hVpdT1E1Z0EYVoOc5zQtiq3o
         yFqZRxiEXW0TyzvCl+10FKKY10ZP2qfc7NXQ/nOxv1x7k7WM+/W2d/KQaRpM439qIglL
         yf8es0ySd91OZl1b97D7YT4TsuJrrdlwUYUF9MiKbhe7AXsLD1WyPGleiwgMpW8JqN7V
         Nd9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=FfmLECtn;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id r3si634959qtn.0.2020.11.13.13.01.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 13:01:30 -0800 (PST)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: eWKOk9wO6LNF/7Qjsp9f0fWXfBO1sOJ99QbXDAO+FrO+mBSBTDaTJJpTtSopuKfaJp5hBZjpJX
 OirXMyZNO8DQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="158310345"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="158310345"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 13:01:29 -0800
IronPort-SDR: R92fIIxyE1xDwjm/7Eg7/n2K0Opzico+UPnoBbLY273ECYW8ArWNeYJlbhdra1dmEEeYh/u54K
 FOQWNbJDLP5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="328998506"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga006.jf.intel.com with ESMTP; 13 Nov 2020 13:01:28 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 13:01:28 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 13:01:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Nov 2020 13:01:28 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 13 Nov 2020 13:01:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mPvKTdWRu+zN2ydVx1bc5Sx3gNYXlJeZNzTb2qdLFROtIJZs8UN/8AU+dQVJJS7i3YfWerZKdmlXmk4yomTEoy/zgnHes3r0oBAq4EJ0NMs6+bmhAOuMUJVAdxH0Mhyaf2NNMIkQ6nr/m570uo38fAWcogf9grm91NLYoi/ayD0vwwviwHAoIVScOjvReUK/Tygo1VzqmHQnrfDekjxk4yWDeynbFfhv9/TK0NZtc2bL9GIgHSTC6Zu2Q3z/08TvTO9fjOvwvgFj6HNPhttfQiXK7S8CmKrfd/7F0iYmvw540ocSQuOl7sgbqxgjsn0WXLxtwWDaOVtfGgIHlqEJyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zN6OEL0yn6mehCc508tR3MOSawGaCmmZsuPzGMLeB8Y=;
 b=KHNuulBFk+uxX5aSSPck/c5J4Q6UbYJyolnvgKf68N6wFZYjGUFKwmCdRSVL9jY23m4HfNeAlidli0VOJau4lA8+5H8+swkADxefCEv2E8l8xj/xAgi3nj+b6LAMYtixr6cVCX5fyPfmg8PkkKA8iVLgJ+JUC1G5tDw3AJ+xT8Pd6hk+CgX0BMEkdZXluWYTdK708a/mu6nNWxoo7IfeAlVTPOuu1XXdc7eALd8e1LTJpk998Ot56EPGSSWKo5qY+pX8SC4ZOKZh+0LtZ/wNV+nI8eohQ6f8y4E85+3DR3YXBv6LV6rH+1VpV8bCdlvLgHWb03RZfnldMo//eH2oAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by BYAPR11MB2597.namprd11.prod.outlook.com (2603:10b6:a02:c0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Fri, 13 Nov
 2020 21:01:24 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 21:01:24 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Joe Perches <joe@perches.com>, Miguel Ojeda
	<miguel.ojeda.sandonis@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J"
	<rafael.j.wysocki@intel.com>, "Gustavo A . R . Silva"
	<gustavoars@kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>,
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org"
	<devel@acpica.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ACPICA: fix -Wfallthrough
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnDCsOAgAA8BQCAAVTWIIAASWOAgAAmHECAACelgIAAh4CAgACKigCAAEiToA==
Date: Fri, 13 Nov 2020 21:01:24 +0000
Message-ID: <BYAPR11MB3256ECDE31F1900EE1D9254687E60@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
	 <BYAPR11MB3256E0C1DCB4F01D18DF709F87E80@BYAPR11MB3256.namprd11.prod.outlook.com>
	 <CAKwvOdk2U5+DcXYyMoBAhyaa67EukhB6QMEUbRPcOF7P3Sz21w@mail.gmail.com>
	 <BYAPR11MB3256C9711620932685C368F887E70@BYAPR11MB3256.namprd11.prod.outlook.com>
	 <CAKwvOdnu07S8ZtGVe0eVFP=6hLSRa58EtDYOJUK_zGWFaqUboA@mail.gmail.com>
	 <BYAPR11MB3256BEF30840D4AB440A359C87E70@BYAPR11MB3256.namprd11.prod.outlook.com>
	 <CAKwvOdnYpmf=ydFVWSqVkWeUpn+M2v9PfdQd71T3oqQ9_1WQaQ@mail.gmail.com>
	 <CANiq72k13K_zA5aH5hameoe4TSf2o5cA294bA4UEZG0M6S3DXQ@mail.gmail.com>
 <61039da395c8a28444e2f3958d29deda4c0d49b3.camel@perches.com>
In-Reply-To: <61039da395c8a28444e2f3958d29deda4c0d49b3.camel@perches.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 09431a5d-6795-46da-5c4e-08d888174807
x-ms-traffictypediagnostic: BYAPR11MB2597:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB25979D7AE1669C0DF105C75A87E60@BYAPR11MB2597.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T+T+T4S3uMulT+xBRK9ZkHnL268j03Ca239sKpUnfmU8+aVUD8Uo1WyurkjdDQuWi4BFovP1gmRfCTEjtV6JrpR31zDtvI1F5kAUcJRpOIcjUFJnOIkY5GiqDTAnRMesjlGeiYEOToAwCNZJ02F4FssgAVjeYA0K1j5S/8G2Z5/h3YA4bMwiSOYQn03VkOGU5W5gP+JB5MengEWR417yqF261WOkbgt6md8z7cD7uH8SEh8cjD1VTAqpNi2IAfHnbUKoCIaaJlV3EkKJ6073hUijscwG992dtrq4mJEn2GzspgToaQ+8zkjOQpJHSDkkjEGl7CYVnJXxtRr3V21rK/Mymk9SOng+1FRZd66BuyR3B43Co+skDt0AmuBXr/9MCNJIOdlGpe1W7V+ukqS7gQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(396003)(376002)(346002)(39860400002)(83380400001)(8936002)(66946007)(966005)(71200400001)(64756008)(66446008)(8676002)(26005)(76116006)(186003)(33656002)(4001150100001)(2906002)(7696005)(9686003)(316002)(55016002)(4326008)(86362001)(53546011)(6506007)(66556008)(478600001)(54906003)(5660300002)(66476007)(110136005)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: XBfW0mjATPzmkx9PFpyBNfrtbEKbk+20TQKRfjm1wSDQKUDXeREmpAW3TpoeIGf0VkWIHN8FZbEiKK0WUfLT/ij3TUk3IQpwHhbmUz8RZYCvq93H4pk3OViDNqooLCri0FWCoie+/MiMaYlIVP0pO9uWRMXkxc9e6pC30LIPRfx4TCaSftIMRp6Guo/Xb9Khrl6z8ny83LHp6tvzPHjD+BCRBd94LFUKMHWE2yhjOGM54wVwA5Rkhfxql1IacEE+Cx9FTRwpM9TWj0q1sxsacjocoDOUEuKSF1C69Hm38zEiMfe8/4rujuMz4yLbMde/yhUdvDB4qx/nlckJsY1D2nCrWi1zeH/p9y4R4yPvqnIhnldVbNTC68DkTf9dBPe644YInuWvlkBv6FSlhv/wkaU5oYCXD4CHkGxYM6BqIekRsjdo7g18e0CdoUjdxCHteOtR0oaMm5ILputFHeOCNJNJnHz1m0sBT3cQ6piwF3xkInbkc5xG1v44978amyumCAVxOQ8/2HFLgJrvMEhYOKI24va6ocJwf8qwLZG9flQvLqUO/hddmf19KaOaD+PH3f64dS1kMRJDKMgq/IIpF3R6kRWzuDSfEOvu6uq1PgFssT9BzifDaI2H2HDOE8EAT2sIe8dRwC7+fdiF6dwVYQ==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09431a5d-6795-46da-5c4e-08d888174807
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 21:01:24.5583
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X+UBQBVovbl7bsHnkQktPEv8vx0vJBM4ss/4FTROOsct6buHtTvbJIHAHz6YODtE2/V8WRRaLUROXWZSu0An/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2597
X-OriginatorOrg: intel.com
X-Original-Sender: robert.moore@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=FfmLECtn;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of robert.moore@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=robert.moore@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

I can do it this way:

In the global header actypes.h:

#ifndef ACPI_FALLTHROUGH
#define ACPI_FALLTHROUGH
#endif

In the gcc-specific header (acgcc.h):

#define ACPI_FALLTHROUGH        __attribute__((__fallthrough__))

This would not be #defined in the MSVC-specific header (acmsvc.h) -- thus u=
sing the default (null) in actypes.h (The per-environment headers are alway=
s included first).

(We do all macros in upper case, prefixed with "ACPI_")

If you can update your patch to use ACPI_FALLTHROUGH, I can do the rest (ab=
ove).

Thanks,
Bob

-----Original Message-----
From: Joe Perches <joe@perches.com>=20
Sent: Friday, November 13, 2020 8:30 AM
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>; Nick Desaulniers <ndesa=
ulniers@google.com>
Cc: Moore, Robert <robert.moore@intel.com>; Kaneda, Erik <erik.kaneda@intel=
.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Gustavo A . R . Silv=
a <gustavoars@kernel.org>; clang-built-linux@googlegroups.com; Len Brown <l=
enb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org; linux-kernel=
@vger.kernel.org
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough

On Fri, 2020-11-13 at 09:14 +0100, Miguel Ojeda wrote:
> On Fri, Nov 13, 2020 at 1:09 AM Nick Desaulniers=20
> <ndesaulniers@google.com> wrote:
> >=20
> > Thank you for the explicit diagnostics observed.  Something fishy is=20
> > going on though, https://godbolt.org/z/Gbxbxa is how I expect MSVC=20
> > to handle include/linux/compiler_attributes.h.
> >=20
> > The C preprocessor should make it such that MSVC never sees=20
> > `__attribute__` or `__fallthrough__`; that it does begs the question.
> > That would seem to imply that `#if __has_attribute(__fallthrough__)`=20
> > somehow evaluates to true on MSVC, but my godbolt link shows it does=20
> > not.
> >=20
> > Could the upstream ACPICA project be #define'ing something that=20
> > could be altering this? (Or not #define'ing something?)
> >=20
> > Worst case, we could do as Joe Perches suggested and disable=20
> > -Wfallthrough for drivers/acpi/acpica/.
>=20
> I agree, something is fishy. MSVC has several flags for conformance=20
> and extensions support, including two full C preprocessors in newer=20
> versions; which means we might be missing something, but I don't see=20
> how the code in compiler_attributes.h could be confusing MSVC even in=20
> older non-conforming versions.

I believe this has nothing to do with linux and only to do with compiling a=
cpica for other environments like Windows.

From: https://acpica.org/

The ACPI Component Architecture (ACPICA) project provides an operating syst=
em (OS)-independent reference implementation of the Advanced Configuration =
and Power Interface Specification (ACPI).

It can be easily adapted to execute under any host OS.


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/BYAPR11MB3256ECDE31F1900EE1D9254687E60%40BYAPR11MB3256.na=
mprd11.prod.outlook.com.
