Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBC426DVQKGQEMWY4J3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7CCB2767
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 23:41:33 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id r144sf2169211oie.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 14:41:33 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1568410891; cv=pass;
        d=google.com; s=arc-20160816;
        b=XPWGNOqMuBRI0ZyZs1kcpU5osMmu6jzaa0irkyeqQNZT4wsVLK2cq1d8CK9o8XmiPm
         mAXBSfI0wWVZ3jjaCDdDBZVGFNGtD8E12kQV5jLswDxjdoBHtVuHuwOa8QiIt1XnqKEG
         yXQars74FPRcP1R+9ZDWWMnonFTg04KDheaHM65kpYzjQFibPFtIkpWPh/C68qqRt0ly
         6VT5ytiUH8w0w58DHEnKZ96/5RozzJNYO/6ScQNYOLVOWQjWKr7zQd0ZQlhBk2kfSx8E
         9ZkzbLK8epKWFaLZHtKrA5+uMKhtUoDRhg0i1fxPalFsp+8W3ROjdnXJrXNXMxkNU9dh
         UnZA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=XA51ykafYW74q+j3BfMl7w7QeDEn2JHK6womNQJz43I=;
        b=XYmePATAk9vtIz230ciFLtAn8ykvCwczlF8G9mYmxPHvDkUTFyM+pj+PKPYDFhFJPe
         cK3zXemMRdhEf+RIX1tcOWmD0r35rdlZ4RN1Bj83ljB+xtlaC1By+7uDHRfwZnhlNSNs
         0Ui4hVLCRWQyHgNXLMBvTi2uaoaITVERJOkU9gkIVmfj8xGiu4h0IVVgXRiMPL3mh5eM
         OvaKyG6ssZgVbK515WulMIBrm58g95EkuFxvc0Mi2h3BstpkQfuzKlwqyCshWkp8rLRd
         sp0XNuQE3B+G3vURauy8cvBFbVqlHCl8c9XyRl6+jNwCUFcbk0eFGZoYsizn7b5znfuu
         N2Ow==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=nLzpNKjX;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b="f4/Ojius";
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
        bh=XA51ykafYW74q+j3BfMl7w7QeDEn2JHK6womNQJz43I=;
        b=COXI3sev7u/TxXV6sYBl+bY1DjKj8/rl4wrvcBOULAAnY9eTjq6AwBOCt76Tp1BnPU
         4pkeYynfKgD/BDFadUJPFvfKB3hieEqqQtvaNtsfpbNZnuwz88Odln1U5eUwhHNI/C6z
         34qF3LVSTo/ijrp2F2AhOp4pcEVwPFwQh9mfsJHOzritjdAQ+DB4TqE0cioHZVkdN0dR
         qq0ZcUKhHSeBUngVOzSU1PN2Re/YFz5j1om5qgH0HRqjMVI6Ya5gfIe1gksf4Z+gQcnk
         l+nwwvo2zhwjssyPo1efnAw7Uu9vbpBIJvJpR7VY92+WQsQDJOX19ztg8pwNKqI3JIQC
         YZSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XA51ykafYW74q+j3BfMl7w7QeDEn2JHK6womNQJz43I=;
        b=NwCJiDAmh2W7VD5Khu39z111btIhPgIHfsLEorrVqazLAAaEimB6rMc0DsQM8wevkZ
         eUc96v1/aUb6fWN5ALgaw4VbRzLjfmmvBAqhhwZ8WExGC2S0ZWb8/eCjp5f579FWHhGv
         OtoSl9leeqrMIx3pUsGivD1uAq/9YZRsFB4vxEODNUuH8AfaEwrWPDycYChFFpGG1KiR
         qsdbtCP+iH+oexFhtTgcQPXBNkAg7EHKaKOrkyWtTQJGlU3wEiF/CYgUFaVdex2wjGyo
         cIDa3vfH30Di9OVmzgk51nvfE/wG7jdLnzf8zsxpbNGHXrIlhDsUSzQkaNYvfJXEe7f5
         rVGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVcqrtAIchugLdPgIgoaf7QfksFd8preTgFPecelCwbBCbjd9Al
	sa+h481wLhrS1XCGR+iG0y8=
