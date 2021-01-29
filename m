Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBF7Y2GAAMGQEQ3WKWGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BC5308F29
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:20:24 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id k5sf8709237ilu.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:20:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611955223; cv=pass;
        d=google.com; s=arc-20160816;
        b=wR/PY+G2B/zj1boYIoKae+kMlF0vz98cOC8nJ2vn1FB0Z73MdFKE2vTYyeA5LBxgER
         3rzM/tuzMhmx9eCofBuK8y1/KWbKfthXrhNfjbxNjzb96QvRxRfqFYKGiSppG7Xye6W3
         8llHxshgRAUUGEKa0xoRi1U+6pc8AliEswBDRvgigLbfhh2t0j9j0em7kRqBQZjzatPT
         ZTRcY2Q5AYqEcd1jLke6k6fhy8F8Nh79+m9Knf8v36JHWOs6CRhRKlsIS+ir/ahm5hAw
         LHud8gXOj5FoPE3yiZqpXkJBCcP2suYkHFyn/j2ffqp2QfJhwr5amB1vK1te97FgviQ3
         9UeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=IlENupjsLvTWDHG1WokmduX/61z3URTA1BqLr3kFBiw=;
        b=N4X+ZNOk6TTRKJ/IlaFZoIWcreIkxvVO1enWuwLsY89JBCNLvNZYkYKUec5F+v3qIF
         v/aEoKT9DO2CZEwNL55doMh5Njw7q/i+sXNsFnhew8dMVp7IOOnh6WHsOv1Lt4XwrYIu
         sWH3Jvt1G8YYf9qLh/jtC5GMPbkWuJZlP1Fjx9V7AHM1zKXMcyPnv9ImecL47V/mtLOU
         WVAf3JFgqgD6sx/5KTclNmp/CybE8us+bPIG6LYgESvQpHOEgPztr0IVUtomaBDU2RR8
         0kHlWl2zApLPH+S+j8gP9tcWqcL9/IeKX8uATSPRDUeyU2rGLTvhG9eNqvXOMEOwk0Di
         ojIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CyT2dKXC;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IlENupjsLvTWDHG1WokmduX/61z3URTA1BqLr3kFBiw=;
        b=p/k27v1Ke2CiNsGaodNyFpQ1tyVBG7wIoDjsJT2M6vjup7ll04ythVJccT6/86evkl
         NOCP7ddz0/Outk7cz7WZGSL48EXB5/W7W1v3wuKY3acxbYDqQCZz67EL92SMmer3VTTq
         ZiE0Dj7G9R+MM/VvUgs4HHEmuI3bFoocfUqM1nPhMbetDzpkTDe8sPUlMARC8ibzHAsk
         3lK2K6Jm5h9ZCDYDwOvWKwLoHh0PAbWrTvPbp1pqG8KR+NELEUzISUHk2nQ8JRTrMP6w
         4AL/nZrArTSJhelWkS7xSnVMKJQGU95DZ6caeK/nWHJZv1p2l5RNNiiUKvKSYP8aSLYg
         AlAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IlENupjsLvTWDHG1WokmduX/61z3URTA1BqLr3kFBiw=;
        b=jadoUa0eGLyP14MJpnjAVKEDmjAuLb1kqqpuNVnRa0xgq3t4GnGeyVPxGmR4ZBzl2t
         itt4IzVb5hUhXhsTU+ij18H+WWR7Gn6hawJftUKVVC7exvMB3vN+nW3BPRPA8eWfOord
         TDSgtd88Pm/7Ag98KBlxs9MqPmZjp3gAC2VixD20nZWnZ2L4ZIsOCgNOkYn73v2mvKnO
         243hPiLYpyveD/dp7zEqemAsJFWfkhpwjF2WpRTvl1493MeLLPioDCg33fzXtAkKO/yN
         r2xrwZML/iwhl6sMJQMjRZEZz+I9emiafWtTC7VquZdfMKejJ4msHdhRJ7GG+8lapcKM
         vaJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IlENupjsLvTWDHG1WokmduX/61z3URTA1BqLr3kFBiw=;
        b=VTSn9J1YFHhxHjCF7JWh3Gvmgy0rM/AJ1Y7eddMclzYNxAlDz8DqZIvE4P6qHbdS5H
         32l0vJ1jkuW6VqVlI8W6X/yOHWVttETXfnwse9tCtl589j8wnjoh8NalLFMPkW2zZwrz
         8mAxG5ZH4UCrf2a8lN7oJDnGQ5PY1iq+V2ua6N8Z2DBcfpROFD7m/rvrFjmxmXRlf9Qg
         poO7/IHvN4v5QkvjdJLqPjsP6/BgJYG7Xf0eoWseVHdb11Ir8pv/+i50BT+VZZknKtYF
         31SYuEeupU22DuWljePjG6WkhiUARuJ14e+JqWawYSIn3NQ3R1r0AZpT+6YH07xrRMtm
         8mkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329GHJAqOb0lxBRW7hou9U+D3rWiTDL9qe1XGtKMEac/13/YrxN
	MDn7HpJHxL0q6Z43rQP5S9U=
