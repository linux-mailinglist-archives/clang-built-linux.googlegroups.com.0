Return-Path: <clang-built-linux+bncBDXLVL6Y2MPRB36PUH2QKGQEUPA7UYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0851BC69D
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 19:29:21 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id w12sf25331239qto.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 10:29:20 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588094959; cv=pass;
        d=google.com; s=arc-20160816;
        b=khciwTekaF7ZpSTP8anoSDWX90K4Ff9SUyK9EI348Odx0cwzwchmZWB7by4/oPiMvH
         JgccrtmmmSL3tlRr+EfNkvqsOHTQ4g/+u4OZ87HS+8a0xmdhFHzSaX5RUQyqmcFqVCxu
         BXJ2fn8QGVltkbHDuUm1sFS7mJWNCnMLhRNC/4zAwVudIuCxaetgTwwiuNTZ85yLwsrW
         BDvmUiYVkM77gRGbS100YWn6iZOZ/onkCxtlA4cyDXnV+AFXR9twpQP0O28PHGjLbTwS
         egMZAGo33Yx9s9RV1EecC9ga8DfxZQJz8pJa/rHQkGA/0uUNUfiOOqjWmoVr0t3+hxOQ
         IuXg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-product:dlp-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=sq+r+boD4zH9nJodqtWv9nMifpIs01pnh5JLNQL7fT8=;
        b=QWs0i9oJontlbLFdpBzQp3fGUVp9zPyH5/GIJEOCnk6kjecK3uoCBInoRIe7skvQ75
         MTJ+bIm4D8DOBkaAy1K8DRNNtTiYZd1O8uSWZlh1wP+xh+jtoHt/8dk0valOK2W6ECd1
         vVVtH+CvVP6i+cnXxkLLqMtjZKMI53QMr9A0sL4z1x+eN4PigSoJjHyTowlDcKNCJ+mD
         uZnGr7Ej4Pp2DGF5a+Rsi2zvdFYkAuQvsVAyEIyNrwPAX8RKRc61w3lN/7ZwNdWhHW/S
         hgV91NO6fxNSTOv0t34cX9nJ6L6vfdj+79bQ7u8TLo5QO2Oc97g8nvLfC7zwNycw2tIR
         eIzg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=o2L95dSg;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sq+r+boD4zH9nJodqtWv9nMifpIs01pnh5JLNQL7fT8=;
        b=l9iGqUGOmbasjnlorgidQzKg1qoF1jQQWmGojCMbUPQcQWtwDqoBfo0bGj3ZI7XQAi
         Wxk0LmJEuZQ3WzfV5T41iIZNM8dpQ93bRyKnFMHEfWFcyEAIIRVH7GSOKqv1ZZ9PRl8T
         szl/1tlmuvVcNTF5bXfL4Fnn1uZOtnZ2zaTVkN8aXxR/0FRuxr3BCIku8q7oqW0KrRla
         7AXqIh8RylOWQfNabd5QC9uW+Blzl4NS4gnLk1xMzLH9CmE1U1wfL9f/NViQ4/yxEAxT
         HJoEqtzhD01hPiRz47QoxQf4b0LstRBhitnSQQcrKKYit8qTjVMPeHszpIQsBsbRemuK
         mCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sq+r+boD4zH9nJodqtWv9nMifpIs01pnh5JLNQL7fT8=;
        b=nYtjcQ3Gf497+rn48EuMZOhwO7QAf8O5EWfO+yMWKONiX+/ptMYIbBBFhHUDNf4RvC
         iBm23uLZAZGYFc5JPEu+U4SppTeRR0/suaW9IgsfoAzluzF78ZPDRuSVv2P73tpHhiZ5
         2Rno7qaykYR3nkgi+T/TRoV6IBl93UwGifKTQRiDD/TcQKrZo+iCz4rgCGi+jrMiG4GP
         AqwCgOJWX9SiYaUQd9kBMVZys9gn6g7Tzd2oAZLJbHPwi2dRCC3IWktUAQCs75oXQB3w
         QzhwLfSpG/inP/r2hybBCmAYa9//RXOHRh1XiUtG0DnRCWaRGFEE8QbDEyqq6K27lfaK
         F1Ew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZOITN898lyrabZCj0fygikst/yEw5WhTvhi8BamqFGlTn2KWHV
	CTX335TEOWoZdyEfyTWQn4s=
