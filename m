Return-Path: <clang-built-linux+bncBCN77QHK3UIBBHFNSSCQMGQEMLZWFFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D41388F6E
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 15:46:05 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id n3-20020a4ae1c30000b0290201e0069e50sf9129833oot.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 06:46:05 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1621431964; cv=pass;
        d=google.com; s=arc-20160816;
        b=iojNQnxC2iuAHOOKhKwgHL6qrkWe4Z2akAB3ZonM7fkovib3oMEAbH1ggOCHvyYcN+
         IIPNTTSEbA3vkEAk7r4prXsFrT0Gw4MWLU0g913siX5629cm3/N7BAHYf+pNwBd1MG9J
         px+RZE2H2dsHy1Qyrw+t0ErCjwcdTRUY8fJvIvHE6f3Czm7W9POK/OFUOcr38kdk0yzC
         7cKMWYxJevn1nlLbPIl7AQecsbBWJDXvxw8xz1f+0kBZ//9OEqUaXTwhnlgWpa1Zq5gi
         zJMuyCYXNTAjOz7OGQu8e9dyLAc2c2kWKAaFkw/lcpcqi0bIaZmIa1CkcIMCACgPZOjv
         VEhQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=sGGFqoWUuSB57Di79ALEbONUr09HDnQdceaDNGk1qrU=;
        b=Jjw4NGgoAAOQn6LTCp6ZJNSY8cvcrNttO8qDyLG+bwSqTEqubeAdc2L7/d9q1T3Qua
         grQu78Ou5R7QxA2rHW/j33+QYaO4syrWXGHvzsQIim7SnobjhHnTlZw6WB8kz6VF5V+t
         CCdpoPQfhNljsUau6kd0//pjY/vXpz0fB9XsQjxbrmuO1X2Aj8XyMbHA8il5M8eH8aHc
         EDENNy7LWUKPyK+cY8lIOQjOvsekCfellgD2m9H+2eiv/YndCFFcGOLEV4eKp/Y0molK
         k6EkE/qGn1PSWg1oi3ARBl1+fMUP2Si9GGIFI8ixs8RNCraqaYgwe9IgQHYefcCBUll6
         n/UQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=f6e4dFIC;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.78 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sGGFqoWUuSB57Di79ALEbONUr09HDnQdceaDNGk1qrU=;
        b=f0YxE42JWpn08QjiR58VSwXFhjEhtE9I+50HJ9e77hlJ7aQjniUpFGoRuWWCgF0DXQ
         bwsTfyyCOJi0TD9JoM8y+bLjq4UlBnRq/gk98bVSX6oU4HyNoh3Ae5fpjmMTASHGu6PN
         izmYwSvw0VQmfTIskDJVsL2oKP4bQ9bnWmrlEzFzyiJWYbvnSCTxn+jj0Az0BwYhfvRe
         ko0eUSYOg+X4i2JAgME9By1hFw4cMnP5bOpIwXDHkuemM6L1cb6SR7dS1OIJ8qhAvQDt
         pup2CngLjsN2fiGLInH+zCvwR1ui8yoJAkjg0sLs7ab6sEeuy2f1nHr/XFpRBTaJQoY+
         rH+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sGGFqoWUuSB57Di79ALEbONUr09HDnQdceaDNGk1qrU=;
        b=JxCnW5DzhGj4kKRKCMzpln47/gUNEM+GEayHubZmdUzVlmJk4o8JfSkDFcZz7QXiqA
         xN+th3195ww3K37EI6qJ44sRh6gQWzMS77SiqZy8WHsZvSuMQ4fb9IJtUHkSXOp/Gt5O
         VdyyFeXUENsoLY99Ug4YuCgabPBSwXXS1wSkODEPP/iz1ksC8HoK1TW9Iz0R4B1DVIH5
         b/emXtn6feRHwnRcaXeROkrMrqZfWR3zzIPKoFSUvNjNUIEWlGhomzux2PhwEzICZVXj
         dLZvmBND4b3emb2H7teYgYlgq81DXEELh3TLg1GFY2Q3wASzfmrtdZ5to1VCo0EaRCjM
         Pwjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EhVRsrvTXKA/Lb6GROgYLFpphUetzhOIlptwE6JtcFFzvN8rd
	/IHjee5AXCqWbHrAIlqEyH4=
