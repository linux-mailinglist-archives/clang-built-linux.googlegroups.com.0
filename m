Return-Path: <clang-built-linux+bncBCSPFHXUVMKBBKUB6DVQKGQEOYL3VEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE83B26D7
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 22:48:43 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id b1sf33005190qtj.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Sep 2019 13:48:43 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1568407722; cv=pass;
        d=google.com; s=arc-20160816;
        b=tu9+N5XiOftzm4cxV4/eoWl5IEG8VkviWKYw+azbRdWBOb2IKRgAf4Xciaxlw/6ENw
         eoEgNS4vsDBUcP/aXRqi6OVfBTIK17oXop0PmwVL77C7qUz+31ZZafyTzXKgHNcVLyIE
         eBlmMuqbpSbb0zOssv8mO4rOPPJ3ErqazXVLRmmgYfVqLui8gYyBuYbtEJFidMAhDxlm
         hfZTYxEHArpy8gyiSgr4nAjBVDmHgJqaMyIWBXHB+CgVxblhHsqxj5vVIDdTYs2G5GTm
         El2blAxPZ72MmPyzCJFSPm+1HfvU1ybY7etodLFV/xpQnLpCezZVn840FKBzboHfQ0HP
         qxWA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=UDxWx3T+dH/QbA5xGPzj4h0k3g9VhB0uAqirlDz7srY=;
        b=PljBgmscEuhTWfhnJXNsU9NY9vgWxyfG9zmKmub+C/tJwn9j3YfKzwbXDcvyl1BbQ6
         Z37xodDs/LSLDhbFxw3vtK5kPhNMCcmXe+nVxMoKgZGEYrVnmpQFbTbOCMQnd8wAk2O7
         YbP/1/A4xNt1g0mnvN8729807u9z0CSFZuJXRRbptBkYYsfeOTXJdwrG3xsX+rVWIaQl
         ypJ73EHL+gHosAui8nV7EW0oDMLXIO0B50y0LCl88fdn8J5eMyoyqtq22JrC6EfN4kS9
         m4BZOZ2Yd8nhl7NIUfCdaLjOL55JDYAJGVZpuSsn87dFa9Ah2axahkefBn0mfa8DRjyS
         VGhQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=T0fdnbby;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Nm90uHAa;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UDxWx3T+dH/QbA5xGPzj4h0k3g9VhB0uAqirlDz7srY=;
        b=ahMPUQ1DIzXJoraB3vjuZZsacn1mANR82F7ic44RqrOuEmkM9qdYpwYAJwcmAbcnBq
         p/icW3zvTLH1N9udENuo0OvrjsYgpTqOu92r0IOhDE4KDlsSanwFKAHFFAfJV4yDNjxD
         WrtOg7XWTfcC4Tbhe5Y+rOQ1RgS5/KlhMgd38nE8smoSWq9PtxUYUu9+pclPLi3BaC4z
         Do9nU7R9DmHgsLCIZAg/7wI/QfANqZBfctzAi1C8M8CA1UMsVXfbOluc/cHOCCrrVWkE
         EyvC+04pCz4Q8REQhgGjNPHf4VW5EBbrem5eRpzGztvyQgcHiIjRCJKEno7jpksBz2v5
         Qqmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UDxWx3T+dH/QbA5xGPzj4h0k3g9VhB0uAqirlDz7srY=;
        b=SFlHkFNU0oZSrwW319VdqyPAm2kLX2r3WMLsskkQaae/ITk1Ih4DSdqVIUQeljmuto
         tA+UMvDHXoEcPAINeE8YxQOVzlLPMzjgydm5RoUkUUVX3RHB0UOPyNfd/jfp+/vyKnMe
         L2fnaTeD6dCKWNzWKvfbFyFPD1NJNxsGdaI1Bqxw8T+7YotbOQHVQwOUQkYmvBDDmkB4
         3/b/YUaeqRoMaA0yWm+vj7rxibu4vpHMNx1QUdlM5R7m9PBtVzE6GMTjisqANuZbBjdt
         jnl/u2+No8mmXFLedWID9d5Gjn/M/zhKK2qOv8CnOVNm9U+rGCB0mJDp6eg6itXzcQEk
         DlFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXWoyTJkGVwfpv4Xrrzf0OfOhCq1pl7EJr1o+BucYB9J7qOskoT
	/UbGsHoeJJNkSw5ajZEswFE=
