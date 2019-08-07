Return-Path: <clang-built-linux+bncBCLOB5FNZUMRBSGAVPVAKGQEEISJFNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C9784EC1
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 16:29:29 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id 91sf52197417pla.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 07:29:29 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1565188168; cv=pass;
        d=google.com; s=arc-20160816;
        b=LBOyaPt1Q1HYIoI7Ggq4KmF1HKnT8wMRLRQtEcAetzv1aZJgqwJm0GV4dI814Qew3z
         ceAXp2HpsB1FYMFg3Dr0Rv9ptk/osoJWxWJKlghvM2Y3TGZUDtg1VAXFRgQC2c3s+XHe
         3gZuAN92UMuS8rtiVCWz8rGywvWCwCkvTRRIqAB8m9ZC18A3TSuQ0S0kdo+7Z3YK6eGj
         Va4GqXN5SV+ss7KnVnI74UpKi1c14Jg0K8HIKU5osgz3CzOTmVi8tokiLUc1WJnzid8W
         B5JKd9QH2V9IweOn2BLMfUNuuB/nFjwhhKSgYC15WxqmDOU5REVkVj5HYVvRFSeoVT2u
         nQ6A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=8azr39ENT0vgvf6Z5JQEz2p6OXjoNFOQLMMzGcAYtEI=;
        b=iJGRjN16eyDLmf6J7nmLkyij4nYTZLcizTNU9PxHjCPzHKLiCaxJjwg+5fJgTDHMak
         7dtOvCscp1tAcpyPiJLLE0wGXS4sulb0lBDUy07RVbshwzFM6Kl6s0Wx80M5VVyTUvY9
         pi3jIrj3c0HdbYzCgpQ7sHqWZlXOGvvNERZ+P/m+r6zyaqCKxVg63RJ/DMFmLaKZ8zEK
         JKGULUNJt7w+v+SEClQIGlPttxRFC0hd34TgNnh6h8n3VmmXIxFyTApJWxvpZeA1X4/F
         69fVbi2lKm76O4loxYKgD6BoKUgHVYvK7QC8YiNHnYSLl2f/HOGcp6l3X9UmsRvtYjec
         Dcmw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=GoYTWPEJ;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=QFw5nfVD;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=31225916b7=songliubraving@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=31225916b7=songliubraving@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8azr39ENT0vgvf6Z5JQEz2p6OXjoNFOQLMMzGcAYtEI=;
        b=J9dE0S6rUYFFi2okO8bq6JWdjxLZOxe1ABJ2x1xWx9caLiBVCIrYdtHNSPuPk0eAmp
         GIXZUzvI7yOp6HjeqUmwxE/Q+62iNvdsS/yZeHGUaQticEm/fJd4ajidvW/x1jl4vNHv
         n7govgDnaFHz+lJ8OobSP7UJyxBK5ynSnp4v26ZnU4jiJmRXS4nzfyQ8tsR7M3WLOpcr
         YlU5t4fBOvEZO8fcZ4I/1/63inxDJzmrdE12YIu54OytUaBUPbzb3Dyios1P0Nyvb+my
         O9cXP5DD7WsFUdc/V1FZAJRtMDZke159qZISn95RD5EBqKzLj1akojz+15R9LmROxVjV
         XGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8azr39ENT0vgvf6Z5JQEz2p6OXjoNFOQLMMzGcAYtEI=;
        b=iHROB8DdM5g2CEaZDSHfVoATLmXPEStUrfntXDordVj+IneHb7YuSlBb+/qknMmDMu
         RILhqUOpZa1zdz36QA3Wq6u2k03pdFgHUjUgXGoXWUdA+pnlglq9KRGIhyaWEMzuNVU7
         NY5YcPObr6Wf/NkgZJdG5uE6BbUFlc0SpUzQQZKkJF+zplyIOrV3HKeHwWdITXqUCbbD
         ITwVX5/orqMDtQufXl3IiGeBS7yATBQtnmK6jk296V5ham67TU38y1N/Ke7NpLX/gv8Z
         b7WItZNoNVNv+kIQL8xdJhjPMO+965JwjOgoJLWdXjIE1XUYXQBKsDBhwZJ3V9sDxP1U
         um0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWwlvZY56r+F4DeF+tBKCnlAegwMqSbSZv19u94tHxZIkZjFFxP
	NN7GAcbAiImRvydewozlh2A=
