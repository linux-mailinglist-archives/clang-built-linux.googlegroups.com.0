Return-Path: <clang-built-linux+bncBDXLVL6Y2MPRBR5Y7T2AKGQENUREL7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BFD1B2C2E
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 18:16:08 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id k8sf5158346oih.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 09:16:08 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1587485767; cv=pass;
        d=google.com; s=arc-20160816;
        b=qUc7i7lpxuNqz6KHQuazj+mcKI7uXD6BcjZR4HfuVgXnNi9ZMpumEuiPxwKnJjm8/O
         VjO4Z6juq4uWmrjkoDPFyo2XjFjbeYThP+jacgHDQlwz+wbJWgrPLpW8RP/wmyPOmqAv
         dGk1jqbgCqMVD7CpIQfLUFhM2Tr21TDBFHLeI8fbot+h2ebYAjqSMr513hEBOT8M8D4c
         egGD0Us2wr7WB0dNKQSAvRoccY71fnJCY+TYq7SFyUGwgHm1Hrog7lpk8+UbI22kE6yX
         b7gj/5zotTKnY+yqTljgha3spuaYXnGT4IYSR2HCjDpQ8HWt/k0PV5/3iVSS3vKYT1vh
         7/8w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-product:dlp-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=bJzPFT2/+69nitshg/gzS+UIpSeqdnXc7DGXAXPkmZg=;
        b=dn19ihulvkjAIXjSpFh9rLBQ0DPxVVtm/i+o0mfhkAqKa33oOybfjQc2mLJaPPw+77
         xnj9Pz9WPc4crmd+/A/Ed7pBX89De4TRfqdUqaPBUa8YRFPY3BYGaFRFVMGaxuwjJ9I5
         eNUp+7EKqg+NxQnVxvQe8hQLOVnL+czgDC3ih9oo6wZPuwDx4CLUi1Vn2rAEm1AZaMZx
         /VX4USMuhYkYpygirdoOJplnOW4hki0JIJeeaJGqOrl0gEDoSS1OHsf9Cb5sLEwS58+E
         8Q4y4ldkpZ6qPOCQjBZOiXn0LjMNLaj+muorXtkw2jJIDiQDLsa2mbDZtxapu1eepekY
         bO/Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=WpriRTR4;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bJzPFT2/+69nitshg/gzS+UIpSeqdnXc7DGXAXPkmZg=;
        b=cdxgRpEo8hNTPEgknCJwyUGTC73vMp4eBqMJR+c+TXVhmDI4ZOGFRkB60XWM/YHXZi
         ynRGdWfYCu7P0kZ+BIb3/1VQj6jeng/a7pKuAIjRTDtqbQWOy6D/gbjD9k+PEHTimvNr
         5gzU3fuvI5zrXBZl4AtCoBOpMip8y6p8XRCYD7FxOFpRN8uQ7pIj8/V0isPQ7pLEelMu
         gjTp5fNi/9UtHaPSJy0OPvUvp7DkhfxZKfdOQw0v2pz6ZbYULY53RC3/gf0eJx6PSHQO
         IdlpKwC9CsLr8R0v+Nz7oiKksVDWpdJD9ArLc1S6d/9INvVaedRWDiZT77tpb+fTue7W
         gF0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bJzPFT2/+69nitshg/gzS+UIpSeqdnXc7DGXAXPkmZg=;
        b=rOVWuGYyOEmDRgjPc7sJJX/obl9YKvKhyWTtfStSMa9LNfu7FxmGR3IzvQTx4BzY8R
         8COtw8ooMwWMwdDSoPrRJldEx/OfX8Qi/DiwQo5X4gPI35jCHFLy0LTaIhFB53tUoJRz
         Iq/AnQrh/o8FHF6E1Xtr26OGDAdyZn++JjgnQcx9YjtWQy1gMRvvQuOuFFVdIRCop29j
         hpJ0WuBPk3igqSzk/rVEpmgqO8E2qYxXxD0IpN3YIdVJnreR4vOp0y0JJW3ugOztHg1H
         aKCHNLdIRB+NC7bVWsWeBd6bI1BVB8ZhcLZBp6cIvrmvy0QYXfsMZwyrTLtsNGPP1uNm
         Du/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaqjeWyKlqCmkWgenerIp1KOqf8WXtcbUrEQ3KKNeB8ZdRKZvZ2
	g1Kangxq/aRuB3yEPZpVWbE=
