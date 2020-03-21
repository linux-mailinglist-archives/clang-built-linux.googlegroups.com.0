Return-Path: <clang-built-linux+bncBAABBTO23DZQKGQEXJDLR2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E25B18E246
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 16:05:51 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id c7sf7354771iog.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 08:05:51 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1584803150; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y7ApzNNtd4D5t3q5z2ucEzLklYpODRoeJO60HDENDH/vtkpanMDnMh6hDKTQ1lsDz1
         8QtdSo2tYqI7+6DfDX+64Q+drePJknBWmolqyjmfU7xFvbHEnYP1zV+QnxkWaW0+dMG6
         0ewyjVcv/wvwfXUwudvWYHq/IyqM799bzOBQqYNeHnfNJt/laF62jRR9KoJjLN3Wabzc
         VsJGqQcrUhwbJUmi7BUuo3RBogSSJzdvpl4gaKs7Z95HZIJfrbKo730Ji+XezbDBdqHQ
         R+w41kK3rfDyOAI1L837jXeTGiqtpmnmLxG+8HBBVmLLghnysGtyB11DKkjcj2tNq0Ay
         Um3w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-transfer-encoding:nodisclaimer
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=laDExWE70mxJsyls44zFysjV7HiddKE+KcuFdfQ7Vrc=;
        b=CwJyJYci077zH9zWos0iPsXVAA8SPEuI1YTAO7n3mOzqEr9jzkJAF0O4ys+FE/Ed25
         t/bMw6RDDjyyDA15rJAT7dc7UaR2huRYG+wFA3hgqG2FHx8dEa7DgogWxqCz7tb8pTcG
         iYAZs8493VpOOaztp49KOrtm9Dg7xe+JCOw8Gtnie1CH/qxMsw+YMcUicThRvpm/Yjw9
         g0x7kgnet4E4PE2mpdpPQ0FN7yZ+DtxKYetMEX3JnZATmh1OPc9pD2jU6BdZA6ZBf+x4
         +3g3reE6Tapea+jd9ZQ3IF52VQv2wLVGUYKD1imh5WByRJHyf7qPOJ3/V2hs7TJa6XT6
         mpnQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ByhfbKU5;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ByhfbKU5;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.15.80 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=laDExWE70mxJsyls44zFysjV7HiddKE+KcuFdfQ7Vrc=;
        b=Wgo+Akq2QJPPuRWNYTlFOxVfQXwyCboIcoIUdcktInXB921/yQ9I6IyBBWmz8AdMC+
         3CgmSlc73PJ8SZwsjUqRPtwatJQ0ZXfgMGnd73OPBK98f8/NTgOuZMdMUHbltoDbG+gi
         2rKXL9ZURPqwk1+cCRTSuJI66cOYYLYbUq02DtN7oCQdDFfo9NQeoplL8kH/8MONoHSw
         nNnIjuhy1mGAy6Hpcf9tNCzmWu44i77Y2wdRNbdbpnvvL3l4fXLn9xefyDY7uTLSx+mq
         PBbPogbnu2S77XtBzbaQfeFWmYP+rGdxSsKwxuWNmJyti90asQiZ/me8Mysy2PNSqscc
         AV+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-transfer-encoding
         :mime-version:original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=laDExWE70mxJsyls44zFysjV7HiddKE+KcuFdfQ7Vrc=;
        b=DEYDdJKjGeQjxHUwTDb8f3OqN4mhqQyWamCnOKwHUIkabCsPICE6rzY2OYhXs0d4zb
         GagfU1Roro6WtpQmPsdl+ReJmHRU+hn4O6FNkik+ntogCnIs0dtBNA+9wCPV1rBelmXE
         HwyrxPqss0JNw387gaLjmC6H4H1cPyxauK606tpv5EJKyzcrzI5su8nxlIBLSn8t7tgW
         XMpcuOepQv4OVzLFFHH8VVBwTXriRtZbQc5MD33vpbVt2DggdNXN+CCMSu1IA42c5K2a
         b3sQHevmlRjyqJ3nATiA/p2VNus0xhFfNmaDCFJc5tvb+TxSITQsIEUPPliuRL0dU0cT
         aBdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0cln2TFGJNQqwMGeEURl20jLhjqkrkKUUG9hPeIMDYuiT34cE7
	kZbABsR/oSpuE2nLhBryf7o=
