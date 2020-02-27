Return-Path: <clang-built-linux+bncBAABBQ463TZAKGQEOWANYPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F77170D47
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 01:37:24 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id r29sf702592pfl.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 16:37:24 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1582763843; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y8bZt5wgk+nITlmhXBHvorqRtPrIAUVUAz6d0VPLNMrJUxO1R+y+Z4DZ5eU7qSRtQB
         ycPGXPMnN4Q5uo09aY0dFrNhWFyAhpwPK7PvC2asRUaSJQJOSsJ2ZOrYM61qNeeEyuSR
         KPrHgr63D/oOVVoe4NzZzLftMMlti++Xnv9rBL3Ej4WzFtfLV0f2ETZuKGw0aqxEPXkV
         vDBnaoTqexF8if9PlxIKy42KD0gtDCAmSSQNsPZX1Ihjnvwe/Wu5cPKnma/HmM8YJdEa
         NhjvuXLc4MD13vjAMGFSZgUtoecVtd2LYwHFJ9gPSXjV+nvGILQo7lG5t2Yuk6kinC3R
         7Czg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=j/lnL0mRZX6eoz2GH+6jfoGqT4QquPdc4NsR2Ixuqbk=;
        b=uxG2TddGKRwPFUMunO/NLtlbFiQFZKLUcCCC3J0h/laCSjvCwtef5443o797Kb0JKT
         X433SaFoSdeVwNaKCXJAeII4kCgII1lU9QUKUIiddt57vTY/jzDe+szUv2l7L72RH28n
         yMuIAE+G57x4qSM3yVhQeLqX5fjdtvKixRPaCOJws/15TZxfKg+5mz6/nxK+EsK7sI0W
         E50O1SS++zUhCu88NASgwIWJLqbQ3yoRBMx5/mx0NKBCEO3YCxtMoJ3ub+Q2ai/OPcr3
         JsrNdSJCt4uhP2eOjyq4kfDLUFLc2JZCnKt05wI4TBubrl+rSgBb3S/i714FBhTwz0rL
         6Ccw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=4TgwJPWp;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.92.84 is neither permitted nor denied by best guess record for domain of xinhui.pan@amd.com) smtp.mailfrom=Xinhui.Pan@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j/lnL0mRZX6eoz2GH+6jfoGqT4QquPdc4NsR2Ixuqbk=;
        b=NDMoT/Up4+IZSzshwdsRRFT/ceLaYVRVu7MGSgCv0flj1GZ+e9yqBNRdFCGwIGpW4e
         FPXGhlZNOMsWhDGzHDkOYzeOuV8Om9ndRNjBEVTmpi/sPrCXtfsBRCpXjIESnkGJSajB
         J3+OKsYInnFoAPFEla6YpmEfZ0yKJnYddrUXAncafX/hdB3rXFUEq/M2qqitkXDB315K
         K1zEXUSc9MhLsKRx7IwfYLt86ZFOxYq+L4gWwTlaEPuWIVrCJJxDhDmvQg9dHkipj4Qv
         CyOH0zRsGo55U+KneE+onEBJQRY66MNFox1WyAwj+djGrlmfRaB7sRnh3sfwTKXQPGLQ
         GIuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j/lnL0mRZX6eoz2GH+6jfoGqT4QquPdc4NsR2Ixuqbk=;
        b=a3TNE9JGars4dr+yqy1f6FPCmPOl6skWwt6x0aGsXSEDaPxEcu5HbgELwXMLut1s/Y
         LSvHK5j/LfDQP7oGv7mMFVL+rjY1h8OEYxhr6/QQkQd1YTm0U7h4dzrLTe56u2edP2TC
         2xRz3WETUPO5ngBPvUY0TgBFqQ9/Yv4Gr0vHFHjnOCKhtzWVhcSsiszl5Hyyb75gsTiv
         vD7FjuTtqcmdHqGwqW2E5njqeMYwwKai/Nx/OADgHxo6bFCQCQvixrFHzW5/eVRz6hNF
         v+fRIA77w6lXUTU0oYiqGIaI88K+R8N+yPmC73447lH1i08PEau3pIew5oxAJBUz1DZT
         H7eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUYlUuS30EtOywALOwa4dwcDj/WbkD8BIiv79xOlOdgoBzeiNfA
	IEUezXtctRJFs/itnHPLu+o=
