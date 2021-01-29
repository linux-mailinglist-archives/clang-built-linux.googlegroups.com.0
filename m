Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7UV2KAAMGQEANET3AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2105A309003
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:23:59 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id 4sf4956151ooc.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:23:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611959038; cv=pass;
        d=google.com; s=arc-20160816;
        b=UsPjcTL9tdzsFhqg3jbxt1iCWGjnrWCL7WuT4hp6ZThbILWsE0Y3qN0cy6Zf1aVgo1
         +2IPyOPXuCpZknQ03lirZnUjJL8Pt8FW7yQEvZLy9yiSQfoNAeODP+ZhAcnJFsRTqEyW
         bp7u7+HpjnVahWh4r8P8F3LNW/0OHWAiD20YjJYnzDBCn+vmW30I6/pvN+JSYCqJePPq
         1mJJpmohRUw8rRteBs2sXJDl8SmaP+P/qdFCEQSoVOODZh8wPC3t8gnYkf0dVy7QAtB2
         DD0x+8RTEpCYGt+A9N05i76W/gEq61Hn/zF6zHJMdLWUw8qv1/A8qCugdk7oSfkQ08is
         Y5lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=c4BQgHRtYTMXLf2BY0oQW25+IXSj9XbYS6SC988F2jU=;
        b=C9IdITEYeWHpwe+mvbTm3jZ0rHMu2K2IYaRzgryGvUWSYqftbVVqk3aZKRi9dFxcB3
         YzxsA/86dxFQ+AcxMh5WiIDVS8x4EMC5GGeRcT+lQMX248SWPNyWaRB0dhYkPQU45mZ7
         a320e/5Yx/f7edbhu76h4dyzoKj63/7yLyBnF8beo06qnVQ4rn+wI2d0B0HxBxQKK/6C
         I3u9BrmD0+Ki6fCBpZ3AWx4tKMgiaJezsJnHBdo2S2pDjxa5u2vP9U8NW2pLYJwfKE0n
         UWoH1gRLT9ePhiTOvYPoig3dugHq7ffuOonSef892Ow0R0NNdMwcedDtFu9HOe858xAp
         qU+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EjnZUgc6;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c4BQgHRtYTMXLf2BY0oQW25+IXSj9XbYS6SC988F2jU=;
        b=X8HHnDo6nHzNXmGztC5rjSq9zzz5n0PrF6+LUZz/c8nNiNTpVlA08F99sIkBWJSIAh
         qMiixatFRfNcrHxY+Fsa4FxY9eich6lLTZNiJQ/elNMaHDQvJwbAscMG2pk8FADoyNOs
         9tqDwLYZAAEC8zB1hkP3FwimsLPDFCTydw0/Xi2pwAzNYRZvMcJKW4HJwHzonJwcOX7a
         lFs9+9foq0+UaQxaZhnwcScqMD0Q7J/tjrl9rxCZrDdjSdnwZwBAYq6ZTZECNA/MVsgX
         N2anhlfPSh3eIxVy9Vj7XRM+S/S5iEizLAdzg02zR9slFCGGqUywNVoqfw2THZCQKIAO
         e54Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c4BQgHRtYTMXLf2BY0oQW25+IXSj9XbYS6SC988F2jU=;
        b=hrdeM0MDo/dfrOwVdSt6DIsRYsSHiqwtCN5bjzQYKOqh+uHMG25i9L6ioiJfzqEpCu
         vbXGyzohJqniF8suxdiZiXOAvaz89wVBZ/nY9S8XINfUfyO8r8teEd0F+VPyO98NEh69
         JMrPq64Fcl2Dxy432WvH8KB4u4z1+XWJhkYLm10dWzJ1XXcNhOGyKCXLqTAQb3zS5Fjp
         uyDpU2m6AkUhXoY3bNQYRRqWmbgkd0zLM4+f/tdr1yazA8zx/Zox2ebR/Gi9TebXN2dX
         2VgBYJCPhJX8QLfyFF/ywfJrIEayk8gTKwx1KyJCQy7ScS+qNswZQMkPxgXjk4lz10D7
         XNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c4BQgHRtYTMXLf2BY0oQW25+IXSj9XbYS6SC988F2jU=;
        b=JZs8DQF1IfwOS+VwNfhxOspoIsOpb/ZPeQLtBOOt0wjfPvsNPFkO1Oqm6uYg9qVE2K
         EpOlkvOJYX4Z1mMuve1q7RdoXLDhG6EeFcqhu/EgCRkj9G5T1opZMJbJigLJXsSuhX7z
         Bv/+HcSIzIW/9A6QLMRZ6KhIQs4lIstqF5Af5hUhX40KO3dixkTwal+J/UqhlU2MWJWA
         pgvoDm/f1iWDVM8J5UiNYCPhPsOhksZxR0adaDpkaUBzA8omMBRWu77T17z8gXTZ4EFx
         c0G1MRn53k4+muNhFfouvWAtSDcBd639xzyIK8M8RroX5QAsUgNRkmSX4/JFldRvl8C4
         xCjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aXr6QaKLpwNrs1XcjlF8T60lNEIGVy1T15CJhOEQ9R/86Zqsg
	0DTQ2Rdd1FhaNGtFhY27tZg=
