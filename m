Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBQGF5SAAMGQE75XA7KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 368A230E5FF
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 23:25:06 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id l12sf584855otq.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 14:25:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612391105; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZAGrLRGzQ0sdgJAmgS6DiVqti33g80tkQbxOFeyoUgCH10Jn8KB2FbXOR5ZR8mIwGZ
         oqsf6oErqVxemNUVj8ZLRSocfH90oiT15BdQLJx1mO2am3s/1xXjDagx/4CTfg04Lx7d
         S4GKYgRCw2qPDDeI2uPM9jMvgMCot55uIFbCkUqFspBrP2MQAFWqTFcVukz3+59Pk71s
         eGFNfznlw9cfEd5IRMd2ZtwgCMYnAiXm+CVUNjnok4IW3S7ONfFK6WjLWqltuFmyaxMh
         jyHv4yMm0itdObEyYtRfuxrvDOt5nI2f0wVUlaA3LF6Qh3l9IVUvrrHTurcNRogJoeHZ
         RX+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=HLfqUIvMb1o0mEXZJv/W2B+VlDC14/368XeiZPlTqSQ=;
        b=ZcfJuaBmfKz+GnaJ1nQofVa+yaGETj8JKQHiNWASHrui6OHW3wM8zlWRm89bAGY4dd
         UVyc+1FiGoNuUo078f/qsrsMZya4vidZDQTo88OVI3VNgrUt8yax21fTxru9Qv37pgpL
         hQxALrM7lubtAwpxPxBFMwYevn41Vvty15T0ixaFhISnfqJOiLT0SryIQ7xsuz/BbIBa
         8RkARALLvIzyS7bCEF1otCLhL/8co6JpHmfbvJOk5YP3q1UisfMOkGRlIZJ5XZSpHbuh
         WOLGPlyfsG/1QaQfAVax7r//0DDmk/AWPD0lyixHDmUDnP2TFFkLJHGFJR87mtW9hNBu
         yKJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ew1HoxST;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HLfqUIvMb1o0mEXZJv/W2B+VlDC14/368XeiZPlTqSQ=;
        b=IsfexziZ9RKi9YKzthKDXlxkHF0THRZBnxaX8Ev2iFJ9pDhy36NjK6o1hPnC6IlRfV
         Jct2XT8IpqrZ9Wc8E8+Lo+73Kv+VxNYLKDidkRBY89rOpSn3DYI9o8HiuJHWIkkwupjh
         MBgYZJyl9Wio2bxPRDBefEL5/nbk9aJnvOEA0btRMj9yM64vmz6LRjK1k48AqrJpdIKn
         hAcdkbbP8PcyUVwC2B/ObDsXspLkl/dgOZZ56+Su7F6+5bv6bWWuSHtUBFeqMzCuc10V
         q/jNxJLQ/g1iyCnr54gQ73kNxJ+oOsZ84cwjYgt4Q5jiJLEWhJWNRKLzKzDI68dCEiLx
         NGCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HLfqUIvMb1o0mEXZJv/W2B+VlDC14/368XeiZPlTqSQ=;
        b=cR7M28ZroqvV21CQLO7UAqzNNwobOmWhzf/J9jv5s2ZrYn+GhbGTmM/6utI9RLTxEJ
         xgPx2Lal9+EfPEBCeZmwjH3w1iXKXSm7wVw4lNM0ShCuc9wv5qBQ2804pcNO8xZvwizT
         0s1cHmXIPREfrRKgD86aLkD1uJ2UHYkHOnGrt4gM0DzexcbNM9tzKhFfBlCIuc9AyBJL
         jCOLxuV79sv6XYug9lA83y11Q+bq/1pv0lZ0vc5I71w02ip+Ea07uQ63FWlMES7gHycl
         NbyPRzxxPOWiW98aiygHFNy2XyRZc3577Ggb109iOn555pfe2CFF2dWSMDORm0UniLgK
         7MTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HIi1IsXoQrLeDGmFHQizfF3Ksn41M1Qf/B9C4TY4Rr69Gf7Aq
	9vpUpui3FL5JOhus3ulL+yQ=
