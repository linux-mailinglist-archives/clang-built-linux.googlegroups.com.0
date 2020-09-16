Return-Path: <clang-built-linux+bncBCD4PZ7MGEII5CEK7MCRUBC3XSGJ6@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3141126CE2F
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 23:30:55 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id f18sf3046248wrv.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 14:30:55 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1600291855; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y4l71JU0TMQL5xdSNhpMyOtJZho9ARSx7IIB+k83cn62fnEoun7ela88DsfqIZBQfB
         1xfV1S5pAydJFXjCZofsdHLF7qMMHNWmlUXFKcdWm/Igrme7+HRiMq7OMRtZK3nGxTP4
         yMw4xZMT5rXS8Qoj/PhjFzr1IguRZ2BTr/Sbow5lKb6YWNYX6TePA577JqBFjL9vfftE
         Khie6P4vf15u9UvOqc3fbRMzWRNidusp7tlJ4J+oD+vcXqm0oNiIHN84jjwsNKZkYq8b
         L0vaSm8jg8mcdaS5v4VZoMcIJlhH1LDx942Xk5cle4GZytqfBIj+MgML4ziiWvnh8uKI
         E+lg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:nodisclaimer:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=et4JR46O0eqtTGNvG/U2Zb5Y9WEoVRU3Q5VM+UH4XFI=;
        b=btPLRUgUw88vj6E9X2CVuB5xb+/LXmP4QYjzi8Tx6m3BxBY+pazTQnaPRC7lYgICI0
         38kpjVEvmGw7N4DEfeoKcWh+/mAeXerWgpdxhagZ2sVti5LoL6wWNEU5PRlcZr74rss0
         atboTP0FxfORQ5W5PTKDaaQOc7VX/ShQdyzIONXf7h/L2gsyt73k22a6syjB/Jju5baa
         05UFvfPpmIunQSEU2aQgaWpooE4EWWSEntY4EsovpPPo1pL0XUKwF4nxYnjNktsqFVty
         gpFWrpnJSQpJeVpdPHaOFrNugZSEKvcjdMVlO+8ZPb+oPXm9EyxIepExpVdj7RMJzKzZ
         PYIA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=pFTmPFS9;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=pFTmPFS9;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.4.48 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:mime-version:original-authentication-results
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=et4JR46O0eqtTGNvG/U2Zb5Y9WEoVRU3Q5VM+UH4XFI=;
        b=EN8gwNfWaCUvFpLb/28CgDne7N5pbAeoDTRKv6XsF9nD2a6OWFX6rxYtJxKaXQ3lnK
         rSmA8l61MmZ0gglpgVkul9Sda7tZ6WqUiYRhfQDPquqwgd34WOd4slFqfD4KR45aQ8D5
         PVHiu+g/emro7wnhsBC4YRwnhbl+ma7jA/bvYGCc0YBpiU2rwWDTpFfT9papV1WO1EAx
         IChyYf4xoDRp2hTxJoii0/u4ndOS9d47KCS2Smw4fC+0QU81W09S3hwlpSXpGmMpKy8z
         Gs/WkqvKUAKjukNy+tcOKMfQrmfmwxuE9lg5DpI2NDEh4YLbrZNk4kQk5uYP0j93UVUT
         GPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=et4JR46O0eqtTGNvG/U2Zb5Y9WEoVRU3Q5VM+UH4XFI=;
        b=YjOv8waP1QclZXV2rzIUZh8vPTvNUJSHcJjXFeZjj89wm3c4W8pdfgznUe48XO3kvc
         9QleHJt16KhZHHjHH2nbpIoyXPOeeDjLcos9UoiO/ZvnW2xaqPp4+qwakKMuH97NUYgQ
         vim43zjMsaWN5VLQ7sUg8mM/qdwH3TxVMftZpMIWoW5Wjqw6UCYsQ9V4AJn+5kHqCqui
         UbF3J7eMQ0Z3ZFMqMwTTlsLFY2RhcSWYwAgeIa45VQA91GDVdvrtQSKZuCp5l1+zFzRC
         7RPjmY3o5UjZybaQ6g9oG5uIilIb6e+a0peTeP9o2Uj6yQK259J7bokZRPCOZh8LrxtT
         Ymlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53344kL22TecdhnrzTypyFOeGSb+48v3rNF1+gD3B/DgVuimmNQ7
	1tY4g+Di2tuIbwFBT5FITPg=
