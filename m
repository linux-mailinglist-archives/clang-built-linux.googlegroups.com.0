Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUEU2KAAMGQEZDSVTXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 057B2308FEE
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:21:05 +0100 (CET)
Received: by mail-vs1-xe38.google.com with SMTP id s189sf1385250vsb.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:21:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611958864; cv=pass;
        d=google.com; s=arc-20160816;
        b=wKZXaQoRoUhDCgbbai0rxKq/1g1rFMRrB4E7dRXDDxr+Hu+tR92F0LDpNgo6pVj7gG
         5NblTFtNcSbrDa0tTglXzvnQS5oWaRJD/+q+8F8+LwPGzYKXZhk1MTH1IHnX3bhsX/aU
         3v6nknWi3RuNCBYWjC/SeunPuWZ2PgzGdaEyKk4m4XsCL/3z3MoTDLzQ87cElWud3Y6D
         r3QRai2IP0ajpzAYbQMJJTJHSJ0B53Gx1JrQbg7riYi0cvMBEl+RDFhJ02l2AYsVCwls
         +EhsxWdtx3HlA6Ru+uQH2t4nWfCbEcIwDRDr3OZiet5yHKOpK0bv0fnySyjG0sb6dB8v
         Ix1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cooYK5VNgQFU8u7NN16RbOjHW+zQZyfA0IXtf4kINpw=;
        b=tlSKmuAM9CxDztNP90vy0wjzmudSYgxit57j2nFMComXM4R9yg22hYTa+MrEPRuDjh
         ujRsCx/rGIn3Jz1AssC+Xnw37Jjrto92qcepeWGO7is5nLp6wOSomoKnaGIKsQDF9T57
         3sk6zYlFkPTXNCDcJRelFgj3RWZhwkIDlShyreB+D7sq4hf95GDViNnrA8a6Cay9hfrg
         t6W8AGkfnNugNJtRAnksQFHJiu7ROskfnXmc507bBJiJUZKslNaSZ6Vhisdd/uUIAcOL
         EXH6pjSY6Wan2m8kz6Q5lbHeCNX7eZhSH56VpZkbP0IJIEkHpqlfBO2fcQTIIppiizPg
         Ro3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g6nU+Qb5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cooYK5VNgQFU8u7NN16RbOjHW+zQZyfA0IXtf4kINpw=;
        b=RZPuCfUappceQ6wGTgHwfXhZ8es+ePKdt8A2jYF3Gs4K+Ft1e1yW4l7NQBUtHTnF1A
         rQDHRseVagxlQubBWbVHvsX0kTDVYb9rGK/dMtAsqUHm09HF59LEr5/Wk9wrch8d1WaK
         n3tdTqgv+2ZXdh2Vc8uKZCuo0NAIA5X5c4wk5HRRK99f444S7m2hPTWmVsrKHJKmzSiC
         z3k1bTEAyEBX82JZVPYG9e4ajsilouAifWCmCrufdvf1nP5T0/GNxSyJdRUb+lYUzvhQ
         5HCfFrMsiCdndgHSEHWxtqx20LQ2WAryN47LB2tQtz/mtnHw55Ni0eJRC1TItI0MJeOd
         3vFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cooYK5VNgQFU8u7NN16RbOjHW+zQZyfA0IXtf4kINpw=;
        b=sTyVTp4qC58JLrBZvDuwINNxfLR2/XPhGGy8wgFbRZQYbkzTBVHtvrRqVP6DZ6zl+E
         5CnPDUsIBd0q+Ady6OlXKJWLUS8bULimd9ACGRyUefbRJr0L9xkeKU2lWTmX0mvZqS9C
         WUnLPvDuPsaorcX1meGXjA24bIzB2PU9smh/PBnfB5SD1JDxkhaS4nQrHyzaTPf2/6LJ
         TyU2H1YWy9XjuE90/VBFwIePOX8rrnQ5hhhPLdZfOC+v0KsuS4FqfqL4PeTYGJPFDlRp
         UQsDdK7RVgVzsyxyP0oPjOR0f1yjLevO23xqCcuO7PT7QH5cOkYirLf8TM0Pvv1QPM33
         3P4g==
X-Gm-Message-State: AOAM531T/FJ5WV9h71ZlwJSXZMq3OgWmS0hPl0mOdrh6EZ2+tmWPhHh/
	BpLzkNj1/aFyQX15WixA7yc=
