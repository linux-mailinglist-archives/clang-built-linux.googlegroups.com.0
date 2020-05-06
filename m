Return-Path: <clang-built-linux+bncBDXLVL6Y2MPRBCNKZD2QKGQEFL6UNXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 238D21C6594
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 03:38:18 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id 2sf166695ioy.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 18:38:18 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588729097; cv=pass;
        d=google.com; s=arc-20160816;
        b=GBHbCi7/LcNGI1wt+Vt3DRsSUMbmdBXZ7zqM25uKUE1Q01TGMknkko6U/FtYaN40T+
         OEQXS+cQxz09gk73GUVFvbRPMbJ7ub3VZlvm0vtP/NE/7pJVuuaCY3bUjWQSO4IY1s9j
         sAGvFDOtwXt86U2zqi5dfaWoHIkQJrcxzDaO7ZA2VkmP6NFOhZjj6LvH6l9Val0jMvG9
         N/A0tzXQejh7D+AVDJH+dWjkvQmLTldf1R/fQV08kyVST3lZIkgHQ5KBFmpFPZ/eRtnm
         T4KRi4VVDK5JuHoIKLRQSZumWtrmJKM8H3BWgloeDWLfKiB8OlOBqPA330CEZtNL7ioh
         S+zA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-product:dlp-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=Z2UO8kQPyXu+Jwwz/D8K4FXQwIG7myW1qZm7Grgwuew=;
        b=XFPJss6TZOqUnTyrO3BLFxnf+DSs6G3+xjUaFfD7s1I3SvZqo9YlQ9mrWj7+K1gnQc
         95cN84RyIydz6KPb4S3g/k9II05vFRnVzVt63DLJ6B9nX4RFiQH/+8FjRDSMrXCNbjgd
         LOr8mJQCVijGJKjp6kas/+JxnAsDuLMfYoDBMhmj4bpJMom2pszenK3k+g9w3pHnRAeu
         2vup/+yjecDpHFRAaysLSBlrDb59d7Cy/vsQ9sw8tT+Ex/9eZC9wBO9BP4YQXfyzuzKj
         1lBEdS0mOqgbEDdmAFvg8HBJMb4mAiGB43GzCL4nbEN0++yAJfZ971/GA2yhGccvtHtS
         RJKg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=JJUjI8ws;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z2UO8kQPyXu+Jwwz/D8K4FXQwIG7myW1qZm7Grgwuew=;
        b=iC/mIl8y8TaYZcJDz3yi1N7eBsL4h3dHNvjcUChcWNNeaWtn7GpWeVqkshH4pmellw
         yP7TGnD4W7coPoinY3EsXIY/fVVnExv9XdNt+bQ+rZZLsdsW+M/b9IZg5lLlsw3MfIwT
         k+yMyJpipe5qE9nlBOfIosZyYrlUvxQIBX45jVVq8o/NpYU9dnfXvgGjKZcbaVxME1SN
         y5QSoUGLfUEAjDEe2qj7k2KuTEyoRuh2HD9xvDLG3DF3Krtq69VEdHNSXVZDyQyEMsjH
         0j7oX5mB4WPHM/+ypAB/S1SCh6qAehkLj3Yf+i6L6LI+4bQ65XdVRoVGWFJVjYa+DaGi
         W3cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z2UO8kQPyXu+Jwwz/D8K4FXQwIG7myW1qZm7Grgwuew=;
        b=dd03agLMaw1wt2XkADV7uvdtWNW1+cPa9Kp+kaQf6EJTYAkCY/5A8ci7S0Bv6EtCu/
         yYCPVQCelq1kbzCIsP4nCs8LnSwrrSMV6OGRIFAHCIqFKPlzZrHpd+ZIw6MisnOi8Ew5
         pMJJMTulaUVwye9/oACgBIO7HRw5XGURB2LivdL+em0Wx5YvSEs1Y12YBGiimUTnTiDw
         VTahuhDK5GGUKAS9U/+18iFbvoBsB0aXrK/+czW/mc18p0r89cA2MKAEW/qx8GIC0tsk
         2WCdb38rNq3HT6jo3T0GHFSX9piAqKFa9ojlx1ZQ0d8BT4Ron4h1T6qVeqIlkBdv1bZY
         oSlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaDtjLVMb7iddIAdfYlGsALlqM18X8HrSFtg/gsy0Ewctx5lj8q
	zAU7sgpVEdoCGklszKdLStc=
X-Google-Smtp-Source: APiQypIHOacWKqOBYzwp58TYx9FpgNdb6cVuvYrQjZcBayj0aG5sC90nHg9zXXolo/mZGIbGG56/3A==
X-Received: by 2002:a5d:8958:: with SMTP id b24mr6459497iot.53.1588729097123;
        Tue, 05 May 2020 18:38:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ba01:: with SMTP id z1ls205921jan.7.gmail; Tue, 05 May
 2020 18:38:16 -0700 (PDT)
