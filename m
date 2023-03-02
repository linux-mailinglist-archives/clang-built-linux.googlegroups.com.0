Return-Path: <clang-built-linux+bncBAABB4XMQSQAMGQE6FI566Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id D12666A8D54
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Mar 2023 00:51:15 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id az12-20020a05600c600c00b003e8910ec2fdsf346527wmb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Mar 2023 15:51:15 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1677801075; cv=pass;
        d=google.com; s=arc-20160816;
        b=gySgz13KuVQXwCvEfVxbOokJUldpRlSbqOsjuTrqOCmSOH8bUv6TwGMTkchcwyO/st
         DPLFLkciyRDb8G2Gni4lKDsFXtMJ0WRWRuLHqZb0xcM+vCeHUOwpAZb9JhSQVrCypSz0
         GtBOFRv7qqZjlBXBUVSnIpGXQJGP6yb6YX2U6/aeRHvS0DeNTCdrxQIzv2tGLaVmDnLL
         ACNvuukyfynhhvi0mQYnyc6m3pr4MWQplX9G2tQJ/EU9UHKwUzQ6fzOnLfQIsVZpqCyD
         sP3hFqIWrL4WW/G4Buc0IHcIYbDXeBh9RDBuRhfUwcWVpTCNBK9ukKnz0R5P7lwZcaCu
         onmQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:sender:dkim-signature;
        bh=76Cl8+K8rdRZ45hNbL+/IBNyqi8GR0IFkWSL95u53ZA=;
        b=ZHpO6pDu7e8MbY/ht9djN857l0TA5/GZ5t1AFS+Sy1sblGYYNqJY84DPOwO2UkiExp
         Co4DXhXWLIE7ASzsza6PnRhL2mpe/5QlEBSdfozYFM3DlkoIL7tsIMlkYSDDg4xnPW4N
         UptqupMACGCryt2u8y0RU/QKgBxXO2fdG2I2PwZJP72YKFCDLmYR0xyKIt5HxuTIGEyo
         4M53CzCSoMOAlA7ONg2sAeNoGZ+s/IbVMluDHGhZifHQ6sm+ojADyJGrRo7JUykEucHh
         A6hdxJsR1oRbQPOPTZD2sRbVxGNKtK1rXtx56MIMwvuIxzCAI9j/zRja3SJl902lFFxi
         qm0g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b="jNPmnq/m";
       arc=pass (i=1);
       spf=pass (google.com: domain of edgarvc846q4@outlook.com designates 2a01:111:f400:fe16::803 as permitted sender) smtp.mailfrom=edgarvc846q4@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-language:accept-language
         :message-id:date:thread-index:thread-topic:subject:to:from:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=76Cl8+K8rdRZ45hNbL+/IBNyqi8GR0IFkWSL95u53ZA=;
        b=V1CiDinh0ZvY8rP7bGhGlBHjY1sQQhD4TSWQTgWHdiIRjV+va4Gwhom6dvPa+asNYD
         iLM7uqm6mVfwtCdXy3jrPQowjwiYQ6O1nKTqkYj2QFsIMkWgygdd1HyMOOLz3whqbzNW
         e2iS8373r7n3AkhIXOmqJRz1AZhBPRtGJKas3hC09Os7/n3cEbzsa8s1kQAkTs8UrgKo
         AYtdW1EHiDU0BDZQHmgn53QPi2Dob8rSOWlSnn1ERBge4SEDANG7r57swsaSVYVE4uvp
         wWM7/cVlJEUYa76r23LY7izuYzLBpKoP4UY8wzYqiverwN4OVhKzzZK13RZ7XZNyLVHj
         V2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:to:from:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=76Cl8+K8rdRZ45hNbL+/IBNyqi8GR0IFkWSL95u53ZA=;
        b=SJhW5GdNRUDnEdWkKsXtXogyis1whwC6Zq44YG1RI46+zOXt2S+HSQP0tMvN596uDD
         4v+ODND4meUaDbAHf8H7Y7CCawF4UhbV2m7bb+n7B8Je5p7WCTpIL4Y6yZAajprLil/c
         429l0eUz2rhNh1G6PL6texWAFNMshvxErVWjfrsugN9yimUDWzjRU7fl+SZDNYF5wOar
         +mab4k0pCyHXXeJnQg8AhJvc2mkM8mucV1v+4pClu9Z/1/Cl6BKWnmIAR992b9Oaf50+
         9Dioy1YCom637XUKVGjKTJ5LZunkmbkb11V4QY3c6f60x6yL6RkOK4e4DoPv/hvjTrft
         +cSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AO0yUKVXKLzF4V5JX9u6y+xcz7knUS/8tPrrgwa9ale78CKaquw2kfdC
	MRW/N1kTKBLh+RoUG0dYAUk=
