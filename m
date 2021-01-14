Return-Path: <clang-built-linux+bncBAABBVXXQKAAMGQE7YQ422A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEC52F6D74
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 22:47:04 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id p19sf3949691plr.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 13:47:04 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1610660823; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJOS/N8ZKB6Z4mSxEecmWibT9uyCpntks9RtZrbvmlmlS5PTXy+jpqCyyeffyZfKyf
         7t88qJKSAo6646oQ7wB/+PLCMHEsVyyjeHrghk53MmLE7WJ6slGhByMRoOBRNeWNkYZG
         7R3YgKpUfJqtxif/RH5vOFtUNkPZd/xaYp6jO6bXQAEX93kKOko1ekYh2XpOg9SCv/b3
         Cv+4OYF+e5ScVx06e04bfCOlMA20S2tLocyImf1WX+vjH+bRNE9TtUdM206JcaU5ATpk
         yv9ZxOcqY12J0tKTLirPUglSN3TgmsdNHQAfKhIGCgIzocErE5pXCFp82S2Th24sm7wN
         hFuQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=tUYHg/s/2ejwkAzUyaTRFrwXjPlZDXMQA2r3EQP1mPU=;
        b=Xeqy9DntU2Cwlv7b0Anh75v844gb5BtiVUu7SNJoAEdRPFT9Qr04fbxTsfSz0am3ZH
         7b9skKC7szu/uWvIV0LZP5yjAZu7KCODurDd99ZEg9QUsSdH9KDIjjQFWSk6utWIltm5
         9g08eRPVWvJLlAsyiHjz9CYGscXCGAiUAstsZlJqRrKw3qaIEK3y+V3L2fcJ47RBrass
         Q4LczhTL7F4yVRgpSZy008EQNf4tvInQMG6RSahlLx0+5fJB3X4udQLdtL3t/JoNmjH7
         Pkve4mgH1uvu7Y5nsHqVTh7trn+KkFkDYSOndABqJv+wmWqCtl50m5E572gx/8VsuYaC
         aAJw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@marvell.com header.s=pfpt0220 header.b=eV0rLYJo;
       dkim=pass header.i=@marvell.onmicrosoft.com header.s=selector1-marvell-onmicrosoft-com header.b=cbMx06Wu;
       arc=pass (i=1 spf=pass spfdomain=marvell.com dkim=pass dkdomain=marvell.com dmarc=pass fromdomain=marvell.com);
       spf=pass (google.com: domain of prvs=2648b33dc7=tchornyi@marvell.com designates 67.231.148.174 as permitted sender) smtp.mailfrom="prvs=2648b33dc7=tchornyi@marvell.com";
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=marvell.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tUYHg/s/2ejwkAzUyaTRFrwXjPlZDXMQA2r3EQP1mPU=;
        b=THcBEoeOtNrZT4XmCuI0qGyKZwx4thyq/1jSHM0iqsc+ggGrhXh1nhWlGnEUfTDfrj
         PZtqCy+KrpJFSkS+oHQJ74W/grsVsJnHR3KC8T3J6t/hgyrg2b2SrlneGdD8nLxEmE41
         dpqax0LCqn14aPj6KTukoGzO3d0LOMh7l6VYUkynD4XiR7JJ9NTdMIiflRRpArmZcid0
         U2cPM3AxL9Ajb+xRLOXJTknnmLgysKI3NWNUKQAhigUOWXEjC5ufTs2X8iNwMsmtJHMS
         /+MH2fRTxhM5UTxK5c9sjYTO/afUQywpnfphAJc7PAhlRc08W/NcaxqFLrwgH6D2ObdE
         uhZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tUYHg/s/2ejwkAzUyaTRFrwXjPlZDXMQA2r3EQP1mPU=;
        b=eob5H1c/s5Sb/WJzrCdZP6drR2XApktV8GmHjMsjoVWMyHIaw7JdU12XKNkC4EJ+DO
         AHZF2X/38818pKBBLA/dllf+P6M+ZWcstbPGescY9/LT4fNK+MhquaZc2B4nebdobJ36
         +3/CoMLqCFmBnQSrTqEc5lB8G6mqn1QtTyaUPqvds0XOBoy5H/yxc2KkAVrQfb0/jKba
         5vMYWqsGwBYfJV6VtdftGcTOTGhw33rYwUaWeqgqUVZ7m5ArfSkrOUmgjrzIwcNYNJ6V
         4YzwmjZ5mKLZZv9DV4/GOM6L8oU4N471cT4KVD9DpudN9At9oTmn4kWTEo/msct4fsTJ
         u7AA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530J7HbyH7d87OFGLu5IxC6kFmH+TloZCe6AkZYsqQrAP30+huML
	B8BKcodRUgwO7yV6DCm2Ebc=
