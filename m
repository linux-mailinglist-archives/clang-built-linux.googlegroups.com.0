Return-Path: <clang-built-linux+bncBCN77QHK3UIBBR6HR2DAMGQE3345DEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 952953A4833
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 19:56:24 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id h24-20020ac856980000b0290243c83a3ddcsf2414418qta.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 10:56:24 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623434183; cv=pass;
        d=google.com; s=arc-20160816;
        b=wdQ3eu03SyoDRp3M0UtpeDNUPv7OGEPNGULznFGOM5wZk+JwBoDNCjT4wd7mDVGzLx
         hXR/rhXM2zrZ+wulgWKd/XheqX+9oliiDoEuMlVkxpovfqRJtb/pdBUW7FCX/A3ttKSZ
         SIyCS9QZcI5qPM+Jn7TvASr7d1uRQooVohSQaHGQEPOXS4/RCN1rwmkJ1lcAotD8d+tL
         y8BF/JuhAh0pw1I64OlJDYCes0s8yEQ9bo4lRtfZipeTguUWlN1rtJlMJMzEsr+LGpi/
         J+7P0VHT0sX78AieelEOLSrhGPTz+rCEH76a02gEvoluzBzUqFxPbk+ByiYCdgJkjrBF
         MZ+g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=uHAPVI8UbmCdFpLEakTIXqeKLCM0kCctov0d0QHDmoI=;
        b=NWfb/qD8ZDS8byv0+Tg6Q0lXlZPE9Q9ik8XLsB1K/9Ra8MrIY183Bi4WjM6wMjK4n/
         23zmp2Ur+pcqrkzcVIrmUftIPUkB5gJbc5oTbZAm7FZEPZPb/gZXUBLGj0ldDPOE3bFD
         NA5IxvEmHqnffqnR/4vRvKSezig764nFXgBKwYJJzBzHUwXH3J99A2LFIiUOMZQ7QZnl
         nUGGaJmC/JHZ+OB6X4NcyBOEKKIHA+vioMU7IYGNKLLdq8gBXDP6NIvGZdhT1gb5TMUr
         iNZckO3G/GBGyqQikzA4Ww2ebY6jGXkwLFM7EhERmcSCfg+uO6fHU3dJhfnr2N72hVJC
         T1bA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="KIhA9/HD";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.57 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uHAPVI8UbmCdFpLEakTIXqeKLCM0kCctov0d0QHDmoI=;
        b=RpIt0irCFdnKTcSz7zqGNuTes5b2a1dik5fTNAlQOjps2/NH5OUFARATKl2oc6rQ/p
         pJU5eumG5GIngiIyJcFtj6097tIkbGNxzDkl5pP+RfNfTEYzDOc8P1ngAAxAjNalU8eM
         2d+fM6Db9l8xz/6jhCvmvDsJGQ1us8fDaTiK7XEsvvmcU4Kq6rogu9sIxmsMCi9c43wW
         LiQSW6KS1Nu135F/CgcHklj/0rUby6hY/TeL+mjlDjRJR/iPbGueATWEdJwIZqp5WNme
         D3D4KfZSF+MdBgTFwYf2DYqt1AgZjDkFvCFtEOX3v54vTCOMtMnD7bLEOjAHxCZY37yk
         O1Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uHAPVI8UbmCdFpLEakTIXqeKLCM0kCctov0d0QHDmoI=;
        b=Ukl8Rrzir8hv7pngFdpH5x/1zkmjnT1JY4bPwc3x30OUXrSCH4MGBJELKFW/hiV//u
         efkiQd9Upyt199ZOYT3m2hn1ZbsHNDAg3L5Zz3sSM7BZCUnfy6YHgI9qtDQdBYcss9mm
         tvY09y+AHzPDs9UQL75U+P2uhEH+litS+yFz/AedENWnx2nOpRTZaIl8i7spi09c1Rxe
         ySnJf5XNvenA0qCiIMEZnuoJnkoSGSalZCxOSftakxq/tGID2zVSAVxtitgsBDqQr/iA
         Qbg4zQUz7rpTcntfakRksZCjXtyDEf/1VYv1OgwPO807Y4I0TUmXSIeL005LHp1DiHad
         4hZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kj5nO2ZJm9sfiQUCNNimjXdFCMHnB24+XwJMT1fHwLlt379Vz
	U/dKpk1EQPE0ER2gZGqmZxA=
