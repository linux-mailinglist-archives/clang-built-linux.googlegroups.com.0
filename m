Return-Path: <clang-built-linux+bncBAABBSNO6GCQMGQE4ZVDK3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FAF39CD5A
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 07:04:10 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id i25-20020a9d4a990000b0290304f00e3e3asf8709159otf.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 22:04:10 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1622955849; cv=pass;
        d=google.com; s=arc-20160816;
        b=gRxH7RcXv91oBPkdTRbKTlBM5IPQtcsKPAXE534M9/YTgMKJrVYMNUmENFTyborFCl
         kWZSI5+2Tk7klqNiwOZVebNc3UlbYDlNTNsLQraM5VXEz/nfSDUkrJOS3t6K3RRzXS8c
         IpMIe2EoZs2XfaDwPCvYmi6Bh3BLOHHrKuJXFUDWonFG5VHXoQSgt/c/NzY8wVnwPzzu
         fABARiEhJwdjyfqNj7welryWt3yg/ctLxKvjFZvmn713QlSeMGEN4D/zhbzOYbhpz7jN
         YSt3yZO/8+WCi58vMRPmcu9+WAklZrY2oVgo3TbFkAV9BCow8gW+4IComTr3JdsCkcVq
         WwEg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=sgAigxw4Sh3GXbJHxt4MYa/pw2ZH3GPrA8OkXpYEx1M=;
        b=D7tjcrpQueoVsvQ+UICTsR/M/qTIJoX/sey9OV8TxOviH5pQfsPrfjJJCoLet0EsSd
         E+yHpkReuh3YbGs4Fn2hhCEt84EpQDzfTs/p3diK2HblvOkAopsU2MXEocwza6lUtKaj
         sUC80QKZfrXOYp+UQccAFFijup3kborY5DM4ZuoILnW14SVAK/pE8KhBlHzt2n6K0Zhd
         r1UFAWEZaU8ZFbJBckMJT/DlEAZ2pYe2JZHyPbk0tJAgAn9e0zv/0iHioyX6t3kmqQym
         V7BVxCpYJYVErvqlDsa+O+tq9qM94R6Swvzw4rowyt83XieqZ4y7YHQwBNCDibt4frPr
         5iFA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@NETORG5796793.onmicrosoft.com header.s=selector1-NETORG5796793-onmicrosoft-com header.b=nQr+iUGn;
       arc=pass (i=1 spf=pass spfdomain=labundy.com dkim=pass dkdomain=labundy.com dmarc=pass fromdomain=labundy.com);
       spf=pass (google.com: domain of jeff@labundy.com designates 40.107.93.63 as permitted sender) smtp.mailfrom=jeff@labundy.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sgAigxw4Sh3GXbJHxt4MYa/pw2ZH3GPrA8OkXpYEx1M=;
        b=o0IAPgky5OH4Ul9+cxooW8noX8n3KEFWY7UTNZqdrcFf32+s5P1dUJUA4IfbuLhieb
         W+2oRPFfzrjqCUUIafeRjFMrRGRQG17s5bHuZYVB2IFqLeIVeomoJrd7P3/eB8J2vqoN
         iFVYEkHSSeKDAjWqIGZYZ86qufOh42QgS8KcT7uEU2zXEhAIhLAKKrJmFnzTOCKC/37D
         Bd1qpVdOzm9bN+Opak+Lqx350Te6n+d7gf35s+arv3y11byHh53LJinOiCai8jGSks9o
         y1BP2kZK8qMSFR4P+bZBE3QFGrIiIYkV+Pck4wxzoGkMvFEWpKTTGLKC7dYTgP+mDAPi
         hfLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sgAigxw4Sh3GXbJHxt4MYa/pw2ZH3GPrA8OkXpYEx1M=;
        b=UphvL9MDxRGChQKiXv8EshxaW6bdleGskE/2UcY2s0Eie92c4Y8XhUAQ4T7k5pLHDk
         e8jYOr573qMtv4TuTzKfyqbmhXGdMvDnxunl93WM7M32qjSfaqb9GvsfuH8XQLVhqrzn
         6kthWVSPAG91pdcFal/IVKwewISMqZ6Xn7Sd7XWWCARbRyFxCpVjHhpEHsah+jBE5YaH
         3fLSxcVYlP449+g3Gm0DHurUSS+cpYwMnrlGNPjei/hbvmhuPoOTPVcXcHjLjZTiFEUC
         pzxFmM+aWz6bweSMTZk08jHVoEXyjGBf7p8A01D7sX8L8zza9E1+dOq1qcna6p2GKlbe
         EJIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532usum9GS1Dv5KW7wO90oTlAYo9E6o9MuG08HxlAimRkqhgJUi9
	io93sjvbz1Xe9OSvVpD7x1A=
