Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBIXU7WDQMGQEBK6P3FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5443D6C68
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 05:14:44 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id e7-20020a0566020447b029050017e563a6sf10141038iov.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 20:14:44 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1627355683; cv=pass;
        d=google.com; s=arc-20160816;
        b=OHO6tmgWKyNH87SK/o/DCDO2y3blU+C1AoedrF6ELBd6vr23Uw6m5hDuIf7SnzqPKy
         TNN239KtWWJp34CUif3AS6g3vlCDD0tp6+ezy998XhhM0zpXDRmr7Dahc3LL/ANbMWJA
         fH4JlpbrGGiqQ0mVlD93aXI0utg4d5lJrnxA3PpcuVo1QbbUl2OP90YP3QW1vbnR+Rzd
         fV+vFNIqbHGpJ2vwEDoLixL+RZGW/T0imEaoQhpgveCE2QMDI2EIbp42YelvjyNewysw
         kyFlz/5Gwe4+uXF+WhGoJ05WuTKfprMqRTZSVx1uL/OixJciWW//nzqPSLEPHAqjmTm1
         3Xcg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=z5ZtbBPKD0rQZcrmkEvZQzR2BcK1/fUaYC0OSbeikNQ=;
        b=FqncxLppqvimEjz4/5X0gaNwAHCZU6Tz/ToNz1c5Ug06Bz4J/gySeEnHKjFZphbPbC
         TOM2rmvpWBEWCSk/PIU/pJS/0VV4c19bG0myFHXkXlN07+Rw68vt5X9cQHi272g0vLkY
         WsHlFOOlSZyjsIq4fVSazllsAXAsplhfZe4jtQjqwzTrVuz8ekmzVPlLy6Kno6Ny3/zu
         UYu/KCG8h03gT16R6zO0hoxJKGc8mhrtnSDUfftc+QOeW72EgLv5wx1K3fNP4uukSefF
         4zioco51FDP1LF6n1nP4ufaqPf3ZEfHuKjcnncNmWiKLbViUrFe3A7c8yr2NmSyzflQ8
         Y5bQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=fRAQ+WvN;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=lztbmLyX;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Wwre2nDN;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z5ZtbBPKD0rQZcrmkEvZQzR2BcK1/fUaYC0OSbeikNQ=;
        b=aLPERlzm+w5eufxK1zqOSssK2mSOBXr/mBohtgCvuS5PLgam/nAkmekxZkV2SowBoB
         zou3exFa+EpsxMbv3a9OLU3pth1M61jL0txbhYOHovPTaavX3t/Jm2RnhZfNypjqK2LT
         B/Jbs1UhW5viD7KvRr6K4uTMLIRFeMUz8PS4wYJOl4svmqhY3l5wMF1w3z+JE69G/vlR
         KU/JRvhIkgmRqhlIyJKB6w62T7ob/OGSBZzSFE8xKClvkHTjcBh4nYO1G6hI4JEUZPFz
         iLiEdKD1tx9XYVD0DynpD3l/sXYah5+FLoJnyk0WjLkNaWE2QyfHQPdK/XQ8srBfSe6Z
         VJvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z5ZtbBPKD0rQZcrmkEvZQzR2BcK1/fUaYC0OSbeikNQ=;
        b=fXxanWBXEpg+IG2VdAcA8yW7jmR+ZAWE46ZrlInCTOy/8RG1WOhA+RcY9McMr1gJry
         ZBDqzg0reypasUA0CNmPcyLkip3P8zQp0Hj1vSVcnWdeU+tMCC2RoB+97++r/UgQ+cYf
         ROtp8kle23Z69JHfaQbiyHdazogQ7Monccsbp1bp/bMbBkAQTrtcDQ23D+kMgu8sWfOe
         eKOajm/13wlZkS7UPgv0AsA1C7+YqTJ2P0snNBFvfEsbjg8PA1zpwirByQj4zeQMwz3p
         Vu39Q1rXxAq2Uee37xZS7M6kfELCZ03ndScI1l4at4NPTZCnH9LryDnHaW2P8o2BTOBL
         5JHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EoIuTj5HhTc3jvijde4mVNdWhyhc64LEYdACqmDZBhfOWKP/1
	oMB9RlpnquBScpL0A536iAM=
X-Google-Smtp-Source: ABdhPJyDMB6no/Wz+8p0bsoeC56QalSghOpguWN5lnN8d8nj2b55Sq4kcgnWClez+8s11BbzbgLDEg==
X-Received: by 2002:a02:a913:: with SMTP id n19mr19800769jam.7.1627355683050;
        Mon, 26 Jul 2021 20:14:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d19:: with SMTP id i25ls5390312ila.10.gmail; Mon,
 26 Jul 2021 20:14:42 -0700 (PDT)
