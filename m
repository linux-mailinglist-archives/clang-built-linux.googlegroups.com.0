Return-Path: <clang-built-linux+bncBAABB6NCS72AKGQE4L3WQ7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7211619C078
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 13:50:17 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id p18sf1291521wmk.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 04:50:17 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1585828217; cv=pass;
        d=google.com; s=arc-20160816;
        b=CioApoP/7qQHibpLSYLJ+vzTyLWA//ZBsccnpYL9LfV5230aat5qtt4RweWrdAJdC1
         RPxG5MPPizqT795g5G93lz/3/MqnSKFJ+dgJJrm4IgrJ9Ve3zcJtRQJAJwxuG06Z37Iy
         65HNmkaNi6cEXG1RPjQvwnb2Q+0xOcW/Pi39w9TPg5D3UdQHT6xphIGSqc+lqZrjVCYL
         IBPcT3AfUkTGs8GrHDWfqKYnUXqbUZYo4BjxrbtlES50T4VQABpwaDdaX7KV/9nZc0+u
         lH2cJ1icl86koUZhxBVWxZ92GYg4Hi9t4p4Eypr68iq4vsaKqv0X/1lW64YK6KnOan7L
         oWOw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:original-authentication-results
         :mime-version:content-transfer-encoding:nodisclaimer
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=KpkJGhjoVlgzN6V40TDND06GTF5YqZrbAb4EZMlXLWQ=;
        b=PrH5i4ymLARfAZTZbTt9opwuW7BrnTA5ZDso6k2z7y+AZ0nHCs2t5zX5F9rXWzl8f4
         8JIN14MnEyg4i+zEMXjTz3CNMT8EnQBYHGXeiJnfC2pLNcfYW4SRXnE62aieu5Rp6chP
         ZUBmn9alvQ8GLCRHbfRhwGTeQM7mZsZJvRWz7QwxKy59+FG0KWix8querbkxzCEC/cWM
         fRdETlX7bOQmveXWGx7lCMW2SbhvGQJKXgMH7C2gIrNQ3sbMLKNiZ2IFbZbshcP5OQzc
         dvl5ZZ2MiHnSHqpziWYbOMpcmvkD2TzO8wwST9psaiz30DlFWCoSEwtHwtKyyzi0DZrK
         3ZkQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="RQvk5Da/";
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="RQvk5Da/";
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 2a01:111:f400:fe1f::62b as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :nodisclaimer:content-transfer-encoding:mime-version
         :original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KpkJGhjoVlgzN6V40TDND06GTF5YqZrbAb4EZMlXLWQ=;
        b=j3NLDNjtIbFaY2r7m8CuQfbzfSeHQSZOS7CaIbXMtB8FzOi4pH6193mV3YZrkQ+bcQ
         hyA+k3cOAwyKtfSkQRBTJh5QdHEuvkqpPwqIwio35p4ex46TAh7f6nnFFDbvLfjKNq/r
         R76TgM79lMAoxYSwwFxEGK9NvC4mMb5o8+B+7hdzxPrqXUS9YJljPiOQyiHYM+FeM7Ay
         yveR80BGHGoOSTPo+5gYUX5Y6sgX4LWZhc4bCchBR3Sd+BRcxuV0EEDGQuSaTrUThykf
         N8V8FHxLOR9iRrVGEANN4K/9whT0ho4qvYCzzN3GS01ml0IHnOzQTdFUBX9pVkiXaU13
         ivqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:nodisclaimer:content-transfer-encoding
         :mime-version:original-authentication-results:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KpkJGhjoVlgzN6V40TDND06GTF5YqZrbAb4EZMlXLWQ=;
        b=Hvb1ms5Z8LbPC842WgvNWyXkzDU3vQV6dTOeD1MfwjMGLylSCRkucPCh/4iuu36xcN
         EUzZ8y9ltlzL26L7Xptae2Y2VmgVhTZgsCNbc7uuD7cERzyUXl6bp6Ba1Ym25107Fuoj
         2CnIk55FVn3KgeEM0W0mfmq00qoB3doDKYiZCKgoxCUeKQJ/2QSOYM+b9K/xEJGPKjcY
         s6HlIAmlbPs8APAn7fd+3QkbA4+agj7//XqipLj7XPrrgpS/oQUVXSd7R5sK1hR/cZLi
         GCg+Fi5uz+rE0EHjopPljznN1Uu5wRhQVY83NH4Lvx2W3XJfTmrq1mssdBKZJp56yhMJ
         y0/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuajenRB1BvMs0hWYlowcIKX5YgV+gfNssb3w7xFdTUkF3LBjKrv
	mvj/vPD8IztMp1RSOr+pM4g=
