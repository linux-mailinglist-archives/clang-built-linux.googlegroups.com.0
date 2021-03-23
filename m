Return-Path: <clang-built-linux+bncBDU7RC5GTUIRBWGX5CBAMGQEJZUTKUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id C389E3466EE
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 18:56:41 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id o9sf2405587pgm.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 10:56:41 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1616522200; cv=pass;
        d=google.com; s=arc-20160816;
        b=c1qqsvbP7e1vUJvc6mfqzj+1LOE/u+fbBe+9EN6mG46gR3jt1BBifYtyc1n6pcOISm
         zNeGEj7mw/MQqBKh8YcF/XAFWtePmt2VdqpY/61Od0N3UmaDNkMF76Nqz+bVI/59gHJZ
         8iFdP2ghNZqWF/xKVGSvdq1/jNe0AZ2MYOvmUdmQRtE6gaT660z0C6xcAOejMIcKMj20
         V80ndMKeKCNs2e4MCeI+y5I4H/WJEtUpQKnzseMfCDcCGSC8HKqy1V08xSRCny0IpBJE
         IvAPvriTwf63sHT2hq9xg+L9ZpTg23/3qHf3ibBpR0+RxLXCTeKjIbM69S0Tv6aANPDk
         M6pw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=qgO/5YmSdpLln2XTvICaK0nqhJTuKSJdtr7SO0sXI2w=;
        b=WQRilC2roifzLLr+I7AzvaYgmUic1xkkmn70SfLtCo0k97AfF31HCAKQlIaiGIrYJ2
         wccCDqvURys1FZqmUr9sv7ES4F9apLPCzSXZUriN7mmLQFnP8ftwd/Abfb8FXbdLLuBo
         q9PgabeQHCJL2Vewr6jZgqfh9qWsdI8ElNMXghg+luetrmatCajzl3/la2C5zrtQpQQE
         6aOET+PwYVtg7+Z+O3y9+J+72U2hwT7MX4N1ZiJcRIGWlWMIFUDzNhx+kS/ymi6wmHt9
         oam6PU2Z1PHnLl2mWknRiDIcZBnHev7kh44lh+QgJC/uL/kJda3PTQlUSrI56NDKUl29
         2jpw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=iQ0CPZuD;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=rUGdrbkZ;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of santosh.shilimkar@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=santosh.shilimkar@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qgO/5YmSdpLln2XTvICaK0nqhJTuKSJdtr7SO0sXI2w=;
        b=Sbz/ERhoEgG3dT8PxNCzwcL9Q+huj5Iz9jEEJudWoYawZZV2nNsWAykLe9+wJzpMr6
         G46Omz7o88tQjwnZnlTHkAAj9Y9kPCjq6C1JM98clfBJApkrneXO2l7SfXjWv2ONG5Ei
         w7UdUSHBOMzDp/Z1HNBxsWaDlS3OMVYk4dyaLzmpH1cJ8Y6DgJDnkAAgcoDnU1AkO6dm
         957j1lHbCz36ghj5fqMb7j9BRGtk6sMknA0XoAQMSPw1mUnYARyQhyN6mWrjMc5OYfHm
         OyZPbXoQDS+rQ2kVc8qytpen6++wNQJ6zwF8K9CnOpozM657JWwEpFOm95kB7O+pGwpt
         A9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qgO/5YmSdpLln2XTvICaK0nqhJTuKSJdtr7SO0sXI2w=;
        b=Z14pm5YBK1tXWEQwv3zDwbJuSlvtcoxSh7z63UevVPAnKI5K1Kb1vQ/3Qmqh0tm1Bw
         PGcQXf5A0wWA57nXFxvjWv0lK0J1RWxvneBKTtSVK1S1hjnD6mAhw00Az1Ak2NzvBupR
         c4yfGYkxtqksY32ew1S2bGR8/4OTnZiZjvPrqiof5f/iRtM+HGxKRhIj5o7+XTFyCHrW
         +ykccgkUBI1788lU9XE20Xy11UYC4SZAZpYdJ2jcvxP6eKLc8wPMTshxgnp0S4yG3RUC
         dZd2uiG89ggTQo5DZ8ipL/vCeHZzJCa/1fE/4i/qNuifsnhObI/5SDP3vFnyX56qMjGj
         wYOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZXK5z04OE/88F/20MN7e1LHnrUsIKApV43hZhmCrE1Kq4u5fH
	fWte8dUIGWOgrVLus4fEtPc=