X-Google-Smtp-Source: ABdhPJxZ7u3givrTn2QDsm5t3Ooa7r+R9vM0JcAAQlJqj/3VfWZiJ3O0hiQfFVV9AAVklhbKA8iYyA==
X-Received: by 2002:aa7:8708:0:b029:19e:924:345a with SMTP id b8-20020aa787080000b029019e0924345amr9407820pfo.54.1610660822950;
        Thu, 14 Jan 2021 13:47:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9286:: with SMTP id j6ls2611265pfa.7.gmail; Thu, 14 Jan
 2021 13:47:02 -0800 (PST)
X-Received: by 2002:a62:19cc:0:b029:19e:321b:a22e with SMTP id 195-20020a6219cc0000b029019e321ba22emr9236664pfz.73.1610660822313;
        Thu, 14 Jan 2021 13:47:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610660822; cv=pass;
        d=google.com; s=arc-20160816;
        b=OcSCdBH3/o4b1rgm6gEkckmEKhFZ+/7tS3jTa1/0zBsdHBw2IC1pCb8nB25K66YhbZ
         QxLAf3pUaqGYCB2NvQrTX4QKULcyheIggyj4Safj6+qsPFnW6lj+HtK3+QbzXR7VONVf
         AJJ8osmWPY6nkv0TI0cXxtAYuuALUKZXkCkgfRrnsZsde81NFaZYF/Q6fSTCqVs1Izpe
         xeuWVjuOOZajfIHDVKKESHgso3mjGseJVUKFNNCMrdFxgIKsB7BdE6agRxgZj4YOEQmK
         Mg/JUx2TthHREQ3Nx3Z154R51QlOBkR7QkUjfPhVQDfaDBFtobTBsIf9583OO7UOtIZe
         6sZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=qo1S7pD+MGbpB4hcFE+VNh9Ylq0zHf0BI5DWz4EMVdc=;
        b=oqA6lN721VBwB/gNJbQUZdOfukt61PUSNDf5soEDB4agFgY98bYvYiNrWvDrmLbjlY
         ij+4vDjr88ujph+xnHs7MB9TxovH3hDdYJb3c93SCgYLJBEtcsXUVwTvwBYw+j0uuktm
         WMHwjhrRD05aCwP3DzkzrRhAwtgxdhVA34hnkAnmhE+z+VArl1NDtelFLU3IzMnOGV9l
         pn7tY5v0lLenD0y3pzvz4GCHdznyVM6J8KpxBWkB/g5OObP3naxflkdpK4nKGOS4obZ1
         BgQquBtyhaP+IzkheRQU8Qhx6XHaHIuzTL5XndfoDAib7TLaMD9rH558Wg0e9lhAaF6D
         rXdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@marvell.com header.s=pfpt0220 header.b=eV0rLYJo;
       dkim=pass header.i=@marvell.onmicrosoft.com header.s=selector1-marvell-onmicrosoft-com header.b=cbMx06Wu;
       arc=pass (i=1 spf=pass spfdomain=marvell.com dkim=pass dkdomain=marvell.com dmarc=pass fromdomain=marvell.com);
       spf=pass (google.com: domain of prvs=2648b33dc7=tchornyi@marvell.com designates 67.231.148.174 as permitted sender) smtp.mailfrom="prvs=2648b33dc7=tchornyi@marvell.com";
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=marvell.com
Received: from mx0b-0016f401.pphosted.com (mx0a-0016f401.pphosted.com. [67.231.148.174])
        by gmr-mx.google.com with ESMTPS id nl3si550328pjb.0.2021.01.14.13.47.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 13:47:02 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=2648b33dc7=tchornyi@marvell.com designates 67.231.148.174 as permitted sender) client-ip=67.231.148.174;
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
	by mx0a-0016f401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 10ELTihl002122;
	Thu, 14 Jan 2021 13:47:00 -0800
