Return-Path: <clang-built-linux+bncBDMZPGN4U4HRBWMAVCAAMGQEEA3SCLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id D77292FF7EA
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 23:29:46 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id u7sf1937632plg.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 14:29:46 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1611268185; cv=pass;
        d=google.com; s=arc-20160816;
        b=fSLXoBglt3nTroQbtLh5FbzkzNhWGHT05lHNClRRQK88gf0uI0pGIhiQfIta8oCIsX
         uozm41EpWl3Q5S9h8AvJqZIkPwfy5ewgKotd20rj4phznqPOreX21PfCHmzR4L54/5r3
         Bz+1OtIhXh17tuAqWYAChvcCTqfkuNxxEGixxEZi99EMPiJXLzu14J9DT73DwALCBat1
         zzlKBUYYs31XvvVuZsiEDhop9r7ODU8r8S8MCl0PWmtdXoM4zkXTdDidftaOOhfCKNxp
         ShsMc8Dw/FoXBrf3efBoRlaStLEYXJUsZnc0xIrcZwe6puS2PTn82+ovb3KXe+e9als0
         kniw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-product:dlp-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=dYGhCouWEHwpR8uyEZpCG8zhDPddBjZu3zCWSIRugkA=;
        b=EubHvxNG1mTxj83qyx7imkfmelNYrzZ5UsHn9GbWgwHr+tfkFgld3RYnN3NkQeSn1N
         FOfGjrtu5tcp257xfX7uGf4Gm5YSZSWICPBW4ajq4fqg+otii/0rxQ+8OTqlSErPtXpj
         P0BQATGuWTmo0Vs+zUMjDgARUg77afwyRmt1flFOYzKMRVgvXaVPFGeGWHNN49HE/IDu
         U29catDFX4ic9joSUkdrxMT5852BljYH4k7wMeUSodJec+908Hr+GCErwSSgRYJmh4EU
         mHJpsX2njT46J4FHZLJFdB/ylIkx5mwLj3KWnozfSBFX1B0eq95HpuDX+ZjQh5U2qKi4
         N16A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=WvQ563Qh;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of erik.kaneda@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=erik.kaneda@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dYGhCouWEHwpR8uyEZpCG8zhDPddBjZu3zCWSIRugkA=;
        b=KzEK4ifIVIDuvVQbrNTt58xfqS10xhANfa3pJlvTQ971sA5SJN1Rhsyb+aIGXaAtVj
         FFAlhnU990hRW+dSZv0Np29RLi+3Gc5CGwqOHi1MNl7BUZQ1d/HhcYGhHbApxjdnHyhr
         zQvkSz9Hs2qlowgvzOYbUFhgl5br6oSo5DzjZaLH3WdoIXk0iXe5SQCM99+BEPgZnQAq
         gOgOp8f2plM2/tIUvQqSYY8f8ywLmG5Nh3D2i/6aEQCy51EkM+u5wMpycHIs4rgrs9L6
         Y11XzkOjMM7ZMMiKmpbPHEcPW/KxQA82HYJdaw8UKJSenAj32lazj29AWnavlAjlEi+v
         yrUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dYGhCouWEHwpR8uyEZpCG8zhDPddBjZu3zCWSIRugkA=;
        b=U5gbZjzyaouLdh8tYFnlvUNDgp8/tpQuHl1p3GVY6YeNIQ8u0QVCr3VwYEs/Mc1T1c
         dRLrTHaJXGhmr8z+ZxSvuRUcNycCRAv4xX4q+Q3vcCaEd3Dw6kxgW29TZFYDWEnLHNbo
         GcshnzrslcI6vblVP3lXK7J9LSsSR1VwUpvYNJvbitBMRtrvSV/5yarQadAh9coLkP0L
         b/gvqA8KsC/RPf70Dq2Zf29DdJXJdsN6IjlXKgdjSyoNxqHSLNs4IWBWcAysI/WoUQHG
         sEW/xs5/OvB0UqqKDVjsvnT53vFvPHml3ZPKiRq1eMJPHWwZUeJ9X0uQvlknUdNt/trM
         0z4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TlvD6J3n/ZTe7/v9N2voPcABYcL9PLmj8gy6TIz9JPHz46HeH
	ua9hRy2n/oTgLdC/cRXDvRU=