X-Google-Smtp-Source: ADFU+vuJtdNC6uJEhIBEechOxwwShwgcXDXnSY7AjCzPGzj3I9Mac0+xDQX+wIrfsBwz/Zs0YNTauA==
X-Received: by 2002:a92:cc8c:: with SMTP id x12mr13947893ilo.224.1584803150143;
        Sat, 21 Mar 2020 08:05:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:d0e:: with SMTP id g14ls2274323ilj.0.gmail; Sat, 21
 Mar 2020 08:05:49 -0700 (PDT)
X-Received: by 2002:a05:6e02:10d2:: with SMTP id s18mr13786144ilj.141.1584803149762;
        Sat, 21 Mar 2020 08:05:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584803149; cv=pass;
        d=google.com; s=arc-20160816;
        b=a9i+cDTBOfF+SVgzo5RQH67QkiWMQ/jUrW67+04w9CVOqbK1DQTGKdJahy4h1Yy2dd
         CnaMgEjnKuTcaHCYYnyvjhqLS5RohNZjl1mepiYANwtGTr5wcOi9Vz7GLwD+QuRJnGXs
         jtVFv993h+kB67TvUuse3RB5wIUNKEAQvCSc8NlKZOooVPC/czqj6DCNYgjnZ9ouDFx6
         0g7kNeQ3qR3EpnYnAGNs/rIi24PDWh5EHd3XmIZfrIcM7zN1xsyDScNxT94qYredveKi
         ZZEWsWv7TGFk5V02Px5S9Was6hRwCPQDVhcAkYedP4yBBH1QmrN8n0I6QLK2MjWIGZED
         ybqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=dgEKJ/CF58rIGMbcOOGnpIt1Bd4LbXlGSnSd174wTNA=;
        b=qUhz4O1aRtcXnEBZmKAE9fzm1WYaI0MPkkmZwnWhF4wQK+Xq404SjP3UlJHuqQnMQz
         mpuifT4FwLpqcgzOrsW65RMCoJbVjRudTNGCpHvslg3ursi7AMkTx3aulc+RO9chhxfB
         /QvunPmxnW6yqwFcFVBXnN+J8zXqGWEj5bHLmQ/ihX4cL38ABjKznqPA2mF5KnpvLcvQ
         xjC7Ee9RagdJcxF1SahmHlOjBlntpJhdFN56VBcv3+IiOWZPER7dSbvnyQLs2GYiHYOt
         zAH5Wl6e+vsi0r8Zn6CYmHqMlB6kg5ITHNcG6kAop0/Inq89QvQFZaIk7IT/kAmcHjju
         b1vw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ByhfbKU5;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ByhfbKU5;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.15.80 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-eopbgr150080.outbound.protection.outlook.com. [40.107.15.80])
        by gmr-mx.google.com with ESMTPS id k88si602523ilg.1.2020.03.21.08.05.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 08:05:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.smith@arm.com designates 40.107.15.80 as permitted sender) client-ip=40.107.15.80;
