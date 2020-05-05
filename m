Return-Path: <clang-built-linux+bncBDL2RHVL3UPBBLUSY32QKGQEXP5UFNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CF91C5BBE
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:41:35 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id h1sf2589847qkl.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:41:35 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588693294; cv=pass;
        d=google.com; s=arc-20160816;
        b=aSYa94Y51vqpn4VuapPeUvbn5df3AgGehZb4iO93b3eVxp3SFpyXk0l14GWRPDopjH
         r8LN6MO4ENGMDXLkR1etQtv5NTmzvs5MuNwJS/qCF9o/Ee19VCRZ/Dj5HMVrDT67/m+F
         GEyN8ii7SvJJYxkJpGcEluQkxBb+8XFuaOdou41XhyswRWvPyvceSiYWmsqU40z8LPxz
         ucLDPGjGiOzumyITRUAY51S/4cBge9xFGudM2JFQzI4yApkaZkta22MlB5c5lVUNCHc3
         jIVdv6ZZz1XIUu2Y0/EH/CMllMGnT/OL3MNtVHvhspFhgTHlfwvT2kwLRcfpIhb4aEDA
         7icg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=hMuUTNS8hMrlEfVtMLf1YxuS9JtDS4IRIJhw8xiQYo4=;
        b=KW8XayY6HmpPO6ekROIFvG8gNy2Tf85qsWZ7awr599xTu8awErozjoup8S1CeqDdT3
         Vejh4OPz7CqpkQKENV7DrylzjSlulQH2t2xZTS/xS9IjfPcIzrZ3vJc+DWh3MvKUaef3
         cJQimYAK6CPyTcddDfNYBU4lVnb5WFW/zCmIHMymAhN7o5agR9Sllu7RjQ/5u5bXyZyJ
         Xo2w0uMxjO+wqaHJ2XPcUvltQP8TU1z+m+W6qdumUQomtK01IMAu1ZUcAzbKXfNifHL2
         vusXSf1lmVWRtFmJYC+6q83dZHx9B11hyeKOWmeQ0qMHbN+vN9bx+fcAqYKAt8vmfETZ
         1Wgg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@analog.onmicrosoft.com header.s=selector2-analog-onmicrosoft-com header.b=zY0GBoZ4;
       arc=pass (i=1 spf=pass spfdomain=analog.com dkim=pass dkdomain=analog.com dmarc=pass fromdomain=analog.com);
       spf=pass (google.com: domain of alexandru.ardelean@analog.com designates 148.163.135.77 as permitted sender) smtp.mailfrom=alexandru.Ardelean@analog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hMuUTNS8hMrlEfVtMLf1YxuS9JtDS4IRIJhw8xiQYo4=;
        b=aZXQHfvHfO4kZce9v/dUrVxhKzEn/xlkGoDERoCzF7CEUddJqbFzaIQF6xuzkmrc90
         mYD8ERVkz8QJzTDJXwl+oysTKN/iFoxLR1+L/bi/lL7WWcdcdDa+8HlMiRFnFQlaSn7t
         lXh2apIl0qVXw82YluvRWlrwbrTIYCjPggBJgilefbUi91dOLZPvHCiMkDyIUepP29Xd
         cIJq9xEbN8JMildnsJNo6JWQda3Wky2AEAbhC+Vz1TE9n1B0R4ydfexyqB1HJvPK826O
         4Zhc8I5/lSr/hovNgzmQr0bIsbutAs0mhErCq6hHCPLaOPGqVR7yL2Nrde/VCyJ52NkJ
         cvIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hMuUTNS8hMrlEfVtMLf1YxuS9JtDS4IRIJhw8xiQYo4=;
        b=VRtvTfytRXLCJR72RVfx2N2B8y56Qw545NrQ+V4+XqFClekXoghbgLIImGl1nbBnB8
         AQbZHXRMJdFAKNMW7Fu1Z8RxX7PPQ6oqiMArBdZ94w08zOrGelSTyn4zJI1gk+e+QCBp
         xPrufQt5TXkmBkrpKAGm3jrcvYaXWYGZOs/gWScgch2vRM+2CzKiJa3IwpeNnbDBt6KC
         6hv8T6g+fSoXVbhwsJ3lnWc390ikE8iKocJC6d1OGsFKTf9kTQAgXDvQwpI1TUEOqvAz
         3EdLpWix7fY1Si7gzNi2f0whUcwNFqORrssaAYnSJ9XInOSSQtNfCMKK4moMyxRkfxZ3
         QgXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYR+92vcgNpqzhWTmnjMc+fwsnrhcZjBZ/m3wFmjg5b0QYLdt/3
	lgf66wBHba+3k3H04fjFKcU=
