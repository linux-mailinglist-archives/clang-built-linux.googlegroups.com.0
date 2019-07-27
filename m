Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBPEL6LUQKGQED74JLRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D75F77AB2
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jul 2019 19:11:26 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id 30sf35067205pgk.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jul 2019 10:11:26 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564247485; cv=pass;
        d=google.com; s=arc-20160816;
        b=QRLIDjDauQknIbhONcHtOQsxpu92qYmbWCOfi/ytktTUKhuwV8q1H7ZnYZCQlHMCal
         PZDGA8CQepLj67Py6RVJcH0AqJE+VsOid/NaxTAC0ftFYp/RT52Gzicu8UE7FowPrKfz
         M9Xxs/tYp9UwEWoG+6HfYaxRBg/csXetxLEl5L/+g22e6SdrVGk41ox6ZnuVrF6sm4jO
         IQge8ieoNjR2aIB0FC3OA3GgvoeZ53lFLmkjfdk8YNJWz5uS4PR7VjYhcfaxdnXIvAez
         UDu9USUCwDDZrJBkoV00z+S/3Z1L8x03bj+RWckidcvYIlkhfPXUGAYp9C6nE7YR9E1+
         H0dg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=iUY8zbDc0W7MI75S/DyHeJ+xjuEub1BpRwtNmtc/mas=;
        b=0U0kPDv8VocahrAmAS3dt/xKfcC2VCXjhZaJuHU4hOEuHNAPBim1lEQqZDftHGBCpk
         wUAMkw9bEYv/bitEN7HDxUK9GN0P3++PcYO5HaxyaPtluE2Mjm9woL3YrSOsa+pmib8t
         i/y627Y4WyEkx31ceah/IOjPEUFX3540I3SS2MyiT70z1jyp+gghC/qnXs+BYTvU7nXG
         gHHUo1Rr17nEFE5KS6zU3DGw6XfSUTneLuYFvT/lX1X2XZRYS1sSLoCRK4gUAP3THk7a
         zwDvtSjTkDCGA7fyH0FPHJjXTOYAL3gpa5lMAhr700wu233iMJ9oYfNxnrd6YK3wPVCI
         Gdcw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="U7I/gVIc";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=MTXvHVEb;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=2111fa7ddd=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=2111fa7ddd=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iUY8zbDc0W7MI75S/DyHeJ+xjuEub1BpRwtNmtc/mas=;
        b=efdAinsvrpZYEjGNiJgMpb2F3uroJJbIyLdHTdxxRKZxxQfnCy3LtxUUuxYPQ99CAN
         KNWoy8U5rajUASTnu6hmLe363tFQOh7OJBOkFUoekxPJNKSL9i4etdT+YksQYRIvRCUs
         3nyapQ01dvtc5jZcmq9DyHYjVKDglkunAG5pHgkzV/SGjSRqm/qAeScbRhi7L7KrWpF+
         54YkGSFtPC+WlOOw3p5hh9oqV74ackxXxVK8QLVesjPjbkSwTvOssFRJkprPZevT1xau
         wJgeAbYrwxz5dfm8he7yZPju/KgFYJ+jjJI6ClpDHTCA8yPx31TgC8+W+EI8y5ZjmsA6
         7G6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iUY8zbDc0W7MI75S/DyHeJ+xjuEub1BpRwtNmtc/mas=;
        b=t6ZhBm4KLKCelsuhhFTE6Q2Wwk6KdEK9QnM1P6cZt98N56Gmh8P17ecYAArS0TAkH1
         hQB8yRQLbFsobb4pkQarDujRfgmaqBmTXY+GwlwUkW9Pv5YRuHZLlJh/kGHW4qdnJNkJ
         aTbvqiS6V3GYNeZMT4oiFAmYbA0FyqojVV/U7ybnDP/LgTrgpjpg9bm4wt2a0pvOFgFR
         n/NCkvU/h+UdX3VrcbVGRArdDbmHdO+shK7P2wzvb5KARBLjbUpVxTwPvMmDbUmrj/zo
         djzZHeXA8SNmqXvUeK/kh+ziYIfadhDEhsjqL/saiGFL61qj62aV9AM2/Bw1YRTdo3PT
         PjOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXvQPXIEP9gXV8i8gp+ddhAMV2p+Lp1KmuZYz3AOHxHYZySTQOB
	GQawyTIGkK0KgGhACCDlN7M=
