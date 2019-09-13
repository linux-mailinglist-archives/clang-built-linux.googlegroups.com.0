Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBAE36DVQKGQEMWR7LZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 349D7B276B
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 23:43:29 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id n79sf932499vkf.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 14:43:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1568411008; cv=pass;
        d=google.com; s=arc-20160816;
        b=cWZRcyRw5biTCivqgfOPSfD/U/kkx1irETqRHlUjZhYLzSG+aDZpAs3jbq7bq2GHnp
         8M3waWsVNv/Bw/IJZYvYf5uP3wSNAo8oKlgLykdc9JDgEvsXecIX0H/3YI9NuYEVY81f
         7bNnk8plypY0OIdZSK+i70xS4NheUNctLsNiCeJGk1Nwx/bl+qZP4+VwBZvdD+M7Oh6h
         2zXFaUyEbiVTYkoRU4dqeTWmPiqsMM9mVDW5MBULM2RFCn+tmRQMuf30dNVndJ0Borax
         WKV5bkLBTZKIv3/ljUk5TAKFW3P/4eMSRj3XiDtpr3RWrFu/Ez/xHZEf1keTP/HIIdPU
         2eMA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=tCCUrVdrbiYec/LlJPUJivYYDXYVDg05/ECOUqkg9Hc=;
        b=UiKlYmHjIKEpXyZ1Bxv/vFMcz3CSxNFq8GASatkHyO/iteAnoBIk/IPJQKArVQt1C8
         8LgDSRqa2lVUuUaxRLS5SaoIr8/EW75IBBbYWB/tv92WXX7UnlswYuKpB8Z62g1PN5nm
         bo6rt19To+zE8xz10hYU8qIddarsJCI3GbxifRjWxxyEepg6+kr2s9P9KFfZYzEmJXof
         5DOQ74DJSaFD6gHmhkrn3jkk/ovZeZFJKaRCf+AiI1g3Nf79KkzQsZvhvwi5TCLjoAdt
         nLefhc7hCBnnUUDYt9if+bFJZn38zmqFMhYOCeM709edrvyYes2oeE/8GoqMkRRs/HKM
         oatQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=MyzBBF8F;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=UFK4Ffj+;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tCCUrVdrbiYec/LlJPUJivYYDXYVDg05/ECOUqkg9Hc=;
        b=fNZOczvKw3GiNASAlLIQtJh5wu1zaRpyrcGj0H1fYSOpx+2J23aYtQUarIQEGpVyCk
         aW+OgdL9EhaYQycR/hGEjfctAETvjLnuJguAUQJCKZSgSphcYJ1tML6BzbxN7mqdScnj
         Z7R+aDfTpYxZ3wQ3IvnHzeaCN4e2AiZ7gOxm4VxiVYk/+wNveFDyeOpM5EC+bsjChwHF
         c/EHCx6QOlh1Vcon8GOUFXeynebNNTnfS2PVrWSoNp+QeI967YSg8iQVFCukrXVnI2t0
         G1hMpa+LsN2s+9DQoDqk1ysD3T+0V28v72SbpNNHOI6duQb4DYKHu69yjexsnXrbEHZ4
         lJhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tCCUrVdrbiYec/LlJPUJivYYDXYVDg05/ECOUqkg9Hc=;
        b=GerdpqEuN4G+S5vPajf3w0WRNaBZCl7icV4bHWg8wBm/axg9PdRSPU5poC0KmD913d
         VeNlqYBCsJeufz3C2BA/Q4tszjeSflwjT8H12H0IYihqQCxS3ISnz+JRxBskXzNZHVgn
         wGGEcA1nliFyFywxCMzEe5oRmaPAhhhdOE/nYtUQw6Ws5M47ED/+uP/Y0zuhk9HNUoCq
         kGauBqlmixfTd/2l3E/8FaLktO3ZMoVaLmKihsxE9lI7zhNqNrMLUKggdjJTNU5sEH7M
         YXk2SeY5HtAcZE1izjTe1uCwAZWsI6q9i2WINsMyuWs8hQMNxzfaDBEnn90+LJ3tFHfZ
         w39g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVns+590caedfo75hdw+WxsVcMp4CLOn6zhB7YgT+rSJrG6YhRz
	RX/MfUc82rxZhKj37T0s1lM=