X-Google-Smtp-Source: APiQypISCTAxVXHwYB+GPnoS+6iUX+B3bfdUnEEpKyi1gVmJT2w3/quJrXyxPMv7h+ZZf82WuDC14A==
X-Received: by 2002:aca:3783:: with SMTP id e125mr3450961oia.93.1587485767637;
        Tue, 21 Apr 2020 09:16:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:49cc:: with SMTP id w195ls3682891oia.10.gmail; Tue, 21
 Apr 2020 09:16:07 -0700 (PDT)
X-Received: by 2002:aca:4046:: with SMTP id n67mr3773206oia.156.1587485767247;
        Tue, 21 Apr 2020 09:16:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587485767; cv=pass;
        d=google.com; s=arc-20160816;
        b=ohMEsYla6aFF3XeP7D90Yn+qfzQkppoYyKpG1/csD2J2TcoWCANSJ48MTiWc/D/RA/
         W4jr9drI/BLu8jUXMsjh2kGz5D1WOZrCHz7zGDjxv9U+DV20wnSnbWlk7oNE2DjwVB+z
         wgYcdf6TsqWBw+bbXMz+zTLeC/RhBDPyXD4tIyFom09U5rdsaoPouky4A8yEfMUdnxQp
         KK2+BeE4zB0FuxqIDL1BbEHUHlPq+ti3Xw1gMpixdd5/lBU8ZGEyLa35RGZCNlovuGwJ
         u6A1NyDdS7IVsnaxVzRnFBcBcGJ3rhsoAjh9GvaeIbHriwXEaeNXAR90DWDQV+y+VEj7
         T6bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=Eioy51aCIV+RYTt3+Oy1D2ZF0zsuZf2bTexI3tvBqrA=;
        b=mkRra8oeXMfb6qgWnsr46o2655iwZ47kOAyfAOUsGi4iKaecP56q4PHMWPt0+s7K1F
         oXFegTAKwIceCrhxn7T0/R/OxM447u0AobnyVvw3KrYGPTtmb3IjQ7iAvA2vKNx8JdBi
         hyLwJkVUNty1LDgPLFWNMWf/RWzQQGR5p+mI4GR43hTHaMu8PQrSfAcXa/3I0g44bilj
         XvjNK7c2PAsZR1adzQAAAMS3mkgz09UyubTTdpb3IDujT/LHWL9hiI763KF/sNUpCyQ+
         ELK1nfKwuxDScCPpwLNgZ6fyyJBOuDrltlajsgBKeLieEmGh2rRD161msJ5TKDByot32
         xxdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=WpriRTR4;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id o6si325077otk.5.2020.04.21.09.16.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Apr 2020 09:16:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of brent.lu@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: T/xy3Sl5P32kWIUJIV7jm3eBA7N/tSo0eX6RciX4QGK0jZYUbPPohbbVyVIzk5F/gv/17CsbLm
 b0/vy+wfoRjw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2020 09:16:06 -0700
