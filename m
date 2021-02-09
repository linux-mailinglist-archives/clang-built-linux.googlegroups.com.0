Return-Path: <clang-built-linux+bncBAABBP7RQ6AQMGQE764WFXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 735133146A3
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 03:51:44 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id n15sf14105216ljg.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 18:51:44 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1612839104; cv=pass;
        d=google.com; s=arc-20160816;
        b=fB2SLrRRJwIls70MubFmz1cwVKg67GcvrvPZaqkZjAAFhIm1BXlgkQBE1PsO3gDe/U
         96eC+tn9AkGbkaU8azB1veI8o9a4/UukAs4ib9GD4tsrfmzNp0adGc5N60aZe2OMl2n0
         szVxiv197e7htE/upxs0yac3Rj6zvHs06AS4eraotenHEGHgXWl4jBSenYsK87ENyeGV
         9RWnXJEWT8zmZc3bsxRk8/tYCHVDYRJgzt7JEM4GIWDsotTViGa7oSWvrOptkzn/jVx/
         ACstJ7LxvOYKwy8QKoYLMAOCjr3dgqfxtVvQUFJwDKpdUnW6o7OnINDWPmUOoh0KCx3X
         nMqg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-transfer-encoding:nodisclaimer
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=2hoVMKlYwcsmX04ftSY0CTJvfm0XU8IQ9fQWw6GN+xM=;
        b=fvsQeTbkyZ/7tqpRY6x1j/F8sfw4bFjlOUQSVxuTu0WA5pQplg5iSvUmLEdrqdw0dk
         sCdZE8v4AijvWOEb6a/tV6tBLX/uyVi9kxwyec1LMau8LrbYlEvevjqMmdunh9SGj0vP
         RNhPREiI1ImyDx2QxDjcv6juBQzJKylTvKOzpcNT00nca1W2jWLvG5+Fsfw6rJAYyz5B
         bEXc1bIMvDwe6CbDRNVkJ2rNFhuKzRF7gONn9+Kg/NQRDPBc96Msnza7Nm6NKAEw7cdi
         CpjgJKa27/dapajSi68l4hMl0fu/JdtebBu8wcGeC3d9qJIkIdzo3G0hFfND4BiXQcnU
         zcTA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=i8tubMtA;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=i8tubMtA;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of jianlin.lv@arm.com designates 40.107.8.42 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2hoVMKlYwcsmX04ftSY0CTJvfm0XU8IQ9fQWw6GN+xM=;
        b=CVssurEg/0Whw1tL/gPnqdgj7ltVxj16buVgpohtQdTapgshGQf/LZ/AUpe3FFOnGX
         a4ErTLXXMl8hrzgQcwz7qoCR0NjOdUYGt9nCEeVkY85QxXWmy3mu4wDryovx9E0NP+Vn
         cRNYBrOFtOeQ0BeI0Izoabmh6vHQ12zRgDWZxuyYPhBiejCS+cZDGu27iTiWiPUealC4
         bNGz8hIsJOlJGCUjSwfWAkZpn3Ogkg19VQi8UvdvAePEuh+Gi3WBjxCGaJkwLpyGH0/b
         kOjMbIpki3HtVZu3sBl4mgSto6yo9vOKzEjsO9h89AHoCm/9ZgbhzhrF4DsJR1D7xARJ
         i+ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-transfer-encoding
         :mime-version:original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2hoVMKlYwcsmX04ftSY0CTJvfm0XU8IQ9fQWw6GN+xM=;
        b=kFiJq72DjjkhnpzBki1T3lCDkvxalWUWJIsKJQa1EjXMNLczgtMirC4J53mg+BMBmJ
         71rMmc8ZDmb7KL9ZM+2NVsQRpVxPZBYXOkesLZ62pwAAREcBL10FAMCoTh1gvFpojUFy
         ziozvL5IQ/D1e1CA37OUW6rtA/GCi3Yvbj5wjlEWRNrbbH9K+/gmjG8NeR0XcdDQZUUE
         Jt0Sil123V0+BR2cSokaWG1WS7AezX1WOZBtwMY/nEw7TPB4VqS0tOETLcJRlEh1jbRo
         HvkrwcLOqhUYQ3le0Dupv9mS+tgnnzsQHfl84u+zaaL7wYZeDuv+ommeZSZmDY05zYbx
         TPgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530B0FOzx2CIUqLvBLTLgzQcFJEYvgtz6fqDhj0ZzwCHX25V9wKp
	QRPc5KcTF/FdAF6inD3UFuE=
