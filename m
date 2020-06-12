Return-Path: <clang-built-linux+bncBCT4X6VRTMIBBWOJRX3QKGQED2AWK6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EA01F7734
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 13:19:55 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id ga20sf6528995pjb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 04:19:55 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1591960793; cv=pass;
        d=google.com; s=arc-20160816;
        b=alfhfHx3TU6TIW6BWs3Qu5QwnXwZAisaLNa2IOv977SFVIAiuzOTb2Gb9JWrvjmYds
         B951NNfCvjdmJkb72YtzKB7bqNnHmGMetLYgPwupCY9FedIcP2NizQXSWk5omfvIjRAe
         H50kUwDTEHTiaRjq3TcbULlJ7aZEny8NTy5xyMyNluZE7HwROWE9/RdvBl37ULv+BRWP
         IHc7My1J5sn+ljVmMU6TX2XELLVDoSI0hgEVoNZvUEb4O4Ubhd2zbx6D6ZmbbHQ7lAH5
         VeIn9wSNBeith3gvzePnEaub6Ty/TuT6eejxcB2cpWLFUAK7crfZen55wbFvMQQPwiYM
         3U7Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :ironport-sdr:dkim-signature;
        bh=tam/ZD8BXch0bINgWxBwff9v/hIlBkSQOxiK2IiHU9I=;
        b=j46lQkt+Cx+raL73LLRKbt6czmoeJ+kYJY+M5SlEPpK0QwE5zagIc/nig/zYTHCohO
         uVI+23XHsJLayUOCKbdZW1+AFDaHKX6jcVRLCfT9P2GjqYzJmHSNv3LkhSc708nqDaY2
         Tw1Na+cGyO0aPud4SBm08CesG6rzUNm8Rq0JzVjeEo6Bqs3QYLMQjAE2rtfA3tggI4vZ
         54VhutnGgOugyfas0FzWoFXB7Sj2Demggw6hHP3/a3CrKxC4rAZgLo6OZ7H3h32Lw1qG
         JuwbhrG8SZqgjzUEV0hnHcNpCHknBBwVYLI4X+3+IrSb3lzF3jt2ZECEq2WisTcWGaD6
         Pr9Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=vk02LeeN;
       dkim=pass header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com header.b=YgsAK9m1;
       arc=pass (i=1 spf=pass spfdomain=microchip.com dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of eugen.hristev@microchip.com designates 68.232.153.233 as permitted sender) smtp.mailfrom=Eugen.Hristev@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=ironport-sdr:from:to:cc:subject:thread-topic:thread-index:date
         :message-id:references:in-reply-to:accept-language:content-language
         :user-agent:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=tam/ZD8BXch0bINgWxBwff9v/hIlBkSQOxiK2IiHU9I=;
        b=DpaX6Yw7bhOokpks3bH39pbsmtlr/RZxE+U8MJpUiz2p4sur4h2XDoMQx+kHmbJJKh
         R0iCUz047lHY4lHLJ42+s6Lk4r51CZJVBa55uN0OimruGJiOg7xm9N43MENOfCy2d7Tx
         wtd2PO9sOUofN2khygW5+QYyTBIpDWwFdlGxwOc27Hh9RRO6Oy2Dk/p0JMs0RCXh26Vn
         OreBUnxU6ZXVM9eqF0k7akib4KUSrEp1NqP8QkbCxfF5JmxvuH11jBRPqNL+NCwce+NN
         eCGKTAJlTtBHZ3dUQnzffzetLy1pEeiPETOqNg+154wGkOV9TF+Arz9Rk8D0Tq0N4bOX
         8z9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tam/ZD8BXch0bINgWxBwff9v/hIlBkSQOxiK2IiHU9I=;
        b=szmCEPSiB2UdmtV/tEOywJa1gC6r+KyReV7BH/fWyBRvMymHio5GxPYnBrag60jx02
         dRFFpbzydBkR5kDkgsIohl8kx4qJ0Z17PuhbR3jCRNqyNPsSJSomn8reU18M4AjwGMEU
         XoxhwTPiyQiDTvxlcKlJdnZmPZ+xoZJZJPWpXJCg62rOuOx31jUr3e+rOpA3XD+ZQ1pL
         MLdQaezNk3U1Kgt9uLU8K1uacD/gD+8dbppchIEmmXKAy7IjOxZOkuctS3LCWAebSJN2
         smUewWs3TVHOInXAnhMT38OXOh7YLFflXOpMOj17mDlKkww++b1X/oGWhsDxM90FUPE1
         5vbQ==