X-Google-Smtp-Source: APXvYqx4brsQwqbAP+wbI7ivuDt+OTprZuAOvpNYmNGl699Xd5EY9ZEKXcqs+5n2rAjbkt45CrCt3g==
X-Received: by 2002:a67:cb17:: with SMTP id b23mr16716144vsl.190.1568411008238;
        Fri, 13 Sep 2019 14:43:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:48c5:: with SMTP id v188ls45498vka.10.gmail; Fri, 13 Sep
 2019 14:43:28 -0700 (PDT)
X-Received: by 2002:ac5:c4e9:: with SMTP id b9mr1011014vkl.83.1568411007927;
        Fri, 13 Sep 2019 14:43:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568411007; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Yuqc8twTIh8C6NcitfDIJ65n0DqqPcmY1i/6Azw/iESe9i+DYGo2wgkt5nu7+shQn
         qIMAP83+5obaG281PpLeekfQjY7AZzQiA6SxAhQ/QHZqnWOZ9xC9NQYM3pf3ygcit2me
         A3mE3bmkrfR/I7FSa6937VW+iwfos2HVGtxazSwGJeGy5t4Tb1nHANPZttbTY8kteqnw
         XXcdUOp9Tvj6uU/dQvP2Ny2uGM+j66g7Kg2jQ7HH3lZh5HYlDZEIGcl6fGIB54ziw8RN
         6Ch808zfhztdBG0dsOmStDgLAtjBj0ifPBuUyo3t87K+ydlaNI9gjK4G3pNWFyzNeSFM
         HhEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=t29OAYCSJodBeaQ4OAYLbJt+9h6OFHwbktpmVfe1jKM=;
        b=VoXDEfjASKh1cPYpJi5TL0r6uRCSZ7RtAeep6uvS+Ls05Gejdc0eq9hNxLIPNvshMV
         9AuKx+ulnBTT2MvkAD83rIV1znm4Cui2NQ562zHG8iKFL8O42SF9/51VDbEHC+pHtf69
         cwOZ5952foCe+FgEZRk+IzrZoYhy8c+B0HBdWqBCzcTlyZXttOg9p3Gm+gCICJZw/aea
         ZHck80xW174hCp93hKU/HsOHkHfxNk5EldYHehXoe8bfF+1ycQr4HK5uPNnASPKdA9sx
         hpTh245l2NvwozTK5yFklZZHrmRJ3sNffcNvygcz1VfWwLGHZ/pKt3Dh63pnIUjE76zv
         b+HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=MyzBBF8F;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=UFK4Ffj+;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id r72si1338702vke.5.2019.09.13.14.43.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Sep 2019 14:43:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0148461.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x8DLhEi0028653;
	Fri, 13 Sep 2019 14:43:25 -0700
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
	by mx0a-00082601.pphosted.com with ESMTP id 2v0ehf1cd3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 13 Sep 2019 14:43:25 -0700
Received: from prn-mbx06.TheFacebook.com (2620:10d:c081:6::20) by
 prn-hub05.TheFacebook.com (2620:10d:c081:35::129) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 13 Sep 2019 14:43:24 -0700
Received: from prn-hub01.TheFacebook.com (2620:10d:c081:35::125) by
 prn-mbx06.TheFacebook.com (2620:10d:c081:6::20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 13 Sep 2019 14:43:24 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Sep 2019 14:43:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dl1r6nKZeBfwEW2DULCJQfwWRw9aipl03EEhf/N9IQg9v1PFXPCdfNkB8fuGafw7AgcbCpZ7CyJI85DphyR+3Osia43333Aez1A1+tV9R+JTITllU03ozVRvn4goVTsv4jjcT9XuliWzfCi3YeR8MmbdXvP4vNiodbkYVuWjyK5/OoEDBRaVMicJMrLkK3+mN/6fAsmeCNQgXwrBVaNhP8ZWFzLiAmr8JywKJTkEkNHQ2RPeK6Di4PIllMLdnQ05t0beQZMLSX6zHNd2ZJYQhi27yPrFmtRBMBGAV/gM/4oLUqTn34FSoz62yp+MOVqgkwiSOOG8hV82zBqnzQFywA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t29OAYCSJodBeaQ4OAYLbJt+9h6OFHwbktpmVfe1jKM=;
 b=QELwGw1HVCkkpLLAC09FeNrTbDfquJlfNmiy3Sip2g13zjmnFOiwzTIu4d+Mbbw6rQidAHCny4fAypZOcsPe3t9/FfkNeA1gJ4lwpTukCGTB1eqg943sq2Pe0ME89uJmlzj9u9VBJSjIeZfbWgyn605i/nuNY282RTJzsyoeJFsuz1Vadtm1Nz6NLRq0Xg4GcLkhfxGMEmJLLZClfEqwSOgKsPHvCGYI4hDyxrdIMMXOHBOswDCsvzceeonmUl+QmP0sd7I03todofW6hHBFPb7WRwQUXqk3fJm3JG/ftjgg3OLWKtnSDbJwdsuuHCjGVZBac5ILq5s02wutYXI9Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.60.27) by
 BYAPR15MB2790.namprd15.prod.outlook.com (20.179.158.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Fri, 13 Sep 2019 21:43:23 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e%6]) with mapi id 15.20.2263.021; Fri, 13 Sep 2019
 21:43:22 +0000