X-Google-Smtp-Source: ABdhPJwF7bB1P3RgGv1p5FDE7JwZsV48lGIim1B8Z++Ds0WDYSQxhTO3tlbUaAy39ZTf/fXNK+xu/A==
X-Received: by 2002:a54:458d:: with SMTP id z13mr3881648oib.45.1611959038184;
        Fri, 29 Jan 2021 14:23:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e31:: with SMTP id t17ls659547otr.3.gmail; Fri, 29
 Jan 2021 14:23:57 -0800 (PST)
X-Received: by 2002:a05:6830:1c38:: with SMTP id f24mr4307153ote.0.1611959037802;
        Fri, 29 Jan 2021 14:23:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611959037; cv=none;
        d=google.com; s=arc-20160816;
        b=R6QClS1CZoWl6Bb7kLJrcOAH4czTXZ9QyfG8UUQs15T8rLHRWGt+JY4uz5kcq4v4JD
         yjtNnbeXGtx9qoXvBp4yvyiHn3smg1jqm9iNq9Ip2FNB4onYjeWf6hZJru5ZQpitAknb
         6a3XvAo38o5vYJy3KE6TNSvuyHH91A3B6PO7XJkX0MZcmuSQLqDsl3TmvRFw0mX/+lrH
         HGKjBVvknuOUtRlN7zs/bBDnU2Qx9YFI1HcuJUDNsp4ZkRCAgAOpH4QYJFgvt3oX/LWR
         nAjA9jlPSydk3b9OmVYhi3c5Fv2asgpeJyX/MqGp2QVOBSBIQq933xmSxEemf42H127G
         11Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3fPW1TUgX2/1fVYL/M0nnkRdL6ejuKJqJV1Pkxb+xdw=;
        b=jN4fm2aGL6w5NKBE2pT7zmPt8ho+06btNKvvor/JYIh7XXM9dMPBpqANe4GEfwk9GE
         OOfcDnR8yPT20CylAHGxEbGfeT5yeQKjxhJlC994O/SzjyuPyTZljC8sTIQh760sHNbh
         WhaetMFl1oYX7U99KpPVCYz38YueD5+W7zTEaoUZq0xELr2+au3wS6I42WcFE2nXoxMl
         adOhUW3dWFnoL5E+zeqmJtwX2/ARQ68p+y+JzPteG1+pK3AYjL1fxH06aRYQSwnIP4ha
         88DFuN5ou1VFtWzIi1LQI09IhmcYJ6AM7pXKcTLg1S3BzmR9M8AZkq8BtEabURPJx8PF
         LQRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EjnZUgc6;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com. [2607:f8b0:4864:20::135])
        by gmr-mx.google.com with ESMTPS id g62si521366oif.2.2021.01.29.14.23.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:23:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135 as permitted sender) client-ip=2607:f8b0:4864:20::135;