X-Received: by 2002:a05:6e02:602:: with SMTP id t2mr15409823ils.118.1627355682640;
        Mon, 26 Jul 2021 20:14:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627355682; cv=pass;
        d=google.com; s=arc-20160816;
        b=OQqMf0o3HZfuWyfTxmtdSatmS7zzYV95S/86dKuuy3YIZ2X7IjHUrWB5GFkJkMphD1
         NcGigXdsl8ZM6grNKh9l8c21O4qIRPUhPkhfYS6Vw6+mLS/B02bsDN7PnBaKmX0w+xwf
         YClwXDYEBdZumFH0+zVGf/QW/Fe4/HR/baOEqbQtJTXgLWiCrFB9/FOqzkpkGNGW6U4t
         PBUP11TO8Lq7CkExdaoBkjf5rkudsqcyErcZ404Ow1epTg0fHV3j8+fhh3LAq9YgX9Fc
         B1qpYgk4YKGOb1bLUUh9xTbwcwlvGnjWJXLik8xSzZAWhzl+cilcfknijXdSuI/3a7V7
         2vlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature:dkim-signature;
        bh=mNiGAHQkZzBjO3jLZnijGZb3Sc2ORDgyjyRUFuvLZW4=;
        b=GEf+u1JCMnyLGmgIHNQ3XyQdpszfAsa2Zk2sY/OedJzWHFwILch5XYHECvfXh5/HTx
         mb3DF9PiJ47uxG/I3DJ7LRsxSGfNXs6tpArLvVVOyOZV5nWP2VQNuEHCi9GbkGTkrOLS
         hUB1PNlkiLQ8daOLlcIx83toMlUEWg9Vu78BUAVqXe7Vb9O+izU46RBX4w0/7Xyg/LkH
         NJLouMxneRLOs3yl8qa1jCJMBjqgwP2seCoZufucuoL92c2a7erkJTJUj1NQyX7dpg3y
         pTg49EVUjI1jDj6lijULMRQ53H6BEqNNCJymTmvNxbZBLJmaHwwDYNJlVOejIfp53TE2
         zIig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=fRAQ+WvN;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=lztbmLyX;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=Wwre2nDN;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com. [205.220.177.32])
        by gmr-mx.google.com with ESMTPS id k3si176652ioq.4.2021.07.26.20.14.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Jul 2021 20:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.177.32 as permitted sender) client-ip=205.220.177.32;
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16R3BxeS024480;
	Tue, 27 Jul 2021 03:14:38 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by mx0b-00069f02.pphosted.com with ESMTP id 3a23538m7g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 27 Jul 2021 03:14:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 16R3ApUs050480;
	Tue, 27 Jul 2021 03:14:37 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2105.outbound.protection.outlook.com [104.47.58.105])
	by userp3030.oracle.com with ESMTP id 3a23524b93-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 27 Jul 2021 03:14:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mtd6H7dVtHWhGtV3DqkbJh1gLCYkUoZWEF6r5rGOd/Z3F6PJyio10mOh9GOOVUj803lgQ1AedjYjdjhhZztl3hsZKZn0zOTL33tn2DuUYBgJ/DBMHO6XDBKZbKszFutE7d3qrfhet2+Lio9s5FYgqNkucaqiMEgYW6I7RwiDbpJgHaSxrE5ZA1Ddyzy2p44MvTqGpaDvRK1RQp0HEIh4MboUzwb+DO6nDrZRXTD9dcZRkmkwIktiTMo8sX1b0RfsdodRhv0albtxlGokjB4++f06hEw17/ojqrIlQ2vvo+BIZ9H3/J9kJdIE4pVKNvZ9/WrqUpk+93KDNa/ptG1G9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mNiGAHQkZzBjO3jLZnijGZb3Sc2ORDgyjyRUFuvLZW4=;
 b=A83wIHgGtJkMBe0Z8vPMVX0s2c1DOW6XLBGNJD5li24KAyL4+VkxbdCDYcg+WhZJATitbrHtbzZG8xnJTBxSmPwBoulzatD3WKUhJ4e8OGo3MNBwT63CoKd4CeSHOBOqtX/Ue+tO9uJRn6r3E370XQMBxS7ySHYHHeZWLLa6w+4yXGTNTFGxm7P7RwIyf2jQQ9f6GTUU2WbA+I/s2DVdckH83ypdXdyJHkPP2FzYvTAAHgz1b2L9qMje0g0pZ3dqWtv7GyUONI5iHnu22RheHeKwM8Mu0hqXOVxbzT0WbfDLaUBOfazAr2JE62erldj8jKK1QJNh+Jt68GOY0eeQrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by PH0PR10MB4501.namprd10.prod.outlook.com (2603:10b6:510:43::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.28; Tue, 27 Jul
 2021 03:14:35 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::153e:22d1:d177:d4f1]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::153e:22d1:d177:d4f1%8]) with mapi id 15.20.4352.031; Tue, 27 Jul 2021
 03:14:35 +0000