X-Google-Smtp-Source: APXvYqzW17orxYWBoAS8LOKU9R1hUnq5EOHGJOT7gbXmy+19sZhHVotbufjHK4pAqXnwsEK/eVrfgA==
X-Received: by 2002:a62:ae01:: with SMTP id q1mr9349583pff.219.1565188168155;
        Wed, 07 Aug 2019 07:29:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8e41:: with SMTP id d1ls20814550pfr.13.gmail; Wed, 07
 Aug 2019 07:29:27 -0700 (PDT)
X-Received: by 2002:aa7:8108:: with SMTP id b8mr9770975pfi.197.1565188167799;
        Wed, 07 Aug 2019 07:29:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565188167; cv=pass;
        d=google.com; s=arc-20160816;
        b=SAhD6G2HsQDmAvnxFm59gDCA9OJHWge9uH9iViPhMxY0cbePmZtkZYZ6qbbdn3D4nv
         1Ol2TirF2NGx6jl7z7cid9Dgsj9neyCtfl3Z4C2+JeNR36n8FSqEqU0HdQGeDE+HFHte
         Ee2/K4QEMOYvyQqk9pGdGX/ijIv3Y8QHvIaTI28emDY+pj8/qG0bcIjUor0hinTK8PRr
         wW2G1kszPcGB1CWDtCCGZMi+cDH04eYZgvZaaZFtagyXY9T4I7Vl6WQpuqiio1yAzXHp
         gX5FWV+4r+DjZLSBsgzVKQLBBfYQQr+GmTHyw/CJniKjJzZbWUlzCHTiVT2CJkrqB55q
         oTsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=w9l7hbQ2gpPWvHcZpNPnLiIINm0ifn1zzAuTKnUGHDo=;
        b=irrTO1WV1YBJoT8Kxt67QHQeLt/LCXuDyRahP24wPKS73CaqlR2CKiwBZ75HH1AJpS
         dnNlnzpPvmOryM5COCPonui07oVJPFf/NbRBQ6SYs5xNMIq/YDGq9zuRa6NPl2cGeUuc
         oe4BA1pImj5zYdbr6KEEpzbvjzhuuJ/jSZfdnLkQ+JRSxeyaQTpp1yMhY9SuQ9uWpoDi
         I/Xh2Iuz5ugH7mfwv9dlPuH9DFLdIIP+1x+Vm3bzrMeI/ywO6eO19QFVuhEOr6PQhqXr
         TpKeEokIWmsZdtbW0ZVqBSjwUjJ437vd43zLCMLoMmugxYBwp77Eh0dwxWu0rKSZ7X4f
         f/4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fb.com header.s=facebook header.b=GoYTWPEJ;
       dkim=pass header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com header.b=QFw5nfVD;
       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass dkdomain=fb.com dmarc=pass fromdomain=fb.com);
       spf=pass (google.com: domain of prvs=31225916b7=songliubraving@fb.com designates 67.231.145.42 as permitted sender) smtp.mailfrom="prvs=31225916b7=songliubraving@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com. [67.231.145.42])
        by gmr-mx.google.com with ESMTPS id fr4si37558pjb.1.2019.08.07.07.29.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 07:29:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=31225916b7=songliubraving@fb.com designates 67.231.145.42 as permitted sender) client-ip=67.231.145.42;
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
	by mx0a-00082601.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x77ENFMO026052;
	Wed, 7 Aug 2019 07:29:21 -0700
Received: from mail.thefacebook.com (mailout.thefacebook.com [199.201.64.23])
	by mx0a-00082601.pphosted.com with ESMTP id 2u7rn31gs1-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Wed, 07 Aug 2019 07:29:19 -0700
Received: from prn-mbx08.TheFacebook.com (2620:10d:c081:6::22) by
 prn-hub03.TheFacebook.com (2620:10d:c081:35::127) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Wed, 7 Aug 2019 07:29:14 -0700
