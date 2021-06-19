Return-Path: <clang-built-linux+bncBDVIJONZ3YDRBMNOWWDAMGQEYUTMDBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCF63AD6B8
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 04:32:18 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id x9-20020a6541490000b0290222fe6234d6sf2251313pgp.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 19:32:18 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1624069937; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yf92xGZkfTAEKqAwKxJLTvXy1mFj5VXa5VcGQTWSM/EoqkF18pWvkwjvY3M6XhpYoN
         TTY5QNNOGlimC6UtzShkHE6aWG7TgOvtW0xQeqxOYNO27fHAm6VxbFeeSFReRDEu+riS
         aqt5piXmbSG8zTIDaPcdFzPYjsn/bfNrtfXJWAuUqrUWRjlisgym4tQJ7R3lzSEmOJgL
         Eh7A2l2d7JCYVy92mjqX0IrvMRW4NDRu7GuEKfADEC+AvQkzLO7J5JqvB8oUBfi5Cv0j
         cD4aJvA3dJofY1qBMb2BYBkB/MUOeOh6FT9tNjJiyNFXHwAJ5EfxP6K0ufGPRw5tXW1a
         cPjw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:date
         :references:message-id:organization:from:subject:cc:to:sender
         :dkim-signature;
        bh=mEUfvAnGlOebNfIEsd1YaeNHdgYedB6/8OFepyUfs6k=;
        b=jb48sxRsmqGRQF+thaZ6d3ROmsaLXhmE+lLqd+NRwnhrxmjkadN9oyQxLMlt+osSAw
         jOGnuCMGWSOGGQPPNEdirRNkzGiJ6bRo8rKygN1zNRXtg+vzoB4035xx+2dFUmiwc4Qj
         LmpAB57yYLFz6sHljFTmniZ9zm1ycLfIOsr0XLYqjev1bwxabMf8JzLIDv8XU8t+Kgez
         m6kY3/KBCGe1PF6RZHkiQoDm2vp2oB8as1Jptbi7uITrxbIh83URxeICVvhNM0yFt4TX
         H4z/Xb5xsN0dMJsjwBA0DGidRk8Yay0JOrzV5GyjPltgzQbhhbLfqA3LuFPL5LjVUOCD
         UmyA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=DRDL192Z;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="j7M/OFN9";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:subject:from:organization:message-id:references:date
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mEUfvAnGlOebNfIEsd1YaeNHdgYedB6/8OFepyUfs6k=;
        b=cF4kdJeAGOjFuATUO2FcugDOorHs7gDUsMLrr8S9AfZQu0JjAC/8zYG2k4iNDFPIIE
         hGjuCQdBewqL3SQpBn9CQeuLSfMCWOhySPMzdLxmN1TD6AC3y6x+OPwGMsEdwp0sZd11
         zRD+LG8IJjiRtRtomO4egx1OQT/Px4dguHoXdbpzfo3OEjLRpYxTWh92WBlInrKt39By
         lWysU+rq0apbj9wMfgLIn8DjFbI/qQCi5neFcRCkjPyNNAPXPD2m6MQBDTJnzF0sVPJR
         TC/2m0LSPCV87Gp4ADmhIzCVNH8ojwuw5P9PA6PfuNI3uIr2BONHUKLc10tx/Ceyxp9Q
         FFaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:subject:from:organization
         :message-id:references:date:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mEUfvAnGlOebNfIEsd1YaeNHdgYedB6/8OFepyUfs6k=;
        b=a4aC+HccB3AWmDBaj8gnLmfhwMDLAg97HkLNHZE0q/3ue+QkEyc8oVQxJh0knDfNbF
         LPtsdutZ83dPR2s4rqsCdQF1oGAMLtj0vpl2Fh180HYhYQwU0WydZMG4NDIf8WALnCCX
         IG5mN7UhrZgovtb1kLI+GTMQE/dTKbHayvdhV1H6V+Hrw+P9V4VWht5JJOh2ODknmrvi
         uuCR0GWHVUGwa4FzvgolK9QV+wlO8fIK/+6WeQxVnHN8gePD9HyO8Ik7WQUgEtA4fMJp
         z+Z03Uq+qxveFEORO3pQxViTDZ9dBhmn/dSdHfoCySNghjfQS9Yzx5Xzua7bGDNk/GHy
         pXJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310GDjnuoBYDDe2JoxHjDH1IdyX858n8rZhPYNVcU08MX0BnmPd
	9pZHazrRcCXMKx6v2tr+eTo=
