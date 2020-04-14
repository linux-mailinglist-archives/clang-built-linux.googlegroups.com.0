Return-Path: <clang-built-linux+bncBDXLVL6Y2MPRBT6F272AKGQEG5OUGOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 222FF1A8484
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 18:20:33 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id f14sf141157pgj.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 09:20:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1586881232; cv=pass;
        d=google.com; s=arc-20160816;
        b=L9dbS5U/a7oLgiqNQHWUKAGgGC+qgTVSi6KiIxu83vjNM/dDlFNr/f7E4w5luyQj1f
         kjEpJMGfKSPbc07iEc3Au+FAsilMDtwHxvs2VeeTgtI0G4wuoe3Vs4R0klc+YKb9MiNG
         8Cyf6ukx3kIk27WD6Cl304f+NYyTPyyO1AHv63175qU81exmWHWIwEz+GMIVAR4MmqVu
         Z23gBcmUa9YHNSj+Y10RxDSIC7WsRVJOfFwtFSUVLGZAneX0YmZbSBXugEBTV6NlVJg2
         uppwSCxLLuew7uk2VzMz183qCmv4IUWcjifkalOnX1dzq+F3tr7Ylw91ieL68xKgY8uI
         iCyA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-product:dlp-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=TWDyCWi3uCDo60QxUruSc++y2fbbR5m3syMsldWd69U=;
        b=zSmno7fvvqi+mInd0Ll/9asvvQuk2YyH5pO8IMvrWeivXvs72bX3hVlx1jNc6NlS15
         iUhEh/f6AbpDCdXyLdfAA3cXXSU7sCaNDQ5fWebQVuv18N+WePjpUwYxz8OID8XlRR3e
         UZQp/cayO70fwLcT/ULPv8qfmQl6KV96Ga43z547pid8nA3ucylMXgX9Kxyh4v1WHjuJ
         iie36Ul3IviSAwr7tRK5ooiCgx4V97oHuAHD3HVQVkhDx+EQ/7FD7HFKvF31hFPwzB8w
         albi4AkQxJsU0WfhATbENAwepY4EUn19+unzp5oIQ2vCikuSW0p7SBAUilUEvLEQTr4i
         CVLQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Tw70ZwLP;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TWDyCWi3uCDo60QxUruSc++y2fbbR5m3syMsldWd69U=;
        b=i4CNtBoEKCSu7BPpx+Fhp44r14GWsDw2zrzWz8C5e4KHaaXUTGj3v4zc/bk5FuzIPR
         dTfR9+z1Mrk/gebuZNv1hFWBKvXw1CGd6pVJpJ7hunCY5JVJTZgPkTFLgbaf6y9rBx80
         ptnSy+f3ZYkMcsAfKiAb3tCcgQ7gf/zc3cHuHaUYuhox7XZoq6T6kQz7J6f4MLFyXtA7
         R92BCj//B+e4BM3bfolGV50PILcgI23JF/n6k50/RwVdR31WAmAw+8N51+NuBBwi+2NX
         3lWhdencJBzDd15MfC9AK+tHFupJm2gVvX5J2pDc3hxCmACenwACx+3XIVJFaSiswHAA
         IqoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TWDyCWi3uCDo60QxUruSc++y2fbbR5m3syMsldWd69U=;
        b=mTssb5FtAbAewyOcOZDgq8Wm8yJP+eN+wlpokansFmyHdlRlvpVja9PKlCy0UhlnKe
         Puv0RXGR3+OH4y3z0C0tGp8dlLSdQDF1IA1QtwJMfIzQQaHI3lbeM+2SA8BTHpLYdZgj
         HBkQ+OFcpjbweXRU8c5tK2DN2Z5NCK+xsepWMBMLuzzXTQhmRod3K8STY2vCVTeuthHU
         Dj0URuC3mngE0IPzFcy/Ho5MPzehIdslqtS7bHEo7zbOfOBNGeBj+JF/68nj0/TseZFf
         fsUHj3huhpJadjUk6QvUr3hTk9q/nIyfxcxQeVjSNqdNH/IeGiekChMlA1aBGzS8kQHS
         zgHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZglliNH/qk7Nr3briEigg0UjtF6oAe7/YlVaEsSZBfUjz00AWo
	GAiAq3lmVhl3EUTV7e/tvus=
X-Google-Smtp-Source: APiQypKlrb+tg1oXqOppruDuhFgFGYhFEvHObrovS8GBtmov56UvfNlJmTXYeCgfP6avo31FeKsV0g==
X-Received: by 2002:a65:4908:: with SMTP id p8mr836477pgs.413.1586881231870;
        Tue, 14 Apr 2020 09:20:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:86c7:: with SMTP id x190ls3152785pfd.4.gmail; Tue, 14
 Apr 2020 09:20:31 -0700 (PDT)
