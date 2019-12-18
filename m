Return-Path: <clang-built-linux+bncBCJ355F66EHRBVE643XQKGQEHW7I7QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 48840123D22
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 03:30:45 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id x2sf552356ilk.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 18:30:45 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1576636244; cv=pass;
        d=google.com; s=arc-20160816;
        b=y+UodRLMct0Fq1k7bzHZQMBRHw32w0G2IyyMbNsZ82b9N7BZDjnYDjJv0M5WiMi5wV
         1jp9+TIJejcfHGblQu5dMkQX0PbPYRaJdBk2Vpg10QBmuvTlH6doZDbuNGAuJuYtxsDN
         aIHC4qtrG3FHvDcwOrWWT58pX9nWUwStT53Fg6yJ22gZO29uwzv+EHQ/slyJS3nlGqfH
         91DwVnGeCOoY6zvVP01L9MsUCqhBi8WLn/Vl0lnjt9fujcWSFdYtn1pfDe9IkCKBC8Ld
         2xYYj3kniI7Q7Mr11jCeMd1Izv4u2SWl87eiO5sdqsN6/fgDVdRlfOQxxKWd4k1vtYCL
         YoDA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-product
         :dlp-version:dlp-reaction:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=BlR9ryRNTQy9bc8GXBNeHHnD0IRt0r5d6zzMg1mZrXI=;
        b=UBUje/iAWYKcIDWxdqJSU8MW/dE9pOzi+/EoQRoU7jZA6bXfCHsoZ0K0+8AjRw2zSB
         9UmU0YBg0eoKwJf3aEga83GOCZPlvhC7JlrPlwgQh/28K4aK31ij16FrZq9yqlH1toxK
         xqCOkJJ2gsoIkxAfWDzAJsdL3xXMnLTg7iI51nWh7Y/pM9NUcMqWQ6s7LD3YHZAJyytP
         AJxDx3hCoOlleDclAMRo7dxcpyfAkto9meW7DTNTbn7HSdSs8Oittma61J7898Ht5vgX
         26JI2SUZ9okg6I7OsPsOnuf/7UH3HC8XawpU4EQ3dJG/S/RNjdSobPbOxFgsAShPgpe5
         v+ZA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=mdUel7xq;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of ley.foon.tan@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=ley.foon.tan@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :dlp-reaction:dlp-version:dlp-product:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BlR9ryRNTQy9bc8GXBNeHHnD0IRt0r5d6zzMg1mZrXI=;
        b=ltyxS97Ep9qQq5DxIAhwMRzW2JzwiRTAe9VERSKXVDSlzvAfFL6PPtLv9ztR+a4M5Z
         +PcMCd7XRQ44OlXPNWqjSi/jZOn3mx9CxFOXumjOAWaQngthY3Te/AxMua8ySPWk2RaY
         8wMZzYDK2Arjjc2xyb/7tmBWPwBW5BS+fd3mjufaZc2QNE9aeS1c5KhWDX2G/PWWj5Yc
         7WaRGRz1z03bSelK9aLMNDeV1qsOB9N49peuoelJ6WXreIPi1V80V05juC7UynPTNIDg
         4rwB8slVQbfQtRvW1SmBt7FEusKEhbUsGVxTs/JQ3M9W6/oWZy4qSCZH6AN+fKeljwi1
         xc/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-reaction:dlp-version:dlp-product:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BlR9ryRNTQy9bc8GXBNeHHnD0IRt0r5d6zzMg1mZrXI=;
        b=iK6vwpJf54xcrBgYezMNFi9AFN9Au49FANo7RP2LsNyLCjCTRjwDpNyYu7y5+fyeM4
         AD+T3F9kNT00v6rdb8SyMcz4/OJJwTCn30Kg7MHslyShtEg9FrVhsn+MbOmg0+XEw2fg
         +bhzWP6V2GiizFrdECKfT+14bwyQI0N9iO1ThU/UtVOIjaqIiEgRqM7CzojGiZy9wlbd
         SzaEupMOG0KizRAOpZgG7ilkNML7r9oGME10fuZTqZra8KYURp1SPSWceI5cNV7aTUPT
         11gbSTH0y+OFod0eIZjVLaOP3Cnm7MGcs96HmVW71QXyLsE9uJAYAQlO7n8XsegKQxJO
         I8GA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVCk4rBfPcSOztQNi9uxh9yeJNK8TSDpeLMsec5TsX8ViGuSHnC
	LEfqtdxieNOepnCRWVo3Ysg=