X-Google-Smtp-Source: APXvYqxA66WiMt8q7glye8KpQbCxrdVkyk9vcqVeVLyqCMIZCQW7c+cJLQ0HGupzagu3BH7fA1cHug==
X-Received: by 2002:a37:a147:: with SMTP id k68mr44153936qke.169.1568407722145;
        Fri, 13 Sep 2019 13:48:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:670e:: with SMTP id e14ls955984qtp.5.gmail; Fri, 13 Sep
 2019 13:48:41 -0700 (PDT)
X-Received: by 2002:ac8:1e1a:: with SMTP id n26mr5446486qtl.357.1568407721921;
        Fri, 13 Sep 2019 13:48:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568407721; cv=pass;
        d=google.com; s=arc-20160816;
        b=SeeIzn5pqOKiz5Di9LevLGkhM3rd3fHZ9KPckJdEb8HULqK2ho2fKqCbV/0ybX/D60
         Kh19cDH+7tILTPBsQdgExY24XYerQM9M5XSOC5WxV1v3woqK7sLE1XxV/R0+SQ5OeqBN
         YqQgfMFf3LA4uC3YPjor8htZvxuwHx8/Z/i0FDMO4QNLAhHgPKfg51kJB9cSu+geC4nc
         99I/qhCLXKu0UXHeeG1tYfP+3fMVFcCPuupoK7Ku7lOdtOBMiEEgLOeSfk4Nrm4Ste+/
         oQ4stkyocH6dXSIKB1olvCphzTxpNbHmLs+lkbIp+XOQAf0GTsXoHTGQbqwEPOpbPhmv
         LFkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=/kgJQVJI5PltMBtkBUqXemU0A8i8JbMOYOgcTCCnyGY=;
        b=rWpz/GiN42Ao7AUNk2LKnZFlDSacKH54eh9jw0mUpDdC6ba+NVRFS6hrlc6yObD13O
         +oyCcbZLoV3wzruOhtgdZhfXWbVwBn6dclPMfXAWZPhK8ldUHIkXwVL45OYCAYL4Hv3O
         bNHLN+9XcaPD/0hKGwITC9GEjw5HP4R0bu7+/D+he6V1FZvYph2esHR8XQdD9/0QGY+P
         lYPCjaIaZvXoFwdCbfqMifwjvn7ELGjdlWuMtGlR3ZPyLcbMfRnzslNFb75hlQjwPKAW
         QhTQY/xer3EtW1jRZ4Ck7gYbS909to1lcFBW7p2Ino+7UO8HZEU4UDmpBBRzeN8KhYj8
         r5oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=T0fdnbby;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=Nm90uHAa;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom="prvs=415941358d=yhs@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0b-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by gmr-mx.google.com with ESMTPS id x44si1853390qtc.3.2019.09.13.13.48.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Sep 2019 13:48:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=415941358d=yhs@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Received: from pps.filterd (m0109332.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id x8DKU7XV003527;
	Fri, 13 Sep 2019 13:48:40 -0700
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
	by mx0a-00082601.pphosted.com with ESMTP id 2uytd25vqn-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 13 Sep 2019 13:48:39 -0700
Received: from prn-mbx03.TheFacebook.com (2620:10d:c081:6::17) by
 prn-hub01.TheFacebook.com (2620:10d:c081:35::125) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 13 Sep 2019 13:48:38 -0700
