Return-Path: <clang-built-linux+bncBD36VNNTQEDRBO4A7SCQMGQE5TBDSBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B37239EE1F
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 07:29:33 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id w15-20020ac857cf0000b02901e11cd2e82fsf8743169qta.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 22:29:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1623130172; cv=pass;
        d=google.com; s=arc-20160816;
        b=d3XbLmBPzTSy7Kb6uTiDiOYt8KKhm47x7jC+V9xRbZk7ZmW5zKj3VMBVv63+lPvov7
         SWA7xRVQIzy9uY74IlYieLOOiDgIU7GGF95SCdCZ4OVWbUcMkbfNxyjrlL4jnoJitVKM
         mWwh/8ECmD1/8KIE4Dj8s1BXWF4O7sjLnD3FOvuTaztsZe06c89hSOVrpc5vnw0e9WN8
         aAYQuk/52wP7V5BZ+m6+/FpHcLug1HLBGCM/HvJO8OVu1gyq00K3yHQZbvzRBWuUo2hQ
         ERv1OZxFfrYumBn7lwjn4zur2Mwqhd1y5UhXNbeQS/q89p0UMIzcCsvw27HnQsdcz8eb
         GbJA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=oHgtv9ML4V/+RWkQpBjIHAfZyUyqyWEwDHlsPsmJY3Q=;
        b=IMarq9fJFlc1Ywf68/i/HLD3VhRWitB0vO9rgj/eTaFOrKqlDQEUmNk+uvCmH6IrdQ
         hJumsHQ4GCibNaUSqDfbztImy59fsSQ//ElTx/AqShRB6tWT/i4OlU/WU2SG0alLVvY4
         Fm/uzLUPeCkwqJy83+e2zD1YrmbxviS9vnjZU46o1UN5XHdSyTNE4aGcm3RjxjaBswYE
         iJU09THGs0eNRwxiQ2Cgo4NOGjt+UI/z3HBpH2aTqtALR57R5tQZZkztP6bsUv7Lri4d
         6fnDVeGHjIOSAsYjiQVfZwAjlPMpSJVOIwzLAkzEbLS6E6SuG35IGydnI5l1H958YqR4
         wAMg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=RQ0SuVW0;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of parav@nvidia.com designates 40.107.93.86 as permitted sender) smtp.mailfrom=parav@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oHgtv9ML4V/+RWkQpBjIHAfZyUyqyWEwDHlsPsmJY3Q=;
        b=VA/F30reCZ22oUMmY8c/vjlIW34NqoHJknOowNBIKYpinBwMuVCLA4u9UlFD5kUuq8
         v6fAhGW6nf7408gLKAm0TOhfg3oafH3mwJ0IGbN2w9LJHesiXVwxU11+yd/WEeYlH+Jd
         L6hDr0csE3f5qdCczaVjX6l9oDR4TnJIsCDESbotmrDkYt4CTf3TxlBcE/zau0G2Geo7
         9Q1Zo9XusdfmiHqmvdaFGoFIK9cAyB2WE4hm9KUF0by+SG+0v9tNWvwNfVxEXt+79Z0t
         rAcytWAtROu9OkXyJCmzRy+llow1i0AMejDBDGinmz7KNX2+iC6cYo7ku9lWWAVYb6CE
         UL6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oHgtv9ML4V/+RWkQpBjIHAfZyUyqyWEwDHlsPsmJY3Q=;
        b=AD1xjW8DBuMwGcep5oFWHM74zmbPm8krdLbLNgnWJYiz81SSrR21oXIXK1VY7QUSKX
         Q1CuaFZSQXGnUFtNTanvlpd962Ru4DkOtLUeZNOF1xWXJTgJtwA7m581KCjbt+VgiJtd
         //K17ULXbsG0jBoGj47oPVFIu0KH1yq08OTF6fz63tplHH2GngKyAnDki7IV8hPLk55D
         yLWTeKaO0+uQCgU6KTJ0Xw3brsmsXeMiXOndEoiWbaT+iR4sOV94ireCZg9xHK8BH/qE
         LuC2pjabH0h+GuFWf5eNFpenFGrFJtE9aMI4MygbGAi7vBwYI7BSP+HMuaGdQU8VOlv2
         f1nA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531L8hl1fOvWjMhlLvYY7yIx4WnqjB9w3NwDpxo4hor9JS/1hGKm
	EX4nT47lNGR6MC2S/JVqR1M=
