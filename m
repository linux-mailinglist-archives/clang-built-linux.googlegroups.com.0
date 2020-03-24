Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAX25DZQKGQEIHHJQJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id B48CF19171E
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 18:01:55 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id v198sf13600561oia.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 10:01:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585069314; cv=pass;
        d=google.com; s=arc-20160816;
        b=nn5rxXmbsJJ1wc+NFgg9cEHI90iQzPQOEiY0s+3PZIEbHOgUHZUtgbG6xg655ACGc/
         KFSPH591knV3q+tKdeqaBgO42fTgbrncL/oSuW4C79X27y34lKQmE+Njp2J7v6HWosoK
         eMMdbWAm6XA8aop1F2/WE0gIw1Gm/sRmNl11CvHQypO7TvA1IpFE72fpGRlU2Yg2mYNU
         wTO+aEb2ztg20Rq28Mu9mmXkfo4PsKbt6HVJlH4MH+4o72MBIe3xDt+WGOytJwl/Vs8h
         tzMz7KSrOcEqxUiQprwC8WiWCqzSItQ311kPcLrO5lEzXgknc5ZGc6eM78C397cZDZWO
         Pmkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IOAx3zbWvmPzd4Luw6cF1wsfYdrGXzAndjb5i03ligM=;
        b=ZRII/Ob6JqcOHOxNvVtVu+/u0PBuEcPwg9tQRz9Kux9fay8i30EFYWsXr6agLZe8Ir
         67tVs7qhY/982k4PeFUyXz+504Syl3xTXY2Ya4UWBJ8vvluEAkzN/ZkOMugnxePoWBrh
         f5pIMe2c9opv34FiWoyXRAeV8US6Xq5I7BwGIVw36TDlpm+pp/RtLZoe1N7tlK0K6RQV
         /8HVwSB8LmoPS7lfoF0Y08wT8xz1Iw7Nk7DqvSNkDSSqBCt7yDNMRxcGJTXbK7ZdRMMK
         tNAaQl37jX0d9AWDewm4VbSSoyfELE7+aIAfMAktN6GzRTJv+2Hi2VrmkVn4GS4cnFKK
         ShpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bN5MWtin;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IOAx3zbWvmPzd4Luw6cF1wsfYdrGXzAndjb5i03ligM=;
        b=pom144kFkx0jZwG4opmGnR4lv/qNm7JvzpB4jS0sZiTQ6Mph5pnuTred9EErnQSI0X
         wR+SxfFmMLvXkCdrtxrFMIfzmxi4Srr3ehOYJ6ddqoZ6wdaGxUdpQsatpn6//jYJWdWp
         oDowlZehKREmG6ZCxWGKFu0Udw3jEEtLbW8Q4pxkcLhyToM9Jva3T6SX9dLZiJUCwnyX
         GbmeZhyN74sdlwfPeay4Szz19cEGnbPL+Pn5Xd8pmse+IYH3ZCsvPkTsFK7YkKOmw0c5
         44fLUA8OIy4XnOGRce7+QzT3KXourBO3sWE6ymU+T1uekvMrPuW/6VrCSgD/BCb11VoZ
         YqYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IOAx3zbWvmPzd4Luw6cF1wsfYdrGXzAndjb5i03ligM=;
        b=e1y90x5/a57aDZxjvJNkUVicXXHRpPtzDoC0GqpaVJZML9si1xoXTo0Y75zPU4cwPk
         xSdzMj6YR4fRfgIpMTpgJTSSja7JZPehPKZNlk4UxHYTQ7X0xSQRJF7b3qqd+zy01xyp
         rSINQL+kocfg9XEYTIpMmd4XIrgUHUb/Jjy5vjnLkazLm/S9QIX+9Voe1mnwJtV0gTin
         Eqrim/yBstD0BbJVmTZsiQCJCckbtx4UiW6A+SG18Gfy/ZrjvLA/vHPuIgzEzAMLsuIj
         YCrDOCej1LrKmNr1W5GrntlBKpwcOXPuN0+5/mEPtQJJyXYWJ4dkTXyOmmkIcuWk0NxV
         JaUw==
X-Gm-Message-State: ANhLgQ3Vyo1bqile3mtF0r9U28HynU5gvgKIkihdHlkedSZz0yzw7Qml
	l1+JnSUysOctAdIGtrsV/dY=
X-Google-Smtp-Source: ADFU+vtpMnUI+3mkteecR7SPMeogV1qw2dHCs69HkWCwqXqNGLnZFB4Y+0XbFZcY7SIB/O6sB/35FQ==
X-Received: by 2002:aca:bac1:: with SMTP id k184mr4135082oif.157.1585069314606;
        Tue, 24 Mar 2020 10:01:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2e7:: with SMTP id 94ls7894327otl.6.gmail; Tue, 24 Mar
 2020 10:01:54 -0700 (PDT)