X-Google-Smtp-Source: APXvYqxJXCHa137iALnYpl8mjta/TPVNAFkQyKyWc1XtCV5vHLuxFDSrwfJTyKckZGHJzWuOOk10PQ==
X-Received: by 2002:aca:aad4:: with SMTP id t203mr5432679oie.75.1568410891650;
        Fri, 13 Sep 2019 14:41:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:204:: with SMTP id l4ls850305oie.3.gmail; Fri, 13
 Sep 2019 14:41:31 -0700 (PDT)
X-Received: by 2002:aca:cdc1:: with SMTP id d184mr5482593oig.23.1568410891403;
        Fri, 13 Sep 2019 14:41:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568410891; cv=pass;
        d=google.com; s=arc-20160816;
        b=fN7A9LpcE+Vji9vTaGK1Ro/8D5VOwzc/JtEDbRtn/e04s+pbPiHZ+1Th2TYIaXcCzy
         8BC6K6A12D82ZhsmqQiwiMZBUI5BavG9lDNDlegyKCFgiL/45XbEgkxMwcAQVsLTM4GK
         rtw6jyIaLPIAv7LRY9wJQWAY+l9umSqKVBs3kKyHxlv+Lwnu3/GmE7VNV608n6itV/dV
         T5lENTPtIxwJhwpAmja3d7PzOyPjSRjRUGkzfMMKncey5iod4+X0lOt17f0E+o1miaJt
         U5nWJfbOIc32oJ9d+ZlAy3CC3qucKA4hlxNLSE8wnmg/bB2xVD2X7DMzHYEOWi3TVmob
         LlOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=XjmsHRvZUNZfJ6ZjZm+R1kSx4l6eicHcBcQ29QZ6HZw=;
        b=HxC7+ygqwo4Sl0JxqgDTg0yzqD1nQo0H6MgoH1H58gZhcBSXe67pzyi1mkT9fRIIJf
         nA6k15MSzaPOWhD0l9Rz51h9iVLLreBm9gkk32qLFxq0ZtuvClzcIZ6FcVsl4pHj91gj
         6D4FrSI/Qv20ofeMqoRpxWmk2TEHTxcRAmlObce+sn+0wN+1vSH7HKv+IkLq31QLnNwL
         gePDwDe1N3bhA/Cz4XqG8ua1MXjSKp4qNiLb+Zvwvx+sMfs6fYjZcNBKcX+3N5eXFw26
         LKDD47TrAx/Cl10dj+dDvi6U5zazsqrgJJVopf5UNA63knZ7rkL0JpyyaSj2WwxHg5jL
         U+xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=nLzpNKjX;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b="f4/Ojius";
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id k184si95136oih.0.2019.09.13.14.41.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Sep 2019 14:41:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0044010.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x8DLe6j0002930;
	Fri, 13 Sep 2019 14:41:28 -0700
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
	by mx0a-00082601.pphosted.com with ESMTP id 2v0k5980ke-6
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 13 Sep 2019 14:41:28 -0700
Received: from prn-hub01.TheFacebook.com (2620:10d:c081:35::125) by
 prn-hub01.TheFacebook.com (2620:10d:c081:35::125) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 13 Sep 2019 14:41:26 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Sep 2019 14:41:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OeRX2CqCo9m+FvUqlymV5VvveEtp+oRZjIYmTjDgi4mfgp5pDrtgU/y7DQQej/LsUQNkuy8UjSo1haYnPWzcYa2dIkfCiIn11EEzTV3toc6yAJ2EwMb1FWJA/4EnZEJsycUUdbXtHy+RT9LfzPhY6igOS2lP+Vb/kNVUqv1Mgq3N0/L9ZP+rRBt+f6L7qdS8c54tEDyOM3OyXmNG5qTU8yaZakI/FcGFWbmvoJvahhpCebyj9G6Q2M8TfNaTdy2heLGEhyN7+OIozbuDUuBAzc9mFZi3Vkn+uDOvgrRRY1t+YjWKwpy3ioCImjtfz5w8OdpwOlkDLVR+c9Kz0fVfPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XjmsHRvZUNZfJ6ZjZm+R1kSx4l6eicHcBcQ29QZ6HZw=;
 b=oOm9zaX2HIiLq31wfJJTXHqZNYZ/BWV5ecHN8MSXrs+/361EpZflK7WGtXvujhmq1OYshnoyPY012B1QdGH0ALxAx4urtv4cmpu/S9Qx5Zki0z8DwOhPYBYzmJuY44GAN+GN15gB08cfjusnKtdPSPm0OqKsV1/1AelBE1W23aTWBChvPnSObnjwxWWv2kiDUm8KJryV9o2+JzaWT2RUtZWMFrIyhOut8iUInuQ0LzYiHK51MWyB5ssaRAkizPg/0FxJzAt8rKpgbfqVrf7nkLimkZCoYvOx1+OlYrgXQnJAm6PdTkpkKt9dRKNhOtgbqAaOhlFV025rS6Ps+QsaUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.60.27) by
 BYAPR15MB3351.namprd15.prod.outlook.com (20.179.58.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.15; Fri, 13 Sep 2019 21:41:25 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e%6]) with mapi id 15.20.2263.021; Fri, 13 Sep 2019
 21:41:25 +0000
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
Subject: Re: [PATCH bpf-next 08/11] samples: bpf: makefile: base progs build
 on makefile.progs