X-Google-Smtp-Source: ABdhPJwev3AOVEkbNJ6BHyR5wxpkjMlfmfdHULXudUdAYEmj4Eewaf2Yfe41xoXvjUw4fB9TJ4Leiw==
X-Received: by 2002:a2e:8ed2:: with SMTP id e18mr13041312ljl.87.1612839104042;
        Mon, 08 Feb 2021 18:51:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9ad2:: with SMTP id p18ls3322993ljj.5.gmail; Mon, 08 Feb
 2021 18:51:43 -0800 (PST)
X-Received: by 2002:a2e:145d:: with SMTP id 29mr12942218lju.391.1612839103217;
        Mon, 08 Feb 2021 18:51:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612839103; cv=pass;
        d=google.com; s=arc-20160816;
        b=y5zQIzW2UthmIJnTC//iJOBxKSQTuEQC2HtAFArA2kK394FJ1UK9nwpI19CQQctJ3X
         5O5ejeqAG6bPbzvUPgiSq1+vIsnFzUwX6GBm44P2I+sEQ8Ul01EQgFnqDXSdZk6uxyzi
         +aXuQFdf/z8cw4QTTxhoE7b8nblxJt0OPJf2J0yP9wJgmrqtkA9rQuQKSThxuTIxCgFF
         sb4qDHu+0nzy4Z7qBGdv2nDAD5+MRXeTDDJRxlmGt22fG7RGWLnKxKV96h/sYue56wES
         wzqeVuVXjCQKlT9HIyDWfEtkKyubN8ArnX53qMvltaObdrwzENzgc81xcUiprlUhqv/i
         PPMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=KHN9nGaDeq+Y/SQPCw0KMI8YNTIkAUczqKMlFFPCq+Y=;
        b=N/nXyImNfMd646LJ9HYfwFq/54y6u+62C+zWdug9pGZruFh3q1EDCOHMAE678/Fpio
         dbZEY/MZvmztP9pxN58y6Vf3nD7G+wyDuvEcWuM7tvsXI8KyoGPz50qYSsdM/ebIjSEs
         g8J9jDxyy/hjyuszz/G0S1/DkOpAuX/tFFksg+aAL0vo8egcV+jhWgsvucoWqePLpWG8
         m0QcL0cFca6UWCHWm9MLSq+FIXLA8FhDWHxSP5Uj2KsAsNw/58e1WW+7ZWVIC2aLUAsy
         r7WyagJdm+fhvHzrw0rgm72+rlf74lQOsfgLkKGp3xEFJTmFUSTjm8p4yfONFW0Ufbrc
         dE9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=i8tubMtA;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=i8tubMtA;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of jianlin.lv@arm.com designates 40.107.8.42 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80042.outbound.protection.outlook.com. [40.107.8.42])
        by gmr-mx.google.com with ESMTPS id l24si316924lji.0.2021.02.08.18.51.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 18:51:42 -0800 (PST)
