Return-Path: <clang-built-linux+bncBDYJPJO25UGBBE7T2GAAMGQEMDF4KPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C442308F02
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:09:40 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id q3sf8648439ilv.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:09:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611954579; cv=pass;
        d=google.com; s=arc-20160816;
        b=qj0ZF9GLVYI3BkQZfcCZ+7Ur9P/jR699ep2iZHAn5VtpraAbFGw1l4s1tl1xrJJfTK
         KDswbHkssjLtEPeibL0jwMhaSJLyecMlTAJRX6mM9Lqilfe92ysZ+mw1mOspZHNXlD6h
         mtMb2Z1aePZl3tsI0ep4HN3+OYIXBvVrnPu/ihSPFrPS9SFFS/ZjVOz7eKF8SISwP/5L
         GXP55h5279DQx5ma32J/P7Mc/w4HHq2Xukrn6Adzs/4+XEzxizwqXXUgbmTwMLnz2XXV
         eeOtbbo1cjRA/ivWwe1q5AuCGkDs+j+JEkMLJSoUq+S9IC+08wIhtEpajzTbqkACg54f
         /mvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=HrHwZpXW2sJz8fd006W51nrTUmjo0KdrBv0Z4u3KdyQ=;
        b=zw/8of3S0a0oiJki6cXXAZuuxXLp83PE7+E2Zi7ewd4326A+Jg7+QMTBuSm3swR9rD
         H/JIoASQ8Sse3n2jYngnHc7tR334Y17Tcemh+Ya5vmz36Y0OsITqrZyK1efyPcevPSDB
         DiDfMZGyjueTFVo23uNc3lbjcibVigR7Dkj9nG5PLtKnioxsvltX4ayHjj1rqEMpJHN2
         uOgai3SZ75sGFeRvq7X4JYU+FUWZjbyZKC1xtkww785K5NkSygxd8xvsrhROYFi0R6je
         EvrWpwrNOOF79+2N1EJ5eh+HUsxtN7J93X9a4MloAOG0F1grUN7WsYoR67xw45ujJH4U
         Yywg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S3tklrxm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HrHwZpXW2sJz8fd006W51nrTUmjo0KdrBv0Z4u3KdyQ=;
        b=DWJCegN+21byqA0h481bGDAXclBELKqc5cM/Wtt+pFdr6G/iJJt0/UfEhK/o8h6R2B
         Z32fV1CcAZ1qdDWrZQYd2yBze6UcVUPZhBbitW0CX96IRDvbKrao77WbjxOnXGiNJABs
         EwnpCsRWZ7OPAfPbuVxmnjJ4l0uzn129GGWlZscwoHkpkHpuc+IoTGKq/XcAIAsDnHws
         jHN9byxoscDymlV4JlyQw/sO5HfIIsxQhWPo29rf06e+DoO9lU9yXoa7756/QJpTlUGG
         Bs7AOuNoky1P2pw05kGzZOLn3yX0CednZygNnvObQOKbbmXv3YxHwxuvu0UmtLHKNDIR
         IE2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HrHwZpXW2sJz8fd006W51nrTUmjo0KdrBv0Z4u3KdyQ=;
        b=MEJjqF3TQuOrrCNpJis7wwc5xiuZWuXXk3ttQCgoZpI116F4VYp5D7tzcwWHOVnKV4
         ZJ6GzExmNMqw/D4dN8d/yfXpJKq17/e/MatjZePNzaLIw3C1EejKDR+VmHa9vSCBMjtQ
         mZsWfbrkz2652TCizK3zq2V2H/OFtKz9+5F3uN5UysVoPEN/GfCESTsOQ9iv4de2kPIW
         b5nCr1YzMPInsZVNRT257OLYmW/A1b4P5mq1qKO6X1JuY6NnDdENZ1BsTQFwZDZKC0jb
         JVoDOvyOX9kPhZfmcSkoxLxkXHBYIscHfpnBNXldsegiqnghp9AZMpfJTuPtekPFsGL6
         WnBQ==
X-Gm-Message-State: AOAM533Lq0jUj9L5xOqNUvAjMM7Uyx86Z+LAJ/0O2buolJZN2DZ8SzKs
	747kRXBg2qeTn5C1+gu+CLA=
X-Google-Smtp-Source: ABdhPJzTcHBHgLBrDwkwX3LBgAr4I9QkR7TcivUdRlxws6+hdFLdis8BCkOYbSOdf6Y3R/ekOvRbHg==
X-Received: by 2002:a5d:9041:: with SMTP id v1mr4906774ioq.155.1611954579320;
        Fri, 29 Jan 2021 13:09:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1687:: with SMTP id f7ls1260107jat.11.gmail; Fri,
 29 Jan 2021 13:09:39 -0800 (PST)
