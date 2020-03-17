Return-Path: <clang-built-linux+bncBAABB66BYTZQKGQE76E7X2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C37188DC6
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 20:11:55 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id c6sf11048242wrm.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 12:11:55 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1584472315; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pae1fcXPc+4O6WFImd80H6G2TYoqICESY22rXPFPk99OZCs6WpCaI1/Csy2lhRLBAL
         utFYaxhKa85I46wTa6P782rCcaxdFD7ghxTCKSQqLRmWllhx28seTpcn61Mj7STw0mZ0
         JP/xNxqvEu8ZZvHOVSmZ4+lCknrlqp1hD6f/NG6iZT2NC9ByoXkd2+ZbKHVj7VTa2e4s
         BIgXbGPsF8+UEE7jJSDQuEZ94GffzS/W6b7L0JZqE14pQ5KGEYm4nRRf6BbQHbGhC9cb
         KNuXECIsHI1y1WQqnzZx3TzB0IaRRdqukrxdvw7/qTZR/H/SfZijPJZRTB23OaKYYAoS
         5AsA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-transfer-encoding:nodisclaimer
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=IJx4HTbv7nKPUgDjWFQEzuL4PiTrRa17lWptWZOsRrw=;
        b=B99lfNjPXGdDypttnqI8j2vLbv7feUYXoEZ0E3Qb46sxPVXqn4seHQEcId1xPK1tJv
         LmoaL6BsZHFxT2tDunGJRfwqGZITZkvF+PGm8GjXbB1RH9Dl3eZoONPhsuQFz4P6fkEi
         SKGjEPMQbVAgXh5BxAuzWFi8DuFJf47E2ErZfwHdkl+2PpMjjWGgZHSlmhCuOMYlolDO
         6rY2At5XAMwC7657R+b5wpxL9Zemj2c8Bd9hDDkw0xbz8JBU2OJSmA/ly2k7ZxqFUOVK
         zw0+MM79mgLO3rsc8775qzrCrdv8vmYaoKe/Mk5y1oVFdQmwNUiJ7cjg05A20W04cBtP
         rwtQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="K2k0C/zo";
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="K2k0C/zo";
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.22.85 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IJx4HTbv7nKPUgDjWFQEzuL4PiTrRa17lWptWZOsRrw=;
        b=ebaPM/m/EmYtXe/p7CTQDSi3KaXGg4dh8l0jhuA6YFfPWc9wvhtw8EAWtBC9izETD2
         hbkraaKztJBaGI4xATdve1nK33/MMtKzbu8WxIWKZGP2pCvE2SFFQymZHIAslmnDRlDb
         jPCspXd1PN2Ws//bPisHhsn5lQhC6CUl+YyZhfFw7TemrLDk4XLrHjuNUvnfiISEXPNv
         9EHHC6CZQ+55lvcg7bZDo0bOAlLShar8WBAjPATq7poRWUNSq2kQC4ZI49TDPidKhbuV
         aH7MMfBmjLC5wixf4TOs0iF1dgq30W7/QU8lkbhrYLXg4U/xu1oPlY/IWV24FSwiYm4Q
         +byw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-transfer-encoding
         :mime-version:original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IJx4HTbv7nKPUgDjWFQEzuL4PiTrRa17lWptWZOsRrw=;
        b=hZXO6rUZ3L2JddgOg2xso9FqeLzO/3XHS48i42kRIGGy1jLh5miTMLS4jUml05vpQJ
         C9Q9tgaoMgJbKvL/m8WlwN0JiBw3HM0/tpSAxFzAx402tm5DOLxU0d2zNxmcZ7LgOKg7
         mpzptVx1SdEgsj5Zc3wM4WROJ/8Eag3yQSCELRd7pTVtRbb5L0VoV8VS/x4JKIH1Unir
         vuPa4A9HJAKzck/bUULwRIHNfluwopf4TBwRkbIRkM5BCKTBJDuKn8EIyoCkzRSwXwcD
         ZWifBbAh0bGUGiP4K0TyHnz7mV7f6e6UDQ9bWKl0RyIbHW3z2C41zS2FkIWt2Z6xJUAp
         NGqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ116l7CtRK9FQJ1sFaVB8zL0hsXhMxyL26Awv4kacDvRX+/v9VR
	uK/esq0exVY9Fq2lmDD/H50=