X-Gm-Message-State: AOAM531UAgwbap2s+eJCLqOYVFcTcxktKNAF9j/3jRprjHRRJ3DzDecj
	3QWBVtOGl/KguV/I+EaXPHI=
X-Google-Smtp-Source: ABdhPJwoIma8s3LQGckjZHNqydyr7wpUc94X1nzWvvgzjNsckKJpNyc0alUaQt57PyKllYl/+XDFqw==
X-Received: by 2002:aa7:96d7:: with SMTP id h23mr11839246pfq.320.1591960793679;
        Fri, 12 Jun 2020 04:19:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:422:: with SMTP id 31ls2007888ple.2.gmail; Fri, 12
 Jun 2020 04:19:53 -0700 (PDT)
X-Received: by 2002:a17:902:bc4c:: with SMTP id t12mr10700540plz.141.1591960793279;
        Fri, 12 Jun 2020 04:19:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591960793; cv=pass;
        d=google.com; s=arc-20160816;
        b=lHwzNIBGKl8eLifgm2HptxYrsXCeHeN3mtw/nWn3tZmj7oQAioWU7FjrMdTpOa6z1+
         t2fDwHhMETINvnfDJ04grzV/Xp0KhrfRspxM4B0yeX+DuLUQP+/b85DJJm/EQQi3JR3/
         hcgdEeicfNeYS3qTJ/itmCuOMdQEIzN0Vk6AjMRrg4yxTjYg8OsofVetRJMxccHJDSho
         iwh651mRPItlTxuQMbOn4oy+49ViRMhRpqGW7Pyjb4/ulLIOMHKnTE6x8zrTx6pr8Ui7
         qJbY2xo6/7oTiPHA78DU7AOZZy9hMuhVKHktG9cipaUkD4xFi0Y/zyfnfKRZZYmMGTGX
         AyLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=BtE5mJzFD2ITjLh14Q0+u1iHMZX+ApnVyj3ixnSpRvU=;
        b=0NZ1n/AQ1RrB2EuZG3gqnPcI2vv7SdTomfh3lbXvwnOjcCJImWDzCefCVXqdiq54R6
         k1+iens2V/rAc7QKT+rNdaWTAjUmNGYKcnFWVfYJP+J0dn5uoCIZ3enc41mpUw8JPK4x
         dIfCDx2jPrm/qraU6EAlTATKPts/1+n9DAzWpkujCAOkJvr8MLY/UGm0JFr6V16zjQDX
         gOeB87vNiwmq51XJ8cK2uI0Tc7f06MZlOCi4KYoETrc89zBxLfaBkJnxJQZDNOcslis6
         z3jOf4Wz7GKNhUeUjAncN8eM466X6eGXVlv2UxPAvLiuCni22wqPH6Pqknq756Z8nQqx
         vDDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=vk02LeeN;
       dkim=pass header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com header.b=YgsAK9m1;
       arc=pass (i=1 spf=pass spfdomain=microchip.com dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of eugen.hristev@microchip.com designates 68.232.153.233 as permitted sender) smtp.mailfrom=Eugen.Hristev@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com. [68.232.153.233])
        by gmr-mx.google.com with ESMTPS id i17si852582pjv.1.2020.06.12.04.19.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jun 2020 04:19:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of eugen.hristev@microchip.com designates 68.232.153.233 as permitted sender) client-ip=68.232.153.233;
IronPort-SDR: TlXdqw7HBokRsaptRgqS0yI+GxWUhaGHXLtguS15MR1s9CBroPvJIFf8wP45xt3ucPxcL7v1t9
 k3VL0bGfSR01JgGbPdKhVNHRpXG99q5JvyrzNdN2WUqiLqIY0LK13G2PMjySzXIN/4fBbhDzLR
 KPy7bnpRIzXIxhJ5gtpX1oeESJvsdGrxTsNlhm8kt6E+zKBT5jGGpjgk4XfLtPZPoriyF3Ac58
 RetA8FWKA9gRcd+E3fPLfZ3fO9CTZFD7KTkf9HXP70ZeMjNo+FfsQBfq58nzkUWvac0kXAlHs2
 +IA=