X-Google-Smtp-Source: ABdhPJwQqPsFW4OY2VMwP7duYWdHn6HPBC/qQLpaaa0ZNbQFSTq7ZaXabM3UTnivdon6R52dIKuL5A==
X-Received: by 2002:a37:cc6:: with SMTP id 189mr5062173qkm.261.1623434183686;
        Fri, 11 Jun 2021 10:56:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e407:: with SMTP id q7ls5866096qkc.9.gmail; Fri, 11 Jun
 2021 10:56:23 -0700 (PDT)
X-Received: by 2002:a05:620a:a0d:: with SMTP id i13mr5017992qka.280.1623434183276;
        Fri, 11 Jun 2021 10:56:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623434183; cv=pass;
        d=google.com; s=arc-20160816;
        b=nfPFsbZ3uAVJPjPHG5wm17WE1iPxXViaIAKzZNJhL1lxgLZ0zjGOwO8tIqasTYr4vq
         v/QnyipV0io+4yFp37gHufCJt5r+IWRAueNGMlDD77qXHm/cRMkEh6dQa7ugBmfvkmlY
         LFx3DduYJArcCyUKDqh1AZ+RVCy5F7uZtbLORQuztDuOEK4xC0/rCDFun9eTzXApCVMz
         mqJzWSf6pUyg9KBZZ88xlVKZZUb6Nk7vXg63Gp/PyDE6rFi+DqEkba+KLjJUx4SnwU/m
         9IMwECq+I6Dfr1s57tiam6/zD0dMb0Vp19MG1p4ZbAHYYTMzel8oo2fVKsvIAuhCmT6S
         Cx/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=z4SbxFx22O6hI6gzXI/sD+OgvLBgbLAiQxFmXMhyF7Y=;
        b=uH6U2w0BqvOcQYTm++syjpE0esy9vmRAmvN1P1+HRrGEotvWUztsUcLOkrf9ynwuMf
         Vhy3Y3idu/Lo4BLYL9K7thNjPPtUfD1pwi525/rxMMektmjyvycYLrESMfCzVISemVZJ
         wXVEXbUeg7T1AgUWvHf+QesQ3pDHr7ORvtWTNJjOhXPlQcHLnD7gi9EHRsQXmsgHBq9N
         vjIHJiEzi5ioYfeOR2sbqe5MhXP6A4SpkrRiaDYIh6dbTdODzrMTGIrTQiLYKw6yB/7c
         LDZ71G1d6oqFp4GtiwkUG+k4JgRI7yecmWBlTv+iE4jf3JhfUQtdswEYp/gx+T3yiv8E
         +8tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="KIhA9/HD";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.57 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2057.outbound.protection.outlook.com. [40.107.93.57])
        by gmr-mx.google.com with ESMTPS id p5si851309qkj.2.2021.06.11.10.56.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 10:56:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.93.57 as permitted sender) client-ip=40.107.93.57;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QQXP5AZeETfTORD6n3t6fHu2yuV3+jXPRsG5CgAGGDarvcU6Usoj8a37XPi7tp/AjSs0U8kJdP8dB4wyUgzLPmiju1ulR43wwth8UP8imMhg264Mlg05xic+C6QXREdmF9nuwJqy51dvy4TgwUbC6Pa7riMiMU2oJmx1/2wwJ5qiAMbgfkB8UGqrd7TsoOWlqov11YYGUyWlRt4kS+RlJdP2b+QdtibAbkJ9bM1yeSSkJ0Xj7UgW4nU4FYXl1VaYKhD1oUWvjXEWzghoDtRlXC40vrCK4qj9xcTpFGPmTy2i8VZ+xN3CPo+DNr0E6yZiXuw7w4edf5q2JVGxRIbrmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z4SbxFx22O6hI6gzXI/sD+OgvLBgbLAiQxFmXMhyF7Y=;
 b=abit5SoT1Wb60VTc0cjZEkvXZENqOlLKzAuQDn6ktH/3twKpwPT7WPogqBdv6P6MdlGHvwzgrkdKA2jYTGwP8pnGEnMayA8xKbqyjVUEY8pA+ehzHoeHCLafrVey62OILoqfIHuAy5YYL8QBaF8ytRTdyA+g/QBuvdp5US8TPuSSEhS2B1uJ8PkqXpWhbzwOxwzUB0+PlI4WrgyeXA7m7RvrcCqaoqtXhi3YrLm4xEdQtg0FVj2h52ie7LhcgmzTTUwRlUzyFsjY0sbAb8Wg1ksZbrlcNp/R30V+A0GALGdPFoTIy7nGCw6iUPpwsAAa/J/g+UjMBbtPS51h8hLEDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5270.namprd12.prod.outlook.com (2603:10b6:208:31e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Fri, 11 Jun
 2021 17:56:21 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::3d51:a3b9:8611:684e]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::3d51:a3b9:8611:684e%7]) with mapi id 15.20.4219.021; Fri, 11 Jun 2021
 17:56:21 +0000