X-Google-Smtp-Source: ABdhPJwcbhir+JakRcncPMuIpaIHhOPS3E0fAu3Qvceuu/da1fYJS28k1hn9UCHRB6Vj6s0bLvM3Gw==
X-Received: by 2002:a17:903:31d1:b029:de:8361:739b with SMTP id v17-20020a17090331d1b02900de8361739bmr1866385ple.85.1611268185606;
        Thu, 21 Jan 2021 14:29:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls1731540pll.0.gmail; Thu, 21
 Jan 2021 14:29:45 -0800 (PST)
X-Received: by 2002:a17:902:8341:b029:dc:27b:be2d with SMTP id z1-20020a1709028341b02900dc027bbe2dmr1557870pln.30.1611268184941;
        Thu, 21 Jan 2021 14:29:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611268184; cv=pass;
        d=google.com; s=arc-20160816;
        b=c0xkyBFXTSH1nINifU5oz/BqMyy/qHkhQRmTc80c1SE4hr0GCQNYZxRSK58es/PPTb
         MiOdSJEZ4J25p9eLWHBRP997u1CBNrxXIU6R6sAmQGKk7+Gm1v1UQnEzS1GE5bqV9xRg
         n306YZMvmnRxxTLF2Eq+W218HXs8clYDlRlBtq8Cd/dMgit03t0+6mkmZmXgnVsFlzSz
         fsIZM6xSiiUwA5KHEwohpoApkNni7ca2wG4A0Fp4O56iITugqmzHyXnRbtigcARhG1pX
         KIT3Reb2df1RAeM73/6dm9EU65eKBn7KUzcXBIIl0R+HHjtZilejfw8OT3tEHSKXIkvb
         swcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=WE/LP/6yO+4jtEBFTgOxYdk3XzES5C46J7jnI6M0pzQ=;
        b=DrnlJDaU+7u6DXgtBoYpkNl91TWoTqMQV8653Sz/IozCDeleX4P9XOIQ0uGBEYpeIV
         cpiqzK+GhSHcUhdDHIcrC4CpBSrIqN2hxd08+5nQsM4S2fcJAKUqfgtDaDvMWqgZudjy
         0MiBpXjkgX0hRpZdZIbao4siIfycgEV4NzwQz709xQAJiAmTPGji5IGjtV0vOcCKe3q4
         UuRe+roXad6mKSPV4qi0Ke4NX2yMWtdIRplqBDNgfPyAW42GV4DiQENg6yumdW1UHKe0
         q+k7ScX7AuQxZtHHRqc07DdZa3V17f+Lpeb23ju98gycvtI11BwM3XXY29w0p7BXAV/z
         cHUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=WvQ563Qh;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of erik.kaneda@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=erik.kaneda@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id n13si461968pfd.1.2021.01.21.14.29.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 14:29:44 -0800 (PST)
