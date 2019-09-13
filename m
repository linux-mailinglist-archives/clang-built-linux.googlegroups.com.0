Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBD446DVQKGQENL7PH5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 618CEB2777
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 23:45:52 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id h15sf144252uan.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 14:45:52 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1568411151; cv=pass;
        d=google.com; s=arc-20160816;
        b=MjPl/Nv8y8VESUQN7Bg/jEZfj82WBk30FrbSTnghuHFZOvbm/iberscZZv9T37MspP
         mBuR+oMsa2y7SUkO095DNzn5J1x9XHuCNOBc8rU6qIQ/UCqgEg5o2toibsWAGlmcJsBJ
         2qSUygnfJXJbLjs+rrU9kS/rY5nDZ6AoJrrqnhlxUaqDZFLezh6cQtDqu1J49PQw0Ftb
         5yRO8Q+pZB1v0M+kMFrhXLHxxHy7coCrUfX8nX1+z0KDDZESCCiRGkJ7wHhAJ4t7yVYK
         xN1MFizhf73KNW6d6XZO/hhsiWJ06vaz36NRNVeBorv+Euvx5KyAlmNcIG6f8ssfAaPd
         7adw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=FSY8Ol7PGXhJRgFheBFYuVtqjXCjiHCXZwzBtpBYjQI=;
        b=KW2ISzwe7d9dtsb7ms/tELGozLcZCGxsEB9KYp3pxY967Kd6lg1ssOBByV1Eg6//eS
         iLF8UKDmMSy9CIysR8BtOQd3pjgYbP6CiMHYO/i783uDERXMtynG2JSIpNR1ISwK3Ae3
         QtFzu1BCz0Y/Ax8D2Gui8Z3zzbLlTvtZ4rifgh71xF0ecZ5XM3ezeQfDiLn5Ca2npbVQ
         rrC/LpyRDix18AmRr/re+6le1qG5JXbdulB0FIZmLUqg2xmfKJEN09DyoONBgnUbI/jU
         z97WRfhZ2nixFNABFpYBlEmgaJKubtpMvWXK6TUz6tnEm58MxC52UwxkPlpGaXtEl/kU
         1cLg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="BqnCUV/+";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=b8VB8UAk;
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
        bh=FSY8Ol7PGXhJRgFheBFYuVtqjXCjiHCXZwzBtpBYjQI=;
        b=SysrJ3X3hUYu0mls9GlO2oVnEa7xS5EflDmwbrmQJFfvu/2/AcOUHcuwiYVKvBLnge
         ZjnAkhY5zfdPR4hpBnlYTr06fkkcgMcluwcchsAI7u/xRio9xPVuc4UcZEWlHW/Bl/B/
         nba/17nubhCHKV/hH1qyEG7l8wi3ynVFVXZ7gi5NkRNCvCfHbslPhfF9Q+bPs2MwOJRA
         AD2UV2NewFxeTlZy0cJX+kgC1mvFcjp9pOy08WpsPrWGZS6mjjvEsU0tj4SWmJmdNCFj
         psJAynrABcdu85NKj8btchnw1JOtpy0rnVt5HL/viIf33lVG94uyKaR+y+XB8/3CCzo3
         sCEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FSY8Ol7PGXhJRgFheBFYuVtqjXCjiHCXZwzBtpBYjQI=;
        b=QPNC6lStZx5KKW4eHQJkTFx5gVcbrKRpgCqZxwrSEfpfF0tZjQIU5aqVGD+wrHiHZd
         LJIzHtS+e6fAu2QaSJ9N22WeGThZqvQdDPgnbHVGDTno9oqefA2VBvF7/6hQp9N2c5uG
         K3zk6NcLlWGmtUKIdll82oWDcXD8jHVQ+F41Oxn1ObwxEFBwm4PNrpVn2fvq5kHbjUhv
         hteSmKgS7WTvNN8e90XPJvXcQOSXllCkU1B15yAw7AhKbZsqIMjq8y84pHncB24smr0q
         rVZeNR86brzejYvVFRtciJsZNY9isrEkYOYGCD/leq33XGPdkoes/9aWB8XiBIcg8hsV
         FXsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW3/LEBHeu2t/qIM7BtdqiUmCzinwV5zwUehUw39xFS6j3RSVYQ
	3ssXHBtSVV9KIuRIqhithZs=