X-Google-Smtp-Source: ADFU+vugja1sBp9Li1+SOsDuA9TN223E1A212MLwoWVplJ83B/V8C2Yp8+11p6LHa1syQ4d3kUAvQw==
X-Received: by 2002:a5d:4111:: with SMTP id l17mr523746wrp.271.1584472315266;
        Tue, 17 Mar 2020 12:11:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls255382wmc.0.gmail; Tue, 17 Mar
 2020 12:11:52 -0700 (PDT)
X-Received: by 2002:a7b:cb17:: with SMTP id u23mr574604wmj.12.1584472312781;
        Tue, 17 Mar 2020 12:11:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584472312; cv=pass;
        d=google.com; s=arc-20160816;
        b=p5K+xbMOQoKpMwf56tFz1yKuDph/e4Ept4HagKeElRIP6pP5h51gB13J23nKHF6Zmz
         VMfuyLS7QnCayXTID0OWmoc1106ubcx3Pbf90bPvKxn3B9rDmkjlLv7iUGs5WQC2PpsX
         rXVeF6zrBrOy2kW3E+79x8XsAhmG1UbLvvmto5bIKqvL/R9yfdDwgeTXx2IYEuVrE60m
         HDFNTlDyxa6oe5nuMUaaAEo76Bmu+b1jkAa8L4X/HXK0FnYDvj9ByhliWZP4bYPOyh/t
         isYjYARZ7GZmvR8W2XeuFMO/N1SU3mGSRsaIIH8rp5Grsj5qNzNbBrSQwMlM/lhnPrpX
         E/Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=eoCxRlqpggnm+uDPOPi+20lmAPFoZVVUWPQGZzb9SWw=;
        b=czscHBOYTMa2zUJenmmAYjdyelxlyBoQ06SSO8QXu9rLEglXlbKp9VoBYWXGWgOKKP
         RxOLPTqWrN5JvS10/S41bZx0QpMaLnmdFEutinBYA9QS72jzNBVbNF2kUAa0+L0EQZRE
         MlIxDPaIcDEm7EhwPEBe2/bVCYe7kFtQraloyHSFvCU7ZH60zKdd7rYjX02xIfIcu2wg
         ge2MIVTcjL5ekzB/tzAxMPJpPWGdIYU2hoIQTd8dzGGEqTd6oR0nJf3OKWStTgPsbZYF
         w/gnya88/3/XmeOo8FQNB+Y/9JDCUDdt1vnQEpMaz9wLyib57iIlO5yHbZ9zVKy/ZoBR
         KNjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="K2k0C/zo";
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="K2k0C/zo";
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 40.107.22.85 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2085.outbound.protection.outlook.com. [40.107.22.85])
        by gmr-mx.google.com with ESMTPS id w17si178061wrn.3.2020.03.17.12.11.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 12:11:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.smith@arm.com designates 40.107.22.85 as permitted sender) client-ip=40.107.22.85;
