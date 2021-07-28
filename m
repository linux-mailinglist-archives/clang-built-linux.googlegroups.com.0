Return-Path: <clang-built-linux+bncBDIZTUWNWICRBG6AQSEAMGQEXEPDVFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A823D8A6D
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 11:15:09 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id p8-20020a17090a8688b02901773e164aa8sf2010947pjn.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 02:15:09 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1627463708; cv=pass;
        d=google.com; s=arc-20160816;
        b=hZ2P7xurahIgZt76bXRjiUn93ng7+G7LkLEw2UpszHic5iUDDkMh5F5s6n9se4XV5q
         LgV0X6G8DPcDTpEie5hhRqcKhOMPPte1ysF4d2rRXU/AUbTIGdjw/luAduOVKvW/pXxT
         Z4b53r1O6IDXlV1sk4a2Peby8oKm6TxK6L7fSDxIgNvXzde1YX55hhVopI95sFzgjhYC
         uGUsh8SWuicj3ODcii+1JLpduvUn1VqXbV8JSvclTL1IL/4w1WVh5lkt6zejX7EljUIU
         ExVGJ2Zr34CvzhvN0XRs77solzika9yziRL7+dahg/KOoLXKYFsnY//oqBaRdu+9Yz1J
         FAHw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:in-reply-to
         :content-disposition:references:message-id:subject:to:from:date
         :sender:dkim-signature;
        bh=ty2kQZmL8ye4tMmRA9E6W6/40HxWCGXaKV/i+XkU79U=;
        b=bxNql2zZkNzHL6hjHXxd0yaMNxk6HUP+YPZ7iT3+kKSZqlCG0Gi9QAgekI65Jt1PwJ
         H5Denso2IywCEABNjkf2ROeWCacwCwGrBYo8FZompJAueE6sQcZWbyONaG2qhgRT23KY
         TMImrSa7xQMkfE6FqpQA0GAYEpQ8gjlNgxMBTlI1HBFPTWizs6BzKRXROvgMr8Hj6+Tt
         9U84KLSsrInoJlFo34HKtVv5pWirx7vyhN7O9fvODZVZ/ImcmakNkQ7TtNBPEeClcvp1
         MqxUZ2Qg5YBckUSf/cCaOBThYbIgXLLXEnOB3W6+QdsFlKAW8bFCYdezB/nJgSnM1es1
         YRyA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="GSN/EeQn";
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=TUiif95b;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="Pge/R+y3";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references
         :content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ty2kQZmL8ye4tMmRA9E6W6/40HxWCGXaKV/i+XkU79U=;
        b=ZjPs8E/1DdIkQupobmGX3sexmvvIiRiR+bulzqDesxptGZWpfjERZFEOzrLn0Jqejy
         C/+OGBZnO34N5MAR9jhvs4opVGSThr4TXsOjjD3Cw/A4YTn7uK+rPnpRXHuQ7rGmW/hO
         /iZcIo+Bp6FRwZOFfqriYCye1RoJTi/R6Zy5Jr5FCMG0LsiQQWTHAWSgCRtIkPBUnTmx
         LQ5nk1/qCLLSDCUD3Jqm0fKJpLvogu60/SCHqsucpgkYjdUP3Kmg6qUrxUNNASHRxJq9
         4b2xOPZkrp/o7qyBUHKwXgX01KbDFjqKub9fVxndBaHcYzEZi5QQ3Xs1+LSJgRaH8Pjq
         oDFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ty2kQZmL8ye4tMmRA9E6W6/40HxWCGXaKV/i+XkU79U=;
        b=ZUW8g1eDTZPCKzFUJfBV83j+kBXjYliXgL3MlHmM8joAYL9c4tU77Him9kJnXFTKyd
         3dvn8+0tYzpwD2QvGGT08ynaA7q+aFUpmqrgbhZWJ72xVXde3gTgjDfR/nBLP76QMPCk
         EIQYCEiLUkNdaxzAdg5Uza2vqR1PBqzL0AcycCQ0xEcUDqIfi0pyuHPiwD4j8/NJrWa9
         7d56kLA7VhpLR94OZr//pdVDQxO+OFzwtYIlKPaOWnFTEs95fud9tfcP0txWTr94pyuq
         lqQNaDs8F3fGvo0o+mQbKr+EYLXC6bckyUICnUAiOxKxLWt0JYdcUiZzGAMoQwxV32Di
         srEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qRlEtkbSDz+6Hv8FFQe2f4UgVkdiicPokGmB7rRiQ0oXxOuR4
	tVlJk3RCPP6R8TtAdbvjdBs=