X-Google-Smtp-Source: APXvYqwAoMvtf3Rk+FWTu+yZIg4X1WoGMY30J0y16Tv5K0L8cKtTz+MRLyYyzZRSQfEq2CvlcergDQ==
X-Received: by 2002:ab0:3143:: with SMTP id e3mr6059883uam.21.1568411151355;
        Fri, 13 Sep 2019 14:45:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4a03:: with SMTP id q3ls1592470uae.3.gmail; Fri, 13 Sep
 2019 14:45:51 -0700 (PDT)
X-Received: by 2002:ab0:1856:: with SMTP id j22mr20002051uag.19.1568411151059;
        Fri, 13 Sep 2019 14:45:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568411151; cv=pass;
        d=google.com; s=arc-20160816;
        b=ldCa0HB2BayEM7MVthm1dqS9WyvFyhncZgfCzJOjEjRExlDGQQAkNkGwj5ZlhAz2YR
         sQx9J7OPlucghHHTj769ta3W6uVCd5aqc6r/eGVhFDqmePVYxs1tfuMJtjDNTvUPmJ9q
         eOXckoSbIfAZCTP3lToFjPpfInNSNzybow9hCp6jA6e3e5THD7plBe5wf/sYc3RUmBN9
         nbhmH1f4g2poDoDs4wb30u2UkeYviElmGcXHIor4HRxxoYBAuZNOdKpG9a3ATsywYN6S
         0GAD3MX1AZonISfoD0K0OPWqYEWZ6i+3rLU/WRDay7CUBav9O7kh5iqaHkE6Vqo4GWog
         7TpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=uqZQOptCQboyYDEEJtmi984DfSamYJpgC0gBAfs3nk0=;
        b=x1VoadA5bDP+Xo3PXsAFqVwHPp0Uw+1ynzuuHxyGjFtvEKq1geSmDxrWXYtFEFGCE3
         aN5JrCxF7bUIrDAJk6s7r5zb0YhiMP9oEQV1g4BXQs6BGqL0tjlCOXmQp2pWMCPmoaZp
         5FrFnH25gv2FOTG7mhe9ESJ7BIOMh1TyuRB4UT63k5WAEZL7jn/vQJVwe3LF8T60lzpr
         8ehwMRMwXscu2fm5j7SeUW0K6bIF/o0NETqcAvSmuiUqSDAOk9pLsWPgjDbsG3/2rte2
         hQiAW99cih2QwQuRvxjCXza3k9x0qD9OPhQ1RqVM+enKMjKPIiu+W921+Hy9MUHgd2S3
         CpGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b="BqnCUV/+";
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=b8VB8UAk;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id t10si1126790vsn.0.2019.09.13.14.45.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Sep 2019 14:45:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x8DLjmdv002109;
	Fri, 13 Sep 2019 14:45:49 -0700
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
	by mx0a-00082601.pphosted.com with ESMTP id 2v0ev4sa1u-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 13 Sep 2019 14:45:48 -0700
Received: from prn-mbx05.TheFacebook.com (2620:10d:c081:6::19) by
 prn-hub06.TheFacebook.com (2620:10d:c081:35::130) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 13 Sep 2019 14:45:32 -0700
