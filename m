Return-Path: <clang-built-linux+bncBD3K3R5GSEARBV7V32BQMGQEA3RCNMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id C83163600B8
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 06:02:32 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id u5-20020a170902e805b02900e64faaa513sf8102895plg.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 21:02:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618459351; cv=pass;
        d=google.com; s=arc-20160816;
        b=jDHui3FMdHc71EO9osfQ1KtaxugU00cYF72HzqRuUiqtc4BWxd5YEymRCIhMJ1n8je
         dTW0L3AMM8BTGiQr+ISIpof0gIsDTR8SRGUY2PgyWqPbERQGHvgSvv58/gMDgn0eRjed
         Vno4BGx8EVwnep9mb1Evxa7+pjW4BRRKLbNSdC/87BgJmFBsaslcga4hXWqhttdbsOXP
         3zy1iQU2rtL1poFa2McbacH2Hgv2uc773zNT2btNX6cWuA3U6oWpBKXkPj64cfOeI3CH
         Lz7cqD6qFSzUgWcev5gSDjhm4XpJvcWdEfrLwk66H2AHHQOwCM4B3Otv882SRZeIyqVr
         aEEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=aoOAll3Et4sdQDprCMgbYJpBCro57+WwOl83vdql7iM=;
        b=NaaMMoQiXgttr4hiadfE4zwkK/uEqQj5n3gun3B+0Tsv6EfknzeAMF2Fic3IfNarNs
         16y1VseRRzB+kcEmxfzGz3gVbLsGg45XUgQUzpe1hAPqhLt9ii0eElYtQPaQvCaJ7rRk
         tusvRKxZ2tyDS2W7ipaotw5EW3HPrI32jxWwihunwWyZgpSZMGgmZIvX6gSJg/CqkB0/
         NCL+XNALz8RA0ROi2o9GsaPlG4fbNzQfbQPzyQJ+Pll26/huUJ9bR2//Of1qgsj+VvTd
         Gr/bq5vQdw/HhkCYgE6aJtoht4FhWgNo49B49/kmg0M1FxU6gts1I88FarKlKgMoRNsP
         3R/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of prime.zeng@hisilicon.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=prime.zeng@hisilicon.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hisilicon.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aoOAll3Et4sdQDprCMgbYJpBCro57+WwOl83vdql7iM=;
        b=V4e6Z6gcp/7xyUOQpBRvrDRvRo3NHMvMzpMyLnzOxHgNxbE/YDGCyEAyNbkkvXPyTX
         zWjWKG2BKi2iMwi9cQlgB7BdrkEmDbn+5Nyij3/frRLoQy4T4urmRrSxnKL/C+o4HTjF
         mSF4JElwPpWAusBbFY3WdOpm7JY4Ov6hRuLKM0t96JlYDT4n2ubGepR2/jwpbb3QTUa3
         QV8dvY3DOGObDGIdBN2ryCdcnDJzokkM8L8v7ez0eTUeqz6Su7ZhHZWQP7+E/CukeBt6
         56iSRg5OVO5qTCcgfKmWf6P0eZcGkAQBdBJfoFEw0oBEG5/MsDYYrQiU+od0ZQpE4h/U
         ngLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aoOAll3Et4sdQDprCMgbYJpBCro57+WwOl83vdql7iM=;
        b=Fdyi5MagyPLX/ySGB35EU6k4v1aCdqwNrGRN99NqIxuWk0qp4bavsa4i55avcGHQ7n
         q+V/jxXjhkNHXX5Ld/TnGSYbc3JLZ30ly+XY9avHaJbFMsa/oSXHf1qa4PbK4S1iiBzn
         hfkDC4Vwa2YB/a6SE+1myTgeqvOmvKKX9/uQf0YBlgI+HoEEkBcHAR6OZpjUlrNELskn
         pMejrBKZYw4DPtXG6YD8XOwIRmfVcJW2/cYW9slDA0x/HinwdJA2Uo0mqLiVob5pGoPc
         2pSKZrGeCDvu0TDFSKIEOSirAGsWTfPJtgVEAsTmFIhvvFODyUAN/8LoDXvHUVEyq5ad
         flvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gVn0Bg2tId5BElaArrzViHEl1v5bvYe0u9FqHWhVI+QnynePn
	TG13E/Ht6qooIPtpCr9MNes=
X-Google-Smtp-Source: ABdhPJyMhwD3aReC2pkW1J5TYKPkDZYI+3cARxjx0eJz7ggmccyqeg+nRtPM3bWBMPAdwNaejdiu3w==
X-Received: by 2002:a17:90a:670a:: with SMTP id n10mr1586973pjj.176.1618459351558;
        Wed, 14 Apr 2021 21:02:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b48:: with SMTP id a8ls1935214pgl.10.gmail; Wed, 14 Apr
 2021 21:02:31 -0700 (PDT)
