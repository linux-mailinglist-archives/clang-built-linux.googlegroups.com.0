Return-Path: <clang-built-linux+bncBCLOB5FNZUMRB4EMRX6QKGQEVDZQ5RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 893CC2A73B5
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 01:25:21 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id d9sf100882iln.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 16:25:21 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1604535920; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLd7G2/+zmo+GILtsPybhMHSIqxm6mji/OHm09aMVTBK3Yrc/FAQWxNfMZZ4ZVhRw7
         qF85b16EG4idGy76JUc8aa+MhOO6bw3WZdwPhzZ2i4UyDT5yj1ozuNiUz4nHltYOYVBL
         6k96xB1Wznlp7X/iUoer1DlVdEy/HujPOGumJnR8n+Mndb4rDU/fyKPnnfIcop0QnQpG
         Q4NPql0zO/FsuX1tSGZLkQdSWcaxnVoLeVCkRHpmdU1oTEh13aFm/Poqybz+kp0yjTYK
         wBpfwu6RrCRpk4w9a5d/hHJ03vXmGZ6pRQFAiMLYuctKXwHfW4TcY+igaIeaZUutleue
         u5rA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=QyEoFA9vzlsYd0rPhpIf6mCYgh5tZ/2Zibh+MlPh58M=;
        b=G2wqXZQnItqSbcIlrrUwGdktybDGmAbJz+47WnMKzLDgWCn8st9DDCXFpuSD1O7mx3
         OCEzrOPsYBwVFRBS1lY+IPMbh0+gbFWE2j05qNQTGUDrlEIkyUQC5bnVuwuIbuXvQuJw
         deum05053z2FAgvh+HN09dpJccbiJwMr4TP+6/p62axkWFZUtEbRDi5EylrLHx8fM8Dx
         tUyOISklQ9PHlM61lv9GjPvxVku6tw5gsFmXaZlA7wP9qbXQ47HcRmx4vinAZmvdslXQ
         XSvwwVpCZHEYm7XPxs0uPQCYV0ZZj7ylcaRnJflRimlihmI6hBdLprpdxoOyhPFnNqdX
         FFQw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=KyqyGCZV;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=MKGAM+9Y;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=8578de0ea6=songliubraving@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=8578de0ea6=songliubraving@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QyEoFA9vzlsYd0rPhpIf6mCYgh5tZ/2Zibh+MlPh58M=;
        b=GIpc8oPFMCp4ZKvnJ+aJmtGA/mpeUn3B+i90KCgRh2IJDyFUkA0j5Y7BPQFYTP8e99
         bd/HGAGIZScXUlyJ6/RbzESH+0zftbhvdQrm1gW7qcQQN80TMKHbt7SLk7fOv73c8R8Z
         L092JqkB5Y6NpqW8LArxvkpatcLkXaP44+nKJrqSl+v8t1Y4+/kpDoCnGezTSc3SyeaN
         zsh+DdKGxKBiokkkk7SFB5+75RF9r5GJJcZ+u12L8FCiXHU/MInRRIPHcwSldOGyBaML
         exOydiR9MU5wZZ9gqlinWOrQQrpPeYJFbDtjVomCK6ccwptiFaDOHuLOXf4A8QN0XiLn
         rs8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QyEoFA9vzlsYd0rPhpIf6mCYgh5tZ/2Zibh+MlPh58M=;
        b=PtA4WCRvRPqEm96mri8A7v+3Ax4rrG7czOgZ64g9YzwG0+qjFiTjJBEeOM+zSr16QU
         TI8H6FKvhMrEnuPSm9ji2883EPsK98spGeZW8SQZUBs6QOCZYxHmlWPtAgan36FQqt2I
         eNwIdi0S8TsON1gcwkkk9XLj3dRWjUZADUVcRAjFyURCT3XHYCoiDDMZJfoYfhssj8cy
         q3l4FP7pXKQd8WFzFjeRi5LpyW3jBmRkLdH/kkEh905e+EVpidWwzMJ25bgJZ/nSR3ZY
         2KzVIO9r+AQoL7afALR6jce/Hrgc10NHXW0Vq5e3ynVz8lLdta+tXWoYuCUe+8JvAkjy
         1P8g==
X-Gm-Message-State: AOAM530BjshKsILxTRHLdrXl8Eb3ZACcucqQhsOhRxUE940zdgCdEBOF
	dkPSEzNWYLnfEwVaJRNAv3s=