X-Google-Smtp-Source: APiQypJL6iWqemRfMnNmWaLpWwI0T/uzJHY6d7J//YLJTSPWqy7APkjMoP2WQb60olfJoaCYUGYSTQ==
X-Received: by 2002:a05:600c:2297:: with SMTP id 23mr2951317wmf.166.1585828217126;
        Thu, 02 Apr 2020 04:50:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f2cf:: with SMTP id d15ls3760wrp.8.gmail; Thu, 02 Apr
 2020 04:50:16 -0700 (PDT)
X-Received: by 2002:a5d:63cc:: with SMTP id c12mr1549243wrw.77.1585828216735;
        Thu, 02 Apr 2020 04:50:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585828216; cv=pass;
        d=google.com; s=arc-20160816;
        b=0/lAXO2S2T38dM71AfGWCTb2PVNRn/HQeEOxtTAr9+lSdgdPuL5+W1LKvaCxDURkoS
         19ug9tBcE7N757Eou+qnb0rgs+q+Z2Ila/dD6j72aqmnVURJigoSsXw3UuwPYd13ONOO
         utepR0kysWoWUIIbjvQ8q/9Ud0d3YFfBbgClGWjhUnc6BFJSD/OFDYIIEJc5LoJUiJdP
         DVONNbuqq0hCR/XsUsLYwRiOxDvFVkZEv4Xizn4B8k7vQe1YP85wHuswJZTp5N+TeUy0
         a+7jK5zcSj5szlDVOyAE/21QazeNTtFM4XcIzasFJ9mTF4dq/26EzQ1s/FWT4wC5vZe7
         wOow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=original-authentication-results:mime-version
         :content-transfer-encoding:nodisclaimer
         :authentication-results-original:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature:dkim-signature;
        bh=o3SHjzv6VksVqXOwVc86rWwPnhsLVe8wD+7ZocLt60E=;
        b=Y4s4VMI6TYBIWrID/aF4mJEnP2qbpIxTwgroYkleexI06YWlSOjURYdhN4eQ8c6WPb
         dU264g51+AHpaDuPOg7qMDEijsZRGpzPpKa9HowiTWKTkD4dcHT2otvz+++yiHgU1Mwb
         dMGOxmg+Xn8y0A4GTmgaPDxIipcsZqkSohbC/qHlpc4xO8zMN0ZnzV3TPMnSaVDsO8/T
         toG6O+Sf216HFKTm87BqirvoEZGgaqcRRC/1xZBTxiFpo/kEaZlUaKLuvXlDk0hChNfS
         dUIvqRex7hfmqyh0hrD3NjKQZMuScZUY47wcysvp+oYEOjZs9Cv109Yao+uW/sOackzB
         uZcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="RQvk5Da/";
       dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b="RQvk5Da/";
       arc=pass (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass fromdomain=arm.com);
       spf=pass (google.com: domain of peter.smith@arm.com designates 2a01:111:f400:fe1f::62b as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (mail-ve1eur01on062b.outbound.protection.outlook.com. [2a01:111:f400:fe1f::62b])
        by gmr-mx.google.com with ESMTPS id z84si253289wmc.2.2020.04.02.04.50.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 04:50:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.smith@arm.com designates 2a01:111:f400:fe1f::62b as permitted sender) client-ip=2a01:111:f400:fe1f::62b;
