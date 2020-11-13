Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBBPMJXT6QKGQEUALFMEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id B181D2B27F0
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 23:12:14 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id s1sf3207911vks.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 14:12:14 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605305533; cv=pass;
        d=google.com; s=arc-20160816;
        b=vZH4njUELYkfpfMBANpbCmSlEW2ajc3vjlNbNX1pKEHBJXxaZjhmHKS3E67Dmtl/Vp
         aq26uvJdOcX02aXOV6CM1r/T8d5r75iNN4uLMkVnTKnlZuZmnd8fWL8ilNCUGBxlt9SF
         80i4y5AL16xlE9kMH6+Ppe4CRZbtZe3Fq5ydh6EtQHXiu5hxZYnm2oPquA9hicYoYAbR
         nXmQQ1nuln/gM/mcUa7yZePKEBjbuOz/QWJKG1V8+8Y4nluccO38fcDxwxtU6DLX8L3/
         VtzBGauUHV3xjNia448llJrJSK0oAwTTUlzuYfpx5/miPTGMU/INsSDQNtCz+SFCAs/P
         17pg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-product:dlp-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=QLEnZKGmHKqV0dZ/AWEt+BmXYYY3IZq4jcVbUkVzTGQ=;
        b=UdimUuvAG3SHO6dKrQ+ccZ3iOKA16XqFFM1R+Z8vC9sbt7zsorzfO+m3kZAcrVfZ8o
         ADR3o8sJHxw/Aj94gOlgBtGkvzN9a7Bzj+FnfXLBUVgTsnio4LJ2M0p/uTY4mU82fcBP
         oPp1+r3s7rgCC7tpmei++a9sRHlDORvf/OL7rgek8w6ZUls3ZJ12Vo5tQtNSvBj97STv
         t949SU5NLU6nRd3ttzIYtU3mufw2V2vpyEaMSIC48GiNvzvce2PLcDzowtoDQlrWZIcc
         sGMkV4zWZEIZTAZo4x8CIuqKPHcStWfhDik4smBoDOXtmS4MlfO1j0EjpaB4J53fUi5K
         nr9g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=FD2Q2+6c;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QLEnZKGmHKqV0dZ/AWEt+BmXYYY3IZq4jcVbUkVzTGQ=;
        b=IupblFQSVMKI3+/+1r5O9fqNg5+9gnVlvvHDlg0yaexeWEWzW0Zb+IicExg+MErf3E
         c00lkPtsAH19edCK6Zi9JZzclNw6pZnb+jWru60NMWg1Ga3jKSPCHZQ4BKb+oUXyUiTH
         R46hvpN/PjYa7uHYg4SpVbCSbFogZZQgIJIH+JDNpBFonpduAxSSsXxG8KHn7Q1HHrTi
         01jgI+fHs4hBbwnLxdb7dGZOAjL8H3g/eydk8Ths85C3XB1gTkSrwHsHU9WhixivN3fr
         J1wqDOLgKyR2SCyYYUtEFGB1p0JqUR81eKeBkEkDy0vHpCjNFVSqWZzuxJxw2X027Jja
         cctw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QLEnZKGmHKqV0dZ/AWEt+BmXYYY3IZq4jcVbUkVzTGQ=;
        b=CnCdnj/QrMbs/AQOqxnsRZw2nEwxww2VyANaCrRiYG4HEpxapGcc4fV/t4meFSN02u
         MdMxA6BNh2HvZ8vd4U6ahA1OLDlBwfJ7KtCWlEn9B8HpDuF3e4j3HgPbt3uFACY/06Tw
         Kc3hg8OjNFJSrlEoqp/ZqsgJ25L5Re+mx+is427d/sRDsof5shP8rOjogMd0dGP87gid
         MJa3DtsRqrRBUbad5OmgtbURBrIXrgzjoJuCEUgx6Uy1TU9eElm7RNqtgQrKNY1xuxZH
         U83kglLCxB8NmJGbm/1JQxLYfx6cQqkMtGegcJuqu378oHraJFzQaNZ2O++S1cN3YboR
         Z9NA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QwPW35djND9YXUOCEcpP1YbGiM26AgAmTagy3XXXg1jhfIZ15
	UARjPw8jYJGr4oW6+WNTIvs=