Received: from prn-hub05.TheFacebook.com (2620:10d:c081:35::129) by
 prn-mbx05.TheFacebook.com (2620:10d:c081:6::19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 13 Sep 2019 14:45:32 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.29) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Sep 2019 14:45:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bqPDzWqLU3BadZMjtm7yf78GGtysyzWvYyBYl2lHn4ubiOFkRpml6gUdK2moUqbW1kCXtBOow2vG2oByGxBG/o0IIg2NUd+X65byjwy+klUwKJh771VjQzGx6V7CEwR7YWo4xK5BPxkW9N4OQq8WXh/30uQ4nCD20/z5kDTWmF4KLyeZK19zuU2TmxTDVF44dv51ePtKAzm+oRgoCTFNGWeJyFK6COqsVCoe/0E4L4sbsNd8KPrKEKqY+083TzKezwQL9CBJHgFPa7tRGEWhMjV7A9eDdNTWdHqA2MR85hZtVhKH4qgcD0+ScDfhS+1VzNAS/V0jvjg0/1755Rzi7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uqZQOptCQboyYDEEJtmi984DfSamYJpgC0gBAfs3nk0=;
 b=Bia2Wvg7FZLslX6fQJk0PP3fimVJ/JVXfj7cOziIyDmwVf4bxWD+Qw46+PXJ+FTlT0ze/DLG2dmp/gQIQ8OHsfNo/JErhdpm7t+3WX24AwbfnVKFHQe0boqzDPkwiHhbnsSBAIrGgxe6ifA0sWAzdFsYp2rJA9KSVtxMWRmrDf82yfQcvQH/PRwLY51Ofn/yoX9gF05YGPnNxTbdCiEGbY1udYaUmzwSJxAPEjeCLFz7o9LW4J4Myw3Puz7Ia5fjZuTxqEXwWic29T4iYW44UwwD1Vmlioqm2v9CjglqZuV31Uo5b9McBhG+Jinl6Ln4duA9mAPvmryuB1vglSozaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.60.27) by
 BYAPR15MB2790.namprd15.prod.outlook.com (20.179.158.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Fri, 13 Sep 2019 21:45:31 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e%6]) with mapi id 15.20.2263.021; Fri, 13 Sep 2019
 21:45:31 +0000
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
Subject: Re: [PATCH bpf-next 11/11] samples: bpf: makefile: add sysroot
 support
Thread-Topic: [PATCH bpf-next 11/11] samples: bpf: makefile: add sysroot
 support