X-Google-Smtp-Source: APiQypISLbUZI5dbooKhrRQRB0yCIc7Ravf1SXKIkbPDYRuqavhWiD1uAPHNjhUQ2eccfwRmW7DhqQ==
X-Received: by 2002:a0c:ef12:: with SMTP id t18mr3456461qvr.9.1588693294707;
        Tue, 05 May 2020 08:41:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:528b:: with SMTP id v11ls39672qvr.9.gmail; Tue, 05 May
 2020 08:41:34 -0700 (PDT)
X-Received: by 2002:ad4:4dc8:: with SMTP id cw8mr3514987qvb.83.1588693294349;
        Tue, 05 May 2020 08:41:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588693294; cv=pass;
        d=google.com; s=arc-20160816;
        b=0fQe9h6fMAcfi0DgeC7EPSHLsTBZ2prpMDWIUInH5kEAyaTBUiKUZzcvKxsTz27zKW
         PM/6wny9osgu9Zp+sCojIJpz2HIDUd4jPbQ6xSIH5I/r0DCKsjPHvjWfucRoJKbAb6vy
         0MfOQ18fNDitIGDNRRSK/fZuiehS4FZoy2GSMBSur294yuolDfq2tO/8InPJwteYq0+X
         P/wVaaGsNRS1ctRfqadHH60j25WCqSJSmdkk6SgvAdYzsTwDpt5xNsB+GDyi7fQbvFum
         e2XRgwbsY/PgHEDfqKiTQYw1nshzkKI+7nbr8xGHKG9Z+13VQuvK+dXhbQHm1D5/rfcV
         AM0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=wUSxyNa4ws87BvXjiWi4cAiMubdKTLzu06Aj97HEjTM=;
        b=x/ds9jlq/0Mm4a5QYy0FX4A0H9vwMM2XBSf598PBvC7LkXz7Xw649FunlM+q3wH0+P
         kp6eqdxX58LS++e80riSqWI9nyb9kWNgC3sZwHkDwf2jUBf31K4clP+Yk8DfgeqRSCmc
         wRd5ktFBMKpQITMi0GFLxIGM3FC6CXfIilLsIH6PJyBjAWlCP0qiwjGhCr11+lsU5bj3
         s5Dk6Q1RQncLE4AZloyOoVlv0uO5jquw3SjkENQynT1toOvhuFknM1ISu76tLM5/LIyn
         KvQ+oxtgH5ivSKyGbUabkiOfuN0YbuKY8tWerOWiSO8cTYz9FT25tk7pyVbT6yc71Nde
         pyWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@analog.onmicrosoft.com header.s=selector2-analog-onmicrosoft-com header.b=zY0GBoZ4;
       arc=pass (i=1 spf=pass spfdomain=analog.com dkim=pass dkdomain=analog.com dmarc=pass fromdomain=analog.com);
       spf=pass (google.com: domain of alexandru.ardelean@analog.com designates 148.163.135.77 as permitted sender) smtp.mailfrom=alexandru.Ardelean@analog.com
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com. [148.163.135.77])
        by gmr-mx.google.com with ESMTPS id h33si184275qtd.2.2020.05.05.08.41.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 08:41:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandru.ardelean@analog.com designates 148.163.135.77 as permitted sender) client-ip=148.163.135.77;
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
	by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 045FeFAV031274;
	Tue, 5 May 2020 11:41:28 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-00128a01.pphosted.com with ESMTP id 30sh4jqnmu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 May 2020 11:41:28 -0400