X-Google-Smtp-Source: ABdhPJxu+RG3XJ6vUUPZjMDOw/2iw5NA74Zo8zMWpca3xJIvHXdDbldrmO9dVKzCe6qA6yyUlHdbuw==
X-Received: by 2002:a05:6102:10d0:: with SMTP id t16mr3150010vsr.9.1605305533799;
        Fri, 13 Nov 2020 14:12:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2046:: with SMTP id q6ls1086998vsr.3.gmail; Fri, 13
 Nov 2020 14:12:13 -0800 (PST)
X-Received: by 2002:a67:f651:: with SMTP id u17mr3069952vso.6.1605305533192;
        Fri, 13 Nov 2020 14:12:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605305533; cv=pass;
        d=google.com; s=arc-20160816;
        b=SSs3sQDJ0o/jN58KS81ZiPQVgA+nT1enGZQrAm/Yu6TJEE8Lf2ycRhWSfFg2QTWAoi
         +5UPK5mel0eQfNRMPWyKWOdChYofQ7l5bk47HIzHVWFsBvEi/xnooF3dx7hneqdDNumC
         ad5/Q8KIrxZYCaCWidoJD2KMsKJvpH5T+FcXmeoIRpGrXrT743iDQ/GC6fALMa/UpDb0
         FgvfIYRUmgtRs6Ya/Igt5gjL5vJO/XJ0X55G8Cd2wrBj8Bpg63MvySB56sNjVd1d64Hs
         32SNXydf0J1WD6W3drnrrLGOQqRgayXAkjHSVI7V5f2N2tLLdettqtAa0LdOw0k5CzoJ
         KFgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=OCMo4ooqRukykicn8fUi/XT2Z5LYFRXRNe+ZMrqSU3g=;
        b=WhhZ91nJ6UKgTTFD0vt0v9/5InlgP4DSRQtOQ2vSIogdLtW9CnRerE/D4b8vKTB32+
         86ZV4t5N308GPrjNq79nRwUv/i2C/Jyk5qtO4qXzNNd6BAknTk8VJdYjQdx0OU0IeoJ6
         T0C+lCFMqSH8TamDZj/09OazRTB2jcGQpKNaY/ZCXAQIJ2b4QXgl/VcsufcYgKdSP/95
         g7qYwrQ7tUD95jqkVuAG4eBtVqHcJHY39wBhuOnl2Yzhjr0zt3BejgYDXEeRODNDlGxr
         nPVhoDHhgdSFLOitJh0vhHnGiKM7MfnzCw5bJNC4s7VUf03Mrvg7f9IrJd5eY93jUrPs
         q6Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=FD2Q2+6c;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id b16si838031vkn.5.2020.11.13.14.12.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 14:12:13 -0800 (PST)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 39hYIhKWFQKkcT9vWOYrbaM+eYkfdWDPDX6s1brQoBroIo1JWV7eEewzYR4faxniZSRc5wY+0f
 tefRJqgJLZSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9804"; a="167029902"
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="167029902"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Nov 2020 14:12:11 -0800
IronPort-SDR: 3UjLtoAWr/VVvkj//WocHz+PLqT3omqTdn4aEOgCV0z4+yrGGqTUnvWWAp5yiYBBuhgoCzvJId
 Uk/0AwOWH/5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,476,1596524400"; 
   d="scan'208";a="357670530"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by fmsmga004.fm.intel.com with ESMTP; 13 Nov 2020 14:12:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 14:12:10 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Nov 2020 14:12:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Nov 2020 14:12:10 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.55) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 13 Nov 2020 14:12:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BlC0McdhFkFpqYANtlyZUXbgEZhSlrrMjpTUVAalFkdVPRczyIoArGhQA0tDmLFQwS+BA+ATYqMC2bPtM2yTbaSlYj2ufhv2kse/U8EBGQoxtC4WuNVDOIViLDqU01mHvyHB3le0qdwY4c8O7MJgCKPyL9OqW7wwxvc91FaRNrtqWL796pbEGi1137L5K7wiWC8zdrLLCY7oJHyPz8ck5D6acAOKoidSsZnWl6JQfzaBFkYVSKDmTdqijI3K2OX4ScVe0Ly62cDZcQ10fjJPq4SKAc9my+7RQewNNVtg6Xpa1FKEwK4hyDrVTlcE7YbVFOZTfl5IeDfK5NGaOnKC0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OCMo4ooqRukykicn8fUi/XT2Z5LYFRXRNe+ZMrqSU3g=;
 b=hY3AMP0dUV99jwjArcXr4eCJe3jNfrjP9l3YMTT+ZrOj8FnBMKkHzOFTGXFfxCZYNiezvL7wZsSBnAQUrj0dHmma2CvH4PV0yZ7AXLGs+P9TLaNJjHBvfrhj9yi/W3ldJQw0yshva5aK4FNedZJmGj+mYuxf1HcBBLNzBg5DWS/ZYywRm5k+Y0KQK0CBKTd/RafkLsQuejzgHAK1QqQqfeAfX8X2+tQI37uk7yC+tZfmgPRMTiap/6/JiQrGyG3WlibOJv7x/zyzOAKE3c35oBTaRZwikZ2p2BT4RW+yl7vRbfVtf0t+oaA6sLPTwzpAMB2+dFWMUwA0bxKdC5Z2dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3256.namprd11.prod.outlook.com (2603:10b6:a03:76::19)
 by SJ0PR11MB5085.namprd11.prod.outlook.com (2603:10b6:a03:2db::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.25; Fri, 13 Nov
 2020 22:12:07 +0000
Received: from BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b]) by BYAPR11MB3256.namprd11.prod.outlook.com
 ([fe80::9d74:8937:bd5f:3c6b%6]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 22:12:06 +0000
From: "Moore, Robert" <robert.moore@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: "Kaneda, Erik" <erik.kaneda@intel.com>, "Wysocki, Rafael J"
	<rafael.j.wysocki@intel.com>, "Gustavo A . R . Silva"
	<gustavoars@kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, Len Brown <lenb@kernel.org>,
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org"
	<devel@acpica.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] ACPICA: fix -Wfallthrough