X-Google-Smtp-Source: ABdhPJyh74aowAG31/bYjYwMI92o3F2WuLqfK2BVMikkXAZ8SMqKfq9rPb0L2tj1dtahtTlrgJKFjA==
X-Received: by 2002:adf:dccd:: with SMTP id x13mr30902886wrm.403.1600291854892;
        Wed, 16 Sep 2020 14:30:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:428e:: with SMTP id k14ls3958461wrq.0.gmail; Wed, 16 Sep
 2020 14:30:54 -0700 (PDT)
X-Received: by 2002:adf:ec45:: with SMTP id w5mr30297952wrn.357.1600291854068;
        Wed, 16 Sep 2020 14:30:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600291854; cv=pass;
        d=google.com; s=arc-20160816;
        b=in+8+9As6MUexz5Qs9Pne7xaqYQ8cvrWgosmW0OtQtq3Y55bLFYNCPqwfd6EWAXdm5
         9zz3MgThP/QfXYoAECsXToYB4i8oLwZ/TP9P0d2HyLBDaaYgcFYbi/x86LX3t05bC/ez
         f7IW2pUhiTZI6uMLeQkoWP8F2rLgDyuv8AK5Jc46ljO23OB5tCO60Ae5w3z04YwmgU5S
         efSq1zSsra/MMPj3+6DtEUyOexsfHFQX1PNclCltgPOFJb6aJZDITHb+2HtO26wq4gBB
         m7JbO6xTr5X7DqIKjpxaEcVV12lnFJ3lywD0Xs7NGdfbo7v49byxbowsqFXJKMGVIoK3
         Fx3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=kfjPSYms8QTEvGWCn0PWxTVT2/XIQSTkmk8EAPz62QM=;
        b=hb2EkaV6cMhUK+r3JpO/fsPzEypsRwbIAgeynnbQU5qDcIwvkZ6Czfugo26aoKSRnb
         +7RtPCi7aTXI8SSn1igdfb36qYpDdOTanZR3gLwNp93Tu4/eXh7SetbH436rbOyhmEx9
         Psx9sTwDbVgDCR7wvhH/Unt9tL0w0s6PJBz/jVvAUemMAApTbCEfVZdiNe4atHXTHKVg
         eszyNBXr5AaUKG9bxR5CYrq+ZlcW9QJWvqn3y3zkVYmQ6oBibLMwNfbi4GvJ5JqZFu0g
         xHG+fqjgmWYRb1Gfz9xDWpf97DeROI31H5rwWKmr8olqoYKixCzAqMeFwRO2SmAwSwGO
         u4NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=pFTmPFS9;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=pFTmPFS9;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of daniel.kiss@arm.com designates 40.107.4.48 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (mail-eopbgr40048.outbound.protection.outlook.com. [40.107.4.48])
        by gmr-mx.google.com with ESMTPS id b1si111443wmj.1.2020.09.16.14.30.53
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 14:30:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.kiss@arm.com designates 40.107.4.48 as permitted sender) client-ip=40.107.4.48;
Received: from AM5PR1001CA0068.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:15::45) by DB6PR08MB2935.eurprd08.prod.outlook.com
 (2603:10a6:6:1f::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.19; Wed, 16 Sep
 2020 21:30:50 +0000
Received: from VE1EUR03FT037.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:206:15:cafe::86) by AM5PR1001CA0068.outlook.office365.com
 (2603:10a6:206:15::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.13 via Frontend
 Transport; Wed, 16 Sep 2020 21:30:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; googlegroups.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;googlegroups.com; dmarc=bestguesspass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT037.mail.protection.outlook.com (10.152.19.70) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.15 via Frontend Transport; Wed, 16 Sep 2020 21:30:50 +0000
Received: ("Tessian outbound 195a290eb161:v64"); Wed, 16 Sep 2020 21:30:49 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 73202a2dd8deef6c
X-CR-MTA-TID: 64aa7808
Received: from 246aff0792f0.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id AEFAF6F4-3769-4FF3-AD87-816155207095.1;
	Wed, 16 Sep 2020 21:30:44 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 246aff0792f0.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 16 Sep 2020 21:30:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UOwnPofr0pH8UxBxEyFYVSzqzMJ9jBvSQPJfDz32K4buT9Ub6XJ3vFNaVfrimRngvI5knlPqnDZxFzQEyvAyv62hfWCkysTb1JxCLin/kFl9ZSKrTXBozmkVJW1cHDmwsmoVpnGHaLXIYrh61P8AWGrCKb5EQ9G11vT2TttLHEqgxO41FvJg2jghpt+0nskckRo/O0+SZCyF+8SY9pUdRnulEHLEghCyQezT6buR3meNVwQiB+falUP95Nm2WLT8nn1rhhTwY9ESxk6uT/v2VW+gTsSynBS1zHMDua41iFge6+aYZIr3grBzFgbhzivkpa81uZH/dXKluwbUhl9btw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kfjPSYms8QTEvGWCn0PWxTVT2/XIQSTkmk8EAPz62QM=;
 b=AoBNJwk1kj2AhKf6ef8nAupTBbuLbrHVomShmiAI7nbUI9ROcTGsnLLPli70VnV+RLVqaIQFOBZ32eZoHfSXwq0m/fyz6YZ7uZtYJSKiOnR8uo9T6oQGlYy3pKF60lQGcmmPR4VURxkS8t+ikCxdccMnmAJhyoABUmufm6VTpZbpWwp+7HXXYtL7UwIvMGbChSHlXaU30j5L0sUDHp2uGUBa8TKJmRSN4ov92edQiyD1SkeFhfbwnW6ln+1qHS6+q9oji9c4psY2N+BHWKSyyClZecSkZohjC+0ehJxAbP1HK9QIx8vNhXu7VdlRrCWLHd6rUyLme8rEFC7dnEQ6PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com (2603:10a6:20b:e7::32)
 by AM6PR08MB3544.eurprd08.prod.outlook.com (2603:10a6:20b:4e::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.17; Wed, 16 Sep
 2020 21:30:42 +0000
Received: from AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::edd3:6ed9:f739:d26]) by AM6PR08MB5256.eurprd08.prod.outlook.com
 ([fe80::edd3:6ed9:f739:d26%6]) with mapi id 15.20.3370.019; Wed, 16 Sep 2020
 21:30:42 +0000