Received-SPF: pass (google.com: domain of jianlin.lv@arm.com designates 40.107.8.42 as permitted sender) client-ip=40.107.8.42;
Received: from AM6PR05CA0008.eurprd05.prod.outlook.com (2603:10a6:20b:2e::21)
 by AM6PR08MB4086.eurprd08.prod.outlook.com (2603:10a6:20b:a8::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.24; Tue, 9 Feb
 2021 02:51:40 +0000
Received: from VE1EUR03FT011.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:2e:cafe::21) by AM6PR05CA0008.outlook.office365.com
 (2603:10a6:20b:2e::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.17 via Frontend
 Transport; Tue, 9 Feb 2021 02:51:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; googlegroups.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;googlegroups.com; dmarc=pass action=none
 header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT011.mail.protection.outlook.com (10.152.18.134) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3784.11 via Frontend Transport; Tue, 9 Feb 2021 02:51:40 +0000
Received: ("Tessian outbound 4d8113405d55:v71"); Tue, 09 Feb 2021 02:51:39 +0000
X-CR-MTA-TID: 64aa7808
Received: from bb900bb8f867.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id E2C8C9CB-EFF7-4CE6-85BC-1D2752EBD556.1;
	Tue, 09 Feb 2021 02:51:34 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id bb900bb8f867.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 09 Feb 2021 02:51:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jR/jQC8bOS12CxO96E9f6LIvIS2FHUV8B8DsWmCnuU3niHt/e8xHB9zbAVcX5WGXwpVOYDLxmWk+srqsq6U12My5uG0MPLg7mDXk7LRQMTqXaOgCLtwJ7RnZpbnxQRKTTTs19H8oYPEqZs9LRaKWIXLAXLxst5FeFzyrAQuogCeoOC6WTrH3zNDI1OtHwLukP+Slm3WDCX3Hltvk23KVKp6txwhBm7q+tns0Mpe/g30XHKjsZTGgRWiv5H3gvJoIFmiWr8rY8GcOUmqVlDwCrRcz3K7hh+3F3YrIiRhRbJEWuyr3RNFxIn5JeWZhFOXU1591kMwIWVcToRGOo2RXpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KHN9nGaDeq+Y/SQPCw0KMI8YNTIkAUczqKMlFFPCq+Y=;
 b=acOFcGXejDPgCDoL0T0DZ3o9wDEyjoEeC3RdSsvq2LGYdjEHst3v/u1V/ksj9GjSuhYW1mJP+DAI7vQVNe2fBjmfnygCbbdTyQkRq23AQ5HqlYV5bVl8Or91hKgP7FkJPiytd3Yrl6tzbDJ3ish1uFe/Nsy2PIHoj3xvyFVSWI5i+ZRXDHIG6RbCiGHtdUizlG6OCwoutfCcZ0N6pyuSxQN0R5uPzXmJpIOQHUmom+moPyqIZJzfRsuNHf2yKr+v1lpJgCZZ+S5vKws8wfA2jtss4eeKq2tGL6dQjKC+t/YK8T86Et+ZNxNoVVOfGK5WSg52u0fTmC1nkSMD5bUFmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from AM6PR08MB3589.eurprd08.prod.outlook.com (2603:10a6:20b:46::17)
 by AS8PR08MB6104.eurprd08.prod.outlook.com (2603:10a6:20b:299::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.30; Tue, 9 Feb
 2021 02:51:31 +0000
Received: from AM6PR08MB3589.eurprd08.prod.outlook.com
 ([fe80::d4d5:2dd2:1ac5:ba34]) by AM6PR08MB3589.eurprd08.prod.outlook.com
 ([fe80::d4d5:2dd2:1ac5:ba34%4]) with mapi id 15.20.3825.030; Tue, 9 Feb 2021
 02:51:31 +0000
From: Jianlin Lv <Jianlin.Lv@arm.com>
To: Masami Hiramatsu <mhiramat@kernel.org>
CC: "peterz@infradead.org" <peterz@infradead.org>, "mingo@redhat.com"
	<mingo@redhat.com>, "acme@kernel.org" <acme@kernel.org>, Mark Rutland
	<Mark.Rutland@arm.com>, "alexander.shishkin@linux.intel.com"
	<alexander.shishkin@linux.intel.com>, "jolsa@redhat.com" <jolsa@redhat.com>,
	"namhyung@kernel.org" <namhyung@kernel.org>, "natechancellor@gmail.com"
	<natechancellor@gmail.com>, "ndesaulniers@google.com"
	<ndesaulniers@google.com>, "fche@redhat.com" <fche@redhat.com>,
	"irogers@google.com" <irogers@google.com>, "sumanthk@linux.ibm.com"
	<sumanthk@linux.ibm.com>, "adrian.hunter@intel.com"
	<adrian.hunter@intel.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] perf probe: fix kretprobe issue caused by GCC bug
Thread-Topic: [PATCH] perf probe: fix kretprobe issue caused by GCC bug
Thread-Index: AQHW+6Jrlcx5yjkUm0qR4w3YwhFFNKpONbuAgADor8A=
Date: Tue, 9 Feb 2021 02:51:31 +0000
Message-ID: <AM6PR08MB3589E9CB66C12943CC93D559988E9@AM6PR08MB3589.eurprd08.prod.outlook.com>
References: <20210205093558.3057814-1-Jianlin.Lv@arm.com>
 <20210208213245.c302a2263a0816d705af974c@kernel.org>
In-Reply-To: <20210208213245.c302a2263a0816d705af974c@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 06FB2045EAD8D84CBAC17983C6FB8C22.0
x-checkrecipientchecked: true
x-originating-ip: [203.126.0.112]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b00a1898-8925-4b80-8a46-08d8cca5a054
x-ms-traffictypediagnostic: AS8PR08MB6104:|AM6PR08MB4086:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB4086954719095DE4606A7115988E9@AM6PR08MB4086.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:4303;OLM:486;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: UkAhTil1hboy63M+1r7t/uzy1LPXkXRma94jEPSkaQLcsmhTHHLONUYB/NqtFMyPtYQ8oHMsBs8MKBH4OH3CZTgtFeL9pk/+1ptpxqBlMale170LCwWtCylsDpF3IHQMSPiunBzEE6pjuPh+23hGRiPqMb0DNGIzqQGrF5cwfWRKH1gvYIm2+15KZlNNL5cmd6J+x29O093i9IuNv5IX539CThOYGeH/MX/oKAa3SF7S3C9vFLI786I/HPBiby06UcTpD4DRgSa5YewAnJYo+9XrVO4F2NwCcrDBcLZ+HL8xTVoMh+Pfn1u7NWE2fTS8Rl+MAX3JxN5VNrFWiTXuwjDCCH+wSoHaRbzxTp8S9bBEZj3Krj05Jp4AKzpQ6tg1DH1ALUVoTq16JN3X9uMrxwKng7RWx+P7Isf1v+04sDkNGl8DWowpd5J0JPhYGjjMtYtZOWLrsDLM+KKxVsojC7b6od7QzTgXnpACLihHlNLB/oJ/VC9/eilcvigMOnFBreBgmpnR7Aa5o6NNad7dW/TDz2gVKiFWRmwuez3rs5FB9HFvdVzjJs2/DlTx+ptOrOb91c2ExsRGm+rmHx+wAuN63R2wnYxIvi7ij7I6ke4=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR08MB3589.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39860400002)(366004)(376002)(136003)(396003)(346002)(316002)(76116006)(66476007)(8936002)(86362001)(54906003)(71200400001)(66946007)(66556008)(66446008)(64756008)(2906002)(7696005)(52536014)(8676002)(30864003)(5660300002)(33656002)(966005)(55016002)(478600001)(9686003)(6916009)(26005)(53546011)(6506007)(4326008)(7416002)(186003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?N34o4DSfCr5s1pTHs49CTSV4twG8RQWXFZ08pwFQ5UJXPTyGYNiingMyJEzQ?=
 =?us-ascii?Q?X2LKOtre2WJEHaacVUG590a1tb5cVDfHER9XuhX+XURX/UMJGct854npgTEE?=
 =?us-ascii?Q?FXiFwCbkfPMAYqcAkGMA2ERrP3zGsQRCrbasfCerjRpnxd78VDmir6NxoSAh?=
 =?us-ascii?Q?R7MHj459Agd6Bs5NTDp1+JkXZDM0M0fYkE+qA32dImMWoncq/uhDy8i9j0Ha?=
 =?us-ascii?Q?qUEC8rEBrA00j40VmRO+gZV8FTsqeIGtkb2ZnyXWCcOulgj9Hi8h7Y2Jjl0x?=
 =?us-ascii?Q?xorEJGImQvfuDXv6Y2a9azXfV4/UBjeEs4DI5ph4Aejs7VHc0xirIW41GA9D?=
 =?us-ascii?Q?U5k3zDrPqBxszY7xvJSyPtsXDDw3HeFn64ZT4FkZrxfZUiNhbQz9aJPqP174?=
 =?us-ascii?Q?87Tyn7CnqUKBeSepa3jqRlgUt+VfdXuEjukHDO3q9tk1Zc1uM4HzyJckif2Q?=
 =?us-ascii?Q?IxWAqoDDDJXTldgg0tKG5cvpLJfiyH67BtvyRVjxnzSUkPbNV6cej5PuFa/v?=
 =?us-ascii?Q?iX4oHG3U2dYY1m6F4eUQyAsRfLE9ob/FKvAvuZQMmdQkKm4r+Gc3v6OWUluj?=
 =?us-ascii?Q?TNAYKJZC4kXSIzqV+Kr32/53mLYjI5xN/4JoXa0W5ZXyGoguWTv3IZLICF2k?=
 =?us-ascii?Q?/0yNK68H0TCsbadMED9jqljJI2TyoH4jQbVm1u53ql0b0SWLjkzapTs201Vf?=
 =?us-ascii?Q?MC/bur/wlpKeIMdP2ZVusJfPdKXYW847ox294hJW22utgRNSXbnpN0ZJKCOp?=
 =?us-ascii?Q?la2lQZFvut5uqATsj8Fic/HDpgk21rBV4GfjrVG+zflBBT+g+InUHKKkOP1D?=
 =?us-ascii?Q?bp1++p7f3rfKj2KR0Bi/GDz1I3SKPOSh0nzHRyVHgeJtzLgoNBNbc6sA3+pC?=
 =?us-ascii?Q?HHkfY86d7jUpEU9Y+FtYszYREp0PvAIS163k6GdMz7c4oIPBHWVTq+koYTqY?=
 =?us-ascii?Q?rTu/hnXJXwmG53aVX53z54KnFS5pwFWluEKYXSfi3e79Py+E7F9tGlIsEQIZ?=
 =?us-ascii?Q?oxQ3zxdH66h07sT5uipaOV7/WIjwD7Dk7Y77Fy1ES95u1HMTSgJd5rOBZs8W?=
 =?us-ascii?Q?oVaH1gvuzk5Vds9kMf+jfDlLcyRBYJksjwy4A/IeHrLz6GvtE0+sWfR+Iagq?=
 =?us-ascii?Q?xOTVeKu5GWq7rOCme7uFxOlLxfdYc98+H9gFaNR9IYTUcBTmWRIqYOZcypFs?=
 =?us-ascii?Q?DWEkUxlw9sRva3gAGnoU6AwFfsUGkWUtFS14920lZwgkUwid+Oze3gUTFBTB?=
 =?us-ascii?Q?7TlKXyW3LUCcIzS1aBWeghjiRklKdpagFVan3jyhNLDOMJ8VxycPkTzniOIc?=
 =?us-ascii?Q?1aYQqWKtDhfaw14b6/qewWDE?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6104
Original-Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT011.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 95937c46-849d-4c2d-8d8c-08d8cca59b0f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hkugYXIapDBJj/XDujDLWG8WOLwnON2QHB7XpxI2wPdgSGXYi6dFwSUK+3gL9aN5RWWhSElkQwLe/RTtKBtvRSJ0wPdq2Yy2D7fXuC2LlWJNXzvH/O7X2kIRGUVRiYOqMbo0lcVcLbl4WSlgq5fkJJG40WKqoz5KUh38r6/g+HmtW1B9m5JPkLVffN+WakOvsUB1aXRUJGcnHnvj49IFaTN9JgA3K0GJL3FQO5YscP8tSsXk/pZ1fKQEjEXzHkcqSMGgNZCpscfrR0xJxLqqz29yeXAITCJuI+iAQeMfx2W+0CQ9gK1Gevvd1ONrycYZdkDpqFT1iJRnv64fVDnNlZPl35zgKtd95uIWe99FdnyHRMvpb/jQFleX800mwpSK/Dv3uvaDu9D7VteKoNg5sgdeVqnbyYyKvRpqh0+JpoqlwitUwyH0g1h/6il+fr5EV7nSn1CfHLH5L1k1HKksqKAru1nQ28x3P5XFyJMNGBTxid/RUw8ficNWZYf6RNn3XQvqx2jrIFjQ3SFKVPSXZc22oskbNNUD9r+hQZ18ifAZ+vEQmT/FY4Raqn6+lLwE6ICsW57yaIgNDxv+zpk643fYWrVd2QtKvZXIceSPQtZxXHEBrdEkmyGrG3RmUmZzCwE6HhL8RsKusVpM9sk1fm+3qe24F+aREO6qfZo5NufFRxrS2hlHDYAhNLgFiO48JB0WYAjw+74pTLnA81FbiPZrfQQCI58guNf3XHwz2UY=
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(4636009)(376002)(39860400002)(396003)(346002)(136003)(36840700001)(46966006)(83380400001)(336012)(47076005)(5660300002)(8676002)(7696005)(55016002)(36860700001)(356005)(186003)(26005)(81166007)(2906002)(8936002)(52536014)(82310400003)(54906003)(82740400003)(9686003)(6506007)(53546011)(316002)(33656002)(70206006)(966005)(70586007)(478600001)(4326008)(86362001)(30864003)(6862004);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2021 02:51:40.3220
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b00a1898-8925-4b80-8a46-08d8cca5a054
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT011.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4086
X-Original-Sender: jianlin.lv@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=i8tubMtA;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=i8tubMtA;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of jianlin.lv@arm.com
 designates 40.107.8.42 as permitted sender) smtp.mailfrom=Jianlin.Lv@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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



