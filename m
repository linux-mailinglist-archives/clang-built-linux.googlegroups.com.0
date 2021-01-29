Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMHM2GAAMGQEHYGUD4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D9193308EC0
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 21:55:13 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id r10sf4875534ooh.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 12:55:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611953712; cv=pass;
        d=google.com; s=arc-20160816;
        b=sOT0dX+c5xxSlpmf9WLJXnZ3a+rpTph/G7xm31I989u6cOIQsqUVCktVTXyhkZBCPf
         slE8N92/j1jpwUlVU0aatsa4X/UUhd+6srmVqJVqwKJPdrbj+szs3HJNF7NvHZi+fJ1z
         0THM2S1fXaZdB4MINIWy6ctugkHAwqSlTi8ya6qpyovDix6UUWJXDDPpL/IaQHjc+vVR
         Vu/q63F33jySa0ZzjmfLgJOSTLFYcNm9A0LCZF747CkeO8nkqv2Ay5MZnnnz5J0pMkkK
         81uBiP55us3ygxTDBNHbwoHxmIydctSJX1y0UcCt+6BBZR1V4xAtF5cVUBxAj791GU3P
         /Y1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=oOf7Fp99WlG1zxqj6m9zbocSesh85ci8ebttqW54oNw=;
        b=tkaTa0ICSmHs+K1JumaZ6xwU5QnVN7ytZ+bNYMA4RsgBhG1gR2nkj/c4v5Z+XmT9wB
         pqZqUJyIjlFIMSXSKj6KGv5obSQ42aiWMu9Gbh4w88cEMCbg2YuHP/PFxMG+fQS4iWrB
         9xCH1TUHBNSpaVo/pSqqsUBJFunwjh1JxRPjyFwWLssKjEY6eV85rujynAQriDscvnif
         uW+TnakYmAAbJRiRjSQUdw1+dh2IqvduNfRGls1yhKSoZ6lX6kwVwdy54tRmuXfPZj0B
         RUdvl8jOch9nNZXWw9EibvTzbdK9u9duJP7L4Cw1Wpw2vYkTIkOXYsFZXqzHcSL8jO53
         OPcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DleAjbNi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oOf7Fp99WlG1zxqj6m9zbocSesh85ci8ebttqW54oNw=;
        b=VjXtNYIbp6fxaB4/mo5jFwvMe1Z78k7FHTEtW/qI6kt/SA2sYJ8AYVvTfEYIUeQlgr
         u4e9WaFwjmEHO8tevQGs17BM+xs6VZYpfP0phbatnzjqWaT7rhSsT14YjnQMn7O9vq3p
         PKIH5DhHlZBNgM5C4o8jN+fgimbTgD24yhNWCwaqPz73pQpybAw4eilxJVHb3olhX1WO
         omS4ajHvmwqQpxRMPVOulzKsyobjHUSGxBDf1Ud6oaI+7wMg7Pz9H/38qdZ020rmXH3v
         h7LpU10czjzx98sBxyelkCytbFsagQQ76PW2aYQ+fD2h0RxOUYpKpkuohXXZYV398YFr
         fHfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oOf7Fp99WlG1zxqj6m9zbocSesh85ci8ebttqW54oNw=;
        b=B2/gAbs3u2hT6whE+POl8cN5ZyZiY8M0UrvJU19YXuh13sMF0XRXsNE+9tFup6wY08
         4SCEEJ9yjxGAEeu5YbkKX9IEM3S7/jIk2Z6pY6lg2EBWcpq+RtkXcPCyC7cPs/8RwfK+
         GzdyoqHCp+c3Sl5lwu0czelXX6eHlkXr0H6FSwwPUv4lfUmn3VctYqvJJ8/p2pm+f6CK
         KpblWs1LqW9GNAYHhvSN4WUxo9KJTvJK+DPjipjly/rrQzc7B10hLXtkkjH7O3g3H3Lx
         RM5dv6NNx3y6D9rBN8T4oKawPG0+beZ6ybM48Lyk2Pbv00Mnz4ioJFDYOXeSNN6NycU3
         1Aew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oOf7Fp99WlG1zxqj6m9zbocSesh85ci8ebttqW54oNw=;
        b=Y6jZEr86xGU0NIW2oiQ6SPUzvJDEKzkqJBqwJZnHw4jR/i1efT/qXI4u92ZoxqreCX
         2bjG9dCqGT1MUbGhpSNEEBJlAPGFhYz6VU6JlbtERqgTo0L0TsbIcfdV9HUvOzSQ0xbu
         Dp0KEkzz6FdkDTUiSm6jit6gEOobR7O6JuJAQ3Nd8AimJ4RDmHpA/wqN5bexQBekOZTV
         jU+l9IOII1zwFsBe1T2BY3f4w+iGwrseAj3RdL1QV6lZuri1hyXBx2FM0AxOjBp7g8RX
         w6MDuwCcUlW4QXLTIZBQgHaqTWp+ZuyDvCvfjbBNcgMiJReHTkQCKMVuYv4O4XiFMc2h
         MJvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UnuX3QEV8y8XEyETgUyd0fzd0WaORnsCr+6P4tKa9MXffozgF
	D+B9B4YgHKcaGLyzMQl52eU=