From: Daniel Kiss <Daniel.Kiss@arm.com>
To: Marco Elver <elver@google.com>
CC: Nick Desaulniers <ndesaulniers@google.com>, Peter Zijlstra
	<peterz@infradead.org>, Josh Poimboeuf <jpoimboe@redhat.com>, Borislav Petkov
	<bp@alien8.de>, Rong Chen <rong.a.chen@intel.com>, kernel test robot
	<lkp@intel.com>, "Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Andrew Morton
	<akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, Masahiro
 Yamada <masahiroy@kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
	Momchil Velikov <Momchil.Velikov@arm.com>, Mark Rutland
	<Mark.Rutland@arm.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Thread-Topic: [tip:x86/seves] BUILD SUCCESS WITH WARNING
 e6eb15c9ba3165698488ae5c34920eea20eaa38e
Thread-Index: AQHWjFZWUnFC6JY89kqBV7Fktz5UKqlrnB8AgAAsdYA=
Date: Wed, 16 Sep 2020 21:30:42 +0000
Message-ID: <333D40A0-4550-4309-9693-1ABA4AC75399@arm.com>
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com>
 <20200915135519.GJ14436@zn.tnic> <20200915141816.GC28738@shao2-debian>
 <20200915160554.GN14436@zn.tnic> <20200915170248.gcv54pvyckteyhk3@treble>
 <20200915172152.GR14436@zn.tnic>
 <CAKwvOdkh=bZE6uY8zk_QePq5B3fY1ue9VjEguJ_cQi4CtZ4xgw@mail.gmail.com>
 <CANpmjNPWOus2WnMLSAXnzaXC5U5RDM3TTeV8vFDtvuZvrkoWtA@mail.gmail.com>
 <20200916083032.GL2674@hirez.programming.kicks-ass.net>
 <CANpmjNOBUp0kRTODJMuSLteE=-woFZ2nUzk1=H8wqcusvi+T_g@mail.gmail.com>
 <CAKwvOd=T3w1eqwBkpa8_dJjbOLMTTDshfevT3EuQD4aNn4e_ZQ@mail.gmail.com>
 <CANpmjNPGZnwJVN6ZuBiRUocGPp8c3rnx1v7iGfYna9t8c3ty0w@mail.gmail.com>