X-Received: by 2002:a02:3541:: with SMTP id y1mr5897902jae.66.1611954578943;
        Fri, 29 Jan 2021 13:09:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611954578; cv=none;
        d=google.com; s=arc-20160816;
        b=GKdF08gJv8J2qG5oSBTSl0PuiUmmwTeBmCmSPmlhzEF+ZU5tnG1YoYAvtr7Gy5MRQH
         zctkWjnYnkHYflqnaCMdpdpuXnnVuqsKvEHy2KUIsgZp9odSufnJRa4Cz0o1QqyI4FPv
         SSeT1vdDMMSqAF+i2z1mUgKaEoWwCwjYa5tUtpKUPNQIy1ylhzzwtIuNBlx7HUbV7mre
         4s21L9NVns0VSuzK22QanCFzWe6f16EFq4xXAXxU3FRhZX4smoMAU3c3Lzw9FRLrXwMf
         h0RKzoLSsvh208W8xKkRzCFOTBxyLL6P4Jes1FnLqx0bUaeLDZDF27n2GI5u3MqBen8P
         xXRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=RYeBCM1n6l4ocBSebSg/m7g9I7gGkp0ycMnAlPc92B8=;
        b=nnquBy5THi59UUMCmbPO+lftDl+9vmv7i+7BiJurf1HfinUI3+jl6MCcVagKxOWrYl
         XiKIb2RuKzjD0tWd8M8aa0RQjt9HgfHfa4i497JX1DiOGBXhKyUJ3ST4qyhg+Ji3wAc6
         Wsh9uRSMhZC8N8bv1+me1AipPfCGfO7e+7Hpsppv5TgXFCGnz2G6Tbb/oO8gceoxf66D
         S5xahSF42fKKj8aqn2bxCQ0SbinNAomLZvOiD6sQXhkzPqHfeKELaGZShbl9k6hJRVHo
         muIHuxlnF0Ke/Ypp2GNryMbT254y4xa6Jm5iZJBalejuUO6n+TspbnY58H/AbRTc4Mrg
         e82g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=S3tklrxm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id j21si570157ilg.5.2021.01.29.13.09.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:09:38 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id q131so6995560pfq.10
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 13:09:38 -0800 (PST)
X-Received: by 2002:a63:7e10:: with SMTP id z16mr6507613pgc.263.1611954578268;
 Fri, 29 Jan 2021 13:09:38 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com> <CA+icZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6=_5aqPcRTfX2W8Y-+Q@mail.gmail.com>
In-Reply-To: <CA+icZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6=_5aqPcRTfX2W8Y-+Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 13:09:27 -0800
Message-ID: <CAKwvOd=mHvEtto37rzFMfsFYe2e-Cp2MAiyRYxHWPdc-HbT8EA@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=S3tklrxm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431
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

On Fri, Jan 29, 2021 at 12:55 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 29, 2021 at 9:48 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 12:41 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > diff --git a/Makefile b/Makefile
> > > > index 20141cd9319e..bed8b3b180b8 100644
> > > > --- a/Makefile
> > > > +++ b/Makefile
> > > > @@ -832,8 +832,20 @@ endif
> > > >
> > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> > > >  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> > > >
> > > > +# If using clang without the integrated assembler, we need to explicitly tell
> > > > +# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
> > > > +# detect whether the version of GAS supports DWARF v5.
> > > > +ifdef CONFIG_CC_IS_CLANG
> > > > +ifneq ($(LLVM_IAS),1)
> > > > +ifeq ($(dwarf-version-y),5)
> > > > +DEBUG_CFLAGS   += -Wa,-gdwarf-5
> > >
> > > I noticed double "-g -gdwarf-5 -g -gdwarf-5" (a different issue) and
> > > that's why I looked again into the top-level Makefile.
> >
> > That's...unexpected.  I don't see where that could be coming from.
> > Can you tell me please what is the precise command line invocation of
> > make and which source file you observed this on so that I can
> > reproduce?
> >
>
> That's everywhere...
>
> $ zstdgrep --color '\-g -gdwarf-5 -g -gdwarf-5'
> build-log_5.11.0-rc5-8-amd64-clang12-lto.txt.zst
> | wc -l
> 29529

I'm not able to reproduce.

$ make LLVM=1 -j72 V=1 2>&1 | grep dwarf
...
clang ... -g -gdwarf-5 -Wa,-gdwarf-5 ...
...

$ make LLVM=1 LLVM_IAS=1 -j72 V=1 2>&1 | grep dwarf
...
clang ... -g -gdwarf-5 ...
...

Can you tell me please what is the precise command line invocation of
make and which source file you observed this on so that I can
reproduce?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DmHvEtto37rzFMfsFYe2e-Cp2MAiyRYxHWPdc-HbT8EA%40mail.gmail.com.