X-Google-Smtp-Source: ABdhPJxdW7A8VMAwIacOEOnf6az83GH2ashEGHTF0aW93Y/ZIlxj3C5eVE4lEdw/D8GhtZIhp7fWVA==
X-Received: by 2002:a05:6830:2141:: with SMTP id r1mr8874673otd.13.1621431964348;
        Wed, 19 May 2021 06:46:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5a18:: with SMTP id v24ls4635857oth.1.gmail; Wed, 19 May
 2021 06:46:04 -0700 (PDT)
X-Received: by 2002:a05:6830:34a7:: with SMTP id c39mr1254134otu.357.1621431963985;
        Wed, 19 May 2021 06:46:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621431963; cv=pass;
        d=google.com; s=arc-20160816;
        b=FmfC/xEEBtOpmoGbR/jZfQfGpeDsKWGcUFqLzM7iuE1HhqChBrIYKh9gGXKNSyS26k
         8SMDLXYL2wwdf2EMX1brNQ+I8boJ9Dna8T7SLtBLydIqg38uu54aojcYEsjYrUSmWAks
         pg6lvnFi1URyepUUkCTNOabTHFEoEjDycqjPVtxfQS3vSY+db30QfoTufJkr4Ney8bHQ
         8/mck/LbYzZbboHd/Vs7b+HwSJHHprHh9Vlk1WNWscbgDlDjdC3KKhKeVRVWhwSZxQod
         z4r7vjRZXEpc/ZbYjqqnt4SCbRmNThxwJzl68yFFkPPViOgY3rRM1W+zC/MlrubKWell
         4ePg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=X3JRTw/uif9vuHbLa305dSEqqBqnMBilP3IBndAyd5w=;
        b=fFyVRIaCnA8OosLdoUbfXGBkpcc67GAVPzHR6dgEf7SdPOLyfNCSHcokEgdE7TcOQH
         YDMao8w53Lq5l5fTfLUVneJJIHDj+JU70F+qv00X9Nc0v+6+UVJjjmRH/8u6bZ/cVsyR
         IHxuV1WOXEUqC5xh3Ov3v7rrz9PnT9A/1i/A180LB7SF9LvcfWEGf7TTU/hlhIbXU+kI
         +LHvqhudYahl0Lb4ilKGJuCAhFfG33i4lynanYNNl80+wnwwmmt9vZICDAxZWOKo1R8/
         0X1U3whQ2VBoKVdvh/LTe3lxdsfgKaKlvOezWReY/Pu4fQhjECLy+XE9hQ3Ra27coBqa
         w2oA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=f6e4dFIC;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.78 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2078.outbound.protection.outlook.com. [40.107.93.78])
        by gmr-mx.google.com with ESMTPS id k4si2039604oot.1.2021.05.19.06.46.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 May 2021 06:46:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.93.78 as permitted sender) client-ip=40.107.93.78;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UkUjPEEqSSCzlGshoF8CELAeHlOgjeuypcFswMjVixc/RHkG/mvjq7WXshtOYLcsJmSjBzmNKREhRe2x1Bl20g7vdVXraTq4bksu0/rN+K74IIhqQse27GBFnSLuEY1385F04cC3y4+nLFHN39CwhuoQhQv63phPSO78slQwqUR1Rng9kJ+SAsZbeFCaxGa/hWB00rcGYFPf2Nkjz9fu4P54xB7gjkDWYqhoWI4aGwAx6JRfzqu6oBV3Jl2aa3cSWGsiQOTGYG6SpSFdZrvotw1LyY6rFl9AhrumA4+AjW25G7tfH+DLbGGdtiwHGHmTCR9ZAMxPgF4zIjrrA5123Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X3JRTw/uif9vuHbLa305dSEqqBqnMBilP3IBndAyd5w=;
 b=ej+ZjzdDlU07Kv/vVyfVWXBlunKAT9qGnswx5bbFXOGF5HgdKDzcHACk/Oy9JtQgIUHIK8RMq8YShWWB0ExYat8UfZq9I0Q9+FjvpzKtSnefQy5TFKe2fNSojgePtMJ1+Vl8J5uXBwa3dm0wFjFVzeG41+s5Pi+aA3cRG4S3JLzwyeuDefncr2wdX9NGuzIYo73+cOXiQ4U2l+iTKweoxgyRMEiuf9iTB1jeQ91KJRS8ibf+lEblCp0D265W4P70U4xjNINwJi0f0EgNccwHHt2VVbmTmymtxcVYu5w/lIAnsGx+7BljDb4pDCUB+Y7oPiQozDM4Yyno2IKgJqV8Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB3834.namprd12.prod.outlook.com (2603:10b6:5:14a::12)
 by DM5PR12MB1339.namprd12.prod.outlook.com (2603:10b6:3:70::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Wed, 19 May
 2021 13:46:02 +0000
Received: from DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::ddb4:2cbb:4589:f039]) by DM6PR12MB3834.namprd12.prod.outlook.com
 ([fe80::ddb4:2cbb:4589:f039%4]) with mapi id 15.20.4129.033; Wed, 19 May 2021
 13:46:02 +0000
