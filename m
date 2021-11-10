Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ6MWCGAMGQEXBXUKAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7A644CA1A
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Nov 2021 21:07:03 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id z5-20020a5d6405000000b00182083d7d2asf633927wru.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Nov 2021 12:07:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636574823; cv=pass;
        d=google.com; s=arc-20160816;
        b=LHdiqSxNX8LvImg99y37NNGViyU1F4lKoxKT0rquz079L3VlDzwSGbzO8l8tXXaAup
         NTzoyLHRs8ggeHtppLNOl7bqvSKknOvBaIBmAdVCO4SsIL6na+eBYW3YiwYqy40Ru1+J
         fNMn5/DG/EF29ix0I4BcDP1PLJp5CpDbhUKrzTeEPoWNH5bWFZ7SkbGQ59uMuTfvdt7D
         WFXv2AN/HLt9u0IqhaXxtpwCogbM2RInRCG8yzUhSzTuJ9qafyJYe7M5SjEuNyONDlE/
         z2pGF1aVTHoPD7NejZbiAAOa0o85Mu0NCkoF5l+xfzbRqpxwlizhcZZMphPBceJ3O9g1
         nOnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HmAxrM7TdpkTxdORjRGWbPGx/EZMjVouujBrODClDIU=;
        b=o/l5Ao+iwPevRFwqjGdVrCSHsjVNaTK+h4ZCKajDH4gHCBquA4EYdZH5B9fwoGBnIQ
         cAU6vu3CfOWCw0uYhrafmy+QHEdkBWEj6QU0G5jZztiYuLAViMqcJlE0sk6gHptyGGlJ
         CqS8eXUJ2r3cFR2U3T+5dniGzCm6ioyCMbmEWsMlSbojNANc0WbPwt0nlFiguTyunQqs
         A3lzpvLL/I0E0dw/6Dq5yBLVDGtORG8Eq7WRgpJB9YckYAz8woSFiW3IxMdEFa9mOyMp
         yzgZTmzrlZFB7B1lRcQvP3yVJRy6Q3tFYqpRANGDnoQAO6LYm1YBRyWZS8FRvkEHCZJo
         db5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=T0mA82S9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HmAxrM7TdpkTxdORjRGWbPGx/EZMjVouujBrODClDIU=;
        b=EcMIO/OttXzM9KEJb56+DqQn/xY68txpzf76G/ax7gDXpQMD1f+sOi8mZuTFeDxiPP
         ocTC2Bfwa6CucjyjsLoFe0VCmmIDlxfh5i4CWG3jcEDpUgbG+hXX5PXumH2gp56hccLp
         k3dTCZTKrtBMQIxYavSeciR5bUa+4shZPsZFtL8IpDTYk2gYeMjbOXhP9ghfv52v3pZ0
         ijdD/H++jlkHhagNY/wKPMn8F9OMltdBsXSdr7oyOdNxEy/76coLGJXvjqxRS5u1Y3he
         DfRRlwjCWSCGfhVJKGuSzj2w8arHhLHJM3n92cBTwiZeWWsgW4EnD97Jzn6IAmXn6iFj
         Bsag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HmAxrM7TdpkTxdORjRGWbPGx/EZMjVouujBrODClDIU=;
        b=xOwNtDFpWvdAcp49+RkLdnFE2/xy7tdujgQ1x4vO8yFjBPRRyTFgMtqii3vkuBVu4L
         JYLxMlsFjkyKYgql4Vg+oGW4BnNOABl3xWrcAw9c8ZgGWj6AuLCMBfz4aeNUCWTOfQqx
         VMbJqTgR9/0sNaBideZSsT8mAnUUyKugZrBsW6VqTcavIw0lXOQnTmT4Izo0K7CWfvIS
         hkwYCK9iMaCVTsdOYVhP3tEbD2m2ayrRNS0AAN/ak5qeAijuotGA5rFp7+z0WFfmSMSI
         zw2pyjjb3QhMWCf92pz1yblILbp5JI/oCpqbgxk/MunRQWmb5xj9fYkQVwRNUeFUREs6
         hOjw==
X-Gm-Message-State: AOAM530wyp50tDsrO1Lmud05YW2ersAb6d9iLprheGq4W4F0rvgvp2Sm
	HY1BEiwHeSTt6VTQ/Fy4ohI=