X-Google-Smtp-Source: ABdhPJzdh9X7N9mLRXE3Q/i9q8nEGPXSTedEo/A9J5oLGJn81ipldFZDeX3Htzkjit+EUIDMTZi6/w==
X-Received: by 2002:a17:90b:a01:: with SMTP id gg1mr5659956pjb.22.1616522200508;
        Tue, 23 Mar 2021 10:56:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed11:: with SMTP id b17ls9008201pld.10.gmail; Tue,
 23 Mar 2021 10:56:40 -0700 (PDT)
X-Received: by 2002:a17:90b:4aca:: with SMTP id mh10mr5407640pjb.185.1616522199959;
        Tue, 23 Mar 2021 10:56:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616522199; cv=pass;
        d=google.com; s=arc-20160816;
        b=i9tFJxJt8r2NRQg5QP30LF9FVa+sHZKJ74QCGO8XmjirlJ2gb78GwGR4YjNe+cJ6wV
         sqMKpGP6X9uzDwSOmKc9x0PGB1gtzhzhlAHevw0JTdji0OF1Tm2qcH31zoXoViFRCnZN
         A4qbgd+z+AVTVcVLgIXlsvt2oxT6RmkZkam75e3lG8Q14qJDyet2DFx+ocNXVF631Ih6
         nSFOU0vZ1Nf+a+RziErTohttISdQ40tYx1qm2AvMeMsPx+pbT21TxmC8vZtoVvgO987d
         XRdZmjnNvD90uIFOLgG50gpUI20R/umfEQRP40KfX0RhV9XVQ663b7A9rWF2qij5BDxy
         c+/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=CQPQm/c8t+S+bUMtYHAmM4ttsrP0eQikBXYZmjhRVWo=;
        b=hkPWy6q4d8ihUw/uTS3O1jV4kRlnnj6pRTZGbcJ6go4a09whc1RK3U/7swqpb+uxml
         z0M1FxqL8FdkOF6vT1O/XUzRdgpiUaYXguRTOqpEuohZBNXxwg2h/FBAP4hqJPCD1q8F
         XBhOu37XGs6dDQHisnuJ4zVRXmKq4x0udjzISSDgBpVXa+KhqxzvurLAa86aebNIrSSj
         cAJEtgVrzKXA5uLTwMvebZhHQbtWq/6qG+Glfu1/Kph3/ETiLdj1H2fSV+GncVrahetz
         /cyRiQ+y4ofx4bvvqk3qSIb7TdDxO2wHd8+kxreiOR9DVrHZrcRUVb+c9sDQ4MslwJWg
         pgVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=iQ0CPZuD;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com header.b=rUGdrbkZ;
       arc=pass (i=1 spf=pass spfdomain=oracle.com dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of santosh.shilimkar@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=santosh.shilimkar@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id d2si910688pfr.4.2021.03.23.10.56.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 10:56:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of santosh.shilimkar@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12NHsgBw017899;
	Tue, 23 Mar 2021 17:56:16 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2130.oracle.com with ESMTP id 37d8fr8312-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 23 Mar 2021 17:56:16 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12NHoANU099095;
	Tue, 23 Mar 2021 17:56:15 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam07lp2043.outbound.protection.outlook.com [104.47.56.43])
	by userp3020.oracle.com with ESMTP id 37dtts976m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 23 Mar 2021 17:56:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=efNB0SFAktaDb9W1Xy528/upRrQ55dC+q26yvxiHHAyBTOTilvQnJlR6qYLja+FCX4kOrp9gGhqnjgsvKWKVFX8r0zmt4NUlOOKIk6eSlbZQhcoYVWb8cW8Yb1BlPpv4Um4ywqIh8IruW25aWsQ2OCfYRNrZG4NQP/SHLGjFqDGE3VszWsQGIew5HVG3fVtqUlBxRETdm4ntUGaMK4xKxTNqLMfjlSF/LwShXY8gHaVcLLXhnmYmVwcsWNt49AhMxE4jajLLHJDkD46czvdJRQRT5MSDB5MOCS/nkml1gpC8+lD01Ez2sHYYsEf9BeNUpXCC40B+j3SDRcjjgwJdfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CQPQm/c8t+S+bUMtYHAmM4ttsrP0eQikBXYZmjhRVWo=;
 b=FW1DoN4Cg2do/DlIFbrWK8OlI7UkOPG3jSNyOdxOE6WIotg1qT31iN4l7JgkqYhGzHqKqMzOnVdXaAjyxHfLc13Eq7DkIgEaiFNc/k8ueLqu+XFUWK1aFJymv3fndHkNlpXSuOIorTLZGrPviQOJPLXF+mSe81YLihBlSHMhe7k+MvjihORgdYeP0onhgYWub/4oP+l/9kT2SnJVlJJQKOpyYCr5wN6O6ZLHSMvVIaaZZfWyQ19sfOwm6wm6JiQsIfFLIp/W52WQBVlqCEFVYxof4tGj0mw82i2VpGa46cIRjeph/WlnZ7NoNILEZp1f8Gqv06iP3rEJbCj1YRXR+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
