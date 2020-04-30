Return-Path: <clang-built-linux+bncBDXLVL6Y2MPRBYPBVP2QKGQEJGZEWEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5971C0084
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 17:38:10 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id h186sf6796516qkc.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 08:38:10 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588261090; cv=pass;
        d=google.com; s=arc-20160816;
        b=K7MDv1GDY5LR/TX/B9N4GxxOX+HMjxLwrw7oYE5E3UET/70+MSotiykocA1Vppc1z9
         SEeJdrZYk31MAjlLT/r2AEikKNiDp7wsKQE68oazigavLozJfGqNtwKJc29xs3vdAsj1
         qSGj6VQz+1jPzlndvXWLH0sAOjj/NlU5OWxAotxVwGMIa79VEKHQ33SOBAht9jNd/Os9
         a3cHB7WnnrWZ53jLF0a6My3OkukJ2e74JLBF6I/ru/0SMlgdpwrT+E+W/62Xl2tILfd5
         kFNLxsTTxSE4SlyBqrVsE0HjRmE4DmR+KY/0eFE852MH4yPbeI1cOEmJgHds+gchtp3M
         4aKg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-product:dlp-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=MqpriAlLPCFEVta+uE4bhW5UT8NOgz7Ql5od6jnBKRM=;
        b=jg098FyM75a0gioWeNsx7WQUA3uzGdW6REWDYt05aoBEHv3SfqD8RSvuCHvsZ0T+Pk
         3IwJ9jy7U/MFUM2RsxBLEvLgWug5oivsBqO+/mhxVWRcnxE2HNe3EWW7mZaE/ql3+Oiq
         iZcUgPWWEmzEaEKib/oUTas7B65oaZwx7pInDkocEtR3p9XugYSQsZF8qaZhpHAOOxCE
         PCEU2m2NrAp/TcHi9iPRSl9BZKWAa3vbo09UUHSglxCXPuJzr3PmHS1Ds4ptETNzmwEJ
         Tsc7J93DW6keq155z95r1mwH6PnboZRsfPdRUJMvr+cTsflUqyEkWc6bzCpnzlwaLihu
         SpZQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=FneWcy0H;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MqpriAlLPCFEVta+uE4bhW5UT8NOgz7Ql5od6jnBKRM=;
        b=bOhkKS7Z0ymZtTb08VxEPh7ykiGFw1GG99XmDOkt3X9dYiGyevpn5VSAiGGgtpXJGD
         GFlfjFmng43qOOWZ0xEF0/eTPtRUCpV+yNUGI2Qf1ztucS+wDepvTKYlucef5DljjiaI
         zqsfHhqprjdU4YfiE3KZGFsDitqSWqnS9jek6FHQUzH4LQiwN0z/jW7DSDGKVRRvaAQH
         JZydDK+jNs6iJc7jgZnx9J0Q48+4aYP38xbwaeIfnFR+FsZzrVp66L94u/Os6wZCNceq
         7IyplXbmeDjppPoVEHVkhyTvihSclQubzWzC/FzwlD0dEic+tuLAI+8pivCiWA9nM6/1
         IdNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MqpriAlLPCFEVta+uE4bhW5UT8NOgz7Ql5od6jnBKRM=;
        b=RmIbZaUO8VIBhQnnScrVTYwXMUWVuRiIyK0x9nlkuQ8pC1+hjxfKKce/sCQlWT854Z
         OIl6npWnaIuFelnxFXXib9CgQEUPjvkmFsmBksHMLNx1TV1gyv2Ok0/HN1HQoo+OtBRK
         1B01OA9cerRGrPsHRd+trsx6ebU22xff7vB1kiiFLtdwpG6BakSIELq0aXZBZfROiEMY
         xIJ1VOPG1FOo+yCij7ZIh36yJ3dtK+nklXWe5Ndbxr1iCLLcu74g32tlcfaz9qddwwlZ
         iEhRKTgb6HiCxpp3bugx7U34AHotjHs4od5dfNeje6Io6yyeSCC7xdzECswzcetlef3x
         zu1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubqpWx8bhdit0ByszpKh/GIQCppbcUAIk7MZIfEalkS8B5wEWYq
	Z2R2bxbQLI+g4th3hFo4WA4=