In-Reply-To: <CANpmjNPGZnwJVN6ZuBiRUocGPp8c3rnx1v7iGfYna9t8c3ty0w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.120.23.2.1)
x-originating-ip: [2001:4c4c:1b2a:1000:393f:3642:1f2a:863b]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4d4a2920-8909-4b68-f91f-08d85a87c897
x-ms-traffictypediagnostic: AM6PR08MB3544:|DB6PR08MB2935:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB6PR08MB29359A3DBAE0885B27A4B3D7EC210@DB6PR08MB2935.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:7219;OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: r3Fb+9jLrgJFwXq4zedhSUd28MgfbOLP4oYs/12aGyJ0q8PseozuhKgeXwmgp1ANW/5bNJ/PNCIRL+pQTX1qbhwgc3W1ymoHPvwG8AwwUpp7UOpG3m89iUiDXnh7DV3EJEAN542v9V5pqX68bXlSKixIP+eHy83BMQGhgbkhLruNpNWBlk3c6NZ3tNN1/VREug5qbsFQQAUl66XWJ962Mn96JL+o/K9hUtlTOAlEUY4Q9t9bpUvoEYEp9irTsd4jdPRK5o0mmaBEwZAMpliydHYKpJLYZEr0cy7bqUm95yy0JjgeE7SBxgBfyDNJPMLKPiTswzG5F+y4CJl4nmVJgrbL5buVnHtOyLo6w2pGVeydmoeWEXfQRs3MOSq1lVQ6f73tQydDlurWknZBaj5hiA==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR08MB5256.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(136003)(376002)(396003)(39850400004)(346002)(71200400001)(166002)(2906002)(478600001)(8936002)(33656002)(316002)(83380400001)(36756003)(7416002)(966005)(86362001)(6486002)(4326008)(6512007)(54906003)(8676002)(5660300002)(2616005)(91956017)(76116006)(64756008)(66476007)(66556008)(66446008)(186003)(6916009)(6506007)(66946007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: YZ6JHNQCJBYeTXqHWcs8NqvDc7v6qKTjECol9ify0LD2fN5niyQiUsR0GGiDY8Wk8rl4Z60EVgIraFX2RxjlIZjKZbne8gnDVjiN7uVIa3ywm/S1JXi7oEsjsjDMo+ym4YW5graQdn7GmsiY49OFpSGSKuULUhHgIUpi2OP8FLfGoAKjMAcN/JTh9vAo3HUWxJn0jhh8am2CdqaHuD11xvmbRSefxv0JkpAdhl5zAzk3Ay6WlSiCVPX89JdMCjndB6hX4AeoOOZKnGV32Pj9KRu9ZNDrvN2a8rADQJnwej9FxfUL89vRsVE7H9B2xKS8yXtdC/caNnae15VO09+HS8tQ/KvJj5qImKsdYB84g9L5/jb3B+rFss8id8mHC1sySKbohYS70rthsfM+FvhvyiaX+Zj7jZPGS7HhYO5I7jCqfFW4EYzZaxNKqjBsqg9k9cMe5tnui+Lm6qQjR2TfzGC20vzy/3SfSV38iQuWu9gwE5qQG3nt/Zb8P6JC5U5e6usvWKxUwc/xyjpPEDyB1a5oeMykbhwoUlSNJ83U+XJFJ97dkHibOv+hbEmQ4cwdoWkEY+Wy89lv5MibtXr7G5WQFK7ArgYwDsVwCGeDZFG3uwIdQWEqSG38ELeGjKXVgH0dZyvSms+nIG5zhqSZwP2vIr6xDlaIovJemfmbh8KNWiszlCm3HE3QWRRTa4k0dWq4BcxEGK9Bd8rT/acfgw==
Content-Type: multipart/alternative;
	boundary="_000_333D40A04550430996931ABA4AC75399armcom_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3544
Original-Authentication-Results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT037.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: d1b42ec5-deae-4d3e-e6a7-08d85a87c398
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4JSwVRaOCMbpl/09Cnvyk3i5AX98JxJV8lDRFsi2UCr/8ShNuPXbDAka9/UlabnQIh4lxJEn/nF7KpBKk/SKIqdIedwT9FzoeKkFVh6eHYYg6oLbRlcd7WAvXy4KeocWZzgmU/3VlOEKC5VDLGIRYwmsIbSfaBErByhRbaGdtmSLo9twTiUD++Os+NOV14ROU1lK3XpawX4Vi42fpVkXoG51XnAWjsYqEamQ1TM7c0z6sBXhXJwDI9rBYrDnavshEd4YPi1KWWLuBZvGpy0iHjhQ0ywvWrAxAaTtNqOmIjcTdHY/o6J+Zbs3kU7vxxHfcceIy6IPrNJrpozBiZOmzYfugmzxjg/y+rO3Hy+1yS9q3vvPev1T35IxQpaHfUM0ZG4U69QAvi+va2zHQGjOthbcyDl89GhziGs4xz+I+nMpuyrd1he/yyU1ArwR0cXVc/Ov/C1u20KtwfktOSAI3kjGeKmj4aUg0SxS9908TDI=
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(396003)(346002)(136003)(376002)(39850400004)(46966005)(450100002)(8936002)(356005)(82310400003)(166002)(83380400001)(81166007)(70206006)(70586007)(5660300002)(966005)(186003)(2616005)(6862004)(82740400003)(4326008)(47076004)(6512007)(26005)(45080400002)(54906003)(336012)(33656002)(316002)(36756003)(33964004)(8676002)(86362001)(2906002)(6506007)(478600001)(36906005)(6486002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2020 21:30:50.3953
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d4a2920-8909-4b68-f91f-08d85a87c897
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT037.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR08MB2935
X-Original-Sender: daniel.kiss@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=pFTmPFS9;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=pFTmPFS9;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 daniel.kiss@arm.com designates 40.107.4.48 as permitted sender) smtp.mailfrom=Daniel.Kiss@arm.com
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

--_000_333D40A04550430996931ABA4AC75399armcom_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


Thanks for the summary -- yeah, that was my suspicion, that some
attribute was being lost somewhere. And I think if we generalize this,
and don't just try to attach "frame-pointer" attr to the function, we
probably also solve the BTI issue that Mark still pointed out with
these module_ctor/dtors.

I was trying to see if there was a generic way to attach all the
common attributes to the function generated here:
https://github.com/llvm/llvm-project/blob/master/llvm/lib/Transforms/Utils/=
ModuleUtils.cpp#L122
-- but we probably can't attach all attributes, and need to remove a
bunch of them again like the sanitizers (or alternatively just select
the ones we need). But, I'm still digging for the function that
attaches all the common attributes=E2=80=A6

We had the problem with not just the sanitisers.  Same problem pops with fu=
nctions
that created elsewhere in clang (e.g _clang_call_terminate ) or llvm.

In case of BTI the flag even controllable by function attributes which make=
s it more trickier so
the module flags found the only reliable way to pass this information down.
Scanning existing functions is fragile for data only compilation units for =
example.

Our solution, not generic enough but might help.
https://reviews.llvm.org/D85649

I looked for while for a generic solution, so I=E2=80=99m interested in if =
there is one :)