Received: from BYAPR10MB3270.namprd10.prod.outlook.com (2603:10b6:a03:159::25)
 by SJ0PR10MB4575.namprd10.prod.outlook.com (2603:10b6:a03:2da::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3955.18; Tue, 23 Mar
 2021 17:56:13 +0000
Received: from BYAPR10MB3270.namprd10.prod.outlook.com
 ([fe80::9ceb:27f9:6598:8782]) by BYAPR10MB3270.namprd10.prod.outlook.com
 ([fe80::9ceb:27f9:6598:8782%5]) with mapi id 15.20.3955.027; Tue, 23 Mar 2021
 17:56:13 +0000
From: Santosh Shilimkar <santosh.shilimkar@oracle.com>
To: Arnd Bergmann <arnd@kernel.org>
CC: Santosh Shilimkar <ssantosh@kernel.org>,
        Nathan Chancellor
	<nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        "soc@kernel.org" <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Russell
 King <linux@armlinux.org.uk>,
        Robin Murphy <robin.murphy@arm.com>,
        Mathieu
 Poirier <mathieu.poirier@linaro.org>,
        Jim Quinlan
	<james.quinlan@broadcom.com>,
        Maxime Ripard <maxime@cerno.tech>,
        "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ARM: keystone: fix integer overflow warning
Thread-Topic: [PATCH] ARM: keystone: fix integer overflow warning
Thread-Index: AQHXIA3QtV60SgMwyESQrTqBJcDToA==
Date: Tue, 23 Mar 2021 17:56:13 +0000
Message-ID: <B995B0A0-165D-47CA-A766-3110D6C0DD60@oracle.com>
References: <20210323131814.2751750-1-arnd@kernel.org>
In-Reply-To: <20210323131814.2751750-1-arnd@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.120.23.2.4)
x-originating-ip: [69.181.241.203]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0f421ad9-bd25-413a-a386-08d8ee24f303
x-ms-traffictypediagnostic: SJ0PR10MB4575:
x-microsoft-antispam-prvs: <SJ0PR10MB45753DB5365FBE15D93ABE7793649@SJ0PR10MB4575.namprd10.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:849;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EVq1bzyqs2kt2H5PCXcLjSPQN3WusuRim2FAdxQiBDvqY2RGkanaL935l2vhO44L1Xa2xUygisj+ttVY0EOnqNKbaiixaS62dlB5S/J4LnMYW/1xfjJw7YuNjvwckWg6bq/+5UgzgAnAYkh9NU6bny8l/pQNEzoLDIiooxLwcsHV6OsX9dDSfqVmDZukrPJ9UUfWjR7eByM84X2YuQCYApWmQu56UiIHDZcxH+7X4k5PQIdaOnug/Qt/MGyNfxw4E9GmjSlb8nFrcTtOFGJBgQI99vy0DJHJG1KqF7CbfUC4Ian8unZe9cql4KRYhF0E3QEGdvToe390TU+O8knF09hohiRs862aydezXmapMHw8vyKjefbKSEbdLzjl/igTy6tLU0XvpEWd+4GmWT10rBbC3ZuE3ZAV8N2TnB67X8nUNa1wvzK1iNvlqkjs0qT11ASkDwsX/dZL/yCmm6hzQASak2dKSv1QnAIuryiEIEf5l4fTJmj2pZsF2kDqq+8WMD58ovsvHO9BfLmNb9tY55SsE0TcYotXcyYztf+PbjpojnNVa8qrNiL0Da7sxR0/dqp1SB18y9DxQdZAq9Nenkmwik0ipbppOzP5fjMHN9qnlI76yQ10z50Dnn/wVbCpIG2ZvnhHZ/cxx5mP/z9Gvy9Fakt1q+zkvmfmHgqsJcc3Wbu4mtw4LFFiaqBj5Vu0
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR10MB3270.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(366004)(376002)(136003)(346002)(39860400002)(2906002)(66476007)(66446008)(53546011)(316002)(5660300002)(76116006)(38100700001)(6486002)(478600001)(66556008)(6512007)(44832011)(64756008)(86362001)(66946007)(4744005)(6506007)(7416002)(54906003)(4326008)(8936002)(186003)(26005)(36756003)(71200400001)(2616005)(33656002)(8676002)(6916009)(83380400001)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?UVBTSnpBVm1QMUVDNktSdnB0RHN2ak1YQkRLTlVFL0ljSUFCQXRPUnRjdG41?=
 =?utf-8?B?V1lEV05ONG12U3JmUU9Ed0FJR0xVWkJzb2tGVTBvSnJTSXRTcGFZZTlGTXFu?=
 =?utf-8?B?a3d2cGlKYW1TeHVuMGdyR29CdVVPRmJBcStIYkI0bkNXL3VkcE1UcG5jRFh6?=
 =?utf-8?B?ZnFmaGduQXJhSDd0KzcwUmlWQkIrQVJsdFhabXFvZ21qeG55L3laWlNIZUV4?=
 =?utf-8?B?S0UyNE9SZHVVaGkzUG8rTzVwcmFib29tbVY4ekpqNktvVTVYUjZERkpLS2Ex?=
 =?utf-8?B?UUttZUM0dWtNeFhWVWh6cmxRSEVqNEY2TnRkdkd3U2duSzltOHFkLzVraGJS?=
 =?utf-8?B?TnJGbER2S1JNL3RsRU1lN1lTOUNjUFJnWmZQbjA2ZWFnSXlDZmNiOVIvN1pJ?=
 =?utf-8?B?UGFmWDNFZFRwWXYySndqdllyS3o5YUJQY2x6VnRoS1J0aXpWWGtsdEt1UFFB?=
 =?utf-8?B?OTFENGVvYlVIdys2cy9ZY1RjVlpINFFyTkJEbGg5ZWExRi8vNmdqQ3VJVmZD?=
 =?utf-8?B?ZnNGMFNpWTNVNE5VUXBDbDR6Y1grZTVLU21jbUxJaW5nTU5FUFdSa3dldERZ?=
 =?utf-8?B?S0NnSkZUOGtSU2JoNjlpbmFKTmVsdUV5Ym83YVNIVmlNRk1hdWoyMWNEQzA2?=
 =?utf-8?B?aGdjVUIrL2JHc1B3MVRISi9yK2RndFUrWkV6SVFrQzdMTW1ZNy9pN1l0UVNP?=
 =?utf-8?B?dW1vRTQrTHkxaWZXRUZ6aEdUc281WDgwWjV5UW05d2ZHS0hUTE95Qmh1WVR3?=
 =?utf-8?B?Z29iTEZYVy9wVTI4WWpjVHV3azF6Y2x1QmM0OC9EN3VoR1JsQk5BMk5mVTRR?=
 =?utf-8?B?VXV4dWsyRFV5VXIwZmVPRmozUG8rMDBIckdYWmNRWGNwRDRFTk1EbEg1TlEv?=
 =?utf-8?B?SUNZSnVwRnV6QnVETDlKQ21mUHJjamtVNHpUWWxpWUluZDI0V09mWVNYcVJU?=
 =?utf-8?B?aWNRM2xpc1pkRCt5dGFGZktHN0wrM1JYeTZZdm5aWEkyUE1Db1BhOUhSZ2N4?=
 =?utf-8?B?bUdOb2dxZGk1b09Rd080WFYzbHlDaHpySCtCZHNkZmFKdE5yOGVBZ0xGcGxY?=
 =?utf-8?B?U1pOU1dML1hZc1JVNG1SSEJOOU8rNTRvR0hHTkFQRjY0LzF3a211TFBWYUgz?=
 =?utf-8?B?NVFtVEl4V1BXLzJ1Ni9nYThucjVlY2ZnTzZySWY3SVZuNE9NMDhWUUtWT2Fs?=
 =?utf-8?B?UkhzK0NuNGk3dW1VbXVxYU9UTytNWGNFMm5OWFZkTTVIY2RjMmhxdGx2Slcx?=
 =?utf-8?B?dXdqNGRNVUw4eUl6SVJaWWJJRis2eGxORWoraUVKREw1a1oyOXd1MlNXdjdY?=
 =?utf-8?B?RHZYejd6d3F3OWhTSHlqWm52R0JzSHNlSE90RTBhOWtPZXg4alEvaVZ1dnpH?=
 =?utf-8?B?NW1oNlhKdFQ5Y1MxTzY5MkI2S0kzV25iczV5SEJieU0xRFl0OXdkV1hXZ0VC?=
 =?utf-8?B?WUovUWxMd21aS2k5WkZ0QnhEcG9DZUxyZkh0d2NSeFpqdmJaTHJqdzJDREVu?=
 =?utf-8?B?alBXSUhackFweDA0SEl0enBDZ1VFY3lVbEZkbHRRaFppMHhVVFVOUEhEWTk4?=
 =?utf-8?B?MC81NFhCeC9VbFJHOUtmb0RmV3dpMXRpd3JESFR2c3J1YThsUHpuQ3NxSjlk?=
 =?utf-8?B?NFRJb2NYSURUV0x0b0lLSno2aXVIb1YyNlNuYUJ2SWFRcjlrZElZODZseFdj?=
 =?utf-8?B?MjhCM3htd0cwYUlWS1hrYTlzRVdqQkFYUlpaTnJ3ckJjcXQzVUhFTlVIQ1JQ?=
 =?utf-8?B?ZDZXbzZFL3krNnlnMmYzd0pENHlCSTNXTnhwMTFYUkFMcDMrNGs2ZllDR0to?=
 =?utf-8?B?YXg0dHpybGhQS3Brd1RPZz09?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <753C3C2D1BDD7A41964E9C80E4FEDEE7@namprd10.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR10MB3270.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f421ad9-bd25-413a-a386-08d8ee24f303
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2021 17:56:13.5251
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0rU0mTgLv6RlXDybtK57wF6n41ajZ707za7oljXkR7lMsjegtdJ/FzYAKP+WJbDnWEjiuo/SH7cOrNxF9XlAJwgck06ZOY7PCMrSEVWZyCA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR10MB4575
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9932 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 malwarescore=0 spamscore=0
 mlxscore=0 phishscore=0 suspectscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103230131
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9932 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 mlxscore=0 suspectscore=0 mlxlogscore=999
 phishscore=0 bulkscore=0 adultscore=0 malwarescore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103230131
