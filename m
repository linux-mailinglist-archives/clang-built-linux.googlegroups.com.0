Return-Path: <clang-built-linux+bncBDZ7HIWT7AJRBZXWUDWQKGQELAB4ROA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF19DA97F
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 11:59:03 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id x77sf1569160qka.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 02:59:03 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1571306342; cv=pass;
        d=google.com; s=arc-20160816;
        b=GQu823QSNnv5gvZl0LbdSG4taTmb7ufW9rH2a/wcnj+ZNOcCcZpkdByBXT9CiiG2eg
         ipOZGMDrLH53FbL+hlSbOXrh4QmJlP4zjemlu4e7qgATHBNxLYJWebEKYD3ZxzHnOFJQ
         5/C10XU+hDUkIfWaad3u6ZiseLPd/FxBpOQnTbgy2CPb8aa/6c9wrBv2wFR+ObFJE4Ww
         p8H0K39RTXkMdrDf9A9cgge1HwVemf5nV6yXkxM09QBNnxyVWHb6foY3ZP9+hIkS+gk5
         K71wh6ONYSSlOgI/ci/hdcnHVdH+WRq68D5dFA5bhXSFGVXtI571DvgZogukpGyVdLCV
         o13g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=7RQqtHfdOYKCWNdqsnU+HSaXyHGUBNDHglH4jO79Fa0=;
        b=vdmdmS8wXS98PoO0/POzJPp3qsC62llbr3y/xCQ1BpJ5WmLElQFAFoERxCoedimGr7
         VgLgH3AUwFQtmcqM09FjNJ+Mk/3ug4Y8pYR9gkv4w/Y51H8hXZ53OhoRt3NR/kpq5EuB
         dxM4Gcz8h7ccG5aHBX7yn7pARaH+q1z2RQ4+PU914OTuLXr+HU1HxPuVbYLg/VGPrkcJ
         TiN52xfKDVfPAYEK1fNxTYpzqBBuefKCrNtLgve5PkYpBQsrmyDrknMMi3yPMi3bfAVt
         tNPhE978H56OmTUgRtJbelZSP1VJz+/YoCXh6Rin1hAzTHFkG/dKh+EQS7avvISbfJP8
         VSxA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=GXCBCILX;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.70.53 is neither permitted nor denied by best guess record for domain of shirish.s@amd.com) smtp.mailfrom=Shirish.S@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7RQqtHfdOYKCWNdqsnU+HSaXyHGUBNDHglH4jO79Fa0=;
        b=Ylfq4B9M7P5W/Xl0VPSKjaCv2XGIOERPpcsdSd0rYUMlOzVi176CLGm4uh82mUH+oS
         13MLqaJjIp8mbvXtBqypS3Rb1m+3/7LIo8g+URwqF0uJkOiCslTHS1w+gm5agt7R5yl0
         prBrKLo7xIc8/RH9M+D56mANwtCVATxsPs7qxJ+REAi+C9df/XnHqeh8dCWUXTUhVvU7
         WG1DhqZOxqAdONVR+x4lExUghodtrzCttZjkSzLKUTUqnEjXFuygsthTjVgfJZHKd8XY
         KN1HnUMSJqPstJIHqLO0Wo6pMCn7Yx5y9AFpQlsV9lLMdpeOL/+Bw3COTP282V1nd8nH
         otqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7RQqtHfdOYKCWNdqsnU+HSaXyHGUBNDHglH4jO79Fa0=;
        b=IoDGBqjOKoGDvCAA6AEnyGsoX6xdPCbhtFLWbw6PSOUjC5kKHa9d5LoLaFOdi4DLuQ
         uvsfdgEnSORTzLUM+sWiRJdjfrpWejmsedEGaPhP8GT6QgQ4IeVOZs0364+uMgoauBtR
         i/W0BlH/LxKVlfVVUKx9TezXoGuZ+BAQAT8z++VeFRkzqcR4+NZ07wIfHmyFRQiWG/P6
         v4uZS2Wc/jNvQWYjRlHmgVhD0/RkWad+zf2xS8Uc8YSDH5lM5ZBUk9nxmakpMMWbx3Ri
         iirTaH3t2UjZz0E8g4RcSKN8uZG4feeHB+2I4Pad/2GL9h2L1lxyPfd4KZ+B5wJ5fclX
         yrfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVRYgx6rCUhRmi/XKymf1WbfZkj9YJo3xflfkzbO++0nW9O1Pe3
	/TsjNwl9qInURr1a46+uim0=