X-Google-Smtp-Source: ABdhPJyIIrfFkQ/ktWfw5MY2W/HbX+Y6lM6xa40JvqM7Tx552Y2ZVKCQV5N3UuRyjRN1Yh0S7c9ZCw==
X-Received: by 2002:a05:6830:457:: with SMTP id d23mr6214549otc.64.1622955849821;
        Sat, 05 Jun 2021 22:04:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fdd2:: with SMTP id b201ls2758185oii.8.gmail; Sat, 05
 Jun 2021 22:04:09 -0700 (PDT)
X-Received: by 2002:a05:6808:244:: with SMTP id m4mr15827035oie.37.1622955849468;
        Sat, 05 Jun 2021 22:04:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622955849; cv=pass;
        d=google.com; s=arc-20160816;
        b=UJK4Kfex5cJOx3e+Pus3l1CuTN+V1qdhmQXknngnJmX31mY6iF5nQzCJwLkmLq+20h
         J54MtTbv0Xk+fCRMA9xGq8WPmG9PfCAvD6Ha0vK1U24lToAo+IvTAzz9nqVC4CU/LGiV
         UOVVAc16x58Jh4m+goQeYRrtRNhc2zhamCn2eFnQw9LnGMSu+jt9csZ6lG/blzHzhkqM
         rOpBoZEB1vvke/9let0SHCKqsLAvCcZb8NvFSthBnt0jQBs5cTzvbr5mavQGDgdAtTyk
         2vAC7WePVmvRUP/B2DxumrdZRPELVNuU21HEFuzRvx+quBLZm98uLMK4jaD2SB9QAHy1
         WTtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:in-reply-to:content-disposition:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nwGis/H5hZxCFOr9FcY4q1kL4GN9jqzOVq+D4NhFgz8=;
        b=ILUeCz7x9S1Yb+aOd84FLIpONsn+mAZQQfuYrkHalKaeg06xt319CdTK0D27lXZUFr
         htBFxAFDvQoK9ytcfoLxRAmuVZ75bQD8/HKeqndzR0RaYdORXznHSMEVsR6QmQIGFd7i
         MdsBX8T1pukzddcNauuisnhj18Mp3af46YBu9iTTnYZEq4JrkKVVj21+TbRtewGH50kl
         BoVMOFhakIuKkAXzUnS04Ra0CCP5a99M37SSgZStyXrmbZmDtGeibzWpavXimDoNbYL/
         IIeHTl2PvF5Q3ITNcHvFq01eEk/8hXB94FNkXPzwNW9AR1Ih3QAKWz65Nz/B47k3aRCY
         8mDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@NETORG5796793.onmicrosoft.com header.s=selector1-NETORG5796793-onmicrosoft-com header.b=nQr+iUGn;
       arc=pass (i=1 spf=pass spfdomain=labundy.com dkim=pass dkdomain=labundy.com dmarc=pass fromdomain=labundy.com);
       spf=pass (google.com: domain of jeff@labundy.com designates 40.107.93.63 as permitted sender) smtp.mailfrom=jeff@labundy.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2063.outbound.protection.outlook.com. [40.107.93.63])
        by gmr-mx.google.com with ESMTPS id d13si195285oti.0.2021.06.05.22.04.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Jun 2021 22:04:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jeff@labundy.com designates 40.107.93.63 as permitted sender) client-ip=40.107.93.63;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FAVcGhqwevcrKPWv3tgPilataLQ4A5GtFOlpEzNSiqpzrRxfW4IRi5UcOj8KwyMx/n+WJwGfre6EB0G+lixd7NP4oDGi449WypHp3c34/uNkhKFA524rHkxsUpfCJE3AiG9O6/dSht9QfYJC7bdFy4zHijwkuyETcm0BbZxg2usuMZqY6j4r7xsHhYQmWhrzdUFOQC8RICB5A8Kuqguoqonxodc8z5JEb1WvXoLNQxsqwITpmDRfkun3ixFnr83X5j6aRSqBAHk4Uv1czWQRjOC61O+EC3/aYYRdDH2c39c3sx/IzTF8XENGgSNLdw7f9/UL6MnNl2dI2i6sIYr5aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nwGis/H5hZxCFOr9FcY4q1kL4GN9jqzOVq+D4NhFgz8=;
 b=FnqVoduUQjleRSCXIGvAGNZJYKcnFsV3ZZ5A08GCLHu9Fv2YAyU2DvlH0xXI0B3xe0pGIs615lAEIpEtDX7eaV5TjSo7h5u7fR+fIXPi8L5xgipnLRcaaD6Y1WnbfP54KiTxV2BamBK28Vg+H1gyo5RY8Cj15L6LrRc289oKX8StVh48ckBlwStSuRoMIvE3xV2JeUY/uY4jausE19PzbiuusHdaKmz4hUJXx/1GTxj3ctvF/x2VdFAivJUjhwW23wtht2TI2OstTZtKIUd1cnBByBUodHQYtfMoLwEAotbDiXj/SWwrw2sGXCXE9uXFTioGHItcDUGiwQvShlPJAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=labundy.com; dmarc=pass action=none header.from=labundy.com;
 dkim=pass header.d=labundy.com; arc=none
