Return-Path: <clang-built-linux+bncBAABB6GK26DAMGQEDSKRV6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 232C83B4560
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 16:17:29 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id t8-20020a05651c2048b029012eb794d268sf3355258ljo.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Jun 2021 07:17:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1624630648; cv=pass;
        d=google.com; s=arc-20160816;
        b=R2CG6mNjNolV+BQo+kDn9NIdVslvUoifrHPhhg2dNCLM74zR22Y11X3u3OcjDONnmg
         CxffWOmM9IRFwYaUU2Z6Qs1P9dEDN2a2SsFX7wlrQn4Nje3oTH/kyvo7ncJwN3/c+xAS
         rzvAGfYH0420+nNP8el7Hb1DhVVY6ixm3rkFqFmxgvZ/1wACEqY8ef/2siETc5UfHBul
         fIdWo/LHWyiOAZdGQ42zeuu1bQCtu+ud243GlHlBgDK5t4LgeKKrHjRMyabEnigg++Vc
         IzVdpDavQryDOIt9ME4Wo4rBLc70c//+jpxsMn9L8WisGUWIt+IvrxzzTbroLgYDHTvG
         +dYg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :ironport-sdr:dkim-signature;
        bh=sXKobpe4Nc8jixRX4BHtahcrGclUuMncbBjsxQ5vPLY=;
        b=KfzqQJLlJzke47tqwgagwxKuNk7suf82zFB53U7g8WUlJRTStMnmJAUt6XFqqHaulD
         q22WbWCAIR98QjOiMMDuRuC4J2DPaa9+s4m/bVY3nBGHan3iYIlmeN2Q3im5etJUnEJU
         cd1/Z/Pv7/Umy4Vm/7UBVzzmXWaHXIKi/WuqF365HQ/n8gKseKgU2/yQ2sMLj2zW4HFO
         6g8T2kwIN/qZiGwnO8XRPACWUVdGQmyhkOx/5VkU6Fhyyeh8efUhTTX31gK7Mi21j3JR
         /fP7Dq2CZdz7sa7wfOoyT4RRyml8ZE7Hz98VvD6dXNcXVlNRZQQhAUPkqoii0X4et1j3
         e0Ig==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=nlfi5IdM;
       dkim=pass header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com header.b=UxbKiNih;
       arc=pass (i=1 spf=pass spfdomain=microchip.com dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of conor.dooley@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Conor.Dooley@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:thread-topic:thread-index:date
         :message-id:references:in-reply-to:accept-language:content-language
         :user-agent:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sXKobpe4Nc8jixRX4BHtahcrGclUuMncbBjsxQ5vPLY=;
        b=rRwv5PoWILRil4fb5FNGkJi5BOftt3ewH+C7T9wPINtYVTcLJzWpbVyw3ywMBSWqmI
         1h5LfeHTn734OH8obTjMk+yA4FIX+dFcqmXat3HEe0XnmNHBmkSPJdKMney674GHmPpE
         WxpgRei4aRZ/LF+NkX41+E0e5TXY5FOmWL3mYVgVO81OAQ0W9gmaIG846A6AOdLP+kEN
         NopfGHye2liV8+29zIzAFd99hu0kD85vOy5DTnWbDD3/SN+KSJJue1ArytZNqfVjkcQ0
         L5D949GXDhKxeZBYTCyuHgNV0fkAIA91hOhqfMCX6Uk1QUadnAtV3VXdlpNZSE4x4DRs
         tUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sXKobpe4Nc8jixRX4BHtahcrGclUuMncbBjsxQ5vPLY=;
        b=E7o/0EfbiLiErVypTSubRPuOXnOmTPACWJ1rom7kfMeo/5zVMO0xUk1T0anprf+4QA
         kYCSzT+7iIjvym8SEDsRe080uFePKGngSUOd65PLuM3zNMdrBQiGRW1FsC9Kz6HOK5RZ
         ta/irFTZb0Lxqu4yw8BYLxh2jqP+jzKbRqb6rfLkuT5IMfi5W52QEm2HIZhf7cYUYaFH
         FkidEL+gp+wq41KlGv90pDxrAQiAX6Bzh4maf6ixIvLyAynlMpJd7K+c0cBM5ya2xuJG
         wKDuE/dc0dC5j31EdKcp8ZhkNQ8G31ARw6mC0H6sh57ykN0vNUiJNysnUft5wsUAUmal
         IQGw==
X-Gm-Message-State: AOAM532iwlPbmU9uQPTTipzktWbtyl1eEZ+dgt1MOPLSuGaUPnNR/QtW
	ByN4uNpOEk4PUMkS2WJZyjY=
X-Google-Smtp-Source: ABdhPJzg3uRqGymkWxEVPkjrJRM2wXvz8pVTE4A/8FtQwjaDi17PtqFhvbfJjMu4GuzIaglgn2FTDw==
X-Received: by 2002:a05:6512:150e:: with SMTP id bq14mr8188082lfb.20.1624630648629;
        Fri, 25 Jun 2021 07:17:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf03:: with SMTP id c3ls1767598ljr.10.gmail; Fri, 25 Jun
 2021 07:17:27 -0700 (PDT)
X-Received: by 2002:a2e:7214:: with SMTP id n20mr8513222ljc.190.1624630647745;
        Fri, 25 Jun 2021 07:17:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624630647; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qh56nMNe6g5Xl37oQGAIOwLqCfpq6Z983kUa+otH+r+pepCE7iT5Rzd/cHJylhLT/7
         X6sISRFIzM1mKJzRDDJ7wFH3VOrcRk05deNI9QRtGfRrjsZrYJnUlrMdJYNjP5/JIi5j
         sgAM6BMe00+dwYjPxWIWCovcVSnDpKvxcIS8XdWi03YSsjs3Igsoz2zAoYDLLN0Msb3m
         IwPoPcu6kKP57iKzQplYee6A+nn7e929C2KRYeVSGmmG6zXN2mnTAC9h6Es4XosHSoYP
         rylIvjhQ7TSOPCqBxcF2CImYrLLMjfmie4/mSQ9MbrkroZGoEr+cl4Xd212O7Mv7l32e
         3qaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=kHAbshmv9DJ7jVcvzfSIhbFOvn7mrFUsFhHy+jVc0QI=;
        b=ij6LYr9q8ZUKbBfxP4WE3RXMS7G07WKTef0U9t90LMOKL0V0qVcwDC+SmKgRk7Jb1q
         vfrFHjumObQY6CeaVibr4V2VihredaCuYS0v1GuIZNJXJdMgws/y4UDBqIt3JH/JIn6v
         tVlLrzVrnMGDjFnJjaQhh835/khhBBErrylEhEgbMu2CXwQrV3DauOZIdCu5Wdr4wjle
         uo28XlFoAmbxmjgbltx7OhnZc27OlEnPOc1t+nGHLhoqOEzjA1Rip4KaeaoSSMY6lfZc
         M7e8snvgo7aZVMUpsc0dnLkcxE+0IHZEP46LGRinphO+Hkk9w+GFBUuISyt/pmEcbWIE
         Qrsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=nlfi5IdM;
       dkim=pass header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com header.b=UxbKiNih;
       arc=pass (i=1 spf=pass spfdomain=microchip.com dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of conor.dooley@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Conor.Dooley@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id z4si236180lfs.0.2021.06.25.07.17.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Jun 2021 07:17:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of conor.dooley@microchip.com designates 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: CRHwbt1X6bm2UBf+Co4V4LlkzFKZAH7Qv6h8N1ogvWS18vaWN94Cv/wxKPxSU3vzHk+uQ6sfUK
 kbugXq/KUK1VoUzlFpT/krVE2/8mjEeKn7iRY/AqLgPOWI6QufFE5Wn3icQS3Lc+6aU5Y0X6FK
 2TTZMcytM1Jbdkbw7rLr2DyBr2QREXODqJc+6S49XJbj7bor6NgMIZuEfjmhLfk9SQ27SkxvTj
 dyqauM9ufG2IHqwoeRXFBzxpSPRAsx2RyAVcablcG4E7bb95egS9xm0NmTHq0+Q8hQigbUlV6S
 0f4=
X-IronPort-AV: E=Sophos;i="5.83,299,1616482800"; 
   d="scan'208";a="122556477"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 25 Jun 2021 07:17:25 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 25 Jun 2021 07:17:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2 via Frontend
 Transport; Fri, 25 Jun 2021 07:17:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hXLyp2q38vrFTZa/dIjOZq4QbCVFBcn9Xpj28z2vHnKH8ogVHnqttRUvcwngnlEzKosVPPH/RFJz8T43qkwbCKMZ0rakyzUpragfvbO1Si0JdhsbCtcNjPcSeHt6vuWIKPThgicVCVWxt/AhMdKYrZ7dee0aGdM7c/LSidjGV0+yUiAR9a6SylIQOyHD2r7TGHRRahflUEb97Ct8GCBnhoB+n7urj/NTOQJgfaXihNtGt6xcdN9EpqKldkUvG5O7qA5XNYcnWYAkixreUzoKxyzDfT6xHW36T/zajqkrSXl2p+oNixOdH+m+G/ciX3ybJCkDFcKSFObPUDBwMsR28g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kHAbshmv9DJ7jVcvzfSIhbFOvn7mrFUsFhHy+jVc0QI=;
 b=nKnQD8opgJEKpbkt3mxs6//kj5Fbf4+XYkQVJFcF2sHw6nT99LhSvrZOhYGuYsijRxb3Aw7K5oAUFDMyjgAXs46dF3pkI1Wa9eEAq3T+ml2UDbTH0AdvAnPesa03g8zuhcIm3vWLFODQMmZFH5Qyv2tLMmA0ZU/GxRnDZibYqGjyymWpMKmwoGgDRf3g7KXKzl0qDma7SqGVlDOiZQHRNmUG4ftOWx+65tYryqDlU+QB0bZhWhfVS+lysRV/TcwRkUb5iPL+MlZJSSlN/MXt7UcBBMWbw3WXhCnnLEptS+30L7SOBQUgg2S/70TnWygxdbuJ8UWbOADq9ET3AC3OVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
Received: from CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:95::7)
 by MW3PR11MB4761.namprd11.prod.outlook.com (2603:10b6:303:53::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Fri, 25 Jun
 2021 14:17:23 +0000
Received: from CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::44a2:b703:d98d:df39]) by CO1PR11MB5154.namprd11.prod.outlook.com
 ([fe80::44a2:b703:d98d:df39%6]) with mapi id 15.20.4264.023; Fri, 25 Jun 2021
 14:17:23 +0000