X-Google-Smtp-Source: ABdhPJwrW2xzdQXDMeAqG7sQnOcztsPctrgBmi/YZdya3r2ODSupR8ZMjRH42XLm7/3ohkOHbmXxxQ==
X-Received: by 2002:a05:6a00:2303:b029:329:308f:9ef6 with SMTP id h3-20020a056a002303b0290329308f9ef6mr1785002pfh.24.1627463707901;
        Wed, 28 Jul 2021 02:15:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1203:: with SMTP id l3ls937133plh.9.gmail; Wed, 28
 Jul 2021 02:15:07 -0700 (PDT)
X-Received: by 2002:a17:902:7004:b029:12c:13f3:77c5 with SMTP id y4-20020a1709027004b029012c13f377c5mr14074153plk.66.1627463707287;
        Wed, 28 Jul 2021 02:15:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627463707; cv=pass;
        d=google.com; s=arc-20160816;
        b=u77ZKeAR42eBpfV6xuetiCOrtLblSYCTusgAFT/8haFUGuYE4t2x5L3Zfuvp5SmbWL
         uOrGIli1t0+gPM0s1t0cDMwADrjf4PeAwKSONS5OSS3/y8KM/7+UuaFozC8fawTsUpWW
         DybyeTAGjBXVsE2kiDZsasr3ovSapYd0z9DXHaFS9b3tui742AHjPTXyKB/StvI57Las
         A4gUEMSaS7e3Wof4Q7BPjW4a2tHNk7SqbNe5pfm5Oa218+wYlh/Ypvr5PxAVdBlMD2RY
         SDJTSWvd1c7vjV8dNsZiFSOb/0DEhHd1oN1Ss2u2im1h0LOA32RoInOypKlh1YUYx5AN
         br8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:in-reply-to:content-disposition:references
         :message-id:subject:to:from:date:dkim-signature:dkim-signature
         :dkim-signature;
        bh=uBRkjZlYYDdNoPUkRuEzqVKzc7bNfow3yblGbH0Iges=;
        b=0nD6U+fVd3F/uumQ2YnyUIocupcJV/54q2LQNTh8B9UDNhRCrDThSVlKfWkCSZTkfA
         y3VAM+SW5I9rfVEyQP5Ku80RzI7bB3Me6dePTXrNNPahsIsn9Vq1AhlVMQy+rddc9Usf
         zKL/geJsxCLvNmacbs7CfTS4XhAPmUVgZSwQTCua0beH4xFONWZjNwNQM+bSw7GZw2EN
         hThEcpzbUy4xVQCYHaFQ9478Oc2O2JK9BbMKNmIYa65y8SIJ+IOwjPbO46uup+gwHTi8
         lZ9VgvRenKUHe+xFpeM+nuoQEhuefnLHoL57F0xGfp/EVgnIC71e/KR9ewMh6qFFYBh2
         mrLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b="GSN/EeQn";
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=TUiif95b;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="Pge/R+y3";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id c9si419234pfr.5.2021.07.28.02.15.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Jul 2021 02:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16S97xeI005207;
	Wed, 28 Jul 2021 09:15:05 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by mx0b-00069f02.pphosted.com with ESMTP id 3a234w42fp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 28 Jul 2021 09:15:05 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16S9Ao2p175307;
	Wed, 28 Jul 2021 09:15:03 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
	by userp3020.oracle.com with ESMTP id 3a234x8t9u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 28 Jul 2021 09:15:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kSGY/Qj41ok6AYmd/xEfGamtJbqR13TXaEpCWWxiDzfIxH2NMMh2GpEjc5d586DZS8tDMAX9fy2njdWiPmMuz9xSuslc8+Jcd05tIWPFK25AoxGGzekhYfmTm9nfIWDFb5wFjR7VsUE/etIVMv+cKM1ba1uV3Jaa9R8n0lTTkstGCn/sHY1wDNhyFQQTrBg79i3mxOl3SZ86DfdSAx2Ryg6rn0UkT114dO0/Sbvsf0Tl0p0uglJGAQckttyJQfVRGQXyUbIRAirtenoCv/7H6Cp0LuDEM3AywE6Qwl4YHony+xVibdRyuK9rCII1xSzWJu4/VXguI1e7aziqSgl0kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uBRkjZlYYDdNoPUkRuEzqVKzc7bNfow3yblGbH0Iges=;
 b=OkCEFw4MVktfAQzUKZXIgvuF1eUSt8fHUDU2e9ylwjHgj/gXKEIzbkv+Ij46e/Y6NhwTA0OjnIJF6xxbO8rDPA07Uz/KHB4RdCt33yVtfcj28fne2ks9NV1FCtDNfGSR5xDJox/DexclxvqB5zWosRwwSOVgyra7tH50yDV+PkPnwBshL8vLw4PnWEqFOter539+mhu7iHDENJVpYloyo0sLHR7mxxQrV0cytzNE44l/BXAwb2Zh/sIG41o7N58iCDhb8G250hrOr/I/xWW80TfA04FVDdmXHXuNnHkhbLOA9VANMVcuIkwL0O1L3BaH2o5BprQkwVXzjAqfcfV/WA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO1PR10MB4658.namprd10.prod.outlook.com
 (2603:10b6:303:91::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18; Wed, 28 Jul
 2021 09:15:01 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4352.032; Wed, 28 Jul 2021
 09:15:01 +0000
Date: Wed, 28 Jul 2021 12:14:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: dsterba@suse.cz, Kees Cook <keescook@chromium.org>,
        linux-hardening@vger.kernel.org,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Keith Packard <keithpac@amazon.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
        netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
        linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
        nborisov@suse.com
Subject: Re: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy()
 region
Message-ID: <20210728091434.GQ1931@kadam>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-2-keescook@chromium.org>
 <20210728085921.GV5047@twin.jikos.cz>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210728085921.GV5047@twin.jikos.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JN2P275CA0010.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:3::22)
 To MWHPR1001MB2365.namprd10.prod.outlook.com (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kadam (102.222.70.252) by JN2P275CA0010.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:3::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend Transport; Wed, 28 Jul 2021 09:14:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec38b362-f2b6-493e-a258-08d951a82d82
X-MS-TrafficTypeDiagnostic: CO1PR10MB4658:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR10MB46586EC97129754A6558351A8EEA9@CO1PR10MB4658.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VTNQgm/gYV57+vJtysoLh7qJb8Klrvu4qt09jCbAoJe110dvBpkeHmrn4UmoVB9qY1BY+trljrQ1XFNAe70CYGOnzhXwNYWGEBqi2PxgscgvcwBm3yUwpcSYpeD3ehL8llJ4HbRHf5u9Rm4O/A7w9Tx31tctNg2L8JnblevQ5eDmvIQymdsXh4/txvZ7mD8KNfAhMRZz3YeDUAUp+8cBPuyNu58GxoN23CT0qVJQhLVm52+XkAi2oPiXY3ATC5sUK2tgYTzbJqY9MwWGvs6FZ+yrAPSJp71gyzAaawJizzxHvoTYMi4s6ts1r+CWVsHScW/m3+ol8yMoRT8jwxo2CmNiu1Aflmrkvp/dkDrMAWX1NbIxFiUlVMzoEOiz+NgfUv2LhDbqFQpyQAgiAyKJ0Jdq5YXNQFq7HVO3xHDklNuGenWcl7YwPhz+2IPRXtzWu8zLkdlC2ReTVEk9y2etobrqdzMeX/nQOYMw48U9vDct1KYWKb7ROejPW8kNdEQFuEELSPxBqS+Vz6gU4FquwrPdPei/Y4V4uBlVfJlmsMx8maPQ+3HWYxL3SRiATHK0O3qZEQXkWMYxaK+AnDyOU1WeBs8zFtTfCeQbLL/AnviBrw6Ntgul8+sigmgriQVh+/nj06m+nHpjGzTf0yZ9w2dOS5iLt+xKbDhACpeudKW6L6c8vRWXUOgLM86qICZyY/NQOAu2xB/xFBaPZcpWB6iXrXGy/koGD79h7Skcj64AUaKDOowpSoV47bI1QRaEVXy01WBLfdjeSZHBN5Ibl8n4l2EE3CT4H0mAgKYXqIEDx19/AtkjXYWoce14kzFsVSIPWpP+TaDXAamkkOsaVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(396003)(376002)(366004)(346002)(136003)(83380400001)(6496006)(52116002)(921005)(55016002)(33716001)(38350700002)(38100700002)(5660300002)(9686003)(186003)(316002)(44832011)(26005)(66556008)(966005)(66946007)(1076003)(33656002)(66476007)(2906002)(7416002)(86362001)(956004)(478600001)(110136005)(9576002)(6666004)(8676002)(8936002)(32563001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eb7RhCFZJReG7kmLF16WNYdTXU5OHR2xELDlhxaol3Dv0pfh7Rwrom5t2U2F?=
 =?us-ascii?Q?JiAE99XQ2EVTalby6i93Qmw73AVkqJVsKX/OyRQXAnZGFEanVJECuaPiDKyu?=
 =?us-ascii?Q?j8nVom4ASpGxaFClMrdNNch2P0BzGaijcpQ72Mf+f9PGR9rQn+7+b+qysCLx?=
 =?us-ascii?Q?etC4MebBPbdqaJkkmjep1gG9I1fUvsABTDvs3ja7mM0PpfPzOfpk8A37W6vC?=
 =?us-ascii?Q?455QMBcM+YUKFc8FFYpseV9uIMW+9bmzq59HqdnNwhFDvYJlmVu3pV3W4PAe?=
 =?us-ascii?Q?s7oWuEqND1MR13FtRN287tygud2Oo3LjiVp2IDi9L0itj1MfBv9OTRN7ZDAm?=
 =?us-ascii?Q?+y64a7e3ZKONe7wYQQMmJfS3ZuqvqgecdWtCWsPXkPmIDiDpVbZZRGQsRjIP?=
 =?us-ascii?Q?FcUVX2Z5H7/etXy3GIuI7vPCrL2A7L/3GM30E+OMaDcY1P0Ne1J3pdxoidun?=
 =?us-ascii?Q?l1WE1ILTjyVWa2jOd88msucQjHSY4jMeQVCtU4cTuzwDk7J/oWz3gbZE9v9S?=
 =?us-ascii?Q?pU/gBrZyjl+FBNo0QPd8EqUOmLNqUUkmgBK8XX6v9ty1+i0SyGmcAAWe/h8G?=
 =?us-ascii?Q?Bl+6eIL9MqOD32AsBHE27dgztr1Jm9IwQK/yISlf5EYlgu2VL4iEEACQo+Ko?=
 =?us-ascii?Q?l0WUsiDYu3PW/ht4rPTLuVV6wVA/OfPhj8ojKak1051XeaZU0hi6PDayeG90?=
 =?us-ascii?Q?+DRxXXOAwWkxMv+WPZ1CVZiAGjSOOyLqZ6X92F7vl9KWucmyEd2aRjEa16Ks?=
 =?us-ascii?Q?iYmuTf6qNuYi7dRwaEQFJUooSHN0tN7o0x2imAQKwOhQIq3N43l3eTCtbXeY?=
 =?us-ascii?Q?Lril4DpIs4ecHnNLKfONhwCvpXFoxy0IP014IRecsMpQLZHwJ2M5vDHSKWkz?=
 =?us-ascii?Q?i3dts7mYrxMEWwV0GvlBMVT/Hl7wkwr4pq+h609+qcmEOY0RSkdvBHi2vvIu?=
 =?us-ascii?Q?oV9/duiw6iLb1t56jUzxI5TcDVDOX4UW5EAU98UhOdRRwZAh9Y2e7TbtjsrF?=
 =?us-ascii?Q?xDJuwUdIpN72NMd8CCAZHR1kAGZid5K89qCDGc1ABWb3xYWbqfu0ucqrdvnr?=
 =?us-ascii?Q?wfYnH1opGUcqYusTzMPDADeFON3tUOf8PXAVsYGyLzpmPIoXmgOsWCuZNCcK?=
 =?us-ascii?Q?LHUjfU0AMIte4coO35TRHJyiTkyFlZ7aBlgX96Tlduy1D6/UKXARNc2OsMi8?=
 =?us-ascii?Q?LVzHOZEziWbiFkEqCitl+zreLHPoIPvInXesWjogPv68c6PUTR+jBcttPyeq?=
 =?us-ascii?Q?DTp7QxuvfK+HilaS+4i9VYu/SucD1PYiedl8rTh+6TtoHiTcYUJaaxVVDbfk?=
 =?us-ascii?Q?mH4MXuXseKwqIBXy0hMyxDPW?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec38b362-f2b6-493e-a258-08d951a82d82
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 09:15:01.5463
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R72i7g9/I8+mtCoWZ/KaOn1hrwjy7rjPecVR5Qgmmv8+g9Kz6MdcuMzv2+2xkIb6dMCJ/fLC2Sa25fpn5QrCf6WXCy3mHRHvgu3nI7VRto8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4658
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10058 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 phishscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107280052
X-Proofpoint-ORIG-GUID: O0u9XEyhEFqXzFqrr0nJzm6p2-mprUK7
X-Proofpoint-GUID: O0u9XEyhEFqXzFqrr0nJzm6p2-mprUK7
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b="GSN/EeQn";
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=TUiif95b;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b="Pge/R+y3";       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 dan.carpenter@oracle.com designates 205.220.165.32 as permitted sender)
 smtp.mailfrom=dan.carpenter@oracle.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=oracle.com
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

On Wed, Jul 28, 2021 at 10:59:22AM +0200, David Sterba wrote:
> >  drivers/media/platform/omap3isp/ispstat.c |  5 +--
> >  include/uapi/linux/omap3isp.h             | 44 +++++++++++++++++------
> >  2 files changed, 36 insertions(+), 13 deletions(-)
> > 
> > diff --git a/drivers/media/platform/omap3isp/ispstat.c b/drivers/media/platform/omap3isp/ispstat.c
> > index 5b9b57f4d9bf..ea8222fed38e 100644
> > --- a/drivers/media/platform/omap3isp/ispstat.c
> > +++ b/drivers/media/platform/omap3isp/ispstat.c
> > @@ -512,7 +512,7 @@ int omap3isp_stat_request_statistics(struct ispstat *stat,
> >  int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
> >  					struct omap3isp_stat_data_time32 *data)
> >  {
> > -	struct omap3isp_stat_data data64;
> > +	struct omap3isp_stat_data data64 = { };
> 
> Should this be { 0 } ?
> 
> We've seen patches trying to switch from { 0 } to {  } but the answer
> was that { 0 } is supposed to be used,
> http://www.ex-parrot.com/~chris/random/initialise.html
> 
> (from https://lore.kernel.org/lkml/fbddb15a-6e46-3f21-23ba-b18f66e3448a@suse.com/)

In the kernel we don't care about portability so much.  Use the = { }
GCC extension.  If the first member of the struct is a pointer then
Sparse will complain about = { 0 }.

I had a patch to make checkpatch.pl complain about = { 0 }; but my
system died and I haven't transfered my postponed messages to the new
system...

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210728091434.GQ1931%40kadam.