Received: from m0167088.ppops.net (m0167088.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 045FfRNs032628;
	Tue, 5 May 2020 11:41:28 -0400
Received: from nam02-cy1-obe.outbound.protection.outlook.com (mail-cys01nam02lp2055.outbound.protection.outlook.com [104.47.37.55])
	by mx0a-00128a01.pphosted.com with ESMTP id 30sh4jqnms-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 05 May 2020 11:41:27 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y8vhLSafYja2SU2zz+fR57x5GHiHtkMUrY7MU7w+rbaqIxJUf3JLVjML5oBuTkUHkSsvgdhqmmyiz6A8hiphTCv7OcWNOdL5aFSXCM0DoLeDHIWhjMEXQ5eQREZZQKktawNrnTtDu+pKZbZCUTTNdivLZAO6EvCxw6Jb+JsDIy2vtzobu0M0wPtmy/G3AJAwyZp8lULPlOAObzT1I2QiS+eXhfrpassPYMDmCJ9pEkYdYayZqcrlV8tHWqEpi3HNzXXuGK2M/x8pWzmcO2xa5Y3gcJc+gzzJ8/130ZyZ6Rnzf6RCxzMrOZ3uCcQbkncmW8D2JUzc0FhBi11fX21Olg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wUSxyNa4ws87BvXjiWi4cAiMubdKTLzu06Aj97HEjTM=;
 b=M7FcqboyXK6YfN1NxT2UiuBoWvhYfi2RxyJCPL0uFE5xsXhxhlaDMP1+LwJseygFdt/bwHn2NsVnJIkAs+3Gf7QK+MKODINanm6IcQWKI3SF158Zr8yoSuGwkOp+c/baV3IY5IPxx5+W4g9b2LZBJB8yEjclfKzQYDTwBQQ+T9kYLV0HbW6bwwZzh5D9wXtVgFMGUc/3di7LxIW2qgsATuyBlFdBkdovi7j47AouXX1/t5aY34z09af32VHPcNUxftyepZEiPqqqgL7n/hf2mzHD1Lkcd8GKxup9mDL/BX9030kY5JWKBFnAas0MX/6utvH0bjO4sgObGEWHExEH/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB3756.namprd03.prod.outlook.com (2603:10b6:5:44::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.27; Tue, 5 May
 2020 15:41:25 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::40df:9aa4:c85a:a020]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::40df:9aa4:c85a:a020%4]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 15:41:25 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Hennerich, Michael" <Michael.Hennerich@analog.com>,
        "jic23@kernel.org"
	<jic23@kernel.org>,
        "lars@metafoo.de" <lars@metafoo.de>,
        "beniamin.bia@analog.com" <beniamin.bia@analog.com>,
        "arnd@arndb.de"
	<arnd@arndb.de>,
        "Bogdan, Dragos" <Dragos.Bogdan@analog.com>
CC: "Jonathan.Cameron@huawei.com" <Jonathan.Cameron@huawei.com>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
        "knaack.h@gmx.de" <knaack.h@gmx.de>,
        "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>,
        "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] iio: adc: ad7476: fix clang -Wpointer-bool-conversion
 warning
Thread-Topic: [PATCH] iio: adc: ad7476: fix clang -Wpointer-bool-conversion
 warning