X-IronPort-AV: E=Sophos;i="5.73,503,1583218800"; 
   d="scan'208";a="79852257"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 12 Jun 2020 04:19:52 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Fri, 12 Jun 2020 04:19:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1847.3 via Frontend
 Transport; Fri, 12 Jun 2020 04:19:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kVF5QvfcbHSRC0wtBAzk6mnNgB5wa11fhyWcqOs55/xAVVhOcq1jAZwjK5INp5xi8jjPfhFudVD7tlz0R11JM2CRDuAdDEg/E9V5jxS0lFMR5XyiQz8ubuorqRY9duKVmpg6NxyQCpvxUHUnJvkOkbXgegbwYhdY1qYUAOYgscVUmACKSGZj6C6OINloh3FoCszxjmwp3D1QdPl8Zbs1ihbjJTkebJMSBO4taWpleDlIrSPjNAlXi3X5LXgbVJ9LttMokRN1L9Kvm4U+QPsyiZOVuZK9bdd+T8is6SIIaBWGVM0n0738Ik2xj46ccbLBPqD6Oy1EirNbBHwQmDYbWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BtE5mJzFD2ITjLh14Q0+u1iHMZX+ApnVyj3ixnSpRvU=;
 b=D71nhHKpx/u916QLmqlUHp1M7qKRryJKx0CjaTW5wusim64VgjHP4cVugdQoxm+dWvASWoqmoKDmH+0XmplG0/gF6G5hKbwaYfYfdIcgIHBt2D/MUQ3ckZgwpQuavjlue/684CpKsHnTSP8O2vRcbSbZ5UFV3Kt1LIhJY/UoO1j9ziF6HgEkraHBrrw9xRYSyyA9oX+OavJQPqU6sHjMpo9t3QrOiIC1XPeqE1DRt167z/e6CckJjIbwFquG7dtTFlL+EHgST7MO1FDDtGwYicUutdjdJR0wdhYxB2CpDlNSp1BkEvrsNTfsTxtU1ZoZ76fEX3SZ8F5GtGddhRzAow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