X-Google-Smtp-Source: APXvYqyKHufXuBaaqmocti5DyrVCROamha6E+wHq2P7OSaD8G5QqN2r2gem5Zxa+HRuT+HCyjl4BxA==
X-Received: by 2002:a63:d710:: with SMTP id d16mr1382028pgg.393.1582763843291;
        Wed, 26 Feb 2020 16:37:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ad06:: with SMTP id r6ls273714pjq.3.canary-gmail;
 Wed, 26 Feb 2020 16:37:22 -0800 (PST)
X-Received: by 2002:a17:90a:d348:: with SMTP id i8mr1937298pjx.43.1582763842754;
        Wed, 26 Feb 2020 16:37:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582763842; cv=pass;
        d=google.com; s=arc-20160816;
        b=THPp41V5ZPjc9+VvSM3sb1u8x6zBptaL2xUkpL/49U5q9rH1TCUDI3rgPP93r8PXeT
         ghylE7wK/a11w1dLtF5ZCBvJTLBiEGWxbXgbNt6tsbWfCheT2bcNuhWfST8Ek58tbU6N
         bkC3STb98CLJDppu/FREqVMFd5MDJczCr5H/72MHC/i53hc4ZPm9BaSqvlLClsuV6UD+
         I0ehstwFlHqTmgIWMvc7efuM0YYGQC+gkPsrYMBdgDrt0/WwfmnK+7YPMyo9r0+JX0XU
         1BSx3Mixf6MusQILCJ+UzTEkHRhbsnsZNg5KNT97oKTA5DMayUIPgzclgP+w+D6m+7Sp
         yCRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=t6LpbMR4DH4rzV3dXgU9s4tpTy/hF2c+BNwHHVM24TM=;
        b=E07NbFZDPE9SZCW6qHON8h9u7EqeAoesqgeMDNxuWH6ridNH244p5wDcOJSnO6z70c
         9qGtiQ+nHJ1bVVUHKfT3IgjDco7ZHT2gZBanvKzkLAvpZ+TXN8x9DLoXSDdBoT/GK3XT
         ieLAVgBRqeouIO5v71xGU7+VLMl4ru5CgRlXk22AzLkiqNyBPE4Gyq2u7d8/Hs3goJrB
         jXwvsdHmMk605BQcsqmZG1AjroEiWl2pSyoF8BytM0TJohj4cChnVqVxKqSgFy+MN3Sr
         GqGyJZrIeB1JyHdGE7MnfV500zNYLNHsdIDevstQH/iEeWmoCKD5YbCWCkXLTWs4sF1j
         SgLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=4TgwJPWp;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.92.84 is neither permitted nor denied by best guess record for domain of xinhui.pan@amd.com) smtp.mailfrom=Xinhui.Pan@amd.com
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2084.outbound.protection.outlook.com. [40.107.92.84])
        by gmr-mx.google.com with ESMTPS id f31si84090pje.2.2020.02.26.16.37.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Feb 2020 16:37:22 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.92.84 is neither permitted nor denied by best guess record for domain of xinhui.pan@amd.com) client-ip=40.107.92.84;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EPHPO4dzpLHfk/jQ4yEJEwvxTWxeBstp9zkr2k1AxQrtplpAThIYp99D3TP69bEJkiqFPCYVJ/U8ok5pdZtljWY6vFQFt3fQoJbwx9PMzhXv5yAYPU7tq/iItSmcdP3BGvW4zqmZFbjD5DC54Z1HovE/OfNcm9B6sXRd2lPG6Y2o3fduzT4qaAecle14v3rD3UIZvyBquhowVdnWrNtzJi+8PqQvcseVN4KMLuKlFGIVBMFzjyxOlfyeZU3GIOCyq2Uh2od+J8xv2nIKjUqUCEKB7Ro4+5yI2pnFxr4rNcNpSAJyq3qfoa9xswpjRocMvmiqv3MPxv0fK+6dijK0TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t6LpbMR4DH4rzV3dXgU9s4tpTy/hF2c+BNwHHVM24TM=;
 b=lkillPdFDt2EL+GzImyr6SKrQo4D/knvdtAFeQ60Rw7f1fG2klrVXVuY+eINNGTwCfqelV2gCfFF/ABeCFVZQFRMcNBcsOtOPKrRd42uG3y5qEcKs8c4UTvS/MN9nU9o2QMSKGDkK4mPQGbyFlgbyN25zfegmkMLrKlTr0mkrZolOVPb6W3MVZdH+IH89X36LTtxgzIP0IrnUfnSGfJ9pmcrYwjj4Cs0IhZfhnyD9+OxLxsIu49qmm/sEdfHZQUe2pJgNAFbdNxLgkzjgrFHjS4xH0FEzab+7ADCtI1ac13o8/Je/aChNgQ0wVbM0ctKmQJE2ZQDw+tfD5xLubS70Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from SN6PR12MB2800.namprd12.prod.outlook.com (2603:10b6:805:6c::10)
 by SN6PR12MB2702.namprd12.prod.outlook.com (2603:10b6:805:6c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Thu, 27 Feb
 2020 00:37:15 +0000
Received: from SN6PR12MB2800.namprd12.prod.outlook.com
 ([fe80::b99c:18c0:8685:1c10]) by SN6PR12MB2800.namprd12.prod.outlook.com
 ([fe80::b99c:18c0:8685:1c10%5]) with mapi id 15.20.2772.012; Thu, 27 Feb 2020
 00:37:15 +0000
From: "Pan, Xinhui" <Xinhui.Pan@amd.com>
To: Nick Desaulniers <ndesaulniers@google.com>
CC: "Pan, Xinhui" <Xinhui.Pan@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
	TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann
	<arnd@linaro.org>, clang-built-linux <clang-built-linux@googlegroups.com>,
	Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>, CI Notify <ci_notify@linaro.org>,
	"Koenig, Christian" <Christian.Koenig@amd.com>, "Kuehling, Felix"
	<Felix.Kuehling@amd.com>, "Deucher, Alexander" <Alexander.Deucher@amd.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 59 - Successful!
Thread-Topic: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 59 - Successful!
Thread-Index: AQHV7Plj0G1EjKhNe0iP2S821GuJqaguMikA
Date: Thu, 27 Feb 2020 00:37:15 +0000
Message-ID: <384CD9C3-587C-4012-80F2-E7B56AD1CA85@amd.com>
References: <1934074311.4390.1582739712490.JavaMail.javamailuser@localhost>
 <CAKwvOdmruBR2u_ySqchmbm5QRquCyaxVph6eY+7hCfHkVjbcfg@mail.gmail.com>
In-Reply-To: <CAKwvOdmruBR2u_ySqchmbm5QRquCyaxVph6eY+7hCfHkVjbcfg@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [101.88.213.93]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1df38d30-fec7-4474-ebfa-08d7bb1d316d
x-ms-traffictypediagnostic: SN6PR12MB2702:|SN6PR12MB2702:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR12MB2702DFA11A450DAAD283449E87EB0@SN6PR12MB2702.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03264AEA72
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(136003)(376002)(346002)(39860400002)(366004)(199004)(189003)(966005)(54906003)(86362001)(64756008)(66446008)(66556008)(36756003)(316002)(478600001)(53546011)(2616005)(45080400002)(66476007)(66574012)(186003)(33656002)(6512007)(6506007)(6486002)(26005)(30864003)(6916009)(8676002)(66946007)(71200400001)(76116006)(8936002)(81166006)(91956017)(4326008)(2906002)(5660300002)(81156014);DIR:OUT;SFP:1101;SCL:1;SRVR:SN6PR12MB2702;H:SN6PR12MB2800.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:3;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: THtMzQKPw6L+ls7YhxauuWzWJ8z6fYVbBEWhltqilpm2MGuK/TQ3K0Y2zg/LUhvZgWP2n1hnVFZfa2+exJbr/hwh2m92aOLONLj5NTqChyKovKT+Fmr5P2tXpAx9pY4b/80pevRqot/7w/L2683l2UqITRE7WjnOjnztu/5mZGamy0AtZgHhu8ydAEborYRoP0G7K4X2As3vWFaRwr/LK17OVDy9huHIG1Y1YLjJnYoycITHTngXq7eKvFHPyGntNV2BbGghLMLZim4uKtZvuKIw6X6ZbyzEzn1YZOlq9ceKsMMzcALlxwPJR9R9+LbBIqBZssJQQ0zePgqJLyYtwf2pskZQF6Q9DoDHjzvtD4JNkHuX8o+ftovNsyQTd9vBF/O8EiT1wdu3u1bHudQTf6wHeyOt8p1YJ9axjP6n7ZJtky1aIpbzz9Y0Z2CpTTZzxGtmmMj5WZe1soniKZ94WrIKhqEq/Xy7azjMpnwJEOodTYGGkSOFqLxX1yMlb7fDP5rstfqDd72iI7It186Teg==
x-ms-exchange-antispam-messagedata: 9OnAX5oFV9SqJm4icurp83MdrnMksfYh1IfoSko4Hu0eyOFloWEOpUtYKXqR709VcRAxHawlGUnl2C+Rek61W669pv8YCaSkMcYdzDfr3Bn7hQuWznhtkBmP/v7v4suhnPPwh7FJmIil7IrmnPzWWg==
Content-Type: text/plain; charset="UTF-8"
Content-ID: <0CB8F615E402024E8B5CEA68C94F1D8B@namprd12.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df38d30-fec7-4474-ebfa-08d7bb1d316d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2020 00:37:15.2148
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7BiZ6KouKAh6Ckr/ry9fldeiYkUKXFrY8K3ARU8HhQ/R8HmFnjIAyfJ45NhOXew2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR12MB2702
X-Original-Sender: xinhui.pan@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=4TgwJPWp;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.92.84 is neither permitted nor denied by best guess
 record for domain of xinhui.pan@amd.com) smtp.mailfrom=Xinhui.Pan@amd.com
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