X-Google-Smtp-Source: ABdhPJwKpgU6CF0iVMzF7aKMInjaRvq5rty4QVa0n4hlLh/TIvdcAZmPJvq7vSkhEwkSRN0DEo0FXw==
X-Received: by 2002:ab0:7584:: with SMTP id q4mr4401656uap.35.1611958864094;
        Fri, 29 Jan 2021 14:21:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9f42:: with SMTP id i63ls575438vke.8.gmail; Fri, 29 Jan
 2021 14:21:03 -0800 (PST)
X-Received: by 2002:a1f:a283:: with SMTP id l125mr4335910vke.19.1611958863696;
        Fri, 29 Jan 2021 14:21:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611958863; cv=none;
        d=google.com; s=arc-20160816;
        b=0GQuNJC23tn2+Ymqkp0Fyy21cVT1c8K3gvRJz4VTwKY5nyYmpJ5Ss6LZS8HFVkfv34
         ADxVkejXBGsURamCYu//kOlIG/euSnzenytImxS2SMahUEj46UDj+XQlU8c/afRZvvK+
         IbMDi4ZKx6DvzReU/5u6KH3KMdnzyQVeDzNMU6QPni6kWVfTpfF6Yraa0MFAkoQX1zzk
         STXarh+85NOPNjgyTES6n0SwwpE9v4BPqqhJlftWZqzv+YiwWzFD/yE2xzyGN76rp06B
         XMA7AsLuJQygjUNuveZCFN8Rv3gzXX1ek7do4botgKDqztgUwp295FkGJEJdtwMLQB2w
         nbgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Waa2kugmLjDllXM/NpJiCr0cF57NhaJCQRM2OUEVOlc=;
        b=xuSLC/tNyZypUN+W1WoysG3Oqi0fRB6pLlskl50VLO9v+02yKhsXG4cJC9shKGmPFC
         OIZtUTZrILqGn+wMnxC1F7AZrKIX56SPpSGESH+2u4Udb7PLBbFePuAm0hTU4bFckXwb
         cFU7VBOWGROUDlzROEIQKS52rPJauaXK3gblI3zx64jhqEoBftWZIUcNReqBwrSpWfEi
         H1ku9IB1ofxHwH7DfCUIFOAr0K7V9ACD6qOxAVK3tKMYDcBojZ9Daysg8ZBmbvyvskPt
         jozibeCWo+QL+sv5X3FYPDeIEpMn8umdLHpIMTkhB8+oOi3TphzDKWUMNsm0eSUzxIi4
         o0Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=g6nU+Qb5;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id q11si796043ual.1.2021.01.29.14.21.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:21:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id e9so6114121plh.3
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:21:03 -0800 (PST)
X-Received: by 2002:a17:90a:8b82:: with SMTP id z2mr6434050pjn.25.1611958862659;
 Fri, 29 Jan 2021 14:21:02 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <CA+icZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6=_5aqPcRTfX2W8Y-+Q@mail.gmail.com>
 <CAKwvOd=mHvEtto37rzFMfsFYe2e-Cp2MAiyRYxHWPdc-HbT8EA@mail.gmail.com>
 <CA+icZUWxK9fdV8PNGqbQrOFmSZ2Ts4nNqfVMMNUh5u79Ld7hjA@mail.gmail.com>
 <CA+icZUUo6URpxHh6_Tppv9_Z1dyhGDB2OqSCY3yRw72aA0EbMQ@mail.gmail.com>
 <CAKwvOdmWx0reabY-S3nXfTZuhs-_SP7pbb0uHyGeaNSQnm8eRQ@mail.gmail.com> <CA+icZUWsncyKvxPZ5g=a3ssWy=cYahsU6hprM3n=jFUmnjPC6w@mail.gmail.com>
In-Reply-To: <CA+icZUWsncyKvxPZ5g=a3ssWy=cYahsU6hprM3n=jFUmnjPC6w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 14:20:51 -0800
Message-ID: <CAKwvOdk4kG-_c3inNj9ry_xUU9SQE-2AqQp40YL_V=6SHU6E=Q@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=g6nU+Qb5;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::636
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