X-Original-Sender: santosh.shilimkar@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=iQ0CPZuD;
       dkim=pass header.i=@oracle.onmicrosoft.com header.s=selector2-oracle-onmicrosoft-com
 header.b=rUGdrbkZ;       arc=pass (i=1 spf=pass spfdomain=oracle.com
 dkim=pass dkdomain=oracle.com dmarc=pass fromdomain=oracle.com);
       spf=pass (google.com: domain of santosh.shilimkar@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=santosh.shilimkar@oracle.com;
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



> On Mar 23, 2021, at 6:18 AM, Arnd Bergmann <arnd@kernel.org> wrote:
>=20
> From: Arnd Bergmann <arnd@arndb.de>
>=20
> clang warns about an impossible condition when building with 32-bit
> phys_addr_t:
>=20
> arch/arm/mach-keystone/keystone.c:79:16: error: result of comparison of c=
onstant 51539607551 with expression of type 'phys_addr_t' (aka 'unsigned in=
t') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
>            mem_end   > KEYSTONE_HIGH_PHYS_END) {
>            ~~~~~~~   ^ ~~~~~~~~~~~~~~~~~~~~~~
> arch/arm/mach-keystone/keystone.c:78:16: error: result of comparison of c=
onstant 34359738368 with expression of type 'phys_addr_t' (aka 'unsigned in=
t') is always true [-Werror,-Wtautological-constant-out-of-range-compare]
>        if (mem_start < KEYSTONE_HIGH_PHYS_START ||
>            ~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~
>=20
> Change the temporary variable to a fixed-size u64 to avoid the warning.
>=20
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> =E2=80=94

Looks fine to me.

Acked-by: Santosh Shilimkar <ssantosh@kernel.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/B995B0A0-165D-47CA-A766-3110D6C0DD60%40oracle.com.
