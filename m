Return-Path: <clang-built-linux+bncBCN77QHK3UIBBGFBVKDAMGQE3E4BSRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5236B3AA7D6
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 02:00:27 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id i3-20020a259d030000b029054c59edf217sf5802476ybp.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 17:00:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623888025; cv=pass;
        d=google.com; s=arc-20160816;
        b=G3i6FbXsg51Aqqd+OspVjE3U6XwH9y8xXdL7dzQgysmqvzP4TgRbPaTrQPP6scyGZA
         jN0JkVi/A12BX4JA5ygr4ZlPrr+Hqf1t3GNVLwF8SUOmYb9Pg8KOqWFGrpJuNtaLViwe
         +UpVAFfNo68x5iNqjvFkl1wDCoUQKg2VOMJu+21GPrF0+KEC+Cc+mXJOEBFa+QPxXasw
         VXl5bW9Xksi9mlu4mc6lG7hJgOEbyl4CnE7A49IS+1AG4Xte/38sPd97zLRsKMeVDuh5
         F4AocJK00rm5w7UyqKCJKk6C5nmWRRS3YVXPIhrgdPIQ65h5Bct+M3Nc/2c4SgI3MnTC
         K5CQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=mSu0sUP2epMqdmgQdlgZv0KB4umH+uEl4gPkjv4wF/E=;
        b=sB+aq9SOWEIJky7vDK3nai1Gg7G9yd0OIBKaeNMdQYId25B6SvGSvo8NjUfhcrch3F
         uJ2gTWzu31YyMTS3xS9Hy6RHpGRFZ+hjlUHWBkMudbntL7m8tY6eTt6S5E3UBZYkjmJO
         TAooC+Ue4NEHt5c9Z7H0dyHZ2l0e70BCxmKttrws+qXAEsx93DikHBMW5HC7s31Wb745
         ZFQD36OS3Q6hyzCbZGjw0nULqyhczZx3gX3WJPn0kDYmqRlMsjrgdxDwHpAYiAkcyGmR
         PVwWZmvB3UfsaXgBcEqec2ffIvo+WGGBti64prpnUsz6HNoY+MbSaEATboIDyBwyDadc
         aKkg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=W+MdN0xp;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.220.45 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mSu0sUP2epMqdmgQdlgZv0KB4umH+uEl4gPkjv4wF/E=;
        b=Y8JNWiX7i1KZ5YqR8kTKZb1L3GO5uVWnaKnguM8TB06z1Cjx6ZWQtpyXsWHK9bq6Ty
         D7ufAS2uI8TeimQyTjWMqlM/gaB3l1vvpk3ILKf5ckoFj2T+JUWoLwdznmXmKmbncNMR
         94RuYxU81GIeftsy8N6Z/y5LeP/Tddke1kenz6qCVJkFXA2e1+NRmOIDql1fl29OPuGy
         DhPk09sOOwt6Iu/0dYMrZ5S8nkRAxg8U/ZkcBq2oQD7/+KMY2ec03kEJuNPhyUYVyIOY
         BmH2/34W4wL29q++wePJ6X3cm9aHI/YuKVCx6l4jDlrpj2iQ6azuGcdf1KSIiH9gYM82
         boSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mSu0sUP2epMqdmgQdlgZv0KB4umH+uEl4gPkjv4wF/E=;
        b=Gj+bhINOmnr6i4MXdgmULxnF1Ly+1mHIIZk+UnQOD6fdHNapImAeLzvC11dZmieaqC
         j22YfMNUfUhwVIeQKeQG9q7trgMcT7Z019OAQSS7GuetwFTnuzwKJQyuY0zm98zfNCta
         NVYjoWg6Z19fGtNGl+1z1XbxQ07oZ59Eaao/6RkWUWFjqNQegLgZhA4vf6+r2DPOx1nZ
         niDZwriOcD3fU39e1UD3yd76uTFxHOnToMS7F35dAsLosCqYXSVE5WtSM7NSmhl8sJ1K
         gnua9xOQwNB2yCmXEZCRP/bxD3lP6JHc+mm4JDy6c6irnFDM1XQf3O/5svi/9NfvdyYU
         n7zA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53126yTDjHLxDG86ztrvSjP4bC4lzA+lM6ak5VBQT1rEdK3qGNmu
	IJ58SMELxYunP0y2pJXwWg8=
X-Google-Smtp-Source: ABdhPJx+WVWeJWx88d0vi2L1R4dBUrxsGvj8Ul2Uor3hQlrOTmLZBoZ/yIcZ3fbEM3zZIPA1e7gHrw==
X-Received: by 2002:a25:3d6:: with SMTP id 205mr2350074ybd.350.1623888025103;
        Wed, 16 Jun 2021 17:00:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7bc7:: with SMTP id w190ls1817922ybc.2.gmail; Wed, 16
 Jun 2021 17:00:24 -0700 (PDT)
