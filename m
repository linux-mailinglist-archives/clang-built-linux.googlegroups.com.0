Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXWYWCEAMGQEPW3VWXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3C73E1B23
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 20:22:23 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id x1-20020a05640218c1b02903bc7f97f858sf3582657edy.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 11:22:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628187743; cv=pass;
        d=google.com; s=arc-20160816;
        b=cvwmjUKZyzecHnIPhJlu156SuIyDPsmU0KigFq2a+yeGrIF4nM6cOexNh7NdqJwIN9
         hVSvXejbax0e1C774OsebemDTPTiZv7XQivC+os7ba/laqRUJm7prA3a+IO38TcR7N8l
         sXbiyGmmcjZh3ilkwCD95t2IdXaZ3VxBE1pmsi+lTo1erZoWFFBwYB6xpU1UaU+RY1Sl
         7H51ooJoJbn5pX9QCMJI6XWpVen1mxmmcz28T20gYMncf/lluqZjvdMoNov/7Zv6mXMs
         YZaspF8x/KDvpdG4dNaTmuJDNuPsselWRZ37ds037tdZjqbUGJGUpEqBUT+bVcuNXKsW
         x8rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lLlvy93eBEcpw8enc0BaGD9hEf+Dbodir2qu3GXmBdI=;
        b=yOZApMJc5E5N7L/naA0OpQKr5WNszAIzRxMgiXG3+U+BP2AJtyjaoZv7bU3pOvuIi6
         7k7LkK1JsufPByGfHK3pQBdd/cPAj4GyvuYufPxC8VRxI3pYek2fn8M6vDqqHOs/EDM2
         UooN/7nfi394VFuTaSaAdzt+2kWKE829HQr6TEg2Fymstq+MbU6XwBwHOdwPeHK8nHpe
         DgCaJEUiVAlIaeHfzffsxZvd4HxOYNgiWfmUk6f06CmtYODYsr/upMiLqRJX3P5gXVkw
         v/w7PhuNAJuLM0aGiMqQd3++3m54hHJNfowLSXZXDh3I/lBdPANSnsnDSb9JrHFWxnLu
         NKPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y2oK9TpD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lLlvy93eBEcpw8enc0BaGD9hEf+Dbodir2qu3GXmBdI=;
        b=F8KmXMpCGBm99alua4L1gHL3Ng0oys/alno5cWktLAvyAyDGCL4VrkA4YG/LmaX2ML
         cT9NSNTWUGm+nI2DoIq+UFCiihjbUSAw/BzajMIZdoxQTieELURkushIKxGk/eV7voa9
         23s3j9C0uL68sfL/rgBWUUvrhurMXKj1uXMNRpzuiAhggYpQu/s2PCyRlYIp7sLV4fIz
         eebkCr2K24orapZFhl2T/VwUT/+YkfLJIMBYfV7wzM0MTXOEDuTGK3NPlEciX0Ej4Fit
         V9FMWDLo3sI6Fz7QUwkTmQvEKjeNxqPR/6mBsnj7kClEP4vOBGNIdOJyjpMw+kaBFVfJ
         wv2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lLlvy93eBEcpw8enc0BaGD9hEf+Dbodir2qu3GXmBdI=;
        b=AzKIvdAAW9OQ8rB0FDo7S3EPC8mWkoSYdfLGRbJ5oOnuGFZFLvQFtyAwEOV58mV/6I
         mblcHWS30ZVnQlKybTnPjn8iNLt4YHnQigitOLfCQwmLMbh4v8aWPSmKknIzqZOK5dU4
         DlbTN9QMRycLXPp81khWlWOJ7w3pF8P3yZrIIIAFtbdPPihpUfFbPjT58piE3wxLnEQO
         mQIR2NdpFAWDzjcIuZ3Y68i7sNd6+L87M4DdAQ/G9tIq2a8f6t/sbS2udiAyrW3pKSBu
         4wJLg+T9htRliNqfxLaB3fmo7gb0SUZ7TT+BYNjIo4Uu6csSPM+4drb6UCOsUx1VdNZm
         X9PQ==
X-Gm-Message-State: AOAM530zdjpdrF+oNNvxBJfFq6UX+rTd1H6OVzhJf4lVc5H+x1ZXE0ep
	uUNShrrNLU3MrINhQD5WNlU=
X-Google-Smtp-Source: ABdhPJyKW+bHjZmNjmNfksabgsesMzCaIVkTOglNCRJWyJ9XZXH1O0b8rzfs6WdZT3FitILRD9224Q==
X-Received: by 2002:a05:6402:1253:: with SMTP id l19mr8495415edw.19.1628187743235;
        Thu, 05 Aug 2021 11:22:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:22c4:: with SMTP id dm4ls1296723edb.0.gmail; Thu,
 05 Aug 2021 11:22:22 -0700 (PDT)