X-Received: by 2002:a63:d748:: with SMTP id w8mr1595965pgi.266.1618459350770;
        Wed, 14 Apr 2021 21:02:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618459350; cv=none;
        d=google.com; s=arc-20160816;
        b=nTPONWrN93wHaQbsh8YJVb5xqa5K93e9p+JCBAX4dm1lBjDFcO4Dm7OaleuLGP6UEe
         athAgXxLXJXPizvPeB2v9FwURxTnF/LmNUtbciynqa9Fws7J5ef9iEQyGThv+eqO4/t3
         Z7hz5BGkgQAUS9UxqZgjuo4dEdkgtISeqOL3rdtXdzIKiUgXvJ1O4Kbkw02u9Ou/Phox
         ECvIBowIgn+dTl+PiDbOIrCdTGUL8Lyb45hIsrnc/MHPcZM277zZJaHiVPNDUFDv+ji7
         yF9RDIKmYmW5dXqQ4o5ahoPzi3EAP52hI5w+8Os5pu7Gyn+sIg0ZhFty7w+OdSeJrV9o
         Fx/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=wueb4BvQa+IkAPM19AL5DA9CGnx9Za1ai874KARWXF8=;
        b=YmPx15bL+lL2SzUR+YQ7D9H/L6xA89TRe0aIuyr7jg/l1dKw4zAWYMiZOUkJADs9mW
         7Ytqt+J6/rREHQNuVIgbW+AIZUZtFUSFWiB8GPpKi3dlEJ8ksMO6GaxKDnywXizrvS7R
         xJdooYYquU4Ivt7HvlRt2GlpOpBzt8l2Y6e9PcZtBfCMEVdAHLVYh82hzLFvR9TlWumy
         fycNvR7Iy5Qz5mEMzHukILoUsMCbsPeN0lrQmJXymKLn1O4H0yVWUZP4uxloV5KXgUjq
         6Ti52saxB9/splYKWvhnuZGQCl4Y/hOYXCmGR6lh8ykRPKhJda97Drf/e52yfLWJHpCZ
         lbOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of prime.zeng@hisilicon.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=prime.zeng@hisilicon.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hisilicon.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id 7si136315pgj.1.2021.04.14.21.02.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 21:02:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of prime.zeng@hisilicon.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from DGGEML404-HUB.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4FLQb91wnczYWTs;
	Thu, 15 Apr 2021 11:59:49 +0800 (CST)
Received: from dggpemm000002.china.huawei.com (7.185.36.174) by
 DGGEML404-HUB.china.huawei.com (10.3.17.39) with Microsoft SMTP Server (TLS)
 id 14.3.498.0; Thu, 15 Apr 2021 12:01:55 +0800
Received: from dggpemm000003.china.huawei.com (7.185.36.128) by
 dggpemm000002.china.huawei.com (7.185.36.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 15 Apr 2021 12:01:55 +0800
Received: from dggpemm000003.china.huawei.com ([7.185.36.128]) by
 dggpemm000003.china.huawei.com ([7.185.36.128]) with mapi id 15.01.2106.013;
 Thu, 15 Apr 2021 12:01:55 +0800
From: "Zengtao (B)" <prime.zeng@hisilicon.com>
To: Wu XiangCheng <bobwxc@email.cn>, Alex Shi <alexs@kernel.org>, Bernard Zhao
	<bernard@vivo.com>
CC: Jonathan Corbet <corbet@lwn.net>, YanTeng Si <sterlingteng@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, "linux-doc@vger.kernel.org"
	<linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>
Subject: =?utf-8?B?562U5aSNOiBbUEFUQ0ggdjVdIGRvY3MvemhfQ046IGFkZCB0cmFuc2xhdGlv?=
 =?utf-8?Q?ns_in_zh=5FCN/dev-tools/gcov?=
Thread-Topic: [PATCH v5] docs/zh_CN: add translations in zh_CN/dev-tools/gcov
Thread-Index: AQHXMTFxHEf5zlvY0UeIFVspcBfxVKq08UpQ
Date: Thu, 15 Apr 2021 04:01:55 +0000
Message-ID: <e26cc66e2a2745f994eb8ede9a783563@hisilicon.com>
References: <20210414082316.15160-1-bernard@vivo.com>
 <20210414132127.GA13306@bobwxc.top>
In-Reply-To: <20210414132127.GA13306@bobwxc.top>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.69.38.183]
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: prime.zeng@hisilicon.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of prime.zeng@hisilicon.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=prime.zeng@hisilicon.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=hisilicon.com
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