Thread-Topic: [PATCH] ACPICA: fix -Wfallthrough
Thread-Index: AQHWt9BSaSJ92WwBRk6cKvxE5xanpKnGl5SwgAAB3QCAAAJ3cIAAAHnQgAAAbfCAAAbDAIAAALZQ
Date: Fri, 13 Nov 2020 22:12:06 +0000
Message-ID: <BYAPR11MB32566027A6A386F4A08076C687E60@BYAPR11MB3256.namprd11.prod.outlook.com>
References: <20201111021131.822867-1-ndesaulniers@google.com>
 <BYAPR11MB32568FEEF4CFA1C20296427B87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOd=qDNnOu1oTeEN+chvfJcQSS5dxREo0JQHC=W0zhpYeLw@mail.gmail.com>
 <BYAPR11MB32564DD5B9D140AFE8C3D1EB87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <BYAPR11MB3256E6E37618702C5EA761A087E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <BYAPR11MB3256DD34C3DABD2CB4FE347D87E60@BYAPR11MB3256.namprd11.prod.outlook.com>
 <CAKwvOdmQdH3dARiP9VDPG59sgsqkmvp5AcCKrNNUuNDC5k1BwA@mail.gmail.com>
In-Reply-To: <CAKwvOdmQdH3dARiP9VDPG59sgsqkmvp5AcCKrNNUuNDC5k1BwA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [134.134.136.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4739220e-b039-44e5-50d7-08d88821289d
x-ms-traffictypediagnostic: SJ0PR11MB5085:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5085FCAD7828781AE588E14087E60@SJ0PR11MB5085.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tyBMjhyJIpTVjJaFGpU9k7O3+/KGuXNS8RtF7dTrhNJcEiErAvr0guT4h2VuwebPJt4V6Gg8wy/ARyGnrzL7ByEQN0WHBdNMqn9biXqb5tM7bVerOkgKcK+iGlln6QvJp6VhyMjPFujHzgodghHKpz9GCrBYB2DHm049zHhgQuND9RS13aAFWtznD2djwPp/dhtkWZoYuts6wvHWo9jvEXU7ISImS0XSmJGT/TIACXReTK8PXU8FVUbRk3xXgsjQh37OXXKOzs2fp2PLiJaBk1F3IyfjeaZRsYVfppsSBzgT6tuI0E3sozit4AowaBjf6JIjh3kRmzArS0A18VXGsVa+4WfQP2FMxmC99KTHqMhSJSJrpEugE2gc4c5dcmXEAim3CuK/xMYNMrw11U+f5Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB3256.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(346002)(396003)(376002)(136003)(33656002)(86362001)(8676002)(6506007)(55016002)(9686003)(71200400001)(66446008)(66476007)(53546011)(2906002)(76116006)(966005)(8936002)(66946007)(66556008)(478600001)(64756008)(6916009)(4326008)(54906003)(7696005)(26005)(5660300002)(4744005)(83380400001)(186003)(52536014)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: OCNQLU9z9zjHbG0a2Xinb3teP/XOALVsqdG1lLlzxx9E5dpGNg7iWFnBBUsplD30vUc3gYfpo9oP4rYjFwQQah4h+fUOAO1fXzeE0L4MOkOpktxOz38rF3Gwijn6czqgjvKYX72jERtC9sM5AGSo84d0zPBFmTtgjwqHCtMMlYnr8G61vsoTO8QO+ULt+sqoTltQ2YwQYnf3dg2jZClLY2WBxJaswweAZy/RN9CslzkUfjPJjFVqgN0ChLmwIk7khalH63n0CHmukmAf04E6OWaGY7QXfpdskAOhIXV8XrtB+NKexUc9CbahHM/um5cHZEzZR9Ehz11sDNzDMowUdmjkflZKU5PTbQC49YY94+2a42CqtDFCQvwex4yPX+V2XV5/5v+Kf2PoquP9gIhmU+YO9KJm2hmPQywgDk6YTBD8axpSJ9zlGqzBVQVJs+sWtCkmA5L9im/GT1dW7+IMM9IcW2+11EYqz206uIprPNVkuGzyDOmTAbMCPn8AuDU+KGnzkbe0uafErpOmkWbbKKkOh0XITuEhdYVAEy/5nsHkA453XVLw9v/Pu203gXBH41hsWaKwTs8dipjZYe0nQjyUDoqx1wnGs7ggeihxLmNn/s/8KZryx9l5c6aiVGAWeuTShWYdYWQDk0GCkRASqA==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3256.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4739220e-b039-44e5-50d7-08d88821289d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 22:12:06.8822
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K8qEkiXR1LjwNFVhXFKZneuxedPbjy6UpZ53NxA/qkIY4hzyfiPftUmHre+ym9Evza0wrtqi944alyXp1mGC/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5085
X-OriginatorOrg: intel.com
X-Original-Sender: robert.moore@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=FD2Q2+6c;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as
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



-----Original Message-----
From: Nick Desaulniers <ndesaulniers@google.com>=20
Sent: Friday, November 13, 2020 2:09 PM
To: Moore, Robert <robert.moore@intel.com>
Cc: Kaneda, Erik <erik.kaneda@intel.com>; Wysocki, Rafael J <rafael.j.wysoc=
ki@intel.com>; Gustavo A . R . Silva <gustavoars@kernel.org>; clang-built-l=
inux@googlegroups.com; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.=
org; devel@acpica.org; linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ACPICA: fix -Wfallthrough

On Fri, Nov 13, 2020 at 1:45 PM Moore, Robert <robert.moore@intel.com> wrot=
e:
>
> BTW, if you can make a pull request for the patch up on github, that woul=
d help.

https://github.com/acpica/acpica/pull/650

Great, thanks. I'll look at/merge the request next week.
Bob

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/BYAPR11MB32566027A6A386F4A08076C687E60%40BYAPR11MB3256.na=
mprd11.prod.outlook.com.