From: "Conor.Dooley via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <lkp@intel.com>, <jaswinder.singh@linaro.org>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<linux-mm@kvack.org>
Subject: Re: [linux-next:master 10881/13550]
 include/soc/microchip/mpfs.h:49:29: warning: no previous prototype for
 function 'mpfs_sys_controller_get'
Thread-Topic: [linux-next:master 10881/13550]
 include/soc/microchip/mpfs.h:49:29: warning: no previous prototype for
 function 'mpfs_sys_controller_get'
Thread-Index: AQHXacB9o4hhbaZqhkWQXV2Wahe+CKskxiCA
Date: Fri, 25 Jun 2021 14:17:23 +0000
Message-ID: <f6637f16-a8d5-db1f-5c4c-29b88ce020b4@microchip.com>
References: <202106252019.HwE1jcxX-lkp@intel.com>
In-Reply-To: <202106252019.HwE1jcxX-lkp@intel.com>
Accept-Language: en-IE, en-US
Content-Language: en-IE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
x-originating-ip: [89.204.252.178]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26547d8c-ea12-405e-07fd-08d937e3f3bf
x-ms-traffictypediagnostic: MW3PR11MB4761:
x-microsoft-antispam-prvs: <MW3PR11MB4761E1266D5EC3D2385BFA2798069@MW3PR11MB4761.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:635;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HP4wCIGivMZFOVb6YhChk1oGDU9vuish5elOVOCviq750rKNLrLgOYfiPXdE8OhI4ZppjoTku4iGT9mz4S4Z7gI5IUHQ0fHUefN7UnUYvJacu0gIxPQAvaAw3Z5eZpP3A2ZmJ3HenneQLi2XmJo2/2JojhmiIdAs6a/rlnmiJkVOueAjh96aDAUrz+/RFEsFtAlejVvb8xIUkInjyMxl/Af2aScpHOwMHc0KjyGLW0yi5N8mmQbk/8L915wgq6tj4Au6hfUpJFgz337uRkj73BzaKbOy9bN2tZK5bFLuQ7YcIGdU+GbUwZAoffvCm/pW0t237jQBvtWVUVZgU6CPdqxP2EAebjqf1i1ai5cILCmEXljXRVX2L+0iidpWrhOQNBJiqMg4tLyXWxES63KR5JZM7rS3+45tJJ8Fju76x+u16ktlqarfI2UGR22JbrxoufND9/UJ8gB7ix0Ipdzr1NgFatzMzXXQciw/BJ/YQcWmhIV+lOZ4D9n+AVwD6ZAyHk8IbfepHW/xGYIhIOcUkNha7E8VfLvkeRxBWoaUv4NUhwr7bLc2s/94LLlsS2RiD/lJiKhsb/VSA0MfKWrQvswYtWw9WyiuWIllvJ86P4/gOSLXJSxL6p/Ii5MxpQu4RCo8s5Gtxw8Jm0yq+k65E8zhG27fUgZtNq9ORBxUwXk/FW7xHcQRM5p3Z3Xticr1XZqBz6OTcAU/lR68n4eFyz5I2qDzP9H1CCfsnMr0h9PewKYEUsQdvRu8lik8Q4BCzd4y9FD1Wuq2h175f+JGNH4lHRTtoFuf+fOyM0dYIXkL/NYEIvcLDGrLW98dcnJF4kjVLMvCuxoElcXe0yw9hz2WhUZMpt2R89LQK9pKNYE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5154.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(396003)(346002)(136003)(376002)(39860400002)(83380400001)(5660300002)(186003)(53546011)(478600001)(966005)(6506007)(8936002)(71200400001)(8676002)(86362001)(6486002)(54906003)(110136005)(31696002)(36756003)(26005)(66946007)(66556008)(66476007)(91956017)(2906002)(2616005)(64756008)(122000001)(4326008)(76116006)(316002)(66446008)(38100700002)(6512007)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?DluyXpZYB96dtfaNb5hJPCIauVzEE0DicVF/DYwpwuQV6C2PQTfMtxZX?=
 =?Windows-1252?Q?ldPvO5uMQZE/ISmcp5vFYLQ6djkBanB9pM777nR39dzMy1L+uFDcf6tG?=
 =?Windows-1252?Q?B9K0h4hdwnI04jyiw9XVYda51JdUHcw5WXbTsyrOpQro4SFowbh9of38?=
 =?Windows-1252?Q?L+zUDCzLzOGgrrZiYwkGXtc5HkoTyABcLscTbqOdJX736i+j2dxtPZ/D?=
 =?Windows-1252?Q?5xPTrpTo30OSpvuI1VEwjUk3iJDjwc+yCAJ2v9F88rHzY22Ul6M/geNI?=
 =?Windows-1252?Q?WxcvBSUENQio6HUOtd045MeAr5VSeMuHR2FYpZdtK5rOIi/OJdxG2Hxl?=
 =?Windows-1252?Q?TTXcJSOd8QKWAJUczsPQ0eCGw/JlP+BAdBve4YAq6Ls/bwqNgRfHo6GY?=
 =?Windows-1252?Q?7K1mqdWkMgOP2gA4f+BRfkfgpf53ZUfq1aAiwGlwSE8nd+nB6NgHlX4z?=
 =?Windows-1252?Q?H1O8eF/AR6hh5PTkBITXl2I0+2x87BM+j3cGHGPY+EyvlRZrvBNzc88s?=
 =?Windows-1252?Q?E8jNo7oRhxYalsb/Stj4x+jlrc9UZIsVJFA27oo2BQcgvrotzcs/gxZj?=
 =?Windows-1252?Q?rDuDf1rdTpgvqZh7S96bzbMSfMo632kouTPbTPYwlfCHwqD4wQpm4xjj?=
 =?Windows-1252?Q?yoViH3k1arrjwyK6cg03L45jG3kbLs2bnfLIC+kTxyma5EDSvMx00jRg?=
 =?Windows-1252?Q?vMMpNdP+7bmnvNckWl0NjshsqPfHm1Bzp/dfK/Ij28CY/b0W1/3dDrHc?=
 =?Windows-1252?Q?zAXSP1uu/gvZuqYRAqZ/aIwmAwl1iJY7RSju0MCnBrcEjYQx/uRn65ds?=
 =?Windows-1252?Q?ByMrDUtFURXA/o/0dhJED9EpAbxOvbBWeD/QYN1tFRx37Ka3qMC3QoIp?=
 =?Windows-1252?Q?hFfxO2dJPZrfvkQD4/u6KwResq9I/Vfnl4epref47LQkuVlHmiMFWo7k?=
 =?Windows-1252?Q?AzAmLFz0fK4gj7ZOQSjFvS/tipxLEeO+nyoUtEWJ4+o1TjkenscPYeM6?=
 =?Windows-1252?Q?YKZ2kjCM999OUgKB0cek2+5yZebHCIbJotsLwfvlIoEaQTq619vPJTCf?=
 =?Windows-1252?Q?x0IIne2SD5h2gvZP4dLjvP95Reh1isH/Lufu9SAJKEmbngq7A/6yMpY3?=
 =?Windows-1252?Q?7UEgL3Kg0kFVsLSnSVtKLO6fYck0qaIYwGxle+OESDc2CzHH0feGLTxp?=
 =?Windows-1252?Q?bkmtceTe4pScnsFZfFtT/Eru8oLhY8/YHun9L3dF02vfsUAcJqQepCPX?=
 =?Windows-1252?Q?fGOQHbDhJMeV60yzmpSkFe8di6NfmnaTVHJIjLWEDf9kroWM4XzjDRGO?=
 =?Windows-1252?Q?tkXKy7Cyd60tg7E0MPtLqGGm6MbkBVOTef03OD4X/8EjjFc8bAaGr5/d?=
 =?Windows-1252?Q?Ag1LA9GRJXIa3NADqr6Is16xAc1MvojSW2w=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <564117198ECB5F429864899D1A60F183@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5154.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26547d8c-ea12-405e-07fd-08d937e3f3bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2021 14:17:23.5784
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rGB5NJnBVxg7GPw17bEHzvOQX1TsC+zAO+Zf0+UPA7RcKCcQu9Yjtoqj1rzbIb7O+erl3pE7k+zi0aqS2JEL4ILvpOLku3V1tSPrnuuTDIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4761
X-Original-Sender: conor.dooley@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=nlfi5IdM;       dkim=pass
 header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com
 header.b=UxbKiNih;       arc=pass (i=1 spf=pass spfdomain=microchip.com
 dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of conor.dooley@microchip.com designates
 68.232.154.123 as permitted sender) smtp.mailfrom=Conor.Dooley@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