Received: from AM6P192CA0002.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:83::15)
 by DB7PR08MB3209.eurprd08.prod.outlook.com (2603:10a6:5:1e::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18; Tue, 17 Mar
 2020 19:11:51 +0000
Received: from AM5EUR03FT026.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:83:cafe::3b) by AM6P192CA0002.outlook.office365.com
 (2603:10a6:209:83::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.19 via Frontend
 Transport; Tue, 17 Mar 2020 19:11:51 +0000
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT026.mail.protection.outlook.com (10.152.16.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13 via Frontend Transport; Tue, 17 Mar 2020 19:11:50 +0000
Received: ("Tessian outbound 62d9cfe08e54:v42"); Tue, 17 Mar 2020 19:11:50 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 9ef8a836f160318e
X-CR-MTA-TID: 64aa7808
Received: from a2d4d3f311c0.2
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 7ACAEB8F-593B-4AFA-A820-CF6C54884C74.1;
	Tue, 17 Mar 2020 19:11:45 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a2d4d3f311c0.2
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 17 Mar 2020 19:11:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WMQNE++xM3JW7zHkd/BKAWjpQJbILMMYQax2VHc/UxbYnRCC35xDvhOvNmaeh3xMB4pnbYUaEG2xTpEmuDD4UmXyIixXWh3CpuCOkgOhVedRXMtlnewOyZgPs63qQ8qKq5048hOgyPfEnAYnuyg9JN3M/jpvxZb6371DxuYj6/C7G4mp/xNEAU0nIuEitoMDfMqUVQxOXyzNUYMunxuYvfgm7c29KqHQ9qQo2hzNT0aRDnK8+au19sLkL9fq5d70BWJZZblYPJKMOIPD/9bcCu6X7xBAAlqq32GP1iG0dviV1x7HgN8hQ3iHrG8Vq/LAxZe5h0KETNmByHBU+mEDEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eoCxRlqpggnm+uDPOPi+20lmAPFoZVVUWPQGZzb9SWw=;
 b=Y+mCEBca3h4k+RbxZql4Xh9jOjaTkteuFKlCoJxcLhX7ZaqQG+3mDsPxrX+HRvXSrTNNdutLV7EOxoO7pWRMoKFrUayalqtPl4zaGtTGrBVbUdDXtkANK5OTLdO29y4GJowtkPozdzpJgDzb9PfrkhQuOuFAQ/XUeF4IMlatB5VgCpLluJWhTtBQ+5dVEwxVVymUAVxHD+GSFwhCxa7x5UaMlo+Av5Hc/hRaHipXvh6OQZvRJXA6X0Ujop6k+oCo4a8s/nyxtAF+2PZkI6q2ew+4r7S78KOZzwjW1TBy98GtBjNMK+EfhdxbQvFAi0cVuoRR3C3ze5TFNm9bmc2TTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com (10.255.78.22) by
 DBBPR08MB4757.eurprd08.prod.outlook.com (10.255.78.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.21; Tue, 17 Mar 2020 19:11:43 +0000
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d]) by DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d%6]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 19:11:43 +0000
From: Peter Smith <Peter.Smith@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Kristof Beyls
	<Kristof.Beyls@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	"oliver.stannard@linaro.org" <oliver.stannard@linaro.org>
