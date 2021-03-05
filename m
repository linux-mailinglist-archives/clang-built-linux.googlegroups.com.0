Return-Path: <clang-built-linux+bncBCI2VAWMWUMRB75LQ2BAMGQEYZEF7SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 282F432DF9A
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 03:22:57 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id w34sf391821pjj.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 18:22:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614910975; cv=pass;
        d=google.com; s=arc-20160816;
        b=x8NLPrPzKadG1HvuFDQvogdGtENCHX5oAMJB7V0GnYN6Lj+FhCkI2Tx15R4E8PYbLC
         x+Bjh0kqxeLiNcuVgh5NWPiISnTHJn8e5X8SABfQJOx+6dIHwKFPrnMoH97r7H+cSQrk
         +Yqm73Roz6BBgTIwhyVOyN1crlzFlpfk7ylrtKddZVhTWYkqse1hGHqyddfHS1emk8JA
         +Wpn+AjtQ7G6d3WmaoJ8GUdCJ5EaDNV634sXLQQKj7laDwJIbgo895bmr4Eibl56AUkF
         y4b0ymNe1Y0g0/F6ljEyJuZyEFZijoItAdN2wF6HJZZ6YRPFCyA9XQxhDUDGTpzkLz6d
         XFtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=EpZ1NrNUItCC/MFn3iFdrE/JjSRQdldn2po+V/dOGzM=;
        b=HsZzDcwPLDObJ61J5wZj0LrHJR3u+JTp5Rx52Q/Ql91D4ctJzHvofHK13rvSfjz0Pw
         U9rfljCnqFT34UrqT7pcJ4WW1f8tBxDypKLychFkM6QQ8Nb0Rsl/c/diu4K9EDf8Fbmx
         HwuUyJiQIZC4Tij21j7wHmP52CUnbsOzsFqcGLDuenuz1lNdPVgI4lfvMccxEvgVFfRy
         v7R69TvL9c1IbAM+ELe6IOzLE1hDq4E05dtMQbYNRGB1/kpQgyGVnNVRASq2EerliaFH
         BEqcEA98X/RgNmjrTFm0ZUn+1CWHmMfAfiC1e3C/476xmOXgeSZazz+BaKtsLFVfbXNy
         Q5LA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=fm1 header.b=V1IPfGZ8;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=lzMzkV5C;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EpZ1NrNUItCC/MFn3iFdrE/JjSRQdldn2po+V/dOGzM=;
        b=eBTgnWvwJsqUzg56OMOcwSoJubF9XYv23nDrGm4CpTjMMyxfvQfJi3TndIZBSX5NVR
         zii2Jj1tdOXevyOlcXktBRQXS5wQu/8iTU86fupjNLUl01XZmG+a3Y6dhXQi03DhAAVH
         Z9dZeXszlfUoRXaSuznExuKaGOfDkaNsGufwDZ146ikxs91SXkWCz+BOLLskrJftxqfe
         UWN3YhNmHgZw/z1A8TQTiJkw/GpmRsHimRVAXJxyekVUQrAYbaCON4dbeucPeQCLDEXA
         3zikRUlkm0wXTQfSYP1RTXdP0YRf52+n1m1gbBsYVNTeMDGDxkNL/C/T0GDxhVM8tcyY
         YmlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EpZ1NrNUItCC/MFn3iFdrE/JjSRQdldn2po+V/dOGzM=;
        b=hMLPskObZKz907+Y26YPvNMmpa4XzgdS90aw80cpoTgx7ylvzaYI11BHrO+ytQ7SI6
         lu5bRn1EKyRNL4nOKrXQzRQ8iWXijemQJnNE4G+qIJUpF8zudTSmHe+GfOpKoMEfxVG+
         U5VpT+6HdblcU5nweeJWLI5T1UQJjIBPVLGrncf1uLeoW6bCIXBVKdTo1XZ4SnwLJl6w
         dZcDKi2n0lewL7bwMx7MJpCKYAZLzRqBvlVsxg/8hf/Gkw69dq82rhvdrFM/NRG+vbAb
         8VhLHRxkTqQi+VKOODlMNzPC74wM8iGhyLfuBD4OeLRjPtmOZorC1tP+hCv6vNk4az9P
         qCZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EOf8Z+/RtbKPqkZRWIOEUGirSs+BKWs0Fehhi+M4a0IRXkmPM
	e5dF51i8n+6soJCI6GxkiQE=