Received: by mail-il1-x135.google.com with SMTP id l4so9934770ilo.11
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:23:57 -0800 (PST)
X-Received: by 2002:a92:c80b:: with SMTP id v11mr4625280iln.215.1611959037474;
 Fri, 29 Jan 2021 14:23:57 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <CA+icZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6=_5aqPcRTfX2W8Y-+Q@mail.gmail.com>
 <CAKwvOd=mHvEtto37rzFMfsFYe2e-Cp2MAiyRYxHWPdc-HbT8EA@mail.gmail.com>
 <CA+icZUWxK9fdV8PNGqbQrOFmSZ2Ts4nNqfVMMNUh5u79Ld7hjA@mail.gmail.com>
 <CA+icZUUo6URpxHh6_Tppv9_Z1dyhGDB2OqSCY3yRw72aA0EbMQ@mail.gmail.com>
 <CAKwvOdmWx0reabY-S3nXfTZuhs-_SP7pbb0uHyGeaNSQnm8eRQ@mail.gmail.com>
 <CA+icZUWsncyKvxPZ5g=a3ssWy=cYahsU6hprM3n=jFUmnjPC6w@mail.gmail.com> <CAKwvOdk4kG-_c3inNj9ry_xUU9SQE-2AqQp40YL_V=6SHU6E=Q@mail.gmail.com>
In-Reply-To: <CAKwvOdk4kG-_c3inNj9ry_xUU9SQE-2AqQp40YL_V=6SHU6E=Q@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 29 Jan 2021 23:23:46 +0100
Message-ID: <CA+icZUX576Rt7HJ4hvrwRTCC2pTmoH-Yu-haU+MDb8B6yADAYA@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=EjnZUgc6;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::135
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