X-Google-Smtp-Source: APiQypKGa1WPfBSGR2thMDw7fZHWo+SWogbvhOAGCAq4lPdowmTkX0nifTm06Gp+BJTYem9YM9B5/g==
X-Received: by 2002:ac8:66da:: with SMTP id m26mr4201324qtp.342.1588261089778;
        Thu, 30 Apr 2020 08:38:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:8a03:: with SMTP id m3ls1866382qkd.8.gmail; Thu, 30 Apr
 2020 08:38:09 -0700 (PDT)
X-Received: by 2002:a37:a5c7:: with SMTP id o190mr4299296qke.5.1588261089356;
        Thu, 30 Apr 2020 08:38:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588261089; cv=pass;
        d=google.com; s=arc-20160816;
        b=iCRQEAzhcMUugaSM/drTsJRABw59j4r2URMT5OUr3z4WH0qLuhQkCmEcuVFYWQGPsb
         PotdOyRGjrM4JhVHMZxIkL06jVQoni9E2njnnU53v3goRW72LHma7foeuYXppaq4DmMx
         0MKq9w1xws0Pi2KfZ3KuiyBM2+ac6mQnit5a1Ndigz86L1wWULmBAohQUsRIcsCZEMOt
         6aTPTuq95wcVed4P2f//plZgBUnKUzta8NmugXfUoqj0wzXJhfLbvGRocUhFjw4/YxeB
         wArYLaZJQSBrpb8nGJCtj/cOwynQr/zFSpuJXNCdBvNcdlzuMwEd9YooGPehH1wKUFP2
         AHWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=PSrCV9xRv/rNmhEpSAjA0iDg6QNdxN2TVQWl4fSyHEA=;
        b=oGdrqLLaNXMoys7/FlLJgjHN4BIYdvcljY9SCepwHCeQZxOFu9nW8W5h3HK1nRe5ni
         yrzs5VpNCz+JBhJ2JiufTaIBuZwG6n2WXdCypKCq5T4ETVMLIiG67H5tbQpQU7f1rZg2
         dPr3AaPK6Hpp1DbMx9hgfvfADX0AND4xXNVcoiD8Cjs25TUfUWGHy2vZHmOAkW36dxeU
         oHJC4nmLfr4/zzXlZ90pbQyIGcc/ysSdvU35h+ph1qXykYv4bw+UUQt6h8+NuKHVs02E
         pWbzXraU2HQeFzguqkCZP5UOxaHGxRt/EkeX8TQWcKVF/UypDLDeuG0jlun0mQIZWgzd
         22DA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=FneWcy0H;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id h33si19449qtd.2.2020.04.30.08.38.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Apr 2020 08:38:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of brent.lu@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: S2GZSd6Y1u58esMg4FiL27S4kdPmRg4/MEc4AdKpo0c/sMaAE1br2ZlqFJAF5CbwJi7P/6XeFE
 /VqzJUrSeyTg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Apr 2020 08:38:07 -0700