X-Received: by 2002:a25:a4c8:: with SMTP id g66mr2174053ybi.301.1623888024571;
        Wed, 16 Jun 2021 17:00:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623888024; cv=pass;
        d=google.com; s=arc-20160816;
        b=S/0N8kLv/C9JrRM8CeARJHc+5F6+2F/Q8qbClM3Ucd6rlGl1jhlItJzhw3VkzMiVrt
         PF6XvHT/KXauxJeUBtHjtNQ00/mpfd8V3IY4rp6U2qqn0lboW/YArJfFLd76tcrEjSgv
         RWnRlulU0LOMk4OrtPX/lyhFfok4iUTV7D/9ZYFvbq1cnPoZ0snHbsiAbn3cDhkzo84H
         2W3ro1IPs6dxcDJm0/qvqcrxNjZUpdGKokVnPZMBRvTBqOGmnSbbc2DKokbaplZitiQj
         WOK++ce7+sINqLao0gVlygf44xlF+vZtvRygmVgbiqdIC6LIrStfwsaWbS2133BZQbiW
         UY2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pQzdxeEsIkKdClEggBpVB3GjuJOQi49GzSWOEnuo+vY=;
        b=SErX9EuHKQa65Ci7jcziOhXV83tKZ6VO/DoIlTXMydRvjLuz9QYPg+Km684medSzPp
         bCyfsL2aRXQr40ushD5m2U1SFoBwDPF/yZDl2Q6A5o4jYSJwm/rkaAP7f9E64bpUjZ2Q
         mhtNZM+PLtsxGTVlX+nPg8QV1aTN3BWaoAKFiTH98bBub9Oii/KRqMyBsmHhQDoWZVMJ
         1VFFekxPYe52/con6ScoEJUYoYqoMuybKIR6Kjp6aATUrCCnrpPVjxAKmMIppIAWRm73
         LNJb0dZheE//zsBVpKUFMRtn7t+6GU8+PSIsDlyi2CG7qFMxkgzoMHq5R6SO9QgfQ4Ko
         9PEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=W+MdN0xp;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.220.45 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2045.outbound.protection.outlook.com. [40.107.220.45])
        by gmr-mx.google.com with ESMTPS id q62si300187ybc.4.2021.06.16.17.00.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Jun 2021 17:00:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.220.45 as permitted sender) client-ip=40.107.220.45;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TlG/D4H0HtAH1E4W6cLxE0JJXfn+wd6oG9j/8zlRdDS5q6No4t5S8w+GiRrKvdmCShRAasqfWe60sZEoYY9Y05m3sd/tndLvrcjOnjLYv0S7ZtP90L2AhIdq9ubxn3nVX6ICQVp+FD/LsykjwBfbWpYWMjtHN3Hs6iaxW923h4d5QtEW9mDMUvhLkHsfeT3p3zcosYME5xZSFpk9SO3VAiutAlgN1cehCiuJ1qzprAbQOWJsUmzZUpUuGv+eZ1CqdCfwoGrH5yL5f1mkhOup7xJZUOUMn2Ha0/SsV4upko43JAN6/4FB5y+Ibca3OkDBe2YO0LBeLewN32ZRSDHJHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pQzdxeEsIkKdClEggBpVB3GjuJOQi49GzSWOEnuo+vY=;
 b=MTPn2Uy+ZAWTH69WZa0BsvvPWZTGmbyR6kAxFmDHZiWkEWhpJG+sI9NPP7nxuZs6bAtbfGO8/94W1QwgMu/Ln3GvGcDJaqlVd/zs2+0+HQLaT1RoLjYo1FwmyJu6MEwRbHhcvgz0ZE+xx1SWi3Q42Jx6xYzYxvtObCOsXvUe00Lf9Zqa7DWev0XLyrBU0BvNFZtT1BdUkmLGY/xIJLNmO6kEFYl2KDd3js9+uAH7yZTdnsjy/dL8DUubE1Y/K1cKYlqBVofDJg8NKHRlWweiXbUjf+Y4M3VwVjTNBWw1FurEZAW4v+Oo05IBVSeHlHO70FP/fXZfGC5oMDp0A1M7ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5319.namprd12.prod.outlook.com (2603:10b6:208:317::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.16; Thu, 17 Jun
 2021 00:00:22 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::3d51:a3b9:8611:684e]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::3d51:a3b9:8611:684e%8]) with mapi id 15.20.4242.019; Thu, 17 Jun 2021
 00:00:22 +0000