X-Google-Smtp-Source: ABdhPJyGDQebbvF/CQDttxStqz0H+/JLGkelcEZ4R6Y0WYJEYYTDIO9pJgd5qhxKfz4X286m5ymKIA==
X-Received: by 2002:a5d:968e:: with SMTP id m14mr4836354ion.26.1611955223154;
        Fri, 29 Jan 2021 13:20:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:1445:: with SMTP id 66ls1523902iou.11.gmail; Fri, 29 Jan
 2021 13:20:22 -0800 (PST)
X-Received: by 2002:a05:6602:4b:: with SMTP id z11mr5071532ioz.47.1611955222672;
        Fri, 29 Jan 2021 13:20:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611955222; cv=none;
        d=google.com; s=arc-20160816;
        b=yrvnN7ysLF5SoP5t0FKQB2uHSFq5R3C3rWE/yGwPGKklvw630jTS59unxvOsvvo6To
         7dyik3dJCVG9BQ+yRTkbGH9rmKnS3wtBIZs+TvF+PatyX+cFLc2RF/Zabxoiux4pCax8
         K3CtZSv1zbJ1X4bsi/xPsxP09sfGr13VLuzxi/dNvbuS7E8zyXK12oBdG3rzJWYcg9yj
         mpbwz0E58ccs9+YmuWK1UuJRcQPZihSa0h8KJTVOG3if62hhQhVOPfk9MhT/VpgheANr
         8vQDDjpv1m3hshsDp/sfmWE2cnhXzhEuHknWooDNIvi4SsfBFGdPpKq1TpH/QL5wgwTT
         I4sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/Jt06ny6ITPJGXSastjfT3IhLkcolmmMoDppTdivYms=;
        b=F+PZs+DUO32aUgrKbslPNnKog2y/CsytKB3wYTupibiNqFes1kge1XxWdX71q0qUyx
         DuGeXZw6YlY9tIKLTVHuHX9xlenqpg9fzgP/tM21uwgQj9oi6lEn6Tio6TZ6mkOdUDX5
         nwuVRjD77OKFRsaWj+i34u+YJl4+WIW6mz448nkQVodXEjWGh0z6cm6EchTkVzl32Kna
         EqhX1oB4v4AzvszGVUZjxjuef42hzSTtf++yQw26M80EVB0gFT5noV79+4vRh0aDagFK
         53lcmk7090zjLR+NX3zw1bhOxeoEmLuJ52UTy2BywoEdQFnYscay9pwZkCo6OOpK7Jcv
         jXBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CyT2dKXC;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id s10si370994ild.2.2021.01.29.13.20.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:20:22 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id q5so9803523ilc.10
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 13:20:22 -0800 (PST)
X-Received: by 2002:a92:c80b:: with SMTP id v11mr4445392iln.215.1611955222408;
 Fri, 29 Jan 2021 13:20:22 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <CA+icZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6=_5aqPcRTfX2W8Y-+Q@mail.gmail.com>
 <CAKwvOd=mHvEtto37rzFMfsFYe2e-Cp2MAiyRYxHWPdc-HbT8EA@mail.gmail.com> <CA+icZUWxK9fdV8PNGqbQrOFmSZ2Ts4nNqfVMMNUh5u79Ld7hjA@mail.gmail.com>