Received: from SJ0PR08MB6544.namprd08.prod.outlook.com (2603:10b6:a03:2d3::16)
 by BYAPR08MB4279.namprd08.prod.outlook.com (2603:10b6:a02:f2::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.29; Sun, 6 Jun
 2021 05:04:06 +0000
Received: from SJ0PR08MB6544.namprd08.prod.outlook.com
 ([fe80::8437:f5f6:48e:f5d8]) by SJ0PR08MB6544.namprd08.prod.outlook.com
 ([fe80::8437:f5f6:48e:f5d8%8]) with mapi id 15.20.4195.029; Sun, 6 Jun 2021
 05:04:06 +0000
Date: Sun, 6 Jun 2021 00:04:01 -0500
From: Jeff LaBundy <jeff@labundy.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: drivers/input/misc/iqs626a.c:1645:12: warning: stack frame size
 of 2560 bytes in function 'iqs626_probe'
Message-ID: <20210606050401.GA5335@labundy.com>
References: <202106061241.dpaJ49Wc-lkp@intel.com>
 <YLxSgsTrnFSUP4Fq@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YLxSgsTrnFSUP4Fq@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [136.49.90.243]
X-ClientProxiedBy: SA0PR13CA0014.namprd13.prod.outlook.com
 (2603:10b6:806:130::19) To SJ0PR08MB6544.namprd08.prod.outlook.com
 (2603:10b6:a03:2d3::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from labundy.com (136.49.90.243) by SA0PR13CA0014.namprd13.prod.outlook.com (2603:10b6:806:130::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.9 via Frontend Transport; Sun, 6 Jun 2021 05:04:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 646aee10-638a-479e-35c6-08d928a882bc
X-MS-TrafficTypeDiagnostic: BYAPR08MB4279:
X-Microsoft-Antispam-PRVS: <BYAPR08MB4279EEE66766AC28279BA56DD3399@BYAPR08MB4279.namprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WJPyFX99ZeenECuY+ZYgKEpbLqvn5qSyJCCnEzXMmEArwf4U1wfXZddUapEu+U0WYTVJnarb8Ts+RFqaSu+55P4byoYehJBVP9lI9f/Fx1fYQQ/0bNEqktM2lk12JloAJqTuIgV0UKgWojd/9WZYA50VOCmJeQfcggUfsLWca65sjvxDKpGZsud3FlpRqzKnCN1JoP5kJHMMPO4oIxxxyLrFQ+fLfoox6bUP2Ohmd7wM7Crrn8joowPsoR2SzpSvtbpfuxoYFdWDc26g2xNtzMXrCNMW7XCaH+MNJ/PxrNB5f6hdyStUKSA0x60dTwmIjps3+WUPgx4M44Y7/KDUeVHzqbdR/LoWCDC5mh0g9FaoOw2Qz5cPMohBVtoEE1hkvOLwtZCp078CP4s+tMXKsdSxfjruFtR87TVtEKETehhE7foUelKoY+acHTPu5ZEv7YCe8e8yHvYENa5iyz7uCb5gTPTJnX+uEzWIpPyXXjmLrOgvopNYEMgrYBn8b0yNm946/3OO7bPeV6YTC2V+7iL31pvrfCTdyTEWj8bFLL236WzWDP/TJmnpK8aReGMhBJ/M1CQFUSIPKBRx57yhcauIvj6ieXU4kkswM78RhEtW3JeXt7yK5368OSrjEPEdVqrN5e7Y1KaY4P6PMR6JTFVjeG6sSvb5N4iO1I3UEk8d2Km+JAFP0O3MiSBfugiQA1Bxu5vWTyc2ldx7D3SoQV9W7jgfC6OWP8lPE2EcLjOVRNUSyq1RRQw0sWwvR0Va9X2d1wx6w+16UQQK1XDLUg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR08MB6544.namprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(39830400003)(376002)(366004)(346002)(136003)(4326008)(55016002)(316002)(38350700002)(8676002)(2616005)(2906002)(956004)(83380400001)(36756003)(7696005)(52116002)(86362001)(186003)(478600001)(33656002)(16526019)(6666004)(26005)(5660300002)(1076003)(66556008)(6916009)(66946007)(8936002)(966005)(38100700002)(66476007)(8886007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?aAkJY2k4zYDopfhfRlX6qS8F84LVUs/WKN/LNhVMU2RwhWyXMtr/MLVn1isc?=
 =?us-ascii?Q?dXE7Y1+iqKi924ajw75yEFCkzEdT2YCPVAgUzMaKloc2IwJ/GsaM/wUWxcqP?=
 =?us-ascii?Q?JLA5KR42YEzSOiKHp6TrLWUTCoqqycso4SjCU2GWNjx92nTv3/bdkbDammOZ?=
 =?us-ascii?Q?9pNDmRxi0tVQ53tB1ma7pfTdCOZp9nNTwtkWgg8qa6DQbRtTVuG9VeywU+V0?=
 =?us-ascii?Q?hJOQyyVDAaIihKWHWRSHINXkzqaUk/JZhl6IP3lyU77niRgerEZTUZnhaoCz?=
 =?us-ascii?Q?QErgyAwVy4SwoIAiK5qT3x0ALDw7U1qITSC4HXrE8zYXs2XYJbTJez4rDqdH?=
 =?us-ascii?Q?1ACoN/8lFOSOW54lMmxVDkyTj0unSbI2RddlSZuk4fpJBv1Ig8xwMNeNR7al?=
 =?us-ascii?Q?SBgNl50b0Ca4aMgEracYe9uUESkBgsrfUiPjZbNxVIqFDlw1XeFE6Qpt89hN?=
 =?us-ascii?Q?5JEykc6+LowmUGhW3zu0zdhv11azVCOTUWHz2K7AwKfvmeIcU+x3xD+JHdiW?=
 =?us-ascii?Q?fqCw37c1S33NqN7hHEa4GtS1I8CpNix5mNBpKFdISSkonxdRv9z24Q9CuhQe?=
 =?us-ascii?Q?m2awM8UeU3fiyTCKijSy96n0ARomkoaPfUnThBGAc8tsWs+acuIczlPnwEOl?=
 =?us-ascii?Q?biSTxTsjzXHVC4f/9wcSoZaNwQUidDFvUDvnwCk/32nR98Vs7lL5O+d4+r34?=
 =?us-ascii?Q?fFVRKTVwF+lfhqmZOoapsGhlbs02j42gHQiEShb1aMCZg9AiYfSrn4jJUzf7?=
 =?us-ascii?Q?0y+1pUyLqw0AocpCVHYyJW8FIxsFLRug9ZTkDlXLRazy9gCwcDBsrNTqohL1?=
 =?us-ascii?Q?v6imrFa37QZyd9GEdHcW6cROiiBsBRVVbGsm4SNF1neBFDdG7b8mPnuPqknD?=
 =?us-ascii?Q?rQM3hIBYo4jSYuz0QlxL0QyfZdADCSi69qh0WpjhRVTLkyAd3qN3pM6jKq2a?=
 =?us-ascii?Q?Ei6Dei3Pph45jSYjZTIk5LGZl4FXP6jCGU7+Z+R4neMuha1oXA58MnBFW4hM?=
 =?us-ascii?Q?J9bpjvBk4JbpQfNIcUTZVz/0DPioOjCgfAnayNC5fmXozFcqHsfkYULNiT2h?=
 =?us-ascii?Q?kkdSCJKjuctDE6QFGhxu5vity/k2QdB8TOlQHB5C34/Gtf6+GZS3Nwyz59Ca?=
 =?us-ascii?Q?swPCfvF6nUAy03CFtxcA1C3FQIwM+k0YaH3xtcq9IFASh5XDDrq3IMX4ui7k?=
 =?us-ascii?Q?j1Ezz6ImpVpJ8ZWLQ6ZvopEESgrD1echFZATrzZKwa4dwkVZE3r+MpAsqkzo?=
 =?us-ascii?Q?IBdVUA7yOAuh+M1Fb5ss5f7NojYxxUAlRsFgzLDdrswMPqU0XXetab04Da2B?=
 =?us-ascii?Q?BQyKJmFVMmH5xviVBeMuxyZc?=
X-OriginatorOrg: labundy.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 646aee10-638a-479e-35c6-08d928a882bc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR08MB6544.namprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2021 05:04:06.4128
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 00b69d09-acab-4585-aca7-8fb7c6323e6f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3JlvXYfqwvQu8K013MJSGltv+NaF2SBVUVKMv6NCaYPzCtmevrtRYNbnVmO46vacRkA23xGuyLuD3wW3G5VvQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR08MB4279
X-Original-Sender: jeff@labundy.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@NETORG5796793.onmicrosoft.com header.s=selector1-NETORG5796793-onmicrosoft-com
 header.b=nQr+iUGn;       arc=pass (i=1 spf=pass spfdomain=labundy.com
 dkim=pass dkdomain=labundy.com dmarc=pass fromdomain=labundy.com);
       spf=pass (google.com: domain of jeff@labundy.com designates
 40.107.93.63 as permitted sender) smtp.mailfrom=jeff@labundy.com
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

Hi Dmitry,

On Sat, Jun 05, 2021 at 09:43:46PM -0700, Dmitry Torokhov wrote:
> On Sun, Jun 06, 2021 at 12:37:43PM +0800, kernel test robot wrote:
> > Hi Jeff,
> > 
> > FYI, the error/warning still remains.
> 
> I have no idea how it happens... 
> 
> > > 1645	static int iqs626_probe(struct i2c_client *client)
> >   1646	{
> >   1647		struct iqs626_ver_info ver_info;
> 
> This is 4 bytes.
> 
> >   1648		struct iqs626_private *iqs626;
> 
> This is 4 or 8.
> 
> >   1649		int error;
> 
> And another 4. And that is it. The bloat must be coming from elsewhere.

Agreed; in fact I am suspicious if this is part of some fallout from a recent
change in Clang. There seems to be a smattering of similar warnings as in [1]
which are preceded by the same warning about __lwsync().

I see there is a patch [2] to address the issue with __lwsync(); perhaps this
is related.

[1] https://lkml.org/lkml/2021/6/6/7
[2] https://lkml.org/lkml/2021/5/28/690

> 
> >   1650	
> >   1651		iqs626 = devm_kzalloc(&client->dev, sizeof(*iqs626), GFP_KERNEL);
> >   1652		if (!iqs626)
> >   1653			return -ENOMEM;
> >   1654	
> >   1655		i2c_set_clientdata(client, iqs626);
> >   1656		iqs626->client = client;
> >   1657	
> >   1658		iqs626->regmap = devm_regmap_init_i2c(client, &iqs626_regmap_config);
> >   1659		if (IS_ERR(iqs626->regmap)) {
> >   1660			error = PTR_ERR(iqs626->regmap);
> >   1661			dev_err(&client->dev, "Failed to initialize register map: %d\n",
> >   1662				error);
> >   1663			return error;
> >   1664		}
> >   1665	
> >   1666		init_completion(&iqs626->ati_done);
> >   1667	
> >   1668		error = regmap_raw_read(iqs626->regmap, IQS626_VER_INFO, &ver_info,
> >   1669					sizeof(ver_info));
> >   1670		if (error)
> >   1671			return error;
> >   1672	
> >   1673		if (ver_info.prod_num != IQS626_VER_INFO_PROD_NUM) {
> >   1674			dev_err(&client->dev, "Unrecognized product number: 0x%02X\n",
> >   1675				ver_info.prod_num);
> >   1676			return -EINVAL;
> >   1677		}
> >   1678	
> >   1679		error = iqs626_parse_prop(iqs626);
> >   1680		if (error)
> >   1681			return error;
> >   1682	
> >   1683		error = iqs626_input_init(iqs626);
> >   1684		if (error)
> >   1685			return error;
> >   1686	
> >   1687		error = devm_request_threaded_irq(&client->dev, client->irq,
> >   1688						  NULL, iqs626_irq, IRQF_ONESHOT,
> >   1689						  client->name, iqs626);
> >   1690		if (error) {
> >   1691			dev_err(&client->dev, "Failed to request IRQ: %d\n", error);
> >   1692			return error;
> >   1693		}
> >   1694	
> >   1695		if (!wait_for_completion_timeout(&iqs626->ati_done,
> >   1696						 msecs_to_jiffies(2000))) {
> >   1697			dev_err(&client->dev, "Failed to complete ATI\n");
> >   1698			return -ETIMEDOUT;
> >   1699		}
> >   1700	
> >   1701		/*
> >   1702		 * The keypad may include one or more switches and is not registered
> >   1703		 * until ATI is complete and the initial switch states are read.
> >   1704		 */
> >   1705		error = input_register_device(iqs626->keypad);
> >   1706		if (error)
> >   1707			dev_err(&client->dev, "Failed to register keypad: %d\n", error);
> >   1708	
> >   1709		return error;
> >   1710	}
> >   1711	
> 
> Thanks.
> 
> -- 
> Dmitry

Kind regards,
Jeff LaBundy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210606050401.GA5335%40labundy.com.