On Fri, Jan 29, 2021 at 2:11 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 29, 2021 at 11:09 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 1:20 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 10:13 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > On Fri, Jan 29, 2021 at 10:09 PM Nick Desaulniers
> > > > <ndesaulniers@google.com> wrote:
> > > > >
> > > > > On Fri, Jan 29, 2021 at 12:55 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > >
> > > > > > On Fri, Jan 29, 2021 at 9:48 PM Nick Desaulniers
> > > > > > <ndesaulniers@google.com> wrote:
> > > > > > >
> > > > > > > On Fri, Jan 29, 2021 at 12:41 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > > >
> > > > > > > > On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
> > > > > > > > <ndesaulniers@google.com> wrote:
> > > > > > > > >
> > > > > > > > > diff --git a/Makefile b/Makefile
> > > > > > > > > index 20141cd9319e..bed8b3b180b8 100644
> > > > > > > > > --- a/Makefile
> > > > > > > > > +++ b/Makefile
> > > > > > > > > @@ -832,8 +832,20 @@ endif
> > > > > > > > >
> > > > > > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > > > > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > > > > > > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> > > > > > > > >  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> > > > > > > > >
> > > > > > > > > +# If using clang without the integrated assembler, we need to explicitly tell
> > > > > > > > > +# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
> > > > > > > > > +# detect whether the version of GAS supports DWARF v5.
> > > > > > > > > +ifdef CONFIG_CC_IS_CLANG
> > > > > > > > > +ifneq ($(LLVM_IAS),1)
> > > > > > > > > +ifeq ($(dwarf-version-y),5)
> > > > > > > > > +DEBUG_CFLAGS   += -Wa,-gdwarf-5
> > > > > > > >
> > > > > > > > I noticed double "-g -gdwarf-5 -g -gdwarf-5" (a different issue) and
> > > > > > > > that's why I looked again into the top-level Makefile.
> > > > > > >
> > > > > > > That's...unexpected.  I don't see where that could be coming from.
> > > > > > > Can you tell me please what is the precise command line invocation of
> > > > > > > make and which source file you observed this on so that I can
> > > > > > > reproduce?
> > > > > > >
> > > > > >
> > > > > > That's everywhere...
> > > > > >
> > > > > > $ zstdgrep --color '\-g -gdwarf-5 -g -gdwarf-5'
> > > > > > build-log_5.11.0-rc5-8-amd64-clang12-lto.txt.zst
> > > > > > | wc -l
> > > > > > 29529
> > > > >
> > > > > I'm not able to reproduce.
> > > > >
> > > > > $ make LLVM=1 -j72 V=1 2>&1 | grep dwarf
> > > > > ...
> > > > > clang ... -g -gdwarf-5 -Wa,-gdwarf-5 ...
> > > > > ...
> > > > >
> > > > > $ make LLVM=1 LLVM_IAS=1 -j72 V=1 2>&1 | grep dwarf
> > > > > ...
> > > > > clang ... -g -gdwarf-5 ...
> > > > > ...
> > > > >
> > > >
> > > > Hmm...
> > > >
> > > > I do not see in my current build "-Wa,-gdwarf-5" is passed with v6.
> > > >
> > > > $ grep '\-Wa,-gdwarf-5' build-log_5.11.0-rc5-10-amd64-clang12-lto-pgo.txt
> > > > [ empty ]
> > > >
> > >
> > > That's the diff v5 -> v6...
> > >
> > > There is no more a dwarf-aflag / KBUILD_AFLAGS += $(dwarf-aflag) used.
> >
> > Yep; not sure that's relevant though to duplicate flags?
> >
> > > > > Can you tell me please what is the precise command line invocation of
> > > > > make and which source file you observed this on so that I can
> > > > > reproduce?
> >
> > If you don't send me your invocation of `make`, I cannot help you.
> >
>
> /usr/bin/perf_5.10 stat make V=1 -j4 LLVM=1 LLVM_IAS=1
> PAHOLE=/opt/pahole/bin/pahole LOCALVERSION=-10-amd64-clang12
> -lto-pgo KBUILD_VERBOSE=1 KBUILD_BUILD_HOST=iniza
> KBUILD_BUILD_USER=sedat.dilek@gmail.com
> KBUILD_BUILD_TIMESTAMP=2021-01-29 bindeb-pkg
> KDEB_PKGVERSION=5.11.0~rc5-10~bullseye+dileks1

$ make LLVM=1 LLVM_IAS=1 -j72 defconfig
$ make LLVM=1 LLVM_IAS=1 -j72 menuconfig
<enable CONFIG_DEBUG_INFO and CONFIG_DEBUG_INFO_DWARF5>
$ make LLVM=1 LLVM_IAS=1 -j72 V=1 &> log.txt
$ grep '\-g -gdwarf-5 -g -gdwarf-5' log.txt | wc -l
0
$ grep '\-g -gdwarf-5' log.txt | wc -l
2517

Do have the patch applied twice, perhaps?

Is your compiler haunted, or is mine? (haha! they both are; false
dichotomy; they are one in the same).  Is zstdgrep haunted, or is GNU
grep haunted? :P
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk4kG-_c3inNj9ry_xUU9SQE-2AqQp40YL_V%3D6SHU6E%3DQ%40mail.gmail.com.