Received: from prn-hub02.TheFacebook.com (2620:10d:c081:35::126) by
 prn-mbx03.TheFacebook.com (2620:10d:c081:6::17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Fri, 13 Sep 2019 13:48:38 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.26) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Sep 2019 13:48:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J5lfoQdu3rZBPQVwLLtkXrSn80GVVypYWq6/YBeIWnfGydsPrMwugQD0UR9B+sLDFg31nmhyN3LcnILhmQ9/q0ZiDxHgqwk34V9HvsP9ahtRQ8FwRnlMD4yJQXwSyq4QAginHykHr36KQ7rr6wHPSX3V2mWf0xjEq5jDTa8RZzTmBurmrezbPAB2DlzZOiS+gMO9SGu2Kx2kfWB1O4Vr97eYqvlQE2Cb9Vzgzu01vfcxEGuUZnliUSRs1RePbiceB5GVKRLdHIWS+oU2sNnWyGKIwunyoWIYS4LIZhzenkSBw9HT9KIHGQ7aGvlmX7KLOqGUXOtyNqM8fD9K2PN7/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/kgJQVJI5PltMBtkBUqXemU0A8i8JbMOYOgcTCCnyGY=;
 b=LBsDKXWl0xYR0UI6F8gdZD1boboeXtzJn3IgePhnBMxYm5zxAFIKwoewQsWME5LEteuON4AbO83ZoE+6TdOQ1Lgsulzg/UHyWhULeApbdzLgff9owYTULr0J95NakNC6iwN4+Eqn4BrsKUUhMbhZvFabhiO4kHEk6Q+0Vc9VFZ2n3oLAbdgLcfCfAtdD133xPmCy7HmRGt1mayUicrjDpsZoM64DvZl59lXGXaRvTuc4bA1hZ9EHLINGcIP4V4LWoR6Y79PHKi56fcu8Z3SllBKvYz2lAQEMoXSaMoe3rlO4p6dD/qnyKaOURd24schd/3o7+IESduxTJNXHeI4DSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from BYAPR15MB3384.namprd15.prod.outlook.com (20.179.60.27) by
 BYAPR15MB2485.namprd15.prod.outlook.com (52.135.194.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Fri, 13 Sep 2019 20:48:37 +0000
Received: from BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e]) by BYAPR15MB3384.namprd15.prod.outlook.com
 ([fe80::95ab:61a0:29f4:e07e%6]) with mapi id 15.20.2263.021; Fri, 13 Sep 2019
 20:48:37 +0000
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
Subject: Re: [PATCH bpf-next 02/11] samples: bpf: makefile: fix
 cookie_uid_helper_example obj build
Thread-Topic: [PATCH bpf-next 02/11] samples: bpf: makefile: fix
 cookie_uid_helper_example obj build
Thread-Index: AQHVZ8P30GXRyJqQ+EOjvLACiMYPsqcqGa8A
Date: Fri, 13 Sep 2019 20:48:37 +0000
Message-ID: <7f556c1c-abee-41a9-af83-1d72fc33af4b@fb.com>
References: <20190910103830.20794-1-ivan.khoronzhuk@linaro.org>
 <20190910103830.20794-3-ivan.khoronzhuk@linaro.org>