X-Received: by 2002:a05:6402:781:: with SMTP id d1mr8434612edy.32.1628187742299;
        Thu, 05 Aug 2021 11:22:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628187742; cv=none;
        d=google.com; s=arc-20160816;
        b=Mids/YdDR+a55jpI/r4LUqjZTOII2qQpNsRh4IxFDyDBo52Le4WI+I4FAnzqNibyYX
         oBBLBCoyFcF+fv42DMBL1fO1uS80ezTsJQo6KynSmfigsGOlZ1a+dqa+y97MhFtB1JA/
         IKVKPY8hdoWLz0hL3uGM13g3jlJmnBVR/8sq+/YANXPK0WwGwrILBd+k8XzKr/sQ2xHr
         Xk1ju4VzJSnUdiNw6hlLFjUQDQ7+CkMnHNxT2QOfC1gKeoyT/Qqu9620E85bNyKvZF2+
         iVWYOAwEhtMv5dsBt8CinjVXXkaCv40/hznr50qa0zOOEcYwLXDuSdt2D8TffmxGZcLE
         xWvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LNpT8+EvILfJwMhJDbf0NVaUrZW6zw0xKERByrH5p/E=;
        b=s2U8zhklP91VeeWAPOmvj9zkojDCHkeG9J5msHoyrrVVfkdb2HT45sclwrE3TCcbJU
         JDNUniDcd0JFGxLdSAOBa04YsEMls/nmrX9U1JrGA7cXTUWm459s4MwynkiwQguiiuRn
         0AEyMEUjBlUbcRnYK8n+fdVUKz6pka871HSNSbdaj3MxGoFM7t345Xx/NIKOyPneRyRP
         ADRCgtDjBR5hzVRDKPebFfGP0dS9eDb6W+jORUeTaQ6j01d3+tYzGiI5L2ZOeuptliXR
         dicoisToiTAJq7VY8FtW13q2nT3NEobryPXrC9NDISY7QEKljuGyy73rRgbEJC+pMI2J
         ES6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Y2oK9TpD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id h12si283881ede.2.2021.08.05.11.22.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 11:22:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id n6so8296354ljp.9
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 11:22:22 -0700 (PDT)
X-Received: by 2002:a2e:a911:: with SMTP id j17mr3939091ljq.341.1628187741325;
 Thu, 05 Aug 2021 11:22:21 -0700 (PDT)
MIME-Version: 1.0
References: <20210805150102.131008-1-masahiroy@kernel.org>
In-Reply-To: <20210805150102.131008-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Aug 2021 11:22:10 -0700
Message-ID: <CAKwvOdkoMnqoz_if9_W9x-WEq3Eu85t6P8sDSUXThypMeT6wiQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: check CONFIG_AS_IS_LLVM instead of LLVM_IAS
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <nathan@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Y2oK9TpD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

On Thu, Aug 5, 2021 at 8:01 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> LLVM_IAS is the user interface to set the -(no-)integrated-as flag,
> and it should be used only for that purpose.
>
> LLVM_IAS is checked in some places to determine the assembler type,
> but it is not precise.
>
>  $ make CC=gcc LLVM_IAS=1
>
> ... will use the GNU assembler since LLVM_IAS=1 is effective only when
> $(CC) is clang.
>
> Of course, the combination of CC=gcc and LLVM_IAS=1 does not make
> sense, but the build system can be more robust against such insane
> input.
>
> Commit ba64beb17493a ("kbuild: check the minimum assembler version in
> Kconfig") introduced CONFIG_AS_IS_GNU/LLVM, which is more precise
> because Kconfig checks the version string from the assembler in use.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
>  Makefile            | 2 +-
>  arch/riscv/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 4ab151060931..8b56c9692c3c 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -844,7 +844,7 @@ else
>  DEBUG_CFLAGS   += -g
>  endif
>
> -ifneq ($(LLVM_IAS),1)
> +ifndef CONFIG_AS_IS_LLVM
>  KBUILD_AFLAGS  += -Wa,-gdwarf-2
>  endif
>
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index bc74afdbf31e..dcfbd2a87d41 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -41,7 +41,7 @@ endif
>  ifeq ($(CONFIG_LD_IS_LLD),y)
>         KBUILD_CFLAGS += -mno-relax
>         KBUILD_AFLAGS += -mno-relax
> -ifneq ($(LLVM_IAS),1)
> +ifndef CONFIG_AS_IS_LLVM
>         KBUILD_CFLAGS += -Wa,-mno-relax
>         KBUILD_AFLAGS += -Wa,-mno-relax
>  endif
> --
> 2.30.2
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkoMnqoz_if9_W9x-WEq3Eu85t6P8sDSUXThypMeT6wiQ%40mail.gmail.com.
