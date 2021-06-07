Return-Path: <clang-built-linux+bncBD36VNNTQEDRBWF67CCQMGQEJV64LOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBFE39DD97
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 15:30:01 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id b9-20020a4a87890000b0290248cb841124sf9001268ooi.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 06:30:01 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623072600; cv=pass;
        d=google.com; s=arc-20160816;
        b=t4lsGoGcLjpGl60E/mk6+vyMNkTmer8Lyc9wk541gbuR0R7Nb0WS4bqQPlKB6rQZCs
         tJuP8b7dJIULH+TQvcDPmo+vuyccOrk7AaVH/bWKNbkXtcJprV4CVf+QLLT/oGpo60qe
         tYmHJFc3MO6gjG4PMSzMFy7egUPCYJPu1MlHWFK0y1y0cS6o4q1ljA2ZQsuEss24Kv0n
         N2lh8AsNPExT0pyJAlIGDiZXINfjmlRAtKLYM/UTveeFKX5vfiVGAnkbUxK9na7wQZKz
         PqQMM3iX3htYhYRreFJ8fOzmJeEff0uc0XybtRsXxbB2emkQpgaOOTRl5Cn6jQo1kf8s
         JlJg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=eMLBE78naj1VtxTHEfkoIYpNUABNS6/2Kvsc3wXNd7Q=;
        b=xqPosOTDW/mtKWxuh5qqK2etXfD/3uyyr7UXHrjvLC6uoRg7UJloQWIYsKaeiIAAy0
         J2UyL8HMNrVmX0aajCDGcdMnZKUt3DRvSrjSSXfLjyGdcCes+mkKD+svQzbke0H50++W
         m15UFNzqS5bub+i27yRdHOVvEivN3GzVU4IMA8T9PbO9wMCboc5ps/RFM6Sj0en3oe2b
         /jZCiga5p0BUF3iate9o8NV23icjWaX/p5xbIn2BkeZSy5KReA4/MKebVbOoSON2uK/n
         yM8Ggab6ESpBB1fXyrhpOJRGWIqma3oPLN156QCo8aKBoZJEj7x0ck1i5A/l+IZiofuV
         AC+A==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=BurDxBNb;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of parav@nvidia.com designates 40.107.243.87 as permitted sender) smtp.mailfrom=parav@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eMLBE78naj1VtxTHEfkoIYpNUABNS6/2Kvsc3wXNd7Q=;
        b=tfKXVQHOtyg9GLMuc/JVYf3if9apKbKx/LPTe652HwAWAg6FvoqoQEhWv0p0qjQ8ZT
         2BbEHdHdWQzx13JUjF6//4ODmzyqJ1njU9oPA8srof15a+iF6wmOxKpLFMxDYrushmcL
         nPc9zLdvSKMhIVLZGIlwpnWGuw+GuD3frn0WPOfO/5QOpl1mqGDpAYXBJ5uiseKKZ6dq
         378JnkC4oj5iWO4YdtCPhjA5PVmz+573WwzlktekoeKqP9Svi4Lm/er4JshE7/wT6e2H
         wIyuT3/zd8oglKcRsVlXyTbnaEws/KMkFN5TGu1/2aB1DsViwD7sOR0h2Z09zOssYcgb
         GGoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eMLBE78naj1VtxTHEfkoIYpNUABNS6/2Kvsc3wXNd7Q=;
        b=XEUguhlJhXpXWxW3UUTE/QYBnWgl+h73nlqGuH6zX5SAHXwT7LTHLUmkFIZoXj3/Ny
         8RNQy3U5czru01yhj8TtdGNsTISn2w7jIAo3xKlwyhU8bebBQy7t6A8Ivo9drWBSyEB4
         JrB/vg3XdZFBTJDT1wGqQSQ6R0+Dgjj54sNy8GBryytz0LA8wk9t5HR781D0QdpZesGN
         vq8jGNV69AlUpyNRREDv0nzPTnzuuKQ8c+kCJBCqpMhB97YO8Gk8gIbdA9zPG8Nmb1Tf
         6MuWCnznwUdlBE6SJHUAkfa+4FsA8rZ6RSo0sde3G3Z2qS+T23OchsAYcM9qEOCEA+VH
         22eA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IOklnng16oko1DWVlbZWqDgizkIxckEm+w2PXQJLr0DB23Y3G
	nsoSbNKwPqWRleEA+j2khLc=
