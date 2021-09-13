Return-Path: <clang-built-linux+bncBCN77QHK3UIBBPHVQKFAMGQEDPPQX2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8B140B288
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 17:07:41 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id bh31-20020a056808181f00b0026d71fa022csf8945841oib.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 08:07:41 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1631632060; cv=pass;
        d=google.com; s=arc-20160816;
        b=AJPcU6Kgiz3iykmbVZrU+nlQqKwjOybofuGq5FxlgWoxetcWW6vs5e5Ei1TuZw8CQv
         xpNa3PVH78VgJFclIFHvh3NiUHSEeAdZFhetQZZHMX3Uh9gDhwyxRWPT0DfaSXuTJQYq
         KXDx/oplnlPN8aO8C6kZFJTFwS6G6OBJFpbM7lOsfzi6uaNAyRWfbDFx7l7/er+N/BsC
         hYNjpgj3opk1yEUdYVNQ2aNdJUn3ZZJ6+8iBOINCLxRcD/OIQYvKYA1Ez0yheEtwvTuy
         loBzF24lD3+jettQlKYMQ3kjKCV+r+ksF+Mm/06t1fDZNvxoh2W/BCs2LUd6/pChlOJ5
         soUA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=73CrGcw06zrlJIJS9l/Rrl1mQEtmEBM2ZMB3lwWs0Jc=;
        b=EEmgIa5L9gHL8L1UzoWge6KoGKZSIi/cnBbcD7y/ls6tbEUrh/c7MVWBNG4MCpkM/N
         U9Gj3LouPGmxxjamyk/v3xHMiprNsZDJLRZxy42r0nshmFSn7mvyvTcDeDg48+F70fXu
         e/SJMMykI9KNb0DoHo0LyUpQqxFKy+e/e2Jza21p43w2oAHR4bdcc0HL+D3GDxK3Mdne
         gs827QVeUY4JQJkrdXSFHgTKKeDnStxGRyj3/jqLdamv71cSF2Bt6r/dgCqQ796lXKXK
         939a7cC+ozUcJgfDr7zp+NGSR3gv4BYRg5jLHLk82MFFxdOGwA1mjM765dYgBFLetU9l
         hrrA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=p2S9rGyz;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.78 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=73CrGcw06zrlJIJS9l/Rrl1mQEtmEBM2ZMB3lwWs0Jc=;
        b=r3m/WmfRiw/fhowhFlfGstAkM+NwmTtffw8mU4eUp1w74awylttuemyDt9pegcERtr
         3wPaqUhJjeTNrGamQT+I0u8qUcCFsclz82mEs50/LVFEoXwVRiVi/rSTa6rQrMX6w6z2
         CDVv+PRjhGX9UVTNWhEcUtE8PcTbCARPEZl/ZO180srQtRBDmjXH9XRMdZIWWLAB4CNM
         sOy6rUt04zqe4skgkjFCGU/vDHFxc42/QJqeqrPHoi4u1+xSjVSDOUIBV87s7u4K4t3s
         3VaTis2rHbGhS+5sk75ONqviSMm7SxF21Oh8Y6EA30XMwRF43zSOxcKPjoeikg1l7QIU
         vhfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=73CrGcw06zrlJIJS9l/Rrl1mQEtmEBM2ZMB3lwWs0Jc=;
        b=nAXleO/C4CbN/96MUB5bXqOPYaqzi8WoT00sV4Fzys/75Lt1Bt2w2mVKkJmi26yJeh
         qey+b5K4w8hFsjcD9vza6+Y9NFwA34vleg6b6LINIewb9sjsdeMNBAMBNh+s6XTv9UpB
         /uuNzQ1DNbB1JXW2FGa8UqbrzcLF82DdUjSqwTzN8EaL91hXgRpEoJzReNadCsQvB4DT
         AS7LpHJGW2ulU8J6oUfI34SuRmHWdK3YBew+R99MAfVaqXf2zHEKeP4PuqLGFEhp2LaB
         iWhqQ16RTJAiBtbKNYcGk7WmzTt3qs3cn8yLA2pRacXhCYLyqdsRlbIaO9LBpL7gPW5j
         jLpA==