X-Google-Smtp-Source: APXvYqzUAE+6EhxdE79NkQxXiGsRJjcn0rTtSCFCqywWhiExWx4pNOzO4Em4lBI0XeHYfpffgeiXcw==
X-Received: by 2002:a65:68c8:: with SMTP id k8mr12326617pgt.192.1564247484692;
        Sat, 27 Jul 2019 10:11:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5045:: with SMTP id q5ls10858850pgl.16.gmail; Sat, 27
 Jul 2019 10:11:24 -0700 (PDT)
X-Received: by 2002:aa7:9481:: with SMTP id z1mr28418864pfk.92.1564247484399;
        Sat, 27 Jul 2019 10:11:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564247484; cv=pass;
        d=google.com; s=arc-20160816;
        b=xaikuu5VfyTPkZFQ+bUGkft3cEc6jiVaR3RRc57lrFdkGdi5cq7cQUaxKsv7W4KTF5
         iCEaGebTq0B2fa1F7iDQ6SkbjjnSCNwVPIOwKvNyuyVIjJZ9riTA6PCSwejr3dqD0JvW
         jBrL6hgZLsghoTdQ3MWFhje2BGeqKi/4eq5K0/vqJnw6NqQ18cFiVWuJ0on+flBp8LXu
         rO4Azx6FgcaIDtvL+qCz0HVdV4AjT8r9+Z9F+/dcuRpJCZ9T1NIkY9OkbsIgNof99vVl
         bQVS7UQrioA6L8WbS5WLbgUcINl+q8ewxJaTTRSBnb5sZyTN5e310Pm2ebi7CmImKsyl
         OEtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=XbJgiJySARGR6gg8Sucm+3v/aiQE8xbVfI3YzTQzd1I=;
        b=fk58AMWm7piw+J5qgBtQRZ+x2di4KBTXrLUh2jworg+2JXt9KJwJQ9eRFMZzvwLAbr
         nD+8Y5zGDIaR1NR2i+ALXkNHkplOtpvja0a/RE1+JHx/2VRLZCbUhoHbc6zFqyOy3pKB
         FqGdQOT2KK1otvEwRfTjUqEcdSH819e05P5+WXhVUKMMEXoMlSleTC0PntX5gVEEgF6p
         MOqz3AAKYff0TQ55M6p+JQfpaCa7+QqwbOpN7T9h6qubYDit2OR7J+Xhchgymaxe6xbV
         mj/y+bfofkn6wNUwjXQGQ6iz//Ti06dUckiHd8CnWePQZuF2/1yK9PvIyoe4JC68qcwB
         YPsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="U7I/gVIc";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=MTXvHVEb;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=2111fa7ddd=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=2111fa7ddd=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id q207si1757687pfq.5.2019.07.27.10.11.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Jul 2019 10:11:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=2111fa7ddd=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0044008.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x6RH91FN001722;
	Sat, 27 Jul 2019 10:11:20 -0700
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
	by mx0a-00082601.pphosted.com with ESMTP id 2u0hwm988f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Sat, 27 Jul 2019 10:11:20 -0700