X-Google-Smtp-Source: ABdhPJwvb4tpU/Py97xGZuONyqkvl5j1fPJ+KJf9AT5w629yk/C5gV5cwp2RJ5kUbSFq+rz79c+2nQ==
X-Received: by 2002:adf:fdc3:: with SMTP id i3mr2059767wrs.200.1636574823547;
        Wed, 10 Nov 2021 12:07:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1c7:: with SMTP id 190ls3774060wmb.3.canary-gmail; Wed,
 10 Nov 2021 12:07:02 -0800 (PST)
X-Received: by 2002:a7b:cc11:: with SMTP id f17mr2099944wmh.122.1636574822508;
        Wed, 10 Nov 2021 12:07:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636574822; cv=none;
        d=google.com; s=arc-20160816;
        b=jTkvOcPgWWQb6Y3rRbHLLfa50K++ZTe+UnX7HBBIz203qwb4vnunfnfj5iH1HH3KMw
         NFioEv8FJXG1dVUAhIxeQV57AGBZPIoGPtZiBrGPviS2B74QOhWdgETwzx26Kluj9maB
         6ZUxLCXZsuknq7kiUm55oMZcC7zNgOv2dH3bOMPgCukGSdc3/UtBcONyUg0MeIjyxadU
         P3WWQakueKgaVdPYcBdgMrZIGmZWWBciLvfjtw1aGK93fh08/KQ7i/HnRqMU1maoGr04
         Np/v1QEgCsavbubTMx5wetDetK5Hzd96l+VuaaoGxmvC4zvoDoo61pHakLrLUwX9d+4E
         GFgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gSrurhuXGQeaKHb8L3Yt2wYxJhfQZQU1Ci3KEYdxsXE=;
        b=kEtOnbo53ysBbglPbsWqHemlRBV7WHQzALxsM+M4XonAZYSOjbC9ihsUOcmNPkRPKb
         QJJdWyIKt1E8g8WBFhErs9OZ6tYl3Byq6NoyKGkXV/SaKyG/omKjBKu1s27YQViKnTv1
         58bKzjneQxYmvEGZe2AhjNCxuAxQkfCWk0w+Cs+FePD65CWKy73Shot3McYh0w/T4Fbx
         plXsHEXgqpx63YvvMLKTiSTncbfT4YJvKqMCq8MiG+R5W0zWGhfb9ChfY9ERXMqly8lW
         euJiUiiGfqAO8ca0KXHQ+b5EnSoG7jlZMEiXi2Kq7CN2aKIvLJEag1xAjV9feYleAoyC
         S2vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=T0mA82S9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id i17si57033wrb.1.2021.11.10.12.07.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Nov 2021 12:07:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id br15so4969759lfb.9
        for <clang-built-linux@googlegroups.com>; Wed, 10 Nov 2021 12:07:02 -0800 (PST)
X-Received: by 2002:a05:6512:607:: with SMTP id b7mr1598868lfe.489.1636574822075;
 Wed, 10 Nov 2021 12:07:02 -0800 (PST)
MIME-Version: 1.0
References: <20211107161855.323312-1-masahiroy@kernel.org>
In-Reply-To: <20211107161855.323312-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Nov 2021 12:06:50 -0800
Message-ID: <CAKwvOd=jgJhkehw2M6edkbJb-h_gSDDv+gZ2Ycra1LCr-x-4qQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: vdso: remove -nostdlib compiler flag
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	Russell King <rmk+kernel@armlinux.org.uk>, clang-built-linux@googlegroups.com, 
	Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=T0mA82S9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Sun, Nov 7, 2021 at 8:19 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> The -nostdlib option requests the compiler to not use the standard
> system startup files or libraries when linking. It is effective only
> when $(CC) is used as a linker driver.
>
> Since commit fe00e50b2db8 ("ARM: 8858/1: vdso: use $(LD) instead of
> $(CC) to link VDSO"), $(LD) is directly used, hence -nostdlib is
> unneeded.

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  arch/arm/vdso/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/vdso/Makefile b/arch/arm/vdso/Makefile
> index 7c9e395b77f7..ec52b776f926 100644
> --- a/arch/arm/vdso/Makefile
> +++ b/arch/arm/vdso/Makefile
> @@ -18,7 +18,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING -DBUILD_VDSO32
>
>  ldflags-$(CONFIG_CPU_ENDIAN_BE8) := --be8
>  ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
> -           -z max-page-size=4096 -nostdlib -shared $(ldflags-y) \
> +           -z max-page-size=4096 -shared $(ldflags-y) \
>             --hash-style=sysv --build-id=sha1 \
>             -T
>
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211107161855.323312-1-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DjgJhkehw2M6edkbJb-h_gSDDv%2BgZ2Ycra1LCr-x-4qQ%40mail.gmail.com.