X-Google-Smtp-Source: ABdhPJz27YTn395eY//UIAS8ICAbWAGeiLE6sSvCDePUgk1PLEMstuVlBR9hKzo637Iv4LUKm42+uA==
X-Received: by 2002:a02:a793:: with SMTP id e19mr63471jaj.45.1604535920373;
        Wed, 04 Nov 2020 16:25:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ba5d:: with SMTP id o90ls805251ili.11.gmail; Wed, 04 Nov
 2020 16:25:19 -0800 (PST)
X-Received: by 2002:a05:6e02:c:: with SMTP id h12mr27098ilr.177.1604535919844;
        Wed, 04 Nov 2020 16:25:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604535919; cv=pass;
        d=google.com; s=arc-20160816;
        b=KKxqtyWtv72iOsjXBdL9RVuJiD0jJ/0Qg6RMlOVvBuWuTRlru6lB0/KRh7h+Ep63Rp
         wAAZSs4NjhgPMI20RMsQ6IgXrqQmCzDT0G5+cXNeLjJotSnpDqBKJaiP6SbC4ppeGB3t
         TYsh9es8CXNJ+aks//Zo00abxf0z3ac9CZ2Dk/pCs8OH8WLJWaz6n7X8FK3gbz29pVnK
         j5//V19COXXS5NpqkefM9UOEQQQZfwbeTiMPtIntgYQSQ48FFi6WqEqozbmiHOVkL17W
         +KeaoZDm2QFqwMPMbvB/eadqoHYciNIiu9xkrHoy95b7x7d9lOTHPdTTCOcj0HxuC+FH
         sa0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=s8B9W7Jf8bbbGlUaBtPSEEkSBBdJ4gRkieu857Y4cfw=;
        b=keV0d2mhrWiPOtEks5Mt2WmEdA5xS3GEBrYmDoSvFtoWkqxdFj35HNgBOYq3MkiBvC
         qAs/Wu+qLMACetr6Mb20PQwUD286hSL0c/ZQMAn/xHSxtqiyJp4/DDkO/H3f7RVZk4JL
         8iisxIS7W9dmO+lTA2iAjgdAlkkx2Sw92kirHOgXpPWB2TAXfYBNpzybOzTUgs3V+i43
         +ISoMzEvS4630NQH65nr2SJ8b9qPLWZkAQ1jGtXbrsbrqyminp8qxOkax2TaeEErqbJO
         z5yKz9iVFW8mIlECkHNyRU+8HKFO25Viu3kxsrDNCRASAliG8wld8ZsIPJ4RTewswFFo
         gi7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=KyqyGCZV;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=MKGAM+9Y;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=8578de0ea6=songliubraving@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=8578de0ea6=songliubraving@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id o19si251632ilt.2.2020.11.04.16.25.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2020 16:25:19 -0800 (PST)