Nick
  Thanks for reporting it.
We have already noticed it and has a fix from Felix "drm/amdgpu: Fix 32-bit=
 build=E2=80=9D.
it will be merged today in linux-next branch.

thanks
xinhui

> 2020=E5=B9=B42=E6=9C=8827=E6=97=A5 07:06=EF=BC=8CNick Desaulniers <ndesau=
lniers@google.com> =E5=86=99=E9=81=93=EF=BC=9A
>=20
> Hi xinhui,
>=20
> Looks like from our CI we're seeing the error:
>=20
> 00:05:11 ERROR: "amdgpu_amdkfd_remove_fence_on_pt_pd_bos"
> [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
>=20
> from your commit ("drm/amdgpu: Remove kfd eviction fence before
> release bo"). Can you please take a look?
>=20
> Also, there were a few more warnings under drivers/gpu/drm/amd/amdgpu/:
> https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.li=
naro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-release-arm-next-allmodconfig%2F59=
%2Fartifact%2Fartifacts%2Fbuild-f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f%2F=
console.log&amp;data=3D02%7C01%7Cxinhui.pan%40amd.com%7Cf64fcef480364f5feb1=
008d7bb1084e7%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6371835519317160=
38&amp;sdata=3Dniky6YClzWk3%2BAjdoa63gedmPzNSL8UVc4%2FR0WLydWM%3D&amp;reser=
ved=3D0
>=20
> -Wpointer-bool-conversion looks like there may be an unnecessary `&`
> operator in the two flagged expressions.
> -Wframe-larger-than=3D are slightly trickier to track down, but I wrote
> a tool to help pinpoint where excessive stack usage is coming from:
> https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithu=
b.com%2FClangBuiltLinux%2Fframe-larger-than&amp;data=3D02%7C01%7Cxinhui.pan=
%40amd.com%7Cf64fcef480364f5feb1008d7bb1084e7%7C3dd8961fe4884e608e11a82d994=
e183d%7C0%7C0%7C637183551931716038&amp;sdata=3DtneJyVysccBnqYDUR6eiAH8F6Zva=
sVOSDBaTvr%2BL82g%3D&amp;reserved=3D0
>=20
> If you could fix these, please use the following tag to help us track
> the effectiveness of our CI:
>=20
> Reported-by: TCWG Bisect <ci_notify@linaro.org>
>=20
> Please let me know if you have any questions or need help reproducing.
>=20
> On Wed, Feb 26, 2020 at 9:55 AM <ci_notify@linaro.org> wrote:
>>=20
>> Successfully identified regression in *linux* in CI configuration tcwg_k=
ernel/llvm-release-arm-next-allmodconfig.  So far, this commit has regresse=
d CI configurations:
>> - tcwg_kernel/gnu-master-arm-next-allmodconfig
>> - tcwg_kernel/gnu-master-arm-next-allyesconfig
>> - tcwg_kernel/llvm-release-arm-next-allmodconfig
>>=20
>> Culprit:
>> <cut>
>> commit f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
>> Author: xinhui pan <xinhui.pan@amd.com>
>>=20
>>    drm/amdgpu: Remove kfd eviction fence before release bo
>> </cut>
>>=20
>> First few build errors in logs:
>> 00:05:12 make[1]: *** [__modpost] Error 1
>> 00:05:12 make: *** [modules] Error 2
>> Configuration details:
>> rr[llvm_url]=3D"https://nam11.safelinks.protection.outlook.com/?url=3Dht=
tps%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project.git&amp;data=3D02%7C01%7Cxinhu=
i.pan%40amd.com%7Cf64fcef480364f5feb1008d7bb1084e7%7C3dd8961fe4884e608e11a8=
2d994e183d%7C0%7C0%7C637183551931716038&amp;sdata=3DhIueNidKpeo9HHhNjAhLkd2=
r6lrd%2BAvD%2Bo8OnLsko0I%3D&amp;reserved=3D0"
>> rr[linux_url]=3D"https://nam11.safelinks.protection.outlook.com/?url=3Dh=
ttps%3A%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%2Fkernel%2Fgit%2Fnext%2Flin=
ux-next.git&amp;data=3D02%7C01%7Cxinhui.pan%40amd.com%7Cf64fcef480364f5feb1=
008d7bb1084e7%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6371835519317160=
38&amp;sdata=3DyD9GamtJNYtbH29%2FuxhT%2FxD1U6Z4NcHZlA2G8mVZNys%3D&amp;reser=
ved=3D0"
>> rr[linux_branch]=3D"c99b17ac03994525092fd66bed14b4a0c82f0b4d"
>>=20
>> Results regressed to (for first_bad =3D=3D f7f3e49a0d744da16dd4e2ec4e8e7=
07ea7f4a98f)
>> reset_artifacts:
>> -10
>> build_llvm:
>> -1
>> linux_n_obj:
>> 20110
>>=20
>> from (for last_good =3D=3D cab5dec425f19f3d4eeca0d8e073578cbed66d8d)
>> reset_artifacts:
>> -10
>> build_llvm:
>> -1
>> linux_n_obj:
>> 27451
>> linux build successful:
>> all
>>=20
>> Artifacts of first_bad build: https://nam11.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-rel=
ease-arm-next-allmodconfig%2F59%2Fartifact%2Fartifacts%2Fbuild-f7f3e49a0d74=
4da16dd4e2ec4e8e707ea7f4a98f%2F&amp;data=3D02%7C01%7Cxinhui.pan%40amd.com%7=
Cf64fcef480364f5feb1008d7bb1084e7%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C=
0%7C637183551931716038&amp;sdata=3Dhw3Ft5%2Boscb1CutL1QF7rHDcSNyVNlDqQnuuDi=
qiC1M%3D&amp;reserved=3D0
>> Artifacts of last_good build: https://nam11.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-rel=
ease-arm-next-allmodconfig%2F59%2Fartifact%2Fartifacts%2Fbuild-cab5dec425f1=
9f3d4eeca0d8e073578cbed66d8d%2F&amp;data=3D02%7C01%7Cxinhui.pan%40amd.com%7=
Cf64fcef480364f5feb1008d7bb1084e7%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C=
0%7C637183551931716038&amp;sdata=3DWsK5EY603XY71H3eUw6Z8STQZFI1pbXdzFL7hizr=
82o%3D&amp;reserved=3D0
>> Build top page/logs: https://nam11.safelinks.protection.outlook.com/?url=
=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-release-arm-=
next-allmodconfig%2F59%2F&amp;data=3D02%7C01%7Cxinhui.pan%40amd.com%7Cf64fc=
ef480364f5feb1008d7bb1084e7%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C63=
7183551931726038&amp;sdata=3D94jX76NLs%2B8Lx2iCSrBQ0gbCj5NprXWVdDa9yyFmaSM%=
3D&amp;reserved=3D0
>>=20
>> Reproduce builds:
>> <cut>
>> mkdir investigate-linux-f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
>> cd investigate-linux-f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
>>=20
>> git clone https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A=
%2F%2Fgit.linaro.org%2Ftoolchain%2Fjenkins-scripts&amp;data=3D02%7C01%7Cxin=
hui.pan%40amd.com%7Cf64fcef480364f5feb1008d7bb1084e7%7C3dd8961fe4884e608e11=
a82d994e183d%7C0%7C0%7C637183551931726038&amp;sdata=3DnlnuFFiUsH%2Bje9NYDZO=
WLy%2B9FEmyfitRfoJF0jQ0th4%3D&amp;reserved=3D0
>>=20
>> mkdir -p artifacts/manifests
>> curl -o artifacts/manifests/build-baseline.sh https://nam11.safelinks.pr=
otection.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel=
-bisect-llvm-release-arm-next-allmodconfig%2F59%2Fartifact%2Fartifacts%2Fma=
nifests%2Fbuild-baseline.sh&amp;data=3D02%7C01%7Cxinhui.pan%40amd.com%7Cf64=
fcef480364f5feb1008d7bb1084e7%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C=
637183551931726038&amp;sdata=3DHgaDh3jrtvTbJdCJt4Y1xw2Lp2XgQGBRbqLAlrJJOhc%=
3D&amp;reserved=3D0
>> curl -o artifacts/manifests/build-parameters.sh https://nam11.safelinks.=
protection.outlook.com/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kern=
el-bisect-llvm-release-arm-next-allmodconfig%2F59%2Fartifact%2Fartifacts%2F=
manifests%2Fbuild-parameters.sh&amp;data=3D02%7C01%7Cxinhui.pan%40amd.com%7=
Cf64fcef480364f5feb1008d7bb1084e7%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C=
0%7C637183551931726038&amp;sdata=3D9JfotnjD5dJ0S6j%2BB%2BRbSVLSl2eUem7Dib2f=
fMMPvyY%3D&amp;reserved=3D0
>> curl -o artifacts/test.sh https://nam11.safelinks.protection.outlook.com=
/?url=3Dhttps%3A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-release=
-arm-next-allmodconfig%2F59%2Fartifact%2Fartifacts%2Ftest.sh&amp;data=3D02%=
7C01%7Cxinhui.pan%40amd.com%7Cf64fcef480364f5feb1008d7bb1084e7%7C3dd8961fe4=
884e608e11a82d994e183d%7C0%7C0%7C637183551931726038&amp;sdata=3D8mbK4uYeED6=
%2F3w80RmhUM6yyL1eQbJB3%2FG6APw82P8s%3D&amp;reserved=3D0
>> chmod +x artifacts/test.sh
>>=20
>> # Reproduce the baseline build (build all pre-requisites)
>> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-base=
line.sh
>>=20
>> cd linux
>>=20
>> # Reproduce first_bad build
>> git checkout --detach f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
>> ../artifacts/test.sh
>>=20
>> # Reproduce last_good build
>> git checkout --detach cab5dec425f19f3d4eeca0d8e073578cbed66d8d
>> ../artifacts/test.sh
>>=20
>> cd ..
>> </cut>
>>=20
>> History of pending regressions and results: https://nam11.safelinks.prot=
ection.outlook.com/?url=3Dhttps%3A%2F%2Fgit.linaro.org%2Ftoolchain%2Fci%2Fb=
ase-artifacts.git%2Flog%2F%3Fh%3Dlinaro-local%2Fci%2Ftcwg_kernel%2Fllvm-rel=
ease-arm-next-allmodconfig&amp;data=3D02%7C01%7Cxinhui.pan%40amd.com%7Cf64f=
cef480364f5feb1008d7bb1084e7%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6=
37183551931726038&amp;sdata=3DeVMc%2F18SEvvSiKCGRvlVQ98IWjGR50E2syqJT4sRkMY=
%3D&amp;reserved=3D0
>>=20
>> Artifacts: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3=
A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-release-arm-next-allmo=
dconfig%2F59%2Fartifact%2Fartifacts%2F&amp;data=3D02%7C01%7Cxinhui.pan%40am=
d.com%7Cf64fcef480364f5feb1008d7bb1084e7%7C3dd8961fe4884e608e11a82d994e183d=
%7C0%7C0%7C637183551931726038&amp;sdata=3DCrYIOa5e1E1%2FTypFuk6gkIS8JxwkZel=
aCly%2BPne0BO0%3D&amp;reserved=3D0
>> Build log: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3=
A%2F%2Fci.linaro.org%2Fjob%2Ftcwg_kernel-bisect-llvm-release-arm-next-allmo=
dconfig%2F59%2FconsoleText&amp;data=3D02%7C01%7Cxinhui.pan%40amd.com%7Cf64f=
cef480364f5feb1008d7bb1084e7%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6=
37183551931726038&amp;sdata=3DpRtJRzT3tRRGowrFDoQfmwdXbwhTQPCdqNy7L%2B0M9sU=
%3D&amp;reserved=3D0
>>=20
>> Full commit:
>> <cut>
>> commit f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
>> Author: xinhui pan <xinhui.pan@amd.com>
>> Date:   Tue Feb 11 11:28:34 2020 +0800
>>=20
>>    drm/amdgpu: Remove kfd eviction fence before release bo
>>=20
>>    No need to trigger eviction as the memory mapping will not be used
>>    anymore.
>>=20
>>    All pt/pd bos share same resv, hence the same shared eviction fence.
>>    Everytime page table is freed, the fence will be signled and that cua=
ses
>>    kfd unexcepted evictions.
>>=20
>>    CC: Christian K=C3=B6nig <christian.koenig@amd.com>
>>    CC: Felix Kuehling <felix.kuehling@amd.com>
>>    CC: Alex Deucher <alexander.deucher@amd.com>
>>    Acked-by: Christian K=C3=B6nig <christian.koenig@amd.com>
>>    Reviewed-by: Felix Kuehling <Felix.Kuehling@amd.com>
>>    Signed-off-by: xinhui pan <xinhui.pan@amd.com>
>>    Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
>> ---
>> drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h       |  1 +
>> drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c | 38 ++++++++++++++++++=
++++++
>> drivers/gpu/drm/amd/amdgpu/amdgpu_object.c       |  5 ++++
>> 3 files changed, 44 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h b/drivers/gpu/dr=
m/amd/amdgpu/amdgpu_amdkfd.h
>> index 9e8db702d878..0ee8aae6c519 100644
>> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
>> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
>> @@ -96,6 +96,7 @@ struct amdgpu_amdkfd_fence *amdgpu_amdkfd_fence_create=
(u64 context,
>>                                                       struct mm_struct *=
mm);
>> bool amdkfd_fence_check_mm(struct dma_fence *f, struct mm_struct *mm);
>> struct amdgpu_amdkfd_fence *to_amdgpu_amdkfd_fence(struct dma_fence *f);
>> +int amdgpu_amdkfd_remove_fence_on_pt_pd_bos(struct amdgpu_bo *bo);
>>=20
>> struct amdkfd_process_info {
>>        /* List head of all VMs that belong to a KFD process */
>> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/=
gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
>> index 66bde9e9a4c9..e1d1eed7a25f 100644
>> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
>> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
>> @@ -276,6 +276,42 @@ static int amdgpu_amdkfd_remove_eviction_fence(stru=
ct amdgpu_bo *bo,
>>        return 0;
>> }
>>=20
>> +int amdgpu_amdkfd_remove_fence_on_pt_pd_bos(struct amdgpu_bo *bo)
>> +{
>> +       struct amdgpu_bo *root =3D bo;
>> +       struct amdgpu_vm_bo_base *vm_bo;
>> +       struct amdgpu_vm *vm;
>> +       struct amdkfd_process_info *info;
>> +       struct amdgpu_amdkfd_fence *ef;
>> +       int ret;
>> +
>> +       /* we can always get vm_bo from root PD bo.*/
>> +       while (root->parent)
>> +               root =3D root->parent;
>> +
>> +       vm_bo =3D root->vm_bo;
>> +       if (!vm_bo)
>> +               return 0;
>> +
>> +       vm =3D vm_bo->vm;
>> +       if (!vm)
>> +               return 0;
>> +
>> +       info =3D vm->process_info;
>> +       if (!info || !info->eviction_fence)
>> +               return 0;
>> +
>> +       ef =3D container_of(dma_fence_get(&info->eviction_fence->base),
>> +                       struct amdgpu_amdkfd_fence, base);
>> +
>> +       BUG_ON(!dma_resv_trylock(bo->tbo.base.resv));
>> +       ret =3D amdgpu_amdkfd_remove_eviction_fence(bo, ef);
>> +       dma_resv_unlock(bo->tbo.base.resv);
>> +
>> +       dma_fence_put(&ef->base);
>> +       return ret;
>> +}
>> +
>> static int amdgpu_amdkfd_bo_validate(struct amdgpu_bo *bo, uint32_t doma=
in,
>>                                     bool wait)
>> {
>> @@ -1044,6 +1080,8 @@ void amdgpu_amdkfd_gpuvm_destroy_cb(struct amdgpu_=
device *adev,
>>        list_del(&vm->vm_list_node);
>>        mutex_unlock(&process_info->lock);
>>=20
>> +       vm->process_info =3D NULL;
>> +
>>        /* Release per-process resources when last compute VM is destroye=
d */
>>        if (!process_info->n_vms) {
>>                WARN_ON(!list_empty(&process_info->kfd_bo_list));
>> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/dr=
m/amd/amdgpu/amdgpu_object.c
>> index 65176b97401c..e4a8c424d290 100644
>> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
>> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
>> @@ -1307,6 +1307,11 @@ void amdgpu_bo_release_notify(struct ttm_buffer_o=
bject *bo)
>>        if (abo->kfd_bo)
>>                amdgpu_amdkfd_unreserve_memory_limit(abo);
>>=20
>> +       /* We only remove the fence if the resv has individualized. */
>> +       WARN_ON_ONCE(bo->base.resv !=3D &bo->base._resv);
>> +       if (bo->base.resv =3D=3D &bo->base._resv)
>> +               amdgpu_amdkfd_remove_fence_on_pt_pd_bos(abo);
>> +
>>        if (bo->mem.mem_type !=3D TTM_PL_VRAM || !bo->mem.mm_node ||
>>            !(abo->flags & AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE))
>>                return;
>> </cut>
>>=20
>> --
>> You received this message because you are subscribed to the Google Group=
s "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://nam11.safelinks.protect=
ion.outlook.com/?url=3Dhttps%3A%2F%2Fgroups.google.com%2Fd%2Fmsgid%2Fclang-=
built-linux%2F1934074311.4390.1582739712490.JavaMail.javamailuser%2540local=
host&amp;data=3D02%7C01%7Cxinhui.pan%40amd.com%7Cf64fcef480364f5feb1008d7bb=
1084e7%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637183551931726038&amp;=
sdata=3DbEKZ9GSioZMfvOYSghPX%2F0dT%2BpPCpjvDReawhE6685Q%3D&amp;reserved=3D0=
.
>=20
>=20
>=20
> --=20
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/384CD9C3-587C-4012-80F2-E7B56AD1CA85%40amd.com.