X-Original-From: <Conor.Dooley@microchip.com>
Reply-To: <Conor.Dooley@microchip.com>
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

On 25/06/2021 13:48, kernel test robot wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
>
> Hi Conor,
>
> FYI, the error/warning still remains.
Hi,
I resubmitted my series since to fix these errors and another, plus a 
fix in another file.
I believe i forgot to add the reported by tags, should I resend with the 
appropriate tags added?
Conor.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   8702f95941c215501826ea8743a8b64b83479209
> commit: de5473936808627fa98c3d2e8e3fa3076338f601 [10881/13550] mbox: add polarfire soc system controller mailbox
> config: x86_64-randconfig-r015-20210625 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9ca0171a9ffdef5fdb1511d197a3fd72490362de)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=de5473936808627fa98c3d2e8e3fa3076338f601
>          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>          git fetch --no-tags linux-next master
>          git checkout de5473936808627fa98c3d2e8e3fa3076338f601
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>     In file included from drivers/mailbox/mailbox-mpfs.c:19:
>>> include/soc/microchip/mpfs.h:49:29: warning: no previous prototype for function 'mpfs_sys_controller_get' [-Wmissing-prototypes]
>     struct mpfs_sys_controller *mpfs_sys_controller_get(struct device_node *mailbox_node)
>                                 ^
>     include/soc/microchip/mpfs.h:49:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>     struct mpfs_sys_controller *mpfs_sys_controller_get(struct device_node *mailbox_node)
>     ^
>     static
>     include/soc/microchip/mpfs.h:43:12: warning: unused function 'mpfs_blocking_transaction' [-Wunused-function]
>     static int mpfs_blocking_transaction(struct mpfs_sys_controller *mpfs_client, void *msg,
>                ^
>     2 warnings generated.
>
>
> vim +/mpfs_sys_controller_get +49 include/soc/microchip/mpfs.h
>
>      48
>    > 49  struct mpfs_sys_controller *mpfs_sys_controller_get(struct device_node *mailbox_node)
>      50  {
>      51          return NULL;
>      52  }
>      53
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f6637f16-a8d5-db1f-5c4c-29b88ce020b4%40microchip.com.