Thanks,
Daniel

IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose, or store or copy the information in =
any medium. Thank you.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/333D40A0-4550-4309-9693-1ABA4AC75399%40arm.com.

--_000_333D40A04550430996931ABA4AC75399armcom_
Content-Type: text/html; charset="UTF-8"
Content-ID: <E8BB8EF32B38734395AA10366292947B@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
</head>
<body style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; line-break:=
 after-white-space;" class=3D"">
<div><br class=3D"">
<blockquote type=3D"cite" class=3D"">
<div class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: Helv=
etica; font-size: 12px; font-style: normal; font-variant-caps: normal; font=
-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0p=
x; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; text-decoration: none; float: none; display: inline !=
important;" class=3D"">Thanks
 for the summary -- yeah, that was my suspicion, that some</span><br style=
=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; fon=
t-style: normal; font-variant-caps: normal; font-weight: normal; letter-spa=
cing: normal; text-align: start; text-indent: 0px; text-transform: none; wh=
ite-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-=
decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none; float: none; display: inline !important;" clas=
s=3D"">attribute
 was being lost somewhere. And I think if we generalize this,</span><br sty=
le=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; f=
ont-style: normal; font-variant-caps: normal; font-weight: normal; letter-s=
pacing: normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; tex=
t-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none; float: none; display: inline !important;" clas=
s=3D"">and
 don't just try to attach &quot;frame-pointer&quot; attr to the function, w=
