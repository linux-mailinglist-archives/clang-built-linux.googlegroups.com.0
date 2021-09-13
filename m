Return-Path: <clang-built-linux+bncBCN77QHK3UIBBEGH72EQMGQEKEMPLFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B77C409CC1
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 21:16:34 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id e7-20020a056a0000c700b004391956f161sf3885057pfj.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 12:16:34 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1631560593; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y0h7GbDJpLB+w1w4CXrl1l8mdmhEbn6FvejURg/RZla3nGQKKurLVULN2DNmjkjngX
         ScAtx6jXCurK9pUKZcnUohsZQyk5ZdJ2LKFu9QLpjIw1+B0Xf8IFlMie1OJ66DuRz13X
         qzPP7fg+8v6NLN6r/9ASfITExAN35FuNroc8EGouDls4TfIZFYPRo3vhiknrC0h2XpbK
         aHToMx+ioprhiQz1I29i8u1lh6iEPJVgpY6kEZH7c443bp2xqxrw8hi4rjpOYucp8Ggr
         HjKbb0RgecUDi7Zn3D1JpxS9UfDsMEqhCFln+a0L3ent4IUb2b9trI2UFUnFCEtXhSij
         3FVQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=nJcNgV34SeUai6eA+6cu4c19FhufcoYOOCbJqKeGsf4=;
        b=br7MpH9suXwtlO+oE6cKBYfbk+lHnU2geIHaa/x8BTRXYz0ODGkjQwheeJF/PQ7V2e
         V6rw2mraHCG1OCnENTOuXqHfqd3dWqMWOohfNaui/r635B+vDsdPU2VaepG9QPBrdQyC
         50Cx8XfYTqh/lTFRs3KE3JbfcEMOCReR2COS5V4IM/S+RmtsxOjjRr0GqTwbApEEIuou
         XtDPZ7JKHUhBqrLmA3miUjMqmrBzTgSzvsh3yIZhcgPl1fylnWZb3hRqKfKJdDzHUhJv
         ZBVnULxa5g+BZ6oT8rZ6Bne3PYs2+3w3gvezH5/5wdl2YmdNp5Bj4vO8cyWcfY6hlr3U
         j6bQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=TeSHIHsd;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.62 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=nJcNgV34SeUai6eA+6cu4c19FhufcoYOOCbJqKeGsf4=;
        b=hIqwTCatz8V2UbIxjOT9RGjRoYTuMFomELOI/ULynVA+yO7aSbD/hBXlRq3fY/4GnD
         2Exq7r1Op3A0pATicTvudN7fe3Pz4iwaRQcPRyCeO5uakbzDbhunR/EA9ZwK4H8nNSf6
         c7ayVekMkVfS4C9E0YYa93OTabRH2e+FJVei5EQJy6IqRDH3MFBe5V1nJjJAW2TfVnsn
         BJxRT8l60KpYoblqR4KlVwYLQR3fCpC/40dPlN68wVpIA1sy+RAkgGGmU89ICplZvsYO
         jIEbpVHTU9yzBDIkJ+UdM2BUbH2l6dHtAaSMcfDjbs0mYxywyD2RGK01uvTXjt4S0x+s
         X+Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nJcNgV34SeUai6eA+6cu4c19FhufcoYOOCbJqKeGsf4=;
        b=lfg35C0Bq9xf4lo27n/b4phcoDRK2uLYXdG5hGmNBowYRFFpTmLD4TMtbUHpNWHjit
         JpLKXj9tjjaCGB8j6DQYcZxNuQsB706/fkrqFEfuGkUByIV65lD9xK/jyuOEEpTIa/hF
         inHuH9rUIJzuaSPtTJAaVNNhUzMl0BHhhSOYmES6X/3Jz1fxqcKTci1Xbn8Ugagcf3KE
         YSMtm65MDLlQVyeOHKp7gzIJ8yuL+RcGCHBet43eu37aT8cWQUwtAKPT9nMkVrwOmqup
         MlnMQgtC+VQSP7pb+AJIdEcx2mELnvtcx9FCXnmNsZFQvlaMbrIcPssIH3XPcy8snx56
         4vzg==