X-Google-Smtp-Source: ABdhPJwrTZmePkdv7VX/vNHIudGfZNP8uc93p3ZqnblHz1L39EG8zxKKJ4Rep2YZ+91WOwMtyaC72g==
X-Received: by 2002:a63:cf05:: with SMTP id j5mr6404380pgg.384.1614910975671;
        Thu, 04 Mar 2021 18:22:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ed0d:: with SMTP id u13ls3184036pfh.3.gmail; Thu, 04 Mar
 2021 18:22:55 -0800 (PST)
X-Received: by 2002:aa7:81cb:0:b029:1ee:5346:8f1d with SMTP id c11-20020aa781cb0000b02901ee53468f1dmr6779403pfn.4.1614910975176;
        Thu, 04 Mar 2021 18:22:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614910975; cv=none;
        d=google.com; s=arc-20160816;
        b=1LRzO6Gw3m9/EVmi0lTYrcTcuViZWFPHTIKN6f+uOMsBWGe97tDPaWdGcSW5OqGCsA
         EiUX5oxcfB23TCrST2QRwlm1sLfr2LUXjw4quhClkvcN5Sbnei6vSE5fXjZ5C0wMjX6b
         SEpmT3j16kLVo9zwfrcPNq3GqrWtEwT5y77JGrrbd08SkAVYoXnYWsehvxZP8+akEmbM
         +ttpTdUV0yXu3u2vHnzWnR+Of6dbWPXy4Tty5latDyclDyP3IO/laFy2fOrb+FTq1oTd
         AuteZCbYkk/L/bcVgS0yyy96vJUI9KlceMEK/mFuMq0pAfGrTxpPVZ9EgiwD+eebfDjs
         xMAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-signature;
        bh=yGZQWgk++k5ZUwyk5li/KQ2k0+Ulpks2gEIK7gYVqIU=;
        b=KjZAoKZAwqwm2f0+bAlNMFGb+gMOsJN3B2fmB7Yl5jqW3DI+XYjYjDOz3KBR0U8FwT
         5asycgOBeD0elesBKqg9FBcpr3UiJpNnLPkT8OviN2aMZic/BEjAeGggWxsxs9XfmdI5
         /51WY3OUtTK9xTaAUFuDfWSqs5/CJoYYfzZ0WwqnnEglgj/S3fqMMxXBA/mMDbkSNB2o
         tE7ViyUg3Y1WytH2BOzEyXBvxmBYX/A27pau28ASRpoSmHBVDOkqUfUpcGwBCITO976p
         /DgRHUnIkiQaX11odWXwVqciPJFo9evJeTsTz+3dXHr9anA+nBvGaiiiqUq50zMS1pJv
         V89w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=fm1 header.b=V1IPfGZ8;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=lzMzkV5C;
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by gmr-mx.google.com with ESMTPS id h7si93751plr.3.2021.03.04.18.22.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 18:22:55 -0800 (PST)
Received-SPF: pass (google.com: domain of jiaxun.yang@flygoat.com designates 66.111.4.28 as permitted sender) client-ip=66.111.4.28;
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 3A4515C00E2;
	Thu,  4 Mar 2021 21:22:54 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 04 Mar 2021 21:22:54 -0500