X-Google-Smtp-Source: APiQypIKVVh57asitj37HJP1DOG+MWx+Nn6+uIPs8j6MYenZHKanoJTGP0JplXcqGfneEHIdnSogPA==
X-Received: by 2002:a05:6214:7e1:: with SMTP id bp1mr28565239qvb.208.1588094959745;
        Tue, 28 Apr 2020 10:29:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:891:: with SMTP id v17ls13169319qth.8.gmail; Tue, 28 Apr
 2020 10:29:19 -0700 (PDT)
X-Received: by 2002:ac8:6159:: with SMTP id d25mr29664821qtm.70.1588094959127;
        Tue, 28 Apr 2020 10:29:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588094959; cv=pass;
        d=google.com; s=arc-20160816;
        b=WEZbK8uCumuBWiqefe4Whe0bu8kEn74Fi4lUgzjHgicfGmatRchmHUDD+boDzmrLcv
         SLf92PRXinH8U2X7LeIOe8UQbrXcMrSOsjoMxnoaqoWMTMOqLmCSzs+10Ox6ga+kXW8P
         1efDVq3SqO74d6SetyLf+/MdEMYLlFIKWRl4nZgTIfBSbLk5S2tv+Ly3pElTCDoQLl6J
         IMxI8eIZJR11mcn8p5F5Bqow15XXu/ewvJONoRyWzW5VsEcuYBLat+fiVpxSLuXT7Qa2
         EOieGveR4SdZh/JvssDh0CKrtaufHHZ5mRZU7TRAf45C3cDUnVrpczS4jkaUoEhYa3YB
         UuMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=UgOwVG4MVUnA9SKhbaMo8mlvmPGEFkhuV/AWRFnGvlo=;
        b=s4Ao1+j8Ays8DpA9Sx+4Q31keP68CtvFyDJCEyPokoM2wQBkGeIvFm7nkF7BA43HZU
         qU1aS6CaYELfG82k48+OIXlJdEagFXFOcqmaoBVeSWRRoK+9llEdpP5dYnFysBE8YapV
         Igr1038DcChgABz5uEUZ1oz1rbw77lPIJvhYfcpYY43pnR5rTMQ2qJGPtHOTu/SfveJu
         pZ0z6mtNbywo6ueVfL4L40bewNQsPo5paBQ6mhBHsDDwEmS4UtTWcGMIp0Wbfmn3ZDov
         pir1RCnz8XBN02g5mQcAqqzXVBUeDtwYdnnoyyFrwwcqWtT39dVrVdHNGjSUZ5fbWgZM
         6mnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=o2L95dSg;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id f3si1073013qkh.5.2020.04.28.10.29.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Apr 2020 10:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of brent.lu@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: ke4YbjGd5YKXJ+lw30w3U5BUlSedcuk0+8GGUXyZINkMONkJ0Tui4P1gSR/i6b2z7pd1j7XKgY
 eXAy50iu2Svg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2020 10:29:17 -0700