IronPort-SDR: +8XPAG27qspHIHR7Z3++TW0YKYWPQEtpCId02dXbj8tDqoIJkSgZtGg4OUzf64QbsebNL31Wqc
 yQkJhuDBRIiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; 
   d="scan'208";a="368180078"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2020 08:38:07 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 30 Apr 2020 08:38:07 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 30 Apr 2020 08:38:07 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 30 Apr 2020 08:38:07 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 30 Apr 2020 08:38:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C0HmpRCm8cHfZ+DyCbRQaEET89c4DxXr7ZERYsl/nsiEWP++H1WPH690HDJkp0cv0zxF950088O1+Fqicn5PgxsGHXcKlF5I1PyBdq0u9wZJAH+7H+10mAUAhlLQ3u2sCN+z8LMQfdXYsVzlwMAV3OAsfvAcy+ia2eECEB4dNvjOwpQPvYwym9gX+mEb8MMimudgGYBB9iyP6EisTKjiFEOHPJjELv2BX7CWvegdFHGQNJYO5isiZ/uuMLosBJ5NuXw6Iabbaxt3KZbLRLa8TLBIiQy4arVJ8fTONyDX6J8qS4YXk3lEo+zmOEh3IrvGUGLo/VZOc/iUuzpZmaj8VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PSrCV9xRv/rNmhEpSAjA0iDg6QNdxN2TVQWl4fSyHEA=;
 b=hDC1iVDWdpnzkqHpbIbEH5DXm5Df595ubp8jhURpTAhnhDQeHWHpw05y9ZVUhj8USk0gbKsECkm1ML6M5NTj5LJUvNP4jT4GCh1xQ+9T+haBWN006vw5bQli1NgXSrU39ks8aAPjlZGNojesqRHXE+DD6poH7vMBKVTkrsx6CO2Icr8INuHO0juuAQR5SC0vlT5MEy68irl0ylK0Q+Y0tFk8z07YDWghc2FsgCQuen8MlP1mnakMLbzM99SIFt4Gi0iyVAYhxORAeHjakIvKvpf0T8r7kZdTPovW6x3rr1wecWOKdORQ+Wh/ZdXm2w7/ps/gdbHMN54oySTewlSWUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 (2603:10b6:405:5b::22) by BN6PR1101MB2241.namprd11.prod.outlook.com
 (2603:10b6:405:51::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 30 Apr
 2020 15:38:05 +0000
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::344b:59bc:1455:37a6]) by BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::344b:59bc:1455:37a6%11]) with mapi id 15.20.2937.026; Thu, 30 Apr
 2020 15:38:04 +0000
From: "Lu, Brent" <brent.lu@intel.com>
To: =?utf-8?B?QW1hZGV1c3ogU8WCYXdpxYRza2k=?=
	<amadeuszx.slawinski@linux.intel.com>, "Rojewski, Cezary"
	<cezary.rojewski@intel.com>, Pierre-Louis Bossart
	<pierre-louis.bossart@linux.intel.com>, "alsa-devel@alsa-project.org"
	<alsa-devel@alsa-project.org>
CC: Kate Stewart <kstewart@linuxfoundation.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jie Yang
	<yang.jie@linux.intel.com>, Takashi Iwai <tiwai@suse.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Liam Girdwood
	<liam.r.girdwood@linux.intel.com>, Richard Fontana <rfontana@redhat.com>,
	Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Allison Randal <allison@lohutok.net>
Subject: RE: [PATCH] ASoC: Intel: sst: ipc command timeout
Thread-Topic: [PATCH] ASoC: Intel: sst: ipc command timeout
Thread-Index: AQHWDxGPcERmvVi2FUaZ0GDzXVeqv6h4uesAgAAAnRCAAFQWgIAEY1sggAkDsACACG0YUIABciOAgAFISrA=
Date: Thu, 30 Apr 2020 15:38:04 +0000
Message-ID: <BN6PR1101MB21325FA4FB1446DC2CAF6C6797AA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
 <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com>
 <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <5e84c48c-a5d1-b2ff-c197-5efa478c5916@linux.intel.com>
 <BN6PR1101MB2132D23B042284DDA667642A97AC0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <9d003948-a651-9920-86b6-307e912dd8ed@linux.intel.com>