X-Google-Smtp-Source: APXvYqy9bBeDgYC965+DGa1XFwB5AEcLxiHhR131tBg3od0ROhpNNtol47mX6H8FkRbdjpakjgHgMQ==
X-Received: by 2002:a0c:c2d3:: with SMTP id c19mr2930059qvi.158.1571306342500;
        Thu, 17 Oct 2019 02:59:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:102:: with SMTP id e2ls586199qtg.2.gmail; Thu, 17 Oct
 2019 02:59:02 -0700 (PDT)
X-Received: by 2002:ac8:6f61:: with SMTP id u1mr2835128qtv.79.1571306342112;
        Thu, 17 Oct 2019 02:59:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571306342; cv=pass;
        d=google.com; s=arc-20160816;
        b=RAHJQN4l7k0emM78hWvOIflZMtWhIiL17n7nh9rN9y1JonCnxsgZU7M29oS7v6l31e
         m6kVmbBNLszrUZXP9ey2pVy1k5OCoSvOQNoJkG7InSswgtMFoIT393PYXoAGWnx4Ip5D
         GdGCYP5kbH9g4acoOfmp+DXB8FKFyRGwfckazOUuRZfMKn+U2UKQuZynDtuRtpntwtk5
         yFtO7AQ7QUCnfyONc8YYFTs+zMuG5sHBXFtAwe+U+J1gqrwefNqsPIru+IW5XW3HaelY
         rpns4laKTIsDEunY+kCOTWC4J5+9yNN/fQ8/0YTjT/odoAK54Q4UVrnt3M2U4JsyQPXI
         b3Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=EQFyewSgIUBPh/nhvgvwEqjQt1ZAskWEKzJiIwUbSyw=;
        b=a9NacOmYM8UO/ke+WPhEdyco9QJQnKRFCFfyeSb5x90ZKFNuRvWqYMdKwG5cCDpm9F
         5PP2jvMLbtfnNwDgf2CFDzNEwdnA4GffiMGfdij/4GBlghmqoMhxoNTMlLd6A9Be7rb/
         UDEyHIekJIZaGvkBQrjORaeLfQvvNWjf2n0ZMPb5drjhDCx940kClTL7yHbkOB4XwxW9
         ppEW97tVLaLcL7VfZ3tL1lrPeH3iNzjNV8mvMsixTj7Jhf05FladpkUAgebyVZIZ/MML
         +e5FMsJAL1lIFVvErU3EKX0UWJWzdhM4eJcI/NvmyfCBMDbJPrbvqf68aw9ihown/eag
         FYrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=GXCBCILX;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.70.53 is neither permitted nor denied by best guess record for domain of shirish.s@amd.com) smtp.mailfrom=Shirish.S@amd.com
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (mail-eopbgr700053.outbound.protection.outlook.com. [40.107.70.53])
        by gmr-mx.google.com with ESMTPS id x44si107508qtc.3.2019.10.17.02.59.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 17 Oct 2019 02:59:02 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.70.53 is neither permitted nor denied by best guess record for domain of shirish.s@amd.com) client-ip=40.107.70.53;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W6kCw/7bJY3PfgIR9PDmlRuro8UDaYMq7ywG2QYOEkaymlC9opDwZq+ntQt5tw8SFGctbZpOgYpqBkArGO3fejgAtnP9DZ4IDM8Wk+ZD7Ng/cMphEQjt4AU0oiULl+HLz47QtoiiNyl+BUQm5BgnEJ7l3/cW9AztW+RmEc+kfAwloS5tWHnrWLyCo5+UcwvTiD7qbqKZfsHHGImntuVVN4LJhkYyz0IpoT6K3vRvqrAxW7HGwo2vofhmLbZeT0tTfmj2MHY7ueDrnh+MBn9xiicryYkHr/1J3+eYDY/aLoZXUUfNtFKpqIBKTSzYqHp5Y2Mla+ifsa6F6v4DBZ38+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EQFyewSgIUBPh/nhvgvwEqjQt1ZAskWEKzJiIwUbSyw=;
 b=LqHs+KDfhbpzBOPE3PiGmsFJHA53l1yrCa0uRBC6mGbhoS07KfZBeMnh99AVxEApbQbXuHLvdSAiFhfNjZIY0QtyHa65fDkeXlGBJpBUZWDvcRX4oi1JQRwCx5LshUADzYI2EGjYhYcnbkZpIHsR0ETVn3Zql6dU4klZw0r7FB2/DMIG6IM9TI5sHse6boBsl06tRWM1oJFQoqiRpmUWpLrml8GwI/LQck9lWt4dN0hH6Oqj0Mq8lnTtS5GBi/bUlcHN75V+WXUqqxzRhjm24EosC1KgjgoASsLhFh8Lj+ufoIcXe0pVLwjDRiLILcgti6lta/hSd2K68z0JJaVxFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3248.namprd12.prod.outlook.com (20.179.80.74) by
 MN2PR12MB3120.namprd12.prod.outlook.com (20.178.243.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Thu, 17 Oct 2019 09:58:59 +0000
Received: from MN2PR12MB3248.namprd12.prod.outlook.com
 ([fe80::dd77:dfe4:1913:9d7e]) by MN2PR12MB3248.namprd12.prod.outlook.com
 ([fe80::dd77:dfe4:1913:9d7e%4]) with mapi id 15.20.2347.023; Thu, 17 Oct 2019
 09:58:59 +0000
From: "S, Shirish" <Shirish.S@amd.com>
To: Nick Desaulniers <ndesaulniers@google.com>, "Wentland, Harry"
	<Harry.Wentland@amd.com>, "Deucher, Alexander" <Alexander.Deucher@amd.com>
CC: "yshuiv7@gmail.com" <yshuiv7@gmail.com>, "andrew.cooper3@citrix.com"
	<andrew.cooper3@citrix.com>, "arnd@arndb.de" <arnd@arndb.de>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"mka@google.com" <mka@google.com>, "Zhou, David(ChunMing)"
	<David1.Zhou@amd.com>, "Koenig, Christian" <Christian.Koenig@amd.com>,
	"amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH 1/3] drm/amdgpu: fix stack alignment ABI mismatch for
 Clang
Thread-Topic: [PATCH 1/3] drm/amdgpu: fix stack alignment ABI mismatch for
 Clang
Thread-Index: AQHVhHXP6QrcFREBw0+LwR5zTGuiDqdemuLA
Date: Thu, 17 Oct 2019 09:58:59 +0000
Message-ID: <MN2PR12MB3248973F0DCF5786F6A89EBBF26D0@MN2PR12MB3248.namprd12.prod.outlook.com>
References: <20191016230209.39663-1-ndesaulniers@google.com>
 <20191016230209.39663-2-ndesaulniers@google.com>
In-Reply-To: <20191016230209.39663-2-ndesaulniers@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [165.204.157.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b8df61dc-2224-4e26-a56c-08d752e8a1f4
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: MN2PR12MB3120:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR12MB312006098A27A3152E6DC8BEF26D0@MN2PR12MB3120.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:96;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(4636009)(396003)(376002)(366004)(346002)(136003)(39860400002)(199004)(189003)(13464003)(64756008)(305945005)(6636002)(66446008)(66556008)(229853002)(446003)(74316002)(11346002)(6246003)(6116002)(3846002)(476003)(486006)(6436002)(256004)(7736002)(2906002)(9686003)(6306002)(66476007)(55016002)(66946007)(4326008)(81156014)(8936002)(8676002)(81166006)(76116006)(966005)(478600001)(316002)(54906003)(7696005)(52536014)(99286004)(14454004)(5660300002)(186003)(26005)(86362001)(66066001)(53546011)(25786009)(6506007)(102836004)(76176011)(71190400001)(71200400001)(33656002)(110136005);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3120;H:MN2PR12MB3248.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O+GwhkQDTvgeEKU5HJeYl+MJolRlDseksSrcBFdtlK6p5ZdyfUJWmdsHGaIvQEDDVU6UUmcj0BxCJzDaBfx34v2+oggqeazCOl5X28Afbgwic2YFKuS4EJB//lijTD8PPh4GSBtP8Z0vj/sl1C5R8wOskXMYhZhvv74F/Byv6Ippqa8ZSMhOLNyLEYcGjh43ahqiRNS8wDaEYunK8fLwDyCKQPr3X7PPjq3voWAvhfHaKn0yOB/Wg5/Jr5mkPucJJBXPkym2zE61skXQY04loAUt00omRYKme/UAWR9lmfLYyQphOKbR9iRKgog3d+n4dESU/SxUda8Mp8viZ0SiEL9iKGp/S/TbbyUzQSS9yfh8l8erCbtfmrZwBZxqbTGbraqzp8Ekc147ty1e6un8EKPH7Aj9I4ObrmReyZsavL0O9WTA6nQo9XqxLuEA5BAwJ+42bnjStMPh+62Q/Mmcqg==
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8df61dc-2224-4e26-a56c-08d752e8a1f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 09:58:59.7660
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N9+39VIneujzDXu/xqn48a6Y1m3L9h9gWhlThlZFdgtEhHwHZC1Wf6t2kFhsBaKnJe0chKKtI2YNUaibuOmvsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3120
X-Original-Sender: shirish.s@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=GXCBCILX;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.70.53 is neither permitted nor denied by best guess
 record for domain of shirish.s@amd.com) smtp.mailfrom=Shirish.S@amd.com
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

Tested-by: Shirish S <shirish.s@amd.com>=20



Regards,
Shirish S

-----Original Message-----
From: Nick Desaulniers <ndesaulniers@google.com>=20
Sent: Thursday, October 17, 2019 4:32 AM
To: Wentland, Harry <Harry.Wentland@amd.com>; Deucher, Alexander <Alexander=
.Deucher@amd.com>
Cc: yshuiv7@gmail.com; andrew.cooper3@citrix.com; arnd@arndb.de; clang-buil=
t-linux@googlegroups.com; mka@google.com; S, Shirish <Shirish.S@amd.com>; Z=
hou, David(ChunMing) <David1.Zhou@amd.com>; Koenig, Christian <Christian.Ko=
enig@amd.com>; amd-gfx@lists.freedesktop.org; linux-kernel@vger.kernel.org;=
 Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH 1/3] drm/amdgpu: fix stack alignment ABI mismatch for Clang