X-Received: by 2002:a05:6830:60a:: with SMTP id w10mr23646380oti.292.1585069313829;
        Tue, 24 Mar 2020 10:01:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585069313; cv=none;
        d=google.com; s=arc-20160816;
        b=xlQ1r0zaEdTNL9ZeMY7cnrbAG4KZpa5Av4ksQChGax30mWGRDxZsVyIgWpFUpokWeu
         tS5lVx2P16xkOhc8r2Rf5F7TQJOpGE5Mt763OU8jqyA30u1Ej+PNpzvDlmTomQyw4EEC
         kbAFCb1rUh3hPrWRskJ9IJfkdEtAG7hCs97ktJkgGMYU87ldQwF1BCwzDEZeqh0SDwqu
         D8r33GoyWgE6aUagZ1s/RCg05LmzhLAHjRa6lqziRkt0Oho+L0+0vszUFu6+YMZwtBhC
         dB441rmzNGA36144lzI33QBvxX55esVctf4ZqROtNTGpGJfqYfcuxrPuqThCF5fQVTBX
         0ztg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=i+ozVGPWZ8LGXvVCrBNoRqT1LP5S57LScccMkP4xx1s=;
        b=VKcLjqVRuWyhCftocG3jtVeM5US0NQchr+nEwe+nXQdsK0G/URmSU8cSfsXDi+2QBo
         Btz6LRlCtgbzaN/hOCR2MkJHxg4jbuU7vJX2SY/I79M1uJc9oBCtYH1PAODJKYkzAYf3
         KxiWT9CDSlLiKNCfgoTGA4cEd1/uSyXcUE3hBVoMdEJw7ONJnvsHVhzswqsSS+ppjd5N
         x23TcV6/BeTtcy8ylVC3ERby4LQa3rBUZqZX//lAAdmQpMJtnrjAh9xfpllYLuQzT/vK
         vTdFcwdeNC4L2QGZvC/5z2tN6IqLRElAoqoLM69dQNel0FcehX0Scyx4+baa1BOU8Ou6
         T8xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bN5MWtin;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id x23si928693oif.2.2020.03.24.10.01.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 10:01:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id l36so1832890pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 10:01:53 -0700 (PDT)
X-Received: by 2002:a17:902:22e:: with SMTP id 43mr26258620plc.119.1585069311796;
 Tue, 24 Mar 2020 10:01:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org> <20200324084821.29944-12-masahiroy@kernel.org>
In-Reply-To: <20200324084821.29944-12-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 10:01:40 -0700
Message-ID: <CAKwvOdkj3dDNcbY4hwyManfviPdFoBooJJmFOAKL2YJCZNuhtA@mail.gmail.com>
Subject: Re: [PATCH 11/16] x86: probe assembler capabilities via kconfig
 instead of makefile
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, 
	"H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"Jason A. Donenfeld" <Jason@zx2c4.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bN5MWtin;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

Can 11 just be rebased with 8 dropped?

On Tue, Mar 24, 2020 at 1:49 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> From: "Jason A. Donenfeld" <Jason@zx2c4.com>
>
> Doing this probing inside of the Makefiles means we have a maze of
> ifdefs inside the source code and child Makefiles that need to make
> proper decisions on this too. Instead, we do it at Kconfig time, like
> many other compiler and assembler options, which allows us to set up the
> dependencies normally for full compilation units. In the process, the
> ADX test changes to use %eax instead of %r10 so that it's valid in both
> 32-bit and 64-bit mode.
>
> Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  arch/x86/Kconfig           |  2 ++
>  arch/x86/Kconfig.assembler | 22 ++++++++++++++++++++++
>  arch/x86/Makefile          | 15 ---------------
>  3 files changed, 24 insertions(+), 15 deletions(-)
>  create mode 100644 arch/x86/Kconfig.assembler
>
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index beea77046f9b..707673227837 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -2935,3 +2935,5 @@ config HAVE_ATOMIC_IOMAP
>  source "drivers/firmware/Kconfig"
>
>  source "arch/x86/kvm/Kconfig"
> +
> +source "arch/x86/Kconfig.assembler"
> diff --git a/arch/x86/Kconfig.assembler b/arch/x86/Kconfig.assembler
> new file mode 100644
> index 000000000000..46868ec7b723
> --- /dev/null
> +++ b/arch/x86/Kconfig.assembler
> @@ -0,0 +1,22 @@
> +# SPDX-License-Identifier: GPL-2.0
> +# Copyright (C) 2020 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
> +
> +# binutils >= 2.22
> +config AS_AVX2
> +       def_bool $(as-instr,vpbroadcastb %xmm0$(comma)%ymm1)
> +
> +# binutils >= 2.25
> +config AS_AVX512
> +       def_bool $(as-instr,vpmovm2b %k1$(comma)%zmm5)
> +
> +# binutils >= 2.24
> +config AS_SHA1_NI
> +       def_bool $(as-instr,sha1msg1 %xmm0$(comma)%xmm1)
> +
> +# binutils >= 2.24
> +config AS_SHA256_NI
> +       def_bool $(as-instr,sha256msg1 %xmm0$(comma)%xmm1)
> +
> +# binutils >= 2.23
> +config AS_ADX
> +       def_bool $(as-instr,adox %eax$(comma)%eax)
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 4c57cb3018fb..b65ec63c7db7 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -177,21 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
>         KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
>  endif
>
> -# does binutils support specific instructions?
> -# binutils >= 2.22
> -avx2_instr :=$(call as-instr,vpbroadcastb %xmm0$(comma)%ymm1,-DCONFIG_AS_AVX2=1)
> -# binutils >= 2.25
> -avx512_instr :=$(call as-instr,vpmovm2b %k1$(comma)%zmm5,-DCONFIG_AS_AVX512=1)
> -# binutils >= 2.24
> -sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=1)
> -# binutils >= 2.24
> -sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
> -# binutils >= 2.23
> -adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
> -
> -KBUILD_AFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> -KBUILD_CFLAGS += $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
> -
>  KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
>
>  #
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-12-masahiroy%40kernel.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkj3dDNcbY4hwyManfviPdFoBooJJmFOAKL2YJCZNuhtA%40mail.gmail.com.