X-Google-Smtp-Source: ABdhPJz+VR/zkoWKMj43K2HWEf8VrvXTTyDB23I2ZsmrrHCVoiRcLKvJ30Yt3Jyd3ds6Jhih7vO4pw==
X-Received: by 2002:a17:90a:e606:: with SMTP id j6mr8272927pjy.230.1624069937141;
        Fri, 18 Jun 2021 19:32:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:814a:: with SMTP id t71ls2923781pgd.9.gmail; Fri, 18 Jun
 2021 19:32:16 -0700 (PDT)
X-Received: by 2002:a63:1308:: with SMTP id i8mr12986992pgl.19.1624069936548;
        Fri, 18 Jun 2021 19:32:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624069936; cv=pass;
        d=google.com; s=arc-20160816;
        b=LF/CprD1EGPtn6yYDfx2E3S3hQ4iOLTAo5F5ZWa9IcybYuuSABiglONhYONpvzinVZ
         95+RLcEHLbCXNe+MFJpwUB4LzbABh+os995322lpeylXuhz4SfeRFe0yzv8VlwdOHDEv
         FesAjPZy5Us/CcsZZ7KWAFTK8xCi9Ys+CQqLz4WqXvKAP0o8kde3pKmIAzaRW1pvxBEI
         AKaoowNXRoZcgJsOcXQxSEZxnWaihKIqDs4aN7qw6AkkIN6gL2XYb9qtxAIrW9cTO8Sc
         s4kRbNBz5LxSyM5nks+DQuVZCwJR/a35QsQoWncCJxCHIs/FFujLz5VdsKewVlRVgz6D
         yd4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:date:references:message-id:organization
         :from:subject:cc:to:dkim-signature:dkim-signature;
        bh=4m/3nKoQSeEamY4FIj1p8RRqXjHJm0rjmDDvJZ+MKK8=;
        b=DgJ7pG/1J08Tv2psh2t0C2tHBa6JhHJeX7kc/fzLmkmtqhRHLyfdODcI65lJgQE+Lu
         pgYanVx9U8AvsdDZy7ZzEkwU6u8Hxn6NIaJG7cHcyBPHEDhYA7tbOsPo9YGfa/Ge4352
         4za+IgcxSk9eeHXnuOBFajB6YJ7JXEVBIeQq/BNrfBleAmAIzk/YTmgBm9yMG9nPuYVg
         ik4oG0rCRngPZJaJkOMRQvwdS0GuLE7HX81bcaTa0znOV/q/RBJADpVca/6HJ8itWGDZ
         qDPo5l7URahi2RT3+k1e5+NZMAZ37uNsqJIhO8WEFlmUk3VMXRI18DMNFWDj2WMb1Dj0
         Q9SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=DRDL192Z;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b="j7M/OFN9";
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com. [205.220.165.32])
        by gmr-mx.google.com with ESMTPS id o20si1281563pgv.1.2021.06.18.19.32.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 19:32:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.petersen@oracle.com designates 205.220.165.32 as permitted sender) client-ip=205.220.165.32;
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15J2UrDX027879;
	Sat, 19 Jun 2021 02:32:12 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by mx0b-00069f02.pphosted.com with ESMTP id 39976000tg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 19 Jun 2021 02:32:11 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 15J2FS9T181615;
	Sat, 19 Jun 2021 02:32:10 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam08lp2169.outbound.protection.outlook.com [104.47.73.169])
	by aserp3030.oracle.com with ESMTP id 3996ma1h8x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 19 Jun 2021 02:32:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SNGE6nIcNP1+vA2eE5KwOix1t2YFLD3dkwnItyEtnHiYeUOLCkQCtrOa9HjSYI3nLISMpm6vvh8RVo76G7YgnFEHwvFNmddavsh4UXHv4OijRtdRwnSNje1jX3tky/OGSUyWG32QG2txDCb5XbpH8N/N62ZwCqKR1fJEF32BON9oiZzXLmA44O1YPGhFXF+68wtnsMOIVNN3EcKVDnIT5cle6wcuUHIaVazD8l6CRPN+Ch+1PVNeZgEs0vFqXncfnZSoOdqMmkb8TUmkfVPZFvVaw3jz/fwMDr2MEYTU4jpbwBWM8a0bUFYxJ8XRpXKQQsjuIiQ6DyltY7WBLn5sRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4m/3nKoQSeEamY4FIj1p8RRqXjHJm0rjmDDvJZ+MKK8=;
 b=gcJuV+3LW5laXRfh7zkPCuHiACiGsdt8wVxcweZz/pV7dMRGOawesGp2onfs5sEPQvrSO3DKVRRfG1695AqVarVH5CfK9sA7DAqs8EN6eVAZVoeHXU1qpOKWdSg4g5FgwakUNfJJPQdk+y0vx3FOoZtMo5Jwc12d9d27iQ5e76y/N/7LEzfNybEmf/Nc8KLM9toHT4XaUE9YxcHYbasxZ8svZpJUMuOLPZEBswV+GQ6tuBJnhuWMlZBhBsEW03urqp2+EhJ/q6wXEqzneGaMkMab9rfvbbIyUBurmTcVRRKGrUyIVilF7fpZCbNAtcscdo4QNgTmQaVHrgLVsJ3qEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from PH0PR10MB4759.namprd10.prod.outlook.com (2603:10b6:510:3d::12)
 by PH0PR10MB4533.namprd10.prod.outlook.com (2603:10b6:510:39::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Sat, 19 Jun
 2021 02:32:08 +0000
Received: from PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::4c61:9532:4af0:8796]) by PH0PR10MB4759.namprd10.prod.outlook.com
 ([fe80::4c61:9532:4af0:8796%7]) with mapi id 15.20.4242.022; Sat, 19 Jun 2021
 02:32:08 +0000