Received: from prn-hub03.TheFacebook.com (2620:10d:c081:35::127) by
 prn-hub01.TheFacebook.com (2620:10d:c081:35::125) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Sat, 27 Jul 2019 10:11:19 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.27) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Sat, 27 Jul 2019 10:11:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LtzLPy81qd5nUo/rgv4qX93cD5nl18+yvgaaIYNVyn5Qvea+9DA3ubKEwHTomaJzbPIxiJpkQ0xfFYGzhjyOI7QQZqoColXxMtA8VQp1VbKkoLZniD2WVOWF+83nO9S8IwzYTm5GbZ7W0z0awZ16yFGeQ/fz79qRZ0a1KdB+kaGyjhIygLQZ4o98SpEEZQQw5r99Vntj3Wrhb8ax2+AN0jR4uXy4lRUuyBkDUChPNKZ51EbYZQZQ9n3p06DwiowsgbCI3tgaprg3UWcCZy3DyPt61DsYOwU6w8PEBRHY3le6KLoTadGYhXblF9RIySOWgOo1xi9QwqEJa90hhZfhQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XbJgiJySARGR6gg8Sucm+3v/aiQE8xbVfI3YzTQzd1I=;
 b=Fa7rkdQ7WmBBhzqcTy4z82sG42li9KMuY+VGGaCzRsz4o4dhCrWLe7bxjjqmUW05eHZfqkGIiMPi61a2sm75VTx6pj+VgU90AB2zFBW4hOQ8ErS1cJvHqFPlCKmzFD7V0TmTVT4wwCScOa+jyER4/CnxL3thWusBRnTGYXfwCPeXVULsS+C9lCNq7fP+hVfhsFMxaaNJhAqpWS67EGp2YsMDeSlC+jb8f06UzjddvxndoGXoObH2lnJfo37jnB4AQoIyF1+S0SsrYziaJaqCZ22iW8lyIzaNq3r+cGGNcq6woYp+kgFZYW4lQ5iAGgqEs32Rf9iJcTxA5SOe0BqYiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=fb.com;dmarc=pass action=none header.from=fb.com;dkim=pass
 header.d=fb.com;arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.59.17) by
 BYAPR15MB2278.namprd15.prod.outlook.com (52.135.197.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2115.13; Sat, 27 Jul 2019 17:11:00 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::e499:ecba:ec04:abac]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::e499:ecba:ec04:abac%5]) with mapi id 15.20.2115.005; Sat, 27 Jul 2019
 17:11:00 +0000
From: Yonghong Song <yhs@fb.com>
To: "sedat.dilek@gmail.com" <sedat.dilek@gmail.com>,
        Alexei Starovoitov
	<alexei.starovoitov@gmail.com>
CC: Alexei Starovoitov <ast@kernel.org>,
        Daniel Borkmann
	<daniel@iogearbox.net>, Martin Lau <kafai@fb.com>,
        Song Liu
	<songliubraving@fb.com>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
        Clang-Built-Linux ML
	<clang-built-linux@googlegroups.com>,
        Kees Cook <keescook@chromium.org>,
        "Nick Desaulniers" <ndesaulniers@google.com>,
        Nathan Chancellor
	<natechancellor@gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
Thread-Topic: next-20190723: bpf/seccomp - systemd/journald issue?
Thread-Index: AQHVQ4xS9PP3XA7/nkqulb+RBeHJq6bcleMAgADHHgCAAAbMgP//jN8AgAEkTwyAAAsRgIAAlVuA
Date: Sat, 27 Jul 2019 17:11:00 +0000
Message-ID: <57169960-35c2-d9d3-94e4-3b5a43d5aca7@fb.com>
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com>
 <CA+icZUXYp=Jx+8aGrZmkCbSFp-cSPcoRzRdRJsPj4yYNs_mJQw@mail.gmail.com>
 <CA+icZUXsPRWmH3i-9=TK-=2HviubRqpAeDJGriWHgK1fkFhgUg@mail.gmail.com>
 <295d2acd-0844-9a40-3f94-5bcbb13871d2@fb.com>
 <CA+icZUUe0QE9QGMom1iQwuG8nM7Oi4Mq0GKqrLvebyxfUmj6RQ@mail.gmail.com>
 <CAADnVQLhymu8YqtfM1NHD5LMgO6a=FZYaeaYS1oCyfGoBDE_BQ@mail.gmail.com>
 <CA+icZUXGPCgdJzxTO+8W0EzNLZEQ88J_wusp7fPfEkNE2RoXJA@mail.gmail.com>
 <CA+icZUWVf6AK3bxfWBZ7iM1QTyk_G-4+1_LyK0jkoBDkDzvx4Q@mail.gmail.com>