X-Gm-Message-State: AOAM531NMcEsq4qC1PlwIPHENocQxzUcN1KWG5+9MZmSlVu/rkaI40Dc
	ka/XDwx3Qsx7c8jkYImkr6U=
X-Google-Smtp-Source: ABdhPJwZL0I93j9M9dWW+jWQ5jtwZayMMpK2OdE0NzbP3jdeJLjl51X+6fAI1C3DOU5v3PgbZeWJAA==
X-Received: by 2002:a05:6830:794:: with SMTP id w20mr14555201ots.224.1631632060145;
        Tue, 14 Sep 2021 08:07:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5f89:: with SMTP id t131ls2114372oib.2.gmail; Tue, 14
 Sep 2021 08:07:39 -0700 (PDT)
X-Received: by 2002:aca:1304:: with SMTP id e4mr1834248oii.89.1631632059794;
        Tue, 14 Sep 2021 08:07:39 -0700 (PDT)
Received: by 2002:aca:b6c1:0:b0:26b:80ac:4d09 with SMTP id 5614622812f47-26dbc18eff7msb6e;
        Mon, 13 Sep 2021 09:53:22 -0700 (PDT)
X-Received: by 2002:a05:6638:d55:: with SMTP id d21mr10706829jak.104.1631552000865;
        Mon, 13 Sep 2021 09:53:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631552000; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ef+5TzlKIqexDWIcyfNDYPiuVMsbZgruKY1DTOn7XJiYp5ikBNPFwC3v1wqSbTYzA4
         rG6e2u+X7sOvj6Pk+CO3ZIF/nEw4JFwjzmK5lsvv3I81VeKFw8f8VX37Dz8Cg41hk+f4
         wbnrpjvYOuFu4/FCFrQU9gL2lF2F58yVRmVoPhf3Ow1Im++WZpGKyopmbXLLSuIvk/05
         h0hR5wjrFtHt+/QlXyjusnPS5Oes+rV1a9KbcrHHExO28EXQabWs/mBiIPACaCnOWV4j
         D6n/FmgIFjtCck9fl8clN5lYkQLlIyNp1gr+iI3FDYtnOSDfsRS8bV44Dk+TewS5898r
         JPRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cLHYLnDdgDDwha13KcBVpsZSZ3X08UofQBBYbrnchuE=;
        b=0lGBYFC3qNXu1ybW+gvGRL3+9v6xkSQF685rxBTo1uo3blya4/VmW3OHf1IFuVCtpJ
         OqNXVQHtQQl3TZzx0GY7TvzR5SL3QIPfddTmvzzsY69xsBNACcN46zYHLz2UdM1ctEkR
         2iGzmfTvjS9jFNwTac1cmEzwy49mHV0pJ97NFkOIRFm6JQNOi1yb0Hmp713Iq9+J/QEA
         VNIHmeWX1umjF8LMmVC4ECyE57zmFKh58HCVrecU6rOnuT2XqQMmEcht7y9axPcocQpJ
         yGvC1ONlQ1WjOn3WE7XDsIKTLhDKlySU72zsUxvTBtr6uLNBgYxBazXEZ6x0wFn5XcUo
         Ck8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=p2S9rGyz;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.78 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2078.outbound.protection.outlook.com. [40.107.93.78])
        by gmr-mx.google.com with ESMTPS id o18si619420ill.1.2021.09.13.09.53.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 09:53:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.93.78 as permitted sender) client-ip=40.107.93.78;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aFyNekZpIOuBhwxRMs0rrt7w3zIdT/HcWDUNV+kH7mweAkPJ4cp5NoeVmxy0QlYxUer3eCednZBd6sbxxA3m6thx2pM7jaXFixRSQucVBBsio/Nc2AdCNUgwiNGRy0u+y6q+ymEPGuS9q3PXOd57CtwgXWFRyVgSQG/9RPKSC2e4BdVUJeqY1pdT5FP5MUwbqlz9KUNnFxtIuZlxdsId2XYsXpxeUn/Zs62E9Mr4rGPVmFYH8EiQ4UnK+MCdwM69xIOzUvVOu895Pg4+28y6T/Kl8o36RSs/Tk+Xqj9XIz0z02Wo9vzJDB6BugVBNDermBC4PW/UQl/f+ROy3JsGRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=cLHYLnDdgDDwha13KcBVpsZSZ3X08UofQBBYbrnchuE=;
 b=NNxTd/gWbEvN9br7Xjx0SwEUjbqZzFhvjvWyrTY8jnduJ+WZuPEg01wlgTSyXMR/v73wnKf0+O8aI0xPRAUyDdF+mdN0zpOKqb0iY3jvCecLCuYaO3VfZyZtw8YWpZAwtfJFaf9k2y/LURE1Ns4tcQn0eqfle5/hDEEWQoEVcifaIIjeI//7Bep3f5rLkowYKtxEPiM9TNLB3RhfnlK7oTporeMvzCSdDWHE4VuKZjW3WObwwDRDoYMUX9ovdiVjQDOn3WKZK9DoJZrh4X1LuzONlqY6T/7eRtkmkv1qPqQBlncr25FkMCS1xNU4wIJ6h748kdN8pT6QBFzQaOD7AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5240.namprd12.prod.outlook.com (2603:10b6:208:319::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Mon, 13 Sep
 2021 16:53:19 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::e8af:232:915e:2f95]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::e8af:232:915e:2f95%8]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 16:53:19 +0000