> -----=E9=82=AE=E4=BB=B6=E5=8E=9F=E4=BB=B6-----
> =E5=8F=91=E4=BB=B6=E4=BA=BA: Wu XiangCheng [mailto:bobwxc@email.cn]
> =E5=8F=91=E9=80=81=E6=97=B6=E9=97=B4: 2021=E5=B9=B44=E6=9C=8814=E6=97=A5 =
21:21
> =E6=94=B6=E4=BB=B6=E4=BA=BA: Alex Shi <alexs@kernel.org>; Bernard Zhao <b=
ernard@vivo.com>
> =E6=8A=84=E9=80=81: Jonathan Corbet <corbet@lwn.net>; YanTeng Si
> <sterlingteng@gmail.com>; Nathan Chancellor <nathan@kernel.org>; Nick
> Desaulniers <ndesaulniers@google.com>; linux-doc@vger.kernel.org;
> linux-kernel@vger.kernel.org; clang-built-linux@googlegroups.com
> =E4=B8=BB=E9=A2=98: [PATCH v5] docs/zh_CN: add translations in zh_CN/dev-=
tools/gcov
>=20
> From: Bernard Zhao <bernard@vivo.com>
>=20
> Add new zh translations
> * zh_CN/dev-tools/gcov.rst
> * zh_CN/dev-tools/index.rst
> and link them to zh_CN/index.rst
>=20
> Signed-off-by: Bernard Zhao <bernard@vivo.com>
> Reviewed-by: Wu XiangCheng <bobwxc@email.cn>
> Signed-off-by: Wu XiangCheng <bobwxc@email.cn>
> ---
> base: linux-next
> commit 269dd42f4776 ("docs/zh_CN: add riscv to zh_CN index")
>=20
> Changes since V4:
> * modified some words under Alex Shi's advices
>=20
> Changes since V3:
> * update to newest linux-next
> * fix ``
> * fix tags
> * fix list indent
>=20
> Changes since V2:
> * fix some inaccurate translation
>=20
> Changes since V1:
> * add index.rst in dev-tools and link to to zh_CN/index.rst
> * fix some inaccurate translation
>=20
>  .../translations/zh_CN/dev-tools/gcov.rst     | 265 ++++++++++++++++++
>  .../translations/zh_CN/dev-tools/index.rst    |  35 +++
>  Documentation/translations/zh_CN/index.rst    |   1 +
>  3 files changed, 301 insertions(+)
>  create mode 100644 Documentation/translations/zh_CN/dev-tools/gcov.rst
>  create mode 100644 Documentation/translations/zh_CN/dev-tools/index.rst
>=20
> diff --git a/Documentation/translations/zh_CN/dev-tools/gcov.rst
> b/Documentation/translations/zh_CN/dev-tools/gcov.rst
> new file mode 100644
> index 000000000000..7515b488bc4e
> --- /dev/null
> +++ b/Documentation/translations/zh_CN/dev-tools/gcov.rst
> @@ -0,0 +1,265 @@
> +.. include:: ../disclaimer-zh_CN.rst
> +
> +:Original: Documentation/dev-tools/gcov.rst
> +:Translator: =E8=B5=B5=E5=86=9B=E5=A5=8E Bernard Zhao <bernard@vivo.com>
> +
> +=E5=9C=A8Linux=E5=86=85=E6=A0=B8=E9=87=8C=E4=BD=BF=E7=94=A8gcov=E5=81=9A=
=E4=BB=A3=E7=A0=81=E8=A6=86=E7=9B=96=E7=8E=87=E6=A3=80=E6=9F=A5
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +gcov=E6=98=AFlinux=E4=B8=AD=E5=B7=B2=E7=BB=8F=E9=9B=86=E6=88=90=E7=9A=84=
=E4=B8=80=E4=B8=AA=E5=88=86=E6=9E=90=E6=A8=A1=E5=9D=97=EF=BC=8C=E8=AF=A5=E6=
=A8=A1=E5=9D=97=E5=9C=A8=E5=86=85=E6=A0=B8=E4=B8=AD=E5=AF=B9GCC=E7=9A=84=E4=
=BB=A3=E7=A0=81
> =E8=A6=86=E7=9B=96=E7=8E=87=E7=BB=9F

Gcov is a tool/function, misleading for " gcov=E6=98=AFlinux=E4=B8=AD=E5=B7=
=B2=E7=BB=8F=E9=9B=86=E6=88=90=E7=9A=84=E4=B8=80=E4=B8=AA=E5=88=86=E6=9E=90
=E6=A8=A1=E5=9D=97"

I 'd suggest:
"Linux=E5=86=85=E6=A0=B8=E4=B8=AD=E5=B7=B2=E7=BB=8F=E9=9B=86=E6=88=90=E4=B8=
=80=E4=B8=AA=E7=89=B9=E6=80=A7=E6=94=AF=E6=8C=81gcov=E5=8A=9F=E8=83=BD=EF=
=BC=8C=E8=AF=A5=E7=89=B9=E6=80=A7=E8=AE=A9=E7=94=A8=E6=88=B7=E5=8F=AF=E4=BB=
=A5=E4=BD=BF=E7=94=A8gcov
 =E5=B7=A5=E5=85=B7=E5=AF=B9=E5=86=85=E6=A0=B8=E4=BB=A3=E7=A0=81=E8=A6=86=
=E7=9B=96=E7=8E=87=E8=BF=9B=E8=A1=8C=E7=BB=9F=E8=AE=A1"

Thanks.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/e26cc66e2a2745f994eb8ede9a783563%40hisilicon.com.