X-Google-Smtp-Source: AK7set/g1VLYvrg7r1fYR99Q1riVWAy2q+Zt3rQw4dM1xs3RWavw8Kow3Le9KgF6JYCeNQO59LFvDw==
X-Received: by 2002:a05:600c:9:b0:3eb:38b0:e741 with SMTP id g9-20020a05600c000900b003eb38b0e741mr3423854wmc.0.1677801075139;
        Thu, 02 Mar 2023 15:51:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1c01:b0:3dc:5300:3d83 with SMTP id
 j1-20020a05600c1c0100b003dc53003d83ls602047wms.0.-pod-control-gmail; Thu, 02
 Mar 2023 15:51:14 -0800 (PST)
X-Received: by 2002:a05:600c:4d24:b0:3dd:af7a:53db with SMTP id u36-20020a05600c4d2400b003ddaf7a53dbmr9119998wmp.11.1677801074022;
        Thu, 02 Mar 2023 15:51:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1677801074; cv=pass;
        d=google.com; s=arc-20160816;
        b=YS9pvS/fd0rEK6q9eZSOvfukvtTAvt720nLwogbi9mjs/dBPXM7SpujL/eMcQIK7iC
         Ar68E/teJ6sNcAeAGJfCr/Ij+MRXp067bnPK3y2IYTNvVgejGcpoQuXxG9IOxhF15R6N
         ZYSR0tsBSFqJ81A/VUlJcd+2D1xAvLk9NMJ2k3gJdpH7lKiS+EqQd3wu4qKykng2x3T/
         BRD2QQ4ttFhl23Xm5i6PLJdam2qQVO24ExhrNYqRzUpN98grtjEfuRo1b0vtbV2BertZ
         AvO1mj5zp1+2/1WezYtJqDljyiKsuc6dOg3VkIVfyw78jfo4xhHTNL61/Y8BOM/wDfFA
         qirQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:to:from:dkim-signature;
        bh=RO+nYRdDHoyEk2FoAytgojbxeV5nizhLCVeuGRoMlog=;
        b=YnYc0GJnQ7dUJr/b8pFfwVEezGDBEFkYZfHq7IBevL8+DZRPPxlv7OZ89Cp6Wdhnzu
         WC3RWxLIIyzIJB06V5PKFBJezxBljF4sJXF28UvoTKjLvjCt+SvKNBYUCEMKntk6blZp
         txsyzRQnbGLjuPw/ALwdL66yevVRdOML41MYhcfvDTb0Cej8XKqxxdCxE3k6YrKe294+
         OmU/QB0Rnk2zj+RL9hqvhXQ9Obk24NUX4f/D5ellDfr/wlRKkbjsOGKcQLnJphYDLNby
         geXCfTfVlLXmuFB84SC2SfAwQVqFphLmN5NR0hFXrfQ9G8Q2aDP3AhkoWI3T5TI0Mjzl
         Pmdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b="jNPmnq/m";
       arc=pass (i=1);
       spf=pass (google.com: domain of edgarvc846q4@outlook.com designates 2a01:111:f400:fe16::803 as permitted sender) smtp.mailfrom=edgarvc846q4@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02olkn20803.outbound.protection.outlook.com. [2a01:111:f400:fe16::803])
        by gmr-mx.google.com with ESMTPS id m19-20020a05600c4f5300b003dc537184cfsi293450wmq.1.2023.03.02.15.51.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2023 15:51:13 -0800 (PST)