Received: from BYAPR11MB2999.namprd11.prod.outlook.com (2603:10b6:a03:90::17)
 by BYAPR11MB3655.namprd11.prod.outlook.com (2603:10b6:a03:f6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.21; Fri, 12 Jun
 2020 11:19:48 +0000
Received: from BYAPR11MB2999.namprd11.prod.outlook.com
 ([fe80::a9a1:a786:2e11:a5f5]) by BYAPR11MB2999.namprd11.prod.outlook.com
 ([fe80::a9a1:a786:2e11:a5f5%3]) with mapi id 15.20.3066.023; Fri, 12 Jun 2020
 11:19:48 +0000
From: "Eugen.Hristev via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <linux-media@vger.kernel.org>
CC: <lkp@intel.com>, <kbuild-all@lists.01.org>,
	<clang-built-linux@googlegroups.com>, <linux-kernel@vger.kernel.org>,
	<mchehab@kernel.org>, <hverkuil@xs4all.nl>
Subject: Re: drivers/media/platform/atmel/atmel-sama5d2-isc.c:323:34: warning:
 unused variable 'atmel_isc_of_match'
Thread-Topic: drivers/media/platform/atmel/atmel-sama5d2-isc.c:323:34:
 warning: unused variable 'atmel_isc_of_match'
Thread-Index: AQHWQH8vHj1heRZtYkSl4nyeGq2n4ajU1cSA
Date: Fri, 12 Jun 2020 11:19:48 +0000
Message-ID: <328e45a4-ed0b-9ff7-9849-7a68d1a110d7@microchip.com>
References: <202006121424.PByDmwjQ%lkp@intel.com>
In-Reply-To: <202006121424.PByDmwjQ%lkp@intel.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
x-originating-ip: [82.76.24.202]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e507d32a-33d8-4d71-2e40-08d80ec284a9
x-ms-traffictypediagnostic: BYAPR11MB3655:
x-microsoft-antispam-prvs: <BYAPR11MB3655A6D41CD35914B1797BFFE8810@BYAPR11MB3655.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:26;
x-forefront-prvs: 0432A04947
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q/Q2rZJ412XoyxeKpy/6P5ChazMBLkqy3muOfzB9YRC5i/lGk6jNS6FCw/lKN9t6ohK7u45A+ICJTvM6GZ6i4F/fQx184Qa/EamYZTi05H67bM8MzC+JOAQIMgkdNSg5FsVrOJl7oFZaKauS2SvKAKGtrPec0vYi09m0cJ6ksWONzT0MgI9d7Yb89KieTC2U4KCXiyChtisbDcecKDS8iZ1ssw1TmUBwpLeARRsmdh/HHKO5p/D9oFau6XbzapytepyDdgDX9XzoCbk8S6Is1V5Pz6IRFZGFcNFuONFdt7TRmauIkT+omDhm45QaJpnynKRrm7V7JoTpF11v89oet1zBBjSj4fpWuo6O6DwuA6SXi8ZATBasu+kSOAu8MMxK5SyQOALvKSypz7hcbEACDLl+cSD3/x6qdiR4ll5Nmm70ARs6s8Omg+IQvToBKlENIk+FlPeAMSR8eh0A69cSxw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2999.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(39860400002)(396003)(376002)(366004)(136003)(346002)(66556008)(83380400001)(2906002)(6506007)(4326008)(6512007)(26005)(53546011)(71200400001)(186003)(83080400001)(5660300002)(6916009)(54906003)(8936002)(66476007)(316002)(478600001)(64756008)(2616005)(8676002)(966005)(66946007)(6486002)(31696002)(36756003)(66446008)(76116006)(91956017)(31686004)(86362001)(43740500002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: GbOpwJtmPheB7fy7aBs2EQvsNhT3ZHg11LvPjkUWmJpxYKjT9kih+CihjsQ5nVR4bZ2cbavf+qSZMbhGsFMoP+jprvSUTkzNxJXvfPes8SjkUuX+/xlhPe8nP7vUEnmRMPTJoPXYX2TQ/Dh/iaEudZkMaXKulpfWFVSiuppz2iko/kDOJm/i6Ul+d42txLacsKU1PMGuMP3E4VbJb8Fu5N9VKHJNBv4GeZFmFSeRSJC/H4/6DW9IeJC+/S1BmvhVLdZtzXKfTuNXf9L5Z3QcT63YOjZY1G9WOJINH4fGj1yO8puf1C3bfiSfdefTaig9BK5Pc3lBUH/Wu59K4F5bYOpfN8085jB4W8AuGfB1XFyb62hwnNnJIq63qe4Rf1BsOkzUyJ8Dv9OyIFnxOjoHIbjqfT6krHonVxHt03+F+KHGRZf60JxR1Eym7nJDKo84hGRT6SSF5MaNAOw5Xm+5pNyS1d1n4bbOFHxPWRZqfgg=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <8E156AB7CF1C004690A2DBAC90DDB8C2@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e507d32a-33d8-4d71-2e40-08d80ec284a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2020 11:19:48.3790
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P0xaAebiM6fzKfkLfhgp0IMHlumg+r55ON+yIthZ3ljZOXdDfZJgp5GzHxBQVgnFFjwPubVeaxYZsz8hCI5wc+5GK4Mm426IPyMHOxnvCjw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3655
X-Original-Sender: eugen.hristev@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=vk02LeeN;       dkim=pass
 header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com
 header.b=YgsAK9m1;       arc=pass (i=1 spf=pass spfdomain=microchip.com
 dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of eugen.hristev@microchip.com designates
 68.232.153.233 as permitted sender) smtp.mailfrom=Eugen.Hristev@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
X-Original-From: <Eugen.Hristev@microchip.com>
Reply-To: <Eugen.Hristev@microchip.com>
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

On 12.06.2020 09:02, kernel test robot wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   b791d1bdf9212d944d749a5c7ff6febdba241771
> commit: 0a0e265515db7619d0da9331d74245d02c741f07 media: atmel: atmel-isc: split driver into driver base and isc
> date:   12 months ago
> config: x86_64-randconfig-a012-20200612 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3b43f006294971b8049d4807110032169780e5b8)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          git checkout 0a0e265515db7619d0da9331d74245d02c741f07
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Sent a patch to address this warning

Thanks

> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
>>> drivers/media/platform/atmel/atmel-sama5d2-isc.c:323:34: warning: unused variable 'atmel_isc_of_match' [-Wunused-const-variable]
> static const struct of_device_id atmel_isc_of_match[] = {
> ^
> 1 warning generated.
> 
> vim +/atmel_isc_of_match +323 drivers/media/platform/atmel/atmel-sama5d2-isc.c
> 
>     322
>   > 323  static const struct of_device_id atmel_isc_of_match[] = {
>     324          { .compatible = "atmel,sama5d2-isc" },
>     325          { }
>     326  };
>     327  MODULE_DEVICE_TABLE(of, atmel_isc_of_match);
>     328
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/328e45a4-ed0b-9ff7-9849-7a68d1a110d7%40microchip.com.