Received-SPF: pass (google.com: domain of prvs=8578de0ea6=songliubraving@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0109331.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0A50JqUj028618;
	Wed, 4 Nov 2020 16:25:15 -0800
Received: from mail.thefacebook.com ([163.114.132.120])
	by mx0a-00082601.pphosted.com with ESMTP id 34kbn7ged7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 04 Nov 2020 16:25:14 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (100.104.98.9) by
 o365-in.thefacebook.com (100.104.94.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 4 Nov 2020 16:25:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l5ciKZDYz3f8LIsPa+ZGNf5A+AJ8RCwF5TscqDtdACaVaGN5XycsN5rIVDmL5tTDGKZipd9aDxM1bi6H4NPKx+H4kcyvUzfzzzOKcd+LfLRwUbDLWy/QxIv8tBFenRm0CBTF857eoYEfBQglZZOo8I6PL3LsZ4uQZn3cVSJBQB8Zd3G1dICvLayAPG7pkvplCPb4TvDRjR6j0+/Sutv5iLTtX8pz3wT/sWJbbb8asvaJ6Z4uNI/KGnrJZi7d4vgQG0bYkn4hexhYcH/QBLLDBsmAvEcxOPj+70+YHZ9G/+ryt+v+GCISkAowkZXPg7qs94uQcsYcbVx1dNNhImJGBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s8B9W7Jf8bbbGlUaBtPSEEkSBBdJ4gRkieu857Y4cfw=;
 b=e9Dbl8YglbGFbuTtQknc5aTnw8Dmyzb/p+uUJL+YKmUbaVBg+svbK2lMUG7ajyPkBf3j6HWHKk3M3GW96WByMSVgB7ZobwmKItLSg3RDqx/kbSez4yq3sr5nYBJjrh+7+lyrMz60lQMJ/bgMhNRzcFwQtPKzRsKoA6yI2Wi1DsYBW7DosKjlbG8Djho+45WwC9exBMXuNPWmCa/RUhz3qitdCSkfNoJQ/wCgIXcx5IataZN1RSidNEbefgdnypLxUx1IgjIgySBBtDtG4WTuCarjQjKGH+daj0RTOdt5kZSPRT/PGNdleknBAkqqfNXmJEaWFi3+JDtaFzbDAbnoJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB2999.namprd15.prod.outlook.com (2603:10b6:a03:fa::12)
 by BY5PR15MB3714.namprd15.prod.outlook.com (2603:10b6:a03:1f7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Thu, 5 Nov
 2020 00:25:12 +0000
Received: from BYAPR15MB2999.namprd15.prod.outlook.com
 ([fe80::7d77:205b:bbc4:4c70]) by BYAPR15MB2999.namprd15.prod.outlook.com
 ([fe80::7d77:205b:bbc4:4c70%6]) with mapi id 15.20.3499.030; Thu, 5 Nov 2020
 00:25:12 +0000
From: "'Song Liu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Jarkko Sakkinen <jarkko@kernel.org>
CC: Nick Desaulniers <ndesaulniers@google.com>,
        Andrew Morton
	<akpm@linux-foundation.org>,
        stable <stable@vger.kernel.org>, Chen Yu
	<yu.chen.surf@gmail.com>,
        Alexei Starovoitov <ast@kernel.org>,
        "Daniel
 Borkmann" <daniel@iogearbox.net>, Martin Lau <kafai@fb.com>,
        Yonghong Song
	<yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>,
        John Fastabend
	<john.fastabend@gmail.com>,
        KP Singh <kpsingh@chromium.org>,
        "Nathan
 Chancellor" <natechancellor@gmail.com>,
        Miguel Ojeda
	<miguel.ojeda.sandonis@gmail.com>,
        Kees Cook <keescook@chromium.org>, "Marco
 Elver" <elver@google.com>,
        Arvind Sankar <nivedita@alum.mit.edu>,
        Randy
 Dunlap <rdunlap@infradead.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Ingo
 Molnar <mingo@kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Networking <netdev@vger.kernel.org>,
        "bpf@vger.kernel.org"
	<bpf@vger.kernel.org>,
        "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] compiler-clang: remove version check for BPF Tracing
Thread-Topic: [PATCH] compiler-clang: remove version check for BPF Tracing
Thread-Index: AQHWst5LRYvR+6qVI0WcGVRxibf35am4bdGAgABAsIA=
Date: Thu, 5 Nov 2020 00:25:12 +0000
Message-ID: <7A3072CD-AF97-4BD6-AECB-5B71DCC9234C@fb.com>
References: <20201104191052.390657-1-ndesaulniers@google.com>
 <20201104203339.GA692084@kernel.org>
In-Reply-To: <20201104203339.GA692084@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3608.120.23.2.4)
x-originating-ip: [2620:10d:c090:400::5:ca49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4cd7c3a-9a33-4f5e-dbaf-08d881214298
x-ms-traffictypediagnostic: BY5PR15MB3714:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR15MB37144A8BA48ACBFA6889C94EB3EE0@BY5PR15MB3714.namprd15.prod.outlook.com>
x-fb-source: Internal
x-ms-oob-tlc-oobclassifiers: OLM:597;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tkepw6wPPDUzs7eeXBY6OKoCXGOYCKhEszCc1BqY8jIueVHTfgf+43inrgPNbHHeAg7nBxKqS0lhAqviSk23DGbS+ZR5Lpralm53RqsLry/WGTS/VPdl3Q4w5Ng2hKvdsoCBrSLL2YjxVBXHBkeA/kNm85+SMMlaYe32dmjYhXeCfz/si3TXSaL9TprBIQcnaX3sMD3HEQ/ABlCvLKt3bil6c0Vh9ukvYYbVIYnIQeKYttjOUjE+DOaiHqlfxxOn0hwzjJDwyHUwwKTL7v6I8crSAszIvS3tc5N4OCab3ZvCXUBN7iinGHNJteoXPkzQYZLNo2ALySdsN6w7AogueQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR15MB2999.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(346002)(136003)(39860400002)(396003)(366004)(376002)(6506007)(478600001)(4744005)(66446008)(66556008)(66476007)(186003)(76116006)(64756008)(36756003)(91956017)(66946007)(6486002)(53546011)(33656002)(71200400001)(5660300002)(6512007)(86362001)(2616005)(8676002)(54906003)(6916009)(7416002)(4326008)(8936002)(2906002)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: P6ee7psWe9e3nmpdKFmwR8DYg8M5xLf3YYGDAShciLPhlI0tFW+Jso1IyNS+pKql1RDWJGov3fgy6Y+Kn/x+hTCAsvtxayrDNaFnmKb4dJ4kBp9X+lZpF9GJFIyxZHWLyDvFC4PjbIYh5rGpSnMR/SUuxu3zP9wnWu7qsvissFPChFrgd28cgM48nXjuXqdPLZ/a/Tq9hEVsuAqXRcPJ6rKXkHxMbBRw99R5dX9Oorpz2gL9smQgK6hHCRXIFfv7PANxtHDcXhPncjzFar3/7C8/qpCgUroRo5iE6s51tgTn60J7wm+un7UYU44v4Go1GaBTH2plxNWB5V1890sk6FxRmV/XmLDJU5ojXk89JOfBsC/+OrNIgX9YkZ1Ep95C4WKmrBpnGuKbruYVaaq35oIlM3ofA/kLbtVCUNU+B0ObKaQFDvJsGT2/1TX65AnAm0y8CedI6RgZrgNe99d2zgrGgi4FrYedMuXARIFxDe2K2l9qCmM2ErSNfUH99ShJEo7iazFnfBJdWOoJqqkFSqbLgiDpxEww5g6Y+1DUKWVaHlMu6xtr3yYf7Az10F3ENmromqaSZSbp4aLebhAy/XiW1EYkqj4SAK/WHrVfMINN1lFrNcl0hcfNA5VXilRP49i3breH6sEZFlzALp2W4J1WqcHLiYi5Am3xcLbyZQLCBp1WiGWF7/zUmoaI2nVp
Content-Type: text/plain; charset="UTF-8"
Content-ID: <613D254596E3944CAD2F867DB4AF199A@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR15MB2999.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4cd7c3a-9a33-4f5e-dbaf-08d881214298
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2020 00:25:12.3763
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RsAAilhhy6uwg044hPCEUrTf22htmN5EvFXPpkn6iNFVf28kp7jEs7zdvAUZlE7DycvvwkB7biZZ+RmseEoK7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR15MB3714
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-04_17:2020-11-04,2020-11-04 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 phishscore=0 suspectscore=0
 clxscore=1011 adultscore=0 mlxscore=0 bulkscore=0 spamscore=0
 mlxlogscore=913 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2009150000 definitions=main-2011050001
X-FB-Internal: deliver
X-Original-Sender: songliubraving@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=KyqyGCZV;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=MKGAM+9Y;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=8578de0ea6=songliubraving@fb.com designates 67.231.153.30 as
 permitted sender) smtp.mailfrom="prvs=8578de0ea6=songliubraving@fb.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=fb.com
X-Original-From: Song Liu <songliubraving@fb.com>
Reply-To: Song Liu <songliubraving@fb.com>
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



> On Nov 4, 2020, at 12:33 PM, Jarkko Sakkinen <jarkko@kernel.org> wrote:
> 
> On Wed, Nov 04, 2020 at 11:10:51AM -0800, Nick Desaulniers wrote:
>> bpftrace parses the kernel headers and uses Clang under the hood. Remove
>> the version check when __BPF_TRACING__ is defined (as bpftrace does) so
>> that this tool can continue to parse kernel headers, even with older
>> clang sources.
>> 
>> Cc: <stable@vger.kernel.org>
>> Fixes: commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1")
>> Reported-by: Chen Yu <yu.chen.surf@gmail.com>
>> Reported-by: Jarkko Sakkinen <jarkko@kernel.org>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> ---
> 
> Thank you, resolved my issue.
> 
> Acked-by: Jarkko Sakkinen <jarkko@kernel.org>
> Tested-by: Jarkko Sakkinen <jarkko@kernel.org>

Acked-by: Song Liu <songliubraving@fb.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7A3072CD-AF97-4BD6-AECB-5B71DCC9234C%40fb.com.
