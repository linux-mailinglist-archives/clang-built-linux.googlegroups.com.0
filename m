Return-Path: <clang-built-linux+bncBAABBO6AZ73AKGQELIBQCEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EA21E9914
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 18:50:04 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id n123sf3089561iod.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 09:50:04 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1590943803; cv=pass;
        d=google.com; s=arc-20160816;
        b=AQxX+0Irg2Dh9AdJrJ404T4hHHZiL8YoPE3p2AJlxM7/WS+ZAM5fWUUm7WA3AXoqyk
         85lsfA2xxah/p5FrIHbO/yd1X2BP4HRqAgBRrH/wIu3SP1wZ2TQeFQkP/ln79XcFRW+C
         t//i/CXud6iBpinFHzdhV8dY3v8GHxJkWzEe4IZB2Sd+iS0q95LD7OftvU2+We6d7oMN
         eRdJ0hW7tBAp9/zzgIkM5pUCh8rbpAQyAQKmJ6w/YmgLQWe7aUOL3yuANVWmWrbFWMS0
         Ua3s8/1IeoQaeTge2wPr7iQPz3HSCzkPPzb0OwYlkcvqEpyjg/RbLEUQNxWvblUlqJCH
         LUkg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:msip_labels
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=AO2of6Bu4aBHRQxMNf5UoDHnF2HrgYAlLNFmomDbIJI=;
        b=EGOv0hq5PCoPJEowcKt17+nP6l76r2ck22gXS7uKPX/Dg041soRpkbP2YXfpT5Lr1h
         mR2d7CJBxaP6v5WlgTY8sC/xEr0KIzwo14fcPfFVqiFPlen93w+1xGWAi76zcwxy9wSb
         c/xQE6lOo7Qfsl9BMjwx/MohYLOvfObrrOWhs8UDKlG9UMWsbjNr1DZWUxBE0KC/C7pu
         t+djMjK+ZGIlz4NzKmgF/9swngAl1BYzgwF2JKMAHNfqjfTzar0v9LiGrGoajqG3LcDP
         jMiG0sk0/VGgnCpceYiEv6DINNvzPJPYhYmHexfHkM2L9xvTdmexlmPGu1Nw1w3D0qGs
         TanA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=LGQYja5j;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of decui@microsoft.com designates 40.107.132.105 as permitted sender) smtp.mailfrom=decui@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:msip_labels
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AO2of6Bu4aBHRQxMNf5UoDHnF2HrgYAlLNFmomDbIJI=;
        b=VsuMHuxwm84JlVjdzAKc8o+xVENp1MV/hHaZnpL3I+aQBavjk5Fa3Kg0oGNTtaqn+Q
         7OVJS/z3iYboI7t1BIV9jAnWR+gX1JGHlOTX50Fcbc02JvD7oR6n21E7weAZKRS/piyb
         iVSbOq9LX65Jh3JLYaCJBBB4aeOa29bCTFaPbeIfMOLIW84uWrTmc0BBh+laMNN/PrQc
         ZZ8acaKRPOYL/aA+J680UXsJ8UMZz9aJfsXa78b5XcgIuvr3sESUGoN4brAzvURJXtnC
         mbTXqTCwkid+W8dA5m0yYfqygKdbyKr6JDnUjRwt7AmEKD6Fs2To2ycuCDLC/AuI3A1y
         u3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:msip_labels:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AO2of6Bu4aBHRQxMNf5UoDHnF2HrgYAlLNFmomDbIJI=;
        b=EMs8D5CB0y+wFt437huWSQ8Vu3JVwe6rBh1WpKYXhcKXoMCXA0GxsvZPDjBlln1PsY
         QDc+F7pyuZQ9sI0XoIys+6zSjQkLbEkEqI/YK/BUQbiY6p7jjjRbSPdm2T03oujPZxl9
         s/QBotdBJ5eP/D8KO/v1lDqCQbf3frRieR86wbL8EBsmrkaR1B+hOQnSJRg3yWHq4PSp
         scqQA/Fy9ejVHNHiAYIV4aPFYyvCMs+5eeDrBWSSqpIwUkYUbAKJyGHu33YoaRIVQeea
         nwH/uHZq1oDnXhsRPD+gbi7VbPZAVMf61vqAGG6E4/Tkyxp369RbQAf+R+Aeud2icaWV
         hCuw==