Thread-Index: AQHVZ8PyRYUBCRRgOEm7qm2VNIx5W6cqKZSA
Date: Fri, 13 Sep 2019 21:45:31 +0000
Message-ID: <e967744b-0286-d92f-9fc8-70f5759cc4a1@fb.com>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-12-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190910103830.20794-12-ivan.khoronzhuk@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR01CA0027.prod.exchangelabs.com (2603:10b6:300:101::13)
 To BYAPR15MB3384.namprd15.prod.outlook.com (2603:10b6:a03:112::27)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::ec5b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 75d5263a-344c-4a23-93ce-08d73893b2ed
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);SRVR:BYAPR15MB2790;
x-ms-traffictypediagnostic: BYAPR15MB2790:
x-microsoft-antispam-prvs: <BYAPR15MB2790A878AA2D8ED959F5593BD3B30@BYAPR15MB2790.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0159AC2B97
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(979002)(366004)(136003)(346002)(376002)(39860400002)(396003)(189003)(199004)(6512007)(2906002)(478600001)(66556008)(305945005)(110136005)(66476007)(6486002)(81156014)(8676002)(6436002)(66446008)(54906003)(486006)(86362001)(256004)(2501003)(71200400001)(71190400001)(316002)(476003)(7416002)(36756003)(14454004)(76176011)(99286004)(7736002)(31686004)(64756008)(31696002)(2201001)(5660300002)(4326008)(25786009)(52116002)(81166006)(6116002)(66946007)(8936002)(229853002)(102836004)(386003)(53546011)(186003)(6506007)(446003)(11346002)(2616005)(53936002)(6246003)(46003)(969003)(989001)(999001)(1009001)(1019001);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB2790;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: zUhGC0ptyy1Y7XBNYXErEPPlc25WmQJXYQraG5w5MfUuXgO7zdZHCHJ+K67GvCWgGj8105pE4/6m+ZBaKvtytpKtgQv2ZfigJwG6sePv+CRetZmHX/NTe2wQjtnhpUpeuyHmYOD89Be2ILySFOBKibI+ZIEFREXvGs/LKhvYDwuPHtOx8pXN/rDQC0TnxEP+qVkVX53sT4CGInSAJOwDK2qOX4J8qwckyviFJD4yhAeDV2M9mCaoKpkYSX/ALt6nPjkfOnYyLf8+Fun71bCO8mtDSWCyPWmaGzSpIa19r2zmnuJ3qtpviyUvFr3AZcOygpnjUtyDq+xRQoZUZce4mq3pntybdOT/2ihFYY+5bJtv4zOfKwJ84dpb2ZEyU+5AhHn2Bvh4kJzxYyJA3l1eXCwnINO6V5Pkg9ULoA32x/g=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <AB5331D465EAA34EB931FE05D808F6CD@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 75d5263a-344c-4a23-93ce-08d73893b2ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2019 21:45:31.1545
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eVT5WK0z7jT8scVHNQFm8ZtIYHiYxghZSJWQ8KLcgnZvW6xsFF+Q42u90M6XfiyJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2790
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_10:2019-09-11,2019-09-13 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 spamscore=0 mlxscore=0
 lowpriorityscore=0 adultscore=0 mlxlogscore=999 impostorscore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909130216
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b="BqnCUV/+";       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=b8VB8UAk;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
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
> Basically it only enables that was added by previous couple fixes.
> For sure, just make tools/include to be included after sysroot
> headers.
> 
> export ARCH=arm
> export CROSS_COMPILE=arm-linux-gnueabihf-
> make samples/bpf/ SYSROOT="path/to/sysroot"
> 
> Sysroot contains correct libs installed and its headers ofc.
> Useful when working with NFC or virtual machine.
> 
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>   samples/bpf/Makefile   |  5 +++++
>   samples/bpf/README.rst | 10 ++++++++++
>   2 files changed, 15 insertions(+)
> 
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index 4edc5232cfc1..68ba78d1dbbe 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -177,6 +177,11 @@ ifeq ($(ARCH), arm)
>   CLANG_EXTRA_CFLAGS := $(D_OPTIONS)
>   endif
>   
> +ifdef SYSROOT
> +ccflags-y += --sysroot=${SYSROOT}
> +PROGS_LDFLAGS := -L${SYSROOT}/usr/lib
> +endif
> +
>   ccflags-y += -I$(objtree)/usr/include
>   ccflags-y += -I$(srctree)/tools/lib/bpf/
>   ccflags-y += -I$(srctree)/tools/testing/selftests/bpf/
> diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
> index 5f27e4faca50..786d0ab98e8a 100644
> --- a/samples/bpf/README.rst
> +++ b/samples/bpf/README.rst
> @@ -74,3 +74,13 @@ samples for the cross target.
>   export ARCH=arm64
>   export CROSS_COMPILE="aarch64-linux-gnu-"
>   make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
> +
> +If need to use environment of target board (headers and libs), the SYSROOT
> +also can be set, pointing on FS of target board:
> +
> +export ARCH=arm64
> +export CROSS_COMPILE="aarch64-linux-gnu-"
> +make samples/bpf/ SYSROOT=~/some_sdk/linux-devkit/sysroots/aarch64-linux-gnu
> +
> +Setting LLC and CLANG is not necessarily if it's installed on HOST and have
> +in its targets appropriate arch triple (usually it has several arches).

You have very good description about how to build and test in cover 
letter. Could you include those instructions here as well? This will
help keep a record so later people can try/test if needed.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e967744b-0286-d92f-9fc8-70f5759cc4a1%40fb.com.