Received-SPF: pass (google.com: domain of edgarvc846q4@outlook.com designates 2a01:111:f400:fe16::803 as permitted sender) client-ip=2a01:111:f400:fe16::803;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oZTjllIT88hppYkKu0tz/kwX3Z/4NTh321Rpqn1TRh2MQdHr20novK43SqBKmyxoT5RdXHoLtSpxZEPcwl1AtzhOJ4gQCqx6nipji4L+s2zEqDkHABXDImYkHHaeN89Ygpdy+WQB+QHPQ2us3p8aqroJcvEvLLca2rfZmtwfbi9H8HBvrcrLa+/951TneAmjlBCg7x/QL+mXQ3HT1wRldJrqfoUTDhAp7mQjeYW45U8Zp1A8NQXH69zvemSzB2nxmaWIjXYf6HXtfFRMIHmMUgc9d/8mxVEg/w3c3bh+Cmxz0CjcJd0m79R0ye+fmiFHJO9y7Pb6iykhoN6R+8IwgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RO+nYRdDHoyEk2FoAytgojbxeV5nizhLCVeuGRoMlog=;
 b=eBFZ+oPRGvBZVFeoX4skolRtkfuWPYpDzeb/47OJa82nIflv5EG5kBfQqOWeZu1BRAlsapLDeOsFFbQ1Q6dLCc2If0qBYFcB5kF/zlAOzKGFI4ejccWqukhUHVuhjpRENw0IyNCQ3H8BRYreUAG4DvNR0ajxwVhkec8JZ097rvKNhlxXV4EGHpq1Ci3MK8fdmgVBd17aJleJ2FYGXiWUZ1gXXdu+IKc1XTc/gmj4O9u9H55O0qcMZB/GsGCBxcy6qZoJBP4pS568PjSUteHo+euBWjXFA2uBulyptXqNH/aR9uhFEHVj2NRyNfH/ultiHKZdA6zmm8kKJP1LJWSg7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from AS8PR09MB5468.eurprd09.prod.outlook.com (2603:10a6:20b:37f::14)
 by VI1PR09MB6686.eurprd09.prod.outlook.com (2603:10a6:800:1d2::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Thu, 2 Mar
 2023 23:51:11 +0000
Received: from AS8PR09MB5468.eurprd09.prod.outlook.com
 ([fe80::3479:5930:7258:87ee]) by AS8PR09MB5468.eurprd09.prod.outlook.com
 ([fe80::3479:5930:7258:87ee%9]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 23:51:10 +0000
From: Genny Paredez <edgarvc846q4@outlook.com>
To: "clan.magic@yahoo.com" <clan.magic@yahoo.com>
Subject: =?iso-2022-jp?B?GyRCP001JCVWJWklcyVJO343VxsoQg==?=
Thread-Topic: =?iso-2022-jp?B?GyRCP001JCVWJWklcyVJO343VxsoQg==?=
Thread-Index: AQHZTWHdqw1znQRyUkumpDT3CsHqUg==
Date: Thu, 2 Mar 2023 23:51:10 +0000
Message-ID: <AS8PR09MB5468D011CA9E562CA0738BB4F4B29@AS8PR09MB5468.eurprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [JVJvLD0sPreiwCEquJbkLlwlZENE1jUR]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR09MB5468:EE_|VI1PR09MB6686:EE_
x-ms-office365-filtering-correlation-id: dd598d22-768c-4eb7-4dfe-08db1b790012
x-ms-exchange-slblob-mailprops: PHS9e/w+tWJ+u+XI075XId63mx3PxDtfwm2hzgdJUjq29IScp+cy93LzGKKxl7oXXNpjYWB/DmHC2n1K9IJfQ/q3jm4qgKT6PKeO95XxcGGLhbYNgA9DD1DsHmJKmoekzeBjgIQI1zWlgN0oafkAQ2A24fcQBWi6O6H2vkebl7LrB4Wm3h2D0SawDoed5NHwFxDN6lv6mjpj6kYWMX0k3XRGcM6VgptPJU+JyEbEkIBuPGe4ZAZ1RKKlCyBEIer/jhTX97P/H6RzKHqpke5sS/ScGmkyBQBBRyKvAhXoY9hmGtKVQJs6WutaSLsMcjF7kqVZInTeJix4EbS57GCE48Z2bvT9H/Tkup88yj4BqWWuHNrcXKtsOs8OjwbJ0UjLrYn2YCIsOm8IFYn96KEhC3uVa/a4OwHi50XAtNve3lzYwoq4MIHh7ON1ogcpi1E3awUcIeHbVGODzgeJzv+oPtSkDwzgpl/hSLFeUXhtJmrEsdvzaSSVQf6wwbIfQZBS86MAHp7C8hedCnXv9Z+4xIIeCgZKJ3UsM59GdXCBhJ0BwralfWEqCApByyHZdwltQVx4XC/DJ+rianTZmXkSous2OkaT6ZK+aRAyqU4T6BoJqthRHUEqY8+bETD6GycO8dxL/S2JN/rHPNNCVcA0vfYM0uzDSXiJPsFQmjUOcbRXprDxIwqgjjqzDAQYyCcNeDVagP3z1d6mnA8mKbjD1A==
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xz0n7n8o4GlBXWQDsigoJJN1mew8wXz29FH3npwHgD6S8oxN7MmYIbzB21hFtbUsSHgDcxVRwGWxWdfqFiKd/mxdbYKaPOPohxYyiaozhbDh1WLMm5rtg9w7Ch3sr98+wH9IXKeWs8MLO3qUwPV3xB5/APqh6NPIWm19xuqPg0RBVkMkFh2PVRltt6jASv2FTJfp7jjwr3gENDKHZ/+iUEKb84phshq1J6lcIrDNiQopEv57IzwvGznX+RLedZFZ/SMwlw3HdLtIMUiJFB6PkZlG68GuGugwcTTuYcA2ne/NtQklyzD/jhoQt394LWsNJzDBEn1kHl3aXfd8ySwhqKJcXpKeoz6zWU/TgqgFc5ukiUgpyVbVoxOGt1Ah8GrmbMIUpOC/hPqA/k+xR96XLKUI5TlnnZEUSzF/2YzoFMejjaYGNIdWUpo95SyrAzquH5QP+UHH4aD55GHx/jul46Ysw34L9t6OUY6vSdnag+E7V+txjfHykaE5Aw5R3bUiPN364mFSIMfvemWuApLBhJA259sP6eEdbd70aPVJqymhKyMMc07eGpYJE12qhDJF9Km9+6pPQjGmQ49+UUi852p8x50AzRXyRa+LtSzckgmrB/KHkZuu7LweumOxEnQ0
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-2022-jp?B?Z3BHdm5oNGdpZVE1U1ZjdTlmZ0V6VmZzeTZiM2JBTlJicE9BV2F6bEk3?=
 =?iso-2022-jp?B?bnlQbmFsTThOdkdPT0xLZGN5WTE4WFhqQ2d2ZXU4Tk9lTUlBVGxPTDFx?=
 =?iso-2022-jp?B?VHNhZUwzSzJ0MjFxbEVRZk5zbnEwa1dzRmpVZElmSHVncjgwNk4wc2tp?=
 =?iso-2022-jp?B?MjRHTDY4Y0UwVEJHTXF6c1BSb3lqZnlodkF1VzZ1MDUwQzlhMWhpQVJq?=
 =?iso-2022-jp?B?T01lR0E3OHd5SGJyZmNFaC92UEJEakNWTWtRKzl1c1J1d2trVjdQSkdT?=
 =?iso-2022-jp?B?cWdzMkNOSWdlWlhTTkpmYXNDVXdXMm0rM09RRzNKK2ZqMi9COWhETkNo?=
 =?iso-2022-jp?B?ampjbTV0aGlOMkl1cmNXeHdHaGJwZ2ltcjloQXFDQXFlS0pjOTA0N2JM?=
 =?iso-2022-jp?B?T0h0KzhJRWNycXJYamxBODdHdDArVDY3dzM1YkNhdDBDbnliWm9CRity?=
 =?iso-2022-jp?B?R1owNVNydVVPeUU5ZE5xNUFYVXpvd2pCaW1pbDlkdzVrSTMybmZtb3Zh?=
 =?iso-2022-jp?B?SFhTeGp0NktTakExK0dGM1g2SWpJRFArbGVtWFNnejZkdUw4Z2xEOFZr?=
 =?iso-2022-jp?B?YjVRVGVNTFFldlMxMFJaUEpOSWxsalNYRjB6T09pa3pFNmtPczMwdlF2?=
 =?iso-2022-jp?B?MDJ6d1NzSXE4NnIraXQzd0NRaVNoUzNWb1p1REJSZ0NlT1lJc1FKU29P?=
 =?iso-2022-jp?B?UkpZYVowTmdEakNpVTRrRnVNT0R5YXhDdnI3dVY5OCsrZExtL1dYcDha?=
 =?iso-2022-jp?B?QUlNZ0JUNG5MRllySTRmYzZ6WUVITGxlYktCNVVHN25ESHJObllSOUE1?=
 =?iso-2022-jp?B?aFhPZEZIaUt0dllPM01jK3NNb2QrMzl4dm9XUkMwL3laWUZZaXVockhi?=
 =?iso-2022-jp?B?YW1xb0doM3NsQnYwdDlVKzVaNGZ4VGZvK2V2N1JneXlyNStaMXVGN01B?=
 =?iso-2022-jp?B?eVppMmNEVm91NlZBbVcrOW1jRGlTQ09SY1I3ZFdhOXFGT24rVjBJMHJu?=
 =?iso-2022-jp?B?dHg4M21Jb3NzLzNBN210L1cxdFR1SDNlaUtzdzRxajFvcE8zaHRPVk9o?=
 =?iso-2022-jp?B?QU0yM2NEUzdVVUpaYmZEcndWQUI5aHFXWStNOXM5L01GV20xb1kvZXFS?=
 =?iso-2022-jp?B?NFltemxodmtCeElKRTc3OHJyQk5QUkRDM2NTaCs2QUxRTU8wWFczazZE?=
 =?iso-2022-jp?B?eXlWMW5iYzVHczd6SlZQMXZPSmJkekI5cUgzQkk2cVdxU1FLRTgyb215?=
 =?iso-2022-jp?B?Z2Uvd2RBYVVDKzgyWC9DMml1cHFKVkxkbDErQ213SzV3UmswM3ptR0JC?=
 =?iso-2022-jp?B?RXZjM2lyOUhxMCtsdjdUSEx6YzlKWDJTcy8rQVlBcXUzMTRWcURiaWpv?=
 =?iso-2022-jp?B?SElFRmtTZkFQUjZNa1pZR09lR3dDTTZUMWJWMjI0NDRTdm9iM25oRGJ3?=
 =?iso-2022-jp?B?UU9ScWZ5bmM3aGVTRlR5dVlNVktnMmtKV1pQZUVaM1FwVjZWTHVCUHd5?=
 =?iso-2022-jp?B?WUl0aG5CdWFVYmhRMFk1K0k1T2x6Z3hISHl6YStxUTZaTFFGMGE4SEMr?=
 =?iso-2022-jp?B?TFk5cW5GenFLZ3MrbFpWd2l1SkJUOVliV3JnbkFSV1lKamR1WHd6eWRY?=
 =?iso-2022-jp?B?Z2trWHc1YkZqdmRuRnJwaTN0NStRTytxVU1FSGdQWm00K0w2QUNPdDAr?=
 =?iso-2022-jp?B?NUZMZUFrbkkwNk9jeGZPZ1Nuem9LN0NFR3JtYi82UXhLOFpUaTdxZ0ZL?=
 =?iso-2022-jp?B?RXBSVE9ZVXBzMkFqNC9iN3dXK2ErWktsOC9XTVd1d2Vrb3lFZ0xaUjdy?=
 =?iso-2022-jp?B?WEVKaDl1ZXZqTnEvL3c2blpOS0I=?=
Content-Type: multipart/alternative;
	boundary="_000_AS8PR09MB5468D011CA9E562CA0738BB4F4B29AS8PR09MB5468eurp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR09MB5468.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: dd598d22-768c-4eb7-4dfe-08db1b790012
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2023 23:51:10.8624
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR09MB6686
X-Original-Sender: edgarvc846q4@outlook.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@outlook.com header.s=selector1 header.b="jNPmnq/m";       arc=pass
 (i=1);       spf=pass (google.com: domain of edgarvc846q4@outlook.com
 designates 2a01:111:f400:fe16::803 as permitted sender) smtp.mailfrom=edgarvc846q4@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
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

--_000_AS8PR09MB5468D011CA9E562CA0738BB4F4B29AS8PR09MB5468eurp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

5qWt55WM44Gn5pyA6auY44Gq5ZOB6LOq44GM5a6M55Kn44Gn44GZ5Lq65rCX44OW44Op44Oz44OJ
5pmC6KiI77yMTue0muWTgeOCueODvOODkeODvOOCs+ODlOODvOODluODqeODs+ODieOBr+alreeV
jOOBp+acgOmrmOOBquWTgeizquOBq+aMkeaIpuOBl+OBvuOBmeOAgiAuDQoNCuWTgeizquOBjOWu
jOeSp+OBp+OAgeS+oeagvOOBjOa/gOWuieOBp+OBmeOAgeizvOWFpeOBuOOCiOOBhuOBk+OBnSDv
vIENCg0K5bqX6YuqVVJM77yaaHR0cHM6Ly8wcnoudHcvdEcyMk0NCg0KLS0gCllvdSByZWNlaXZl
ZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBH
cm91cHMgIkNsYW5nIEJ1aWx0IExpbnV4IiBncm91cC4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlz
IGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0
byBjbGFuZy1idWlsdC1saW51eCt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgpUbyB2aWV3
IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5j
b20vZC9tc2dpZC9jbGFuZy1idWlsdC1saW51eC9BUzhQUjA5TUI1NDY4RDAxMUNBOUU1NjJDQTA3
MzhCQjRGNEIyOSU0MEFTOFBSMDlNQjU0NjguZXVycHJkMDkucHJvZC5vdXRsb29rLmNvbS4K
--_000_AS8PR09MB5468D011CA9E562CA0738BB4F4B29AS8PR09MB5468eurp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
</head>
<body>
<p><strong>=E6=A5=AD=E7=95=8C=E3=81=A7=E6=9C=80=E9=AB=98=E3=81=AA=E5=93=81=
=E8=B3=AA=E3=81=8C=E5=AE=8C=E7=92=A7=E3=81=A7=E3=81=99=E4=BA=BA=E6=B0=97=E3=
=83=96=E3=83=A9=E3=83=B3=E3=83=89=E6=99=82=E8=A8=88=EF=BC=8CN=E7=B4=9A=E5=
=93=81=E3=82=B9=E3=83=BC=E3=83=91=E3=83=BC=E3=82=B3=E3=83=94=E3=83=BC=E3=83=
=96=E3=83=A9=E3=83=B3=E3=83=89=E3=81=AF<font style=3D"background-color: red=
;">=E6=A5=AD=E7=95=8C=E3=81=A7=E6=9C=80=E9=AB=98=E3=81=AA=E5=93=81=E8=B3=AA=
</font>=E3=81=AB=E6=8C=91=E6=88=A6=E3=81=97=E3=81=BE=E3=81=99=E3=80=82 .</s=
trong></p>
<p><strong><font style=3D"background-color: green;">=E5=93=81=E8=B3=AA=E3=
=81=8C=E5=AE=8C=E7=92=A7=E3=81=A7</font>=E3=80=81<font style=3D"background-=
color: rgb(255, 102, 0);">=E4=BE=A1=E6=A0=BC=E3=81=8C=E6=BF=80=E5=AE=89=E3=
=81=A7=E3=81=99</font>=E3=80=81<font style=3D"background-color: rgb(255, 0,=
 255);">=E8=B3=BC=E5=85=A5=E3=81=B8=E3=82=88=E3=81=86=E3=81=93=E3=81=9D</fo=
nt> =EF=BC=81</strong></p>
<p></p>
<p>=E5=BA=97=E9=8B=AAURL=EF=BC=9A<a href=3D"https://0rz.tw/tG22M">https://0=
rz.tw/tG22M</a></p>
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
om/d/msgid/clang-built-linux/AS8PR09MB5468D011CA9E562CA0738BB4F4B29%40AS8PR=
09MB5468.eurprd09.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">=
https://groups.google.com/d/msgid/clang-built-linux/AS8PR09MB5468D011CA9E56=
2CA0738BB4F4B29%40AS8PR09MB5468.eurprd09.prod.outlook.com</a>.<br />

--_000_AS8PR09MB5468D011CA9E562CA0738BB4F4B29AS8PR09MB5468eurp_--