CC: clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: help reviewing 32b ARM VFP assembly
Thread-Topic: help reviewing 32b ARM VFP assembly
Thread-Index: AQHV++tRwPgBzetcikKg4cGrjbjPsahNJX2x
Date: Tue, 17 Mar 2020 19:11:43 +0000
Message-ID: <DBBPR08MB4823894C5E0C67C7FF6F6DCDF8F60@DBBPR08MB4823.eurprd08.prod.outlook.com>
References: <CAKwvOdmYqncnK7SBEi7P0ZSNTMi97XhkiOkqmHoCrWUeG-7GQA@mail.gmail.com>
In-Reply-To: <CAKwvOdmYqncnK7SBEi7P0ZSNTMi97XhkiOkqmHoCrWUeG-7GQA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.52]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 23da048f-95cf-47de-c429-08d7caa70c3b
x-ms-traffictypediagnostic: DBBPR08MB4757:|DBBPR08MB4757:|DB7PR08MB3209:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB32094C377839587FAE5C6716F8F60@DB7PR08MB3209.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:10000;
x-forefront-prvs: 0345CFD558
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;SFS:(10009020)(4636009)(366004)(376002)(346002)(136003)(396003)(39860400002)(199004)(66446008)(76116006)(52536014)(6506007)(53546011)(66946007)(7696005)(64756008)(66556008)(66476007)(9686003)(316002)(86362001)(33656002)(5660300002)(110136005)(26005)(186003)(4326008)(8936002)(8676002)(81166006)(478600001)(81156014)(71200400001)(966005)(2906002)(55016002);DIR:OUT;SFP:1101;SCL:1;SRVR:DBBPR08MB4757;H:DBBPR08MB4823.eurprd08.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: dC1cbCvCzNKMh0z7I7PivfGfQAKF6Xpio3u54AqFWAJDgqiv1pdPnekdocNbRBrzcY/N28b3nk02VHAuhv+mvTcTR/CzdGym2IRby317BNhDb1+0vL7xBitIKyJ0Zwu5k9NORB0IS6wXcBUG8ORCmydbCSzakgKlC10+TC0ZgFiw6qolJYRcfXc4FGK/wlUbzNpSMbiyxK8cOc0U+rv4KLcwaGDqgaTaOMCAlxJVV0DCSpZRCluyhJZaDN0wgVAxZLIjRlC0W/rXCXsUT6lrgdspMrwdLMMiVrfXNW1GpnhfYFCZWXvqyexuOGovS9tEAXYXNeDsWnVYIn+AEyCKeu01m2M5Rifgo852M1qZi+asN8C9zB7dEpXg2X6RoaTzma0hnJ+TGdvB8k8QwK6mIoX5DKjYRtOoJtci+aMrnPn41raYA7pn9yMzqo0oF0iOTs8Z2XdsmtKlJT2MeIW0iLeygIwFWHVgog6cg9AAq/k8ClDCZ8hX3gYkFt7BLNrMVM7t+QaC/OVq8xej682aQQ==
x-ms-exchange-antispam-messagedata: W+eywAEKFwLbbSdrJjpW94RW7DLU3ledptau+gV63OSwkWqOHFEVfFii424o27Iplo2P4/5mcc+zCSeIN/DWljRPebXy+dK3RKoc6rfTpimI0UCCREnDk9HIV9HWg9I4myEW1U6HN4YLQbjcP7lGTw==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4757
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Smith@arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT026.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;IPV:CAL;SCL:-1;CTRY:IE;EFV:NLI;SFV:NSPM;SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(199004)(46966005)(6506007)(53546011)(4326008)(7696005)(55016002)(9686003)(70206006)(356004)(70586007)(47076004)(81166006)(26826003)(33656002)(478600001)(110136005)(86362001)(2906002)(966005)(36906005)(336012)(81156014)(186003)(8936002)(52536014)(26005)(5660300002)(8676002)(316002);DIR:OUT;SFP:1101;SCL:1;SRVR:DB7PR08MB3209;H:64aa7808-outbound-1.mta.getcheckrecipient.com;FPR:;SPF:Pass;LANG:en;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 0187609e-1dc9-4f82-ae10-08d7caa707b2
X-Forefront-PRVS: 0345CFD558
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xT17L9IdDbQhpOYh+ZP3gBAOTfzazWK2P4QmePGUDvWtf317Px3rsw4wXGXqaO0ZN1UOQpz8p8fJ4OeAnI9F03QrhOVVDREgBJ9MiXlwA0dDfP89kdHLVjJlAERxUsyKeydTHLmT1vOc0zMDrOaILtwNWJKg1fOBAPI3c1he/7DJ2P6aYx6H6831vq1+/NB66iJKdU682xIXUHZKYvqOZzK8CsxDOnpMrGnmc6gciCI7+UU3NvkViCrJzYvHCnRQ60l5usx4hxIe6cCAH4nrNzTeHAjN97mG+J267+FdLsB5ReUmS8sPlwiH8vpZQj+jYV09HUkKnO/3KUZB+VhlYh63veJCu9UyCncV80ryHESukYn/NIIbS8so0DrcOomN6hWlL57BYLyjMyoGYSfS4jGCo3KmjTdcHR/EHxLD9GRg5EA3+mggQeBul9+pmysC6tZkwivvsoUr+Fk+es2brZ99NXv/aaoi00o1ecBYS0jaE2mxfLgfFWWlkA3IoCotLbv7jv8USz2iro0Qoeip5AUL3bFg7cR1IAJDqMrKCR3nDIdvF26uw2IHq7cPphptbW2CtKknl8oABH6bWmwLLw==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 19:11:50.9016
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 23da048f-95cf-47de-c429-08d7caa70c3b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3209
X-Original-Sender: peter.smith@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b="K2k0C/zo";       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b="K2k0C/zo";       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 peter.smith@arm.com designates 40.107.22.85 as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
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

I can check that the VFP opcodes match the coprocessor instructions and the=
 toolchain options, but I'm not sure I can do much from a "Is the right thi=
ng for the Kernel perspective". I don't have a lot of spare time at the mom=
ent so I'm reluctant to promise anything more than I'll try my best.

Peter

________________________________________
From: Nick Desaulniers <ndesaulniers@google.com>
Sent: 16 March 2020 23:33
To: Kristof Beyls; Peter Smith; Arnd Bergmann; oliver.stannard@linaro.org
Cc: clang-built-linux
Subject: help reviewing 32b ARM VFP assembly

Hello folks,
Stefan sent 3 patches to support Clang's integrated assembler for VFP
on 32b ARM.  Would you be able to help review, or help find someone to
help review these?

https://lore.kernel.org/linux-arm-kernel/cover.1583360296.git.stefan@agner.=
ch/
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
clang-built-linux/DBBPR08MB4823894C5E0C67C7FF6F6DCDF8F60%40DBBPR08MB4823.eu=
rprd08.prod.outlook.com.