IronPort-SDR: YAPcPEdbQc+Gb7FcELvHmj3R9QtJgAGc/iaX2bCs1XcQ4FDIzQ4EaCpkwwzR4yqF6fGtxTGN3e
 seeL6jPFWInw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; 
   d="scan'208";a="293928944"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
  by orsmga008.jf.intel.com with ESMTP; 28 Apr 2020 10:29:17 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Apr 2020 10:29:16 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 28 Apr 2020 10:29:16 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 28 Apr 2020 10:29:16 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Apr 2020 10:29:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aSCB87zbIJZqJXfdnBnDtcNFZeRrmR+5zLOl5tE1CHBTUR5g+++rwzvy7Q0x3Tfr9qDk5ThyBdCEjyWzM7FjGMOj4bPeJ1Joxt4VxkhHiQKYGJSYEYO9NNDF/Ne2WtOJvA802DthtOelyargGRBkoo+iqRG3GB4ahmxbVWAdYyF6pz45f8qFFY0ewFKlWjnSDzuiE12qGHMOEBOkNk8mvoIB3sKSlmcHGeqwWEX/xjYdx4E51b4i9Br6olRHFWo61mEu1INcGi/KHvzkhY3nJBmwtZ0L13Xa2RGMMe3XQCgF5Ow93hzfC5BKRcImWvaHJYA9Iuw1N6rfI1tn9eSiDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UgOwVG4MVUnA9SKhbaMo8mlvmPGEFkhuV/AWRFnGvlo=;
 b=XIro00H6F/OJxfjTHhfDxlBBpjaLZV0abOdiHcq+95UWsbADJl6+tdbJxdI/SWEJ5TMWgCV7z3/22eVp+1uYeZeGh3iUHdnEubu2/WBrNSZoRTDSv7k+4/vD5K0inh/+jmVT5FnG38xUhsamiZGLrehSYn86nUhOm0m0PibrgGGvJTw+DcSrRBOUJwN6vKHYxmEajYF2cbmqWKgVFZAK+tFOAAY859jQTR4iYAN/W4671G9YYmycebl5QKbQXAsF3mj1iwYW4dUYofbimG4eoxR2GOo8JLAlk4CiZaHWN9J4aatIkGzKwddc43k99bAsb8DiodKMbivKkHSIfXMOGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 (2603:10b6:405:5b::22) by BN6PR1101MB2242.namprd11.prod.outlook.com
 (2603:10b6:405:58::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Tue, 28 Apr
 2020 17:29:08 +0000
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::344b:59bc:1455:37a6]) by BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::344b:59bc:1455:37a6%11]) with mapi id 15.20.2937.026; Tue, 28 Apr
 2020 17:29:08 +0000
From: "Lu, Brent" <brent.lu@intel.com>
To: =?utf-8?B?QW1hZGV1c3ogU8WCYXdpxYRza2k=?=
	<amadeuszx.slawinski@linux.intel.com>, "Rojewski, Cezary"
	<cezary.rojewski@intel.com>, Pierre-Louis Bossart
	<pierre-louis.bossart@linux.intel.com>, "alsa-devel@alsa-project.org"
	<alsa-devel@alsa-project.org>
CC: Kate Stewart <kstewart@linuxfoundation.org>, Richard Fontana
	<rfontana@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Jie
 Yang" <yang.jie@linux.intel.com>, Takashi Iwai <tiwai@suse.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Liam Girdwood
	<liam.r.girdwood@linux.intel.com>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, Mark Brown <broonie@kernel.org>,
	"Thomas Gleixner" <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Subject: RE: [PATCH] ASoC: Intel: sst: ipc command timeout
Thread-Topic: [PATCH] ASoC: Intel: sst: ipc command timeout
Thread-Index: AQHWDxGPcERmvVi2FUaZ0GDzXVeqv6h4uesAgAAAnRCAAFQWgIAEY1sggAkDsACACG0YUA==
Date: Tue, 28 Apr 2020 17:29:08 +0000
Message-ID: <BN6PR1101MB2132D23B042284DDA667642A97AC0@BN6PR1101MB2132.namprd11.prod.outlook.com>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
 <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com>
 <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <5e84c48c-a5d1-b2ff-c197-5efa478c5916@linux.intel.com>
