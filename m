Return-Path: <clang-built-linux+bncBAABB47U6CAAMGQE3F42LZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E88230FB0E
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 19:18:28 +0100 (CET)
Received: by mail-ej1-x640.google.com with SMTP id h4sf3278232eja.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 10:18:28 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1612462708; cv=pass;
        d=google.com; s=arc-20160816;
        b=QPxPGozUL9uX+Iy+Y38cK1uz/ka6qGPkHFzhPzz3hOkKK50Gp0vbNmvTijTN5IGAdb
         qoRWien86ahM4IG7BXH+EFHzNSfG6Vyq3sldQGEoZd72PlmdUpY6Gyb1jTYv539Wjaqu
         WrXdlq95mjqTONMOBV74vfKaB0+L4z8J5tQaXOguCKExJ2rl2c3feIKi2i/gA2D4obMb
         t5/gDVbJ/avjZWbB7oV4LX0C2h2lNJbMtZUHmxSTbWO6ateKObgpgjGDljaJHicUqz4/
         L+kFpyfmFMiN6w+eqGrniIUGN3Bw1YC8yLy9Ii0XHwnHjjk8LC6dy3/iAKuM0rNfcvRQ
         HF7Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :ironport-sdr:dkim-signature;
        bh=jsaTdPlMZNF4a3NlP6QGJhEsadrSZZ0V5/IphtQBEG0=;
        b=J+Ye6YxxNDWdt1QQaMZJJLsBPIeGF4/WvN7U/nO5b5y32n7L/EVR2ABnIibKSO+BDf
         aKL66O7i4cSdYRj+uUsqFdNRrjuVOGHGF9eEpjALKYkqcHyBJsI8PkBswdo+ivWpUByr
         iciOW7G390MYSnJutNm2ueizLFnCia7uu/nGcW+TVqliUjCMH40jn2BO/AQ2A59RdMDW
         Dv89oJPKncgOO1prnuByN6B8xWfTZLeGH4Wtu3i2DSV0xXF5ddQ3hg/1PUNkbIqXg8Tf
         vDhKuyPmTjqLC4gyFKo8R0VlkYTopHXk1849uLHllTE41ocsc1T7rv5wGwPsxZrJdbxz
         8MSA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=hk5vtFaE;
       dkim=pass header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com header.b=cWc10Jdm;
       arc=pass (i=1 spf=pass spfdomain=microchip.com dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of claudiu.beznea@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:thread-topic:thread-index:date
         :message-id:references:in-reply-to:accept-language:content-language
         :user-agent:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jsaTdPlMZNF4a3NlP6QGJhEsadrSZZ0V5/IphtQBEG0=;
        b=NGIFnlgWzY1cTLRpOpRdRpaToZhH7HE2Z4DHXyBvMjZ715whGMpKM5Hg2fubMUaojp
         Frzg5o2ALSkLCz/t/0KmXzCJv9Qfm21B8ypViL4w40KI8bjF015oymI7i4pjPkjLO/mg
         KPomUaGhfX27XhIT8nU34qzEGzVpIzeMwRvPq8+sNodAe/vkUjDq4sDXt65c2LOwqNIg
         4p+2+KpwTMm9CzOoXQLEkKWB2cVFML8ftZEZMGeq4Wmlu1E+VYBtULpLt6D11v2WEJ/E
         9/4sSxnbG04Rk00800krCrW5KCQunByve4e7L2bB1xCsiabwXrxQHCZZGUZ+Z7HZDw4l
         tYyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jsaTdPlMZNF4a3NlP6QGJhEsadrSZZ0V5/IphtQBEG0=;
        b=mBf7n4CDiabzZvWPyxBN8N3AWq9x28R9fXczzw4pfP+373NNDuVqd+Exxr7Fi5IvYQ
         LbST+AjGsir4Qx8/PhVYNBdHwtt60jzdgr0NPd+kJ7PkSbbhSStB87gtTbo6RqSUo+/k
         EFQG540Xcxh/rejRzP05HC1XHkgvuS8iaXNOiYpt8ePa+7JcUrQn58d8hmu/FQb8b+E6
         k4DuP7KgF8SsSq4xzKWDuEvYBopiKYT62kJ87O6dTLk5d8xdaSvtP14YxObwnBJHQgqS
         P8QqOT+AqIcV8R9NQ8c+Ayaua4Xh2q126xppg78dQhmvofza9ATRhFxnjLsc2NLnOC7O
         1cJw==
X-Gm-Message-State: AOAM5305ExZJxUnrmWN9t9SAhvdAvSkkdus4ZiQ76+npprDXJ0UOVLSp
	4enfZtsoo+nAQtfRg02qjRE=
X-Google-Smtp-Source: ABdhPJzU/X1QBXBY/ESeXymotC4kc/9VsoXLmjrr3q+0nrwRVawitOn2DJ54PnILOk/uYtdqNeF4kw==
X-Received: by 2002:a17:906:2583:: with SMTP id m3mr333069ejb.499.1612462708141;
        Thu, 04 Feb 2021 10:18:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1cc7:: with SMTP id i7ls2307218ejh.9.gmail; Thu, 04
 Feb 2021 10:18:27 -0800 (PST)
X-Received: by 2002:a17:906:f6c7:: with SMTP id jo7mr408083ejb.178.1612462707439;
        Thu, 04 Feb 2021 10:18:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612462707; cv=pass;
        d=google.com; s=arc-20160816;
        b=nPFATpuG/l4Txak/9zcNjOeKWqtp1mQih8002RHyLyLMZt83WfCJjNvMY/L6tdRvJf
         zHrwx7uQKdlC4+Oi/4HPjbJM6M1+M7OfDz2C2bfbekvjJBX8XjvQAwf5dnKpoA2HL0+Z
         kEGB8wYpK6Q92hhh7Xu/ivrVe0vu83y0QwtAVwjSw4Yg1e6Rs/D36DWtCPTA4n2yyAu8
         1u3wKxv6Pus5GbMVvAMt/pT+tha9q2mlXU66lBLn4wapxR93pL3qWntABorHtHo6H/iV
         pecSv50pCHfQhk2yQls7/okFcyOP4Bi4rJVOGDhhViinNsCksm/8IYkdC8dXN3qxs715
         +Gpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=mS6rEgMwGeeKjHBoaN7R/2Q2r4gA+qYjzKdedI7YHq4=;
        b=NDOqPg83KcIQ69QvpOXBFvMcm7lh4vhsjfaVfVs+exehnPutGK6MifYcdoVOhy306A
         /oH/RU8dp40T27qLJJILCLk8arAXuUVTNIV0jviRkiCGwkH3XGBDKH35uXePBg1FG303
         mTb870SFc/3Ell7x0MC9GqpQTnlGWeUQKD3mvXkkshEug0ezo/yBE+7r0TNnDbzaFsiW
         /mUWHIlRC83ZmMnEdhvF2xU1STkHWshP50ZKx1Zqv5EePfcF5nLOWh9QEImlnUCUM+3l
         /zRnRjUfg0K+1zd/5RNgaO5KgpkdTEwFdOwt+vr6gJ9OSuKtRkW51Z8rhSYTfUx2eogM
         h/IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=hk5vtFaE;
       dkim=pass header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com header.b=cWc10Jdm;
       arc=pass (i=1 spf=pass spfdomain=microchip.com dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of claudiu.beznea@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id s10si141603edi.4.2021.02.04.10.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 10:18:27 -0800 (PST)
Received-SPF: pass (google.com: domain of claudiu.beznea@microchip.com designates 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: T8HHXIcYR3aA2Tgf1jid6I4+sAzawDgoJGp4c9PobZS+TZieIoBHEfOwlZq6hv1PyAIXb2LbcB
 fb99yOdOyNV7xZ2BRdSBE+oqTmfyr3uHTUkFq2kiQV89d5D2O/i5oNUdqSi526jBVXl2ECv6GU
 jJXpm0Gr6jxuUF0I30irvfeGVTYINA6OPsOAA19Tg8rx52wTMWlju2bfJnxSbOVYxnTmCVrVHM
 lB+OMXi45ibvy5Hu0LobDmgvUHecGf6Wr37WiwV9+PKfveTtpSg2Y94PDoS9C7UFoI/v7MEYhR
 xJ4=
X-IronPort-AV: E=Sophos;i="5.81,153,1610434800"; 
   d="scan'208";a="42955131"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 04 Feb 2021 11:18:24 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 4 Feb 2021 11:18:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Thu, 4 Feb 2021 11:18:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HAGNQ3I8kVuWKt2qiShGe1E501MEHosotFx5aMdWcN8wNTD7QieOgwyDqs6yQFKh7bpaWfTKzsdF7efWGzVEJbT4UbmZNcLEBpE4xH4EsW+SyZjL//MPo+R9Xt2w4Lj795jQBuhfe2LxKMPtuHMVO6bZcGjA/hVoj23Zdmd5gBtjd+hJ8ZDb/dFt/xgqdxfn2eEUyHQT33cuaKAzJPZgZyXZiaLwPIPR0EYO1c+lVXvEOymMhTM0Y5NLign4nkox5Est/WbSBfu7eWrCw56nKEL2pjzFkVBGRLKFWjG67N59fslQpLbrZ6xE6Ql6mAs3H7JTmU5IkyYo7b1BZ3EFyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mS6rEgMwGeeKjHBoaN7R/2Q2r4gA+qYjzKdedI7YHq4=;
 b=kt2YWJPoiOZiFySaUljLUK9FsZSjk+Ua5DlKkPeDJrQLiNou5U9ddFP/k2JU0CoIjMuSyt2jPT2z8Sf4EaW488PtZSFak8WWrPxZ+U5y4SEMCWKWzNCUNcp4TCrSo3GTKcr1TglfnzSbM8mP+IFEy1H8nWMskIUeWZohm5kg7JvRBktV9bBBJ06l8753p4U3eLd5vNbU+c4vxbnmPe2/+cBMJ0q06zrB8ysWDONvIM7jHPdAHH+jjI3FZbA5vKUzIY6ImetpWO9vy6VewdpnHzvVQ3okjpzPu3IGEjPzktUc1hKyDHPBiPPlRMi8yOsEt+PuHfz32HNXeAwGEZH0XA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM5PR11MB1993.namprd11.prod.outlook.com (2603:10b6:3:12::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3825.23; Thu, 4 Feb 2021 18:18:14 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::b96e:6776:6971:80f4]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::b96e:6776:6971:80f4%5]) with mapi id 15.20.3805.027; Thu, 4 Feb 2021
 18:18:14 +0000
From: "Claudiu.Beznea via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <arnd@kernel.org>, <linux@armlinux.org.uk>, <Nicolas.Ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
	<nathan@kernel.org>, <ndesaulniers@google.com>
CC: <soc@kernel.org>, <arnd@arndb.de>, <sboyd@kernel.org>,
	<clang-built-linux@googlegroups.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] ARM: at91: use proper asm syntax in pm_suspend