Received-SPF: pass (google.com: domain of erik.kaneda@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: YMWi2mfTe4wsLs2800dxP5buKM1hDlbU45aiw2lbrsi/ok9U/hSF5D1HUdedfjM+Oher6ZMoMW
 yNzsw+ZGo4eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="178578442"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; 
   d="scan'208";a="178578442"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jan 2021 14:29:43 -0800
IronPort-SDR: D/pvcUFpI5A/FHcG3ZYjcxJZLBXyCC152P+dAaMvs/GlKxDXZSVhixb5mIxUXroK2ct+Fj+TF+
 CuCo1FkSjIjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; 
   d="scan'208";a="355004156"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orsmga006.jf.intel.com with ESMTP; 21 Jan 2021 14:29:43 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 14:29:42 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 21 Jan 2021 14:29:42 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 21 Jan 2021 14:29:42 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 21 Jan 2021 14:28:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iw2C/0omqGkdOOd6LZBgyw1yjLzBaiJS9zj3Qtp7DIGZhUI36QFUs8qljtfclHOai9smqhdBLxx0Dk81WhUDuv5i5Eqyn3O066ej/xdP3Uh3TP+7VnjPvob6Lro/gQhqlv3Vt4ZQFHXnnh650hpzLS0zYTxPI23PSRBHPKp5Ws9g641dYBngDsYWlMdESDMfSAAFbycyxpGtq5A4BHcmihEgj9qUCuc6IavMKcseLpCqQqIc8Qo+pwQVTBBemPwcbns0EqLQVVzXhbNddE4rEKLSRGGG953Sly5vSCNGqz6j5VUYbAV/pOfF627Aajy55lIJFHsnoil9rRDlkE1stA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WE/LP/6yO+4jtEBFTgOxYdk3XzES5C46J7jnI6M0pzQ=;
 b=nN4IJSEJDKGZtqNsHbYlEoPHssA8yPzJLtl5UUH7KB/BIfugJaVW7a9i/nwcYP9+cKzxyNAqcNyqt1jmg1pl82T/drq3nzSWrHGTOikCFfGkawpzZxJF3YN9DeWDiTib5zvER9Hc3mRxHDa8YErPLQQQ46dxm61E6Irw2dNent6MDQFfU/2ShagV9HQODZUXZidMWoRX6vw400ltMrBdDRjHJiyljGwPPQfaRM7RvCd+FdHwMttIgB7wMVGkioDW8PlrveNTE4OmAVxaiXqNFxBo10r/c72d/n6A7wNJY8OcMO9ULdIQpn/2bIEJ9h7c6JZ5aSoRYRfsP22moxc91A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1599.namprd11.prod.outlook.com (2603:10b6:301:e::16)
 by MWHPR11MB1247.namprd11.prod.outlook.com (2603:10b6:300:2a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Thu, 21 Jan
 2021 22:28:07 +0000
Received: from MWHPR11MB1599.namprd11.prod.outlook.com
 ([fe80::4878:159c:ca1e:f430]) by MWHPR11MB1599.namprd11.prod.outlook.com
 ([fe80::4878:159c:ca1e:f430%10]) with mapi id 15.20.3763.014; Thu, 21 Jan
 2021 22:28:07 +0000
From: "Kaneda, Erik" <erik.kaneda@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>, "Rafael J. Wysocki"
	<rafael@kernel.org>
CC: Jon Hunter <jonathanh@nvidia.com>, "Moore, Robert"
	<robert.moore@intel.com>, "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>, "ACPI
 Devel Maling List" <linux-acpi@vger.kernel.org>, "open list:ACPI COMPONENT
 ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, linux-tegra <linux-tegra@vger.kernel.org>
Subject: RE: [PATCH] ACPICA: fix -Wfallthrough
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BQlYjhl8Bfrk+mO8TKTgEi+KoySncAgACWFoCAAAE0gIAAN1Mw
Date: Thu, 21 Jan 2021 22:28:07 +0000
Message-ID: <MWHPR11MB159916E99EBE052E376FC8D6F0A10@MWHPR11MB1599.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <031790d7-ee26-f919-9338-b135e9b94635@nvidia.com>
 <CAJZ5v0it3KfdNo7kwq-7__C+Kvr4Eo7x8-3rBi09B5rHfNv-hQ@mail.gmail.com>
 <CAKwvOdnG6Ew+7HMjJuH3Or8kEE_ZyP-xNGbwaX8HdT=6FApYxA@mail.gmail.com>
In-Reply-To: <CAKwvOdnG6Ew+7HMjJuH3Or8kEE_ZyP-xNGbwaX8HdT=6FApYxA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [174.25.99.223]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: deea18fb-0ae4-4610-8ea8-08d8be5bd3cc
x-ms-traffictypediagnostic: MWHPR11MB1247:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB12478716E341FAF6D75E0E15F0A19@MWHPR11MB1247.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wqyzh31GBPQR3No+Q7PQ6QqI1vjORIQMkzLLETWE+LWwVYQoArW0ikk06jamq3OnZ9EeEGVGk9CVnUldwBTBT7EJnvhcNB0FpLDI4donjz0JP74kUyP9lDpUjK1cXPXgwvE5JFJuXCju/g6qMFdtV7sudOC5YqXw6zpO7EqL4b5NWaetC0Ooq7jiJJGtKMV9JgC8i+0xhTLkw/+pqrzgk1teHRNGvBjIqrUdPIPWBA+oDSN96q3PRuy549HFp1wm/9pbMuFOMoU1QDUj+kkmPvnvz7uqtdvIOoYuo1LF9f366LugX3kNs9fVzL2LBh2EXkjUWJfE/Iq1HWOAhlx6Mwcq0ONO/kGuXvprk9zHqjk62URnYzGjmy7CXe1yVCruDAEOhlyamTIo4jZJu8ief5yUU01AJ1hqA/zE9IxFqsDvp1GpT9V6W+5t06hP+ych5xiY6JiS9bkhSq/cwCXYXw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR11MB1599.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(136003)(396003)(366004)(376002)(346002)(86362001)(4326008)(316002)(52536014)(2906002)(5660300002)(8936002)(55016002)(478600001)(83380400001)(966005)(9686003)(71200400001)(64756008)(7416002)(66476007)(54906003)(33656002)(66556008)(66446008)(8676002)(7696005)(6506007)(26005)(53546011)(76116006)(186003)(66946007)(110136005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?M3V0dGFZeDU1ODA5cE1Ca0ppeEFIdFZ3SmtTeHVIM25wODZRdW9QaEEyOEZZ?=
 =?utf-8?B?NVAzMjNENWJXdHl3U1h6VldpYUZ4SmJzS1VIb2dtOUFoK013Q1JvWWJsdFJ1?=
 =?utf-8?B?TzM2bEdUblk1YjZab2pCYVRzWWhrNklOUWhyR0xOQnZOdUN2a0RHTmpORUJ5?=
 =?utf-8?B?Y1A5MnlZWTJJY25RSlhYeDNGTldUUzE0aXc0SmJtYmFPVU1PNDBGWExVTnlS?=
 =?utf-8?B?dkN3WDh6TFdJSUdtaUhTaUVYTEQ1eVNlZDQ3akE3SlBNb1FxcitQbkx2VnR4?=
 =?utf-8?B?dlloclFoVGpQVGg4L0pnWHA5a1pweFFEbzc2UzlSZDZoelNTMHNjQUU1TWVB?=
 =?utf-8?B?SjNhMkZycWY5SGtQd1pRSEt2NUhUcVlGdnl2UW1wUHdDTTd0STZkU21UakNE?=
 =?utf-8?B?c1NSUytpWnpPQUxwa2N6UGthMUUxOEtjNzdvNFhIWlhRWXA1RDczZ092Nkh1?=
 =?utf-8?B?dTZLRDdTTnkvdFFwNjFucXRZNkM3Wm1tOVc0UWcvQnQ5M2tpL1lXRmZVUWx2?=
 =?utf-8?B?OFpvdk01UHlyV08vK1VZalM1eStEZGV2T0hzSnBnZXYxaW9aMmhhVjNvcUlN?=
 =?utf-8?B?c3BId1RaM3VwNzUydTZCV0V2UWNUazd0djVUSG9kT25XVVJzZnVySW1oZ0Za?=
 =?utf-8?B?TWllVkNqK2xDT0hiSkRuaWlkSFhyVzhVdHVsRUgweU5OTjZ1ZGM0UElPMTdT?=
 =?utf-8?B?b3VzUWFBWXYxS1ZtcUlyak5xaHI0b3VEVkFXbU1Ca3RhM1NNbTVycjc5TGN0?=
 =?utf-8?B?SmlyMEowWlBtbzN0aFdFMEp4SDNXUDRYMER4WUJ1MWxFVE9vWnFERDQ5YkVC?=
 =?utf-8?B?dkx3cXFJalRiNWE0cVRZbzdMSWVDNjIyWkpSbmRxcjVhZEJPL1hWbExZdTBB?=
 =?utf-8?B?cndEa1NsYThuNXFUZFRZRW52VWdhSWxTNGZ6Y3I4TnFsdC9JK0lUVjRVOEIw?=
 =?utf-8?B?dXhRQTcrMkpoYVpMejNaV1ZTK29nRjAxRE9YR2Y2TXQ1aUpYd2c0ZkhBbjdI?=
 =?utf-8?B?bFIzemZueUZDWFQ4L3N6RzhSN1hYQ1hwbmhSd01NMWRGOHR4bWN6aUt2QllD?=
 =?utf-8?B?RnphY29KbVJtVzJsRDhuVm9zYjR5eXVDdzUzOW5VWExNVVNlWnExTnkveGNG?=
 =?utf-8?B?VkF0WFRGWE15R0QxUW9waUZ3NENHRCtoWHllNmRGelQ2WWh1ZXpBMWNFZGto?=
 =?utf-8?B?QTVuZk11WHU5RlVDOG1QS3dwZFFYdTFubzVnRUZIQm1EWlg2WXpWaWRnakJr?=
 =?utf-8?B?TFlVc2g0QnE2bFFQYTE1OExKZEtNb0xmWElCbXlWTmc3dTBldk9nZ0V4Ukdl?=
 =?utf-8?B?bjFIZks5Zm80MllPM3hJb21VeHExNXFCZTZzM0JwaWlJeVREc2JPdHViVk1J?=
 =?utf-8?B?RDdkZFQwa1VhOU44RExteFc5dFh3UVhoOEpkNTRxN24rc2NTZnlaRDNSZVdU?=
 =?utf-8?Q?7PTA9za+?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1599.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: deea18fb-0ae4-4610-8ea8-08d8be5bd3cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 22:28:07.6445
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: smQhCATiZ7P/QlNrDzzS7bdJkI2h3hCh9gG79wrk6foexZYyDwcVX1FH/D+8Y+Z/hgTaI0CMIUyiL+iXqUI5qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1247
X-OriginatorOrg: intel.com
X-Original-Sender: erik.kaneda@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=WvQ563Qh;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of erik.kaneda@intel.com designates 192.55.52.115 as
 permitted sender) smtp.mailfrom=erik.kaneda@intel.com;       dmarc=pass
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



> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Thursday, January 21, 2021 11:08 AM
> To: Rafael J. Wysocki <rafael@kernel.org>; Kaneda, Erik
> <erik.kaneda@intel.com>
> Cc: Jon Hunter <jonathanh@nvidia.com>; Moore, Robert
> <robert.moore@intel.com>; Wysocki, Rafael J <rafael.j.wysocki@intel.com>;
> Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-linux <clang-b=
uilt-
> linux@googlegroups.com>; Len Brown <lenb@kernel.org>; ACPI Devel
> Maling List <linux-acpi@vger.kernel.org>; open list:ACPI COMPONENT
> ARCHITECTURE (ACPICA) <devel@acpica.org>; Linux Kernel Mailing List
> <linux-kernel@vger.kernel.org>; linux-tegra <linux-tegra@vger.kernel.org>
> Subject: Re: [PATCH] ACPICA: fix -Wfallthrough
>=20
> On Thu, Jan 21, 2021 at 11:03 AM Rafael J. Wysocki <rafael@kernel.org>
> wrote:
> >
> > On Thu, Jan 21, 2021 at 11:08 AM Jon Hunter <jonathanh@nvidia.com>
> wrote:
> > >
> > >
> > > On 11/11/2020 02:11, Nick Desaulniers wrote:
> > > > The "fallthrough" pseudo-keyword was added as a portable way to
> denote
> > > > intentional fallthrough. This code seemed to be using a mix of
> > > > fallthrough comments that GCC recognizes, and some kind of lint
> marker.
> > > > I'm guessing that linter hasn't been run in a while from the mixed =
use
> > > > of the marker vs comments.
> > > >
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > >
> > >
> > > I know this is not the exact version that was merged, I can't find it=
 on
> > > the list, but looks like the version that was merged [0],
> >
> > It would be this patch:
> >
> > https://patchwork.kernel.org/project/linux-
> acpi/patch/20210115184826.2250-4-erik.kaneda@intel.com/
> >
> > Nick, Erik?
>=20
> oh, shit, looks like a line was dropped.  Here's what I sent upstream:
> https://github.com/acpica/acpica/pull/650/files#diff-
> cccd96e900e01f7224c81508cbddfb1af6fcfbff959d6bfb55123e1b9cad4e38R154
> 3
> Note in the patch Rafael links to that line is missing and there's
> instead an #ifdef that's empty.  Was this line accidentally dropped?

Looks like this line was dropped by ACPICA's Linux-ize scripts. I'll re-add=
 it and send again.

Rafael, do you want me to re-send the series or do you want me to resend th=
e specific commit? I don't mind either way.

Thanks,
Erik
>=20
> >
> > > is causing build errors with older toolchains (GCC v6) ...
> > >
> > > /dvs/git/dirty/git-master_l4t-
> upstream/kernel/drivers/acpi/acpica/dscontrol.c: In function
> =E2=80=98acpi_ds_exec_begin_control_op=E2=80=99:
> > > /dvs/git/dirty/git-master_l4t-
> upstream/kernel/drivers/acpi/acpica/dscontrol.c:65:3: error:
> =E2=80=98ACPI_FALLTHROUGH=E2=80=99 undeclared (first use in this function=
)
> > >    ACPI_FALLTHROUGH;
> > >    ^~~~~~~~~~~~~~~~
> > > /dvs/git/dirty/git-master_l4t-
> upstream/kernel/drivers/acpi/acpica/dscontrol.c:65:3: note: each
> undeclared identifier is reported only once for each function it appears =
in
> > > /dvs/git/dirty/git-master_l4t-
> upstream/kernel/scripts/Makefile.build:287: recipe for target
> 'drivers/acpi/acpica/dscontrol.o' failed
> > >
> > > Cheers
> > > Jon
> > >
> > > [0] https://github.com/acpica/acpica/commit/4b9135f5
> > >
> > > --
> > > nvpublic
>=20
>=20
>=20
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/MWHPR11MB159916E99EBE052E376FC8D6F0A10%40MWHPR11MB1599.na=
mprd11.prod.outlook.com.
