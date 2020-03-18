Return-Path: <clang-built-linux+bncBAABBUPDY7ZQKGQEOB7H4LI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 099C81898CD
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 11:02:58 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id f185sf782086wmf.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 03:02:58 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1584525777; cv=pass;
        d=google.com; s=arc-20160816;
        b=B+9HvpUrhdjywUQnWi1UIvdTy4NhPs6HrORbE704IzR0gxwSeSC8Owk+4wJSEFdI7M
         A+rey+jvW8rPt/im4ylhYtjRZsTKFOIYhqfutlprYKDiyvXQYw/DwghXUO4Hb2Tc5VD2
         7Fl5CMQ+pIeGlYLN57bA4lPlQQQjobgQhfMwst4vIkXQjVkJEbvJl6b1skX1ac708MEr
         oUI9eurjS9+GlS7ZvBKm1w4QGyAu+kiTOnNID3fOvDlOe9EaG4R9UVFBi4BaT/xbiJRi
         5XDAyrKsTUNquXytO06R/r7KrLsexwqfzYP9QG7O/pV7kywMggIvusNQzdUyqL9bvhGw
         rCeg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-transfer-encoding:nodisclaimer
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=a+lneBSSiLKIIGY3C8/ONC3LC/q7Nz03VNxssccCrgo=;
        b=j1GlbdXLGy1dmYlGSgOgCs99iaBzco5a0RrA1kX7KHwTsskNquqEDuCPNvstE8a1q2
         94E3EBLURyYwoNckc8wV5dUbjDm8qEtAXAs1WkwFAJ0W0qW0Ls1DLa8OwIBwuaOOYwSR
         cAyj8Rz9uDkb9U3OcJPCAE7dlxGG4niZUDRDRvMWIl9ldahKMUDgXrN6L5ufxyJrna5v
         d/Z72riktSNjZMywptKQC+6BxtEnwjG18SRFZ+xbuTj5qf+kS2iO45w4T9I5HPmhHZDh
         Dj/RUA6K65BcwgbvSwDq7gve6ObdS5UPdein2baicYwe3MTAhIHFe+p33pA5THB6Wx3C
         xS6g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=5G7HMnUS;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=5G7HMnUS;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.7.83 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a+lneBSSiLKIIGY3C8/ONC3LC/q7Nz03VNxssccCrgo=;
        b=ZvJtYyucwF1fVjcWNIf16LAlriyjoeMSkjFEq3MAnQZPk2DF3LGhoUOcpiMApZZNfD
         4j5zrv7QlDqwJINaYsQpJvT8Rx3ztCx5qxCAz7xYFqjbcVq7uDiCW0EL01CjM6h+e5xa
         ZL83yCA1yOiGv8mtM1wUMtWdJZhzfl9Kh0WaazSqt/l8ffuREvIHSKOzIFo3bsJbLiJg
         IIrVc7j+rs3HREQv35Eujvtytzzflh7QlO5fjiWwFQRtA3EwbsOVztOF/H299FOAf8pl
         IEscmAC/8JhiFrEgtoR5agDhE/r2RfiV81TJaK71ndx+8CEJfKtvQzRtASpCdZnp+dK4
         5zXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-transfer-encoding
         :mime-version:original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a+lneBSSiLKIIGY3C8/ONC3LC/q7Nz03VNxssccCrgo=;
        b=Cl3BogoYo9NeDuoddWxshclj4z+3FJ9qrRAmi+11WN5hnQjYD2C1G35t3N0sWUH/Wv
         GXbme+GyoRuIE1hmMtA9zs94VeL3bN2fPlrAiCJBzHiUqZI/uD+QpFMHQrkE9Hc9n/tK
         uHMsrMDaqKlbGTQO35+4U11Ai6o+sPmqOtRXm/DG73UYf9ZgeSGLx8AJxiVJZjv72OrA
         WvX0N+CtfLyn7sTaMK07JZeMdZlzeRJnw8jUU62wfDdEblJhpKgFeLDlpHKfPchotSBY
         aHKK3bqoOsVL4CwdNlkFaqfZQN/A4waSAHH6P4Ah2BvHJ4wEFLbj6X6Zz+rqaP+a5qog
         +wGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0wHolTE6Mwyl0Ep5dJrzNNcIpDq0AisQaN0ZoTPvUYVRfpbAFq
	OsBPAHm3svN/7Y5BLZGDyFk=