IronPort-SDR: +PKa34z4cA3nNWCvVcCKTH7tWlBTCKRHZSU8h6ehlyQP4/JT5gWnS3QPjNftMHzEh99aFVm6Cw
 BaDlmAcFAXeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; 
   d="scan'208";a="456158373"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by fmsmga005.fm.intel.com with ESMTP; 21 Apr 2020 09:16:05 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 09:16:05 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX114.amr.corp.intel.com (10.18.116.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 09:16:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 21 Apr 2020 09:16:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WLDaDILkBWnwybTEkBDxo1/3h4XX6vmujJ/9YnFQpDN9hl3o4cl05SQ99Mai1UK01j6gvtbhlVnUKiHAaLaAPBtt+Gi+8LX8ULmw/shsl+Xy0p00nx/enwP0TSDMNmW5kpsd37R0p26IigxqRRCuU4o1i2VvUK8T6B/bneUI1357JWBlcrC/HRIn/2qbu3jeeJ+SqiSGMfVdq8QbYJtdo6gFVfOmFwMfLCba5OE/BbmIORjUItT4FPiidG99KGfRQB/k2o7kLXxckjpeSydevWIRXhKdJxHh+I8Y94e1+TE6xq1McFjPKUv5nTXCDt8NGSc25kH4qV7gJuRkqzIvBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eioy51aCIV+RYTt3+Oy1D2ZF0zsuZf2bTexI3tvBqrA=;
 b=ZTZXEEzmSaccaKfAyeT03fNHk63WPvOxifgxswhHuRuVcnJnLFuzEmC5ttMaE82WsDl476/tn34wrx6TTeAioHRIrRDbJFkdhI8FWL5nb/28YQj4cXu2APvs8sx3kRfx7d2GAESvp+Ec8+AfKV5ZCsZoEB7IDWSug8Amw8VTgQyqssbcTqoghhGn9zHeEm97TeQW9/bYC5C2jxyW5dcgu4m8fwSKrPhHNdHoTO1VKnEetNnRbgRmuvEGTgtWqp5K7n3ShbmmJKDWum6/v6zj1HTpkA4EZfbzVR2XdN4PTmYSR6YjppnHoQFgOwc8qgJ/K0yp0gFcltI7x+34X0I8EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 (2603:10b6:405:5b::22) by BN6PR1101MB2324.namprd11.prod.outlook.com
 (2603:10b6:404:9d::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Tue, 21 Apr
 2020 16:16:02 +0000
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::344b:59bc:1455:37a6]) by BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::344b:59bc:1455:37a6%11]) with mapi id 15.20.2921.030; Tue, 21 Apr
 2020 16:16:02 +0000
From: "Lu, Brent" <brent.lu@intel.com>
To: "Rojewski, Cezary" <cezary.rojewski@intel.com>, Pierre-Louis Bossart
	<pierre-louis.bossart@linux.intel.com>, "alsa-devel@alsa-project.org"
	<alsa-devel@alsa-project.org>
CC: Kate Stewart <kstewart@linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai
	<tiwai@suse.com>, Jie Yang <yang.jie@linux.intel.com>, Liam Girdwood
	<liam.r.girdwood@linux.intel.com>, Richard Fontana <rfontana@redhat.com>,
	Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Allison Randal <allison@lohutok.net>, "amadeuszx.slawinski@linux.intel.com"
	<amadeuszx.slawinski@linux.intel.com>
Subject: RE: [PATCH] ASoC: Intel: sst: ipc command timeout
Thread-Topic: [PATCH] ASoC: Intel: sst: ipc command timeout
Thread-Index: AQHWDxGPcERmvVi2FUaZ0GDzXVeqv6h4uesAgAAAnRCAAFQWgIAEY1sg
Date: Tue, 21 Apr 2020 16:16:02 +0000
Message-ID: <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
 <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com>