To: Nathan Chancellor <nathan@kernel.org>
Cc: James Smart <james.smart@broadcom.com>,
        Ram Vegesna
 <ram.vegesna@broadcom.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Nick Desaulniers
 <ndesaulniers@google.com>,
        linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] scsi: elx: efct: Eliminate unnecessary boolean check in
 efct_hw_command_cancel()
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
Message-ID: <yq1wnqqy481.fsf@ca-mkp.ca.oracle.com>
References: <20210617063123.21239-1-nathan@kernel.org>
Date: Fri, 18 Jun 2021 22:32:05 -0400
In-Reply-To: <20210617063123.21239-1-nathan@kernel.org> (Nathan Chancellor's
	message of "Wed, 16 Jun 2021 23:31:23 -0700")
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [138.3.200.58]
X-ClientProxiedBy: SN7PR04CA0166.namprd04.prod.outlook.com
 (2603:10b6:806:125::21) To PH0PR10MB4759.namprd10.prod.outlook.com
 (2603:10b6:510:3d::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ca-mkp.ca.oracle.com (138.3.200.58) by SN7PR04CA0166.namprd04.prod.outlook.com (2603:10b6:806:125::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19 via Frontend Transport; Sat, 19 Jun 2021 02:32:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c36ce010-633b-47db-d39b-08d932ca6f9b
X-MS-TrafficTypeDiagnostic: PH0PR10MB4533:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR10MB453302F440069FFB37AFD0448E0C9@PH0PR10MB4533.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UygMH1RgSlrfFdBs2z6YRm1f2fPSvIQ1l3HupHoJYDZ0ZOL+2SSnbDMmrG0HRii5K1/5Bm156N2Fya1pXuV8sgIue7m4PFLMKcAFGqlbUU6Gl+9JqoVMTUv53WaiN8O9Q6XoLwaxsFKsenHoc2VHVoUqrc1Ko4SDUj3HmVopjCQCeAfk7HpLXcBsB5m41k8n1NA3Xxkf911p9T99m9oa10q6eKUrWN8Gw4VGkaEIxn9lAE7WvcthNNsnYfAZZR5HlDLtp3d0HFGdYV/jgnTZWkkEC0q+abQGT7tLxx7hLAnW0xstdkpn2FE5DeIbD1LVhc4CFwo3Qp+yYuZWa2qJ2zUL1Y2KeuVFlLHm1TQpMp3akj5L+jeon8cMaMfe8ie2SQVbHblhfZFkZQpwUy63Kdm/3s0qisr8UwbySL7xkGwN687uGxoOQMcBaz7TxMjenJMLefLf7DLqYSIY/4TVwZMs1QiujLa5FXddP0h+nF87imoiNfEDQFT0TSvlNu8MeLjy5TiLdO5+FWMW3PcDxlyaLqDjYbsD5fP2L/yezOWYKLXihU3XOF7F2IfO10EDx93Rw9IHfEsjBCyKY/8kb/8mCnz/EJ4BrqsTVNx/rfu7u0xdtNkEnVXzFJGKYWM3CEWuAXjD3OGucTR5NCCHIA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR10MB4759.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(136003)(376002)(39860400002)(396003)(366004)(6916009)(8936002)(86362001)(478600001)(5660300002)(8676002)(54906003)(4744005)(52116002)(6666004)(36916002)(38100700002)(55016002)(26005)(38350700002)(4326008)(2906002)(316002)(956004)(83380400001)(186003)(66556008)(7696005)(66946007)(16526019)(66476007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7+H7OgmgS+J02Y3Z5I+rq22Rr/HBmtBblOSyVrwL8T7FZAiUBDLRZ4Rss+1x?=
 =?us-ascii?Q?S08V/KPKqajG9J1x0njv89cM5gZ2Bif0lCDS9rp7Z7EZint8xCSL46//H0cR?=
 =?us-ascii?Q?dZdy8qgwo8+qe9VjgcmizL2LQxG+/GJVp3lcVjRkJ6jVOyHgQF5JaqgvzBYm?=
 =?us-ascii?Q?8nUFTl+SJ75EaoBXioN1ProrqjEidqANtqYewU5cLv7MR/Y5VBWKIRtZ+fhD?=
 =?us-ascii?Q?Quc409ib8TAt5TI10qQLFWhIgncQeKwktY47YzDgGWqNZQ8n3mjzk6Y5qxHd?=
 =?us-ascii?Q?8xr7Bjz7QOe1gIN31wg1wsOVWnwhGa/bGqFC84yfVmnWWTtDH9jFchaSAl2S?=
 =?us-ascii?Q?hPLDdBddeCz7xC53diuZutj1F9VoS8it+mp8tFLZ+a5M0ofg7DHqSFGCkS3p?=
 =?us-ascii?Q?h0Uu643pW7shaqcwqrDQzc5ivZbFKKfkZ/4W5BTwkyOEJCBE9yeQmHDeOs4R?=
 =?us-ascii?Q?4iLekv7Tce9vh+gqOODOzhbEXI+04rKsJdbmjqx30gNVzaW6S1SPN4Ymcvaf?=
 =?us-ascii?Q?dD5lDScWQIETTPv11yft3h0sJ6U+q8u7BoVMYiM0XABVrzF5HTGvWIX+3xyt?=
 =?us-ascii?Q?PpO1oJcKaPXb7hqMWUVxO3n3XAqbrZBoLHGrX71GlF0x8lwy/s9UnoL4NnM9?=
 =?us-ascii?Q?h59JMV0P15gtwrD4+ddX7bOuXQsDlP22NzGuDwaMKWm8G3yBxV1m97kNTIC6?=
 =?us-ascii?Q?m6Zmz1EboLPljcdDcULv5yB6iUhtl87+0xise/JmC0xlp5nSO0NWjVooCsY1?=
 =?us-ascii?Q?g1xSgcuZsSmqtQftuN6G4joQU08vIDVDeiis+i8dZLnNuk4v4/NC0w4k0+AT?=
 =?us-ascii?Q?vuQk6HGDu52eZpUzC9wCeoM6ls/RGrwT2R/t6A4o2szBMt/eKUj/kSQ837cI?=
 =?us-ascii?Q?IjN1h03CxWtvrkCzMnAUvhW5yuAfZvdCiMtoJvZKpT5hoOyrAUfaxgkQO/Cf?=
 =?us-ascii?Q?2/6Mn6y/vvq1SlhWC0dSPBc2XQOmRPujzrzObu49Ld8BKuY5YxgcZ/hUxvst?=
 =?us-ascii?Q?oJ7JlwCSlXCnfXWUhI/MfhBQiaFZw3CRdZRLyUiswndgEqSYbYjUikIa91WQ?=
 =?us-ascii?Q?ARfOYGWRh6JamcxC0w8duYmXQywQRi8e1HZQMoFiANsc0aaNrF4nq1qPvDvg?=
 =?us-ascii?Q?6RYKXH9xZVm3/yFCIaf1fT4q8jE7ykAx6umnSQGTWKNO2Ne6VRCuQkUyv5Pg?=
 =?us-ascii?Q?ZApqBA5UopzJoGuBaWFFK9o6M+zl5HNSFqrRk++Ek+Up1ySGsj3JdSGVdvVy?=
 =?us-ascii?Q?d8Olv4OKUoSfGqgEg7qCtch7N5lqA5SEn13XSizF0O/3kiE0SM10GraNNBiH?=
 =?us-ascii?Q?GfxYEoqFE/XIrQ0k5P64GOsw?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c36ce010-633b-47db-d39b-08d932ca6f9b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR10MB4759.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2021 02:32:08.7976
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: onR3J7t4OXczFg9K/Abos6L1eQ+EwWHSHA3F2XQp8tC66T5lDkmMyOPryYx2ryNzxG1yxF77czymTj8EkUNulhe6+7C20FNijpigN8yoEdk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4533
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10019 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 mlxscore=0 mlxlogscore=999 adultscore=0 phishscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106190010
X-Proofpoint-ORIG-GUID: 9jXE-JIOyB08q1yEbxE5ZqlkM_gCD5W7
X-Proofpoint-GUID: 9jXE-JIOyB08q1yEbxE5ZqlkM_gCD5W7
X-Original-Sender: martin.petersen@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=DRDL192Z;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b="j7M/OFN9";       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of martin.petersen@oracle.com designates
 205.220.165.32 as permitted sender) smtp.mailfrom=martin.petersen@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


Nathan,

> clang warns:
>
> drivers/scsi/elx/efct/efct_hw.c:1523:17: warning: address of array
> 'ctx->buf' will always evaluate to 'true' [-Wpointer-bool-conversion]
>                               (!ctx->buf ? U32_MAX : *((u32 *)ctx->buf)));
>                                ~~~~~~^~~
>
> buf is an array in the middle of a struct so deferencing it is not a
> problem as long as ctx is not NULL. Eliminate the check, which fixes the
> warning.

Applied to 5.14/scsi-staging, thanks!

-- 
Martin K. Petersen	Oracle Linux Engineering

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/yq1wnqqy481.fsf%40ca-mkp.ca.oracle.com.