X-Gm-Message-State: AOAM530ihMSs69eEFIhicyAu6oDYlTrX2jmm8a6YGG0vVEf0K82rcdWv
	Bf5tcfDsWlRexpOtzpBDDTs=
X-Google-Smtp-Source: ABdhPJwzBnZTW7HCrSiDPjvXmBrWQHxGB1k9kukoS+RXyiANh9ubpOxDVyKG72tEcBeuIEoaX3YJIA==
X-Received: by 2002:a05:6a00:d4f:b0:407:8c1c:76c2 with SMTP id n15-20020a056a000d4f00b004078c1c76c2mr893978pfv.31.1631560592885;
        Mon, 13 Sep 2021 12:16:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:494e:: with SMTP id q14ls3256162pgs.10.gmail; Mon, 13
 Sep 2021 12:16:32 -0700 (PDT)
X-Received: by 2002:a62:5a47:0:b0:411:d83a:3db4 with SMTP id o68-20020a625a47000000b00411d83a3db4mr889835pfb.35.1631560592369;
        Mon, 13 Sep 2021 12:16:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631560592; cv=pass;
        d=google.com; s=arc-20160816;
        b=lB5FBEQZKyMu60gd7Ci+0p8NBeWQsDykxNaFXu41LAz+bWqIlm6utOVSJj8Mi71p37
         sTRpFT25UFDxslkRt8pjbwYRSsWFIKKPLpCAiz9H8ZTTbyVotRZjSmTsNN7YLBUjazJO
         7Dl2kweI8MYR84gXBD/hrBDggIdSPYMndWGJWH9QdeuihS4OeLexCBE/aUu+AWuMN7Rf
         Zu0N3vnQpvkF3J2EKIN4cHi9r2YjrAJP5E2n2C58j3n3MuOyBnlGDoOjJQUQjp4fiIt+
         KkjqdLHxBFKbND0gMpEjszUjOebA6QXpu6gS6c9cij5zNHGEd64F2Ctlp5bdYpr5a6ie
         0GCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mw/RNQvz08IfbBHjmKASGPdKuUW7zBnQI9U/319UL6s=;
        b=ogEuD9AmHD2r9MqawgzcwB8guYvpFs+OUkZxsB0Q49HFHtlgNGkSk/wa97+lFxUOFH
         KVfx2rgE9cQEW94kJqcsaeNby7Ubq36ljT+2fqUQvmsyZC5IgoA+b/SkRFsX0YdUoeSF
         dOpyTyUiGsy/TZ3/l6fKvHgs/bwNC3ut+SbgyP7BXHwgnfZkoc8xgL4yztBSror7nVr3
         rvHE6RAftkHvPKzjga50UkO98RcLWn2GdJOlPwB1NUwr4pR2P2xJ4Cg8cfm5mA61kl3Y
         uVSvZvxpslNlPrM8+zw9/kFzuSRnSmzbUw6aeMOKK+JA2eawBFlOcHmt9GeFVf3WyROo
         fdsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=TeSHIHsd;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.62 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2062.outbound.protection.outlook.com. [40.107.93.62])
        by gmr-mx.google.com with ESMTPS id a14si778327pjg.2.2021.09.13.12.16.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 12:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.93.62 as permitted sender) client-ip=40.107.93.62;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KRSnnkA2dq/WoBApQyejSoIz14PqS9Cj61J/Ci7etGk83ui/bDro1A7OGoYpYNyzrWe8Xdhc5EYSZZFQd+w9NrLMkicu6jVxvvUtJD/5q8oMmrbyecH3wMRUlRzNBB++/hHY1of8BxhtQIl6Fefzg/MjdV2D9x3tPaTaTPaaEBrYPitGNKGZLRrmejbowkOJeKsGYJ68TBfjVcG71gi/uhouK+hMxmkrcnV5NIyFY2AKGTpGFaLV88PSae0SAU3t9Mq4e21JrFtHKgC5gqhBzApIs+sTlOj5txYfxCTf4AzAiRmeGrBJ5D7ox8eKx6xZGWmSvvgvIiDEXWpnOkPoBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=mw/RNQvz08IfbBHjmKASGPdKuUW7zBnQI9U/319UL6s=;
 b=N4OyRFQb+YidzkoCvDYL/RKEGkD0mb7TLpo/nG0BS+gF9DtYMl6qK+O4+SvsKYXQog3a3/S1BWMf6O1tZr4xVYgIIe0Wivcc8mQThyGYEREMDUfwlTdV6oZEMi4tZggPn5vyy2MR082YfQ4+ZczhxzRxmXb1ntjC8EwnYzTe8lTUeq0k0hd8KzVe5A3IpJzAnMkVBUonYLae1E3bakgnr/9rIje8/H8kW36Ff5n25mFbsHHixkAbrft74Jj5ZvmP0RuPfxu847ywRoJvBLA7Q5GMByUA1TCsGSSmG81pV1ppydJUzlaNCGgYK6px/AnTP4zXAQXQmtveflrwVRpy8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL0PR12MB5505.namprd12.prod.outlook.com (2603:10b6:208:1ce::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Mon, 13 Sep
 2021 19:16:31 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::e8af:232:915e:2f95]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::e8af:232:915e:2f95%8]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 19:16:31 +0000
