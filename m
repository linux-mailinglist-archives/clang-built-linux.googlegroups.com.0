Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBGNVQCFAMGQEX2PBLSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FC840A4BC
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 05:44:27 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id d6-20020a63d646000000b00268d368ead8sf8631718pgj.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 20:44:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1631591066; cv=pass;
        d=google.com; s=arc-20160816;
        b=j28Hp6wcwF408VRylNtH2f4uRHwmtrMiKlY+fKwrbweOYyVFCwKOYcv/mzeNv7IQrA
         d2CSBYfM7OSL8+8DF+PMcJn96DtpTKKH4w0htDgqEiPfhaR8z1WTh79+9ExcjdWImb1M
         3r5YzaZ8s3AhfUARNW0Uh2cDV+YT5NqgLVyaq+159noYD287ymP8TSeYg295Dcam6MNR
         iaHCDANYYxUvQ2fRDVZE/lE4Dv9bNEWnB99zvHnX1rgk3xvQ7jjYGGT6VfGw6rmojdHD
         kzm16hWi4orNj8lNljgZh6eu9V6VhKhe+JvFxjo/ruzXlQkoejZ7W554WE9R8W6pz7fq
         Dc1g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jYzFVDgfmi1s4giZrCdPIoPX2WIz+jyQZMR2zptdZn4=;
        b=A0ySnkDk10Y2qJnPJeCGNFaGCWC2+RNDBRhFFcBGYGzT/6c1eZA233zKrEyoa0pQrV
         NAVA2Fcfo74mC0uTEFGcBprZKQvB8MDMspoudYTAJh6Fh7XSMoGEO2YfsMUaV5TPNimo
         z8mkLW17krV7BBgItRs/bwoVCKfiNcB65yOCbd34iXj5GowWrWIyyDjgc4DrqfF7a7MD
         SCHyLHXbsfV+Rl9h/Iej3NKGHlwrwe15IlJMCSN7zEIu9Bmqr7MgsZ+iHrSPMIZvB0rE
         VNRnFBjj9Q7Fa9NE23hgo/bkfXzXcgcRcsqPytLPFJinq1JjOcPqBUhgVcXE9VHPITy4
         IhmQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=Sp8MM1tV;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=GS8pvwcA;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=uXA0amxt;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jYzFVDgfmi1s4giZrCdPIoPX2WIz+jyQZMR2zptdZn4=;
        b=JpimKivBsOvxhDjCmdlK+B+HGAaDiHBpK85HFgbaPMU08c9HM9V6yMOJxb3xTlCI+6
         UzrJNZERqEKlnspjQxBxRf4GsSMZfxJTHh7VKBJonjZMjv3D2j8hJpod2xUQza7omdgR
         xy1c+DsAB3WhihjVAMR0yOor3+xwUIvMris6/UM2fEGfzPEH9GlN6G3vywzWUQO67cK8
         fExCcRmoAG/B9IrKPygm9pMnhQFElI1ESebLkOxYxArjd/97bOSPHMDbruz4h2JvlC8e
         3RgD8eO8kJo1+1sl6ivqJ98AksE7jeERfFNnzskmAWEKTPnY3CjAwb6VfNL46xy+9SIJ
         SgXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jYzFVDgfmi1s4giZrCdPIoPX2WIz+jyQZMR2zptdZn4=;
        b=0T/Ij4y2/Baw/f3jMT8vqCbLHIAVuegOzTvGzFyGYeN8z5jRD6UIWUQwgVViN+M4SM
         SQwSF+cZKcLtB9RPdTAvjnSkjpeJ4VKBycXYY9vHChS1guSgFeh4fGG3C8YhCVi/KtYP
         zje3weUE7OkIgXFPJTFgWJ0FLN0AOfjiiQ9L0J+stPUrRccYhwzaJozu7RqQHJiPhtAQ
         UTV1VYco24iJ5VMBFYp5+eYa7xyf6Aze/nkiIulgyFh0+6WuEfWyzyTJxPczK505LDB0
         3G3HQFM8rmvd1bX6fVn6YxosDCuvAQ29hrspAjHLfIwrIC/Osf2E8lMaTdy4uVrvURRB
         Q6bA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SdhasD9AJSV/kCkkOrJvq4K4ZmTybBt433jfSj3w2AnsHkrF4
	PlYZQPLWvCRdEV4Gt8jS4YY=