Received: from DB6PR0402CA0021.eurprd04.prod.outlook.com (2603:10a6:4:91::31)
 by DB7SPR01MB0020.eurprd08.prod.outlook.com (2603:10a6:10:54::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18; Sat, 21 Mar
 2020 15:05:45 +0000
Received: from DB5EUR03FT030.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:4:91:cafe::9f) by DB6PR0402CA0021.outlook.office365.com
 (2603:10a6:4:91::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.19 via Frontend
 Transport; Sat, 21 Mar 2020 15:05:45 +0000
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT030.mail.protection.outlook.com (10.152.20.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Sat, 21 Mar 2020 15:05:45 +0000
Received: ("Tessian outbound 370656d282d1:v48"); Sat, 21 Mar 2020 15:05:45 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c0d6ab4183cfbb76
X-CR-MTA-TID: 64aa7808
Received: from e4b49be5f414.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 0C7CB58A-3811-4CF9-A27F-B971A4956713.1;
	Sat, 21 Mar 2020 15:05:40 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e4b49be5f414.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Sat, 21 Mar 2020 15:05:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S/XZTr6x/E3rvHRGmOmJ704IQzwpCMBOi1pKW4SNcIaxoliqJT6552o/u9x+Sfjv5HKB0itWJXP7dl5S8z4MR/09kUYkhzZG9z3xSLbWetGF+iK58SXIMFnY/NLS6OOasN/JRLOdVnaBRvO5hhepiWCUOOnsX41hLqpo5rY7Ogq43bCEdRLuRiTbM/t7HgWo4h1aOAA+9SVJrjrFCzBe3Fq3FU4AAagmrdt5CiisoM8eapvcf+vcdYFxYQS3/2YcnL0Ijz6MN5oZXwxj5tMLafUqUhIg/gEWT/HbTMKUHbTSJ4JC4V8mToN2XeS9wb+FVJSIJ/iaNkc5PWiGMWa53g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dgEKJ/CF58rIGMbcOOGnpIt1Bd4LbXlGSnSd174wTNA=;
 b=AJKiTLUt0YEo0E/aGU+YKMJEmGP/YoQ8vm1lK1du+7/4wKpJUI5WFqc+xCscxJsQcQL5R176LLKItcTXQhne1Gpr8GiUXij/LH2bgnkcX2fOxjWgFG0vfZqeNOjyQGvYvPUSEmwQWvjegbY/bfN2RF5RttDAb4hZLEKYPks+3oSnmrcGT1wCQRV0HWmvJd4ri2cedr+4ZSbvPV7dv5g+v36Jd3OUYOHKn4mSNlGUhFbMMCtsB1r2IapaUVA/Az1qahhqwM7+EKP68AP3S2saKABHdjcJcuQ3iYuTwKQfce/Fuso7M/D5C8WiElzZg9pay56iDs+XK52re6/dz9Cvmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com (10.255.78.22) by
 DBBPR08MB4428.eurprd08.prod.outlook.com (20.179.43.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.20; Sat, 21 Mar 2020 15:05:38 +0000
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d]) by DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d%6]) with mapi id 15.20.2835.021; Sat, 21 Mar 2020
 15:05:37 +0000
From: Peter Smith <Peter.Smith@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: Kristof Beyls <Kristof.Beyls@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	"oliver.stannard@linaro.org" <oliver.stannard@linaro.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: Re: help reviewing 32b ARM VFP assembly
Thread-Topic: help reviewing 32b ARM VFP assembly
Thread-Index: AQHV++tRwPgBzetcikKg4cGrjbjPsahNJX2xgAAj9oCAANWV3YAFDR9d
Date: Sat, 21 Mar 2020 15:05:37 +0000
Message-ID: <DBBPR08MB4823590F62BEE5238B04BBFEF8F20@DBBPR08MB4823.eurprd08.prod.outlook.com>
References: <CAKwvOdmYqncnK7SBEi7P0ZSNTMi97XhkiOkqmHoCrWUeG-7GQA@mail.gmail.com>
 <DBBPR08MB4823894C5E0C67C7FF6F6DCDF8F60@DBBPR08MB4823.eurprd08.prod.outlook.com>,<CAKwvOdkR=wphdRX4Y406xcA2UFov57AzEN+XEdo4ifpojPaibQ@mail.gmail.com>,<DBBPR08MB4823214DC0BBA452081864B2F8F70@DBBPR08MB4823.eurprd08.prod.outlook.com>