X-Gm-Message-State: AOAM531dxhVpuEf7GKVee/nED9sp2vvHWGkM8iJLvTf9TjNnLBx3l8r0
	YLG5hQxJpBWosbmgqeqIUoE=
X-Google-Smtp-Source: ABdhPJymqWKemdxC8F+mjLp+f7rlWepri87c56N9wcXdRwA8rF7fO66JObGufXZTWHNgNP+6yqzKzA==
X-Received: by 2002:a05:6602:2e0e:: with SMTP id o14mr15387486iow.164.1590943803240;
        Sun, 31 May 2020 09:50:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9108:: with SMTP id t8ls2950713ild.3.gmail; Sun, 31 May
 2020 09:50:03 -0700 (PDT)
X-Received: by 2002:a92:9ccf:: with SMTP id x76mr1396981ill.50.1590943803053;
        Sun, 31 May 2020 09:50:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590943803; cv=pass;
        d=google.com; s=arc-20160816;
        b=KJdhSJXkgWZsAW9fkLgZa6S22n+Nva/6QV6N7YCMEiNc/LpeV3HWLYCVhL+4T4g0kU
         KEYKWcELhytzoXYU3NewxoQ8KO1FbohqUJuqncy3t4UtxKJfUTSmsedDlhAbvZ8gNro9
         1hqM/BhOnJkc0aKvxQEIq/QJkexCoUqcS9iHkKyArKqXHwmf1wY0QDU/acBY24rXh89t
         HZS/p9YQlIcGX+loy+BnXpCI4pRTuza0s9+u/nBDGfW7bXUEFt3BCXs5T8HuiNfutXle
         05f6AqTmbVPpeCPdqXrfsXtwqoqRVXnsLEUbxmEoBwQX1/qh9sKRFDhOl4F1ZaOygLGw
         FJtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:msip_labels:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=QG3jN1EMLoVFl055e7XVcrDgjRHCaZXEJR2KyY1CIRU=;
        b=Dz0OckplHO92AFdRC4lbBKnFsLpJcmcwMMzYp7JqRo881ZLI6Tmm/0FOeI3V/RYUqH
         j700g7WS1teiLiRd62eBXY/k9ouqFAnjImeGg7yCPx+uGdwBF0CqXTu6iswQ74OguuyO
         D03ycWZwKYw8ByiZbkd7hufc4Ef2M/o8m3F5R0eEt8Fav6pxF86q3nl39sHnfqtTuHNw
         QuFhXHADRnjiQvKCPx0kk7ZQ9DkbPZf/fz+54Wk49QhOw1xqlqtqxHb0hOSvew8bD0MX
         oFDNQ7rElrP0gTD7nrb0G1RApz88tjNgdsu8shDX5tLQeuBIRng0Nk4WxS/r/txK3D6e
         k/aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microsoft.com header.s=selector2 header.b=LGQYja5j;
       arc=pass (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com dmarc=pass fromdomain=microsoft.com);
       spf=pass (google.com: domain of decui@microsoft.com designates 40.107.132.105 as permitted sender) smtp.mailfrom=decui@microsoft.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=microsoft.com
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-eopbgr1320105.outbound.protection.outlook.com. [40.107.132.105])
        by gmr-mx.google.com with ESMTPS id h14si983339iol.1.2020.05.31.09.50.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 May 2020 09:50:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of decui@microsoft.com designates 40.107.132.105 as permitted sender) client-ip=40.107.132.105;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dtzBMnvChGuHw3T7rwMD8jU/W0RUVX9VW6qL84Qx0f8TcuPjG6xLn95KEYsfOf2VJl8Fgn/d2LGnKnqO9jsU5iQUx2C7e5/OizhpmcaZl6bzJPmCCQQqjopgboUcWspwhNhkqG/FdfQJxEDFW6DrOxox46RKYmyWmOVUGE0V8HUVpQRBBWoTTJoEW9j2E2aM8JtHkRUTLCZ0EvgypmjFtuQsmLbbC77RrJXaT8twvPSum2duWQ6sn5Sm7l02flez/Xljy/c4SIkRufg/AbbbJ/jty+nvkru402ywzU1LzdDN5j1qSLo/2WIDiZdPwheeOiaVKUY+KuYHZco2rJzb1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QG3jN1EMLoVFl055e7XVcrDgjRHCaZXEJR2KyY1CIRU=;
 b=ZRJVaLi2FGDc1Ystnw/NyGSyWyMd8sFC++/b71rV1K+Cl0F7vF3dKW1hzyAx4UyGtqf+BmMPaC55LXpbuG7j6YBf1wd/2PPMNq/R9W9zFy4dCUbGDYy67J8NyXwgYKlt9lvxHH1op/fjnotl4VU5rbqHgKhP5x8QhZop+bkTKI2170i6770vqg1QYK3tvK5Ohk+w65kY7+3ZUqucid/zGbTSAkcvxWPJg4Y11cDCb3CNkgNR47PFPLiBVocCgdxHrZweFGUvFtQVnwm/fSa98/L+3AW/Q/KyPbwVn8wpnee2Gp75ofU1Izn0OZ3E+DAOShoYMPB4WpVD5YsvZoajZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
