Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJ4P2KAAMGQEZU5OH3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 141D7308FCE
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:09:44 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id m20sf2873353vkk.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:09:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611958183; cv=pass;
        d=google.com; s=arc-20160816;
        b=c9IX0V7kwGcLsukTBE5CATij67fmvMh+j328rbneKN2HLGXWPixJ0Qjskvf78WsGTW
         0+EInt1fTAXqgLA1z6YNkaH0bD+5hnAwAlztxDooanNHCP6OLrSPyl4Yw1Q/Klrd/lcY
         7XTCgZ5tor31usrTQy9b4xr8bd1JEkOlbQQSuif1DyuMRII8S3sNTAaNaUfaIlXV8w15
         L3z8VRHnLdiTSrhvn+tiYD5tlmhgckjwVGnruXIyTJEmMPlIqFKHWxs825qgBHM2+JhE
         ep/KY+15oN9PNs01sZ8RgSbLBpyT6MFfCON1MR1ghLMhTBgYTTDMlFJJ7AYXOyHK4BG5
         8MGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=p85DLZYEX74lU7A7ArgpUWPE79oHnzLSMbabQqJbK/I=;
        b=BPT1hwHEKikZbQnr8ptHwM890I4O3/JKJLCp6ID2+getii+6H+lQeCBnIMcV5Emkct
         dv1tU0A+Nm7iONBCG2bFcKEoHWgEl9iaA81+QBmkDO7vpvDZORjqXMs1bDC3z2zR48Zs
         E+k8g/KM/gV9+bP75ZkqQvRnz3EFPtU9r0iLFxeUnRnvRd+CM0IV7rZf3o8hCU9vLf+H
         6kbVEG5gQpDybuBwr23rXtEeq2Anhj8aQSomIbo4aysGyJcEyxgHBG5NAXOA0w1bCbRF
         SrmDmsHmwMVv4kCRjZVjhn5qIBrNvqN2ibt3yb4e774gkHiBheJ2NxF/7Y4a75K75IRH
         MxOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=llLgOsmd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p85DLZYEX74lU7A7ArgpUWPE79oHnzLSMbabQqJbK/I=;
        b=SMCMzO39YKXzraJyVaFiz+AmoN/V36MYHp9LDxD2rvDSzUFWdkL/oMzrzNwlt2DTez
         0Dltok56VRYfGnfkRNZd7NrmkPmWqK9OTEi+V7AZmnH+6M6MUR31DkLlz6bt0ORsssJA
         +G6g2oNKjPKHv9CY6J0cuyKltyLT+rja3VdlOSDksqOwAXkvznUYZhJuli3DlCPwEOPV
         FbHmHRbZB83Mq2QCCbYR8TlaUR2gBJGckaUOs4W/qiZHA95ZjS1Qa63gEea3dZ2ixVSw
         WNNj84VteDdpWPT09D89270kBh/vCYzaTxX0agWOyQhiW7ITwofsFXC6MjzwMIPO61S1
         Co9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p85DLZYEX74lU7A7ArgpUWPE79oHnzLSMbabQqJbK/I=;
        b=s08O1cesKUL/+gpSqhTMMnz0vUG4rn/uTMJrZifzOscANVl9aXJofgP1kxZ2aQBZWf
         jldqxNPHLG8hCYR2Tmk7sNs08L+EAaPRUDU5/AXgLR7GG/QZioIKRvNkMB0dKNkfD304
         qz1tD+g6DikjTaVn8ikptqEptkya/k06iWa8f2KyD3s9NMDIjM4Zd/NZR+UagEhKEXpl
         5JWiq4KT9P1Pjq7zByL4j5P4VtuBzgcrzQ9OrydOBgc+asb6Wxuo1RqBwk1qv2omaH7E
         QRlnQv/FmJ6jTbkVRLX1iGVtnugUgrPM7ZaKPvAt+p9CVN7sGapM3CZTdpprF8uD2dzA
         rVLg==
X-Gm-Message-State: AOAM53206q6amLQ2LuW3JcI8/1zRvCyLhUEv6U+3M/Zqxcog3wCRMawP
	jvJlQP0DRG//FcSpOEVMS8Y=
X-Google-Smtp-Source: ABdhPJx0atDPMtDRF9cmTZvfrdH/n6iI41VmuhGZrdOrVt6Ayk4NZwQ+HihYx80VDNAlG/q3VZ9TrA==
X-Received: by 2002:a9f:2721:: with SMTP id a30mr4043910uaa.131.1611958183179;
        Fri, 29 Jan 2021 14:09:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:22d4:: with SMTP id a20ls1335948vsh.10.gmail; Fri,
 29 Jan 2021 14:09:42 -0800 (PST)