Date: Wed, 19 May 2021 10:46:00 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Potnuri Bharat Teja <bharat@chelsio.com>,
	clang-built-linux@googlegroups.com,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Doug Ledford <dledford@redhat.com>,
	Faisal Latif <faisal.latif@intel.com>,
	Gal Pressman <galpress@amazon.com>,
	Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
	Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
	Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Selvin Xavier <selvin.xavier@broadcom.com>,
	Shiraz Saleem <shiraz.saleem@intel.com>,
	Yossi Leybovich <sleybo@amazon.com>,
	Somnath Kotur <somnath.kotur@broadcom.com>,
	Sriharsha Basavapatna <sriharsha.basavapatna@broadcom.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 00/13] Reorganize sysfs file creation for struct
 ib_devices
Message-ID: <20210519134600.GM1002214@nvidia.com>
References: <0-v1-34c90fa45f1c+3c7b0-port_sysfs_jgg@nvidia.com>
 <34754eda-f135-8da8-c46f-3ef45a08ea11@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <34754eda-f135-8da8-c46f-3ef45a08ea11@kernel.org>
X-Originating-IP: [47.55.113.94]
X-ClientProxiedBy: BLAPR03CA0094.namprd03.prod.outlook.com
 (2603:10b6:208:32a::9) To DM6PR12MB3834.namprd12.prod.outlook.com
 (2603:10b6:5:14a::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (47.55.113.94) by BLAPR03CA0094.namprd03.prod.outlook.com (2603:10b6:208:32a::9) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.33 via Frontend Transport; Wed, 19 May 2021 13:46:01 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1ljMWO-00AiT6-F3; Wed, 19 May 2021 10:46:00 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: de18f955-9f47-4a8d-84c2-08d91acc70d8
X-MS-TrafficTypeDiagnostic: DM5PR12MB1339:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM5PR12MB13394A6096C309000C4A7ED6C22B9@DM5PR12MB1339.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: veJG0aWtmdIZ4iOto4NV35ucLp+6DEW1A5xgrDrlPOyB1dOwRF9N/W2LL5lzdDI2VeTsySNa72IqusO8M1rWm4PT8QIDVsZ1gD+mbdCw877bWnxMCBMcXhpuxIrUbc3xK+0J+4snjGbiF9/RWxCb/RyzNIMIVEFtXmLNcved62UyXrJtF7d3D/EKueoiwGMF6HQ51jrvaarX64HdUNDh1KC0j3WpmgPmgpbHzLVJVQzyF2F2PM8q2lPhhsmUMVEOXMvA2+5prjHt+fb9vKv9M1ITdTjmHCRENEHfLagrbDWoDqFxH3ogDGbmZ+ZjddAr1XMwtDqg8+Z9hPL6IAW9iyqabPza88cCQMD2vXCTGTM8IUrjsFDZGRs7Xz4newQwLMww56AnCfmEPG+GeUJXFX5/ggnCKULBNFuva1xdIdTpJOBlXzWwRIuQn/OEkyh3YzXHSQ+SqkzaGKQoPXubl3rBhM0Hs5gWZpbptP1twJ5sdPiJV/ombdgPlOm3JRkm4oIIXi71vqzwWqzVBxMh9vLQjUnB0AjodvKpIJ1sdlhi8dLKz0wYMDDfnZmK/JgT32j9vatoJ+SFSVqXI6CYF/LXE8BYKOAeLGt5GGDaXQM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3834.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(39860400002)(396003)(136003)(366004)(8676002)(33656002)(7416002)(36756003)(6916009)(86362001)(9786002)(8936002)(2616005)(9746002)(83380400001)(2906002)(4326008)(54906003)(316002)(478600001)(66946007)(5660300002)(38100700002)(66556008)(66476007)(1076003)(26005)(426003)(186003)(53546011);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?GYPxGx8ggiS5cURrlrzpcjzJDLT8578w5uoh6vk3D0CWMEfckLXjoEg+9KHK?=
 =?us-ascii?Q?7gje4u6im9XM4MYKjAsWxanup5VPMdQovr+mG6lj9m/cwqqx9crqWfdK6JeY?=
 =?us-ascii?Q?/QweZgtOSNkxh0lVoPNMqDuBGgds4wR7rNsrANU1zX8x0Yo0Yaktw5urgD5k?=
 =?us-ascii?Q?DHMdL50raFB66ufr76k+6j+B2YyRf3GecHg+pJuAc5igEO/D8pKGtq3DqzrF?=
 =?us-ascii?Q?0GzU1K6Ju6W3LJhzO/YM62/2w5CiU9u/5QuxO779RMsKI9lz4k9qPEEUxbqd?=
 =?us-ascii?Q?ZdcGX2Qy4jN0eRb9xiiULpRdlKr4mpg92KN9DbYWg7opMyIQpCyzND2conGR?=
 =?us-ascii?Q?STFWs2k4uDEFyAnF30l+tHKohJiyiLVgwRZ7LzEXnLJ0NwRby1DAf0gLALs2?=
 =?us-ascii?Q?3hGYGttB2qomJutECz7GJ+vU2pH+Zc1YXzYTQ4V/7dS//04ClYb2G4ePuj61?=
 =?us-ascii?Q?9BF7k2JdG3CPXj2tD3ybu77nI71M9fdaNerGkJvEJ+viyKq3yHNNEth8AjtG?=
 =?us-ascii?Q?f5WVTSedknEGdtoN22FhoZTWGvQ72UUk2kpx5bfC1/GEHGiPRdQiG55gA6GE?=
 =?us-ascii?Q?v3Y8gXRJimb6s9WaBIPzrqD1Eg/mW/0cfK84sWU2S75O5UFEIIhaP/4fdslK?=
 =?us-ascii?Q?qtkMgS9+IEk9JSopHifieKLdvhjJKgT2pq5I4yNzqGVL0wJlTvaEZMwMxVec?=
 =?us-ascii?Q?LTLzUT5QLU/0PM0JSzwVd/h1oncu4H5ZdiSsuiiqrXu67ADJXFG1pLUjC6UN?=
 =?us-ascii?Q?/MHvsQjU/OBaYKwJMqJppl1Lr5Ho6m1xLq4C4D18/h25vb8+bsc2GPgO/FH6?=
 =?us-ascii?Q?HtBpZFLde2s2spgpVNkf3w9mdfgcW15+pk2EpudECulwcr4QE0naeSrPTKgp?=
 =?us-ascii?Q?VRthm1rwXJ1ItMjgfBMm7MganGFdPg0/MxCvfhoIWvxaLPE70gNJ54pl2t0T?=
 =?us-ascii?Q?fbqQcc5ZbE6cBWd7sDFcRJ0yO/81k3VY+qS5N4ktXcMa+oL/rzkzy3SoLoa5?=
 =?us-ascii?Q?IuUuXATvwp0Sf9vltHE/1kKGW4TpFXiMwfiN9KEDoh5FK+g/8F0DE80clsgB?=
 =?us-ascii?Q?9i1ofxzt/xcQ0R6XjgpjthJcWkZ/l2pjFe7NelE+UxNIaZF3ISoSbxxKyN/P?=
 =?us-ascii?Q?BEVIP/iFUpycjvp8CU03clAfoa4FST590BVPhOx5CucHK/8A9zHOqC8CLDyi?=
 =?us-ascii?Q?Rrtjia+yJV+gah1FJBiOocQd3hhGFrCJntSREHI7nmfhil6JOs3a2Hnk9ojj?=
 =?us-ascii?Q?ywkZradeTS8bR15HeFt//P6PuFYZPx7q5yS4TclN/YrvnsixFppBbbOipdtP?=
 =?us-ascii?Q?+2vqrsO64oWFseoKqvB7N5A4?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de18f955-9f47-4a8d-84c2-08d91acc70d8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB3834.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2021 13:46:02.0353
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: odTVcIOeWJEmAV1vpJU6/L1tuxVazdYT/rIptRlbEC9DeZwDSK9SHkkAznJX+v2z
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1339
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=f6e4dFIC;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.93.78 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Tue, May 18, 2021 at 04:07:49PM -0700, Nathan Chancellor wrote:
> Hi Jason,
> 
> On 5/17/2021 9:47 AM, Jason Gunthorpe wrote:
> > IB has a complex sysfs with a deep nesting of attributes. Nathan and Kees
> > recently noticed this was not even slightly sane with how it was handling
> > attributes and a deeper inspection shows the whole thing is a pretty
> > "ick" coding style.
> > 
> > Further review shows the ick extends outward from the ib_port sysfs and
> > basically everything is pretty crazy.
> > 
> > Simplify all of it:
> > 
> >   - Organize the ib_port and gid_attr's kobj's to have clear setup/destroy
> >     function pairings that work only on their own kobjs.
> > 
> >   - All memory allocated in service of a kobject's attributes is freed as
> >     part of the kobj release function. Thus all the error handling defers
> >     the memory frees to a put.
> > 
> >   - Build up lists of groups for every kobject and add the entire group
> >     list as a one-shot operation as the last thing in setup function.
> > 
> >   - Remove essentially all the error cleanup. The final kobject_put() will
> >     always free any memory allocated or do an internal kobject_del() if
> >     required. The new ordering eliminates all the other cleanup cases.
> > 
> >   - Make all attributes use proper typing for the kobj they are attached
> >     to. Split device and port hw_stats handling.
> > 
> >   - Create a ib_port_attribute type and change hfi1, qib and the CM code to
> >     work with attribute lists of ib_port_attribute type instead of building
> >     their own kobject madness
> > 
> > This is sort of RFCy in that I qib and hfi1 stuff is complex enough it needs
> > Dennis to look at it, and the core stuff has only passed basic testing at this
> > moment. Nathan confirmed an earlier version solves the CFI warning.
> 
> This series still passes my basic testing of LTP's read_all test case on
> /sys with CFI in enforcing mode. If there is any more in-depth testing, I
> can put it through, let me know. I'll continue testing the series and when
> it is in a mergeable state, I can provide you with a Tested-by tag.

Thanks, I think you can probably ignore the following versions,
confirmation that the approach and root cause is correct is much
appreciated.

Jason 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210519134600.GM1002214%40nvidia.com.