Received: from DB7PR03CA0107.eurprd03.prod.outlook.com (2603:10a6:10:72::48)
 by AM6PR08MB4817.eurprd08.prod.outlook.com (2603:10a6:20b:c4::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Thu, 2 Apr
 2020 11:50:14 +0000
Received: from DB5EUR03FT055.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:72:cafe::aa) by DB7PR03CA0107.outlook.office365.com
 (2603:10a6:10:72::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Thu, 2 Apr 2020 11:50:14 +0000
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT055.mail.protection.outlook.com (10.152.21.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Thu, 2 Apr 2020 11:50:14 +0000
Received: ("Tessian outbound 4b84da486446:v50"); Thu, 02 Apr 2020 11:50:14 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6d5784621320604d
X-CR-MTA-TID: 64aa7808
Received: from ba279f4a7043.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 9D05B320-9572-44A6-9603-450B6F14C06A.1;
	Thu, 02 Apr 2020 11:50:09 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ba279f4a7043.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 02 Apr 2020 11:50:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mMGXJoKHuVuIldI/gvDRnowENj55uq1/yJWnoIoPvcVW7+zum8DF7jzB7dQLeOsq0qu5lOOKJ8IU6DhbxCEeRlxJCZax4sHucPnDALjUlp558joOqjwdYHjnzMN9EJWXd5j3iBnlN/H+gqaE1P/QXgUedTnweY6vnSMOzVfU64s2H1gboX+Mb2x157IMv5NcBlY53Anjl9rse4ydCwXosQHaDccMSGf8D4N+Z35RwXuBTBn9LvDtegtCrbbYOE5AphUlAFlPGys3/ZQrIAhojUYCNm+MSRybpapNFDtCtahxW8/i5YpumQ3syUSsyHVhns30Og+84sbzuKhdWVoR2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o3SHjzv6VksVqXOwVc86rWwPnhsLVe8wD+7ZocLt60E=;
 b=R8bClHl7pAg8ZmsVGS0lG4zMOPAXA+2+qSJCtwffv4SuWXK/uu6YaE0x3NjFWn5ckl/znjppPcnLc2vwOTS0Xg8YIftpzTTuARqpMJ3B3yF2/WBwIBcMae1Xr427or8rbWH2f3v4l8orF2CvgD7ceK2G4zIinEtKUxkOdZEu6Yi1/noh6kDHEad/9CNrjK7VaoWF9WX16ioyuAHXb1x/Vx/aKTSDYnivkrMMvHL6GWXFDQAbIhCYiCK6tA1xWXZw4j5NaVIUQHVOagtJxZ8ZRDUldzg4Mzs61y7MyBObOAUGs6UusiQGBpRmsqy5a+sZLfAtvoOwFZWz2FB5ASKNDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com (10.255.78.22) by
 DBBPR08MB4235.eurprd08.prod.outlook.com (20.179.40.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.15; Thu, 2 Apr 2020 11:50:06 +0000
Received: from DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d]) by DBBPR08MB4823.eurprd08.prod.outlook.com
 ([fe80::f46d:4b0d:d07d:949d%6]) with mapi id 15.20.2856.019; Thu, 2 Apr 2020
 11:50:06 +0000
From: Peter Smith <Peter.Smith@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>
CC: Stefan Agner <stefan@agner.ch>, Tony Lindgren <tony@atomide.com>, Russell
 King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, Linux ARM
	<linux-arm-kernel@lists.infradead.org>, nd <nd@arm.com>
Subject: Re: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Thread-Topic: [PATCH] ARM: OMAP2+: drop unnecessary adrl
Thread-Index: AQHWCNPf3/UDtOa4QU2PsSz3b6wtIqhlszgI
Date: Thu, 2 Apr 2020 11:50:06 +0000
Message-ID: <DBBPR08MB4823129E272220712B470716F8C60@DBBPR08MB4823.eurprd08.prod.outlook.com>
References: <5a6807f19fd69f2de6622c794639cc5d70b9563a.1585513949.git.stefan@agner.ch>
 <CAKwvOdkyOW6RXTOCt1xMp2H+uH28ofByQOjyx776t8RDxTED2w@mail.gmail.com>,<CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
In-Reply-To: <CAMj1kXGYiMobkue642iDRdOjEHQK=KXpp=Urrgik9UU-eWWibQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.140.106.52]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7136baf0-5841-4976-e1db-08d7d6fc01b2
x-ms-traffictypediagnostic: DBBPR08MB4235:|AM6PR08MB4817:
X-Microsoft-Antispam-PRVS: <AM6PR08MB48172F5851A386846C9D0CFDF8C60@AM6PR08MB4817.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0361212EA8
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR08MB4823.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10009020)(4636009)(376002)(366004)(396003)(39860400002)(136003)(346002)(55016002)(9686003)(7696005)(66946007)(186003)(76116006)(86362001)(66446008)(66556008)(26005)(4326008)(66476007)(2906002)(64756008)(91956017)(5660300002)(71200400001)(52536014)(6506007)(8936002)(8676002)(81166006)(54906003)(316002)(110136005)(81156014)(33656002)(478600001);DIR:OUT;SFP:1101;
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: fAVJyEuS8uPo9WMBLRCpOU1H3irqxGXB76u2wfS6uwoeXIHybtz++ONOi3rQ3NXXbbz4g38PzGVJblxnGSySy2kKx7KAti0yfL5XQXpI/SSm08QxrkJltSM0n6RnWjgX+hVjoWp8sLhr5o6DKxNoe8DiGlsop5if5N2OTDdJUtWjb5ghM6wu9dFV5fSw1/5Czm3RIJzcHdaaK5YfG5Z+wX7WnIk+shKgVJQZCTFvP4DBFcQeRVesAL1T1ME/TKsmu9nfsXXQyuNhAhJEFKIPXrU/5d8ji62PkUD3SEpV9nvOKEi+hlDEO8QtX6dpd2Ry7cHaUWKL74mpVA2mebMvH01JH+pPbL5QhsT23D0m8C03JHAh39KUczYCdoagKx2XjHaiMj9SNEi1d+J8vf1a1s7nb71gxC7s6lO1r2LT4Gj7oCOIdNDbBbo7JCfPTdUb
x-ms-exchange-antispam-messagedata: LF0IVdtaZ71m8SOUI+4+OL/4WdJTMK/Pz2+zTuG0PaVYD1xF0YZ1eyVyrDYeiTEOXZ5UAxG6FUp8/GyECBwByYeauowjJ1ugAutHghp9zIL53HPitLfbiajkkofF3fcMQ72MuPOxRRSpWyFYlOVDgQ==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4235
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Smith@arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT055.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFTY:;SFS:(10009020)(4636009)(136003)(396003)(39860400002)(376002)(346002)(46966005)(86362001)(82740400003)(33656002)(47076004)(8676002)(478600001)(26826003)(55016002)(9686003)(7696005)(81156014)(81166006)(336012)(70206006)(70586007)(4326008)(52536014)(5660300002)(54906003)(110136005)(26005)(8936002)(316002)(186003)(6506007)(2906002)(356004);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 218812dc-5b3b-4cc6-4cf2-08d7d6fbfcf7
X-Forefront-PRVS: 0361212EA8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: itpk6TfDwKVDEfHJ9hf6e15FLQreY06UIrqpKzL/RQXW4sPSLCBq1xwuDxZ4TKjcLQoW9X5XU6L0qwqbytvtGRdXbUmjtSKBrFAQuvwuPGGUW8B/dqNukWkbGQnTM2iAH90IUuN5ASNUPVXI+3n9UXuHVwS9W44aYHuqiLfkgHQm8p5VsDi9NKzL6hJWVufnfLA/+0iyUeCB0pjjowPELXRzjcMC941LuzqxvuRMKJeI0vFajwz0PaqgcG6xcyHpjb20hVKeVysmr4bpjrDNshLZv7JzEGFyKqrX1nVgsWrMvvcCDO+d7b+C1URiHiitGlfcCtVLa7SKU4kuS97zzxdTkxxST3AY8MUctBKMjbKifnRduuKImVhxean1cc7Fbxbze26TyWzelsFgh7ORhRVjUuDm+eKy8W3Zv0LKVWGnqpD+4CyuMc8GaR6Xk7ah08iv9bA+toIIaB7fbwNTU3WcjmAAHFXyOrbDccV5PQF08alyV3aRVquMxFRUmiXFE/jbWEuJeJngLKxQ+3ja8w==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2020 11:50:14.4727
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7136baf0-5841-4976-e1db-08d7d6fc01b2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB4817
X-Original-Sender: peter.smith@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com
 header.b="RQvk5Da/";       dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b="RQvk5Da/";       arc=pass
 (i=1 spf=pass spfdomain=arm.com dkim=pass dkdomain=arm.com dmarc=pass
 fromdomain=arm.com);       spf=pass (google.com: domain of
 peter.smith@arm.com designates 2a01:111:f400:fe1f::62b as permitted sender) smtp.mailfrom=Peter.Smith@arm.com
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

> I take it this implies that the LLVM linker does not support the
> R_ARM_ALU_PC_Gn relocations? Since otherwise, adrl could simply be
> expanded to a pair of adds with the appropriate relocations, letting
> the linker fix up the immediates (and the ADD vs SUB bits)

Not at the moment. I have a patch in review to add the G0 variants for thes=
e in Arm state at reviews.llvm.org/D75349 . As far as I know LLVM MC does n=
ot have support for generating the relocations either. This could be added =
though. I agree that using the G* relocations with a pair of add/sub instru=
ctions would be the ideal solution. The adrl psuedo is essentially that but=
 implemented at assembly time. I think it would be possible to implement in=
 LLVM but at the time (4+ years ago) I wasn't confident in finding someone =
that would think that adrl support was worth the disruption, for example th=
e current Arm assembly backend can only produce 1 instruction as output and=
 adrl requires two.

I'd be happy to look at group relocation support in LLD, I haven't got a lo=
t of spare time so progress is likely to be slow though.

Peter=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/DBBPR08MB4823129E272220712B470716F8C60%40DBBPR08MB4823.eu=
rprd08.prod.outlook.com.