X-Google-Smtp-Source: ABdhPJxVyqW54RJHwkazY3JAuBinjru+K3x3sdoc00LFbYgdfJz01SgC0YjhQw6Sloyof50kf+WRQw==
X-Received: by 2002:a9d:2046:: with SMTP id n64mr3633311ota.38.1612391105038;
        Wed, 03 Feb 2021 14:25:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e31:: with SMTP id t17ls862438otr.3.gmail; Wed, 03
 Feb 2021 14:25:04 -0800 (PST)
X-Received: by 2002:a9d:bd1:: with SMTP id 75mr3496789oth.21.1612391104655;
        Wed, 03 Feb 2021 14:25:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612391104; cv=none;
        d=google.com; s=arc-20160816;
        b=P/RQH0sSpQ7By/taAagkYv7pXYVVC5ToO4x4KbYd9bnB8iDozVFlXeTE/gyFWzeWOu
         CqngWjrU1xiXcl1K3u3XuDscw/tDT2XrlZc50XJry3Sg6szkaONloakkpwtZaX1JU/lv
         ezel8mCM5JeoPeyv3jOnwyN+s0BD52T9uMcqRe47b5qriVkykQKAE6kU8OpSoV5J+ZfT
         7UtUauraRW5BorH3okuSLbHSAsj63yX2oBx64hW0sItWhbmg/U8R6x7FFBg+3HWHeGIs
         +Hz6k0FtriJUGJ6na+XhloNuLEBUar4dAAKYgqCLR5m/RR5tP2zRGo/gRPPF6aCT3WU9
         8yPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=7StsCQYSqe5ypDFwjKpWmsgvnkeOuX5ZUBEjM+qdas0=;
        b=lDcpC46IxfrUFy/IvErdxI/4Qbbl9/lyfThh62SEsGddLUMTyEmlGNc8y4iIMER5KJ
         vc3HRiYRGtIorwgHP4dgoNyFFGjz75HoHnVwKzYDUbj1/oa+I3hSV+I/BoMWDirC+nMQ
         HshP8XenUDBVZz+imLkOxi+vYzDVReOCWi8PomLOZ2Wl7pFMNCsc2IvmitMpOktJMmo/
         FgWdfLKitkKN2FzuI3h1wvRiwoORKmKICEV3sY0g9ft7PrtJsGzgOpAulsMrT48f/dfC
         hQ6ZJc5hB345cSPIihmqiQVW55K8p9dvK0/pfuxbPZC0MLPoK0VDb3TGVXG/b1K3xqgk
         UBpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ew1HoxST;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id e184si323731oif.0.2021.02.03.14.25.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 14:25:04 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 113MOW9M021846
	for <clang-built-linux@googlegroups.com>; Thu, 4 Feb 2021 07:24:32 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 113MOW9M021846
X-Nifty-SrcIP: [209.85.214.182]
Received: by mail-pl1-f182.google.com with SMTP id e12so653250pls.4
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 14:24:32 -0800 (PST)
X-Received: by 2002:a17:903:248e:b029:de:b329:ffaa with SMTP id
 p14-20020a170903248eb02900deb329ffaamr5138511plw.71.1612391071565; Wed, 03
 Feb 2021 14:24:31 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com> <20210130015222.GC2709570@localhost>
In-Reply-To: <20210130015222.GC2709570@localhost>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 4 Feb 2021 07:23:54 +0900
X-Gmail-Original-Message-ID: <CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi=7OOg@mail.gmail.com>
Message-ID: <CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi=7OOg@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
        Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ew1HoxST;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Jan 30, 2021 at 10:52 AM Nathan Chancellor <nathan@kernel.org> wrot=