Received: from dc5-exch01.marvell.com ([199.233.59.181])
	by mx0a-0016f401.pphosted.com with ESMTP id 35yaqt0vs6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Thu, 14 Jan 2021 13:47:00 -0800
Received: from SC-EXCH02.marvell.com (10.93.176.82) by DC5-EXCH01.marvell.com
 (10.69.176.38) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 14 Jan
 2021 13:46:58 -0800
Received: from DC5-EXCH01.marvell.com (10.69.176.38) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 14 Jan
 2021 13:46:59 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by DC5-EXCH01.marvell.com (10.69.176.38) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 14 Jan 2021 13:46:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DUJN/ExS0L2zMr4mvdw1Ftq1QxUKvHuTXs+UXStU3dFCOG46YLtgldeX55qlNaX5b5Z6tAX9reqEDSRMvM9BB0mauRluVZje5bUeM8Ft6jf8H4pplKFk+pOuEHo+i5Pq0i4d3OP+C4n7pt7bYML/NJCNiyEXfaxPcLM59k62doN/z+1XXGSCWK9zMDgECZdohQ461kSVDvfuKmi5PTZnPMqA9MT2g1J04ooB9kohK7vPVTEUDn6aE2It93WBOtZMqzW6H61B6gVnGd3gwV+GxrsMv/CgYW/ULHevmO7T46u060R7+7+JMcMNjd/N2nj4Dm0HK0kWOWQXOoAoyFQqXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qo1S7pD+MGbpB4hcFE+VNh9Ylq0zHf0BI5DWz4EMVdc=;
 b=PugWgIu+tKshMDWtrfHOBTL11oIa5lsCmUk+U2XONp2OR+/vDyQLZU5uKh8t5tThi+LuhAp44bqLAl/VnimLlSBFU+5n0JjA2hOgwbnLRvOVDa2qngjBUUPoiPO6ktVAbNsy9r2eJT+Y9fJ95qPfGOogbxv8RBNwMbqbZ2eqXPFgVhpj06fQpvTqE/8LzUlSwEma1NQN5K7gG1yPieHcKWiAZtQ7feY3D+M3oOKtIqpoAELFaK5SxWjSEtERbBkV+pXDkkffmQDfx5DfQVvDPTD+ahronlRLo2zLPF/3CFiIte5n0felS9CjLZjF4kITgS04suiCZEMp9ekBmjRKpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from CO6PR18MB4083.namprd18.prod.outlook.com (2603:10b6:5:348::9) by
 MW2PR18MB2185.namprd18.prod.outlook.com (2603:10b6:907:5::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3763.11; Thu, 14 Jan 2021 21:46:55 +0000
Received: from CO6PR18MB4083.namprd18.prod.outlook.com
 ([fe80::e911:9f46:795f:a420]) by CO6PR18MB4083.namprd18.prod.outlook.com
 ([fe80::e911:9f46:795f:a420%4]) with mapi id 15.20.3763.011; Thu, 14 Jan 2021
 21:46:55 +0000
From: "Taras Chornyi [C]" <tchornyi@marvell.com>
To: Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller"
	<davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>
CC: Florian Fainelli <f.fainelli@gmail.com>,
        Kurt Kanzenbach
	<kurt@linutronix.de>,
        "Vadym Kochan [C]" <vkochan@marvell.com>,
        Ido Schimmel
	<idosch@nvidia.com>,
        "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>,
        "linux-mm@kvack.org"
	<linux-mm@kvack.org>,
        "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>
Subject: Re: [PATCH net-next] net: marvell: prestera: fix uninitialized vid in
 prestera_port_vlans_add
Thread-Topic: [PATCH net-next] net: marvell: prestera: fix uninitialized vid
 in prestera_port_vlans_add
Thread-Index: AQHW6r7GluD9pVsAXEiI80TTQU7EpQ==
Date: Thu, 14 Jan 2021 21:46:55 +0000
Message-ID: <CO6PR18MB40835482AA82B3A34FCAA165C4A81@CO6PR18MB4083.namprd18.prod.outlook.com>
References: <20210114083556.2274440-1-olteanv@gmail.com>
In-Reply-To: <20210114083556.2274440-1-olteanv@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.93.219.25]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4349d0c0-9388-4157-52fc-08d8b8d5e920
x-ms-traffictypediagnostic: MW2PR18MB2185:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW2PR18MB21856AD8467433C5A8F6ADB4C4A81@MW2PR18MB2185.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YqzJ1Fwr3HK238w0rXsYoNsUWfhOG4rzBOf1/0FPqS7Da8im8VY89sxx09ORE7V2N78XsaDUQBXTTFZ/VpFVzfn7AarjkemBAu+/5sRlvuUu4jRlOfYZt7oSC8gtxoBIpmFHAVIvNLaGYBLLsMtj7W/YohAlp5cyliVe427ChpPZOJ+AJYuOhFrzykzwzHGrgTnhB1GvsVlBS3CdNIC/OydesKIfSEHN5UsUbbPAvDpjwjgE3pb2y+XZchHm7MhGLOJG2RIafI0uRdD1l2KhGOOT1J5IPfVG36HvaeJY6CVokV/Rdegllv3T5bnUFCrC2YnSDi1sXQTnoiScbz76zH7OqrRNv7sW6eAv4eLmGI2Fu5qMliteP5Ee1ydLaQQ5mzH75uAd+nkCPRgPACxCKZdcewk6UdgAQRAWC2Vo7AgXW868sGgf+MrRew8xEsiM
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR18MB4083.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(39860400002)(136003)(376002)(396003)(186003)(33656002)(4326008)(83380400001)(66476007)(7416002)(26005)(478600001)(110136005)(66556008)(91956017)(76116006)(66946007)(6506007)(2906002)(55016002)(52536014)(8676002)(5660300002)(86362001)(8936002)(71200400001)(7696005)(316002)(53546011)(54906003)(66446008)(64756008)(9686003)(586874002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?UO4MKNwf7gXcM8A7oxaf95wmniomXAf0MjJabLCOQ423kEY7aloq+W9d7S?=
 =?iso-8859-1?Q?9qcpO1do9fA4XR4d+sbOwQqYAaT2ppy7GPZ50Yi7r0EbiLO4HxNUBtxl9c?=
 =?iso-8859-1?Q?bWZXzHbJg6kAoNTJqFmkYFYzU6T81m/Zal2baC9JD5NKUDYfzy+FLV+LSu?=
 =?iso-8859-1?Q?7muy8zNHMGkNfIYbry3KMnY0/CHNBJGXFk/Kk46r2ZRbNnwSIXicr8IUso?=
 =?iso-8859-1?Q?VuMcLCSB3VPM2POhaGNCR/XU6Q2+54hqLF/RShoQzUcQHq97QejQLWaREC?=
 =?iso-8859-1?Q?2Cz4PqZg00vgh8wiIFRkaCQ3kGydlj8F52mPbv089nrvw4ZunaEvbCtu/v?=
 =?iso-8859-1?Q?xdPNmS8P54IhA25MYXZBjzhxjefpI7AWhiqGXNrOw1kaQAfMU8mVSciuid?=
 =?iso-8859-1?Q?kZaVFiNZMKZ44ZXRELj9cb85J3K/9VwD4s7VPW635M8hlxmT3Qa8jXwV6a?=
 =?iso-8859-1?Q?4/8ru7bZugxucchJ5tmA6oWAbB28eAWa+7dR2LwstY6mFJDEZhKk+l3Xgm?=
 =?iso-8859-1?Q?3VFKFzcxK52Ncxv8gMej61ZLqRlrvHDfWHzqaQYqQsAf9l7VzoRwJXV3fa?=
 =?iso-8859-1?Q?3PJUCN+V0UwRRPZGyiJCmyPFB7r4UkNF9sTJjL71H3Ud5nCXycEcDFlOTF?=
 =?iso-8859-1?Q?g08y3LPLP5riJbCi68hslqoNc4tssQSBTrNsqAdfqoUYEzcxJ4fEruioYn?=
 =?iso-8859-1?Q?jCEiy/e668pFB1zxhtIsWLlPrzm9sTqfVSfb5qYHEcUBhYs8KzTtAwXpU+?=
 =?iso-8859-1?Q?sOlkSnrKMjhkwoF+W+uXuMlE9C3dcWbDEbnwbRMNAT2MDANFimBb/LH4/3?=
 =?iso-8859-1?Q?TuVo+DosAqi+9KtWw7sSINXIOeQTd7QyN//Iy8Mo8aTspx/g/zXoxJwaJK?=
 =?iso-8859-1?Q?OXkNBCy+7FLyPAncfz2obFX284HIRdXjEE9HN3BydHJmeojv1nMieHflh+?=
 =?iso-8859-1?Q?RBGSDQ6ySu9kmHqSUMGI1qbUhC/+bNSvMNInt5LuYMp1pV6+ekz9r6m6Bk?=
 =?iso-8859-1?Q?h6HKe+UPZz7yZtC8Y=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR18MB4083.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4349d0c0-9388-4157-52fc-08d8b8d5e920
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2021 21:46:55.0853
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VMnM9fqjFm72ifIPzW6z171dNRDoEVjaSl0OgIjw3aWbNepd8YjEA/D+frmRKRc7DueG8xa1cpk36gVQqRqP1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR18MB2185
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.343,18.0.737
 definitions=2021-01-14_08:2021-01-14,2021-01-14 signatures=0
X-Original-Sender: tchornyi@marvell.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@marvell.com header.s=pfpt0220 header.b=eV0rLYJo;       dkim=pass
 header.i=@marvell.onmicrosoft.com header.s=selector1-marvell-onmicrosoft-com
 header.b=cbMx06Wu;       arc=pass (i=1 spf=pass spfdomain=marvell.com
 dkim=pass dkdomain=marvell.com dmarc=pass fromdomain=marvell.com);
       spf=pass (google.com: domain of prvs=2648b33dc7=tchornyi@marvell.com
 designates 67.231.148.174 as permitted sender) smtp.mailfrom="prvs=2648b33dc7=tchornyi@marvell.com";
       dmarc=pass (p=NONE sp=REJECT dis=NONE) header.from=marvell.com
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



________________________________________
From: Vladimir Oltean <olteanv@gmail.com>
Sent: Thursday, January 14, 2021 10:35 AM
To: David S. Miller; Jakub Kicinski; netdev@vger.kernel.org
Cc: Florian Fainelli; Kurt Kanzenbach; Vadym Kochan [C]; Taras Chornyi [C]; Ido Schimmel; clang-built-linux@googlegroups.com; linux-mm@kvack.org; kbuild-all@lists.01.org
Subject:  [PATCH net-next] net: marvell: prestera: fix uninitialized vid in prestera_port_vlans_add
----------------------------------------------------------------------
From: Vladimir Oltean <vladimir.oltean@nxp.com>

prestera_bridge_port_vlan_add should have been called with vlan->vid,
however this was masked by the presence of the local vid variable and I
did not notice the build warning.

Reported-by: kernel test robot <lkp@intel.com>
Fixes: b7a9e0da2d1c ("net: switchdev: remove vid_begin -> vid_end range from VLAN objects")
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
 drivers/net/ethernet/marvell/prestera/prestera_switchdev.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
index beb6447fbe40..8c2b03151736 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_switchdev.c
@@ -1007,7 +1007,6 @@ static int prestera_port_vlans_add(struct prestera_port *port,
        struct prestera_bridge_port *br_port;
        struct prestera_switch *sw = port->sw;
        struct prestera_bridge *bridge;
-       u16 vid;

        if (netif_is_bridge_master(dev))
                return 0;
@@ -1021,7 +1020,7 @@ static int prestera_port_vlans_add(struct prestera_port *port,
                return 0;

        return prestera_bridge_port_vlan_add(port, br_port,
-                                            vid, flag_untagged,
+                                            vlan->vid, flag_untagged,
                                             flag_pvid, extack);
 }

--
2.25.1

Reviewed-by: Taras Chornyi <tchornyi@marvell.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CO6PR18MB40835482AA82B3A34FCAA165C4A81%40CO6PR18MB4083.namprd18.prod.outlook.com.