In-Reply-To: <9d003948-a651-9920-86b6-307e912dd8ed@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [36.230.113.59]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7662647-83bf-4300-9221-08d7ed1c797b
x-ms-traffictypediagnostic: BN6PR1101MB2241:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR1101MB22411C7BA1E77BDAC0E5030897AA0@BN6PR1101MB2241.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0389EDA07F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BLbQWfc1cGQFkcKRNip92VRQWZAQB/HeWgmraLiXQ0lWXbOgHPSGZ/1SwTJG2DyJabtEt6Thjr4OhpnpqMpPwypbdUKwzxR3qOJuFBJcvvUp6id7iziTNxBsEgr7kCnHfwbcOUOHGr4SWXTPxCQuovHsAG4KULMjzXTbdEtvNb3f0njQsAiJiuNpOVkN60yDII+bZHhfhj5nREw17P1REK5Jgow2qaSvnbV9Tkfm6Fuv51MyL71OP9wMy6HjcyuGlbPakR16WLw/Z4601Mpf+IpR0Yjn3axyK8myyoBHxJ3HKeKb3XHKM+wHR+usUn4HfWPps3LfzeVMwl+YokRA+goVS0VNXLPnk+i2SRZR6AX4xhJmBS/TnDRPpXzpljrQVLcXpb9kZTOpap+AHqY2PuQIH7IT+R1xmx8SupyN6JNRnO7W4Sjb1FNgyCLHhGIO
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2132.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(366004)(396003)(376002)(136003)(346002)(39860400002)(52536014)(26005)(7416002)(4326008)(186003)(2906002)(6506007)(86362001)(54906003)(66946007)(8936002)(5660300002)(316002)(71200400001)(110136005)(478600001)(66556008)(8676002)(66476007)(33656002)(64756008)(76116006)(55016002)(9686003)(7696005)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: W0D8mwL25KwBOejIC+8/WzMb3f/ReMAjYpkP3QM5VMpjXo3Ac3V2zBupxrWjJAa1126CTitAb12s24OKFDbvdnF3aNqVloYuEgQr/eRE84FHT8IvycxmUXe0cEvMoTg3xTo/4zUp0W2pYvFC8KIPWmCntnCz13eMvKr/nC3JSk4l8VwhGO3pg/3Le6XSX5cvRdXprVRqQuEUIY2UzIv2I0FR/XwSYGv15vG2cGdNH4ilmMxebOpf1mdQoy37vYSFJNlOi/Zn+g0+taykBkbYMFW4NNaI6BSH4X7VOUHyl/00ey2n7KsR+h4jodxYuWJpdAoij/LXJvYrSUXyzGVTZhnshHZ9kTVn5mVBBdnlhxt4Ci2PsxvQQV4aUePXZc06hZbnWb50Ds4u2ge1cq+ZLkFOfPR+0Y28ko85WBICvpfE9YbmAByS48j3IsdouWzhnZWLFM35VLyIamJZsM2ExuytnCw8ZjIpaDAU7BLXJGQUpFK+ABA9ZX/qCa900K9WCfIzhKqnsa2akbytnoEZSKwZ17+TPAsW9CGhHDPBCACZWdgpbKorEDNjywRH3iajj8pZwbDD9vmZOrVje44kuEWOOoplh1SQw0ZsYRBa+Y/qDQF+plfaJCIsKJcxnq/+ej2c3cVcblZr/eaYWE9GAsi04tvVJ0zjtxz/CF/DvsEsZS3S2Ep/aR8iNKT3iw+rVu2LchW05KXi0Gyfa+wBAjiYbE1IvSfRfJAlbXMNf65g96nSg/HmUkyW1K14sR36Hptnh7oIqKfiJjrJI19v6D8n1uudvqkxhuWZJAvh970=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a7662647-83bf-4300-9221-08d7ed1c797b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2020 15:38:04.6924
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RwH/5KTsjqhhDPZlqQBdgatsFChapAWbXSxA7JIUFJGme8wpa37svy0W6VPN9LZ1jf4FjRKb4PYU+kz2hXbPhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2241
X-OriginatorOrg: intel.com
X-Original-Sender: brent.lu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=FneWcy0H;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of brent.lu@intel.com designates 192.55.52.120 as
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
> Hi,
> yes that seems bit weird. It is bit better as it does not modify common code,
> but still... Maybe going back to your original idea of replacing memcpy, try
> replacing it with readq? It should generate one instruction read (although it is
> only for x64_64, for 32 bit kernel we would still need to do something else).
> 
> Thanks,
> Amadeusz

Hi,

I've compared the assembly to see if there is clue. Both kernels are using 64-bit
mov to read register and the only difference is optimized or not. Both
implementations are looking good to me. Currently I don't have answer why
slower kernel hits the problem while optimized one survived.