Thread-Index: AQHWIuj5swUrWUk3ZUqIkHP7vKml+KiZoXKA
Date: Tue, 5 May 2020 15:41:25 +0000
Message-ID: <81fedffa59202e11e364abf44a3b529b4dfb98c8.camel@analog.com>
References: <20200505142408.1113763-1-arnd@arndb.de>
In-Reply-To: <20200505142408.1113763-1-arnd@arndb.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [188.27.130.47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ed595328-d4fb-47bc-7fcb-08d7f10ac550
x-ms-traffictypediagnostic: DM6PR03MB3756:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR03MB375682DACF37FED48AEC9613F9A70@DM6PR03MB3756.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0394259C80
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kYsGlJkiVvIXM7cooXfxrJfmbtd5w2SZ86tP5AgJO345T8YJZEDOBpQnqfiC/RWM4HCk3reQhmnNNEkPc9Uat1v/UUu/XBh+old++yYlMfMeyBKiUMMtBsJVB7vxPEG+veW17gDif4idkkuAE1370UUdMvFfWLBGgm4cXkNe4c5E/7htCjSu7Lhkkk+sog+vFcNTCaF1NNPCBxilhKhgkV+00nrf3CZ70A4g7yrvc/xlN2rzgPsND7y1SifbH8ubSTiDgDCqHe2diICaQhGV5LFST10osROqzy3clOxzxtROpiyv/nUK87v3vjCjPBWFibVcVJIwrYyxfyFbAgDhJ2pgpjpr+JUmhnigIOvSpdJ+qBTLBcfyllccEWQ7fVzVHxqee5n2++6l3G8/vSRhynKLPUTMB8M8LYRSULpuVWFIXnuAUVokKCgVD1nR/vmqtbelr8jRJiZjfoM45Vra9hJUyrari/qtofN4mJm2+OtQ6sKGz43IKrS1VWaOjEbYbLd59NzRP1vdPAlY/xyPrTwqzPqE89FLGbLz7XlW3BfvaF4X1zcnKA36LXnINqtvx5eNROXX4NN/kJu+5zrXnVV0gZ2H0TSUTBA2lzdwqYg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR03MB4411.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(376002)(136003)(346002)(39860400002)(366004)(396003)(33430700001)(5660300002)(4326008)(8676002)(6636002)(86362001)(26005)(36756003)(316002)(6486002)(966005)(478600001)(6512007)(110136005)(91956017)(76116006)(54906003)(66946007)(186003)(71200400001)(66476007)(66556008)(6506007)(66446008)(2616005)(8936002)(33440700001)(2906002)(64756008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: XwTRzEu1ERpLJiTzn5lSOJbd2axlIyE2PteOuKB7H1Wrcq1h+1fxAduiLEEjFqWjDm/RjRBHjvrrJcMqB2shZVlS8bWm0954hMcagOUAAljzo3OI5S9i9MLwtPpDB9jS/8qDav+ZOUNjJEwOw+nmWXg31Y8CojpuCcU+r9bwfQQNd4ISuhhqzdCgwZyqgy7D8KDNRh1YRATB9+D79c82bO+3TPwzDeSt3PFM6PpXoCtg9qchh7g7ewoh0MjcwwxlPwrbc7ZSqxqN9VWtYsJCQDoKaR8RP0JSl/p4mP8QIyjc/LqrxKgYwAA0HjrS31eU+xehcrGJagURoUXwE0UOJVJnU8mqvDj+8WpnpAuztwi6Awc/pjUhwdoRMaZh4Q+EZUQmn3VKLjjiEabmhRojeH8tsZf83LT1tkiL+zdytzUgj3EjZfwPtWC65TTrQ6CSeI3GrqzMs8jayJ9pCO3EE5z4RVe1Dw2aD1rsYGg2pULwkNyqzC0YFXlRx0dDEH4YB3NOrdplCD3AK+aLGKC6kuFftJ23UNMmrHaQimkL8tFNpoSkwfStZXPByT0UnKuBaGAi16YQFMzl2IoIjJfQ/7mxoefi9ebrpfZXZ7Ng+8pnV44IebUdFSdaBniBSiv/W6LFtXv9RhXuc1UgpyiIgARcNXqQsxInimdFwA5gLWroCCKosxEYpvKqWKzRRQjCEM0LAiYYNlW4PdULUZkeSQ94oXPvP3PpoAiHIZOq1CXRfcdfrHbUBlF6iZ0PSiRwiXnWS40QAYeJJ2o3O6Y+vR7YPnQtzdZdJIAr7SmnaL0=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <655D5A5965B8E247A543BF8F24F3D08C@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed595328-d4fb-47bc-7fcb-08d7f10ac550
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2020 15:41:25.7969
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yrkIqPmDDeXCHHtQr2lhjj133knfN3JWnDrlkZkc2X6EAMyusgaKsov9bmkdhSDxqluq2ikvaC6xK4eItvHwpUSATVIaDqNJmQ8wFbXzkEM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3756
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.676
 definitions=2020-05-05_09:2020-05-04,2020-05-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 clxscore=1011 bulkscore=0 phishscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 mlxlogscore=902 adultscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005050125
X-Original-Sender: alexandru.ardelean@analog.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@analog.onmicrosoft.com header.s=selector2-analog-onmicrosoft-com
 header.b=zY0GBoZ4;       arc=pass (i=1 spf=pass spfdomain=analog.com
 dkim=pass dkdomain=analog.com dmarc=pass fromdomain=analog.com);
       spf=pass (google.com: domain of alexandru.ardelean@analog.com
 designates 148.163.135.77 as permitted sender) smtp.mailfrom=alexandru.Ardelean@analog.com
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

On Tue, 2020-05-05 at 16:23 +0200, Arnd Bergmann wrote:
> [External]
> 
> Checking the pointer value of st->chip_info->convst_channel is pointless
> since this this an array inside of a struct: even if st->chip_info is NULL,
> the pointer is non-zero. Clang warns about this:
> 
> drivers/iio/adc/ad7476.c:312:40: warning: address of array 'st->chip_info-
> >convst_channel' will always evaluate to 'true' [-Wpointer-bool-conversion]
>         if (st->convst_gpio && st->chip_info->convst_channel)
>                             ~~ ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~
> 
> I could not come up with a sane way to check whether the entry
> is valid, so just remove the check and keep the behavior as it
> is today but without the warning.

There's already a patch for this, in one of Jonathan's branches.
https://patchwork.kernel.org/patch/11507829/

Thanks
Alex

> 
> Fixes: 3a6af93dd66e ("iio: adc: ad7476: Add IIO_CHAN_INFO_RAW for AD7091R")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/iio/adc/ad7476.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/adc/ad7476.c b/drivers/iio/adc/ad7476.c
> index e9984a38fc4c..4e816d714ad2 100644
> --- a/drivers/iio/adc/ad7476.c
> +++ b/drivers/iio/adc/ad7476.c
> @@ -309,7 +309,7 @@ static int ad7476_probe(struct spi_device *spi)
>  	indio_dev->num_channels = 2;
>  	indio_dev->info = &ad7476_info;
>  
> -	if (st->convst_gpio && st->chip_info->convst_channel)
> +	if (st->convst_gpio)
>  		indio_dev->channels = st->chip_info->convst_channel;
>  	/* Setup default message */
>  

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/81fedffa59202e11e364abf44a3b529b4dfb98c8.camel%40analog.com.