In-Reply-To: <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [36.230.114.95]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2d36f221-71ee-4a82-0184-08d7e60f4963
x-ms-traffictypediagnostic: BN6PR1101MB2324:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR1101MB23244CB8B56612B64705AC3797D50@BN6PR1101MB2324.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2132.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(376002)(396003)(39860400002)(366004)(136003)(346002)(66446008)(66556008)(64756008)(66476007)(55016002)(110136005)(4326008)(9686003)(76116006)(86362001)(316002)(6506007)(7416002)(478600001)(52536014)(966005)(54906003)(66946007)(71200400001)(26005)(8936002)(186003)(8676002)(2906002)(7696005)(5660300002)(33656002)(81156014);DIR:OUT;SFP:1102;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QBzASi31nU9fvwaeNtYzn98b1yFZ8ZGJahqLZkiISb9uvQzk2b77eA4Ji44jrY0FU5EfjVVe9Tvn9t7WLgp6mOB1GJKTKvMbRxqKL8oNN7QfWb9ful+Na+URQL2sGoelW4Q8TaRRdvqh2azMdkjCiKAmlSkVRAzLQXHjZ/cXZnQn3zlnlfQOT5HZGj6lUjb4IWaf1kZgjb8wGrwH8Wgh9UGWN0UIOi2Bg8DrCT4+lgA/mJkzcbg8+RcptsAm/G4a1yPddxibk2LH2LXMJUVEZkehfxYF3puNotYxy85DjBZC094XXU0qEBm5yWNkPxNXNTs5X5qD/vskhW/Fyqo8kqv338V/PtP6Nhw1xjPE8kTxQsw6ZwqBnBpOuyvTyQUs8QigS5Z/kzt16ZFXZvrsiDL5LCj0iEQz+LYQF9WhYfU6+z96GdcEaCxWyjGZtIQtGNVMI5AZuz/weFldvlfcPP9BP+EGxl7g/IVrYlEVFm494b3SMDqU3kZ7a2Qlz52eUBtd7CqgMkAiB6QeeFiXeQ==
x-ms-exchange-antispam-messagedata: u0BZEGpa1xOP6lw0EvApb1ZsFoNU1TAorBjwu+F1a9bQl+IktxxXnk6kitABipBMXT+gENc8geh+0PUnlnw2ivHowJJuGdI4l4lVgTGHOVXBfYVZxivkTXtDpq+t98PKdrTCa9TZD/+9z0iWROqFHA==
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d36f221-71ee-4a82-0184-08d7e60f4963
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 16:16:02.5078
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RhviamJvQCit1FO7iuleP8fa+frZ34Df0ftOTIaqdQtSR5Xhu7wCR6AdWx39kKqnTH05jDpRUtWOdVMNdZ5SRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2324
X-OriginatorOrg: intel.com
X-Original-Sender: brent.lu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=WpriRTR4;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of brent.lu@intel.com designates 192.55.52.88 as
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
> Regs width difference between BDW and BYT comes from specification. BDW
> has IPC registers which are 32 wide. This fact ain't exactly the reason to modify
> sst_shim32_read64.
> 
> I'm sharing Amadeo's point of view. Your change should slow down execution a
> bit - but that might be just what handlers needed to make everything work again.
> Debug prints also slow down the execution what could have prevented you from
> spotting the real problem.
> Let's ignore the memcpy stuff for a moment - could you focus on elaborating
> the scenario where such issue occurs? Your initial commit message also skips
> important bits such as platform used when reproducing and so on, please add
> them.
> 
> Thanks,
> Czarek

This issue is reported to happen on BYT Chrome book (rambi) on Chrome-v4.4
branch after changing toolchain from clang10 to clang11.

The reproduce step is simple. Just run arecord multiple times (<10) then you will
see error message for hw_params ioctl failure.

$ arecord -D hw:1,0 -f S16_LE -c 2 /dev/null
$ ctrl+c

The error message suggests the stream commit (IPC_IA_ALLOC_STREAM, 0x20) IPC
command failed due to timeout but the msg id field of ipcd read after the timeout is
also 0x20. It seems to me that the command is success but the host driver does not
know it for some reason.

2020-03-15T23:02:06.614151+00:00 ERR kernel: [  852.023766] baytrail-pcm-audio baytrail-pcm-audio: ipc: --message timeout-- ipcx 0x2220 isr 0xf0020 ipcd 0x2220 imrx 0x0
2020-03-15T23:02:06.614209+00:00 ERR kernel: [  852.023796] baytrail-pcm-audio baytrail-pcm-audio: ipc: error stream commit failed
2020-03-15T23:02:06.614218+00:00 ERR kernel: [  852.023813]  Baytrail Audio: PCM: failed stream commit -110
2020-03-15T23:02:06.614225+00:00 ERR kernel: [  852.023832] baytrail-pcm-audio baytrail-pcm-audio: ASoC: baytrail-pcm-audio hw params failed: -110