X-Google-Smtp-Source: ABdhPJyir5bFnDlpthexT48ApiVsQgHvCLl3dKNDVKkVSD0Tli6UD4v1R0+7knIhkR7BmKwQwTxn3g==
X-Received: by 2002:a9d:67c2:: with SMTP id c2mr4062210otn.190.1611953712761;
        Fri, 29 Jan 2021 12:55:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4694:: with SMTP id k20ls2381537oic.0.gmail; Fri, 29 Jan
 2021 12:55:12 -0800 (PST)
X-Received: by 2002:aca:ac92:: with SMTP id v140mr3764985oie.100.1611953712322;
        Fri, 29 Jan 2021 12:55:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611953712; cv=none;
        d=google.com; s=arc-20160816;
        b=cuU49bW3Cm7iTdDA50DAMgsnZzXg4g0LJam2ynMosM6xTv35QdlnQpdHhonNTqJYjU
         G9x6KlPHhRB/tkCt2UpAxL/btHIGsyv7IAq2sw+GshlXa0OnaSyFF6W3lkZ+lvrOyevf
         JUvg/9ED44WFFtKmiQqGEv2kzicRnilBuwKIUgdOBD6BF3KU8BbKC4jJnUfwrDv66WWk
         /VWhpOsUVLphsH0O96JvAhFdiEZz7exQbjyGbSbRj1MRSk6jTMl7j7zE8in2+J5N9SUN
         U0CXJv6WHehUN0OP+rgQEnetHT/3rdu3YJeVmEXqi6d3WxULT6C/39EsWDLiXrwcrXsZ
         tMqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RAB/7SMuviSugZyMHckwTYODLUsFbrHRwIWe2DaL/Ck=;
        b=qwNhn7knke5D0JiT++B6vjBWgWkVDfAXIqkfY6FSb5mZutEfgFacWgm0n1Q8hOX6ah
         ZQjCoXYAeK+BM2Zwe/1blOPzML/Ghap5j741T0Dk+n5myxNUh3VbcnoJ/tmw2qlv6cxM
         sDih24GMKqcIrABg71+xxWvO11EDoMZQITop/HY/et/1z2zzM2c5azouBkU7aO39jxtK
         /Kxds7VipKK9wEt4SNUCGFPtlu022FKGXFGFBfqsU6V+UBnPUDWEh2nd7l4j4gFVXA3h
         0x/XatbJpvUbydtipxvezhDIiqMv+ryntsgTHHFyEQApiLZ7M43kVhzBt8xjgdarDyrs
         wfJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DleAjbNi;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id t22si593458otr.0.2021.01.29.12.55.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 12:55:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id x21so10714087iog.10
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 12:55:12 -0800 (PST)
X-Received: by 2002:a05:6638:2694:: with SMTP id o20mr5269898jat.132.1611953711975;
 Fri, 29 Jan 2021 12:55:11 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
In-Reply-To: <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 29 Jan 2021 21:54:58 +0100
Message-ID: <CA+icZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6=_5aqPcRTfX2W8Y-+Q@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DleAjbNi;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jan 29, 2021 at 9:48 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jan 29, 2021 at 12:41 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 20141cd9319e..bed8b3b180b8 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -832,8 +832,20 @@ endif
> > >
> > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> > >  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> > >
> > > +# If using clang without the integrated assembler, we need to explicitly tell
> > > +# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
> > > +# detect whether the version of GAS supports DWARF v5.
> > > +ifdef CONFIG_CC_IS_CLANG
> > > +ifneq ($(LLVM_IAS),1)
> > > +ifeq ($(dwarf-version-y),5)
> > > +DEBUG_CFLAGS   += -Wa,-gdwarf-5
> >
> > I noticed double "-g -gdwarf-5 -g -gdwarf-5" (a different issue) and
> > that's why I looked again into the top-level Makefile.
>
> That's...unexpected.  I don't see where that could be coming from.
> Can you tell me please what is the precise command line invocation of
> make and which source file you observed this on so that I can
> reproduce?
>

That's everywhere...

$ zstdgrep --color '\-g -gdwarf-5 -g -gdwarf-5'
build-log_5.11.0-rc5-8-amd64-clang12-lto.txt.zst
| wc -l
29529

> > Should this be...?
> >
> > KBUILD_AFLAGS += -Wa,-gdwarf-5
>
> No; under the set of conditions Clang is compiling .c to .S with DWARF
> v5 assembler directives. GAS will choke unless told -gdwarf-5 via
> -Wa,-gdwarf-5 for .c source files, hence it is a C flag, not an A
> flag. A flags are for .S assembler sources, not .c sources.
>

You are right. I mixed again C and A flags.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6%3D_5aqPcRTfX2W8Y-%2BQ%40mail.gmail.com.