Date: Wed, 16 Jun 2021 21:00:21 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Leon Romanovsky <leon@kernel.org>
Cc: Doug Ledford <dledford@redhat.com>, Leon Romanovsky <leonro@nvidia.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>, Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	clang-built-linux@googlegroups.com,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>, linux-kernel@vger.kernel.org,
	linux-rdma@vger.kernel.org, Michal Kalderon <mkalderon@marvell.com>,
	Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
	Mustafa Ismail <mustafa.ismail@intel.com>,
	Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nelson Escobar <neescoba@cisco.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Potnuri Bharat Teja <bharat@chelsio.com>,
	Selvin Xavier <selvin.xavier@broadcom.com>,
	Shiraz Saleem <shiraz.saleem@intel.com>,
	VMware PV-Drivers <pv-drivers@vmware.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: Re: [PATCH rdma-next v2 00/15] Reorganize sysfs file creation for
 struct ib_devices
Message-ID: <20210617000021.GA1899410@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
X-Originating-IP: [47.55.113.94]
X-ClientProxiedBy: BL0PR0102CA0008.prod.exchangelabs.com
 (2603:10b6:207:18::21) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (47.55.113.94) by BL0PR0102CA0008.prod.exchangelabs.com (2603:10b6:207:18::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.20 via Frontend Transport; Thu, 17 Jun 2021 00:00:21 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1ltfSH-007y8p-2r; Wed, 16 Jun 2021 21:00:21 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3d9d9233-2c87-42f8-f888-08d93122e6b8
X-MS-TrafficTypeDiagnostic: BL1PR12MB5319:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL1PR12MB5319B127D5D57CF890791DE9C20E9@BL1PR12MB5319.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: esnk6tB3iPfzDro0NmtwA0nSJyoyT6hQz3HNFdZazLCslxdnZblSbdI+MYJkwwauNUrzY87ddLhmTbgdNM5LN66dFwu6cBqNT/b5NLjzjl6IhJqCCRj1pkZrSmmNGbCilyfoKPVmnO4eBmwGdL6NlCKlXqPKhMGeQdXREdk5fUOLDcaft4YBQY10HR+UA/xxcf+r5T5xjPC4TGoHOO2usIUOc6XKBEwrXz/mP/fLlWU7wmKl6Tkug6B0OCWRmq4Q3wyuAygL7+AvbfRK68B7B4sqjkKtRFBG84bXuC/SLBWCAHCZmzQPkb+S6Yxx+fdGvxMno3KGoy6ii+L4NTTj+E42ZCKfsR/3N6LU8GW13v2fL7wRQFiMx8DvaLcJdk5RhhSxFTlx866difTiwOxF54KzqpuVcb8K/sq66WT9fWoNjjXajZVztd6nOtmnt+mn3DLMqE1lw8m2QaLLqMHWTSyBD5z/wPxs9un/lwNhRHxZLLMxekiyjmQcJN3zKreiAWcBuUOCmJq51MqJhKgwdKsRj4M4sr0rgqnBk15xDbbvgWJSNkrosM7jxBlsbTsdRpkLoD52U61UpzNrSry73ejJD4efOMm5RXTi8Ue29ic=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(366004)(346002)(136003)(39860400002)(9786002)(316002)(86362001)(8676002)(7416002)(36756003)(54906003)(5660300002)(9746002)(6916009)(8936002)(2616005)(66946007)(66556008)(26005)(478600001)(4326008)(186003)(2906002)(33656002)(66476007)(38100700002)(1076003)(426003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AlNbqHZya85tv47v5D+2reUxnbQT61Cd7mlF1Mpe3isP0D2pOJ30xGp1WTeM?=
 =?us-ascii?Q?5WZIX8QNRqFaXuEOVjuVqv6CWJaKzZOXH7SOTLy0vtstv62s+9QcvyEHw2OG?=
 =?us-ascii?Q?OhBw92XJUr2cosKxntGNrV7dizFuTxOcsmneHjU89/23jB3TTXo248XxcCw0?=
 =?us-ascii?Q?0A2BhZeSaH5pkeQN1P6H60+r+38QPToi6xJ0XcoYxVo+L0ZQqFEiZNE1I5SB?=
 =?us-ascii?Q?afhWz12GyBXT/0MuTTvEqVQVxMHaNgbDPOtj/65Fsb6URYdhX1NqkyzR/lcR?=
 =?us-ascii?Q?jPE5Tc3jovGCVjrIPjid76XvIogkSeI0oRbEhACf7fsq1cZ7VX3VeZkI4Hfv?=
 =?us-ascii?Q?WAq5V3NWddHKxQZ0rlYICCsYkVP/ikDteRaj8FduXdwMpIMqysRktHrOuDgL?=
 =?us-ascii?Q?De9rjY0EcrwCW9jN0734wV3VebYgezK3KDUVRbw8gZfh4QrSXQ5eDV1y+wn+?=
 =?us-ascii?Q?1AM1ubGpqaXHjYBB5KLwUR8uPIPOgA2yJL+YqoJACsFz1ebjf0p5wr40pp0d?=
 =?us-ascii?Q?PLo8c1bNn3epaG2jEW7ygW+LoAtKstMR7kD6k/xxd3+jDZ5No+PdvQlAvmQ9?=
 =?us-ascii?Q?/mYY0LZ4qlZgBB2gx7+bNF8NKLREVYzFOKoFnTxdRcqm3FtgBMBDqyNQLZ2X?=
 =?us-ascii?Q?pqT6vKlu/9aHvD5nJDOFSuf0n7DMD3ls+9Wc1kjOKD2V3001sRPE9i14r9yU?=
 =?us-ascii?Q?riA01oMX8mkUL5T748SqLCH00HuJQtFB3qrU0Tk1D78PNbXGF3qO6h15Tbzj?=
 =?us-ascii?Q?KXHs96nCJKTcgPOjpFjpFm8z7HNVxDQuA5RRsit0WvXIAIGWYChEcLMALY9t?=
 =?us-ascii?Q?kRldnkjfnGugbJjn/rl7mB1SV+QcRmFTGOqg5t/3s+QQc1VpWrSOvJHFA2oh?=
 =?us-ascii?Q?52aES4FyiXlZl0tX9Ofg3tqND09xUgB5NgL3WLgz7oi03NwO6pf9isW6i4iU?=
 =?us-ascii?Q?uICy3PnJlJYkuqQ09er+UzaggS4sMD0yIPG5TV4E1u+62wfPXau/4xaCbCiA?=
 =?us-ascii?Q?U5Uu0t9UUyboo9hwQ3q/nHCTcfTacn4daL4LzLQg0UG0g3t3NrdqUU4IjU4l?=
 =?us-ascii?Q?WCBhjYFRQefzH5rELi8CJoonrzOBp6fXVSWBPdwPTuaY4IDe++wK6CfBgo9S?=
 =?us-ascii?Q?MzJXpVOGhCw3iHUUGxuz+lAGcKx8Tmq3HqhT7Jwux+zlesxejRxTVLnhHXnf?=
 =?us-ascii?Q?buT9p1s2HqPRTXQYLX6l41Mc+t52ql1p4NCYu8LyaxnvOQElJoBLZjzByR+R?=
 =?us-ascii?Q?nXIJCi6tMW48vwoQ2wdthkgSyrQx/OyhsumkR1fL4nzqnGEeCYY9lFjUI4cw?=
 =?us-ascii?Q?+LPyd2fjTPBXNm6ZbNAnEeSh?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d9d9233-2c87-42f8-f888-08d93122e6b8
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2021 00:00:22.2153
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xVWyvOJKRi8iKdMk65EQElvPmHNPaieCkWgtsoN9voJSaAdO+jrDZfMatETIlDKJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5319
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=W+MdN0xp;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.220.45 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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

On Fri, Jun 11, 2021 at 07:00:19PM +0300, Leon Romanovsky wrote:

> Jason Gunthorpe (15):
>   RDMA: Split the alloc_hw_stats() ops to port and device variants
>   RDMA/core: Replace the ib_port_data hw_stats pointers with a ib_port
>     pointer
>   RDMA/core: Split port and device counter sysfs attributes
>   RDMA/core: Split gid_attrs related sysfs from add_port()
>   RDMA/core: Simplify how the gid_attrs sysfs is created
>   RDMA/core: Simplify how the port sysfs is created
>   RDMA/core: Create the device hw_counters through the normal groups
>     mechanism
>   RDMA/core: Remove the kobject_uevent() NOP
>   RDMA/core: Expose the ib port sysfs attribute machinery
>   RDMA/cm: Use an attribute_group on the ib_port_attribute intead of
>     kobj's
>   RDMA/qib: Use attributes for the port sysfs
>   RDMA/hfi1: Use attributes for the port sysfs
>   RDMA: Change ops->init_port to ops->port_groups
>   RDMA/core: Allow port_groups to be used with namespaces
>   RDMA: Remove rdma_set_device_sysfs_group()

Applied to for-next, thanks everyone

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210617000021.GA1899410%40nvidia.com.