Date: Mon, 13 Sep 2021 16:16:29 -0300
From: "'Jason Gunthorpe' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kernel test robot <lkp@intel.com>, llvm@lists.linux.dev,
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: drivers/infiniband/hw/qib/qib_sysfs.c:413:1: error:
 static_assert expression is not an integral constant expression
Message-ID: <20210913191629.GC4065468@nvidia.com>
References: <202109112002.NZceUwiC-lkp@intel.com>
 <20210913165317.GX2505917@nvidia.com>
 <CAKwvOdnGaVb1XGwYpNK_3zAEyZ0JC1SDjC1UzzFEH=d_Mdi7Fw@mail.gmail.com>
 <20210913183813.GY2505917@nvidia.com>
 <YT+eJY4JoobVsKWu@archlinux-ax161>
 <20210913190246.GA4065468@nvidia.com>
 <0158604c-8777-51c8-2cb5-b7f016335786@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0158604c-8777-51c8-2cb5-b7f016335786@kernel.org>
X-ClientProxiedBy: MN2PR18CA0013.namprd18.prod.outlook.com
 (2603:10b6:208:23c::18) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by MN2PR18CA0013.namprd18.prod.outlook.com (2603:10b6:208:23c::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 19:16:30 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1mPrRN-00H7Tc-UV; Mon, 13 Sep 2021 16:16:29 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 429e86ec-89ca-476e-c399-08d976eafe2a
X-MS-TrafficTypeDiagnostic: BL0PR12MB5505:
X-Microsoft-Antispam-PRVS: <BL0PR12MB55056101FC7F1D62AD9D545AC2D99@BL0PR12MB5505.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dC9r8XwDVgeH3uk8SNW3Em5Kfm1CJMhWtLEkpOHuc2oV8Cc4IXfpGhFylnfJuxVZyPd9BGTUHMm+rVvxTxeUU/3yVFHxv2ITPt9ICpQUMMNjrmdWDVxhXZwQ6ip+J3J1mvCCw68Ov0BNbVFP7I1sX7UxcQcgyytR1S+cng0AvKxhdnfYa3qt8cxBcw1r4NvLNbSUkCtN9DFLsJF2JIoGWIbntUtidpZXH87/YgN99R2CQKV/B1kCgHLCCWwsak7lr+2C5Xg2Fv7UXaW/mv+W6tVtEzgYLM+w7/PXxliz+/KSTnsmkP9D7z/e/T21eDa3qwxba/YFG569f2UrldIh7NhQihJdLHL8avxFmTxO6f6P99tQ9Fa4A9nBSxPO5K2R8YpwUh+J89Hy9HZG84RwB9aNEi+GBgRhh2EjQIYP+iLy+7PAvrTa52K6VnjsHR/KIihrNSBPkvqeGdbGLQRL4W5wLPA70SyTjbwVCoM9dkWuJ65ANCSmopl4JQntn5DfmTQetj5hWHD9na6v3plu8LuY9wooNq+CVlHUvLK7YtLVB8npF1RGGvYr6KZgLtGcFtToTZvGA1pzx36O1xQ3iWbKuQZZ7x3q1Jrs21qkR8HXRGT2ystWAoJXFW40xmHavCbX/II9ka2K1s0i0ucAaA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(376002)(366004)(39860400002)(396003)(346002)(38100700002)(53546011)(2906002)(1076003)(66556008)(8676002)(83380400001)(66476007)(26005)(2616005)(316002)(54906003)(86362001)(5660300002)(6916009)(186003)(33656002)(9786002)(478600001)(426003)(9746002)(66946007)(36756003)(8936002)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M4xuLCcPJsV2f0hj4/D/assDBGfc9nKaLYOCzsSUVwVK7f2wI5+NRlPe4JHh?=
 =?us-ascii?Q?Oh61N1i37s2kOVgBTCshQyoa1KjcqawUuZ56l/cM+Jsn440JvBvOc+4tgBaf?=
 =?us-ascii?Q?VfzC1Q74oUAL32iAIlQYvGY2zxJkK0RQMTTJ9oxI3xGfYg5kNt2CCJM352Cs?=
 =?us-ascii?Q?CzpCqX2uQR3N+16j4TanosBqYeyN1OlModvA09b4eB5A5wLH26AcqK/yeOgy?=
 =?us-ascii?Q?1/yi/VDv2WYDth6097gj1KigrVBgag/SyA7iV6n50SnJVpE9JLX0MhKOxX2D?=
 =?us-ascii?Q?JwKH0XW1fiVhtrGmflDJYt4wdi82YTJKEZfbhk3ZpTMsZmEnDl2SFp0PrC36?=
 =?us-ascii?Q?f1aOYc0AT4iT/E8pEBGmSsDmIIC7QLNK/Oqm6vVQfj4AwBlSWKfnjM3act5o?=
 =?us-ascii?Q?Cigcwfz0W6Gl43Wt4spL6cI8FhVIYronDPuccWGl3FCv0c8dLbSg9RXVDC/s?=
 =?us-ascii?Q?vnjlTn+g7g6ZkwE54Fn37fo41c4yonVaPEspNFV+Fa6VmCmZ7DVOdxRX4ZR1?=
 =?us-ascii?Q?usdBm6ree3OeN5poVLJgZT2m7Z208OTZtkf9IHmxxDgrJrPfC71gO+Q9s5rG?=
 =?us-ascii?Q?BJkimZIVpudGqZVVJ+LhQJF4GTY5oyer70NG7f7ippmOC8k/+uE69n5bmlVY?=
 =?us-ascii?Q?PlUYx1uE/JIZF2BltGEYMXIhNFDn5UHgPHB9WriJtFfSkmrpckZCFRv2nWbm?=
 =?us-ascii?Q?sekQTKXZQmCXnzHJ6vTHH9m06zMw23sM+aDUoAAOVP0UMhuSQxJMCdLTSGYG?=
 =?us-ascii?Q?6+pyaQKKKj+usX32AVWDPnVC7Vhl8DgPjXiWSpNgDqJ5yenIHU9RIMtosYuR?=
 =?us-ascii?Q?/IJ1etDbmOj3TsnB2VE8hXkggOgKhfVo6Fm6T7elYwgbi7ZHYrN305dXbm0v?=
 =?us-ascii?Q?bxzMYqBm3GFTzjdQPyRUJEbaWB88a/0/ZXDaySIi27PpkLF5jmHuRca6dYdl?=
 =?us-ascii?Q?ldmKie/2XzRg7sF/kRuYMCZ9XfepbJbLW3o1uUtD11uooaU7FS7DHx6wcBbL?=
 =?us-ascii?Q?aWA2bavrD76JEuTP9jQ1MiwaVQXDYzZ2vJmBZfswiLRUCwW2PNSd4TaN21JM?=
 =?us-ascii?Q?EmlmZoBo0QRXgFris0DAr2z6Okb3Kk8ZIROP4IppU/VydqRJWl69NIeFgND0?=
 =?us-ascii?Q?5sUuZYMY1nmQPkrK2Xw9zTyaX48Diw807IERY0UQ8BeRkLCN1XuL/4hLsnow?=
 =?us-ascii?Q?8wJqJ6lx72IKFznTDFThYXvTeF97vQgBIcdGEUwKIsVYPgf4h1iEua6pruGv?=
 =?us-ascii?Q?mTt2v6u+1F69Ld2InfyQRauiZDjE9sDngHVzYYEl+hAc95khksrRxYpTKMaB?=
 =?us-ascii?Q?Io1HLrVIdifHX00LrMPpPsgB?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 429e86ec-89ca-476e-c399-08d976eafe2a
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 19:16:30.9460
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: beJZbKw/LbGYn1506DzIyJlUH62hcWjy/f45HAW6cmmGsAdQNRpYaXaOytNlPDqX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB5505
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=TeSHIHsd;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.93.62 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
X-Original-From: Jason Gunthorpe <jgg@nvidia.com>
Reply-To: Jason Gunthorpe <jgg@nvidia.com>
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

On Mon, Sep 13, 2021 at 12:13:45PM -0700, Nathan Chancellor wrote:
> On 9/13/2021 12:02 PM, Jason Gunthorpe wrote:
> > On Mon, Sep 13, 2021 at 11:53:25AM -0700, Nathan Chancellor wrote:
> > > On Mon, Sep 13, 2021 at 03:38:13PM -0300, Jason Gunthorpe wrote:
> > > > On Mon, Sep 13, 2021 at 10:00:02AM -0700, Nick Desaulniers wrote:
> > > > 
> > > > > > This macro would like to know that the passed in member name has a u64
> > > > > > type, all the things I've come up with fail on clang - but many work
> > > > > > fine on gcc. Frankly I think this case is a clang bug myself..
> > > > > 
> > > > > Perhaps, though this assertion looks a bit like offsetof() to me. I
> > > > > wonder if that can help here?
> > > > 
> > > > The assertion would logically like to be this:
> > > > 
> > > >           static_assert(typecheck(((struct qib_port *)0)->N, u64))
> > > 
> > > This works for me with both GCC and clang, if that is acceptable to you?
> > > It fails if you change one of the variables to 'u32'.
> > 
> > Yes, thanks. Can't say I've even heard of __same_type before :\ would
> > be nice if this was in typecheck.h along with the other variations of
> > the same idea. Presumably it is a little bit different from those
> > somehow?
> 
> Good question... commit d2c123c27db8 ("module_param: add __same_type
> convenience wrapper for __builtin_types_compatible_p") introduced it so that
> it could be used in commit fddd52012295 ("module_param: allow 'bool'
> module_params to be bool, not just int."); I am guessing that typecheck()
> could not be used in those cases. Perhaps all instances of typecheck() could
> be converted to __same_type()?
> 
> Do you want me to send a formal patch for that diff?

I think it is a reasonable thing to do if it works, but I do wonder if
they are not quite the same thing considering qualifiers/etc

$ git grep typecheck | wc -l
120
$ #git grep __same_type | wc -l
39

I would delete __same_type if typecheck can be functionally identical
otherwise I'd say this should all be in typecheck.h and the functional
difference clearly documented..

Jason
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210913191629.GC4065468%40nvidia.com.
