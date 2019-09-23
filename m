Return-Path: <clang-built-linux+bncBAABBDW4UPWAKGQEWPRR7UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 944E5BB91B
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Sep 2019 18:08:46 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id x13sf1670348ljj.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Sep 2019 09:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XXYgT3WqEcM1BgqUO8SApksvLy6gHs9GkQrTrJeUfEk=;
        b=E7h8efqH2FyPqMr0KByaTaJYh7aDvCYPtkjofTDTYPzP3E/zp7yegUHs00EeCVHCMa
         GipGRKoJl/vyv/s8de+nXt6RWdnC+FgcmEgjUc95h3d+mNjTyGMDdncvYZcp2HaULzIC
         V+cdWl+J2rzjl9uD7U6M53ev1UZD3WYy6Tl00Q3hPqOyxZUehbYNq/GMtrIvOD7wKQlB
         VHPYv1XWzcUbpXgvaZSiLRtr0jd49Fh5MQ2dNMttuOyNHVbr47wwMx0jrDgzvh5kyK1D
         S2b6WuPNcd68298oFp9MWSCc88F52H3BlOqEFZcRuHNDEFayiGkQIWwMqKyOEUuKv+WH
         xltg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XXYgT3WqEcM1BgqUO8SApksvLy6gHs9GkQrTrJeUfEk=;
        b=g7D09xGpyl8gPZouiL1UB8SS92BEyvy0Vq2phqCIf99JEoCNJZ/akWYAq6/oHAMbJ1
         Hu+htYsMFQhyR83dhlFP19ZuotwVvD4cvAcPOHOJ5tzi7Rje2QeQBTCyHa9Ep8Vl3Z2R
         Ax5c8QkZoUsBm4ztRKmjh+XdDQaVJeZK+2041jjaty2WOGfHUix7spT7dzVAm07L53v5
         JSqrFtWUbu1nnpMaZy+YgMBStdhDpOL7CJ9R4dPuE3hjbXrcG+MxGTuWRqBfxVcBGlYY
         cztEmgiBCry/0GOmZIVc3ZVo9mEYUrMzENt/SBrsshN9fjskU9CfuC3Fq4jI9wl/62H2
         wvXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUYDK+tmHYAoak/PTJoroFLPa8ppHhZw/FZpNDDhzfPKZoKK1Vq
	x1FLD5WUuNH3KLP7mFIHRng=
X-Google-Smtp-Source: APXvYqz3CbQVBpZ74cugdBM60ZlfJ9lNYYTsv4cqSxEqrBYGq+Dpb/XOiaHYNCcaz928YOqkssedKg==
X-Received: by 2002:a19:6001:: with SMTP id u1mr244154lfb.50.1569254926173;
        Mon, 23 Sep 2019 09:08:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3c17:: with SMTP id j23ls1993817lja.12.gmail; Mon, 23
 Sep 2019 09:08:45 -0700 (PDT)
X-Received: by 2002:a2e:6804:: with SMTP id c4mr129729lja.120.1569254925830;
        Mon, 23 Sep 2019 09:08:45 -0700 (PDT)