From: Yonghong Song <yhs@fb.com>
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>,
        "ast@kernel.org"
	<ast@kernel.org>,
        "daniel@iogearbox.net" <daniel@iogearbox.net>,
        "davem@davemloft.net" <davem@davemloft.net>,
        "jakub.kicinski@netronome.com"
	<jakub.kicinski@netronome.com>,
        "hawk@kernel.org" <hawk@kernel.org>,
        "john.fastabend@gmail.com" <john.fastabend@gmail.com>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "bpf@vger.kernel.org"
	<bpf@vger.kernel.org>,
        "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: Re: [PATCH bpf-next 10/11] libbpf: makefile: add C/CXX/LDFLAGS to
 libbpf.so and test_libpf targets
Thread-Topic: [PATCH bpf-next 10/11] libbpf: makefile: add C/CXX/LDFLAGS to
 libbpf.so and test_libpf targets
Thread-Index: AQHVZ8P227ZjVLoXXk6TohiF3lwY/qcqKPuA
Date: Fri, 13 Sep 2019 21:43:22 +0000
Message-ID: <0ad42019-2614-b70c-f93e-527c136bba83@fb.com>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-11-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190910103830.20794-11-ivan.khoronzhuk@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MW2PR16CA0057.namprd16.prod.outlook.com
 (2603:10b6:907:1::34) To BYAPR15MB3384.namprd15.prod.outlook.com
 (2603:10b6:a03:112::27)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::ec5b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0811495f-7f13-455d-f49e-08d738936674
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);SRVR:BYAPR15MB2790;
x-ms-traffictypediagnostic: BYAPR15MB2790:
x-microsoft-antispam-prvs: <BYAPR15MB27901BEF426C2D8EEDCABC0FD3B30@BYAPR15MB2790.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:172;
x-forefront-prvs: 0159AC2B97
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(366004)(136003)(346002)(376002)(39860400002)(396003)(189003)(199004)(6512007)(2906002)(478600001)(66556008)(305945005)(110136005)(66476007)(6486002)(81156014)(8676002)(6436002)(66446008)(54906003)(486006)(86362001)(256004)(2501003)(71200400001)(71190400001)(316002)(476003)(7416002)(36756003)(14454004)(76176011)(99286004)(7736002)(31686004)(64756008)(31696002)(2201001)(5660300002)(4326008)(25786009)(52116002)(81166006)(6116002)(66946007)(8936002)(229853002)(102836004)(386003)(53546011)(186003)(6506007)(446003)(11346002)(2616005)(53936002)(6246003)(46003);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB2790;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: h6eI+6TiSSBB2gQwkFT9WOhp6Qvb/zIcqCZFReq/T4GzXVA8gRzSVd7tnF700OsjoL5zKGvl1SbMNPtHtV7fe0lJjwzmUApqR9+dzj7eNKFI5P7zhDdjJjqgjoCymgBTtJkLfh/Q/SYpIr1EMW/z/WUXkZcO6CdZu7Bwww5/Nt8ztoHPXTW76tQEXxFan80nsKGqubBEeyAFE3tneu8OZ+pKyV5j9qVdRed8W9VB0TJNDraVSx9Qj4XnqzS+Spx8ORjc/2EKgdTHbpb4qd1Q0bOXycvsS0z4kWYndIxpV4ZLsKkC5rPsJVmq9OaNdRQ5sxkuWPfKSdckTpJwA2+tDAFcIsErrAJQ+wgPf9e3LfUsyVxH9KIuEYGaoAaDUizMia3LsE5L23PbQd2EMHQePeRKJrjEckNMrc4Fs6u2T3o=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <9276BE0779FC2146AD5B81D975A87A3E@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0811495f-7f13-455d-f49e-08d738936674
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2019 21:43:22.8652
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +yq3wAw+VXgg+4uUkBDgU+vAgTJyJnd1QQ1Ujz+mijBS2FFuwTjzT8FOeb0Ng2xb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2790
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_10:2019-09-11,2019-09-13 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 suspectscore=0
 lowpriorityscore=0 mlxlogscore=999 impostorscore=0 clxscore=1015
 malwarescore=0 phishscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 mlxscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909130216
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=MyzBBF8F;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=UFK4Ffj+;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted
 sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";       dmarc=pass (p=NONE
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