X-Google-Smtp-Source: ABdhPJxD7s1JzZjXpBPcFZvxa9DVvPBTmehPzMKvUWpsczUmOxn2viMJUUKWNBFWb2k824bbUoMmiA==
X-Received: by 2002:ae9:eb91:: with SMTP id b139mr13567661qkg.135.1623130171931;
        Mon, 07 Jun 2021 22:29:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2087:: with SMTP id e7ls8727936qka.11.gmail; Mon,
 07 Jun 2021 22:29:31 -0700 (PDT)
X-Received: by 2002:a37:bdc3:: with SMTP id n186mr19770447qkf.81.1623130171419;
        Mon, 07 Jun 2021 22:29:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623130171; cv=pass;
        d=google.com; s=arc-20160816;
        b=czETNM7BQ5Bd9Pu30iKLFvN3XG+nRIh/DVkcLjaxGgfsH2Tk6txqJe4aOyc/PuSUxB
         cbjl7lDDFiQbe/iJWzit0wOie/skQ52C15gri+cvZ39DL72WmlGPvIEhze/PzkKC6lbp
         BRSexoyPIO6b6Z7LP6lolepy+grqcF4//1PVyU8ODyX7YW46o2JGGZat6jqe7GIoX/p1
         9WNCBDo6FZRtBPZeXiGktwePptg9dHvDRK1pF5LSM8HsBtXJ3DRaE82XYE7RFRnlBrLT
         EU9IBAypfp1G0bsHLH/b/2RInslsqUDJHVKri3sM0jnRzoUkQCiDJRO+p6wO7gQb7X2R
         +MQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=NB+fKXeGJ3Vv+6hh38TjBiiUbvz7GPd4LPLd9fm1xT4=;
        b=zcbuVvKcqG8GyJ191MhVwBizgRH/5jriow5CXubsBQk3f6r2DrzQkqQ1gYJuj8axvN
         21l7kSve394voSEANIBQsUcbFw0dVlHi4/KJHMLtasvcmeXN1zfHjUFlsCAeswVg1iFI
         hE1ZFM1cZ9uIRg1n5yi77FwKmMhBIipQ3TchXC3OD9PNVarGbq7WZqZDs3n3PX6LPsba
         N/pxyqqqGrVSz7c/mPwtd+1SpiWwfNrsaO/YDPb/eFsor8h/4srO8KrmBiTkXG3ZdW1R
         8gD58U0bU2oMqZ+bgSv5nUvDeoCVDESQe/mKCBgXaY2nfOrCYTx0wivL9Mn2k+lTPD+z
         aPqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=RQ0SuVW0;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of parav@nvidia.com designates 40.107.93.86 as permitted sender) smtp.mailfrom=parav@nvidia.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2086.outbound.protection.outlook.com. [40.107.93.86])
        by gmr-mx.google.com with ESMTPS id v64si1307019qkc.1.2021.06.07.22.29.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 22:29:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of parav@nvidia.com designates 40.107.93.86 as permitted sender) client-ip=40.107.93.86;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mbG3q24qhCdonsc5b3OYYhxtGYzPqcVEhS6BJxryMYKc81SzRBmgNwQBLfbCc0QiAFPSYGWqu37jaZHYXR8rfIRAAdcvIToFOqsX7LHjo7pOSeQz4kHUmVEtzDXQx2628xBQnMzq0Vpx6EG3wjEQIImpSirmSLEiRZxFpKB/ZqY0hM04aqnMQW/VQ64CPvuU2oqyhejwWC8xzxEgAwjsZs78u63dfxIkeDDBkCQX/MsshK0lcqJ2+h55H3waDO1/4PeohscKhklz1ItxRuwutBaQbFihaHTY2Oj1j+3rrPwWjdFpHpd5Wl9w89LMXDmhV7XI5u3Vfxkdt7+CHdJqmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NB+fKXeGJ3Vv+6hh38TjBiiUbvz7GPd4LPLd9fm1xT4=;
 b=B9BFKHspueiBXVY2MhjlUWjGVU8+FWHm4q65J4Rthnzeq7hAwLche7iLR2/IIv4KBinwIj3h1LhhHNRvJCNr0CNAJaIsskQ/8gIMiTg9CuzwpkdJT5xxG9h2aHHij5BhyyEkGn5mm6Kb4m+6LzFdBTEp6rUuSf+QMsFVyA6pphMnPUo8Gh0QgRCGeZ13TaammhrEGkTlanLHmhlOYY88928lVs3iHw9wjaD6cfvMHQWMARJaTfFLLqLrO8WnEp7+bEVb4tExHalo+FmPRG5Ejvp3e+zXRueLGUaUIRzruIT2h6qwiO+TCLAs6DBsulaPsuanjhHEpfmqaGhmq+yHEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from PH0PR12MB5481.namprd12.prod.outlook.com (2603:10b6:510:d4::15)
 by PH0PR12MB5483.namprd12.prod.outlook.com (2603:10b6:510:ee::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.23; Tue, 8 Jun
 2021 05:29:29 +0000
Received: from PH0PR12MB5481.namprd12.prod.outlook.com
 ([fe80::b0d9:bff5:2fbf:b344]) by PH0PR12MB5481.namprd12.prod.outlook.com
 ([fe80::b0d9:bff5:2fbf:b344%6]) with mapi id 15.20.4195.030; Tue, 8 Jun 2021
 05:29:29 +0000
From: Parav Pandit <parav@nvidia.com>
To: Jason Gunthorpe <jgg@nvidia.com>
CC: Leon Romanovsky <leon@kernel.org>, Doug Ledford <dledford@redhat.com>,
	Greg KH <gregkh@linuxfoundation.org>, Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>, Adit Ranadive <aditr@vmware.com>,
	Ariel Elior <aelior@marvell.com>, Christian Benvenuti <benve@cisco.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>, Devesh Sharma
	<devesh.sharma@broadcom.com>, Gal Pressman <galpress@amazon.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>, Michal Kalderon
	<mkalderon@marvell.com>, Mike Marciniszyn
	<mike.marciniszyn@cornelisnetworks.com>, Mustafa Ismail
	<mustafa.ismail@intel.com>, Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nelson Escobar <neescoba@cisco.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Potnuri Bharat Teja <bharat@chelsio.com>, Selvin
 Xavier <selvin.xavier@broadcom.com>, Shiraz Saleem <shiraz.saleem@intel.com>,
	VMware PV-Drivers <pv-drivers@vmware.com>, Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: RE: [PATCH rdma-next v1 14/15] RDMA/core: Allow port_groups to be
 used with namespaces
Thread-Topic: [PATCH rdma-next v1 14/15] RDMA/core: Allow port_groups to be
 used with namespaces
Thread-Index: AQHXW3XTgmUrShoLP0aSfA0ttnjNH6sIiqTAgACpEgCAAGNfcA==
Date: Tue, 8 Jun 2021 05:29:29 +0000
Message-ID: <PH0PR12MB5481D66883EA5F32AA8488B0DC379@PH0PR12MB5481.namprd12.prod.outlook.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <a1a8a96629405ff3b2990f5f8dbd7b57a818571e.1623053078.git.leonro@nvidia.com>
 <PH0PR12MB5481C3DE73C097E938B4E5D1DC389@PH0PR12MB5481.namprd12.prod.outlook.com>
 <20210607233202.GU1002214@nvidia.com>
In-Reply-To: <20210607233202.GU1002214@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [49.207.202.149]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 970d7120-7ad2-44bb-69ee-08d92a3e6399
x-ms-traffictypediagnostic: PH0PR12MB5483:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <PH0PR12MB54835954DEF26F9B6F26FFFFDC379@PH0PR12MB5483.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KQ92iXHfemSnVRxkCd9uoXZk9qNxqnVUoVU4jUDPtDp+LelyK8Pg6548sB8VGaUxzO5UZDjCCjhXpv9It2j0L3cTDdLglIhr5hMzyAiYDSzwlx8H64i2MFMLDZaIXX3Vpx/WGeArB6bwlnJ9Xb563gNw6vA9jfSn4BqY7aGrPqeIb9PT4wy0eh6RWC0AqNFUHt7isBHaEVpaRhcvdTG+RHthvB+gXR2/CNHxROC8EwUmK1Lfs9Lt77tgm9v9yV44OUeI2Mjl/JLBxQS3xoSPRzMT6PVKB0d8OwJf2LRdvCi9t02NbK9ElBAsLV+kC3gk7SYKfEv76nor1kmLJFTWce81F8h8Hr4H9HKmEVfwO0/+9HBlyy/T7vD4XO64XjvtCOcUD/Q9LEa3zi1cNwyTZ/j0eLwJrS43aMFwQtSrbnQ8ew2Nvv0LXHwyfC/GdVRk+1OtqXU7Xi3NDqjqq/umiU6a9C7LxoOZwrphFv8hjefcEEUedPd5lx7pA+xRuAztOckxJJaR345BNDrFHYPMqB4d0roYrtjKgYPhiZ1Lin3acOYU0YLj4usy4Co+0QixLCUoRAorgrfOgBtDsgrDRBB+DzHm21gk0e70WFgTj0k=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR12MB5481.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(396003)(366004)(39860400002)(136003)(186003)(55016002)(6506007)(76116006)(2906002)(8676002)(26005)(55236004)(8936002)(316002)(54906003)(66476007)(83380400001)(66556008)(64756008)(66946007)(52536014)(86362001)(4326008)(5660300002)(71200400001)(66446008)(478600001)(33656002)(7416002)(7696005)(6636002)(38100700002)(6862004)(9686003)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mMoU9Y/MFMxfK7bxC3qDcieNzSJ9WFhtLQfk68Ye4w38xpSog9O6eZaIjft/?=
 =?us-ascii?Q?RgpB+BeqsfAiPvoh6MrPYfHbRcqYaUtbW7mj75gQDUg7VV5FkpF6WuEIVyCg?=
 =?us-ascii?Q?Qwe2iwPUljOLdfQHxLqXeH3dj0CSChYfZdtOxUUGdm5WGo8YRwkyB9hbZ/T2?=
 =?us-ascii?Q?0VVqayNnuT6qysxczs1Nn5B6g8rPdS5aIO6n++VdvpBX1HJ2SeJXhbEubnYN?=
 =?us-ascii?Q?iSV0DurNlqMohkNKIU+smtjt/zVcc8KzgEXomrmf+8FeeE8I/Hl3IgrHZE8f?=
 =?us-ascii?Q?ovK6cTI6XJCzni9mW7zhTt7/rScjzjRmMnpNNwzRc+FEuMkae4Sha7yKK+Ho?=
 =?us-ascii?Q?oubHUgcJ6fQ2QCusCagmkJdsaam09ixAoEmk/X8pCZD8HlDZpJGJ3wzScVl4?=
 =?us-ascii?Q?fN1UYCuMi/q2vCG3O1J0l/t70VczTEiX7NIOwbCK0a74GmVGSrN+3q96d2bF?=
 =?us-ascii?Q?yCR91l2E7J3NhOvwfEBeKM2iR2HknuO4Tayl+/LSh8gzuVwqf6MbC7EFlUPy?=
 =?us-ascii?Q?cBPCKjBeUN4KbHM4BOe+OjTeR8tkC5MzYa2D697/v8LlogmEvcuq4fY59Rx7?=
 =?us-ascii?Q?0ZayYCTZF95Rz8LgNoKfmJsBiXPO2UYiunc46l8ERKS8V4qFTcBR1RkW7gq5?=
 =?us-ascii?Q?NFpPLXBQH0FCBJKyl5XuQZkERbKCxmF2IHMMyzWiYJD9MhbdgjKOMuzK7zuA?=
 =?us-ascii?Q?W6YMP4cQpa1uMjtI5n+Y1vwrc6x7wyT7fvNQG75UI+uetCQ4v9RWUxfRN7R1?=
 =?us-ascii?Q?BZnHgSR+Qam/DbDRtoENvRUdkRZNxNF7Or1vY4vc1dSxl8guy6taCcanSbap?=
 =?us-ascii?Q?J218IvsepClOZute3Te8bhuX9PgXxHxVNvubdCnjXM4JL+teFDo/yhtkk4uc?=
 =?us-ascii?Q?pSWmzp7VsoO3k4/GVLYX2mMzFC1wwMNSiDzZPq1PS3pmYBTFpb6a0bZPutBw?=
 =?us-ascii?Q?/HYg0iV6drWvC8S7pYuGozWx93ZrEsoTE6FoB4kUKsxjihsSwya+3NT4UYXA?=
 =?us-ascii?Q?N/7ocdQTDRJvAAdV5au1bVJpnjTf8dpjYK6JSQhlmgU21E0z0HDC52ce3ix+?=
 =?us-ascii?Q?WxO2rBrxV2+IdBuaA+mIK6G3IOtNAIwNBSNfLGPAnuxXHz/WejZshJ/amSwM?=
 =?us-ascii?Q?sXo9QX1iv+fIU6YXgdBFQdWUuJ9+dKojS3aHlUBsO7bOtJaRlL/RQIpFpsMa?=
 =?us-ascii?Q?ZhkEVuPWn3gfUdrpKsmxrmfcCN7kbxAKE3rFgEIo9kFzS5PqQpcnz0cGbpBa?=
 =?us-ascii?Q?oenxMxBcSTU3OyrGFqaJFlbsjuU5xrxp9UE9O56q1azTBsuD3LeOKcyScMUz?=
 =?us-ascii?Q?awqxFIKW7GhgydKauc9/q2sH?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB5481.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 970d7120-7ad2-44bb-69ee-08d92a3e6399
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2021 05:29:29.6017
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tXi244J0FupORQL4M6eUfIDCzArJcWy0HLnSl4VNdQ8o2VZiA2xnBexkkLoWHUKuHVeF7fz/nmzBH1UywWaHgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5483
X-Original-Sender: parav@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=RQ0SuVW0;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of
 parav@nvidia.com designates 40.107.93.86 as permitted sender)
 smtp.mailfrom=parav@nvidia.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nvidia.com
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