X-Google-Smtp-Source: ADFU+vu+p3bWqU/sWp6g0l/+gqoYjl7kX5Aj2hN5TZQluY1jE8SrE+pJSwqtERnte0uMvNFccl6NNw==
X-Received: by 2002:a1c:c257:: with SMTP id s84mr4583375wmf.9.1584525777710;
        Wed, 18 Mar 2020 03:02:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f8d1:: with SMTP id f17ls12479416wrq.3.gmail; Wed, 18
 Mar 2020 03:02:57 -0700 (PDT)
X-Received: by 2002:adf:aa9e:: with SMTP id h30mr4856211wrc.288.1584525777360;
        Wed, 18 Mar 2020 03:02:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584525777; cv=pass;
        d=google.com; s=arc-20160816;
        b=t89j3QHodEgg0KGl9lpimXSRbuz5iZO5K8DfePiq2VaoalGUBI1s+XjZtNnsnkY/EC
         OSoXyVcI7KwQtFwTsGIMow5r+oestKn4ghQiOGflGpTlAEzcAhubVk/uu6KR4oCMmpK+
         A6I2PzeFK7BITX6tFRrwfJ8N0aGYLxCCEnibok8aqNED1V+C/27VjQMkqtHwHsGqlJFt
         uFh/XwtTF6tnS+uFXD/ytW9wU5uSWHvO0w+enhF9EgE4cD3e9FvTehK18bxo8JhzFyf/
         q2HzMXy3fm7XHh8ah1wlrB0B+l4L85tr6cSwhRiXAqZv84Rh4mdLOCGtgTg7wsMlxyZk
         sz0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=1ET8e60/jR4jImL9NtBBraGdOhtknnkqvO2I6FRwSFY=;
        b=LkuKqZUUpQxZ64HN8AKEXxmnJ/+HjGsPaRvKP4/QJ+Tnbv59RdHiGa3OpdGAnZNX0f
         +7lnyAmErKkEcWZbSYeJlLiEx4QTPZuGPgp1Fea03fTlSD279ilmmcIJcpvp1EoP7dXZ
         hpy3kE3PzbPN5j+0GDa+ZTW7RZLwbA4DMUXxgMpoJpytlUfX5SadqDmPQj+yeyKJyoiG
         fntuNseNbNc3yXAzqT23JyQwyCuz50eeo/ab4xa0xd131cHw3k+q1eMYoVFZdoKQBK/d
         /W4H/MptkzsN035NTV8fSQByrRfWU73W6oDti3YNprKEgjwqoyA5mWW3IZjt/CuLyfJa
         yyJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=5G7HMnUS;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=5G7HMnUS;
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.7.83 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70083.outbound.protection.outlook.com. [40.107.7.83])
        by gmr-mx.google.com with ESMTPS id y201si121454wmc.0.2020.03.18.03.02.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 03:02:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.smith@arm.com designates 40.107.7.83 as permitted sender) client-ip=40.107.7.83;