In-Reply-To: <20190910103830.20794-3-ivan.khoronzhuk@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR19CA0077.namprd19.prod.outlook.com
 (2603:10b6:320:1f::15) To BYAPR15MB3384.namprd15.prod.outlook.com
 (2603:10b6:a03:112::27)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2620:10d:c090:200::ec5b]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 251b9a0f-e14b-4cd9-7217-08d7388bc033
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:BYAPR15MB2485;
x-ms-traffictypediagnostic: BYAPR15MB2485:
x-microsoft-antispam-prvs: <BYAPR15MB2485CA067C77DF96AA7636A2D3B30@BYAPR15MB2485.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0159AC2B97
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(376002)(396003)(366004)(39860400002)(346002)(136003)(199004)(189003)(5660300002)(76176011)(46003)(53936002)(14454004)(6486002)(64756008)(71190400001)(2616005)(102836004)(7736002)(11346002)(8936002)(486006)(31696002)(386003)(6506007)(71200400001)(66446008)(6116002)(305945005)(8676002)(476003)(2501003)(53546011)(81156014)(81166006)(478600001)(86362001)(2201001)(14444005)(229853002)(25786009)(6436002)(66476007)(4326008)(66946007)(54906003)(66556008)(31686004)(2906002)(99286004)(6246003)(256004)(7416002)(316002)(52116002)(186003)(6512007)(110136005)(446003)(36756003);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR15MB2485;H:BYAPR15MB3384.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: T9s7WpA8OJMHAYB8Xmhz04I7LTqYZkvgQD5i1j+9kkB71W0XDxu4onlrymCTLrqmWVAveM3hrkX18W47f9ElN8DcaK20mCTT8v0vMPQUnRGk7HisACX4CfI35uauM/bvxhbL9hksWQsdeYbqVTDgtpX52c3YzW9T1ZaYL8yQV6qG8502UMG1CWXnRNpKrO9KLc94uz5psVzkelhbisbo+QA3R2BeVx+OJtYpz4a5zfVJ1Qsblrx/kjdUTomIKTVUNGjFnpiHWQ8iHBYWpnh1GcJT5GgJUF0ffA2rWxlWrMQup3ElFSQQSzHmMpr7V/ps6lmlwzxgSQ6O0BjbLqP1JyNL2lPBzcN0GXCWtMkp6Rj1wipX3kuRJ6CCHYnn5BL4UCLKPEb7yFgLholTd/iV1mLImH67yAZmmamHSWqvb4g=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <C2A4130F60035049999CBF7F2AFF1905@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 251b9a0f-e14b-4cd9-7217-08d7388bc033
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2019 20:48:37.3870
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UppxYaG37wl58/lP7PpEgAJN9O1J+Zgfv+UJYz5cObni5YGgt/offyBKRgNUmZdn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR15MB2485
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-13_10:2019-09-11,2019-09-13 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 adultscore=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 bulkscore=0 mlxscore=0
 suspectscore=0 phishscore=0 spamscore=0 priorityscore=1501 mlxlogscore=999
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909130208
X-FB-Internal: deliver
X-Original-Sender: yhs@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=T0fdnbby;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=Nm90uHAa;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=415941358d=yhs@fb.com designates 67.231.153.30 as permitted
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
> Don't list userspace "cookie_uid_helper_example" object in list for
> bpf objects.
> 
> per_socket_stats_example-opjs is used to list additional dependencies

s/opjs/objs

> for user space binary from hostprogs-y list. Kbuild system creates
> rules for objects listed this way anyway and no need to worry about
> this. Despite on it, the samples bpf uses logic that hostporgs-y are
> build for userspace with includes needed for this, but "always"
> target, if it's not in hostprog-y list, uses CLANG-bpf rule and is
> intended to create bpf obj but not arch obj and uses only kernel
> includes for that. So correct it, as it breaks cross-compiling at
> least.

The above description is a little tricky to understand.
Maybe something like:
    'always' target is for bpf programs.
    'cookie_uid_helper_example.o' is a user space ELF file, and
    covered by rule `per_socket_stats_example`.
    Let us remove `always += cookie_uid_helper_example.o`,
    which avoids breaking cross compilation due to
    mismatched includes.

> 
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>   samples/bpf/Makefile | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> index f50ca852c2a8..43dee90dffa4 100644
> --- a/samples/bpf/Makefile
> +++ b/samples/bpf/Makefile
> @@ -145,7 +145,6 @@ always += sampleip_kern.o
>   always += lwt_len_hist_kern.o
>   always += xdp_tx_iptunnel_kern.o
>   always += test_map_in_map_kern.o
> -always += cookie_uid_helper_example.o
>   always += tcp_synrto_kern.o
>   always += tcp_rwnd_kern.o
>   always += tcp_bufs_kern.o
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7f556c1c-abee-41a9-af83-1d72fc33af4b%40fb.com.