In-Reply-To: <DBBPR08MB4823214DC0BBA452081864B2F8F70@DBBPR08MB4823.eurprd08.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [82.30.113.194]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 878e245b-c527-48d3-07ef-08d7cda954ee
x-ms-traffictypediagnostic: DBBPR08MB4428:|DBBPR08MB4428:|DB7SPR01MB0020:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB7SPR01MB00207ED2DE123587C4D90C5BF8F20@DB7SPR01MB0020.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:4125;OLM:4125;
x-forefront-prvs: 034902F5BC
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(376002)(136003)(366004)(396003)(346002)(199004)(71200400001)(5660300002)(7696005)(8936002)(316002)(54906003)(26005)(186003)(8676002)(53546011)(81156014)(6506007)(2906002)(55236004)(81166006)(86362001)(52536014)(66556008)(6916009)(64756008)(478600001)(55016002)(9686003)(4326008)(66446008)(33656002)(966005)(66946007)(66476007)(91956017)(76116006);DIR:OUT;SFP:1101;SCL:1;SRVR:DBBPR08MB4428;H:DBBPR08MB4823.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 1G3Abdx1vx/BghXvmkByNDEYNI2Hk82qEKdZjVJXRMGbZkB0hrsZiMYLTXXkFkS8qaN0LupXhZwUsQELG4nW42rcX9/TbKqj8XYimzhHhEIvLTA/JLSKzmMDSbfiREgJDjTfYNTR6nMupmyRExnAkg/qHlivP6GOWuIycDpLRDS0XQt/+h/TkrKdVOjpD9FdPu6swEsFvGReat0F1n6jAzxuP60s22J5KnaPzXzPzpTon7Sfpn2zZICF8ButUJ5h2IGWIWcWrg2MIFASo2tyHA6tT9pxQld4EGtCF49Ch6rJH+2VrjCc9RuT/mB7/NJ6iWswirOBfUqjA7PmZraaUe2XBMcHDBkdb0AMQG7CSws1OrxyIGCx1qSSeGFJHMJjpSfR5jxSOdDEPuJA/zkDFy5GEywaSswb7Mqk0ThvYFnVqa3/FXgBJ7yxsE5+Q4aZf7cz19J8gUZlRUMwQ47eZ3xMl/ZZkq9oDowrfiCjGI8/P32e/Oas6Hwyj+zKIqzOmCJy1fzeDb4sGJBtp/WfWQ==
x-ms-exchange-antispam-messagedata: V3O7nwU0dpb7zRo8zKgztA7hptpSKGBQ/+LMjQYwZ3E3IUFCYBC+hL3AWjt4yiAVip+u8CmwKrmS+Xnx/NzMgkdy2Q+JexAmL+6vRhC7bqgPNL8+wQK6NZN/Qkx3/GzIqSYZhnm/++AFRB8h1GLdAg==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4428
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Smith@arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT030.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;IPV:CAL;SCL:-1;CTRY:IE;EFV:NLI;SFV:NSPM;SFS:(10009020)(4636009)(136003)(396003)(376002)(39860400002)(346002)(199004)(46966005)(54906003)(86362001)(5660300002)(186003)(6506007)(55016002)(52536014)(81166006)(8936002)(26005)(81156014)(7696005)(4326008)(33656002)(53546011)(8676002)(9686003)(316002)(356004)(70586007)(6862004)(47076004)(70206006)(478600001)(966005)(26826003)(336012)(2906002);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7SPR01MB0020;H:64aa7808-outbound-1.mta.getcheckrecipient.com;FPR:;SPF:Pass;LANG:en;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: eed379b3-dfc8-454f-7a1e-08d7cda95080
X-Forefront-PRVS: 034902F5BC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Awq6YmoO1jxnl/CHGQrozlrYKG7wHwdyPObXgxb7KJDaFlTYc+AGHsEr/OYzF8rIIwMUvV8T4yYJEedx2hy+6c59Ud915sv9hVbmd70N+eRb4zY/LReD6XXSzIFAN+CPErki8sSOlg1b6C2if3HLPR2L1C/EIC+gZ6RX9y/HRQTDz8jJHpPfQ+dNe68K4andgEFUacSSxFwXIwXugkJR8lTHvhHZkg0M36LcDW7ZEScUgtUOjLErWBCsKwleHG7x/JxcWicPBCVX+9dEwIKOT+LLI6FD7csQ7V5UJMR6IqDwfAW7MoG8Up9IY34O/l55QI3G3km3DcTB2x4VoOONY4SuoUQALzgHp2eIQ7+v/w1OCp31MYc9ghL6GX711gCcrt1JTXHYePjDdrtAcydvFY3HK0r4Gltbzg97vEO4EXRePl5rES/5AUdokvcvNJGLZUHjwAvYRxdy5HVghCPl29rcwB3IAdyg1ztJZm0+qMGION8BNz/dUVSicFNP1UwQZ0LWMiT4FJAaOkRaL93Ia3QQQ7L4oXGkGyA3ZxKkMPLRJEsSJgPAeE0btryU9Nnxr7pu/7IQ2WsfRZwj71YfHw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2020 15:05:45.4197
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 878e245b-c527-48d3-07ef-08d7cda954ee
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7SPR01MB0020
X-Original-Sender: peter.smith@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=ByhfbKU5;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=ByhfbKU5;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 peter.smith@arm.com designates 40.107.15.80 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
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