Received: from AM0PR02CA0039.eurprd02.prod.outlook.com (2603:10a6:208:d2::16)
 by AM6PR08MB5111.eurprd08.prod.outlook.com (2603:10a6:20b:e9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21; Wed, 18 Mar
 2020 10:02:56 +0000
Received: from VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:208:d2:cafe::a0) by AM0PR02CA0039.outlook.office365.com
 (2603:10a6:208:d2::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18 via Frontend
 Transport; Wed, 18 Mar 2020 10:02:56 +0000
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT006.mail.protection.outlook.com (10.152.18.116) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Wed, 18 Mar 2020 10:02:54 +0000
Received: ("Tessian outbound efdea641ed36:v42"); Wed, 18 Mar 2020 10:02:53 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 561e4ac09d671635
X-CR-MTA-TID: 64aa7808
Received: from 95cee19e0d8f.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F1656AEB-8C0D-4363-A660-88B31440B1AA.1;
	Wed, 18 Mar 2020 10:02:48 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 95cee19e0d8f.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 18 Mar 2020 10:02:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eovV1fM0qYP64tWGBzIYhGGn4Y+iMfP7r9SHK/lgq+1DbdBUwh2WMGxCv+MaVPjH1shmPVygltUguiIofL6SXXYE9COVBaHwhEops/xlLM4KSSX4aRt5Bp0kIsDP9PpGg0FijmoCVHYAGa28daYotwr5F1RNpYC4/tXEoblOiz1hRGlJpYEjq61Cw+j7i3CPbo4WFzdDkd+Q9baeOd51wHmFLrWseE3hLw52o3xP9LCJDFgC4lH32l/62Te+cYxW647G5BLHQyixkAF3lyfn/xzTtnUFLJ5jWAy/XAj/6mDrZypD/FXxNKNaqrwHymkavKFPErj+6b2FbOMN80PljQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1ET8e60/jR4jImL9NtBBraGdOhtknnkqvO2I6FRwSFY=;
 b=SoLe35A0kcL7EmKOFGf6djbomVOE756pPNKG3ur9NBsx/qrXZpEHtcTm9KOD2RTzmwGnAHHCl1stHRYIMckQbPY9o9ChQH5tlo//Z8qn/p1Q5bDPvntirtx+qiP1dVEKMe0BOaRUqtjYRXT0Bl1h49H/C3R3wKa7a7JyWIrLDkPeumYDcqOvti+QD6Bh83jHFrPaxgqAw2a4m0dDaPjRklXg+Qb1nOIl6UO/fxsDWbL4diHX/Gs+o/HbOLH3fCwfbgqAnVliXUG90dekrSVtiJsrcuE3gNMxv2ZwXU6I01D6/aXZD2J316bvBmNtHqVAX1AfXzBIi8vU9UDamGdz2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com (10.255.78.22) by
 DBBPR08MB4759.eurprd08.prod.outlook.com (10.255.79.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Wed, 18 Mar 2020 10:02:46 +0000
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d]) by DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d%6]) with mapi id 15.20.2835.017; Wed, 18 Mar 2020
 10:02:46 +0000
From: Peter Smith <Peter.Smith@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: Kristof Beyls <Kristof.Beyls@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	"oliver.stannard@linaro.org" <oliver.stannard@linaro.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: Re: help reviewing 32b ARM VFP assembly
Thread-Topic: help reviewing 32b ARM VFP assembly
Thread-Index: AQHV++tRwPgBzetcikKg4cGrjbjPsahNJX2xgAAj9oCAANWV3Q==
Date: Wed, 18 Mar 2020 10:02:46 +0000
Message-ID: <DBBPR08MB4823214DC0BBA452081864B2F8F70@DBBPR08MB4823.eurprd08.prod.outlook.com>
References: <CAKwvOdmYqncnK7SBEi7P0ZSNTMi97XhkiOkqmHoCrWUeG-7GQA@mail.gmail.com>
 <DBBPR08MB4823894C5E0C67C7FF6F6DCDF8F60@DBBPR08MB4823.eurprd08.prod.outlook.com>,<CAKwvOdkR=wphdRX4Y406xcA2UFov57AzEN+XEdo4ifpojPaibQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkR=wphdRX4Y406xcA2UFov57AzEN+XEdo4ifpojPaibQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [82.30.113.194]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 14824d72-b0a1-4705-e1a9-08d7cb2387a5