X-Google-Smtp-Source: ABdhPJzMu/r5gXV/sXXbJiC7ucvA7TrPGCwm+m0e0lYFv/CLn0iKWtvQG39lKq/sLPaxof2QeG/hyw==
X-Received: by 2002:a62:84d7:0:b0:438:af8:87ac with SMTP id k206-20020a6284d7000000b004380af887acmr2792013pfd.56.1631591066005;
        Mon, 13 Sep 2021 20:44:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:848e:: with SMTP id c14ls4527979plo.1.gmail; Mon, 13
 Sep 2021 20:44:25 -0700 (PDT)
X-Received: by 2002:a17:90a:5513:: with SMTP id b19mr3296894pji.16.1631591065411;
        Mon, 13 Sep 2021 20:44:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631591065; cv=pass;
        d=google.com; s=arc-20160816;
        b=WygpReBsU6hK879/r7tBoxZyuhH7o1OxWuYXOer1v3PgmxjgcOeVqUJEr71zBLbZRD
         c7tYtJQPQ9pnSu71tKhSIPwA53me8wi0gEGXMcn05ncQpg/iN7p/J/ID3CfHagqmKqO7
         f0dX0He0vE61650MJpRGqeDO1nLaLZAc4jVI4fpwPk5eDVmpLe4HVlmlrzrIA0Z0BdrO
         jpcxTR2zttu2Rxyu6rxVnIPRrtB2cDYPMWkEaBlarDusqaeSJgBrzMSRniv5zP91aJap
         2csKuYFFDcHE6v7br9ezsFCoS21kUMopw8CjASygreyzaobF3UtgZFivLKMsQIsDtngX
         8Z+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-signature
         :dkim-signature;
        bh=PP1o+4VK2POeKkn8+5PS6xOwLpoyHiAs+2MUj54XVJM=;
        b=ajOF6Cqtn8790+W2StWrId4SrTE9MY+bORI/Gz78WNLblLSMSg2QGuSrJm8nI1cGuJ
         EPd3ATDteOPFnp7QreXW/ahP/tVz+rcRlOa+1PcoT2ijWCBtjCCR2hffdzT1WVkUtdCU
         3r8yFBzQa946WxI/7XASS/e1+Ap1s3l7DdzvBe92/n7x8DSA/bD6ZjEuvc9IL8PB2Qsi
         SNoqVAZsG8ekhDie8Dxs5gYFZF6itwPLXC+lPkkV0HRY8CVsUvoNp9bXbSsxKuEu+hEs
         e2ZqiyUDkBN+bFLMzZ5YZo5cOaZMfPImrUEP6JVfI3qO8toeE4+n6qs1x6VVhn4I3Sfm
         g6AQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2021-07-09 header.b=Sp8MM1tV;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=GS8pvwcA;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=uXA0amxt;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id 136si987425pfz.2.2021.09.13.20.44.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Sep 2021 20:44:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18E37X2j020352;
	Tue, 14 Sep 2021 03:44:22 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by mx0b-00069f02.pphosted.com with ESMTP id 3b2kj5r2ej-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 14 Sep 2021 03:44:22 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 18E3f6LJ097717;
	Tue, 14 Sep 2021 03:44:20 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46])
	by userp3030.oracle.com with ESMTP id 3b0hjuesv1-5
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 14 Sep 2021 03:44:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XT4WM1B3po+V++/jLUAibjpbX/XqEWB3SrCnH2xBVIPZQn6NYBfDMqQr5/DGhwGPruEkV3pS2u2QomSxVr+QSDuASgiIY4IBsLIfJ2/rjJdC41vCq08B1WC6bE6TGzSuMsQ9zsVB0JTQwxbxYHtcywaIUK7Yb8KrwzYpzu+WIoVAb9gBRLSCA/z/yEb+37TyS8JrwndH57fWJHoEXdeexOIPsYgSnavPSpzkuXYc7IgQT2WnGpy2tzpOaXaXY1U59MoRmVTMU8QkG96mW2BmkumNXDQu6ciuxo0pGIi5Pq3p2SLpXwH2MZL2phd4KluawkGVtnvWupYaRkpmIGxAaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=PP1o+4VK2POeKkn8+5PS6xOwLpoyHiAs+2MUj54XVJM=;
 b=bIN2AfVynKbnEYFFbFFS8D2w2g7baLzSnU4q80QpqqtVah8tadT5nKauXE+LSbgPHqYtYC3qY6PDybNvEWcaHP6dh4AyNnub2WF7j5Pr4cPdPUDg2S7kFpgMwzxk5NndzUVcSYYKsauEzteeJ3RBWEp36tN0/PNckcehFFMTSWF5JQZ6vdQPI/qZcVWagO106QQh12/1oKwvlf8L0tDdvz5r/kFc8WsgHnBZJ+gX99yrVohoxYBMbOoRr6eFaKWy7PjcDt1+HTJ6AbOTE1Eakl0A5yajxh3yaPOSlK0tuaQ0S+wbtqgcpoA1XVH+sR7FfSi9BVMtuVispqUZDShdFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by PH0PR10MB4725.namprd10.prod.outlook.com (2603:10b6:510:3e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.18; Tue, 14 Sep
 2021 03:44:19 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::c0ed:36a0:7bc8:f2dc]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::c0ed:36a0:7bc8:f2dc%7]) with mapi id 15.20.4500.019; Tue, 14 Sep 2021
 03:44:19 +0000
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: =?UTF-8?q?Kai=20M=C3=A4kisara?= <Kai.Makisara@kolumbus.fi>,
        Nathan Chancellor <nathan@kernel.org>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
        linux-scsi@vger.kernel.org, clang-built-linux@googlegroups.com,
        linux-kernel@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] scsi: st: Add missing break in switch statement in st_ioctl()