e</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; fon=
t-size: 12px; font-style: normal; font-variant-caps: normal; font-weight: n=
ormal; letter-spacing: normal; text-align: start; text-indent: 0px; text-tr=
ansform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none; float: none; display: inline !important;" clas=
s=3D"">probably
 also solve the BTI issue that Mark still pointed out with</span><br style=
=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; fon=
t-style: normal; font-variant-caps: normal; font-weight: normal; letter-spa=
cing: normal; text-align: start; text-indent: 0px; text-transform: none; wh=
ite-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-=
decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none; float: none; display: inline !important;" clas=
s=3D"">these
 module_ctor/dtors.</span><br style=3D"caret-color: rgb(0, 0, 0); font-fami=
ly: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: norm=
al; font-weight: normal; letter-spacing: normal; text-align: start; text-in=
dent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">
<br style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: normal; l=
etter-spacing: normal; text-align: start; text-indent: 0px; text-transform:=
 none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none; float: none; display: inline !important;" clas=
s=3D"">I
 was trying to see if there was a generic way to attach all the</span><br s=
tyle=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px;=
 font-style: normal; font-variant-caps: normal; font-weight: normal; letter=
-spacing: normal; text-align: start; text-indent: 0px; text-transform: none=
; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; t=
ext-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none; float: none; display: inline !important;" clas=
s=3D"">common
 attributes to the function generated here:</span><br style=3D"caret-color:=
 rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: normal;=
 font-variant-caps: normal; font-weight: normal; letter-spacing: normal; te=
