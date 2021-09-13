Return-Path: <clang-built-linux+bncBCN77QHK3UIBBGVV72EQMGQEG464LZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDFA409C64
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 20:38:19 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id b202-20020a6bb2d3000000b005b7fb465c4asf14472929iof.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 11:38:19 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1631558298; cv=pass;
        d=google.com; s=arc-20160816;
        b=lhMceQd48AFLgce3UPG4U44l+U56HWdMVAaA+GdJoGnVgL8e7EleL2dkRwtX19vvSA
         ot4qmG4jpeyEwsur4ovN3k5nmt27YG7bVcVtOXVawWzJKCAmV0pyBdV1obHI4o5aiJd4
         rbafreup6RSdBrLAA8Y3TaFCKOo63q+leyepexzss+zhi8CfBsAZg039mn4FpYJBJnha
         gR4BbcljW0HtIrWDK9s32NuO09Ar9qcpbGyGabCsy172sPeaU4dQ/J8/0L2IIJwmRmif
         ZcT4XRk9CQbb/+6OAhKTSsvmHhU/tDvN++cro2MM4xxy8wijHZHBvTEivRvExpBWTFXT
         F9DA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=J30qE6ssQ2YB+7Gx37Iu0zS9wL9TKZEk8Qlzu5d/rJI=;
        b=rOweT9nW0ebbpJljglyEZEjehphHGmULW2p2aStVxktVw6UHJaXmISjyI18nXMIwaj
         HnZ8IUPECYgZe1e/hdyQQXXV0Jn5yqEAOUE1tTw2wLJOD4zJgUUjyFXItp6aLBmudlF2
         +6VZ6QvNq2OXrxjZSKDd2LF4wYZI4EdwE9fCdf3wF11ehsEcfRpj5mpLSUVKSrRLlrTl
         98xEH5jc2yO7TTbFzn1GGCISPb06BHuS1ChEg7PId6mMM5K4QNfNy121Z3DpKM5Y+lw8
         JorqjnVHibEO5V4ulItg51R+mMDlKBESZqXpdjGzACU6NCBgd0dwY94X+NSkbIXGYNEc
         ms3w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=tGgn55a1;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.237.78 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=J30qE6ssQ2YB+7Gx37Iu0zS9wL9TKZEk8Qlzu5d/rJI=;
        b=OIviDL1rxen9SlPG4Tg8OYSy/vh7Bm+mbPW/Dh35P8/XPc/3iBwr+qK1AFIUTqTSTs
         LR3THMJuQqamMAEVnSJTJ2zxc1g7+Y6kPS6kMVeGCSM6QxzqRBaDWHnHt8NVry0Frub4
         FUZGgMIO9p/dva9QPny4s0dKjYSvP2nGsWhMfn8voLHaUVDZTWjtzXWk3pKOMPLZ4MH6
         iOU30hkszCC4G4V127GJ/O5AQ3DRcxxpHtZB8fvP9ptg6PhXyvjzuX5lV/sMjz8XyDR4
         o+8/a0Zn1WSqAffK7lo4x5lzaNMZh/vKFQTP+LD8qRsGxg8LnpsyR8F7CjfZBCm9PGJd
         U0hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J30qE6ssQ2YB+7Gx37Iu0zS9wL9TKZEk8Qlzu5d/rJI=;
        b=ObTqr3MqjTi+1of35ARgEc+kKN8CKOUtW/tVQg0PI6zf+dmbNlSo2gVdQwl2CCtHJy
         AZQtqGpTE//9mnzm/9cNk9cFdgn+7VKgiKTNG+u+a9OTlHsc52yajak82dZLyUhpd/ub
         UnS1e9anYn85ZH8/UnaBEoAgRrMfR3Z7sHZ5u46M5RkT7Nvv8cPiuBMs2kS3xCdmP03m
         OIRJunACQqryZd0QEZV1qxs9z9Eygd1XtI1qCp5jgbq9U9P0P424RffKnBaffhFtXKKc
         0GcSb3quEFuVQ/ZEZzd/pUbyzJcmZ8j7ZU7jxcpKljOc0NWV4EKcHF5jmfi4W3lXnUEF
         mTAw==
X-Gm-Message-State: AOAM5311GzBraO/ct/cYGQG9ewo5rXT0xsVzkVRiHFT00Di1n6MysBS9
	7JW3ECas5ympwMJxohPGEnk=