> From: Jason Gunthorpe <jgg@nvidia.com>
> Sent: Tuesday, June 8, 2021 5:02 AM
> 
> On Mon, Jun 07, 2021 at 01:29:58PM +0000, Parav Pandit wrote:
> >
> >
> > > From: Leon Romanovsky <leon@kernel.org>
> > > Sent: Monday, June 7, 2021 1:48 PM
> > >
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > >
> > > Now that the port_groups data is being destroyed and managed by the
> > > core code this restriction is no longer needed. All the
> > > ib_port_attrs are compatible with the core's sysfs lifecycle.
> > >
> > > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > > Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> > > drivers/infiniband/core/device.c | 10 ++++------
> > > drivers/infiniband/core/sysfs.c  | 17 ++++++-----------
> > >  2 files changed, 10 insertions(+), 17 deletions(-)
> > >
> > > diff --git a/drivers/infiniband/core/device.c
> > > b/drivers/infiniband/core/device.c
> > > index 2cbd77933ea5..92f224a97481 100644
> > > +++ b/drivers/infiniband/core/device.c
> > > @@ -1698,13 +1698,11 @@ int ib_device_set_netns_put(struct sk_buff
> > > *skb,
> > >  	}
> > >
> > >  	/*
> > > -	 * Currently supported only for those providers which support
> > > -	 * disassociation and don't do port specific sysfs init. Once a
> > > -	 * port_cleanup infrastructure is implemented, this limitation will be
> > > -	 * removed.
> > > +	 * All the ib_clients, including uverbs, are reset when the
> > > +namespace
> > > is
> > > +	 * changed and this cannot be blocked waiting for userspace to do
> > > +	 * something, so disassociation is mandatory.
> > >  	 */
> > > -	if (!dev->ops.disassociate_ucontext || dev->ops.port_groups ||
> > > -	    ib_devices_shared_netns) {
> 
> So this is OK since we have the clean up now
> 
I didn't review the whole series, but yes if there is sysfs clean routine, it should be ok.

> > > +	if (!dev->ops.disassociate_ucontext || ib_devices_shared_netns) {
> > >  		ret = -EOPNOTSUPP;
> > >  		goto ns_err;
> > >  	}
> > > diff --git a/drivers/infiniband/core/sysfs.c
> > > b/drivers/infiniband/core/sysfs.c index 09a2e1066df0..f42034fcf3d9
> > > 100644
> > > +++ b/drivers/infiniband/core/sysfs.c
> > > @@ -1236,11 +1236,9 @@ static struct ib_port *setup_port(struct
> > > ib_core_device *coredev, int port_num,
> > >  	ret = sysfs_create_groups(&p->kobj, p->groups_list);
> > >  	if (ret)
> > >  		goto err_del;
> > > -	if (is_full_dev) {
> > > -		ret = sysfs_create_groups(&p->kobj, device-
> > > >ops.port_groups);
> > > -		if (ret)
> > > -			goto err_groups;
> > > -	}
> > > +	ret = sysfs_create_groups(&p->kobj, device->ops.port_groups);
> > > +	if (ret)
> > > +		goto err_groups;
> >
> > This will expose counters in all net namespaces in shared mode
> > (default case).  Application running in one net namespace will be able
> > to monitor counters of other net namespace.  This should be avoided.
> 
> And you want this to stay blocked because the port_groups mostly contain
> counters?
Yes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/PH0PR12MB5481D66883EA5F32AA8488B0DC379%40PH0PR12MB5481.namprd12.prod.outlook.com.