xt-align: start; text-indent: 0px; text-transform: none; white-space: norma=
l; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none=
;" class=3D"">
<a href=3D"https://github.com/llvm/llvm-project/blob/master/llvm/lib/Transf=
orms/Utils/ModuleUtils.cpp#L122" style=3D"font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px=
; text-transform: none; white-space: normal; widows: auto; word-spacing: 0p=
x; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" class=
=3D"">https://github.com/llvm/llvm-project/blob/master/llvm/lib/Transforms/=
Utils/ModuleUtils.cpp#L122</a><br style=3D"caret-color: rgb(0, 0, 0); font-=
family: Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; tex=
t-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none; float: none; display: inline !important;" clas=
s=3D"">--
 but we probably can't attach all attributes, and need to remove a</span><b=
r style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12=
px; font-style: normal; font-variant-caps: normal; font-weight: normal; let=
ter-spacing: normal; text-align: start; text-indent: 0px; text-transform: n=
one; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px=
; text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none; float: none; display: inline !important;" clas=
s=3D"">bunch
 of them again like the sanitizers (or alternatively just select</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px=
; font-style: normal; font-variant-caps: normal; font-weight: normal; lette=
r-spacing: normal; text-align: start; text-indent: 0px; text-transform: non=
e; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none; float: none; display: inline !important;" clas=
s=3D"">the
 ones we need). But, I'm still digging for the function that</span><br styl=
e=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; fo=
nt-style: normal; font-variant-caps: normal; font-weight: normal; letter-sp=
acing: normal; text-align: start; text-indent: 0px; text-transform: none; w=
hite-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text=
-decoration: none;" class=3D"">
<span style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size=
: 12px; font-style: normal; font-variant-caps: normal; font-weight: normal;=
 letter-spacing: normal; text-align: start; text-indent: 0px; text-transfor=
m: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration: none; float: none; display: inline !important;" clas=
s=3D"">attaches
 all the common attributes=E2=80=A6</span></div>
</blockquote>
</div>
<div class=3D""><br class=3D"">
</div>
We had the problem with not just the sanitisers. &nbsp;Same problem pops wi=
th functions&nbsp;
<div class=3D"">that created elsewhere in clang (e.g _clang_call_terminate =
) or llvm.
<div class=3D""><br class=3D"">
</div>
<div class=3D""><span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);" class=3D"">In case of BTI the flag even controllable by function attri=
butes which makes it more trickier so</span></div>
<div class=3D"">the module flags found the only reliable way to pass this i=
nformation down.&nbsp;</div>
<div class=3D"">Scanning existing functions is fragile for data only compil=
ation units for example.</div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">Our solution, not generic enough but might help.</div>
<div class=3D""><span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);" class=3D""><a href=3D"https://reviews.llvm.org/D85649" class=3D"">http=
s://reviews.llvm.org/D85649</a>&nbsp;</span></div>
<div class=3D""><span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);" class=3D""><br class=3D"">
</span></div>
<div class=3D""><font color=3D"#000000" class=3D""><span style=3D"caret-col=
or: rgb(0, 0, 0);" class=3D"">I looked for while for a generic solution, so=
 I=E2=80=99m interested in if there is one :)</span></font></div>
<div class=3D""><span style=3D"caret-color: rgb(0, 0, 0); color: rgb(0, 0, =
0);" class=3D""><br class=3D"">
</span></div>
<div class=3D"">Thanks,</div>
<div class=3D"">Daniel<br class=3D"">
<div class=3D""><br class=3D"">
</div>
</div>
</div>
IMPORTANT NOTICE: The contents of this email and any attachments are confid=
ential and may also be privileged. If you are not the intended recipient, p=
lease notify the sender immediately and do not disclose the contents to any=
 other person, use it for any purpose,
 or store or copy the information in any medium. Thank you.
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/333D40A0-4550-4309-9693-1ABA4AC75399%40arm.com=
?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/=
clang-built-linux/333D40A0-4550-4309-9693-1ABA4AC75399%40arm.com</a>.<br />

--_000_333D40A04550430996931ABA4AC75399armcom_--