Received: from PS1P15301MB0331.APCP153.PROD.OUTLOOK.COM (2603:1096:300:83::10)
 by PU1P153MB0201.APCP153.PROD.OUTLOOK.COM (2603:1096:803:1d::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.7; Sun, 31 May
 2020 16:49:59 +0000
Received: from PS1P15301MB0331.APCP153.PROD.OUTLOOK.COM
 ([fe80::98bc:8bc3:2914:74d1]) by PS1P15301MB0331.APCP153.PROD.OUTLOOK.COM
 ([fe80::98bc:8bc3:2914:74d1%8]) with mapi id 15.20.3088.000; Sun, 31 May 2020
 16:49:58 +0000
From: "'Dexuan Cui' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kbuild test robot <lkp@intel.com>, "tglx@linutronix.de"
	<tglx@linutronix.de>, "mingo@redhat.com" <mingo@redhat.com>, "bp@alien8.de"
	<bp@alien8.de>, "hpa@zytor.com" <hpa@zytor.com>, "x86@kernel.org"
	<x86@kernel.org>, "peterz@infradead.org" <peterz@infradead.org>,
	"allison@lohutok.net" <allison@lohutok.net>, "alexios.zavras@intel.com"
	<alexios.zavras@intel.com>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] x86/apic/flat64: Add back the early_param("apic",
 parse_apic)
Thread-Topic: [PATCH] x86/apic/flat64: Add back the early_param("apic",
 parse_apic)
Thread-Index: AQHWNwPAxzgWHQ3PPEakjaqT5Cd426jB4GpA
Date: Sun, 31 May 2020 16:49:58 +0000
Message-ID: <PS1P15301MB03314E6522DF5EB98B8D0C84BF8D0@PS1P15301MB0331.APCP153.PROD.OUTLOOK.COM>
References: <20200529063729.22047-1-decui@microsoft.com>
 <202005311202.8nrEgV6m%lkp@intel.com>