X-Received: by 2002:a02:a887:: with SMTP id l7mr185038jam.91.1588729096751;
        Tue, 05 May 2020 18:38:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588729096; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZxD9uHE20TsLnTGYp6SMr109e6SyjVTbIKfmkA3zGfaLCPf6y6QxY+IaOEyBwV48P6
         lZuRHfqy5GT6+a2R3bSPfjPJelK+1z2M0oQrkFZY6pjhWoRj23mZvRsGeaxu4QAZZUtQ
         0mvEBRp3Dc3qKtrd+kgNCFUd+TcX5wC5u2NuV8O9u1WXBlu6ZH1Zt+cIUSLDOk7YvRRE
         idKlJA7+nFovO8yRh8yPkF/zHt9wZBmh9/C6eRA/A9thGtKfqjGv5rJaPFXvRRpfvoyh
         ASPIysZ2Uv8Ril38CNGCD6QsS377NkS1qQjGdwdwiheUiXgFUX2xr+EFBgO/i+AUnc3A
         J39Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:ironport-sdr:ironport-sdr;
        bh=+2BFkZMv5X64f4F8ErjSvh20LWxNnk+jMtZsy0gMSoM=;
        b=m+x71dpvIdlJdVkI0pIZxFJSUu3x33WDOFmRF/46+UETRp7rOLti9yrdYMgp9UN4Cl
         NdF229QOQqSZ+ghNjfDZp9fwdwinxrCVuCtXj6hxiYnqJl81GLYySbSviaqBZFe2RJAb
         y3+Hj/PGDeh9VvYP06RmOZlBmVTl/PyyWTDa+72MGtmVpc67cSxvVKE69WnLycUzmP+/
         mRAM2tB214LRfGkvU5gg1kXzsmnC6AphSlAaD0nBhoiO31+tAFQtRyQbXsnfUDiQo2mA
         xbtadR96H8w22MSXK7K9TyQ8piL6ER0YI0PaeABOW2R1uv9IS5b50/Tjxx9vnsS7cFIO
         uqRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=JJUjI8ws;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of brent.lu@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=brent.lu@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id k13si71828ioq.3.2020.05.05.18.38.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 18:38:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of brent.lu@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: p2Ckv1GHub86JzysbdpCptZ4ZZJf2+wgaKcuyXQPNtAgz2MZ2T3IketA2G+mEJA7yH1q6H5Zj4
 Ij82oG83AICA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2020 18:38:14 -0700
IronPort-SDR: S32P4iZKpsKM/lKfsX8PB++dyXBgKRNpiYk+LuKAIMFc9CvCf0VytmJTyOtA90ObkuNnKjyKIP
 U27MELUJxe2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,357,1583222400"; 
   d="scan'208";a="296026532"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
  by orsmga008.jf.intel.com with ESMTP; 05 May 2020 18:38:14 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 5 May 2020 18:38:13 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 May 2020 18:38:13 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 5 May 2020 18:38:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 5 May 2020 18:38:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mt0e4TInvjfWXVUqjK8YgRdr+FdTug5HAoeortjzkC/+ozo7pALaTJ3R5MeDckudjDei1hJUp2nvPEKxnpT5sLVQHHznSis0weRfH8SHtUtHGK32cOVA4SwtXm/0WtBthhXPU9nzSAh1zZ8MkLo9fYBOqVkI9lF92WE+2vA7bqSok67J4ZVJ3LqCOJllZUO4FsyzBuXh57mmPwzTqXy5EbSYf64X+13lUomKhH2FUfJCWUtMkW/nygbHPLiT4ehZRKM3FnBEdJYxFHiAP1QvCNWMILuWKAn8hFSuR2ZNq82kQ2+0+gQ8VCSj/Zk+hTyvVzf3bVrWy/EnnaWzPQ3Gsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+2BFkZMv5X64f4F8ErjSvh20LWxNnk+jMtZsy0gMSoM=;
 b=BjpqlbAjVV5iwg5//fh/UUqjDTWM1nzXVFYtk/Vmber66vr5A12dGQS4ELuBG21y/TNVjbG9YzxWZvzk4xNUVfnyPIUhogm/O0wdD6xsSzMLTZweU7ygis7VGXmsFtOLDRBR9MDkh+gkFAzhqR6T1lPkP1Du0e7SQ5Smf7hkX7B6tZGSHIUx36i3OrWtr/AdExiFHCkejRyj56dJsepk/2LHccS6eQfxRhjLvzfOU/3td+tjadGkVJXoY+ge+C+99aGjZIGBokStX0df34ATUQb4vGfyLddzsgQo3eZkV12voFPXtSGzOlm0g1l9xtKTT06H0gaibK6egw64UvY8TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 (2603:10b6:405:5b::22) by BN6PR1101MB2116.namprd11.prod.outlook.com
 (2603:10b6:405:58::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.26; Wed, 6 May
 2020 01:38:07 +0000
Received: from BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::5419:a938:2a3:ee27]) by BN6PR1101MB2132.namprd11.prod.outlook.com
 ([fe80::5419:a938:2a3:ee27%5]) with mapi id 15.20.2979.027; Wed, 6 May 2020
 01:38:07 +0000
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
Thread-Index: AQHWDxGPcERmvVi2FUaZ0GDzXVeqv6h4uesAgAAAnRCAAFQWgIAEY1sggAkDsACACG0YUIABciOAgAFISrCABjAVgIACoPSA
Date: Wed, 6 May 2020 01:38:07 +0000
Message-ID: <BN6PR1101MB2132246F9496A9CE1A99627397A40@BN6PR1101MB2132.namprd11.prod.outlook.com>
References: <1586506705-3194-1-git-send-email-brent.lu@intel.com>
 <4f495cf1-4740-cf3b-196f-cc850c503b43@linux.intel.com>
 <BN6PR1101MB21328B6F4147640D07F9E40A97DA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <c8309abf-cbfb-a3db-5aa7-2e2f748a6d34@intel.com>
 <BN6PR1101MB21328C54E66082227B9F497A97D50@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <5e84c48c-a5d1-b2ff-c197-5efa478c5916@linux.intel.com>
 <BN6PR1101MB2132D23B042284DDA667642A97AC0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <9d003948-a651-9920-86b6-307e912dd8ed@linux.intel.com>
 <BN6PR1101MB21325FA4FB1446DC2CAF6C6797AA0@BN6PR1101MB2132.namprd11.prod.outlook.com>
 <a0648aff-1c85-cc76-650c-1880381c026f@linux.intel.com>