Date: Mon, 13 Sep 2021 13:53:17 -0300
From: "'Jason Gunthorpe' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kernel test robot <lkp@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <nathan@kernel.org>
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: drivers/infiniband/hw/qib/qib_sysfs.c:413:1: error:
 static_assert expression is not an integral constant expression
Message-ID: <20210913165317.GX2505917@nvidia.com>
References: <202109112002.NZceUwiC-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202109112002.NZceUwiC-lkp@intel.com>
X-ClientProxiedBy: MN2PR12CA0029.namprd12.prod.outlook.com
 (2603:10b6:208:a8::42) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by MN2PR12CA0029.namprd12.prod.outlook.com (2603:10b6:208:a8::42) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 16:53:19 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1mPpCn-00Gi7C-W7; Mon, 13 Sep 2021 13:53:18 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e24b66cd-ca0a-495f-3e29-08d976d6fd28
X-MS-TrafficTypeDiagnostic: BL1PR12MB5240:
X-Microsoft-Antispam-PRVS: <BL1PR12MB5240C7BC0CF171928876D858C2D99@BL1PR12MB5240.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZpNdhnEw0G2NMM8xGPMRAxP2y/hfh13CUvLH5odEtyh2l7sp9+l6fYzqfVwzwPZOKG1DVVYnJKQB4ATYKazYppVfa9/KOh+r/mjuRjeAhsTDNMkGDfCMdC2HjxmVCrGWr9d4hueeb6VR1yKz8aVZpHP2e4PgsRMQVrLUjPsgAKtERgLjP+2ZSOGNLUv5g1fX0k1QM3YV6VoOduDe/GIOZfg439GPjecIf5zEG26hvjSz35Yqf6tHYTRo2wNZpHtXip9ghum15ie07RH0c1YwaPy+lK41bPlsROeIeZhbQXk7nh40bHfMSMxZ9uXRmBpcllSNofU1QMcluT+16TAMYwcUI6C9//d0tbqV5yAkcJqu+D/Noq4zpJ8xJYXAUIJZPUZSXDYRey68hOYpbcePJr1vF8N3xUJ68+A+uYrU2LGdURlQotj7guLEDP+po4ftznf8Iv3hvMBL6n5le95FxFJjNuS8wvxnM+Dq2FlGAM1gWIND9KyreKwG2hMuB95JSNow9bv7qsQ9gHJAuzYfeKJudYaEU4EfywgrFkGkosd5zZEQoBy+gUX5VVUAhcdc/p8Mr/fMAj4thRUZtuv2EjwFFX+80Y/99/Sk8PNDAMCI8rn7PIyeYleFGrkJQj68/So/G+yCBut0DotD+gSofdEtP8O/WIqfj24UYZJtiawBdZoYXDzLPxpoIFN1nB7dcxefaoZ3myXRefm2+/+rL6e9VnBSC48VlfAXMbd9gtxHa3T4haVajfyxkeOOkqWIkh9zREbpsVdB5BDCBtJzCw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(376002)(396003)(346002)(39860400002)(66556008)(478600001)(5660300002)(66946007)(8936002)(966005)(110136005)(38100700002)(186003)(66476007)(2616005)(2906002)(9746002)(9786002)(426003)(4326008)(8676002)(83380400001)(1076003)(33656002)(26005)(36756003)(86362001)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pInG9Hnlo8CLEfVCQ63M1UC6a0xOcj6FlSAsjo3fEL7eeg1wJlwwjva38Vxq?=
 =?us-ascii?Q?cN9KUP0YDkyggDdauTGtaZppZCaA5WB7ggLKvMMWGqNsuGeynMQTpPpp5Id+?=
 =?us-ascii?Q?b9vTUDYutd6tEsUslJICPg0Uw7N0ruu/dvBpMetD5Be4xvbwcu01+IktlMaO?=
 =?us-ascii?Q?+iWNbZYj6c0o9OfzFlggas3sFGFtGBhL3B4VfT+yG7nvuKZHfbJdslVAPr+5?=
 =?us-ascii?Q?iw/nc4XN+QHcHn6YKEedLtQxSGr8Ih/cRDeKH83pn7wDrXsyp9xDANrBUbys?=
 =?us-ascii?Q?hcrJgdSU0/VjliG0gLOux2q1+yFiqLr9Fc2K26qTnKx83+gqBsXERWNbnbqA?=
 =?us-ascii?Q?aTpCrcfl/MnnD3O9QQMesJxEL+NyW4tlzuLdMZSzrD6LTX9NsAXH6MHxdKXp?=
 =?us-ascii?Q?GpFZWtS5Bbn7k0VcwKumnlZqw5CE5ApAzVKE3lrLP9f2RoqQvBCarDUwaocF?=
 =?us-ascii?Q?9Snc68nlO7l7eEY8XFcPiV41oM5e/4r+aZ4Hrrfp1rt4+Azwe6gDFn1xUMdH?=
 =?us-ascii?Q?jFiPk+NeuDYyAIqjHDUVPqqfwBgoDd3HD+75Dvx3E8L8O3F00LeOpmUDsxD/?=
 =?us-ascii?Q?I8SAhCHuS8RGuJ+DMc0g6/tAXMivvOHl4kDXYL2qZk5QuglbNueuDXt7kCNj?=
 =?us-ascii?Q?s37jNXDVWoA0EyZRg8BAPZdKrwBqVGtDUDgaENI0PF8wXGXxfS1AZQvM+ybZ?=
 =?us-ascii?Q?Ml4Kwb++p5FyCRyHVBNxFkdqcF8DJ8xs0uhBbMrpvPXYElnHm++6yEg9l7ig?=
 =?us-ascii?Q?MeLAT1XIOUNrpXwi4RTlqYGrotvOKsVfyWi9OOGq5tIMiuVSC2LWpIaKzw8z?=
 =?us-ascii?Q?e0a6EuiTKkzn8CnOyy2GYqAYWmA+4mU/ErnRoUrb7qjCwDB2Nxvb1uzdDc/+?=
 =?us-ascii?Q?9tIbms5RWu5E131yvPjnKSFzDODd7qtSbfNQVgn8KQDw4Q5MK7Z+JokChHge?=
 =?us-ascii?Q?oSLA0M5HeiQMl7C57KVeBHknpssHoeLHNtrjOLM/2SGFXFVwZmBZYxFS1JrH?=
 =?us-ascii?Q?NC8iurIaOyKG91srIYLSO5EvY5fDyAVUirtgA6AOdllLELrKcEjbnV8TEHye?=
 =?us-ascii?Q?Cc0CNlJiisZV5ZG91m98cLsxtRnPC9XNonNGs3Ju826XZS/OOhDRizzG3bYn?=
 =?us-ascii?Q?D1Tg97Mm10kYX8+KgLt0+65sTXeXawpFr9Gm4WXcAbhjSw2uoU1oyia0Op3C?=
 =?us-ascii?Q?XOwbI+5B28AOedKKHxoe2vruks7oiNMJ+2VLA/4z6dC1qLjXwwH8AUkSB6Gp?=
 =?us-ascii?Q?cf+jx6nDtUtElX5nJ6/8CMgHeZ67g01IETc4r5lxxOcZggUfZFOFWuavM2JI?=
 =?us-ascii?Q?b+5KwhaxGVRSAHFBmZp4iFFH?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e24b66cd-ca0a-495f-3e29-08d976d6fd28
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 16:53:19.3301
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8TEKGM7IWCtcpwIz79lvXKw1PiQ08n/9C6RHENVhvla363JnyU/tFAFLcj/RUCvq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5240
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=p2S9rGyz;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.93.78 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
X-Original-From: Jason Gunthorpe <jgg@nvidia.com>
Reply-To: Jason Gunthorpe <jgg@nvidia.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Sat, Sep 11, 2021 at 08:17:08PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   926de8c4326c14fcf35f1de142019043597a4fac
> commit: 84f969e1c48ed3825986e91a0786e363d57f69d1 IB/qib: Fix null pointer subtraction compiler warning
> date:   3 days ago
> config: x86_64-randconfig-a014-20210911 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 261cbe98c38f8c1ee1a482fe76511110e790f58a)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=84f969e1c48ed3825986e91a0786e363d57f69d1
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 84f969e1c48ed3825986e91a0786e363d57f69d1
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=x86_64 SHELL=/bin/bash
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/infiniband/hw/qib/qib_sysfs.c:413:1: error: static_assert expression is not an integral constant expression
>    QIB_DIAGC_ATTR(rc_resends);
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/infiniband/hw/qib/qib_sysfs.c:406:16: note: expanded from macro 'QIB_DIAGC_ATTR'
>            static_assert(&((struct qib_ibport *)0)->rvp.n_##N != (u64 *)NULL);    \
>            ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/build_bug.h:77:50: note: expanded from macro 'static_assert'
>    #define static_assert(expr, ...) __static_assert(expr, ##__VA_ARGS__, #expr)
>                                     ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/build_bug.h:78:56: note: expanded from macro '__static_assert'
>    #define __static_assert(expr, msg, ...) _Static_assert(expr, msg)
>                                                           ^~~~
>    drivers/infiniband/hw/qib/qib_sysfs.c:413:1: note: cannot access field of null pointer
>    drivers/infiniband/hw/qib/qib_sysfs.c:406:43: note: expanded from macro 'QIB_DIAGC_ATTR'
>            static_assert(&((struct qib_ibport *)0)->rvp.n_##N != (u64 *)NULL);    \
>                                                     ^
>    drivers/infiniband/hw/qib/qib_sysfs.c:414:1: error: static_assert expression is not an integral constant expression
>    QIB_DIAGC_ATTR(seq_naks);
>    ^~~~~~~~~~~~~~~~~~~~~~~~

Nick/Nathan

Clang is being a real PITA here - do you know of a solution?

This macro would like to know that the passed in member name has a u64
type, all the things I've come up with fail on clang - but many work
fine on gcc. Frankly I think this case is a clang bug myself..

Thanks,
Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210913165317.GX2505917%40nvidia.com.