X-Received: by 2002:a67:e014:: with SMTP id c20mr4214089vsl.54.1611958182801;
        Fri, 29 Jan 2021 14:09:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611958182; cv=none;
        d=google.com; s=arc-20160816;
        b=BYGv1QTqiI3zBohc32HOL7gYEGNmdPU5Bg10W3+OKg36Dwk84LkYfIm5KjB1QCRhF8
         TyvcUWebryYJTPzY70aInOLvvCmxGGm3oArPy4XBn8LIZAsvbHXTtI10oD6alIQm5Njf
         1JynIRYD9U2G0XPFx/trckBSd6h6fy8T7EKD5Ibamm2FajJcf579RSVKirx6kKtkFTdq
         Pm02IYh3NGKOsJPY5tB69osi5UhE2Qv6dL5xKwObAe0sLicuiIinHhzP3A/Q82xGZkH0
         P3PZTne6gjbl5Woqh2RRvxtc9IAfk/kA0UWG+mJ8rE21paXFScnkGkJzsNZm1JRfWhIB
         MiYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dxu0N507rWvhGn5VAco/2PLnGADnFVNDKuKqlZF+C0k=;
        b=Hyk/Luvk+ZkgHoOUwzepRzAzwPbgEzOup3ULqlAQwmCrm7ASdgAfsSHN+OXYdNs0PV
         UnhXJMeBUnRoZLmClqQgbcZrWzL+/SjemyTFNC/MPXdWdgu64N481CwshMvczeyoj4d2
         8ZoqUkzxm9N/EHjONozPQSB+0VdQ0hf4s/PXKGcIp+3WUtG6Fs9/TXpvIKbgZ9QlwjXs
         /imzuOEJAj5b7RmM3RAZvkCwsclr7An5irAOUpVsj2CqNYF+MJQEzS+L2inySRzuaCs5
         cGogkNLfRVWgBlL3Lv8ivCPQoF/N+3pqqFdhECHSmwz5T1jHXAZI7EcSa5hUjKchRpWj
         zrsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=llLgOsmd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id g17si622519vso.1.2021.01.29.14.09.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:09:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id x9so182874plb.5
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:09:42 -0800 (PST)
X-Received: by 2002:a17:902:9f87:b029:de:9e09:ee94 with SMTP id
 g7-20020a1709029f87b02900de9e09ee94mr6216436plq.29.1611958181793; Fri, 29 Jan
 2021 14:09:41 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <CA+icZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6=_5aqPcRTfX2W8Y-+Q@mail.gmail.com>
 <CAKwvOd=mHvEtto37rzFMfsFYe2e-Cp2MAiyRYxHWPdc-HbT8EA@mail.gmail.com>
 <CA+icZUWxK9fdV8PNGqbQrOFmSZ2Ts4nNqfVMMNUh5u79Ld7hjA@mail.gmail.com> <CA+icZUUo6URpxHh6_Tppv9_Z1dyhGDB2OqSCY3yRw72aA0EbMQ@mail.gmail.com>
In-Reply-To: <CA+icZUUo6URpxHh6_Tppv9_Z1dyhGDB2OqSCY3yRw72aA0EbMQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 14:09:31 -0800
Message-ID: <CAKwvOdmWx0reabY-S3nXfTZuhs-_SP7pbb0uHyGeaNSQnm8eRQ@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=llLgOsmd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
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

On Fri, Jan 29, 2021 at 1:20 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 29, 2021 at 10:13 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 10:09 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 12:55 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > On Fri, Jan 29, 2021 at 9:48 PM Nick Desaulniers
> > > > <ndesaulniers@google.com> wrote:
> > > > >
> > > > > On Fri, Jan 29, 2021 at 12:41 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > >
> > > > > > On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
> > > > > > <ndesaulniers@google.com> wrote:
> > > > > > >
> > > > > > > diff --git a/Makefile b/Makefile
> > > > > > > index 20141cd9319e..bed8b3b180b8 100644
> > > > > > > --- a/Makefile
> > > > > > > +++ b/Makefile
> > > > > > > @@ -832,8 +832,20 @@ endif
> > > > > > >
> > > > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > > > > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> > > > > > >  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> > > > > > >
> > > > > > > +# If using clang without the integrated assembler, we need to explicitly tell
> > > > > > > +# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
> > > > > > > +# detect whether the version of GAS supports DWARF v5.
> > > > > > > +ifdef CONFIG_CC_IS_CLANG
> > > > > > > +ifneq ($(LLVM_IAS),1)
> > > > > > > +ifeq ($(dwarf-version-y),5)
> > > > > > > +DEBUG_CFLAGS   += -Wa,-gdwarf-5
> > > > > >
> > > > > > I noticed double "-g -gdwarf-5 -g -gdwarf-5" (a different issue) and
> > > > > > that's why I looked again into the top-level Makefile.
> > > > >
> > > > > That's...unexpected.  I don't see where that could be coming from.
> > > > > Can you tell me please what is the precise command line invocation of
> > > > > make and which source file you observed this on so that I can
> > > > > reproduce?
> > > > >
> > > >
> > > > That's everywhere...
> > > >
> > > > $ zstdgrep --color '\-g -gdwarf-5 -g -gdwarf-5'
> > > > build-log_5.11.0-rc5-8-amd64-clang12-lto.txt.zst
> > > > | wc -l
> > > > 29529
> > >
> > > I'm not able to reproduce.
> > >
> > > $ make LLVM=1 -j72 V=1 2>&1 | grep dwarf
> > > ...
> > > clang ... -g -gdwarf-5 -Wa,-gdwarf-5 ...
> > > ...
> > >
> > > $ make LLVM=1 LLVM_IAS=1 -j72 V=1 2>&1 | grep dwarf
> > > ...
> > > clang ... -g -gdwarf-5 ...
> > > ...
> > >
> >
> > Hmm...
> >
> > I do not see in my current build "-Wa,-gdwarf-5" is passed with v6.
> >
> > $ grep '\-Wa,-gdwarf-5' build-log_5.11.0-rc5-10-amd64-clang12-lto-pgo.txt
> > [ empty ]
> >
>
> That's the diff v5 -> v6...
>
> There is no more a dwarf-aflag / KBUILD_AFLAGS += $(dwarf-aflag) used.

Yep; not sure that's relevant though to duplicate flags?

> > > Can you tell me please what is the precise command line invocation of
> > > make and which source file you observed this on so that I can
> > > reproduce?

If you don't send me your invocation of `make`, I cannot help you.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmWx0reabY-S3nXfTZuhs-_SP7pbb0uHyGeaNSQnm8eRQ%40mail.gmail.com.