In-Reply-To: <5e84c48c-a5d1-b2ff-c197-5efa478c5916@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [36.230.209.79]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e697d8a3-4bfd-4b8d-0098-08d7eb99a87f
x-ms-traffictypediagnostic: BN6PR1101MB2242:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR1101MB2242E09934E435DCEA44C09E97AC0@BN6PR1101MB2242.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0387D64A71
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2132.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(346002)(39860400002)(136003)(396003)(376002)(366004)(55016002)(9686003)(8676002)(2906002)(66556008)(7416002)(26005)(8936002)(186003)(52536014)(64756008)(66476007)(76116006)(478600001)(66946007)(66446008)(316002)(6506007)(7696005)(54906003)(110136005)(5660300002)(86362001)(33656002)(71200400001)(4326008);DIR:OUT;SFP:1102;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: opOEUjMhcqXmoELYVJWLX0FEXrq/C4t3ne7YTQ4s4RGYmqflmVLGOOz/PJNdiHet0CfibtKUk90R5onxNnWeTjcaomtnA1lCHNOipY3K52/XuquxCWd/vl2m6qyAzocPHb0OECqo3Ytbw+kG0Mr8zK6dp5cqnhEPhH/VyeF7gpivvCnYmIe981YDDrHLGg0WX9MFNLLIxQxwty0gMtJkGf6ubajrPdRcbpdL9ho8EfWSjLrWw9xhSYpkSJ21zazxP6ygoc4gZemS47nnRhqhfFBRwnT1piwlBrelxIvO0TFGza9JdghauE2uqs3iRroPIBhwU4UvYqBnOi1e5+1wR6/YgJ8+h+YPKO/w3WOmTwj1zw9nVL8hgEq+L/RgJgS1So5PbQ6NhJkGQdi/uO9ZNL7iFYS7bpFnfNXxNMNlD+s3VOlzwPN/VWQ1V1ZmPBu3
x-ms-exchange-antispam-messagedata: JqUIoj8SO3e1HfISpnf045IDgi5AgPP0AIYNqAAFO6Lr8zT04QzSooWIlmcoZsi9b6ZmUPunIRG+JJw2kNX5G7npDwG3rTC7aye+wUhT0I1O5xtpUV2xOXXMyy+oLK+8neGTGseBvPezB51+gN/G6LHJ8cZJyKcCb2w8j/rAVzCcVw4Cx/LtBLmX8ikpGq5Hlxj4IchC4HU9UU3sK70oZAI6Hv9jCt2pBlHr3S97JQhqY66/0490xnA7Gw20r1wNpfHuntwv0WDELEHidAPpNhGcqypP/r32qn1N/KIzsED6fyNgJ/wwiCra7OeVq1WliSo+QoX0qkp11OjA8ZyAxnJh0xF2R008RKj4MgYSYamDThWrXPBkvUTDRXVR0IkWi6viG9hvQG9HXC/WsNvWgsNw1PliKYDx3iChIskXoQgbApUBmb8LHm9lAStHEB8ysrEqRPiqgaSSALyuiZhW9c15Jc91p84ptbwMAiSEzL5r3cXImikSgI2ujXTQBnJ/lJQEESQg1VYrcniiHMLeZWsD2g4+roNhSBm/gc9vgx8af4Jfqwt5mPzEMVvGH9FheEqyXsZX993uqJo8GxC24CRabi6I5B8QO/64yX7c9BxvIWHJ5Av8pfIu7PEpxq1FkeiunlA/bfH21t70WfjJYxb6e0N0NaCGoPKbPLJLj7D/LmcnFMEwHMxMDPc6m5DwN+rt032z5cpRXy99RGJdGfqe7iZSdEA+X9OAFOJqd5sK6fHVEQiQaPPMRh7CuFauVb+xMbNnx+gb5H03JdtqJmfhaxXx89r/FiOjEMBePc8=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e697d8a3-4bfd-4b8d-0098-08d7eb99a87f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2020 17:29:08.2415
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o7P5bVa/EKEE8Py/C9lHSLJ7Sk8tFtzWB/ImguGcFdaHYL79hG60BAP/4KeX3qtzAEKzfv+Ri0AyyiXLtS5EJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2242
X-OriginatorOrg: intel.com
X-Original-Sender: brent.lu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=o2L95dSg;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of brent.lu@intel.com designates 134.134.136.100 as
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
> I've looked at the code and byt_is_dsp_busy seems suspicious to me.
> Can you check if following change fixes problem for you:
> 
> diff --git a/sound/soc/intel/baytrail/sst-baytrail-ipc.c
> b/sound/soc/intel/baytrail/sst-baytrail-ipc.c
> index 74274bd38f7a..34746fd871b0 100644
> --- a/sound/soc/intel/baytrail/sst-baytrail-ipc.c
> +++ b/sound/soc/intel/baytrail/sst-baytrail-ipc.c
> @@ -666,8 +666,8 @@ static bool byt_is_dsp_busy(struct sst_dsp *dsp)
>   {
>          u64 ipcx;
> 
> -       ipcx = sst_dsp_shim_read_unlocked(dsp, SST_IPCX);
> -       return (ipcx & (SST_IPCX_BUSY | SST_IPCX_DONE));
> +       ipcx = sst_dsp_shim_read64_unlocked(dsp, SST_IPCX);
> +       return (ipcx & (SST_BYT_IPCX_BUSY | SST_BYT_IPCX_DONE));
>   }
> 
>   int sst_byt_dsp_init(struct device *dev, struct sst_pdata *pdata)
> 
> We seem to treat SST_IPCX as 32 bit register instead of 64 one, which may
> explain wrong behaviour. (Specification says it is 64 bit register).
> 
> Thanks,
> Amadeusz