On 9/10/19 11:38 AM, Ivan Khoronzhuk wrote:
> In case of LDFLAGS and EXTRA_CC/CXX flags there is no way to pass them
> correctly to build command, for instance when --sysroot is used or
> external libraries are used, like -lelf, wich can be absent in
> toolchain. This is used for samples/bpf cross-compiling allowing to
> get elf lib from sysroot.
> 
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>   samples/bpf/Makefile   |  8 +++++++-
>   tools/lib/bpf/Makefile | 11 ++++++++---
>   2 files changed, 15 insertions(+), 4 deletions(-)

Could you separate this patch into two?
One of libbpf and another for samples.

The subject 'libbpf: ...' is not entirely accurate.

> 
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 79c9aa41832e..4edc5232cfc1 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -186,6 +186,10 @@ ccflags-y += -I$(srctree)/tools/perf
>   ccflags-y += $(D_OPTIONS)
>   ccflags-y += -Wall
>   ccflags-y += -fomit-frame-pointer
> +
> +EXTRA_CXXFLAGS := $(ccflags-y)
> +
> +# options not valid for C++
>   ccflags-y += -Wmissing-prototypes
>   ccflags-y += -Wstrict-prototypes
>   
> @@ -252,7 +256,9 @@ clean:
>   
>   $(LIBBPF): FORCE
>   # Fix up variables inherited from Kbuild that tools/ build system won't like
> -	$(MAKE) -C $(dir $@) RM='rm -rf' LDFLAGS= srctree=$(BPF_SAMPLES_PATH)/../../ O=
> +	$(MAKE) -C $(dir $@) RM='rm -rf' EXTRA_CFLAGS="$(PROGS_CFLAGS)" \
> +		EXTRA_CXXFLAGS="$(EXTRA_CXXFLAGS)" LDFLAGS=$(PROGS_LDFLAGS) \
> +		srctree=$(BPF_SAMPLES_PATH)/../../ O=
>   
>   $(obj)/syscall_nrs.h:	$(obj)/syscall_nrs.s FORCE
>   	$(call filechk,offsets,__SYSCALL_NRS_H__)
> diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
> index c6f94cffe06e..bccfa556ef4e 100644
> --- a/tools/lib/bpf/Makefile
> +++ b/tools/lib/bpf/Makefile
> @@ -94,6 +94,10 @@ else
>     CFLAGS := -g -Wall
>   endif
>   
> +ifdef EXTRA_CXXFLAGS
> +  CXXFLAGS := $(EXTRA_CXXFLAGS)
> +endif
> +
>   ifeq ($(feature-libelf-mmap), 1)
>     override CFLAGS += -DHAVE_LIBELF_MMAP_SUPPORT
>   endif
> @@ -176,8 +180,9 @@ $(BPF_IN): force elfdep bpfdep
>   $(OUTPUT)libbpf.so: $(OUTPUT)libbpf.so.$(LIBBPF_VERSION)
>   
>   $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
> -	$(QUIET_LINK)$(CC) --shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
> -				    -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
> +	$(QUIET_LINK)$(CC) $(LDFLAGS) \
> +		--shared -Wl,-soname,libbpf.so.$(LIBBPF_MAJOR_VERSION) \
> +		-Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
>   	@ln -sf $(@F) $(OUTPUT)libbpf.so
>   	@ln -sf $(@F) $(OUTPUT)libbpf.so.$(LIBBPF_MAJOR_VERSION)
>   
> @@ -185,7 +190,7 @@ $(OUTPUT)libbpf.a: $(BPF_IN)
>   	$(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
>   
>   $(OUTPUT)test_libbpf: test_libbpf.cpp $(OUTPUT)libbpf.a
> -	$(QUIET_LINK)$(CXX) $(INCLUDES) $^ -lelf -o $@
> +	$(QUIET_LINK)$(CXX) $(CXXFLAGS) $(LDFLAGS) $(INCLUDES) $^ -lelf -o $@
>   
>   $(OUTPUT)libbpf.pc:
>   	$(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0ad42019-2614-b70c-f93e-527c136bba83%40fb.com.