In-Reply-To: <202005311202.8nrEgV6m%lkp@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=true;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2020-05-31T16:49:56Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Method=Standard;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=Internal;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=70a46e78-3c94-448c-ba01-06e233189390;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ContentBits=0
x-originating-ip: [2601:600:a280:7f70:9d7f:a4f9:926c:302b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fcdbd042-7b02-45c4-6596-08d80582a7aa
x-ms-traffictypediagnostic: PU1P153MB0201:
x-microsoft-antispam-prvs: <PU1P153MB02012736119615EC87F54AECBF8D0@PU1P153MB0201.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0420213CCD
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gj9chn6lEQie2S/iVSZp79jqBWfjs8dSuG87BKrd95tay/mGxoldpsmwVozWtdyty0qndTeugKwk4/6e9RNG5VjAe8dB02Odw4WKyKtuQtIWuZNXonFp2u4azK6abnRqNyeiyfkM3vDGvRizrWhgsAoAP7vZgK9GFXprA+wK93w1vAjEHoima17f0iMBdut5Bd/O4F8A4+LE6wdASHnG5LtM8SalXgrONyjki5uf/SmPZqYQ27Mi8g5IjFECQ4iiaKC2bgrjc1uSI2IFCHobsmi5fbek6lNG8UQBlLuX0WXE2v/GQzhupKvFrDLPS6yRUxl3hUIGNE8LJF81yrryRWIe8ceWbPRw/AnDd+3xpiKWSk9A/Swzng6cGgzagnYI
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PS1P15301MB0331.APCP153.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(346002)(396003)(136003)(39860400002)(366004)(376002)(83380400001)(6506007)(8990500004)(8936002)(10290500003)(186003)(4326008)(86362001)(82960400001)(55016002)(82950400001)(8676002)(33656002)(7416002)(52536014)(316002)(7696005)(71200400001)(478600001)(66446008)(110136005)(64756008)(66556008)(76116006)(5660300002)(54906003)(2906002)(9686003)(66476007)(66946007)(921003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: sNPRxpAwcDMEgEzs4vJI5Cn5ZW0/XvPpC/a2XtzERmQE3JuQO6douyCgrHZAPX92hEGCAJPIzNjO3rT9VS+T5CFpHt39Qt3AgN4wU3xJXbOYuXro4GehP+qcqxmOOsY/ZxYUM7/fbdM1CCGtv0j1t6PR5dMEAUcL80BHwjMgckV9AV3dUrzwCurMwN9UeePQGnNPNbWVPVB4C5B2McuwzNpPkKWtZ7ibYfYb9jw+cNH0sNAAGWHGRXOuAxC+/rhsGZSPsnOJ9JiaIaP6EktBWP9w7c/yoNC4o/NIajaOfXUQWlTUTqIjfFqAO/8OF6Lw8X0JRRSEnzp0rucA0WLriqiBtDRrDoYjs398bo1ktj8EkXCNeUzBY3KvnWfCNQMiCkiNqHotvpwmGYkzl0x7gF+5152Qi3rOlbjSqPUleEG27cPNU+p3HuiASy5hqigGHZnlzflT7KgMmsgLOMrmhEnJK4WbRlSf0Rv4qBwnKWPDHiB0E6bgzn9XRmsMA59/3YKMD3wtp2jEcoMKVQDT+a/LIxGHjloll742qyOkLJOTz8m/epNSwW4IOwLGs3un
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fcdbd042-7b02-45c4-6596-08d80582a7aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2020 16:49:58.5866
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1K4H+TZNI7iNLZrncmWmMjkn+34D/h3xVQgsQqy/r+9IVwZzKele0zhEM6zVifz8NQOpaZLeBRrKShYQvW5A+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1P153MB0201
X-Original-Sender: decui@microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microsoft.com header.s=selector2 header.b=LGQYja5j;       arc=pass
 (i=1 spf=pass spfdomain=microsoft.com dkim=pass dkdomain=microsoft.com
 dmarc=pass fromdomain=microsoft.com);       spf=pass (google.com: domain of
 decui@microsoft.com designates 40.107.132.105 as permitted sender)
 smtp.mailfrom=decui@microsoft.com;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=microsoft.com
X-Original-From: Dexuan Cui <decui@microsoft.com>
Reply-To: Dexuan Cui <decui@microsoft.com>
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

> From: kbuild test robot <lkp@intel.com>
> Sent: Saturday, May 30, 2020 9:27 PM
> [...]
> Hi Dexuan,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on tip/x86/core]
> [also build test WARNING on tip/auto-latest v5.7-rc7 next-20200529]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see
> [...]
> url: [...]
> base: [...]
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 11.0.0 [...]
> reproduce (this is a W=1 build):
> [...]
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> WARNING: modpost: vmlinux.o(.text+0x55232): Section mismatch in
> reference from the function flat_acpi_madt_oem_check() to the
> variable .init.data:disable_timer_pin_1
> The function flat_acpi_madt_oem_check() references
> the variable __initdata disable_timer_pin_1.
> This is often because flat_acpi_madt_oem_check lacks a __initdata
> annotation or the annotation of disable_timer_pin_1 is wrong.

The warning is not accurate because flat_acpi_madt_oem_check() has nothing
to do with the variable disable_timer_pin_1.

I just posted a v3 patch to fix the warning by adding the __init tag for 
flat_acpi_madt_oem_check().

Thanks,
-- Dexuan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/PS1P15301MB03314E6522DF5EB98B8D0C84BF8D0%40PS1P15301MB0331.APCP153.PROD.OUTLOOK.COM.