X-Google-Smtp-Source: APXvYqxy7pnV95m6+vsJXFtw/YN9WLf96NIL6J55HCxEOy+TJdTTblNzfn/CPkphrXuL6vk5OKM2DA==
X-Received: by 2002:a92:980f:: with SMTP id l15mr955535ili.152.1576636244140;
        Tue, 17 Dec 2019 18:30:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5d90:: with SMTP id e16ls81054ilg.4.gmail; Tue, 17 Dec
 2019 18:30:43 -0800 (PST)
X-Received: by 2002:a92:1d98:: with SMTP id g24mr526817ile.307.1576636243740;
        Tue, 17 Dec 2019 18:30:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576636243; cv=pass;
        d=google.com; s=arc-20160816;
        b=dL/S6WRQDR/AYZwc8dIgIT49tmQS5aKK43U/R2lzS4Fy5elbaEeVFZHlZfRnLh9/iN
         et6358rMRUqMvsHke6aD6soOBwttp0yHPavALPh9BV00EDPc6Umu3n0w7FI1w76nwl/h
         Yj0OoOugwEX4jKkhbIBEIlJ5sOLVoE3unhl0CS5arf/LPHw8Frk58NMkS7YGF+6JWNHn
         7qPm6MlLHqbNP9+lpcO66r+45UZDilyHWn4V/r8wjdwOhtJAu6TlVD8CeWF6ISEZuYyU
         PMM55EcnsAkBeDB1wo/2h3zVGTDapGRdBgahxU+t/aZ4jKRVaxHd19cXl6jMoLkcdmwa
         5Imw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-product:dlp-version
         :dlp-reaction:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:dkim-signature;
        bh=6c4rRW+5srLLSVTHfEJEBHhSWTNAO6+YdRUmMlKx5D0=;
        b=JMe/Yle/spPuD5CdMAcuSGI+2nnwQ+dHjcQ9HX24+yr3vclQ4tB6+eC+zXoOKm9+6s
         EtqcMky7H2wBCMUH00W/XiHN1vi2oavkZBdduhTcn5OmGVO8EwiiAi92MQm3JCLdm+KE
         yIMR41VVkFhJPxGL82HM16XrSM0OmxZp5Pm2xHr6K4WDSFCvm0CditS2Ewiu8HlRjH1s
         I3CScf/H+tL6fK9XLb8HRoE9whZdMr+Yu9J/cIbKLwek+g1PcEdeEcd3hSIpe9HW/mXW
         zeDxxKBVjcmr68nxTLaWUx7pjs9JPFdWGW0KkTzZIa0YaSeYOwgPYN8+fAiJNrQTpTMa
         otmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=mdUel7xq;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of ley.foon.tan@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=ley.foon.tan@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id z20si51733ill.5.2019.12.17.18.30.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Dec 2019 18:30:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ley.foon.tan@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Dec 2019 18:30:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; 
   d="scan'208";a="205690459"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
  by orsmga007.jf.intel.com with ESMTP; 17 Dec 2019 18:30:42 -0800
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 17 Dec 2019 18:30:42 -0800
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 17 Dec 2019 18:30:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 17 Dec 2019 18:30:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cU5pqH+PWrW0xZ+ln0dn4v5dbY/VYbS/CkFTZ2ObwkyVTSICZT+cM/9hcoOzOi9A5h5DK/hY12ltuCVCe0PbhtgfCQf6+3Pd3/cXS+lidNVja1hgMwTQ/Vj5ObRwFOWe3FoMQic417XGiwY6Xrz5rpLjHzMi+z176HPeW+FZiBjQlr9DeeYHU5SbWXKQKq2CiKkk2gobgZpUXHlC/tFsUCPDnG+tiWAUhxsAMzaGXvUX70h163LeTZFQELIloCZ/9qj/hmIQnRhKzzQb0EfGEM0j10/+6E7dgUolHux3roCNnmGSyECmsG6H/jOxBdmyMO7VJ4RzLV9Fd7jqCKMuxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6c4rRW+5srLLSVTHfEJEBHhSWTNAO6+YdRUmMlKx5D0=;
 b=gNReFJOz15gCwonRdN9zWA0j7guq14ohTumz8yw/gj7mWdczYGwEmb02umS1L6ZxYn4NWbHJ9rIk0XRckMaRRxiKg/0eL/rF7mN+Ftgu0dbrW3dxp2NeITiQawDWVmxfgobQDwByePolOX8Bw1qu+QWq8+U5uMF8WDCwj3oCHVWWF9hX1oI8lXLdq3hyY264JeBAke4U9rXv1ZLxM7Z516zId0sdZX3aUM3gXKdbYLf7jokLSM1cPMCGdYHqK1BZF/9pDpP8o9w2Kx34yeBgMRXhnkDVSEE6MLKSA0fY8/m77fdu5zO71xiCUpQJnp638JLg1BbiiO2EfiBaRWFG6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4509.namprd11.prod.outlook.com (52.135.39.90) by
 MN2PR11MB3694.namprd11.prod.outlook.com (20.178.253.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Wed, 18 Dec 2019 02:30:40 +0000
Received: from MN2PR11MB4509.namprd11.prod.outlook.com
 ([fe80::bd81:f020:90e3:a12d]) by MN2PR11MB4509.namprd11.prod.outlook.com
 ([fe80::bd81:f020:90e3:a12d%7]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 02:30:40 +0000
From: "Tan, Ley Foon" <ley.foon.tan@intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>
CC: Andrew Murray <andrew.murray@arm.com>, "rfi@lists.rocketboards.org"
	<rfi@lists.rocketboards.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] PCI: altera: Adjust indentation in
 altera_pcie_valid_device
Thread-Topic: [PATCH] PCI: altera: Adjust indentation in
 altera_pcie_valid_device
Thread-Index: AQHVtUKDuQwl3+EaE0qjwoEcgXzj7Ke/K4Ew
Date: Wed, 18 Dec 2019 02:30:40 +0000
Message-ID: <MN2PR11MB450901255175CCA4C7CDBF3BCC530@MN2PR11MB4509.namprd11.prod.outlook.com>
References: <20191218012752.47054-1-natechancellor@gmail.com>
In-Reply-To: <20191218012752.47054-1-natechancellor@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTdiZTJhZWYtNGJjNC00NTU2LTkzNzctZTA0OTQ2Yzc1ZGYzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNnIwUHBYaVhRUTZzYVlkTG0zUXdqcVprQnB4WUE4aHhDd3M1REZSV0RyK3A3U2swU0tlQUFNM2pWNVdTdllPNCJ9
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-originating-ip: [192.198.147.213]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 853fbec0-9503-4c05-e91d-08d78362467c
x-ms-traffictypediagnostic: MN2PR11MB3694:
x-microsoft-antispam-prvs: <MN2PR11MB36941A9F6850F34E917B8D97CC530@MN2PR11MB3694.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(39860400002)(346002)(376002)(136003)(396003)(199004)(189003)(13464003)(66556008)(316002)(53546011)(54906003)(966005)(8936002)(66476007)(71200400001)(8676002)(26005)(2906002)(33656002)(52536014)(6506007)(66446008)(64756008)(66946007)(81166006)(81156014)(76116006)(5660300002)(478600001)(7696005)(186003)(86362001)(9686003)(110136005)(4326008)(55016002);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR11MB3694;H:MN2PR11MB4509.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aUzrOQiCD/8f6qBI4aEuviHLdoC4JH4jo6ndw6irCncLdCIUxCZmEEX+zWp21wER8eApKBxlvYqSywxQ4x3soyHTqHGv5m+N/4cxiYfx9a1KKc9nwI+ucNbX5MH4X4uBNbctdDpnTqks3Q1KwMVzmz2++my2cXNwDT1IMjc+3K4H6Dxfn+OATXTCOJ91qxOjmgInD1wH0BdIM8ULcid4+DPJ3QsyV65+dlDxBcflcuS5hTsZu6VZEI1CJPqdOzBbTeS1zJYIMZ/XaRHUvyiSewDzH0eYoZz2JZjOOQIVitIUBpGfbPPZZ+LDQu7in0hthVEMNKCcHOcZT1S8ryagbhMxjCgZeiBCIIps9rxR8vHcJwl5z8GV3wWYk2RGDYcqE5OTt3id2x5HyGaABciltoHjeDopaikoKQlV+q+QMpdOGNIEA4mD5vWY85WZjvHKj9gyPXsPBl50maQOJxNmCS74d4LTSo1ZIH2mgpyauPFsPUGsrCI7meqeSXPWnVXHJgfx/o41+K9IQivbamSPSUEuOU8QX3b+p5HIjH6kIuE=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 853fbec0-9503-4c05-e91d-08d78362467c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 02:30:40.5981
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7IXFqQhGs47JgWE03vsbgnRnQNn3+Z8dYWhSLpGHV/YRaWz64b0QoJi1FtQJgRpiDRExyfU2MZ4Q83TigImfjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3694
X-OriginatorOrg: intel.com
X-Original-Sender: ley.foon.tan@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=mdUel7xq;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of ley.foon.tan@intel.com designates 134.134.136.20 as
 permitted sender) smtp.mailfrom=ley.foon.tan@intel.com;       dmarc=pass
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
> From: Nathan Chancellor <natechancellor@gmail.com>
> Sent: Wednesday, December 18, 2019 9:28 AM
> To: Ley Foon Tan <lftan@altera.com>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Bjorn Helgaas <bhelgaas@google.com>
> Cc: Andrew Murray <andrew.murray@arm.com>; rfi@lists.rocketboards.org;
> linux-pci@vger.kernel.org; linux-kernel@vger.kernel.org; clang-built-
> linux@googlegroups.com; Nathan Chancellor <natechancellor@gmail.com>
> Subject: [PATCH] PCI: altera: Adjust indentation in altera_pcie_valid_device
> 
> Clang warns:
> 
> ../drivers/pci/controller/pcie-altera.c:196:3: warning: misleading indentation;
> statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>          return true;
>          ^
> ../drivers/pci/controller/pcie-altera.c:193:2: note: previous statement is here
>         if (bus->number == pcie->root_bus_nr && dev > 0)
>         ^
> 1 warning generated.
> 
> This warning occurs because there is a space after the tab on this line.
> Remove it so that the indentation is consistent with the Linux kernel coding
> style and clang no longer warns.
> 
> Fixes: eaa6111b70a7 ("PCI: altera: Add Altera PCIe host controller driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/815
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Ley Foon Tan <ley.foon.tan@intel.com>

Thanks.

Regards
Ley Foon

> ---
>  drivers/pci/controller/pcie-altera.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-
> altera.c
> index b447c3e4abad..24cb1c331058 100644
> --- a/drivers/pci/controller/pcie-altera.c
> +++ b/drivers/pci/controller/pcie-altera.c
> @@ -193,7 +193,7 @@ static bool altera_pcie_valid_device(struct
> altera_pcie *pcie,
>         if (bus->number == pcie->root_bus_nr && dev > 0)
>                 return false;
> 
> -        return true;
> +       return true;
>  }
> 
>  static int tlp_read_packet(struct altera_pcie *pcie, u32 *value)
> --
> 2.24.1
> 
> 
> ________________________________
> 
> Confidentiality Notice.
> This message may contain information that is confidential or otherwise
> protected from disclosure. If you are not the intended recipient, you are
> hereby notified that any use, disclosure, dissemination, distribution, or
> copying of this message, or any attachments, is strictly prohibited. If you
> have received this message in error, please advise the sender by reply e-mail,
> and delete the message and any attachments. Thank you.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/MN2PR11MB450901255175CCA4C7CDBF3BCC530%40MN2PR11MB4509.namprd11.prod.outlook.com.