X-ME-Sender: <xms:_JVBYKa1T7ufOuT1dBa2qi9mn3B8r4G02PEWj81KpjbM7bMGJd5fVw>
    <xme:_JVBYNaXIQ_IOZnQw3ze13-6FJE20GDoFxxg4HE6-38Hwq8ZhnOMjP7xbJQiiqXx1
    06BuhF4uQSq618M7f8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledruddthedggeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepuffvfhfhkffffgggjggtgfesthekredttdeftfenucfhrhhomheplfhirgig
    uhhnucgjrghnghcuoehjihgrgihunhdrhigrnhhgsehflhihghhorghtrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeefleduiedtvdekffeggfeukeejgeeffeetlefghfekffeuteei
    jeeghefhueffvdenucfkphepgeehrdeffedrhedtrddvheegnecuvehluhhsthgvrhfuih
    iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepjhhirgiguhhnrdihrghnghesfhhl
    hihgohgrthdrtghomh
X-ME-Proxy: <xmx:_JVBYE9CYCTDsFLmHtr0KOZ4M_qzUwbHosYTsUt_Pw9JOGduiMuboQ>
    <xmx:_JVBYMqhRuCIgG7Hn-_hMrJDpjmTDY_yQzTkgkSXfR1qs3J2FihhFQ>
    <xmx:_JVBYFoj6oEolZ9WQAzOP4fvC67ZDQ8xCT2uY5u7k42Dk-0XnkYtiw>
    <xmx:_pVBYGfQTWm7EvxJKYtbrZC88eN64zSuOfHDpRauX35JONlSZ2UOMg>
Received: from [127.0.0.1] (li1000-254.members.linode.com [45.33.50.254])
	by mail.messagingengine.com (Postfix) with ESMTPA id CB92B24005E;
	Thu,  4 Mar 2021 21:22:49 -0500 (EST)
Subject: Re: [PATCH] MIPS: Add comment about CONFIG_MIPS32_O32 in
 loongson3_defconfig when build with Clang
To: "Maciej W. Rozycki" <macro@orcam.me.uk>,
 Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Xuefeng Li <lixuefeng@loongson.cn>
References: <1614820544-10686-1-git-send-email-yangtiezhu@loongson.cn>
 <alpine.DEB.2.21.2103042356150.51127@angie.orcam.me.uk>
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
Message-ID: <d4802e65-52a0-f927-3e7c-80044c5bba80@flygoat.com>
Date: Fri, 5 Mar 2021 10:22:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.2103042356150.51127@angie.orcam.me.uk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jiaxun.yang@flygoat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@flygoat.com header.s=fm1 header.b=V1IPfGZ8;       dkim=pass
 header.i=@messagingengine.com header.s=fm2 header.b=lzMzkV5C;       spf=pass
 (google.com: domain of jiaxun.yang@flygoat.com designates 66.111.4.28 as
 permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com
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



=E5=9C=A8 2021/3/5 =E4=B8=8A=E5=8D=887:08, Maciej W. Rozycki =E5=86=99=E9=
=81=93:
> On Thu, 4 Mar 2021, Tiezhu Yang wrote:
>=20
>> This is a known bug [2] with Clang, as Simon Atanasyan said,
>> "There is no plan on support O32 for MIPS64 due to lack of
>> resources".
>=20
>   Huh?  Is that a joke?  From the o32 psABI's point of view a MIPS64 CPU =
is
> exactly the same as a MIPS32 one (for whatever ISA revision), so there's
> nothing to support there really other than the CPU/ISA name.

Clang treat MIPS32 as a different backend so we may need some extra=20
effort....

TBH it is a toolchain issue and kernel workaround seems bogus.

 From my point view we can "s/mips64r2/mips32r2" when doing syscall checks
to workaround clang issue instead of disable it for kernel.

Thanks.

- Jiaxun

>=20
>   As much as I dislike all the hacks the Clang community seems to come up
> with for the shortcomings of their tool there has to be a saner workaroun=
d
> available rather than forcibly disabling support for the o32 ABI with
> CONFIG_64BIT kernels, but the report is missing the compiler invocation
> line triggering the issue (V=3D1 perhaps?), which should be included with
> any commit description anyway, so I can't suggest anything based on the
> limited information provided.
>=20
>    Maciej
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/d4802e65-52a0-f927-3e7c-80044c5bba80%40flygoat.com.