On Fri, Jan 29, 2021 at 11:21 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jan 29, 2021 at 2:11 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 11:09 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 1:20 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > On Fri, Jan 29, 2021 at 10:13 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > On Fri, Jan 29, 2021 at 10:09 PM Nick Desaulniers
> > > > > <ndesaulniers@google.com> wrote:
> > > > > >
> > > > > > On Fri, Jan 29, 2021 at 12:55 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > >
> > > > > > > On Fri, Jan 29, 2021 at 9:48 PM Nick Desaulniers
> > > > > > > <ndesaulniers@google.com> wrote:
> > > > > > > >
> > > > > > > > On Fri, Jan 29, 2021 at 12:41 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > > > >
> > > > > > > > > On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
> > > > > > > > > <ndesaulniers@google.com> wrote:
> > > > > > > > > >
> > > > > > > > > > diff --git a/Makefile b/Makefile
> > > > > > > > > > index 20141cd9319e..bed8b3b180b8 100644
> > > > > > > > > > --- a/Makefile
> > > > > > > > > > +++ b/Makefile
> > > > > > > > > > @@ -832,8 +832,20 @@ endif
> > > > > > > > > >
> > > > > > > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > > > > > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > > > > > > > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> > > > > > > > > >  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> > > > > > > > > >
> > > > > > > > > > +# If using clang without the integrated assembler, we need to explicitly tell
> > > > > > > > > > +# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
> > > > > > > > > > +# detect whether the version of GAS supports DWARF v5.
> > > > > > > > > > +ifdef CONFIG_CC_IS_CLANG
> > > > > > > > > > +ifneq ($(LLVM_IAS),1)
> > > > > > > > > > +ifeq ($(dwarf-version-y),5)
> > > > > > > > > > +DEBUG_CFLAGS   += -Wa,-gdwarf-5
> > > > > > > > >
> > > > > > > > > I noticed double "-g -gdwarf-5 -g -gdwarf-5" (a different issue) and
> > > > > > > > > that's why I looked again into the top-level Makefile.
> > > > > > > >
> > > > > > > > That's...unexpected.  I don't see where that could be coming from.
> > > > > > > > Can you tell me please what is the precise command line invocation of
> > > > > > > > make and which source file you observed this on so that I can
> > > > > > > > reproduce?
> > > > > > > >
> > > > > > >
> > > > > > > That's everywhere...
> > > > > > >
> > > > > > > $ zstdgrep --color '\-g -gdwarf-5 -g -gdwarf-5'
> > > > > > > build-log_5.11.0-rc5-8-amd64-clang12-lto.txt.zst
> > > > > > > | wc -l
> > > > > > > 29529
> > > > > >
> > > > > > I'm not able to reproduce.
> > > > > >
> > > > > > $ make LLVM=1 -j72 V=1 2>&1 | grep dwarf
> > > > > > ...
> > > > > > clang ... -g -gdwarf-5 -Wa,-gdwarf-5 ...
> > > > > > ...
> > > > > >
> > > > > > $ make LLVM=1 LLVM_IAS=1 -j72 V=1 2>&1 | grep dwarf
> > > > > > ...
> > > > > > clang ... -g -gdwarf-5 ...
> > > > > > ...
> > > > > >
> > > > >
> > > > > Hmm...
> > > > >
> > > > > I do not see in my current build "-Wa,-gdwarf-5" is passed with v6.
> > > > >
> > > > > $ grep '\-Wa,-gdwarf-5' build-log_5.11.0-rc5-10-amd64-clang12-lto-pgo.txt
> > > > > [ empty ]
> > > > >
> > > >
> > > > That's the diff v5 -> v6...
> > > >
> > > > There is no more a dwarf-aflag / KBUILD_AFLAGS += $(dwarf-aflag) used.
> > >
> > > Yep; not sure that's relevant though to duplicate flags?
> > >
> > > > > > Can you tell me please what is the precise command line invocation of
> > > > > > make and which source file you observed this on so that I can
> > > > > > reproduce?
> > >
> > > If you don't send me your invocation of `make`, I cannot help you.
> > >
> >
> > /usr/bin/perf_5.10 stat make V=1 -j4 LLVM=1 LLVM_IAS=1
> > PAHOLE=/opt/pahole/bin/pahole LOCALVERSION=-10-amd64-clang12
> > -lto-pgo KBUILD_VERBOSE=1 KBUILD_BUILD_HOST=iniza
> > KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > KBUILD_BUILD_TIMESTAMP=2021-01-29 bindeb-pkg
> > KDEB_PKGVERSION=5.11.0~rc5-10~bullseye+dileks1
>
> $ make LLVM=1 LLVM_IAS=1 -j72 defconfig
> $ make LLVM=1 LLVM_IAS=1 -j72 menuconfig
> <enable CONFIG_DEBUG_INFO and CONFIG_DEBUG_INFO_DWARF5>
> $ make LLVM=1 LLVM_IAS=1 -j72 V=1 &> log.txt
> $ grep '\-g -gdwarf-5 -g -gdwarf-5' log.txt | wc -l
> 0
> $ grep '\-g -gdwarf-5' log.txt | wc -l
> 2517
>
> Do have the patch applied twice, perhaps?
>
> Is your compiler haunted, or is mine? (haha! they both are; false
> dichotomy; they are one in the same).  Is zstdgrep haunted, or is GNU
> grep haunted? :P
>

Switched to my v6 local Git branch and invoked above make line I gave you.
I still see that double.
Looks like I need some "undrunken" switch.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX576Rt7HJ4hvrwRTCC2pTmoH-Yu-haU%2BMDb8B6yADAYA%40mail.gmail.com.