> -----Original Message-----
> From: Masami Hiramatsu <mhiramat@kernel.org>
> Sent: Monday, February 8, 2021 8:33 PM
> To: Jianlin Lv <Jianlin.Lv@arm.com>
> Cc: peterz@infradead.org; mingo@redhat.com; acme@kernel.org; Mark
> Rutland <Mark.Rutland@arm.com>; alexander.shishkin@linux.intel.com;
> jolsa@redhat.com; namhyung@kernel.org; natechancellor@gmail.com;
> ndesaulniers@google.com; fche@redhat.com; irogers@google.com;
> sumanthk@linux.ibm.com; adrian.hunter@intel.com; linux-
> kernel@vger.kernel.org; clang-built-linux@googlegroups.com
> Subject: Re: [PATCH] perf probe: fix kretprobe issue caused by GCC bug
>
> Hi Jianlin,
>
> On Fri,  5 Feb 2021 17:35:58 +0800
> Jianlin Lv <Jianlin.Lv@arm.com> wrote:
>
> > Perf failed to add kretprobe event with debuginfo of vmlinux which is
> > compiled by gcc with -fpatchable-function-entry option enabled.
> > The same issue with kernel module.
> >
> > Issue:
> >
> >   # perf probe  -v 'kernel_clone%return $retval'
> >   ......
> >   Writing event: r:probe/kernel_clone__return _text+599624 $retval
> >   Failed to write event: Invalid argument
> >     Error: Failed to add events. Reason: Invalid argument (Code: -22)
> >
> >   # cat /sys/kernel/debug/tracing/error_log
> >   [156.75] trace_kprobe: error: Retprobe address must be an function en=
try
> >   Command: r:probe/kernel_clone__return _text+599624 $retval
> >                                         ^
> >
> >   # llvm-dwarfdump  vmlinux |grep  -A 10  -w 0x00df2c2b
> >   0x00df2c2b:   DW_TAG_subprogram
> >                 DW_AT_external  (true)
> >                 DW_AT_name      ("kernel_clone")
> >                 DW_AT_decl_file ("/home/code/linux-next/kernel/fork.c")
> >                 DW_AT_decl_line (2423)
> >                 DW_AT_decl_column       (0x07)
> >                 DW_AT_prototyped        (true)
> >                 DW_AT_type      (0x00dcd492 "pid_t")
> >                 DW_AT_low_pc    (0xffff800010092648)
> >                 DW_AT_high_pc   (0xffff800010092b9c)
> >                 DW_AT_frame_base        (DW_OP_call_frame_cfa)
> >
> >   # cat /proc/kallsyms |grep kernel_clone
> >   ffff800010092640 T kernel_clone
> >   # readelf -s vmlinux |grep -i kernel_clone
> >   183173: ffff800010092640  1372 FUNC    GLOBAL DEFAULT    2 kernel_clo=
ne
> >
> >   # objdump -d vmlinux |grep -A 10  -w \<kernel_clone\>:
> >   ffff800010092640 <kernel_clone>:
> >   ffff800010092640:       d503201f        nop
> >   ffff800010092644:       d503201f        nop
> >   ffff800010092648:       d503233f        paciasp
> >   ffff80001009264c:       a9b87bfd        stp     x29, x30, [sp, #-128]=
!
> >   ffff800010092650:       910003fd        mov     x29, sp
> >   ffff800010092654:       a90153f3        stp     x19, x20, [sp, #16]
> >
> > The entry address of kernel_clone converted by debuginfo is
> > _text+599624 (0x92648), which is consistent with the value of
> DW_AT_low_pc attribute.
> > But the symbolic address of kernel_clone from /proc/kallsyms is
> > ffff800010092640.
>
> Oh, I had faced similar bug for fentry.
> 3d918a12a1b3 ("perf probe: Find fentry mcount fuzzed parameter location")
> GCC dwarf generator tends to skip this kind of function entry information=
...
>
> >
> > This issue is found on arm64, -fpatchable-function-entry=3D2 is enabled
> > when CONFIG_DYNAMIC_FTRACE_WITH_REGS=3Dy;
> > Just as objdump displayed the assembler contents of kernel_clone, GCC
> > generate 2 NOPs  at the beginning of each function.
> >
> > kprobe_on_func_entry detects that (_text+599624) is not the entry
> > address of the function, which leads to the failure of adding kretprobe
> event.
> >
> > ---
> > kprobe_on_func_entry
> > ->_kprobe_addr
> > ->kallsyms_lookup_size_offset
> > ->arch_kprobe_on_func_entry// FALSE
> > ---
> >
> > The cause of the issue is that the first instruction in the compile
> > unit indicated by DW_AT_low_pc does not include NOPs.
> > This issue exists in all gcc versions that support
> > -fpatchable-function-entry option.
> >
> > I have reported it to the GCC community:
> > https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D98776
>
> Thanks for reporting it!
>
> > Currently arm64 and PA-RISC may enable fpatchable-function-entry option=
.
> > The kernel compiled with clang does not have this issue.
> >
> > FIX:
> >
> > The result of my investigation is that this GCC issue will only cause
> > the registration failure of the kretprobe event; Other functions of
> > perf probe will not be affected, such as line probe, local variable
> > probe, uprobe, etc.
>
> Hmm, it can affects the perf probe with local variables with ftrace
> infrastructure.
>
> Now the debuginfo (dwarf_entrypc(DIE)) will return the actual symbol
> address
> +offset (offset depends on -fpatchable-function-entry). In this case,
> if perf-probe put a probe on a function entry, it will be a bit shifted.
> So, the probe always uses SW break instead of ftrace...Ah, ok...I recalle=
d.
> Before discussing it, I need to restart the kprobe on ftrace for arm64.
> It has been discussed last year, but stopped.

Is there any channel to learn about the progress of restart discussion?
Very interested in this discussion.

>
> > A workaround solution is to traverse all the compilation units in
> > debuginfo for the retprobe event and check whether the DW_AT_producer
> > attribute valaue of each CUs contains substrings: "GNU" and
> > "-fpatchable-function-entry". If these two substrings are included,
> > then debuginfo will not be used to convert perf_probe_event.
> > Instead, map will be used to query the probe function address.
>
> Hmm, actually, the return probe doesn't need debuginfo since it has no
> information of the local variables when the function returns (of course
> usually all local variables are gone at that point). In that case you can=
 just
> stop using debuginfo for return probe.
> (for the future work, it should support recording the contents of  "point=
er
> passing" arguments at return probe, but currently it is not  supported ye=
t. So
> this must be done in another series.)
>
> e.g.
> $ ./perf probe -D "eventfd_signal%return ctx->count"
> Semantic error :You can't specify local variable for kretprobe.
>
> So, this should work.
>
> diff --git a/tools/perf/util/probe-event.c b/tools/perf/util/probe-event.=
c
> index 8eae2afff71a..10c88885dcd4 100644
> --- a/tools/perf/util/probe-event.c
> +++ b/tools/perf/util/probe-event.c
> @@ -894,6 +894,9 @@ static int try_to_find_probe_trace_events(struct
> perf_probe_event *pev,
>  struct debuginfo *dinfo;
>  int ntevs, ret =3D 0;
>
> +if (pev->point.retprobe)
> +return 0;
> +
>  dinfo =3D open_debuginfo(pev->target, pev->nsi, !need_dwarf);
>  if (!dinfo) {
>  if (need_dwarf)
>
> Thank you,
>
>

You are right. I once thought about a similar modification method,
but it felt a little rough, so I added a check for the
"-fpatchable-function-entry" option.

I want a double confirmation, your opinion is to update this patch
as shown above, right?

Jianlin

> >
> > -grecord-gcc-switches causes the command-line options used to invoke
> > the compiler to be appended to the DW_AT_producer attribute in DWARF
> > debugging information.It is enabled by default.
> >
> > A potential defect is that if -gno-record-gcc-switches option is
> > enabled, the command-line options will not be recorded in debuginfo.
> > This workaround solution will fail.
> > Assume that this situation may not happen for kernel compilation.
> >
> > Signed-off-by: Jianlin Lv <Jianlin.Lv@arm.com>
> > ---
> >  tools/perf/util/probe-event.c | 60
> > +++++++++++++++++++++++++++++++++++
> >  1 file changed, 60 insertions(+)
> >
> > diff --git a/tools/perf/util/probe-event.c
> > b/tools/perf/util/probe-event.c index 8eae2afff71a..c0c1bcc59250
> > 100644
> > --- a/tools/perf/util/probe-event.c
> > +++ b/tools/perf/util/probe-event.c
> > @@ -885,6 +885,60 @@ static int post_process_probe_trace_events(struct
> perf_probe_event *pev,
> >  return ret;
> >  }
> >
> > +/*
> > + * Perf failed to add kretprobe event with debuginfo of vmlinux which
> > +is
> > + * compiled by gcc with -fpatchable-function-entry option enabled.
> > + * The same issue with kernel module. Refer to gcc issue: #98776
> > + * This issue only cause the registration failure of kretprobe event,
> > + * and it doesn't affect other perf probe functions.
> > + * This workaround solution use map to query the probe function
> > +address
> > + * for retprobe event.
> > + * A potential defect is that if -gno-record-gcc-switches option is
> > +enabled,
> > + * the command-line options will not be recorded in debuginfo. This
> > +workaround
> > + * solution will fail.
> > + */
> > +static bool retprobe_gcc_fpatchable_issue_workaround(struct debuginfo
> *dbg,
> > +struct perf_probe_event *pev)
> > +{
> > +Dwarf_Off off =3D 0, noff =3D 0;
> > +size_t cuhl;
> > +Dwarf_Die cu_die;
> > +const char *producer =3D NULL;
> > +Dwarf_Attribute attr;
> > +
> > +if (!pev->point.retprobe)
> > +return false;
> > +
> > +/* Loop on CUs (Compilation Unit) */
> > +while (!dwarf_nextcu(dbg->dbg, off, &noff, &cuhl, NULL, NULL, NULL))
> {
> > +/* Get the DIE(Debugging Information Entry) of this CU */
> > +if (dwarf_offdie(dbg->dbg, off + cuhl, &cu_die) =3D=3D NULL) {
> > +off =3D noff;
> > +continue;
> > +}
> > +
> > +/* Get information about the compiler that produced CUs */
> > +if (dwarf_hasattr(&cu_die, DW_AT_producer)
> > +&& dwarf_attr(&cu_die, DW_AT_producer, &attr)) {
> > +producer =3D dwarf_formstring(&attr);
> > +if (producer =3D=3D NULL) {
> > +off =3D noff;
> > +continue;
> > +}
> > +/* Check that CU is compiled by GCC with
> > + * fpatchable-function-entry option enabled
> > + */
> > +if (strstr(producer, "GNU") &&
> > +strstr(producer, "-fpatchable-function-entry"))
> {
> > +pr_debug("Workaround for gcc issue, find
> probe function addresses from map.\n");
> > +return true;
> > +}
> > +}
> > +off =3D noff;
> > +}
> > +return false;
> > +}
> > +
> >  /* Try to find perf_probe_event with debuginfo */  static int
> > try_to_find_probe_trace_events(struct perf_probe_event *pev,
> >    struct probe_trace_event **tevs)
> @@ -902,6 +956,12 @@ static
> > int try_to_find_probe_trace_events(struct perf_probe_event *pev,
> >  return 0;
> >  }
> >
> > +/* workaround for gcc #98776 issue */
> > +if (retprobe_gcc_fpatchable_issue_workaround(dinfo, pev)
> && !need_dwarf) {
> > +debuginfo__delete(dinfo);
> > +return 0;
> > +}
> > +
> >  pr_debug("Try to find probe point from debuginfo.\n");
> >  /* Searching trace events corresponding to a probe event */
> >  ntevs =3D debuginfo__find_trace_events(dinfo, pev, tevs);
> > --
> > 2.25.1
> >
>
>
> --
> Masami Hiramatsu <mhiramat@kernel.org>
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
clang-built-linux/AM6PR08MB3589E9CB66C12943CC93D559988E9%40AM6PR08MB3589.eu=
rprd08.prod.outlook.com.