e:
>
> On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
> > the default. Does so in a way that's forward compatible with existing
> > configs, and makes adding future versions more straightforward.
> >
> > GCC since ~4.8 has defaulted to this DWARF version implicitly.
> >
> > Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> > Suggested-by: Fangrui Song <maskray@google.com>
> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> One comment below:
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> > ---
> >  Makefile          |  5 ++---
> >  lib/Kconfig.debug | 16 +++++++++++-----
> >  2 files changed, 13 insertions(+), 8 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 95ab9856f357..d2b4980807e0 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -830,9 +830,8 @@ ifneq ($(LLVM_IAS),1)
> >  KBUILD_AFLAGS        +=3D -Wa,-gdwarf-2
>
> It is probably worth a comment somewhere that assembly files will still
> have DWARF v2.

I agree.
Please noting the reason will be helpful.

Could you summarize Jakub's comment in short?
https://patchwork.kernel.org/project/linux-kbuild/patch/20201022012106.1875=
129-1-ndesaulniers@google.com/#23727667






One more question.


Can we remove -g option like follows?


 ifdef CONFIG_DEBUG_INFO_SPLIT
 DEBUG_CFLAGS   +=3D -gsplit-dwarf
-else
-DEBUG_CFLAGS   +=3D -g
 endif





In the current mainline code,
-g is the only debug option
if CONFIG_DEBUG_INFO_DWARF4 is disabled.


The GCC manual says:
https://gcc.gnu.org/onlinedocs/gcc-10.2.0/gcc/Debugging-Options.html#Debugg=
ing-Options


-g

    Produce debugging information in the operating system=E2=80=99s
    native format (stabs, COFF, XCOFF, or DWARF).
    GDB can work with this debugging information.


Of course, we expect the -g option will produce
the debug info in the DWARF format.





With this patch set applied, it is very explicit.

Only the format type, but also the version.

The compiler will be given either
-gdwarf-4 or -gdwarf-5,
making the -g option redundant, I think.









>
> >  endif
> >
> > -ifdef CONFIG_DEBUG_INFO_DWARF4
> > -DEBUG_CFLAGS +=3D -gdwarf-4
> > -endif
> > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) :=3D 4
> > +DEBUG_CFLAGS +=3D -gdwarf-$(dwarf-version-y)
> >
> >  ifdef CONFIG_DEBUG_INFO_REDUCED
> >  DEBUG_CFLAGS +=3D $(call cc-option, -femit-struct-debug-baseonly) \
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index e906ea906cb7..94c1a7ed6306 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -256,13 +256,19 @@ config DEBUG_INFO_SPLIT
> >         to know about the .dwo files and include them.
> >         Incompatible with older versions of ccache.
> >
> > +choice
> > +     prompt "DWARF version"
> > +     help
> > +       Which version of DWARF debug info to emit.
> > +
> >  config DEBUG_INFO_DWARF4
> > -     bool "Generate dwarf4 debuginfo"
> > +     bool "Generate DWARF Version 4 debuginfo"
> >       help
> > -       Generate dwarf4 debug info. This requires recent versions
> > -       of gcc and gdb. It makes the debug information larger.
> > -       But it significantly improves the success of resolving
> > -       variables in gdb on optimized code.
> > +       Generate DWARF v4 debug info. This requires gcc 4.5+ and gdb 7.=
0+.
> > +       It makes the debug information larger, but it significantly
> > +       improves the success of resolving variables in gdb on optimized=
 code.
> > +
> > +endchoice # "DWARF version"
> >
> >  config DEBUG_INFO_BTF
> >       bool "Generate BTF typeinfo"
> > --
> > 2.30.0.365.g02bc693789-goog
> >



--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNARfu-wqW9hfnoeeahiNPbwt4xhoWdxXtK8qjVfEi%3D7OOg%40m=
ail.gmail.com.