In-Reply-To: <CA+icZUWxK9fdV8PNGqbQrOFmSZ2Ts4nNqfVMMNUh5u79Ld7hjA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 29 Jan 2021 22:20:10 +0100
Message-ID: <CA+icZUUo6URpxHh6_Tppv9_Z1dyhGDB2OqSCY3yRw72aA0EbMQ@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=CyT2dKXC;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e
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

On Fri, Jan 29, 2021 at 10:13 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 29, 2021 at 10:09 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 12:55 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 9:48 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Fri, Jan 29, 2021 at 12:41 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
> > > > > <ndesaulniers@google.com> wrote:
> > > > > >
> > > > > > diff --git a/Makefile b/Makefile
> > > > > > index 20141cd9319e..bed8b3b180b8 100644
> > > > > > --- a/Makefile
> > > > > > +++ b/Makefile
> > > > > > @@ -832,8 +832,20 @@ endif
> > > > > >
> > > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > > > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> > > > > >  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> > > > > >
> > > > > > +# If using clang without the integrated assembler, we need to explicitly tell
> > > > > > +# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
> > > > > > +# detect whether the version of GAS supports DWARF v5.
> > > > > > +ifdef CONFIG_CC_IS_CLANG
> > > > > > +ifneq ($(LLVM_IAS),1)
> > > > > > +ifeq ($(dwarf-version-y),5)
> > > > > > +DEBUG_CFLAGS   += -Wa,-gdwarf-5
> > > > >
> > > > > I noticed double "-g -gdwarf-5 -g -gdwarf-5" (a different issue) and
> > > > > that's why I looked again into the top-level Makefile.
> > > >
> > > > That's...unexpected.  I don't see where that could be coming from.
> > > > Can you tell me please what is the precise command line invocation of
> > > > make and which source file you observed this on so that I can
> > > > reproduce?
> > > >
> > >
> > > That's everywhere...
> > >
> > > $ zstdgrep --color '\-g -gdwarf-5 -g -gdwarf-5'
> > > build-log_5.11.0-rc5-8-amd64-clang12-lto.txt.zst
> > > | wc -l
> > > 29529
> >
> > I'm not able to reproduce.
> >
> > $ make LLVM=1 -j72 V=1 2>&1 | grep dwarf
> > ...
> > clang ... -g -gdwarf-5 -Wa,-gdwarf-5 ...
> > ...
> >
> > $ make LLVM=1 LLVM_IAS=1 -j72 V=1 2>&1 | grep dwarf
> > ...
> > clang ... -g -gdwarf-5 ...
> > ...
> >
>
> Hmm...
>
> I do not see in my current build "-Wa,-gdwarf-5" is passed with v6.
>
> $ grep '\-Wa,-gdwarf-5' build-log_5.11.0-rc5-10-amd64-clang12-lto-pgo.txt
> [ empty ]
>

That's the diff v5 -> v6...

[ Makefile ]

@@ -826,16 +829,23 @@ else
 DEBUG_CFLAGS += -g
 endif

+ifneq ($(LLVM_IAS),1)
+KBUILD_AFLAGS += -Wa,-gdwarf-2
+endif
+
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
 dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
 DEBUG_CFLAGS += -gdwarf-$(dwarf-version-y)
-# Binutils 2.35+ required for -gdwarf-4+ support.
-dwarf-aflag := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
-KBUILD_AFLAGS += $(dwarf-aflag)
+
+# If using clang without the integrated assembler, we need to explicitly tell
+# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
+# detect whether the version of GAS supports DWARF v5.
 ifdef CONFIG_CC_IS_CLANG
 ifneq ($(LLVM_IAS),1)
-DEBUG_CFLAGS += $(dwarf-aflag)
+ifeq ($(dwarf-version-y),5)
+DEBUG_CFLAGS += -Wa,-gdwarf-5
+endif
 endif
 endif

There is no more a dwarf-aflag / KBUILD_AFLAGS += $(dwarf-aflag) used.

- Sedat -

>
> - Sedat
>
>
>
>
> > Can you tell me please what is the precise command line invocation of
> > make and which source file you observed this on so that I can
> > reproduce?
> > --
> > Thanks,
> > ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUo6URpxHh6_Tppv9_Z1dyhGDB2OqSCY3yRw72aA0EbMQ%40mail.gmail.com.