Date: Mon, 13 Sep 2021 23:43:57 -0400
Message-Id: <163159094716.20733.10807423364906570646.b4-ty@oracle.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817235531.172995-1-nathan@kernel.org>
References: <20210817235531.172995-1-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: SN4PR0401CA0014.namprd04.prod.outlook.com
 (2603:10b6:803:21::24) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
Received: from ca-mkp.mkp.ca.oracle.com (138.3.201.9) by SN4PR0401CA0014.namprd04.prod.outlook.com (2603:10b6:803:21::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14 via Frontend Transport; Tue, 14 Sep 2021 03:44:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e113acff-4ce6-443d-4d90-08d97731eefa
X-MS-TrafficTypeDiagnostic: PH0PR10MB4725:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR10MB4725CB46A3769578A5D5FB548EDA9@PH0PR10MB4725.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WxVMGnioZ7xdMDLl15RuqZpJp4imqQ2jTJK2EPIb0sCtaJmTu8dprPLQu2oRnhVBu9cz/zua8wjLIsnqGSMiUUwYPLN1oonp6Z4W/1GZpmC8KavfszQrGvStABGtIRh35wjvKTqd5aRDqkwy/wlLa0AJsQS3EvkUWPhGLDcItNgavUAv4TKr60aYL6NHBYzwx8VKWXQzf7RvDl+4E3yPtRWRElMyt90QQ96p8Ytf4LpsuLnYtxLFqT+8cp24ivB1ptZj63dUr0yMGbHlijRNRqmqhVyGoI9c1hALcsMu8KdwSSdvo6YxiV39CLvLAddZX4+Lj0m3skRgQzc+bubUNY+JAC9lgiy6X6Voq2iUhs+LrcUaOgfuKm0zT3ksy/NYV42GG+xgljNL4QrdbkWwDGAatwO27zAYzEgiAA0kkkFRwmY9jqaKgFd6oxPGiJQ3VQ6dPCptHlW4Q78Mf1+4LVh9IssG/gUa2R7f30VhmCg/ClQ67H+P/hhbamd7JZTSYR7TB9WfR2JJO/ztTAzw2lQzhsPUWmj0ES1QqcHqQcLVm01fJXRvPai+j8DkI+7CaOji+wXSERkS0Eu0V4uS2YOH7z0ZEmGG7TPYnklhdDA9D/Y12ztp8+e/jqEPVfKiSZz2D1sPg4ZMrzwQHRN0VrBIeVz23ppECyub/8sgUK/L8eoiAC3Ox6mDztj/LxkZ4DXszON+Ohzn1q31r8UMjsFctISo6RolyANcWQc0Yl/93NXMZS142iNbZvLIXOQsPDNVsXWxRD5LV3Zwmpp4+Qiur+J7f6YtdXmYM/P1dv0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(366004)(346002)(396003)(376002)(136003)(966005)(186003)(38100700002)(38350700002)(66476007)(86362001)(26005)(66556008)(83380400001)(110136005)(52116002)(6486002)(8936002)(54906003)(66946007)(6666004)(8676002)(36756003)(4326008)(5660300002)(316002)(7696005)(2616005)(2906002)(956004)(4744005)(103116003)(478600001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ynpud0IzU2JCYnZNSXFHNldOaDdhcHg1b0xieEZmZVJmb3NnWCtVUlBDRjJG?=
 =?utf-8?B?MUlqaDJzWTFMVlo3WDBBdmdwOHN3NU9hMjZXcW8vbkw3UmhMVTlZRjZRTmRS?=
 =?utf-8?B?cjJ3d3FLS2dPaW12NmtraFd5eTRTVktjQ2tRVkFLUXhLZjh3WmlHdU5rd082?=
 =?utf-8?B?eXBROG5JVWppNWFJalRDejVMN1FheHo1RmNkYUpMN3RjUDJjYnB6R3pTWDBJ?=
 =?utf-8?B?bGUrODFXcGRySE5ROEVrY1NRZS9MYUN2bVZ6NGY0M1dUQUZ5dnQyUmxiMlIy?=
 =?utf-8?B?VFZlVVBLbjZJS1lab1c3ZnVxMnE5Zk1ybS8zMy96UmtYc0c3UG50bThUNEpE?=
 =?utf-8?B?ZnRnZjhoQzh1ZllKMnY5cDM4ZU1RbDg0ZUFwV0cxSUpyeStEWEdNb2Q0c2pD?=
 =?utf-8?B?TXA1NGZpUHMxNVhkK0hxblZvSXdCNEM0OU9VMmYvS29RUmtWUnFWSVRFZTF2?=
 =?utf-8?B?dzZ1STZRVlU0cnVBc29OYTdkcUxFWGZPdFFpUTVBSURHaCsxOUFMRlNvYjUr?=
 =?utf-8?B?VWxaeStJOE9kVUJpYkdCcllNZmlpd1k3cVZBMlRrbFBFMWZFOFRDeVhSck02?=
 =?utf-8?B?MllxWnphSUdLMytZTERpUWdsQVpDalZJbjlOLzNPKy9kOEl5YXJHZHBrVDEz?=
 =?utf-8?B?VVk3bUx0MTZRcjltVDArajJiTjEzSkRiSThLOVZNYXJCN01ZeG5uRUZkekVa?=
 =?utf-8?B?ekdITnl4dDVJc2lFYll4RTQwTUJjUWNpQzVGdGRwaWtkRG04MWg2RHpmUE1i?=
 =?utf-8?B?OU1jYmtwZitrc3hlcUxKL1FBYVpiVTNzODFqbndvcnpGQnVQbjNOdCt5SG96?=
 =?utf-8?B?TVlhby94ZU9SelEyUGxNZXRXNVI2RTk1NmV5T0k2a3VBZXBjQTZIcFJvOGI4?=
 =?utf-8?B?Wmk1bnB0ZFZ1MHBqT3RRcldsNE9KdzQxa0pwQW1CVGR1bnlQUDNzNDRxaGE4?=
 =?utf-8?B?TUN1WjhsV3ZVZkZzMFllMHpycUdqRnlUSG9TTVVOUHlnQml6UzcwZjhZYTYr?=
 =?utf-8?B?SDJ0OC85UjhTbjhJb3RRUUdRZUUrUFp0K3ZmeVdXTkZobVFvV2NuMXhiZGFP?=
 =?utf-8?B?NlpyOCs3QS9rRzJ1dk1wcm1aNjZrRk5kRC9BOEtwUHZ0ZlJidDZaVG1GdWpZ?=
 =?utf-8?B?cit4YS9DY3lBaHdZdmFDUm9jUmtzbytSSXd3ekkxK1hZNE96SDZuQWppNWZB?=
 =?utf-8?B?eTZZOXZlZTR0NkhodGh4akE3SnBYbEFHRXdlb3lqUitXaGYvVUF1eC8ySXRo?=
 =?utf-8?B?OEtIZnhxN1RkaXBhdWNwZFNUV2RyQVEyUUN2NW05dWkvYmJoRjhoTXphM084?=
 =?utf-8?B?SFNkZnVLQitzdzZPK3grVGdPdExFVUs5MGRFREp0Z3Y3TGkrd0RsclcrZHlB?=
 =?utf-8?B?OVR6QlVnWk9ab1ZBL2lUNFVuTXdTaGdZK09HbURaM0tyRk9La3hlaDlOTysv?=
 =?utf-8?B?ays1N29uSG1ORktaS2JablB1a2taYkFlUUdmNzRmc2NYeEZwQitnVXF6Rktx?=
 =?utf-8?B?d0lhTDFsWXo5TjFsZkJwbkRkaEtOR1pOZ2JZQk9XNUttL2toUkZmYXV4d1My?=
 =?utf-8?B?MVRQa29Nam5rS00vOVJZWjdEKzJFSE12LzIrMldCR2pMcHNJZlZyT1QzQWxM?=
 =?utf-8?B?Sm90azl0ci9PZGJuNnFyQlMySEo2SzRXUE52amJGZWs5WDBncDFuNWNKUkJN?=
 =?utf-8?B?dzZhblNFZGtqb2FqSWtEbnRUTmswYkp5VFZkWndGODd1aENQTmZpREZleWpm?=
 =?utf-8?Q?9wpf6G7/j0xdwt6+Ma1pI8QJlf+DBjqCg4K/WC6?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e113acff-4ce6-443d-4d90-08d97731eefa
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2021 03:44:19.7912
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VyHi6ChMCMUjc4SLig43+thkW5hxjPYYfecIXx73Rv8kpBL17MbwV93MwJjJT78uwpJOo9fchxrh21C8QdS6r1t3STE2GjwIfdmKyIFC7Q0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4725
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10106 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 adultscore=0 phishscore=0
 mlxlogscore=985 suspectscore=0 spamscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109140019
X-Proofpoint-ORIG-GUID: -48xFlA6q05I8FFmgAX01dkP0RCEnyNG
X-Proofpoint-GUID: -48xFlA6q05I8FFmgAX01dkP0RCEnyNG
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2021-07-09 header.b=Sp8MM1tV;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29
 header.b=GS8pvwcA;       dkim=pass header.i=@oracle.onmicrosoft.com
 header.s=selector2-oracle-onmicrosoft-com header.b=uXA0amxt;       arc=pass
 (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass
 fromdomain=oracle.com);       spf=pass (google.com: domain of
 martin.petersen@oracle.com designates 205.220.165.32 as permitted sender)
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

On Tue, 17 Aug 2021 16:55:31 -0700, Nathan Chancellor wrote:

> Clang + -Wimplicit-fallthrough warns:
> 
> drivers/scsi/st.c:3831:2: warning: unannotated fall-through between
> switch labels [-Wimplicit-fallthrough]
>         default:
>         ^
> drivers/scsi/st.c:3831:2: note: insert 'break;' to avoid fall-through
>         default:
>         ^
>         break;
> 1 warning generated.
> 
> [...]

Applied to 5.15/scsi-fixes, thanks!

[1/1] scsi: st: Add missing break in switch statement in st_ioctl()
      https://git.kernel.org/mkp/scsi/c/6a2ea0d34af1

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/163159094716.20733.10807423364906570646.b4-ty%40oracle.com.