Received: from prn-hub04.TheFacebook.com (2620:10d:c081:35::128) by
 prn-mbx08.TheFacebook.com (2620:10d:c081:6::22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.1.1713.5; Wed, 7 Aug 2019 07:29:14 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.28) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.1.1713.5
 via Frontend Transport; Wed, 7 Aug 2019 07:29:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jLRIUE0+6XPtWyRlf8OUmGWStMX3II6m21GMP1bXiKUvtD5/u0T6K10O7zIq6XEDP3HB2sRYoEJmOuvHMtJFWmvYDhe+HkfHArzLpgYGIuD858hBIfyy64zwfR2BjKS/vMysE17gowtKwIsTxMSVCJ7CvbhLgkDg2sk8ebNs0JlQ0yzKUQp/VWFbhxYVOnKi9FvYMMBqiac4lWdBZM5bIw5XFco0M5t2nSC109DMVymsyHn24f80KLGP4qS5OQgRRK1+2ZO+VV6Qx2cI6sRcWBYtMcypM0RZs6Q9gI81ITnCF5nqG0hzv0Y0AdQto4Jq5NSgpP3YcKPiDccbSOCa6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w9l7hbQ2gpPWvHcZpNPnLiIINm0ifn1zzAuTKnUGHDo=;
 b=hnH6QjldQ+YlFQ3j7TVssXYTFMSYSZLwvrAfrQgIQDlThU6RUDpDpzieis2mfa1TH9nkEtKmla3ZH3uQmR/XI8i24F/3pOBFFd7Md+uXhv706jeJc28I7O3KlS+EOkqG/ROi1dX+4XbtxUKbMoS6YB6QCutotxhwilGHczW+ChUiwmYcDdu4j+qBfFE7B23svEVmMU9zouzrSD2P/dZ/oqecWs1XrxgtueYu1qE7+ZGOG3A+ee9BATE+n/ISCYNFmZoUYGmYYjyM1aY73LUu63j2oxm5uNsILhIBa+Zwl6I/ZSuRdEyd15AN0x0PYp8eIK5UOSlMJqi8T2I2z4ovsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fb.com; dmarc=pass action=none header.from=fb.com; dkim=pass
 header.d=fb.com; arc=none