X-Google-Smtp-Source: ABdhPJzjh6gldOMf2SYNldPUoFEGJzyY+2jdPggFOaB4IzbnMTWQUmgaGb1OT6af1hCE/bgzPLoHtg==
X-Received: by 2002:a05:6830:3497:: with SMTP id c23mr14487041otu.98.1623072600253;
        Mon, 07 Jun 2021 06:30:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:449a:: with SMTP id v26ls674385oiv.8.gmail; Mon, 07 Jun
 2021 06:29:59 -0700 (PDT)
X-Received: by 2002:a05:6808:9ac:: with SMTP id e12mr19922863oig.60.1623072599875;
        Mon, 07 Jun 2021 06:29:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623072599; cv=pass;
        d=google.com; s=arc-20160816;
        b=y1OYwbuXaiKqfT/J3qnBsyRmEwEJjsMTnR+JhiL5+9BO8D4W08HUoJmV4GpKso1jps
         RLAk6l60qWbeMkMEjWnPNw9oj16c+8HpSC0tfrziG8cg8qs3kOjGMgrMaZd1oHjjl+Kh
         i6psjC4nczhFta7iiEI1OuPbkrInUn4Ul0EaolB/BvwfUfBfLXXDF3KdJaDA4k0CeND9
         X1Bf2nNGXlJNaM4q/30+DGruWb2CGWza5eEQzne6dQ3yTtzphDEskvUNOe3FFUQskO8Y
         3oIkOX84fEyO0mWh1QEMIRlWco0yEfcGEVUK1N9DtrJN61jU5IjOsYJnAXVJtUKB8PlF
         Yixg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=fOHeeB0yY8Vu6Q/GObAJe7mirW8YqQOUX5YUM/Ifvq8=;
        b=S+rRBWJN3div4Z1zOM3aQfukSNx6O907byDmcuQ/cSeBZKprfRbrgigOLvXIPac0IZ
         VzYzZaKEqP5xmnkxWd7P0EW55m9YEPlbbe5NBK+hl8rvC1qXp89BipmSSyWgDyvnYlAg
         LhNiXfFM0/QagfGshyn0gE3ZjGmCJ9oviV36HgKzxVcdwan27N9OT/Sx7s2ZX+8jp6/W
         +rIaNfUTwHLm3HfieX2knUDe9dFAlNIRuMTwkMz0oqBJKA13+H5w0EPtfgCnxk5+0S3Z
         0K1hkTCMLu15TIHlNywMnL/SS6fbZEefzgqq/6cHnyToVm7CEz9vyvBnUAiUDeeDuBZk
         sHpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=BurDxBNb;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of parav@nvidia.com designates 40.107.243.87 as permitted sender) smtp.mailfrom=parav@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2087.outbound.protection.outlook.com. [40.107.243.87])
        by gmr-mx.google.com with ESMTPS id k4si1027502oot.1.2021.06.07.06.29.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 06:29:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of parav@nvidia.com designates 40.107.243.87 as permitted sender) client-ip=40.107.243.87;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lZ4DHZgfa1lrnGl14jBix6GN2QyW7tfjNWOs/Sin/b+VFiFHhU4uYok7SLqoRNog/RsUzcBoYX4suG9cM2DBKYVx1LcfCFd2nU9SHlA7XQgO+yJjKhL8H0O3xYZ9oY2mHjbWL/ZsLxEfeMpBZnasMLLXQdlf5XBE2LqiUvfZw9OU9RwevYc9ebALH8LUsngcy2Tn+7TDaWD7rml9vmL02eVJv3LvgHIS4KHmSirAIzp/8B3wcKd0kTNbdI9Uir6ecIVpJeyLzIGZnBa5/e9qRx+Z6kvg8FAWavEJSkOIpTTmK0QIKRaT4rLUPqF+DvhMG4NpG2beMcslSnDwLpD0bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fOHeeB0yY8Vu6Q/GObAJe7mirW8YqQOUX5YUM/Ifvq8=;
 b=VSgW7CussRhvIpZIjg1TE1eeTryYvID9f+nBfTjqfP5Qg+HCoxWtszh5cqWPvakLc0qilYw+bfcc76PxnwYy+g0WXIhtxnTsIXyugppPvy14vg70kw5ii5rdP/jVpSeMb0Mqwm/vEH7eUjm2h3ohJ9TuQib3Y3QQ9Oudy8/H8BpHR3ctQE8qhuqaDW35xEAAwdW5tITJF76icL7AdBGhTQrUPFEQKiIrhnAqc5q9fKIy02e68syxb6pemrtdhvWh1gulmYmiDI32URAR/MjB+KtOvjVXo+xNKk+oarjaOYcKsaemJXJADtSlbPIukrf+ZG2hwLDFilBjMR1mFgzLuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from PH0PR12MB5481.namprd12.prod.outlook.com (2603:10b6:510:d4::15)
 by PH0PR12MB5450.namprd12.prod.outlook.com (2603:10b6:510:e8::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.24; Mon, 7 Jun
 2021 13:29:58 +0000
Received: from PH0PR12MB5481.namprd12.prod.outlook.com
 ([fe80::b0d9:bff5:2fbf:b344]) by PH0PR12MB5481.namprd12.prod.outlook.com
 ([fe80::b0d9:bff5:2fbf:b344%6]) with mapi id 15.20.4195.030; Mon, 7 Jun 2021
 13:29:58 +0000
From: Parav Pandit <parav@nvidia.com>
To: Leon Romanovsky <leon@kernel.org>, Doug Ledford <dledford@redhat.com>,
	Jason Gunthorpe <jgg@nvidia.com>
CC: Greg KH <gregkh@linuxfoundation.org>, Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>, Adit Ranadive <aditr@vmware.com>,
	Ariel Elior <aelior@marvell.com>, Christian Benvenuti <benve@cisco.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>, Devesh Sharma
	<devesh.sharma@broadcom.com>, Gal Pressman <galpress@amazon.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, Michal Kalderon
	<mkalderon@marvell.com>, Mike Marciniszyn
	<mike.marciniszyn@cornelisnetworks.com>, Mustafa Ismail
	<mustafa.ismail@intel.com>, Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nelson Escobar <neescoba@cisco.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Potnuri Bharat Teja <bharat@chelsio.com>, Selvin
 Xavier <selvin.xavier@broadcom.com>, Shiraz Saleem <shiraz.saleem@intel.com>,
	VMware PV-Drivers <pv-drivers@vmware.com>, Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: RE: [PATCH rdma-next v1 14/15] RDMA/core: Allow port_groups to be
 used with namespaces
Thread-Topic: [PATCH rdma-next v1 14/15] RDMA/core: Allow port_groups to be
 used with namespaces
Thread-Index: AQHXW3XTgmUrShoLP0aSfA0ttnjNH6sIiqTA
Date: Mon, 7 Jun 2021 13:29:58 +0000
Message-ID: <PH0PR12MB5481C3DE73C097E938B4E5D1DC389@PH0PR12MB5481.namprd12.prod.outlook.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <a1a8a96629405ff3b2990f5f8dbd7b57a818571e.1623053078.git.leonro@nvidia.com>
In-Reply-To: <a1a8a96629405ff3b2990f5f8dbd7b57a818571e.1623053078.git.leonro@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [49.207.218.7]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f273cb05-4e94-4352-e562-08d929b85868
x-ms-traffictypediagnostic: PH0PR12MB5450:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PH0PR12MB545053E293DAA6B3234867DFDC389@PH0PR12MB5450.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z5WuCjxhYh6DXCA4PXlcDNW+5zogulLSR6xI4g7LQWnXizMFoAsj6QYHXJkolupsUlY5zRuGQHsm9ItqGL1+CVVFnt5mOlu23P+fr9UT7OAcdDv7VBFiK7LDVgioiBbnAfGNiP3/D8Fp3CvQ8hGJUEiiTNo0Msvtrz+5btGozMApEhq70nGwgzTLUJW0oDl2hoFVfBdm3cuCrdDu5lKdguS8dxFCS0YlaZkWFGjFxx4YaTcxqnI0g87i4jYoHb+6mCsTXxud0eRwIZIpokT2OTuDcq3I9ahDpO4LWaTQUb3BupfnVLU0282mS7fROeLJX91ZYZVJdZq1nn66aZbUrdyGadfxTs7Y1S3QJpNwo9GDTig8at5ZOW5kc+/4IgBdTWENssW3gllkXScc85C0LxxUEBjR/vsfzaa38U+E9kA9WWVfAhWBSCcUF7m0Ggye8UR0bKgNJ13A5MrYZo/BsfjZPB6Gtm5BT7e75/Z+xUxkOzf+vz9lz1WY+7mGiO0zGcRb/PpMpnH1YiIP+h/dqlLgrdUShMLR1ScJngIzWyq4n+aNJTSZj4NKG9ESJ/yySDC1XzCNlO/po2ifIYwcEXo2WZ4tui13gsk6+qilJr4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB5481.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(376002)(346002)(4326008)(5660300002)(55016002)(6636002)(54906003)(110136005)(7696005)(52536014)(6506007)(316002)(2906002)(83380400001)(7416002)(71200400001)(9686003)(86362001)(26005)(186003)(122000001)(33656002)(8676002)(66946007)(8936002)(478600001)(38100700002)(66556008)(66446008)(66476007)(76116006)(64756008)(55236004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?pn1yZUeOj0SUA72s1TFJYYSBI3mEmwslXqhI8mi4X5n22CkTfEGHFd9mL5PW?=
 =?us-ascii?Q?FUkCt3qlBang+n4AohUiFA5mWdgRvymabJm1SvJcsilLmiuMolX7hGhn3Xsm?=
 =?us-ascii?Q?8M5n6XeFkb11aMbxnOCXiLbqM/qn3a8FGjpE5s1HDewJOYpK3Ny9GeD6Bxwl?=
 =?us-ascii?Q?/X82MivEvxlk3dmj6L4czPh5kkC/TgG9FPo07wShhHmEqhi29/0z74BGt4hZ?=
 =?us-ascii?Q?LsXWbCCFoh7VOEgsGUhX/EXb+OLkx669RfaCh+al6+9bU2+gznJMXGySeDXR?=
 =?us-ascii?Q?M5DcbjQVyXdZXEU/V9A6oJNMqcdqt7F7ITpuwubhUOykWjKQkvBC5N/4HQoP?=
 =?us-ascii?Q?jIUQywRv1Ihx+fvPGFsdK4BpTBPGYPwLSv6474j0TVV4phGAk5wb0F3CLNBh?=
 =?us-ascii?Q?046U/pHnqnEbyzbLxeRsFcsW3MlmdNPiyvPK6RPFGtbzY2cE8ntgLfhvi4vn?=
 =?us-ascii?Q?TW0hZzkDi+0ZbfI9CNen79zTjLIUHQFs5I6jChpSjPQOUq5diB/h5pM3uvy4?=
 =?us-ascii?Q?KwOUGcHPgB2q+f519nqqdFsrCq+DYqT+OTlHxn3Lb/PeavkmCuSR+XMQ1K+a?=
 =?us-ascii?Q?mJIRhwaxBG/TsLt5JvFQcsUQ9obaE0eC01aRo1h9RZLb1hwkvf0/nkmpumK9?=
 =?us-ascii?Q?Gshzl+L+hri91LRXS8KRDWJkKRAwJuiwFi1j+u4OqVeoC41xdxmitScXG175?=
 =?us-ascii?Q?QpIDHFFQ4ojF0/vWYmqhfWTKwqPo1CVUW5qBcPkYIN/zZ47u8uao0HJfRw4t?=
 =?us-ascii?Q?FWUtfxPFD+jaUVrw5L9pZ8f26eQ7BtnJP5YLxcpadEhHYyMaqn3tGBiBb9Nc?=
 =?us-ascii?Q?XZzkuJwS5RT9/DFobUgv2GADfW8uH64Vm/TY4ZjHpV20PoSThUAlzaxN0Y4Z?=
 =?us-ascii?Q?ZRZG0s32HAUajOwt1U0WTyqjrrL6/s1l9sr68WHjo1ofmtVX/EJU3MIDbpfU?=
 =?us-ascii?Q?MWsmc0t0oexjdNnmjIHYTKrZN2J130oVFRz+cbTyx0A+kT3nNRLYnTt9bSoT?=
 =?us-ascii?Q?DSC2R+UYgJyToKUIPjFWhYdScVonSBsCruLuuYiAwdBBSEGuvvKJ95d80mCU?=
 =?us-ascii?Q?84H+hGAsOuUIC723f1pQQv/P+SutpWG0PzkkS/6x7vl8b0GCGso2VW4ZeNx2?=
 =?us-ascii?Q?LmR/IIVroKWkbil3oi2+B2OXUHcO5Kze686UX5nMwJg0+9PIBrubjIYfUyyG?=
 =?us-ascii?Q?COYxppi9OCWnZp7CHqfSCk2+Jy2cqq4CEBk7F/g+7mi8wdkrPkS01GKyIBK/?=
 =?us-ascii?Q?xz362A1kHfbEuCmEevpxvNkOUzWsqVFGp9Lcobj4ybTnk6Coa4/L7m/GzX/p?=
 =?us-ascii?Q?UKLqlt2v3vbv685sYgZ9futj?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB5481.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f273cb05-4e94-4352-e562-08d929b85868
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2021 13:29:58.1037
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: njFbctC6g1YJFqVoKAwPlCFrJICxTnRfCAHt2wJcT2zJgEGWv34oCYd1b09H694iBb0BY5q4BFthDFDsNJeF6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5450
X-Original-Sender: parav@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=BurDxBNb;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of
 parav@nvidia.com designates 40.107.243.87 as permitted sender)
 smtp.mailfrom=parav@nvidia.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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



> From: Leon Romanovsky <leon@kernel.org>
> Sent: Monday, June 7, 2021 1:48 PM
> 
> From: Jason Gunthorpe <jgg@nvidia.com>
> 
> Now that the port_groups data is being destroyed and managed by the core
> code this restriction is no longer needed. All the ib_port_attrs are compatible
> with the core's sysfs lifecycle.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/infiniband/core/device.c | 10 ++++------
> drivers/infiniband/core/sysfs.c  | 17 ++++++-----------
>  2 files changed, 10 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/infiniband/core/device.c
> b/drivers/infiniband/core/device.c
> index 2cbd77933ea5..92f224a97481 100644
> --- a/drivers/infiniband/core/device.c
> +++ b/drivers/infiniband/core/device.c
> @@ -1698,13 +1698,11 @@ int ib_device_set_netns_put(struct sk_buff
> *skb,
>  	}
> 
>  	/*
> -	 * Currently supported only for those providers which support
> -	 * disassociation and don't do port specific sysfs init. Once a
> -	 * port_cleanup infrastructure is implemented, this limitation will be
> -	 * removed.
> +	 * All the ib_clients, including uverbs, are reset when the namespace
> is
> +	 * changed and this cannot be blocked waiting for userspace to do
> +	 * something, so disassociation is mandatory.
>  	 */
> -	if (!dev->ops.disassociate_ucontext || dev->ops.port_groups ||
> -	    ib_devices_shared_netns) {
> +	if (!dev->ops.disassociate_ucontext || ib_devices_shared_netns) {
>  		ret = -EOPNOTSUPP;
>  		goto ns_err;
>  	}
> diff --git a/drivers/infiniband/core/sysfs.c b/drivers/infiniband/core/sysfs.c
> index 09a2e1066df0..f42034fcf3d9 100644
> --- a/drivers/infiniband/core/sysfs.c
> +++ b/drivers/infiniband/core/sysfs.c
> @@ -1236,11 +1236,9 @@ static struct ib_port *setup_port(struct
> ib_core_device *coredev, int port_num,
>  	ret = sysfs_create_groups(&p->kobj, p->groups_list);
>  	if (ret)
>  		goto err_del;
> -	if (is_full_dev) {
> -		ret = sysfs_create_groups(&p->kobj, device-
> >ops.port_groups);
> -		if (ret)
> -			goto err_groups;
> -	}
> +	ret = sysfs_create_groups(&p->kobj, device->ops.port_groups);
> +	if (ret)
> +		goto err_groups;
> 
This will expose counters in all net namespaces in shared mode (default case).
Application running in one net namespace will be able to monitor counters of other net namespace.
This should be avoided.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/PH0PR12MB5481C3DE73C097E938B4E5D1DC389%40PH0PR12MB5481.namprd12.prod.outlook.com.