Thread-Topic: [PATCH] ARM: at91: use proper asm syntax in pm_suspend
Thread-Index: AQHW+w8qQUwoH91XlEGs7R8gkYKHo6pIThMA
Date: Thu, 4 Feb 2021 18:18:14 +0000
Message-ID: <c7e601ab-03c0-7b20-9678-3f9f4615836d@microchip.com>
References: <20210204160129.2249394-1-arnd@kernel.org>
In-Reply-To: <20210204160129.2249394-1-arnd@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
x-originating-ip: [213.233.108.88]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 80926142-59a2-43f4-15d3-08d8c9393d01
x-ms-traffictypediagnostic: DM5PR11MB1993:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB199344A0959F1ADF0D46910687B39@DM5PR11MB1993.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ++vkoc2lnFJ7WKplb4iC6fZ/D6YnTPJUN91fALo0A8fvNVq0CMbvOj7KkFqvOE/eu13Eb323ClVzDI1S1cw50wLmQeyAU6lu4IEYjGZGPSXhK0hR/a4VwzgvdBrz4lZiu8I3tjlhLMwXF0Nwb9ncwwOvYogSRQGbt1eS7czf4aU2JzbWFoctaOrWDmg4k4vh8BmjqC1dyD26m7M55iIZx0qYau2XDnItxfm37iCfe7/BHSNQ2cXHtT54HKCna6gqXLU4WrrVyjWKnhXPzEweBdFzNK5VXTgoUSRn62reFvsoe97DKz8zYNns44/mOGky9cNkez8FvPt9oZzQZWDH46Skqoibv2TOUZz6jUHg+pLt75HObH2p0aBXtX6hWnmuuEknwrNl8KpFwD1418toRcSaLMBxh4ZufEvnkkeZAn8VROoh592KuNitsjiquaBfv19UaLl4asVO7+2ObGmX83SmIShU6R5G9joNF+oxh1xVwULu6b1cjRJTS3XJR0Qj2/Ca+wsfsP/HopEKc6wOF/0+AXIQAAEcMOVO186zz72ZY1T+s5xXsdaTeb+p63GrlmokWC52VEa0BCw6foNZiM4MHq4yUAsGINVRerXf/PE=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3420.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(39860400002)(136003)(396003)(366004)(376002)(31686004)(53546011)(26005)(4326008)(6506007)(186003)(31696002)(71200400001)(86362001)(2906002)(6512007)(8936002)(2616005)(83380400001)(5660300002)(36756003)(54906003)(66476007)(76116006)(66556008)(6486002)(64756008)(110136005)(91956017)(316002)(66446008)(7416002)(478600001)(8676002)(66946007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: =?utf-8?B?R1F1R0JqaGlacEh5Z2poV0hKWjFGUGV4Q043bEdRVGNNaS9ndSsxR1FCN0pP?=
 =?utf-8?B?YVpBeWppNjYrTWo2YW9EVWlvQU9GM1luT0hDMlFEWE1uVXVBSUhXMDU1cjdN?=
 =?utf-8?B?Q3d3bTNwdHdnKy9mNndzV0RvaVp4b1Awc2dJZVk3RGJTbEY1NXRzd3B2MjIv?=
 =?utf-8?B?LytDOTZ5VDlrcnR3UEduUVZRQlVkZm42a3JlNXBDSjUxdHFiUkRzYnBDeWFN?=
 =?utf-8?B?bzNoQUswaTlndXNQU1NxeDFDZEJkZ2o3S2VkeExuZXNmQ3pyclg5VUp3VERB?=
 =?utf-8?B?T3A1MWJZaG12Wm1wTEJ2eWoweTlHL1hVM0Z6TEZpd3VKV1JaNjFGQUZ2d2R5?=
 =?utf-8?B?TGlENmNwT3pzUHBUMmtFOVB0bUhLUCtkdDNIcitzL0htVzZKVWNzOEhmYTFj?=
 =?utf-8?B?UnNXZWdGUFpnUWI2VlJoTkhoMjJVcWNaQ0hQaUVOVkVyMHNHOVlaTnlQQVNh?=
 =?utf-8?B?d0JkcGdiK0V0U2VJSENka2ZoQzM0eXNObFM2ODk1dGNxcS8wQXVVT1g5eitC?=
 =?utf-8?B?dnlaei9aNk9TWm54VlBsWlh0TjZoM04yUlo3U1pCSGRGUFJvdFJjdEJ1dkpR?=
 =?utf-8?B?a3Rjbi9oaEZMTWtCRjZYNkdpNnQyT0hVWG1mT29NcVVuTTAyU0s1NGJiRGtM?=
 =?utf-8?B?NkdNcHFGbWJlZERkaUFiMVk2NjMwVzBSUzhCQ1hZUmg5azZsenNCQUgzYTBh?=
 =?utf-8?B?WEd5N2FibXRJRnZTZmNGS0pxOGZhNFBDTS92UUErZGZUQUJmRldhYm55VEQw?=
 =?utf-8?B?OC9OVWZzRWNnZEhwWVM0SlpuZmpVaHdJMzNLTWJBbUxOWVF6MWVoYTJ5dUFG?=
 =?utf-8?B?SDlzTVE3VFJPOEdHWVRQbUovaXpQS2VhWTdud2VGeElqamVPQlRxRXAxOVR5?=
 =?utf-8?B?OG5YUlc2SlExM3FadjlzNUIrZEdoV2VyV0MyQWNSZWovUHVNeXRtYmJpbERq?=
 =?utf-8?B?MmhGZkNGc1VZZFBrblZpZ1VpcDFTSUo5NlNJZXRaYThqeDcremVmdG9VVmR0?=
 =?utf-8?B?NEtyekJENEdoSEJ3eHE1TVgzWTJZNWJJRXhXS2dIbzhIZ2hJYm1sTWgvbCtp?=
 =?utf-8?B?blNuNDZ0aVRNcm44ZWxaTHh2RkNNdlVNRmNRTndHOERkMjNRdkpaZVduT2F3?=
 =?utf-8?B?aEpMYS9CeFNYMzBDQ1JaZEhGVDhOSm90YjRVUnBzZjlDOE52a052R0NyVWd5?=
 =?utf-8?B?RFZ3WDFub0ZuYXBSNzVldGUyZTZONFcrN0VPbTNnWS9NWmFJSFRGWDUrR0pu?=
 =?utf-8?B?MVpsUHJTRVAxTWFmSkprSGpJRnI3NUppUS9oMzBodkUzOW81RFRGcTV1VU83?=
 =?utf-8?B?TklNMlpWNEZVL28xeFFzY25VRnR3UVNNY2hUc1JQN0hOaGhKSVROcWpuUEsv?=
 =?utf-8?B?azJ5S01XYm5rVWJTRWM2V2dZNHhjckdyY2d2Q0svWlBrdEx5UXRSMit5Z3My?=
 =?utf-8?B?RzRxY2Y4YkhDTWZZSUN1T2lweEJNQlBMeVhVZ1RpQk9RNHdRd25uSHVKdmRP?=
 =?utf-8?B?TzI2NzE5ZVIvZDZjODdmM3RSZkFuUGJDcXo3SUpiV29UTWZ6L3RVaHkzWDdH?=
 =?utf-8?B?OGlocjVBZFc3R0ZEYURiZFlTZjFzempLRFNDTkN3dHh4QWFwMGxxTE44Wm5o?=
 =?utf-8?B?MlZ3d2FQRjJjZk4vMU02S2Y0VS94L1FSTlJnVnJpWmZRNHhFeFFSWjJOSFRU?=
 =?utf-8?B?WCtKVXpBUVAwMXFxQU54c0JhaVJJbi95RTZnUktQT1I5SStZY05qa0RHMmlU?=
 =?utf-8?B?VkUraG1abGUrdGJlMnpYM3RjQXpjWk9BWG9MUVd1R2NoUSs1UGt2amRNMzJz?=
 =?utf-8?B?eThONUZZa1ZaejNjamZudz09?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <AD43F4833FCC8245888A679CE06E24CF@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80926142-59a2-43f4-15d3-08d8c9393d01
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2021 18:18:14.5675
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fi2vYrG0ksxu59gxdj07bYhsuceSjkofLfOUUtl3EgVnGRaPCtO9P02yWbJ8YJJ+abTOGMBYJSq/sT1gH4W6pT5yTvATJn4Z1H3tt4sSyxo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1993
X-Original-Sender: claudiu.beznea@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=hk5vtFaE;       dkim=pass
 header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com
 header.b=cWc10Jdm;       arc=pass (i=1 spf=pass spfdomain=microchip.com
 dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of claudiu.beznea@microchip.com designates
 68.232.154.123 as permitted sender) smtp.mailfrom=Claudiu.Beznea@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
X-Original-From: <Claudiu.Beznea@microchip.com>
Reply-To: <Claudiu.Beznea@microchip.com>
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



On 04.02.2021 18:01, Arnd Bergmann wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Compiling with the clang integrated assembler warns about
> a recently added instruction:
> 
> <instantiation>:14:13: error: unknown token in expression
>  ldr tmp1, =#0x00020010UL
> arch/arm/mach-at91/pm_suspend.S:542:2: note: while in macro instantiation
>  at91_plla_enable
> 
> Remove the extra '#' character that is not used for the 'ldr'
> instruction when doing an indirect load of a constant.
> 
> Fixes: 4fd36e458392 ("ARM: at91: pm: add plla disable/enable support for sam9x60")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Tested-by: Claudiu Beznea <claudiu.beznea@microchip.com>

> ---
>  arch/arm/mach-at91/pm_suspend.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-at91/pm_suspend.S b/arch/arm/mach-at91/pm_suspend.S
> index 909856c8a8c6..0d467cc40129 100644
> --- a/arch/arm/mach-at91/pm_suspend.S
> +++ b/arch/arm/mach-at91/pm_suspend.S
> @@ -446,7 +446,7 @@ ENDPROC(at91_backup_mode)
>         str     tmp1, [pmc, #AT91_PMC_PLL_UPDT]
> 
>         /* step 2. */
> -       ldr     tmp1, =#AT91_PMC_PLL_ACR_DEFAULT_PLLA
> +       ldr     tmp1, =AT91_PMC_PLL_ACR_DEFAULT_PLLA
>         str     tmp1, [pmc, #AT91_PMC_PLL_ACR]
> 
>         /* step 3. */
> --
> 2.29.2
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c7e601ab-03c0-7b20-9678-3f9f4615836d%40microchip.com.