In-Reply-To: <CA+icZUWVf6AK3bxfWBZ7iM1QTyk_G-4+1_LyK0jkoBDkDzvx4Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR21CA0043.namprd21.prod.outlook.com
 (2603:10b6:300:129::29) To BYAPR15MB3384.namprd15.prod.outlook.com
 (2603:10b6:a03:10e::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:180::1:16cd]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 671d14e5-a896-4a13-6902-08d712b565a5
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BYAPR15MB2278;
x-ms-traffictypediagnostic: BYAPR15MB2278:
x-microsoft-antispam-prvs: <BYAPR15MB2278F52C2719FE879F0FF004D3C30@BYAPR15MB2278.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01110342A5
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(136003)(366004)(376002)(346002)(39860400002)(45914002)(189003)(31014005)(199004)(40764003)(11346002)(316002)(76176011)(386003)(2906002)(6246003)(486006)(7416002)(102836004)(2501003)(68736007)(8936002)(46003)(476003)(446003)(6506007)(53546011)(36756003)(71200400001)(86362001)(31696002)(81156014)(5660300002)(81166006)(8676002)(14454004)(256004)(66946007)(66476007)(64756008)(66556008)(66446008)(6486002)(229853002)(6436002)(14444005)(6512007)(110136005)(478600001)(25786009)(186003)(4326008)(99286004)(7736002)(31686004)(2616005)(71190400001)(52116002)(53936002)(305945005)(54906003)(6116002);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB2278;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TpDyj4QiToJBf8Df892InJqmC9JhVx/E6NxKLfueYtEfd9xnOF3OQMfts5+XOuzaAY5w+FH2sJpggtJw9J+SELjTEfKKPix4nwmJrB3xF2FxUpwEry+CUMCDTbfsNMVLBqR/1u4m6qWSWCYEBwff4bK1/VuZAEVwhwxuj1a5WG8GV02X2RLUkXCh0rm9/1fYzQSOpCr+Sal0X3mrZ2J8OKzNLFg7uMYZ206yrwZgfTVuDEL4jq9Pj7Sua91JrsKr8/R4b7FS+Z3RfnghwXN4bR2GoUeOf77zHktm4vERNibz9TfJfrs7W/4qHhTv+sBTpwN0ENiM1vrodnzHdiye6qoAaSbXd5t7DIsGKmMV24It/UuYsT5suD2m+DynxUm/JKZmZLyX8MwhDRcf3edmk2CoOO79vgpqFqlUyNEf3As=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <5FD579B668FC6A41A7DC1FA6A4E5E21E@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 671d14e5-a896-4a13-6902-08d712b565a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2019 17:11:00.2402
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yhs@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2278
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-07-27_13:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907270216
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b="U7I/gVIc";       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=MTXvHVEb;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=2111fa7ddd=yhs@fb.com designates 67.231.145.42 as permitted
 sender) smtp.mailfrom="prvs=2111fa7ddd=yhs@fb.com";       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=fb.com
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