X-Google-Smtp-Source: ABdhPJxCOT/XVEibC8Ze4ELY6PsGDohI9vUiktCHBN/cd8uzFingxT6u0KAl+8opJ3+oj1vIQ7xM6g==
X-Received: by 2002:a92:dc02:: with SMTP id t2mr8957356iln.126.1631558298874;
        Mon, 13 Sep 2021 11:38:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:2d8:: with SMTP id 207ls1002542ioc.2.gmail; Mon, 13 Sep
 2021 11:38:17 -0700 (PDT)
X-Received: by 2002:a6b:3f08:: with SMTP id m8mr10304588ioa.117.1631558297827;
        Mon, 13 Sep 2021 11:38:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631558297; cv=pass;
        d=google.com; s=arc-20160816;
        b=PCjx4x0HyIfJ/l53zwUQPI7vSdsXCsAKoE1XBUV4iigTgQwDzglk/0dztsuIjY13RI
         9Pmgahd2ztUv9tDJ13J/nfOi6MgUMzLk7GdsHwSYasqsaIETaJbVMqQNyHLaAU2oJepE
         VX+S7ok3E+hlzQH9SVoJL8KYATujnoHbkpEhoh1MN9om4ROXTFgpGopISjTn/nBzyShc
         mxo/IqnVyO8soaBBQIW5AKxqYb7BiX4VTis7u4UPM+MrsED99ro+RxQ4xFnE29M8CVt9
         PFHCY5naBjFOAS12G7C7KYL8dVkypHvNpF9+XyQyEyvlOo58j9McoyZBWNtcc6T1zLcW
         W4fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nblRSiDjixCKY2YMy9adS5Ijgq3+bkacNZLzSpLAqCU=;
        b=ebWIcV5ok4Tbdd1ixJpIY1aWlryXf7prdmDB/5ZLJHW1G++QcffiWcu3bhd7mMwmwY
         TBWA5FhGrCOBWgWDo8kMNwYRvEzqE9hne6b7ejgKZDmVOidS06CauBv+lZFHXyCEkUR5
         MjoaiGRE7jbmPL5qQCT+cgcGyBFh2Ro1BnaabfbFIjWMpYibJG21PNC4lrm0FF5FswYr
         sUWzcgttP0dQpm5KMMiHFkRlaCQEF0x1f5SYsm42tPAwQLJxitaihPm4EN0Gy+kvcuOq
         Af0XHiV6G4cdjp/0b1OkNhCi3ykXI3DCk+zL3l5nl2vnIAcmwyb9QiCiebNXK87fq+SL
         62bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=tGgn55a1;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.237.78 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2078.outbound.protection.outlook.com. [40.107.237.78])
        by gmr-mx.google.com with ESMTPS id l68si783515iof.1.2021.09.13.11.38.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 11:38:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.237.78 as permitted sender) client-ip=40.107.237.78;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WywtbSrBEloD/MfTcIf/so9h9zbinRwkeQWaQzSOdE2V1YhbJqE6znJ2V3XjkjFvWegBb6udTjqLR/+oLUtidltcS7t4QSGvMRud2HU8n693rPYtVGGTqO1VUTQqdq1ERW+EA3iLO4jer6tRCyH8qQXuvkYXIesgNs5odNZLX7jRuO1eO2hVFyUs0ZXpSibVLeA+6hqK30TbMhbSRRQSnJKGcR3h4kVTjmhGATWtjdZ1lo5Uqt8wceRyQKicuDDHQbkYpJZzeLPmvfMZ9PW7QrQZtxLmXupdnTvH2e5duXAHqcOu2mT0ZYNHHHxV8UNlqzUxCWQTeMhpMa6gc1ixFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=nblRSiDjixCKY2YMy9adS5Ijgq3+bkacNZLzSpLAqCU=;
 b=SU5oeLVDuDcaciGCRZkkYIa8cjVtKJqgA4XC6xMQ8goo6X1i53kjUr8A/yqCJuBvfWQXujOIZaBmSqSxcwATsaMTLJ4KwLxb7n0swFM2liZYIntpRVMJO6Ud1yVvzxvUadqOagtZAOaBLvL/2j4c1vMcPcrHBiejZTOMWc7+g0DF4vt3vQCLoRgUZiAJYIWMhsHMBVxVm8tj5etgmyQIGWA82HUb5hvl4ORiuWqLeIMXsKHId0Wp+DfkBH3aLNTuCAPfrZTY+bfE4HI6TFx+d3Kx0y0I3CoykaqTaB1ZEeRBDtqQXEGv0tdqHqGcSWYyGeUcDuOHVnU3K0mOQFEZvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5285.namprd12.prod.outlook.com (2603:10b6:208:31f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17; Mon, 13 Sep
 2021 18:38:15 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::e8af:232:915e:2f95]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::e8af:232:915e:2f95%8]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 18:38:15 +0000