Hi Amadeusz,

The patch does not work but I managed to create a workaround just for
reference. Still don't know why first read in sst_byt_irq_thread returns
incorrect value.

diff --git a/sound/soc/intel/baytrail/sst-baytrail-ipc.c b/sound/soc/intel/baytrail/sst-baytrail-ipc.c
index 5bbaa667bec1..56c557cb722d 100644
--- a/sound/soc/intel/baytrail/sst-baytrail-ipc.c
+++ b/sound/soc/intel/baytrail/sst-baytrail-ipc.c
@@ -12,6 +12,7 @@
  * more details.
  */

+#define DEBUG
 #include <linux/types.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
@@ -313,7 +314,7 @@ static irqreturn_t sst_byt_irq_thread(int irq, void *context)
        struct sst_dsp *sst = (struct sst_dsp *) context;
        struct sst_byt *byt = sst_dsp_get_thread_context(sst);
        struct sst_generic_ipc *ipc = &byt->ipc;
-       u64 header;
+       u64 header, mask, old, new;
        unsigned long flags;

        spin_lock_irqsave(&sst->spinlock, flags);
@@ -332,10 +333,32 @@ static irqreturn_t sst_byt_irq_thread(int irq, void *context)
                 * processed the message and can accept new. Clear data part
                 * of the header
                 */
-               sst_dsp_shim_update_bits64_unlocked(sst, SST_IPCD,
-                       SST_BYT_IPCD_DONE | SST_BYT_IPCD_BUSY |
-                       IPC_HEADER_DATA(IPC_HEADER_DATA_MASK),
-                       SST_BYT_IPCD_DONE);
+               /* inline the sst_dsp_shim_update_bits64_unlocked function */
+               mask = SST_BYT_IPCD_DONE | SST_BYT_IPCD_BUSY |
+                       IPC_HEADER_DATA(IPC_HEADER_DATA_MASK);
+               old = sst_dsp_shim_read64_unlocked(sst, SST_IPCD);
+               new = (old & (~mask)) | (SST_BYT_IPCD_DONE & mask);
+
+               if (old != new)
+                       sst_dsp_shim_write64_unlocked(sst, SST_IPCD, new);
+
+               /*
+                * workaround, give it a second chance if the SST_IPCD
+                * changes
+                */
+               if (old != header) {
+                       dev_dbg(ipc->dev, "%s: header 0x%llx old 0x%llx\n",
+                               __func__, header, old);
+                       if (old & SST_BYT_IPCD_BUSY) {
+                               if (old & IPC_NOTIFICATION) {
+                                       /* message from ADSP */
+                                       sst_byt_process_notification(byt, &flags);
+                               } else {
+                                       /* reply from ADSP */
+                                       sst_byt_process_reply(byt, old);
+                               }
+                       }
+               }
                /* unmask message request interrupts */
                sst_dsp_shim_update_bits64_unlocked(sst, SST_IMRX,
                        SST_BYT_IMRX_REQUEST, 0);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BN6PR1101MB2132D23B042284DDA667642A97AC0%40BN6PR1101MB2132.namprd11.prod.outlook.com.