Hello Nick,

I've taken a look at the encodings, they all look good to me, and put a few=
 references to where to find the substitutions in the manual. Hope one of t=
he kernel reviewers can take it from there.

Peter

________________________________________
From: Peter Smith <Peter.Smith@arm.com>
Sent: 18 March 2020 10:02
To: Nick Desaulniers
Cc: Kristof Beyls; Arnd Bergmann; oliver.stannard@linaro.org; clang-built-l=
inux
Subject: Re: help reviewing 32b ARM VFP assembly

Hello Nick,

I think my replacement at Linaro TCWG is starting soon, I think next week. =
It will be a good time to approach Maxim to ask if he can help with ClangBu=
iltLinux in general. I'd try that first before Arm, if it doesn't work Kris=
tof or myself can lobby to get this put on the one of the team at Arm's spr=
ints if I can't get to it in a reasonable time frame.

Peter

________________________________________
From: Nick Desaulniers <ndesaulniers@google.com>
Sent: 17 March 2020 21:11
To: Peter Smith
Cc: Kristof Beyls; Arnd Bergmann; oliver.stannard@linaro.org; clang-built-l=
inux
Subject: Re: help reviewing 32b ARM VFP assembly

On Tue, Mar 17, 2020 at 12:11 PM Peter Smith <Peter.Smith@arm.com> wrote:
>
> Hello Nick,
>
> I can check that the VFP opcodes match the coprocessor instructions and t=
he toolchain options, but I'm not sure I can do much from a "Is the right t=
hing for the Kernel perspective".

Perfect; the encodings matching was my primary concernt

> I don't have a lot of spare time at the moment so I'm reluctant to promis=
e anything more than I'll try my best.

Apologies, and I appreciate all the help.  Is there someone else at
ARM that you're thinking of tapping who can be more involved in
ClangBuiltLinux?  You're one hell of a contributor to lose, and the
loss is noticeable.

>
> Peter
>
> ________________________________________
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: 16 March 2020 23:33
> To: Kristof Beyls; Peter Smith; Arnd Bergmann; oliver.stannard@linaro.org
> Cc: clang-built-linux
> Subject: help reviewing 32b ARM VFP assembly
>
> Hello folks,
> Stefan sent 3 patches to support Clang's integrated assembler for VFP
> on 32b ARM.  Would you be able to help review, or help find someone to
> help review these?
>
> https://lore.kernel.org/linux-arm-kernel/cover.1583360296.git.stefan@agne=
r.ch/
> --
> Thanks,
> ~Nick Desaulniers
> IMPORTANT NOTICE: The contents of this email and any attachments are conf=
idential and may also be privileged. If you are not the intended recipient,=
 please notify the sender immediately and do not disclose the contents to a=
ny other person, use it for any purpose, or store or copy the information i=
n any medium. Thank you.



--
Thanks,
~Nick Desaulniers
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
clang-built-linux/DBBPR08MB4823590F62BEE5238B04BBFEF8F20%40DBBPR08MB4823.eu=
rprd08.prod.outlook.com.