x-ms-traffictypediagnostic: DBBPR08MB4759:|DBBPR08MB4759:|AM6PR08MB5111:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB5111D92CE254F0F40F5C2D33F8F70@AM6PR08MB5111.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:4125;OLM:4125;
x-forefront-prvs: 03468CBA43
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(376002)(366004)(396003)(346002)(136003)(199004)(71200400001)(9686003)(52536014)(86362001)(2906002)(66556008)(5660300002)(66446008)(91956017)(76116006)(66946007)(33656002)(966005)(66476007)(64756008)(6916009)(53546011)(7696005)(6506007)(55236004)(478600001)(54906003)(316002)(55016002)(8676002)(8936002)(4326008)(26005)(186003)(81156014)(81166006);DIR:OUT;SFP:1101;SCL:1;SRVR:DBBPR08MB4759;H:DBBPR08MB4823.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: Bo8mAo0p2SfiQKk7ohctRrRYU76OW0YoxSqUMwSeHa4fT6ni7s87T7LEUAhczuHANLhCrpppKgdn+vZQoZY67MCkGhpjJmwuvpMQFs4K02V+pWFkuYbQgGEgQ8CEBlOWPm7OOC3s9CAIZUdRx5LspgKf4eO3RQzMLhwKmIxbu+nFm1fBC8oMPRu+WaG40JdJB5O6NTlf3YB+rDTe56sgTtH1EgXCZ0Z+ASYF36yGt6/vI0zvp7fBLz5iLNvbk0Hyj8090oPpRopWDDyo2uyNkuGtby5GM4NIKS/3xaqxSMBO4JN/kunFHi8KtBdpMRE4gUo4NL7of0lPepNByAJg9vXPtwyVY0uFnogKc5A/aiUy4L/u9nD8IZh8xdB1rOcQ7S1Qg+ged8zbuNUedetg/T7+/8dllGgHdHdCAfVX+AP6GxTiBbx5zt6l1MAJWHrT2kUJ4gjz6/MulPc6Ub+Cwi+w8RFYud/ixdLqNT71pMzkHayswrMJPpYNXWAgW9SJchnMv+9AZ1CpwGjR3C2KKA==
x-ms-exchange-antispam-messagedata: UjsGXhi20qPX8JGCj/nL3eynX7cKEJHinjpj+RnNvVoIMf2OK/v58jAEOtIsmqlH9uosFaeOVmTV0hTbGrL5Gn16PIoSzlAd9exiiIg1dZ06bQcGkr81bWj7Q8tzwkBb+X2GLvevUgu+9OjdPbwGWA==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4759
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Smith@arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;IPV:CAL;SCL:-1;CTRY:IE;EFV:NLI;SFV:NSPM;SFS:(10009020)(4636009)(136003)(346002)(39860400002)(396003)(376002)(199004)(46966005)(356004)(316002)(33656002)(186003)(8676002)(81156014)(86362001)(81166006)(53546011)(47076004)(6506007)(478600001)(966005)(26826003)(7696005)(6862004)(8936002)(5660300002)(52536014)(26005)(55016002)(54906003)(70206006)(2906002)(9686003)(4326008)(70586007)(336012);DIR:OUT;SFP:1101;SCL:1;SRVR:AM6PR08MB5111;H:64aa7808-outbound-1.mta.getcheckrecipient.com;FPR:;SPF:Pass;LANG:en;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: d2ca977e-0f91-4145-be87-08d7cb238228
X-Forefront-PRVS: 03468CBA43
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nyBDCvz0XUdolguB6FJFTA42RMtUts8XN+8LB6LAN6t5iP3gDFJ9q0ph8nY7bJ3paF/H9CiEipaqwEyDatGzeIyrmZcSc0OKgWtACn6I2i6DPJfVyLWFwJQQ5ekSQWokI9wkezbe+ILV7TsqXV7CiOPp0Qu7GjpJkjFVJlCkp71WXkIPFYcD4uRAaZpU6pWuZPXDK+GtwkfFv5iNaoYr5wBkVGDtKi1OrvrM59FinsRBduCCfl+C2/UzReoR5VAX1G7364wctc1p/mfiw+3QOjsCcezw0GO9eKrzm+rZv1bFPyLsYuCDBFhRP6jNKptASTrcioW5j/VyUdJbvpq4h6Q4jNlyPRhD4AvPaF7FDDlPPy6g5BuxTvrrHCA3C2T5ZIsPY5wSzmb7dG/uRCCbP84kRsX7Qt2Z8/rFTtTVKyN4Dud3V84ZpeUu5xukW7oER7t1s1sgaqskUKsc4T1Lz6UQh5yYY6as9uxUeKomimTD54Z+t8Frg20bEI8J+qdSJ0FmCb/OC9Avr1FEu7BrBXZmZX4ta/Ii/ech/Sl6c1BmBKgJqmol/PJ9cYkpXY1y9Qgeq8itw8AY/o6n1ZqfPA==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2020 10:02:54.1121
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 14824d72-b0a1-4705-e1a9-08d7cb2387a5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB5111
X-Original-Sender: peter.smith@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b=5G7HMnUS;       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=5G7HMnUS;       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 peter.smith@arm.com designates 40.107.7.83 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
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
clang-built-linux/DBBPR08MB4823214DC0BBA452081864B2F8F70%40DBBPR08MB4823.eu=
rprd08.prod.outlook.com.