Received: from MWHPR15MB1165.namprd15.prod.outlook.com (10.175.3.22) by
 MWHPR15MB1920.namprd15.prod.outlook.com (10.174.96.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Wed, 7 Aug 2019 14:29:11 +0000
Received: from MWHPR15MB1165.namprd15.prod.outlook.com
 ([fe80::79c8:442d:b528:802d]) by MWHPR15MB1165.namprd15.prod.outlook.com
 ([fe80::79c8:442d:b528:802d%9]) with mapi id 15.20.2136.018; Wed, 7 Aug 2019
 14:29:11 +0000
From: Song Liu <songliubraving@fb.com>
To: Nathan Chancellor <natechancellor@gmail.com>
CC: Nick Desaulniers <ndesaulniers@google.com>,
        kbuild test robot
	<lkp@intel.com>, "kbuild@01.org" <kbuild@01.org>,
        clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: Re: [liu-song6-linux:uprobe-thp 7/15] uprobes.c:undefined reference
 to `__compiletime_assert_557'
Thread-Topic: [liu-song6-linux:uprobe-thp 7/15] uprobes.c:undefined reference
 to `__compiletime_assert_557'
Thread-Index: AQHVTKx5knBgmEeOg067kDBK2NB1kqbvKEQAgAAD9ICAAJNjAA==
Date: Wed, 7 Aug 2019 14:29:11 +0000
Message-ID: <E23CFF16-43EF-47C8-9EA2-CCE13C5C4F4A@fb.com>
References: <201908021026.gxOYoxJj%lkp@intel.com>
 <CAKwvOdmQh3WJAYq9RKw3ihbL22RXJFcF84jMXh93ceTFdJwNNA@mail.gmail.com>
 <BBA76F9F-5B41-4C5D-A008-23F678EE6311@fb.com>
 <20190807054139.GA98037@archlinux-threadripper>
In-Reply-To: <20190807054139.GA98037@archlinux-threadripper>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3445.104.11)
x-originating-ip: [2620:10d:c090:180::3b47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e957ac56-02aa-40c1-c9ec-08d71b439da9
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);SRVR:MWHPR15MB1920;
x-ms-traffictypediagnostic: MWHPR15MB1920:
x-microsoft-antispam-prvs: <MWHPR15MB192018FCED65921C7E796380B3D40@MWHPR15MB1920.namprd15.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(136003)(396003)(39860400002)(366004)(346002)(376002)(51444003)(199004)(189003)(64756008)(66556008)(66476007)(66446008)(66946007)(14454004)(6116002)(76116006)(186003)(476003)(2616005)(102836004)(6506007)(99286004)(7736002)(2906002)(256004)(8676002)(5660300002)(486006)(57306001)(1411001)(86362001)(53546011)(11346002)(71200400001)(71190400001)(46003)(478600001)(76176011)(6246003)(53936002)(4744005)(4326008)(446003)(6512007)(36756003)(33656002)(25786009)(54906003)(316002)(81166006)(81156014)(6436002)(8936002)(50226002)(6916009)(68736007)(6486002)(305945005)(229853002);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR15MB1920;H:MWHPR15MB1165.namprd15.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: iNAuBFSHM0Fj8pmNMGjITmiNAhp3J7VVcmEpXoQb6X/5cJ581MIG5onQ68NcMSilw8pcVQi6rLRkhzSpCWAKn64buNmxXvea+0is8Ld3Fai+VLoaLc4zmTqFzcaiUQ6rWbHhj4r/o/KlnXbD0DwYHQS/Rhq+EZNrKyn6hQOl0ZjCgLP0ZDlgqt+4pRGw/A9veSDP1vWS2EysZFi0YLRhifQ629RKhNbSk3+ZMS/pAcdFsMznK7VU0olDGSKS5xAj0WlMEVBHaPjDbIDp1cw/exX2mLlpVIvbZlBOOhJ0YpJtikKmfO8KYriD7SPbt5XSyJyJpcy+EBGOBVXp68RE+XcJQvJfbCenfF86cmnz+JQvsrOExpYEu/wIK/sVLecGmjt4IKBhBc4UTHb60I4YY/fupvZWKy/Q2Wpa0sVZcDg=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
Content-ID: <596139519BC49847BD6F39A68D6D25AC@namprd15.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e957ac56-02aa-40c1-c9ec-08d71b439da9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 14:29:11.6934
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: songliubraving@fb.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR15MB1920
X-OriginatorOrg: fb.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-08-07_03:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=fb_default_notspam policy=fb_default score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=996 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908070154
X-FB-Internal: deliver
X-Original-Sender: songliubraving@fb.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fb.com header.s=facebook header.b=GoYTWPEJ;       dkim=pass
 header.i=@fb.onmicrosoft.com header.s=selector2-fb-onmicrosoft-com
 header.b=QFw5nfVD;       arc=pass (i=1 spf=pass spfdomain=fb.com dkim=pass
 dkdomain=fb.com dmarc=pass fromdomain=fb.com);       spf=pass (google.com:
 domain of prvs=31225916b7=songliubraving@fb.com designates 67.231.145.42 as
 permitted sender) smtp.mailfrom="prvs=31225916b7=songliubraving@fb.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=fb.com
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

Hi Nathan,

> On Aug 6, 2019, at 10:41 PM, Nathan Chancellor <natechancellor@gmail.com> wrote:
> 
> On Wed, Aug 07, 2019 at 05:27:30AM +0000, Song Liu wrote:
>> Hi, 
>> 
>>> On Aug 6, 2019, at 4:12 PM, Nick Desaulniers <ndesaulniers@google.com> wrote:
>>> 
>>> + Song
>>> 
>>> Hi Song, has this issue been previously reported or fixed?
>> 
>> This one points to some changes that I don't plan to upstream. So I haven't
>> fixed it. 
>> 
>> Would this be a problem?
>> 
>> Thanks,
>> Song
>> 
> 
> I briefly looked into this and I think that clang isn't able to evaluate
> the VM_BUG_ON(haddr & ~HPAGE_PMD_MASK) in collapse_pte_mapped_thp at
> compile time, thus this error. Not sure how to work around that but if
> you don't plan to upstream these patches, then they won't affect us.
> 

Yes, I also think this is because HPAGE_PMD_MASK. I fixed it in a newer 
version, and included Reported-by. However, I guess the broken version 
did make to linux-next (and got reverted). Let me work on that.

Thanks,
Song

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/E23CFF16-43EF-47C8-9EA2-CCE13C5C4F4A%40fb.com.