To: Bill Wendling <morbo@google.com>
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        linux-scsi@vger.kernel.org, clang-built-linux@googlegroups.com,
        Nathan
 Chancellor <nathan@kernel.org>,
        Nick Desaulniers
 <ndesaulniers@google.com>,
        Ariel Elior <aelior@marvell.com>,
        Sudarsana
 Kalluru <skalluru@marvell.com>,
        GR-everest-linux-l2@marvell.com,
        "David
 S . Miller" <davem@davemloft.net>,
        Nilesh Javali <njavali@marvell.com>,
        GR-QLogic-Storage-Upstream@marvell.com,
        "James E . J . Bottomley"
 <jejb@linux.ibm.com>,
        "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: Re: [PATCH v2 3/3] scsi: qla2xxx: remove unused variable 'status'
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1v94wqwhd.fsf@ca-mkp.ca.oracle.com>
References: <20210714091747.2814370-1-morbo@google.com>
	<20210726201924.3202278-1-morbo@google.com>
	<20210726201924.3202278-4-morbo@google.com>
Date: Mon, 26 Jul 2021 23:14:31 -0400
In-Reply-To: <20210726201924.3202278-4-morbo@google.com> (Bill Wendling's
	message of "Mon, 26 Jul 2021 13:19:24 -0700")
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SN4PR0801CA0009.namprd08.prod.outlook.com
 (2603:10b6:803:29::19) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ca-mkp.ca.oracle.com (138.3.200.58) by SN4PR0801CA0009.namprd08.prod.outlook.com (2603:10b6:803:29::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.25 via Frontend Transport; Tue, 27 Jul 2021 03:14:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a15782a-41be-4018-f373-08d950aca8e9
X-MS-TrafficTypeDiagnostic: PH0PR10MB4501:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR10MB4501FA0966BB2A452C25C7708EE99@PH0PR10MB4501.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OC80ZKuKnDfpIqaxcCAWe/mmeMZVlBIKq0quVF64RW2IoPI3OPVmO76rPjYJ5rXZj5v+rdDsiSEc3JvC3udqZ0TgqSOKn899AqApX9WiBi3E9MmoBtyXyVgO3sEFiq/mt55l4DUs9OHxhP+zyPjk6DR6xhuNToMxLFDUB6VDbRAUoLD2cWVmHsaxDAnJ3FLtsTOdT8MtMN9EMW9ommI8bkv0PMQ1ZlZhBgolDuZH6fCNQ+ku6NklliWJrNPK9oLXOHAoHAYs1XkDEaJ1gwi9jYZW4NjLFbsxu+EsVCsorYKvg/D8Oa5ldeWOshYjRWS6a+dIJNrAm0tP6X8tpP942UEOQW2hWSe6mXKPUbmpWC/3AOSymqEbFskUuRCismHfDjQls9W+QKFoAHbbdMAsF+yljTd40atgbuXk1ukruv7P4OL45SfSCgpu84H7KlYk5pL7NHm1UvruMwWEvTyM4IEuxaDwab9A5z3zoyBzqG7LewOl50YuwF7VjR6b8FeQxDxyUC0raTaPk8ebziwE2+VeVCkC7GDIB5MYaC+RWobwENQ8BhAUukF0IS4vxRd0CVtOqwAriJ7UNxx/K8PsYcfIg2UlkCmXruXHxF75lbirCX4eOF4txP95pcqEpLklrGw+sxsYg0X/pBMzMnXw94NoxRpMN0AmCnViD/z/F51SKCduXJ+5rFvTCq84KMXWtvP/DXShGwyBOMVYcGHvTQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(376002)(366004)(396003)(39860400002)(136003)(66946007)(36916002)(7416002)(478600001)(6666004)(66476007)(7696005)(86362001)(52116002)(186003)(54906003)(83380400001)(2906002)(558084003)(55016002)(26005)(316002)(66556008)(956004)(38100700002)(107886003)(8676002)(38350700002)(5660300002)(6916009)(8936002)(4326008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w0d0mYnBkWVdAPXHo4/lCl6ebTyvW5iCkNIo9j625FgvPsN/VzxDzzrLrwcT?=
 =?us-ascii?Q?ancxEhp5JfSbNht7XbQbZgoqGyVRKr/Ta5+SK9rLhn/JrhCgfhaMEY6E31FG?=
 =?us-ascii?Q?pO7n154cb+/nHrwl7K1LbgnPEFNoWW9HgfG3QQwlj/6/27Ph22TNzUu5WTxd?=
 =?us-ascii?Q?AB6s76QRB+bh0aPu5FtbrVlhDCjmSo4mL3fp0f6Ab98bxrJfF4WCUJJLW5gG?=
 =?us-ascii?Q?5uMeFUBrepq+ChoBjqORqjgIsJLtanTATPeN4i4clM6pSIl2x6FKVGVeUBM0?=
 =?us-ascii?Q?JHI3X0KUOK1nvYyHTm7oMTfwsuPZqGslx4BnLwA0xFxNdDg22StxRC8HxuIk?=
 =?us-ascii?Q?r7pJVf5Ll2qWnifwQRbzQlu5+3yitDaceOAJTJaxK1TXcyGqsKEp++3YMABH?=
 =?us-ascii?Q?qyYIB/p2vUzeKmE36kSzPV7JkYsK2g/fPEbwQFJiZ86Pd/O57M+QBezkvcB9?=
 =?us-ascii?Q?J4admkxeK6U+9nyYJua02NTRmVQEWJhOqJUy2tMV8t4UEDz+IdQnL+PYpXkT?=
 =?us-ascii?Q?ttJrUr2ASHFDiY18+FYvMXkIDrhV4GtCuOx7iGCacv8p/QFO3YFcqjwdT/Do?=
 =?us-ascii?Q?81OQwjqS9phk0wdL9s14sQuBk2tj5r8uLK9NGg30drgWtvzZmSnr6adoA3/v?=
 =?us-ascii?Q?4YHEJIY+7/UzJ7TDd8A+EGFzoXV99hK4WJdKErKJ2gn4iuoR61uFbOafB22j?=
 =?us-ascii?Q?eIeuDAHVYcFSJjmMzucPMOvs1DD5S8NraRhS94dMvIQZvH78x2p1CK61+Xqh?=
 =?us-ascii?Q?bXh4bkgGlwkKuDbHLAmMgeghzohpqs+LPPbYBYWGE/Rjm6vgoQFrs+jmhgee?=
 =?us-ascii?Q?GEubg79fNBwNYFrU/vW8KROlFWpkr9vbPuE0x8D5pSwTFZzgdrR9DGWzTbzL?=
 =?us-ascii?Q?arbOlrH/rRSFdd+9awasfcv93xVJAvZj6IejZfFhYuMWkldTtx5MJEIZX/YW?=
 =?us-ascii?Q?6x5HOlmlMXq8h0p4Djk0CIqb2EI3H045mK0q2WIWJ4DdudOXSZe8l18Q+611?=
 =?us-ascii?Q?9FVdnHrYV+etnmfC4eO0zKArJSxbvOabJyvX4MCNoyFD164STaI//djw0Wj/?=
 =?us-ascii?Q?5K/58iRYECnFilAe5H6b/wrpoa3vqdTM8AgSUNugKplrxnFpRE0TmR9rjHfl?=
 =?us-ascii?Q?CZdDVXXZe8mKl2XRdi6a42XvB12Op5yPhNHGpX92d/0NC1kJg0g07NtZsT6D?=
 =?us-ascii?Q?PDXUb7RvzXXL8lddaxJR35U5GTlSDHlKCeZQyfRlTC9baBTkiUGLTYS0nFPM?=
 =?us-ascii?Q?DH0vkVVa09A34o/TtqUg6eE1d9E73oX+aa+34u8eHLYtfH5IlCThUBQaqXoA?=
 =?us-ascii?Q?9YB0xFAWPxeRQcJg3/MHMtB4?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a15782a-41be-4018-f373-08d950aca8e9
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2021 03:14:34.9332
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nqYyQYTu7qXx6u/W7PY30yaiDgYq5x/uH90cWqB8V6qfNKeF+lq1Pr/kUfmkpVrnjmQBTzJAceRBkeWxXuX2mgQu6T/w+HiuSmm5R23kS6Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4501
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10057 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 malwarescore=0
 suspectscore=0 phishscore=0 mlxscore=0 bulkscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2107270017
X-Proofpoint-GUID: _cNJv6OGRklL1EXwHpkV_eZFtHs-tJvc
X-Proofpoint-ORIG-GUID: _cNJv6OGRklL1EXwHpkV_eZFtHs-tJvc
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=fRAQ+WvN;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=lztbmLyX;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=Wwre2nDN;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 martin.petersen@oracle.com designates 205.220.177.32 as permitted sender)
 smtp.mailfrom=martin.petersen@oracle.com;       dmarc=pass (p=NONE sp=NONE
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


Bill,

> Fix the clang build warning:
>
>   drivers/scsi/qla2xxx/qla_nx.c:2209:6: error: variable 'status' set but not used [-Werror,-Wunused-but-set-variable]
>         int status = 0;

Applied to 5.15/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq1v94wqwhd.fsf%40ca-mkp.ca.oracle.com.