Date: Mon, 13 Sep 2021 15:38:13 -0300
From: "'Jason Gunthorpe' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>,
	Nathan Chancellor <nathan@kernel.org>, llvm@lists.linux.dev,
	kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: drivers/infiniband/hw/qib/qib_sysfs.c:413:1: error:
 static_assert expression is not an integral constant expression
Message-ID: <20210913183813.GY2505917@nvidia.com>
References: <202109112002.NZceUwiC-lkp@intel.com>
 <20210913165317.GX2505917@nvidia.com>
 <CAKwvOdnGaVb1XGwYpNK_3zAEyZ0JC1SDjC1UzzFEH=d_Mdi7Fw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnGaVb1XGwYpNK_3zAEyZ0JC1SDjC1UzzFEH=d_Mdi7Fw@mail.gmail.com>
X-ClientProxiedBy: BL1P223CA0026.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:2c4::31) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by BL1P223CA0026.NAMP223.PROD.OUTLOOK.COM (2603:10b6:208:2c4::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 18:38:14 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1mPqqL-00Gjg0-Rr; Mon, 13 Sep 2021 15:38:13 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 840e3896-4081-4372-1831-08d976e5a59c
X-MS-TrafficTypeDiagnostic: BL1PR12MB5285:
X-Microsoft-Antispam-PRVS: <BL1PR12MB5285B30CA921319A82BD429BC2D99@BL1PR12MB5285.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HxrkLHHphZ7snV9sB2wTQwuhMQyZX0+6oHCBMGpKhBnEQRQHUDnzR8/bFb483FIt1eMXRDMfPMDz+tLesf9kKDXjhcZC8rDtzeL5qNbze7/bmBeCnlISkcEN/jEh+ff5/p0imFW7vKSB78s5MOJNMKORSDY0VfhQg/2BJZfxuv88OAsahpW9mlsUhI744rJ9hddlquoYplqjQqgnlKKww0u8xQjAOFGHEetd1fY3ghq7cUh0BT7UpMCl2Gw5ISVDSo8TNOX0VCIzV7vgIveFp04NBF9iL1iUJtJCWWBAIEDxpLCMOTdWV3PSPJafzw5YY+fPTQ0iVhkv6aOQdmT9ixr4LgYRzPEAld9kwjwzmX7wnKqBMtGCTx4urdUACJnINLqGeUpyEFWmvu9x97JWdnea2/X+JjVocJ9j9fvLaNuQADey+3T/UvyPcdM5gajKLsgFrK8abuJJ93GJbstKGUEdhVB0yDRdbsbhJMHk7JAZ6g6N+NCuD0bJJr/xsQwtMcYG5ZUgr5c4WvTLmFXARCVRPxFn+GeXAbG1qCRoZMw/MV8r0Af/0iDd+dn6kPyoqAiqI22Tar2wNUQcwUMuwLyop43oqrQDT5g6PStiwff9XhPJEmQHUStp9WuEY/r1gWiiSdtAznsc4OAawUS17Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(136003)(366004)(376002)(39860400002)(4326008)(9786002)(9746002)(478600001)(8676002)(5660300002)(38100700002)(8936002)(2906002)(1076003)(36756003)(2616005)(26005)(66476007)(66556008)(33656002)(426003)(6916009)(66946007)(316002)(86362001)(186003)(54906003)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PmMTLZcHnkhHqkQLH+xbe+JjXVdtXIrVM4F8ci+c4i2pkRqZAF7ktCwH7qTm?=
 =?us-ascii?Q?TEHy9CEn0grMTCwK4ZkOTvfnvxoIK1juwkzzbEzso/bp29FiVYSsrBve1oD2?=
 =?us-ascii?Q?TMwX3URxrb7LCLad3tEbPk7ebkIkMRnR88EqVAEJoJoipa1zJnUKs5PaZ0vD?=
 =?us-ascii?Q?vvdqoJTx/QMdvAAHDmQOChLbVPFWXhRC2kpsEKaVvNpFmUy7v3dvrvVBU3Z2?=
 =?us-ascii?Q?Tg/6TzYiZd/lvHutWZRDw8Y32hDYC+zqACQjs4dbeiwDsjJ0sGJ/wW+HLXpj?=
 =?us-ascii?Q?sTl0AuZ9scZdrl0okWOafYw5EFcpZU+BCwr0IJm7Ql/VG6249sazZWM/Sj/b?=
 =?us-ascii?Q?LwroeTtx+VOlTsMtDQ4CaNgrJ0UKuTz3kmpsBFdiAY8K81i+benDySK07SEF?=
 =?us-ascii?Q?81rJCyA6V+9fpWob0SiEUSJxgH59KD+CAnkTyCrx0C9r/Mf0l0GSd9hNaXmB?=
 =?us-ascii?Q?9nNIUN8lfqHkdGdwODBDIF/b8LfSP36bbDnnPFOEu11fTW87NOP6ON4+i/r6?=
 =?us-ascii?Q?xIoHqLT3E5rJBblEtUJRdEf0+Q4xTF58sFon6xtpX2R2qxtXzhn+3m06BPAN?=
 =?us-ascii?Q?RPyEWZjMGovtyCfEYnU5B56EgUBWWb8OQTMRWQ0/gOaCMijdu4zFVCGrEOCB?=
 =?us-ascii?Q?fJCO+rVzUjwRhJABt6ihQT2b0tNjVdi9QIo0B/xG8kPe07nCwfMBLQbICLrJ?=
 =?us-ascii?Q?2JNujok+dDPWIgkRJcYH3+A7dh9InpBS9+BtvVzH2YOs4LJRunQldNUaUFsX?=
 =?us-ascii?Q?SyuldbFBH/kRR3Etg/VJFPnk8oA7UgGPebMPMf5mVxlFAP7x16Dm/lamBqJo?=
 =?us-ascii?Q?iVrQy/Y/UUPElxfIum2cs0C57vsvr8DeYLosLEPctZe6QVkxaiz1XH+THUio?=
 =?us-ascii?Q?3ft3kIpCv+EZFmKv4huwJwvF5REATfZbuWDJFgi+AWITdZoNLZ86sgGpSjWf?=
 =?us-ascii?Q?2wvcmFYMZn781oJPZo5JOFMtpxul6wKwkdoc8XWnN4xxGW751cQSddntHUJe?=
 =?us-ascii?Q?FRro/VYkv1vxMcuZxLuMjDzJlhKrwqGWIlLquM7HNGRCGz6XxKNeqC2X32qB?=
 =?us-ascii?Q?ScVzC5LvcVmOa3fk0cPemx6jIonf+JRreghxFZhK9C/xhgxApSusoMRuq80m?=
 =?us-ascii?Q?cECWEYZ/t05M3gULP+MDB0D64FpxfN1lvjqbe/kSwm+eUaQ06CotTTN0QEku?=
 =?us-ascii?Q?LhjjZ2hkMjKe61g9SGhJK9+xAP9aj48tQd84iaNy1cZp2FLQ0tWMJg9WjAZl?=
 =?us-ascii?Q?Uo49I3T5iSHEh9iXZnLKXry2NMpv0p1IyiakQtfzFWo4UoeN0W+M+y1FHuYd?=
 =?us-ascii?Q?PTSweYtr37xs1T6R02xW2loP?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 840e3896-4081-4372-1831-08d976e5a59c
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 18:38:14.9227
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ETNpjFFk/2XphbDdRrtc17PgknBa/f6lhFzL0anarUJenBozcUy99vbvL/cm9P1r
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5285
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=tGgn55a1;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.237.78 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Mon, Sep 13, 2021 at 10:00:02AM -0700, Nick Desaulniers wrote:

> > This macro would like to know that the passed in member name has a u64
> > type, all the things I've come up with fail on clang - but many work
> > fine on gcc. Frankly I think this case is a clang bug myself..
> 
> Perhaps, though this assertion looks a bit like offsetof() to me. I
> wonder if that can help here?

The assertion would logically like to be this:

         static_assert(typecheck(((struct qib_port *)0)->N, u64))

Which doesn't compile because typecheck is not a constexpr :\

typecheck also can't be used as a build bug on zero in the initializer
for the same reason.

My original attempt was

                .counter = &((struct qib_ibport *)0)->rvp.n_##N - (u64 *)0,    \

Which is fairly simple opencoding of offsetof_end but clang whines
overly pedantically that NULL subtraction is undefined behavior.

The current version is this:

       static_assert(&((struct qib_ibport *)0)->rvp.n_##N != (u64 *)NULL);

Which *should* be perfectly fine, but clang explodes for some reason
complaining about -> on NULL. I think it is broken and doesn't
understand that this -> is not an actual deref but pointer/type logic,
much like this:

#define sizeof_field(TYPE, MEMBER) sizeof((((TYPE *)0)->MEMBER))

Which does work.

So to my mind clang is being buggy, and I'm probably going to just
delete the line and a give up on type checking here unless someone has
a better idea.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210913183813.GY2505917%40nvidia.com.