Thread-Topic: [PATCH bpf-next 08/11] samples: bpf: makefile: base progs build
 on makefile.progs
Thread-Index: AQHVZ8PznGyUAwk23kqpi7ed59o4GacqKG+A
Date: Fri, 13 Sep 2019 21:41:25 +0000
Message-ID: <dd4cd83f-7e35-ad07-8a53-d34c13c074a5@fb.com>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-9-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190910103830.20794-9-ivan.khoronzhuk@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR06CA0030.namprd06.prod.outlook.com
 (2603:10b6:301:39::43) To BYAPR15MB3384.namprd15.prod.outlook.com
 (2603:10b6:a03:112::27)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::ec5b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ccbeac9b-4051-4e8a-8f6a-08d738932082
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BYAPR15MB3351;
x-ms-traffictypediagnostic: BYAPR15MB3351:
x-microsoft-antispam-prvs: <BYAPR15MB3351548CE1073B1A1B1D960CD3B30@BYAPR15MB3351.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:632;
x-forefront-prvs: 0159AC2B97
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(39860400002)(346002)(376002)(366004)(136003)(189003)(199004)(6436002)(102836004)(6506007)(386003)(5660300002)(5024004)(316002)(446003)(99286004)(46003)(53546011)(2501003)(256004)(11346002)(52116002)(14444005)(25786009)(31686004)(14454004)(6246003)(86362001)(31696002)(76176011)(110136005)(7736002)(71190400001)(71200400001)(305945005)(2201001)(54906003)(66574012)(7416002)(4326008)(486006)(2906002)(66446008)(66556008)(2616005)(476003)(53936002)(81156014)(8936002)(36756003)(81166006)(6486002)(66476007)(64756008)(6116002)(229853002)(478600001)(186003)(8676002)(66946007)(6512007);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB3351;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3ZdB8rS4rNonS+U4r2jg4a+1NX5IhNwaqu1weoD0Ea3LyRywafwLb7cvbj2qnKqWx7GZDqA9M12ado2SqQBqWZ4Yn5GWKaEKV8uhV4XTZYSSLE3hd9KxZH6PaDRbpl8wZPWxI59nqkb+LSo7pCYwDivYKWDgeJ6HeXOChkHfklWhUOXyCE784k+oHp531JlavNxDEU+u7Ln3O/DShsqlAviC64rAVwvr+7FW9oSDUqmi/AhnoEmSIRUdshrh0euchl78CFirbytBeRWI7OxMwqa6J1yCF/vfgkZfme8lAW/t/+EbxYy2MDUOqWGrF5jtM2/0oLEd0jgts/w1YY69vK0Fz5x/77AdsJiWmYGen00gPoffwYY0zNApwyWl2vsgRiwiSXGY8U4j9ulfjO32xwUBkS9kxQ7/As+JbrgQako=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <A835652B442A6E43ADB95B84E08460AF@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ccbeac9b-4051-4e8a-8f6a-08d738932082
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2019 21:41:25.4998
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SedmU6vP2UmcVPEeJd1pIDViBB5q6GMKtUQPa5SATxn5QCA/TX6ETmHvfeW7hU8B
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB3351
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_10:2019-09-11,2019-09-13 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 phishscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1908290000 definitions=main-1909130215
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=nLzpNKjX;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b="f4/Ojius";       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
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
> The main reason for that - HOSTCC and CC have different aims.
> It was tested for arm cross compilation, based on linaro toolchain,
> but should work for others.
> 
> In order to split cross compilation (CC) with host build (HOSTCC),
> lets base bpf samples on Makefile.progs. It allows to cross-compile
> samples/bpf progs with CC while auxialry tools running on host built
> with HOSTCC.