I add some messages to make the log easier to read. You can check the gerrit link if you
are interested:
https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2131507

In the test patch I read the SST_IPCD register in sst_byt_irq_thread() twice and found
the value could be different. The IPC_IA_FREE_STREAM(0x21) seems to be the last IPC
command sent in the pcm_release of previous arecord command.

[  125.009724] sound pcmC1D0c: snd_pcm_release:
[  125.009732] baytrail-pcm-audio baytrail-pcm-audio: ipc_tx_message: header 0x8000000000000221 wait 1
[  125.009760] baytrail-pcm-audio baytrail-pcm-audio: byt_tx_msg: header 0x8000000000000226
[  125.009803] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x297
[  125.009823] baytrail-pcm-audio baytrail-pcm-audio: byt_tx_msg: header 0x8000000000000221
[  125.009872] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x297
[  125.010442] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x80000000000c2226
[  125.010456] baytrail-pcm-audio baytrail-pcm-audio: sst_ipc_reply_find_msg: not match, msg header 0x8000000000000221
[  125.010511] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x8000000000000221
[  125.011355] baytrail-pcm-audio baytrail-pcm-audio: tx_wait_done: ipc success, header 0x8000000000000221
[  125.380506] sound pcmC1D0c: snd_pcm_capture_open:
[  125.380544] sound pcmC1D0c: snd_pcm_capture_ioctl1: INFO
[  125.380554] sound pcmC1D0c: snd_pcm_capture_ioctl1: PVERSION
[  125.380561] sound pcmC1D0c: snd_pcm_capture_ioctl1: TTSTAMP
[  125.380581] sound pcmC1D0c: snd_pcm_mmap:
[  125.380622] sound pcmC1D0c: snd_pcm_mmap:
[  125.380648] sound pcmC1D0c: snd_pcm_capture_ioctl1: INFO
[  125.380717] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
[  125.380737] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
[  125.380766] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
[  125.380779] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
[  125.380789] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
[  125.380799] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
[  125.380808] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_REFINE
[  125.380815] sound pcmC1D0c: snd_pcm_capture_ioctl1: HW_PARAMS
[  125.380839] baytrail-pcm-audio baytrail-pcm-audio: ipc_tx_message: header 0x8000000000642220 wait 1
[  125.380854] baytrail-pcm-audio baytrail-pcm-audio: byt_tx_msg: header 0x8000000000642220
=> write IPC_IA_ALLOC_STREAM message (0x20) to SST_IPCX
[  125.380931] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: header 0x8000000000000221
=> read message reply from SST_IPCD and an IPC_IA_FREE_STREAM(0x21) is returned
[  125.380942] baytrail-pcm-audio baytrail-pcm-audio: sst_byt_irq_thread: ipcd 0x8000000000602220
=> read SST_IPCD again, this time the message id is what we are expected (0x20)
[  125.380948] baytrail-pcm-audio baytrail-pcm-audio: sst_ipc_reply_find_msg: not match, msg header 0x8000000000642220
[  125.681171] baytrail-pcm-audio baytrail-pcm-audio: tx_wait_done: ipc timeout, header 0x8000000000642220
[  125.681204] baytrail-pcm-audio baytrail-pcm-audio: ipc: --message timeout-- ipcx 0x2220 isr 0x50020 ipcd 0x2220 imrx 0x0
[  125.681212] baytrail-pcm-audio baytrail-pcm-audio: ipc: error stream commit failed
[  125.681217]  Baytrail Audio: PCM: failed stream commit -110
[  125.681223] baytrail-pcm-audio baytrail-pcm-audio: ASoC: baytrail-pcm-audio hw params failed: -110

Regards,
Brent

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BN6PR1101MB21328C54E66082227B9F497A97D50%40BN6PR1101MB2132.namprd11.prod.outlook.com.