Received: from smtprelay-out1.synopsys.com (dc2-smtprelay2.synopsys.com. [198.182.61.142])
        by gmr-mx.google.com with ESMTPS id d3si637040lfq.1.2019.09.23.09.08.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Sep 2019 09:08:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of jose.abreu@synopsys.com designates 198.182.61.142 as permitted sender) client-ip=198.182.61.142;
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com [10.192.0.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id D664DC03C2;
	Mon, 23 Sep 2019 16:08:42 +0000 (UTC)
Received: from US01WEHTC3.internal.synopsys.com (us01wehtc3.internal.synopsys.com [10.15.84.232])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailhost.synopsys.com (Postfix) with ESMTPS id 77301A005A;
	Mon, 23 Sep 2019 16:08:41 +0000 (UTC)
Received: from US01WEHTC2.internal.synopsys.com (10.12.239.237) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 23 Sep 2019 09:08:41 -0700
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC2.internal.synopsys.com (10.12.239.237) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 23 Sep 2019 09:08:41 -0700
Received: from NAM05-BY2-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Mon, 23 Sep 2019 09:08:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MDjOlE8X+nWP+x/yZSfv+G4pTz2aEUL5TdUfmaF/bbyck5/2yqx4FVOYLL1ntxQQpj9x/WrxeMmyNyXsPkK12XuAPu868SCAbChofIoeWkfIVoPh9om7WFUCqPYYLRYs51JYLFOgMgnVW42UB8c3fb0qkfVDX+pDoeOWfGxE3lsF4wv57/R1KdLIxqTOu7I5xkLnO1koPHYi+GNYSmLCqaU/HvELjsCwAY4JZFOHyW8JEE3wAwhHexDrvvEFvHALNlRaMpZT2ghhORlyzDHqPUEIfnDXSReM6XV0wY1XDx/fck1GS1mdFdmlffGLoshNdUvB6yR3bkoY0dJWc8dMwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gZHLLB+1aV/u9zVygNe3bgoGFPDi9MschhzLZG10Ops=;
 b=c6ojXAmjUfLBV6CIltyInnDpZ2t7KXZI4v61IRncWLSOSmQ96E8v6xuEKI2DGQ0T/ErpRaT67RB7dMQQcjC/vrnMk25Lg0U1cYcnDZsuri8T3yjmUCBS1ScVaB3uISfAxReSkuMGrZKpWDXZ5bjCoptx7lgZPYd/KnvEAv6fYqCzEcMeG42wmhUodXHJk7F52Q0YuVZT08bcGzKUxOdCBHXHIClBXBebOpXanE994MQRpssiEVMWpDGFi9zajx3o6tSKHPlUAzGGK4uQp99uUvYaaOZ0hkJATmn+orNIycRzYndqyj2wW73sIvKpF3CkxXHjVHll68QTT5WevAxTxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
Received: from BN8PR12MB3266.namprd12.prod.outlook.com (20.179.67.145) by
 BN8PR12MB3106.namprd12.prod.outlook.com (20.178.211.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Mon, 23 Sep 2019 16:08:39 +0000
Received: from BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8]) by BN8PR12MB3266.namprd12.prod.outlook.com
 ([fe80::59fc:d942:487d:15b8%7]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 16:08:39 +0000
From: Jose Abreu <Jose.Abreu@synopsys.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Jose Abreu <Jose.Abreu@synopsys.com>
CC: "kbuild@01.org" <kbuild@01.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, "kbuild-all@01.org"
	<kbuild-all@01.org>, kbuild test robot <lkp@intel.com>
Subject: RE: drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c:473:36:
 warning: expression does not compute the number of elements in this array;
 element type is 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned int')
Thread-Topic: drivers/net/ethernet/stmicro/stmmac/dwxgmac2_core.c:473:36:
 warning: expression does not compute the number of elements in this array;
 element type is 'u8' (aka 'unsigned char'), not 'u32' (aka 'unsigned int')
Thread-Index: AQHVcieZMYNVPknTGkSj4tWRJ7S/4qc5bWOg
Date: Mon, 23 Sep 2019 16:08:39 +0000
Message-ID: <BN8PR12MB32667C9A77A21114AC68BF0CD3850@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <201909231916.I6vn563z%lkp@intel.com>
 <CAKwvOd=h-Uo2iJ8O7t2huJ+zujFTfVE-PcbE5iUUR2ci50qmSQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=h-Uo2iJ8O7t2huJ+zujFTfVE-PcbE5iUUR2ci50qmSQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d6f28f3-d095-4226-5df4-08d740404c3f
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BN8PR12MB3106;
x-ms-traffictypediagnostic: BN8PR12MB3106:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN8PR12MB3106A45BCF75F851E752AFF0D3850@BN8PR12MB3106.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(39860400002)(346002)(136003)(376002)(366004)(396003)(51914003)(199004)(189003)(6506007)(14454004)(52536014)(110136005)(54906003)(76176011)(74316002)(76116006)(316002)(6436002)(33656002)(478600001)(9686003)(2906002)(25786009)(486006)(229853002)(476003)(3846002)(6116002)(6636002)(11346002)(446003)(86362001)(8676002)(66066001)(6246003)(81166006)(81156014)(8936002)(26005)(4744005)(186003)(102836004)(71200400001)(66476007)(66556008)(66946007)(64756008)(5660300002)(7696005)(66446008)(256004)(99286004)(7736002)(305945005)(71190400001)(4326008)(55016002);DIR:OUT;SFP:1102;SCL:1;SRVR:BN8PR12MB3106;H:BN8PR12MB3266.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KvYBJ6tIWTgVs8gNMSb9UffQO+f92nCFZLffU6HMXimC52aA0MmzB2byM1oYum2ESnREDRZ1/epWorbudvuW/xzz0ViHmMBlMESWNK0uEJYdwIJ2LudBuwq98gpQ3pvmGWtHqYAdAzTq2Mlz+nxJUHu0BZKXd7lIvgd2BnT6P13s2Uu70/U9bxDgquk9Vg8TZ79quhq6WPKIbN6A5afv20LSrPPeHg38oE3t8F+DOYUzgK5kXwgKAA5n1RBMcEAJpYbf5S9rox3l4Ahs9/swxCDhSwM9Wf62kIgM/oTc6M8wnHzvOsJfgiHEdi3DE3lVM7n5k3E/ESBLE/wOulmUdIY7+q+HeOkveVS9FQoN+xm+nZM/tE//B0ZeT9NMYxw+X0Y/mCloiQrDFXTP41FkhpCjUR+qKXnj1904rmgIRT8=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d6f28f3-d095-4226-5df4-08d740404c3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 16:08:39.7070
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 05ZeBinTu1F1+bHzZ9bKrqa1E/jhP1CzPimVY4LJUbt1iKbkhkv+XhG+3i7j4SzEcLOqCOApBi++Ze3PG6c0cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR12MB3106
X-OriginatorOrg: synopsys.com
X-Original-Sender: jose.abreu@synopsys.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@synopsys.com header.s=mail header.b=KY6dJbCC;       dkim=fail
 header.i=@synopsys.onmicrosoft.com header.s=selector2-synopsys-onmicrosoft-com
 header.b=YhAVjrzP;       arc=fail (signature failed);       spf=pass
 (google.com: domain of jose.abreu@synopsys.com designates 198.182.61.142 as
 permitted sender) smtp.mailfrom=Jose.Abreu@synopsys.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=synopsys.com
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

From: Nick Desaulniers <ndesaulniers@google.com>
Date: Sep/23/2019, 16:56:47 (UTC+00:00)

> HI Jose, below is a report from 0 day bot doing a build w/ Clang.

Thanks for the report. I'll send a fix soon. Or, if you want to fix it:

- for (i = 0; i < (sizeof(cfg->key) / sizeof(u32)); i++) {
+ for (i = 0; i < (ARRAY_SIZE(cfg->key) / sizeof(u32)); i++) {

:)

---
Thanks,
Jose Miguel Abreu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/BN8PR12MB32667C9A77A21114AC68BF0CD3850%40BN8PR12MB3266.namprd12.prod.outlook.com.