On 7/27/19 1:16 AM, Sedat Dilek wrote:
> On Sat, Jul 27, 2019 at 9:36 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>>
>> On Sat, Jul 27, 2019 at 4:24 AM Alexei Starovoitov
>> <alexei.starovoitov@gmail.com> wrote:
>>>
>>> On Fri, Jul 26, 2019 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>>>>
>>>> On Fri, Jul 26, 2019 at 11:10 PM Yonghong Song <yhs@fb.com> wrote:
>>>>>
>>>>>
>>>>>
>>>>> On 7/26/19 2:02 PM, Sedat Dilek wrote:
>>>>>> On Fri, Jul 26, 2019 at 10:38 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>>>>>>>
>>>>>>> Hi Yonghong Song,
>>>>>>>
>>>>>>> On Fri, Jul 26, 2019 at 5:45 PM Yonghong Song <yhs@fb.com> wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> On 7/26/19 1:26 AM, Sedat Dilek wrote:
>>>>>>>>> Hi,
>>>>>>>>>
>>>>>>>>> I have opened a new issue in the ClangBuiltLinux issue tracker.
>>>>>>>>
>>>>>>>> Glad to know clang 9 has asm goto support and now It can compile
>>>>>>>> kernel again.
>>>>>>>>
>>>>>>>
>>>>>>> Yupp.
>>>>>>>
>>>>>>>>>
>>>>>>>>> I am seeing a problem in the area bpf/seccomp causing
>>>>>>>>> systemd/journald/udevd services to fail.
>>>>>>>>>
>>>>>>>>> [Fri Jul 26 08:08:43 2019] systemd[453]: systemd-udevd.service: Failed
>>>>>>>>> to connect stdout to the journal socket, ignoring: Connection refused
>>>>>>>>>
>>>>>>>>> This happens when I use the (LLVM) LLD ld.lld-9 linker but not with
>>>>>>>>> BFD linker ld.bfd on Debian/buster AMD64.
>>>>>>>>> In both cases I use clang-9 (prerelease).
>>>>>>>>
>>>>>>>> Looks like it is a lld bug.
>>>>>>>>
>>>>>>>> I see the stack trace has __bpf_prog_run32() which is used by
>>>>>>>> kernel bpf interpreter. Could you try to enable bpf jit
>>>>>>>>      sysctl net.core.bpf_jit_enable = 1
>>>>>>>> If this passed, it will prove it is interpreter related.
>>>>>>>>
>>>>>>>
>>>>>>> After...
>>>>>>>
>>>>>>> sysctl -w net.core.bpf_jit_enable=1
>>>>>>>
>>>>>>> I can start all failed systemd services.
>>>>>>>
>>>>>>> systemd-journald.service
>>>>>>> systemd-udevd.service
>>>>>>> haveged.service
>>>>>>>
>>>>>>> This is in maintenance mode.
>>>>>>>
>>>>>>> What is next: Do set a permanent sysctl setting for net.core.bpf_jit_enable?
>>>>>>>
>>>>>>
>>>>>> This is what I did:
>>>>>
>>>>> I probably won't have cycles to debug this potential lld issue.
>>>>> Maybe you already did, I suggest you put enough reproducible
>>>>> details in the bug you filed against lld so they can take a look.
>>>>>
>>>>
>>>> I understand and will put the journalctl-log into the CBL issue
>>>> tracker and update informations.
>>>>
>>>> Thanks for your help understanding the BPF correlations.
>>>>
>>>> Is setting 'net.core.bpf_jit_enable = 2' helpful here?
>>>
>>> jit_enable=1 is enough.
>>> Or use CONFIG_BPF_JIT_ALWAYS_ON to workaround.
>>>
>>> It sounds like clang miscompiles interpreter.
> 
> Just to clarify:
> This does not happen with clang-9 + ld.bfd (GNU/ld linker).
> 
>>> modprobe test_bpf
>>> should be able to point out which part of interpreter is broken.
>>
>> Maybe we need something like...
>>
>> "bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()"
>>
>> ...for clang?
>>
> 
> Not sure if something like GCC's...
> 
> -fgcse
> 
> Perform a global common subexpression elimination pass. This pass also
> performs global constant and copy propagation.
> 
> Note: When compiling a program using computed gotos, a GCC extension,
> you may get better run-time performance if you disable the global
> common subexpression elimination pass by adding -fno-gcse to the
> command line.
> 
> Enabled at levels -O2, -O3, -Os.
> 
> ...is available for clang.
> 
> I tried with hopping to turn off "global common subexpression elimination":
> 
> diff --git a/arch/x86/net/Makefile b/arch/x86/net/Makefile
> index 383c87300b0d..92f934a1e9ff 100644
> --- a/arch/x86/net/Makefile
> +++ b/arch/x86/net/Makefile
> @@ -3,6 +3,8 @@
>   # Arch-specific network modules
>   #
> 
> +KBUILD_CFLAGS += -O0

This won't work. First, you added to the wrong file. The interpreter
is at kernel/bpf/core.c.

Second, kernel may have compilation issues with -O0.

> +
>   ifeq ($(CONFIG_X86_32),y)
>           obj-$(CONFIG_BPF_JIT) += bpf_jit_comp32.o
>   else
> 
> Still see...
> BROKEN: test_bpf: #294 BPF_MAXINSNS: Jump, gap, jump, ... jited:0
> 
> - Sedat -
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/57169960-35c2-d9d3-94e4-3b5a43d5aca7%40fb.com.