In-Reply-To: <a0648aff-1c85-cc76-650c-1880381c026f@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [36.230.10.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e0ef091c-c8b1-4fa1-74b2-08d7f15e20df
x-ms-traffictypediagnostic: BN6PR1101MB2116:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR1101MB21161BF6A971E0551A64783197A40@BN6PR1101MB2116.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 03950F25EC
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eRrc1RCrUc+I2Wxa9HHz2O7ICDRpov9BzehfUvwsjvkw4UAI23gdJK33Rad4QbUMadfxiCGegUdvkbkO4/uCurocJBMgtVLz25vvGrqyCoiknDaCroQmPQwsMba/kD8/06FfbnXW/cohrZGKS45v5Zt3YtJeekhOeRzXtmoku9ZsM2oYJR6Tc4zJw5riobQoOMlX5dSkVjQoAkS2/dKuwQqT+3ThNgCeWqdikIf/X4fkmy23cFNha4RmTAxfODfaZwyj4p/ksAf/JSM564m85PU3FQZKh8gmdJAmVJTzGs/qHK1zv8VevZ2NCRiuxUWoMoUSGsQWH/D5bWb53Z229nJcFbPRJLz9yzojN6f+Ltz2iQAy5qGS5/Jw8jSzpNGB6OwEAkgGoDuX0gU3oQWN0ePSP8/6UOQHHWWapdzub/xOjHoP2+IT/YWuXMi0hgKa9XAFVrkQjrHle7ybl948hPnL0JZM/SpgGoY6LtFQEu4RTgUzHciLoAlIVfyhDNLbCvWC3FIrVWXZUdt2gqt3oA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR1101MB2132.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(39860400002)(136003)(366004)(396003)(346002)(33430700001)(186003)(9686003)(8676002)(26005)(66946007)(6506007)(76116006)(316002)(7696005)(7416002)(66556008)(66476007)(55016002)(64756008)(33440700001)(8936002)(33656002)(66446008)(5660300002)(2906002)(4326008)(478600001)(110136005)(52536014)(71200400001)(54906003)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 7vJ/ZWmWafPs5bltS90jZ9lVFGG8y2cjXmOa2nDQmv5yD0eSOn0lB9jJWrFCEaQimji6JijlKkIxD6qzZ4BBsZhxwgSnjvSNcsunEvOueGWE9r/cfPgLHB1qM1vbg4SZXTYNllTDK8IJU40Yz05L1yxvwBnG13ol1z0iAFlKIu87IZL/LaSrg6yzNEtZe4r8h+CLALSFGcyY9qrXOwtGi3rd8Hk7Nh78ctBg8QARe2kpJNW+k8hkYeoENMP25JJc7ZkSkttQq7KefF5QgujM1O6AeyvLG+Pc7S1M0IuhRPHxOTDUdeQzxEhGMFoeVzK5lk1vOIBraGxHOip/hQ0wlWau3hyrHdT7HnTmnHvXAYv9TX2+uiwBnsPScV94567DXyYlr1EVJg9D7LahslF+Qw8EhbPZqyX0DL3SiZYR226yEFQuglJsRbNLrQVf2MOMtK8InG9YOG16xEupvcFlNMBz3HCeRWHm9o1L3s1ep+DmMjIrWd9EIa5piYzv2c18usqmT4FztWrqDoTmXzpMtUoKEbV8DtrYzlcxT8CeguwWiPRyVqfaS7DNPzbKzhql1tr6E6kxiA15lXtHYAAUGtID+szzTZA4uNEHIFDAX3PSLNEDm/1mEV+S9/vY/KqGHLkliU1VGrk7Mj1m8JL/QjrX4LqCe0hbE/LMaqxsg9dvDkrZ1QrVmOJ320ZLbJCVsHakHizTZT7WPNS3sKJjmeadGTcyanadUhlZ176nJ5n0ZQ/oFyzmwel4Jx3qLc8aLL/B2wWWBSatrjVdczo4WVKFZuS3uuqNh1kxIrFO5dY=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e0ef091c-c8b1-4fa1-74b2-08d7f15e20df
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2020 01:38:07.5580
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O+P3wO+L7EoOfV37jZll29MrR1nFW2ktM5fKeGQ+WA/+6bWUVHEmfYVJWzYZCfmB7DYt9i7WxM4rWj1pRBZEcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2116
X-OriginatorOrg: intel.com
X-Original-Sender: brent.lu@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=JJUjI8ws;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of brent.lu@intel.com designates 192.55.52.43 as
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
> 
> That's why I would suggest trying with readq, it should also generate one
> instruction read x86_64 platforms, I looked a bit more and there is fallback to
> generate two 32 bit reads on 32bit platforms, so my previous concern about
> having to write separate handling for those platforms was unneeded. So I
> would recommend checking using it.
Hi,

The readq/writeq works. Code is optimized unlike memcpy_fromio/memcpy_toio
and the defect is not able to reproduce.

(gdb) disas sst_shim32_read64
Dump of assembler code for function sst_shim32_read64:
   0x000000000000096c <+0>:     call   0x971 <sst_shim32_read64+5>
   0x0000000000000971 <+5>:     push   rbp
   0x0000000000000972 <+6>:     mov    rbp,rsp
   0x0000000000000975 <+9>:     mov    eax,esi
   0x0000000000000977 <+11>:    mov    rax,QWORD PTR [rdi+rax*1]
   0x000000000000097b <+15>:    pop    rbp
   0x000000000000097c <+16>:    ret
End of assembler dump.
(gdb) disas sst_shim32_write64
Dump of assembler code for function sst_shim32_write64:
   0x000000000000095b <+0>:     call   0x960 <sst_shim32_write64+5>
   0x0000000000000960 <+5>:     push   rbp
   0x0000000000000961 <+6>:     mov    rbp,rsp
   0x0000000000000964 <+9>:     mov    eax,esi
   0x0000000000000966 <+11>:    mov    QWORD PTR [rdi+rax*1],rdx
   0x000000000000096a <+15>:    pop    rbp
   0x000000000000096b <+16>:    ret
End of assembler dump.


Regards,
Brent

> 
> diff --git a/sound/soc/intel/common/sst-dsp.c
> b/sound/soc/intel/common/sst-dsp.c
> index ec66be269b69..e96f636387d9 100644
> --- a/sound/soc/intel/common/sst-dsp.c
> +++ b/sound/soc/intel/common/sst-dsp.c
> @@ -34,16 +34,13 @@ EXPORT_SYMBOL_GPL(sst_shim32_read);
> 
>   void sst_shim32_write64(void __iomem *addr, u32 offset, u64 value)
>   {
> -       memcpy_toio(addr + offset, &value, sizeof(value));
> +       writeq(value, addr + offset);
>   }
>   EXPORT_SYMBOL_GPL(sst_shim32_write64);
> 
>   u64 sst_shim32_read64(void __iomem *addr, u32 offset)
>   {
> -       u64 val;
> -
> -       memcpy_fromio(&val, addr + offset, sizeof(val));
> -       return val;
> +       return readq(addr + offset);
>   }
>   EXPORT_SYMBOL_GPL(sst_shim32_read64);
> 
> 
> Thanks,
> Amadeusz

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BN6PR1101MB2132246F9496A9CE1A99627397A40%40BN6PR1101MB2132.namprd11.prod.outlook.com.