X-Received: by 2002:aa7:8586:: with SMTP id w6mr22672231pfn.140.1586881231367;
        Tue, 14 Apr 2020 09:20:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586881231; cv=pass;
        d=google.com; s=arc-20160816;
        b=jOg9UvolKThe/X1ufqrpwbDLHariOxUv+lqskWRMC0s/1rljHoqoSooSs58yEJdrkr
         ps/J4IIUnLIk8PpSOFY2CiNHUrSX+4+DGbZXilZgO4tT/AjXofD4F8jXa0RoDfhkPv6X
         h53Lzp6m5OLOAJJgC8MeSeuVWXh9F6n/ZBOrfIdePpihuoZfjmL2W01D80Yly0WaE9qp
         2QpvE/Mn/i4M+6tow3sWcREwKb5CAsjmvklfP3a/o1XRkIcGOAJF2L01D8qK8/o0+bGd
         HifeiV+BZArLFwNnX+YhanrtoSPymDFLEnv1kB1+eT76R2ki7Bx/AVxhLjW5CwetN8yu
         qWnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=ur3LgpVGVjQKywH0bqtrXiLL6nyonHvy7T9O+iVKbNw=;
        b=iy2OcEp5o9kEgjYWS7W4tMtSN5TdhZ+UZ6kMuh6ErzFNjzdvYiarGoW1NIxXmkGtdZ
         UG0xRRk2FM/c6yI/uBd4NV/WRp4lFzB6Ib8ry19ztyr8DGxWvPbqkG649OS9AzHLV55N
         s6Z00z3AQ/UKyj/uivlIZRCVJWb5SBZYYjX2s6WxKW0mHK5OiLLRAjJy/FAp3uuCtwnS
         ongCyAmp8ZjVrQRhxY18jvPF5F63IUCyGoETRue/wyIxF3AS87I42jEUv7dIN5ZtwnTq
         MZlg0v5+8H4VyhjTJ0C4kYv7vvR+neRWbs/atzJNOMACpUo1F4MtFQCNfB3bd7Iq3rKw
         huew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Tw70ZwLP;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id w18si281000pfi.4.2020.04.14.09.20.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Apr 2020 09:20:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of brent.lu@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: g/QWDX5GUe9HPPE5/6mwJmJT+0MRz0lWpMcvsV1NYo5ewVAcnFxOWNWUDYRbilzq+/352DQlrA
 xMkWGUVa2nLA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Apr 2020 09:20:31 -0700
IronPort-SDR: 9JGqibV6nrUsHDGAjh0vHDJnTHES0LH2TU6GsptLfyFOXPutBA3rRLhsjRUKJNDFtbd1muDce0
 36aY7kpa7oWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; 
   d="scan'208";a="363418206"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
  by fmsmga001.fm.intel.com with ESMTP; 14 Apr 2020 09:20:30 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Apr 2020 09:20:30 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX158.amr.corp.intel.com (10.22.240.20) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 14 Apr 2020 09:20:29 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.50) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 14 Apr 2020 09:20:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ftwl/NRPPnhcgme536MHg4RCrG8hHUYeKJQ0bz9oIVJpMuU1O3v6DoPl5J8T+xi+9UkrzVen82Nz3pNIMSGJQynSGMPHGX0wIyPCGXn4c6U9cJFJWqcLm9H9dcCS23/98RZqcjZC83QndjNVy5c8lg4NmqDwMeHw9V79mf/PIAJNNiuZVyJlm49YLjat45w3FEci+i6Nk+tyqxEvpJEmpthF1ANtBHIwpz/p/MJjjiJCANh62x972KCKrV06y3ETt9ecVKbU3d/K61i155xx8/L+Vi2YOmo16T7UTR/+dG85YBXwf/RC6Ht9JQsvwPwjw+F5Mz9lbXRHTHhvTa6PuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ur3LgpVGVjQKywH0bqtrXiLL6nyonHvy7T9O+iVKbNw=;
 b=bm/Mb5EArx146na84+z40mx52JpPh4KeN2UoYikdkXPLGwOilMYKsQvkfcoE2l6aNNMLQsXe3eP+Lr2OHslgu/F8l9JP+5tZO+x4MoLB5hkC5HVovL7JHC1bXzOaLYzzllc1Z0NaM6VVKJB88Pil4QmMOi1DcIF1ERGM0qLU9jOpuMV16hPlAF/3AqnXfaUpaEvKALHcGXw2I+PlKgf4eH708qwLE+QFSfkHmu4P4ateduppyejbfW3N68H8OPbQ8Y4vtYI+ya3lO3PIkNe5ROnNgJBJ2xs5PAzwxtERGYO0K/zS0YGjKadQNQQ16YM4fSZita+Ws5sfv0glVqhwag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 (2603:10b6:405:5b::22) by BN6PR1101MB2148.namprd11.prod.outlook.com
 (2603:10b6:405:52::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Tue, 14 Apr
 2020 16:20:27 +0000
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::344b:59bc:1455:37a6]) by BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::344b:59bc:1455:37a6%11]) with mapi id 15.20.2900.028; Tue, 14 Apr
 2020 16:20:26 +0000