I got a compilation failure with the following error

$ make samples/bpf/
   ...
   LD  samples/bpf/hbm
   CC      samples/bpf/syscall_nrs.s
gcc: error: -pg and -fomit-frame-pointer are incompatible
make[2]: *** [samples/bpf/syscall_nrs.s] Error 1
make[1]: *** [samples/bpf/] Error 2
make: *** [sub-make] Error 2

Could you take a look?

> 
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>   samples/bpf/Makefile | 138 +++++++++++++++++++++++--------------------
>   1 file changed, 73 insertions(+), 65 deletions(-)
> 
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index f5dbf3d0c5f3..625a71f2e9d2 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -4,55 +4,53 @@ BPF_SAMPLES_PATH ?= $(abspath $(srctree)/$(src))
>   TOOLS_PATH := $(BPF_SAMPLES_PATH)/../../tools
>   
>   # List of programs to build
> -hostprogs-y := test_lru_dist
> -hostprogs-y += sock_example
> -hostprogs-y += fds_example
> -hostprogs-y += sockex1
> -hostprogs-y += sockex2
> -hostprogs-y += sockex3
> -hostprogs-y += tracex1
> -hostprogs-y += tracex2
> -hostprogs-y += tracex3
> -hostprogs-y += tracex4
> -hostprogs-y += tracex5
> -hostprogs-y += tracex6
> -hostprogs-y += tracex7
> -hostprogs-y += test_probe_write_user
> -hostprogs-y += trace_output
> -hostprogs-y += lathist
> -hostprogs-y += offwaketime
> -hostprogs-y += spintest
> -hostprogs-y += map_perf_test
> -hostprogs-y += test_overhead
> -hostprogs-y += test_cgrp2_array_pin
> -hostprogs-y += test_cgrp2_attach
> -hostprogs-y += test_cgrp2_sock
> -hostprogs-y += test_cgrp2_sock2
> -hostprogs-y += xdp1
> -hostprogs-y += xdp2
> -hostprogs-y += xdp_router_ipv4
> -hostprogs-y += test_current_task_under_cgroup
> -hostprogs-y += trace_event
> -hostprogs-y += sampleip
> -hostprogs-y += tc_l2_redirect
> -hostprogs-y += lwt_len_hist
> -hostprogs-y += xdp_tx_iptunnel
> -hostprogs-y += test_map_in_map
> -hostprogs-y += per_socket_stats_example
> -hostprogs-y += xdp_redirect
> -hostprogs-y += xdp_redirect_map
> -hostprogs-y += xdp_redirect_cpu
> -hostprogs-y += xdp_monitor
> -hostprogs-y += xdp_rxq_info
> -hostprogs-y += syscall_tp
> -hostprogs-y += cpustat
> -hostprogs-y += xdp_adjust_tail
> -hostprogs-y += xdpsock
> -hostprogs-y += xdp_fwd
> -hostprogs-y += task_fd_query
> -hostprogs-y += xdp_sample_pkts
> -hostprogs-y += ibumad
> -hostprogs-y += hbm
> +progs-y := test_lru_dist
> +progs-y += sock_example
> +progs-y += fds_example
> +progs-y += sockex1
> +progs-y += sockex2
> +progs-y += sockex3
> +progs-y += tracex1
> +progs-y += tracex2
> +progs-y += tracex3
> +progs-y += tracex4
> +progs-y += tracex5
> +progs-y += tracex6
> +progs-y += tracex7
> +progs-y += test_probe_write_user
> +progs-y += trace_output
> +progs-y += lathist
> +progs-y += offwaketime
> +progs-y += spintest
> +progs-y += map_perf_test
> +progs-y += test_overhead
> +progs-y += test_cgrp2_array_pin
> +progs-y += test_cgrp2_attach
> +progs-y += test_cgrp2_sock
> +progs-y += test_cgrp2_sock2
> +progs-y += xdp1
> +progs-y += xdp2
> +progs-y += xdp_router_ipv4
> +progs-y += test_current_task_under_cgroup
> +progs-y += trace_event
> +progs-y += sampleip
> +progs-y += tc_l2_redirect
> +progs-y += lwt_len_hist
> +progs-y += xdp_tx_iptunnel
> +progs-y += test_map_in_map
> +progs-y += xdp_redirect_map
> +progs-y += xdp_redirect_cpu
> +progs-y += xdp_monitor
> +progs-y += xdp_rxq_info
> +progs-y += syscall_tp
> +progs-y += cpustat
> +progs-y += xdp_adjust_tail
> +progs-y += xdpsock
> +progs-y += xdp_fwd
> +progs-y += task_fd_query
> +progs-y += xdp_sample_pkts
> +progs-y += ibumad
> +progs-y += hbm
>   
>   # Libbpf dependencies
>   LIBBPF = $(TOOLS_PATH)/lib/bpf/libbpf.a
> @@ -111,7 +109,7 @@ ibumad-objs := bpf_load.o ibumad_user.o $(TRACE_HELPERS)
>   hbm-objs := bpf_load.o hbm.o $(CGROUP_HELPERS)
>   
>   # Tell kbuild to always build the programs
> -always := $(hostprogs-y)
> +always := $(progs-y)
>   always += sockex1_kern.o
>   always += sockex2_kern.o
>   always += sockex3_kern.o
> @@ -170,21 +168,6 @@ always += ibumad_kern.o
>   always += hbm_out_kern.o
>   always += hbm_edt_kern.o
>   
> -KBUILD_HOSTCFLAGS += -I$(objtree)/usr/include
> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/bpf/
> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/testing/selftests/bpf/
> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/lib/ -I$(srctree)/tools/include
> -KBUILD_HOSTCFLAGS += -I$(srctree)/tools/perf
> -
> -HOSTCFLAGS_bpf_load.o += -Wno-unused-variable
> -
> -KBUILD_HOSTLDLIBS		+= $(LIBBPF) -lelf
> -HOSTLDLIBS_tracex4		+= -lrt
> -HOSTLDLIBS_trace_output	+= -lrt
> -HOSTLDLIBS_map_perf_test	+= -lrt
> -HOSTLDLIBS_test_overhead	+= -lrt
> -HOSTLDLIBS_xdpsock		+= -pthread
> -
>   # Strip all expet -D options needed to handle linux headers
>   # for arm it's __LINUX_ARM_ARCH__ and potentially others fork vars
>   D_OPTIONS = $(shell echo "$(KBUILD_CFLAGS) " | sed 's/[[:blank:]]/\n/g' | \
> @@ -194,6 +177,29 @@ ifeq ($(ARCH), arm)
>   CLANG_EXTRA_CFLAGS := $(D_OPTIONS)
>   endif
>   
> +ccflags-y += -I$(objtree)/usr/include
> +ccflags-y += -I$(srctree)/tools/lib/bpf/
> +ccflags-y += -I$(srctree)/tools/testing/selftests/bpf/
> +ccflags-y += -I$(srctree)/tools/lib/
> +ccflags-y += -I$(srctree)/tools/include
> +ccflags-y += -I$(srctree)/tools/perf
> +ccflags-y += $(D_OPTIONS)
> +ccflags-y += -Wall
> +ccflags-y += -fomit-frame-pointer
> +ccflags-y += -Wmissing-prototypes
> +ccflags-y += -Wstrict-prototypes
> +
> +PROGS_CFLAGS := $(ccflags-y)
> +
> +PROGCFLAGS_bpf_load.o += -Wno-unused-variable
> +
> +PROGS_LDLIBS			:= $(LIBBPF) -lelf
> +PROGLDLIBS_tracex4		+= -lrt
> +PROGLDLIBS_trace_output		+= -lrt
> +PROGLDLIBS_map_perf_test	+= -lrt
> +PROGLDLIBS_test_overhead	+= -lrt
> +PROGLDLIBS_xdpsock		+= -pthread
> +
>   # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
>   #  make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
>   LLC ?= llc
> @@ -284,6 +290,8 @@ $(obj)/hbm_out_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
>   $(obj)/hbm.o: $(src)/hbm.h
>   $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
>   
> +-include $(BPF_SAMPLES_PATH)/Makefile.prog
> +
>   # asm/sysreg.h - inline assembly used by it is incompatible with llvm.
>   # But, there is no easy way to fix it, so just exclude it since it is
>   # useless for BPF samples.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dd4cd83f-7e35-ad07-8a53-d34c13c074a5%40fb.com.