Date: Fri, 11 Jun 2021 14:56:20 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Leon Romanovsky <leon@kernel.org>,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>
Cc: Doug Ledford <dledford@redhat.com>, Leon Romanovsky <leonro@nvidia.com>,
	Greg KH <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>, Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	clang-built-linux@googlegroups.com,
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
Message-ID: <20210611175620.GY1002214@nvidia.com>
References: <cover.1623427137.git.leonro@nvidia.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cover.1623427137.git.leonro@nvidia.com>
X-Originating-IP: [47.55.113.94]
X-ClientProxiedBy: BL1PR13CA0117.namprd13.prod.outlook.com
 (2603:10b6:208:2b9::32) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mlx.ziepe.ca (47.55.113.94) by BL1PR13CA0117.namprd13.prod.outlook.com (2603:10b6:208:2b9::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.9 via Frontend Transport; Fri, 11 Jun 2021 17:56:21 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1lrlOG-005hqX-Rt; Fri, 11 Jun 2021 14:56:20 -0300
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bc435f5b-fb14-4b21-b372-08d92d0238d1
X-MS-TrafficTypeDiagnostic: BL1PR12MB5270:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BL1PR12MB5270A7D1D4390171FA775FEDC2349@BL1PR12MB5270.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:883;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Viw+R6zvcwUeMCkJqaKbb54KYOex8Xn/pKZAt2rOEMhFLvAdcwGMejhpYdDBb+BSZwJbojDCZh3an+w8zH8TCMEhyPtCehRmDAyncvgMEs0O1BQiAqnx6BH/PJUfteNCsX+b79UJBkaMhb3CZxfHa2d7OOcKuLgF8tA2RPjNZPo73+yjyr6ZwlrwK676USICjz7Ydk5DUkfY0xOnsefCpJW1AJkRa3fsipyteLxakQ6t6G3A7v4HBViGqfNvEa4JABGcWBOtPjbOuChkwWa4pcHR746F+heUBUC4w2ILzAiq0M3PKb1bdg04nJQRm+MDzVxuL2ANlO3aaepFXEYXyZBQhyXuNbj+tvp1e9eaTSBgQpcKN6YHGNXyJCTraxWVk9vh8qB9kcRrFZSU0N2mBlG0zOnCyIc2T2YtBYWGry7wKR/YM3XEX8TPcKIJdsJ4FlFv750x+kQV0Cn7d9i4Di4Xdshz4fWEEHXdIMvllt14OyiNoZ4WDscVJVU09lv2vAa+RF7oG13Erj+lrtzYy6M9JGOW0sMPFn3JmTU9AbkzOTyMU/UsFRGf8O7Jl8o3CI76rZ1z3CNEleei5jKGJplzglXkwZP+4qUci0webYY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(136003)(376002)(396003)(39860400002)(366004)(66946007)(4326008)(1076003)(66476007)(2616005)(7416002)(26005)(9786002)(66556008)(54906003)(8676002)(316002)(4744005)(9746002)(426003)(186003)(110136005)(36756003)(478600001)(8936002)(2906002)(38100700002)(5660300002)(33656002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R0ApAoJhdUIR9SXi+btORN/Yr60ZGwwFUHgYQ/BW9alO/sVfzdfw2ROTjEyC?=
 =?us-ascii?Q?PYH8+cG2cdPhKYSumT2nvs3IxcdCTefJJQ84og9r1wRncPM5MAo0mRUyfxPg?=
 =?us-ascii?Q?6LW6TzzqLR/mGdsDQCoGsw5FoKek+w86IhOwZcQ94tVkIfMfcM+5JuAKT+eW?=
 =?us-ascii?Q?H3KCXRPej5xHs/dG4BQQJVBcfQA78y1WOypQyzEps3H8o01oG7szkAODr2Yk?=
 =?us-ascii?Q?X/mLVGx/mKOP1mLfgIBteeSkf8994ozPsC8Q8y+rPncSzV8s42/g0W/tt8VB?=
 =?us-ascii?Q?ai99YQEqJOW9fgp+852nFqGEUF3n9GKPdUn/jICfpmpqzzbKhTrKVTurrVv+?=
 =?us-ascii?Q?RlQFyEuBP/cEBo8GIjQ06FcdbCdLPLR5v5ehy28B+4yqKrjcpbTDkXaQVWGW?=
 =?us-ascii?Q?L8tkG47m2r0ty22BWlnTu7HqDk5+DRvTHku+rmQC1znFeAxtjN73W5g9DbHP?=
 =?us-ascii?Q?7RPTyKHlGI/1vl78oAf1OGiYLNQoh7bAK5owI2XDRoWMSadbV5lH8g4TxIe4?=
 =?us-ascii?Q?0FOp7SZwjEdEKEEeCV1hwPjlC9TK7p1YnqSN1AahlA3hnmc9ivTSL+GhsP/v?=
 =?us-ascii?Q?gAJfmEkh0MkrbmfBIlKlcwjXOGWgTNLybho1D9LUXYtkE+cD8TSPR2ZVm8+1?=
 =?us-ascii?Q?MtSYI9T2DlsX3uUz71UljpUIVyb5q/xR6p3Ysja2Deml6fz0YRH2foJzFAK5?=
 =?us-ascii?Q?AS5DHU1L4uYWo5orBjTeBZyynt9SBSN3Rk05bqyC2rpHLCzg9nN2efI2V1EF?=
 =?us-ascii?Q?dlCFhSCFPfhUIkGKrAyRVw67agLy4lV8WsiIj9BAsulOtlK6nZRW45jB+bdt?=
 =?us-ascii?Q?WQ07dklkSQDWjw1SwgTVX3r5+HYzqFL0he68zMwL0J2MIM3BNIRAapL/yP8r?=
 =?us-ascii?Q?05W6f23LsUDWAVwgNaKTiQDLJbPiIdIBrziWs3RVRlsjTeO6x7dtRLV03pUa?=
 =?us-ascii?Q?tQRW9QHkalnLoyV7+OOX1HGWl7EH4wbrLO19i09vdhdkk5xu2oLqLU26FIKp?=
 =?us-ascii?Q?rConCfRkqecqWQrew9nNaoGj09RrB6wUloPNdcvUFTBktu0Et66QMuhmJmqX?=
 =?us-ascii?Q?Gy1IXu5U+wz96vnuwLMSlicuU6ZORHLouB2WLk9z1js8pqVOaxP2a+x4s/k5?=
 =?us-ascii?Q?DzD2bD3+s+MW/TT6jWTRMTWjacEZ9glOBM+Nl9ePwT1q+NZXDJK6ByayWrRn?=
 =?us-ascii?Q?z2Vp91djq01JbfC4kVgMN/KdR/3m8p/a+u3aKcru+T3mJcbrtraXXROecpSJ?=
 =?us-ascii?Q?OiXDBisnf75zusrCCsVIW2sJlb4+0dOESrg4Ys7PRKbIOW2/O88ff9R2gr/b?=
 =?us-ascii?Q?7Wx6SOKMMFj9A02Cr6qo0M4r?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc435f5b-fb14-4b21-b372-08d92d0238d1
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2021 17:56:21.8098
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sGFrCI/kzVfFcXp3NKzKpNFRwiy6znhajAp/A2JTgekxp0TkTVuUABFqD1rBEerp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5270
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b="KIhA9/HD";       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.93.57 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

>  drivers/infiniband/hw/hfi1/hfi.h              |    7 +-
>  drivers/infiniband/hw/hfi1/sysfs.c            |  530 +++-----
>  drivers/infiniband/hw/hfi1/verbs.c            |   92 +-

>  drivers/infiniband/hw/qib/qib.h               |    8 +-
>  drivers/infiniband/hw/qib/qib_sysfs.c         |  616 ++++-----
>  drivers/infiniband/hw/qib/qib_verbs.c         |    6 +-

Dennis, are you OK with these changes? 

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210611175620.GY1002214%40nvidia.com.