1. Old kernel. Code is optimized and not able to reproduce the issue on this kernel.

(gdb) disas sst_shim32_read64
Dump of assembler code for function sst_shim32_read64:
   0x000000000000096c <+0>:     call   0x971 <sst_shim32_read64+5>
=> call __fentry__
   0x0000000000000971 <+5>:     push   rbp
   0x0000000000000972 <+6>:     mov    rbp,rsp
   0x0000000000000975 <+9>:     mov    eax,esi
   0x0000000000000977 <+11>:    mov    rax,QWORD PTR [rdi+rax*1]
=> perform 64-bit mov
   0x000000000000097b <+15>:    pop    rbp
   0x000000000000097c <+16>:    ret
End of assembler dump.

2. New kernel: obviously optimization is disabled and it calls memcpy to do the read operation.

(gdb) disas sst_shim32_read64
Dump of assembler code for function sst_shim32_read64:
   0x00000000000009a8 <+0>:     call   0x9ad <sst_shim32_read64+5>
=> call __fentry__
   0x00000000000009ad <+5>:     push   rbp
   0x00000000000009ae <+6>:     mov    rbp,rsp
   0x00000000000009b1 <+9>:     push   rbx
   0x00000000000009b2 <+10>:    sub    rsp,0x10
   0x00000000000009b6 <+14>:    mov    rax,QWORD PTR gs:0x28
   0x00000000000009bf <+23>:    mov    QWORD PTR [rbp-0x10],rax
   0x00000000000009c3 <+27>:    movabs rax,0xaaaaaaaaaaaaaaaa
   0x00000000000009cd <+37>:    lea    rbx,[rbp-0x18]
   0x00000000000009d1 <+41>:    mov    QWORD PTR [rbx],rax
   0x00000000000009d4 <+44>:    mov    esi,esi
   0x00000000000009d6 <+46>:    add    rsi,rdi
   0x00000000000009d9 <+49>:    mov    edx,0x8
   0x00000000000009de <+54>:    mov    rdi,rbx
   0x00000000000009e1 <+57>:    call   0x9e6 <sst_shim32_read64+62>
=> call memcpy

The memcpy is implemented in arch/x86/lib/memcpy_64.S

(gdb) disas memcpy
Dump of assembler code for function memcpy:
   0xffffffff813519c0 <+0>:     jmp    0xffffffff813519f0 <memcpy_orig>
=> jump to memcpy_orig function

X86_FEATURE_ERMS is disabled so it jumps to memcpy_orig

(gdb) disas memcpy_orig
Dump of assembler code for function memcpy_orig:
   0xffffffff813519f0 <+0>:     mov    rax,rdi
   0xffffffff813519f3 <+3>:     cmp    rdx,0x20
   0xffffffff813519f7 <+7>:     jb     0xffffffff81351a77 <memcpy_orig+135>
=> jump because our read size is 8
...
   0xffffffff81351a77 <+135>:   cmp    edx,0x10
   0xffffffff81351a7a <+138>:   jb     0xffffffff81351aa0 <memcpy_orig+176>
=> jump because our read size is 8
...
   0xffffffff81351aa0 <+176>:   cmp    edx,0x8
   0xffffffff81351aa3 <+179>:   jb     0xffffffff81351ac0 <memcpy_orig+208>
   0xffffffff81351aa5 <+181>:   mov    r8,QWORD PTR [rsi]
   0xffffffff81351aa8 <+184>:   mov    r9,QWORD PTR [rsi+rdx*1-0x8]
   0xffffffff81351aad <+189>:   mov    QWORD PTR [rdi],r8
   0xffffffff81351ab0 <+192>:   mov    QWORD PTR [rdi+rdx*1-0x8],r9
=> perform 64-bit mov twice over same address (rdx=0x8)
   0xffffffff81351ab5 <+197>:   ret

Regards,
Brent

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BN6PR1101MB21325FA4FB1446DC2CAF6C6797AA0%40BN6PR1101MB2132.namprd11.prod.outlook.com.