The x86 kernel is compiled with an 8B stack alignment via `-mpreferred-stac=
k-boundary=3D3` for GCC since 3.6-rc1 via commit d9b0cde91c60 ("x86-64, gcc=
: Use -mpreferred-stack-boundary=3D3 if supported") or `-mstack-alignment=
=3D8` for Clang. Parts of the AMDGPU driver are compiled with 16B stack ali=
gnment.

Generally, the stack alignment is part of the ABI. Linking together two dif=
ferent translation units with differing stack alignment is dangerous, parti=
cularly when the translation unit with the smaller stack alignment makes ca=
lls into the translation unit with the larger stack alignment.
While 8B aligned stacks are sometimes also 16B aligned, they are not always=
.

Multiple users have reported General Protection Faults (GPF) when using the=
 AMDGPU driver compiled with Clang. Clang is placing objects in stack slots=
 assuming the stack is 16B aligned, and selecting instructions that require=
 16B aligned memory operands.

At runtime, syscall handlers with 8B aligned stack call into code that assu=
mes 16B stack alignment.  When the stack is a multiple of 8B but not 16B, t=
hese instructions result in a GPF.

Remove the code that added compatibility between the differing compiler fla=
gs, as it will result in runtime GPFs when built with Clang. Cleanups for G=
CC will be sent in later patches in the series.

Link: https://github.com/ClangBuiltLinux/linux/issues/735
Debugged-by: Yuxuan Shui <yshuiv7@gmail.com>
Reported-by: Shirish S <shirish.s@amd.com>
Reported-by: Yuxuan Shui <yshuiv7@gmail.com>
Suggested-by: Andrew Cooper <andrew.cooper3@citrix.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/gpu/drm/amd/display/dc/calcs/Makefile | 10 ++++------  drivers/gpu=
/drm/amd/display/dc/dcn20/Makefile | 10 ++++------  drivers/gpu/drm/amd/dis=
play/dc/dcn21/Makefile | 10 ++++------
 drivers/gpu/drm/amd/display/dc/dml/Makefile   | 10 ++++------
 drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 10 ++++------
 5 files changed, 20 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/dc/calcs/Makefile b/drivers/gpu/dr=
m/amd/display/dc/calcs/Makefile
index 985633c08a26..4b1a8a08a5de 100644
--- a/drivers/gpu/drm/amd/display/dc/calcs/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/calcs/Makefile
@@ -24,13 +24,11 @@
 # It calculates Bandwidth and Watermarks values for HW programming  #
=20
-ifneq ($(call cc-option, -mpreferred-stack-boundary=3D4),)
-	cc_stack_align :=3D -mpreferred-stack-boundary=3D4
-else ifneq ($(call cc-option, -mstack-alignment=3D16),)
-	cc_stack_align :=3D -mstack-alignment=3D16
-endif
+calcs_ccflags :=3D -mhard-float -msse
=20
-calcs_ccflags :=3D -mhard-float -msse $(cc_stack_align)
+ifdef CONFIG_CC_IS_GCC
+calcs_ccflags +=3D -mpreferred-stack-boundary=3D4 endif
=20
 ifdef CONFIG_CC_IS_CLANG
 calcs_ccflags +=3D -msse2
diff --git a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile b/drivers/gpu/dr=
m/amd/display/dc/dcn20/Makefile
index ddb8d5649e79..5fe3eb80075d 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn20/Makefile
@@ -10,13 +10,11 @@ ifdef CONFIG_DRM_AMD_DC_DSC_SUPPORT
 DCN20 +=3D dcn20_dsc.o
 endif
=20
-ifneq ($(call cc-option, -mpreferred-stack-boundary=3D4),)
-	cc_stack_align :=3D -mpreferred-stack-boundary=3D4
-else ifneq ($(call cc-option, -mstack-alignment=3D16),)
-	cc_stack_align :=3D -mstack-alignment=3D16
-endif
+CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o :=3D -mhard-float -msse
=20
-CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o :=3D -mhard-float -msse $(c=
c_stack_align)
+ifdef CONFIG_CC_IS_GCC
+CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o +=3D=20
+-mpreferred-stack-boundary=3D4 endif
=20
 ifdef CONFIG_CC_IS_CLANG
 CFLAGS_$(AMDDALPATH)/dc/dcn20/dcn20_resource.o +=3D -msse2 diff --git a/dr=
ivers/gpu/drm/amd/display/dc/dcn21/Makefile b/drivers/gpu/drm/amd/display/d=
c/dcn21/Makefile
index ef673bffc241..7057e20748b9 100644
--- a/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dcn21/Makefile
@@ -3,13 +3,11 @@
=20
 DCN21 =3D dcn21_hubp.o dcn21_hubbub.o dcn21_resource.o
=20
-ifneq ($(call cc-option, -mpreferred-stack-boundary=3D4),)
-	cc_stack_align :=3D -mpreferred-stack-boundary=3D4
-else ifneq ($(call cc-option, -mstack-alignment=3D16),)
-	cc_stack_align :=3D -mstack-alignment=3D16
-endif
+CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o :=3D -mhard-float -msse
=20
-CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o :=3D -mhard-float -msse $(c=
c_stack_align)
+ifdef CONFIG_CC_IS_GCC
+CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o +=3D=20
+-mpreferred-stack-boundary=3D4 endif
=20
 ifdef CONFIG_CC_IS_CLANG
 CFLAGS_$(AMDDALPATH)/dc/dcn21/dcn21_resource.o +=3D -msse2 diff --git a/dr=
ivers/gpu/drm/amd/display/dc/dml/Makefile b/drivers/gpu/drm/amd/display/dc/=
dml/Makefile
index 5b2a65b42403..1bd6e307b7f8 100644
--- a/drivers/gpu/drm/amd/display/dc/dml/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dml/Makefile
@@ -24,13 +24,11 @@
 # It provides the general basic services required by other DAL  # subcompo=
nents.
=20
-ifneq ($(call cc-option, -mpreferred-stack-boundary=3D4),)
-	cc_stack_align :=3D -mpreferred-stack-boundary=3D4
-else ifneq ($(call cc-option, -mstack-alignment=3D16),)
-	cc_stack_align :=3D -mstack-alignment=3D16
-endif
+dml_ccflags :=3D -mhard-float -msse
=20
-dml_ccflags :=3D -mhard-float -msse $(cc_stack_align)
+ifdef CONFIG_CC_IS_GCC
+dml_ccflags +=3D -mpreferred-stack-boundary=3D4 endif
=20
 ifdef CONFIG_CC_IS_CLANG
 dml_ccflags +=3D -msse2
diff --git a/drivers/gpu/drm/amd/display/dc/dsc/Makefile b/drivers/gpu/drm/=
amd/display/dc/dsc/Makefile
index b456cd23c6fa..932c3055230e 100644
--- a/drivers/gpu/drm/amd/display/dc/dsc/Makefile
+++ b/drivers/gpu/drm/amd/display/dc/dsc/Makefile
@@ -1,13 +1,11 @@
 #
 # Makefile for the 'dsc' sub-component of DAL.
=20
-ifneq ($(call cc-option, -mpreferred-stack-boundary=3D4),)
-	cc_stack_align :=3D -mpreferred-stack-boundary=3D4
-else ifneq ($(call cc-option, -mstack-alignment=3D16),)
-	cc_stack_align :=3D -mstack-alignment=3D16
-endif
+dsc_ccflags :=3D -mhard-float -msse
=20
-dsc_ccflags :=3D -mhard-float -msse $(cc_stack_align)
+ifdef CONFIG_CC_IS_GCC
+dsc_ccflags +=3D -mpreferred-stack-boundary=3D4 endif
=20
 ifdef CONFIG_CC_IS_CLANG
 dsc_ccflags +=3D -msse2
--
2.23.0.700.g56cf767bdb-goog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/MN2PR12MB3248973F0DCF5786F6A89EBBF26D0%40MN2PR12MB3248.na=
mprd12.prod.outlook.com.