From: "Lu, Brent" <brent.lu@intel.com>
To: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	"alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>
CC: Kate Stewart <kstewart@linuxfoundation.org>, "Rojewski, Cezary"
	<cezary.rojewski@intel.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>, Jie Yang
	<yang.jie@linux.intel.com>, Liam Girdwood <liam.r.girdwood@linux.intel.com>,
	Richard Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
	"amadeuszx.slawinski@linux.intel.com" <amadeuszx.slawinski@linux.intel.com>
Subject: RE: [PATCH] ASoC: Intel: sst: ipc command timeout
Thread-Topic: [PATCH] ASoC: Intel: sst: ipc command timeout
Thread-Index: AQHWDxGPcERmvVi2FUaZ0GDzXVeqv6h4uesAgAAAnRA=
Date: Tue, 14 Apr 2020 16:20:26 +0000
Message-ID: <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
In-Reply-To: <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [192.55.52.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1af039e-4904-43ab-0b3a-08d7e08fbe0d
x-ms-traffictypediagnostic: BN6PR1101MB2148:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR1101MB214836C1AE03CDD506117E9097DA0@BN6PR1101MB2148.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2132.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(39860400002)(136003)(396003)(346002)(366004)(376002)(7696005)(6506007)(54906003)(110136005)(66946007)(316002)(81156014)(8936002)(8676002)(86362001)(33656002)(66556008)(7416002)(76116006)(52536014)(55016002)(26005)(66476007)(66446008)(64756008)(5660300002)(71200400001)(478600001)(9686003)(2906002)(186003)(4326008);DIR:OUT;SFP:1102;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eeq4btUb1iDNn7gntQefFovVxXpX5owKWpqKd3afMhXDed7pJQQPu5uqNFmrsmEjjJ8ro5ifCD1m8Cvbqgk/bjEOYp8ljBLOTQjv39AUzWPSpboRzvvDVVaomxBri+F4k56FgbwwEXzGzJcimqX+pZ5co105hinFnbiwNapWshKhYKU6KpNhyPCi7Gl3vR/01jPx+T82laGC5V/H775S7+G89SN0shcw5d9XwwlNoV1UwoBq3wE1+SPmw0VSLoRNU3mwSSx6uY41TlW28yAyWsqVWhH2CeqaB+83Ka75bdbwtPAcB7ezd1wz5LgBR9RSakl0jqakuHoIs0VY4CdmuVbLkpwAcPjeIiFPIQ/TOLa7bGwRWqHw2SyY4RtRD6fs1Z8ZpyJhKX09bmdaQKFdQEUixWVLK2P4vSzugJCLY1stnjlz5sDXEDnr/HLwAK+4
x-ms-exchange-antispam-messagedata: 9ehB8hdnylPRy5TiWKtpYavnd8DNTOJ97N/mp+8XqLEH65MT2bFy8d1B/bUG3hz4+jU9RLFtkEC9Va1qyCnoAMJSO6cBQAw8ZXI4PodWr+wTVvrEEZ/VnHYFpRMZUGKjkk9992j2N73R5yO49GpzGA==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d1af039e-4904-43ab-0b3a-08d7e08fbe0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 16:20:26.8925
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1kqZIaKiLZgeQNW7kRA41Mue5n1jIKr2Y17Gs79/TQt8/IjP8gSdS6rJi9xXv0Oj86z8/lHWykYnYSs98v04/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2148
X-OriginatorOrg: intel.com
X-Original-Sender: brent.lu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=Tw70ZwLP;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of brent.lu@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=brent.lu@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

> 
> I have mixed feelings about this.
> 
> One one hand, this looks simple enough.
> 
> But on the other hand we have other users of memcpy_fromio(), including
> SOF drivers, so what are the odds we have the same problems in other
> places? Wouldn't it be safer to either change this function so that it's
> behavior is not ambiguous or compiler-dependent, or fix the compiler?
> 

Hi Pierre and Amadeusz,

I have to admit that I didn't dig into clang's __builtin_memcpy to see what's
happening inside so I don't have direct evidence to say it's clang's problem.
What I know is kernel built by clang10 works fine but have this issue once
changed to clang11. At first I also suspect that it's a timing issue so I checked
the command transaction. The transaction is simple, host writes command
in SST_IPCX register, the DSP then writes reply in SST_IPCD register and
trigger an interrupt. Finally the irq thread sst_byt_irq_thread() reads the
SST_IPCD register to complete the transaction. I added some debug messages
to see if there is something wrong in the transaction but it all looks good. 

I am also confused that why this only happens to BYT but not BDW since they
share the same register accessing code in sst-dsp.c. I checked the code and
realized that in BDW, the irq thread (hsw_irq_thread) performs 32-bit register
read instead of 64-bit in BYT platform. Therefore I change the code in BYT to
use two readl() calls and found the problem is gone. My best guess is it's
related to the implementation of __builtin_memcpy() but not sure it's the
timing or implementing cause this problem.


Regards,
Brent

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BN6PR1101MB21328B6F4147640D07F9E40A97DA0%40BN6PR1101MB2132.namprd11.prod.outlook.com.
