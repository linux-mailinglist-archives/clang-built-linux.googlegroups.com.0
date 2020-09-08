Return-Path: <clang-built-linux+bncBC2ORX645YPRBLHF375AKGQE4ADREGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D457E2621AE
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 23:07:57 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id e12sf374533pfm.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 14:07:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599599276; cv=pass;
        d=google.com; s=arc-20160816;
        b=eaYZKQzumPcSmd0MEdtbYs0Rtv3+ENljkOHrO+1JrL9l9I5VRXbl/MJkMagtq84hpb
         PMD9Mika/Wu/W9Gh8h5k0PkT510pjCXkiwFsx5RnYGMzgzZGHKHRzi01Zra5cdom178x
         TnQvM6+Tzlsp8+Jv2LPbsTj0Fdvt9SymIyef3qr1dNSqCRfTy6vLmRJaTtCSDN0ZYwcg
         RpLs38aPZ2KHZ9VRvEvbLTl1U05d+Mjo4iqhOyS5q++iM+L1jp2QtjB6KJs9Z3Dw4Rtt
         DQJPrMra483WLNOS7XJvlLA92C5cuq+wPWa8A52X++cP4iZOWHn7EGIdg2G1s4b/gEpT
         JsvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=sjt7nijiuoSrYnZm+nf9ejrE4auI1uuea2Tv5IoMS9I=;
        b=NAgDFi85WmlKGbPuFvYfZr5RbVEwkqz0VihBqMhoDfLZDcHuj445zbDnaZnuQhAk7+
         M0pwex8YqBUAVlJhdN0eFrv4xtqWvYalrck+ajbXvz5utPQJgeKEVF/TKmIMLQrXPx/3
         yXKNFEXF6joHJNT05s/JPHsRY8j1xRFYgCi6VWiqrPLZQlefoQzJd/qEP0fd33v2JJmj
         eulZ01M+8J7nl7ofP0+QIoeWU2sFL6+GA7CPpX2mWuimGMo/uITF5jh8eM3yYrTareuc
         4aocJ7pZbQXz+BALFuSEbAshgSI9VoSJ79RHbYZbqdv6Q1n1nEKpGAmCFr5uGc2xSUJS
         k8Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a7GjBHoh;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sjt7nijiuoSrYnZm+nf9ejrE4auI1uuea2Tv5IoMS9I=;
        b=j4g5BieVYkrgQ1rkiD2PhvufIeHeeMzj+FR/TJ+Qn8iTsyjZivFiH/6qWHpKCa0IDi
         8T5IF7T8KofSgaE6mIltrlHbUUiW4zzJE1yecn0Ts3PRjOYGnuwJCoK0P4NYssxqG/Ci
         BVLaAvDM4H1UtKpZkHWHS9MdVKNmyCWUa64uVePlfNftJusQ0SA31+lsWcOTntFo/hyZ
         //E9tfqMDGNLyfEWuhIHmwb3n9MS2uhPe9alU1a+XkhjzctGGplQGq0TBSZ1GuZSKYzO
         YEcNuiyPJLlxe6qHn6TtsLnC60SO4hALwctzVx2XLXefnlCIxU3Ql8QPtwUt5iniFU8f
         PHUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sjt7nijiuoSrYnZm+nf9ejrE4auI1uuea2Tv5IoMS9I=;
        b=MVs/VLa9Dnr8IEC1QlyM9a70nXX9bm7MoKnR93Ay4cDNogABjb9ytlVGChNh5LlFmu
         rCBaNTQHY3KaF05zihnzU2ddurMIsIyFwb41HUo0GiIGFaNoK/zBTnIe868eB0IfvPQx
         I1brsfiepK1XwR6+3Eniq7qP68exBSeYRekdy0l4EbL+3Ncq4Z3PJcsShUd48Wq8rxea
         541/+rr6wmvJ5ojnYzz8AU4KAUq+caD8zgiL2TV0fMojmtVDmBW7NPJiBWXgq7NYo88q
         ehDX+d35jznEfjaVizeEVNaBpXEXJDgTFaN7mG5kma8zYHiGLdiRc3SxHAR0CW6CoD9h
         V28A==
X-Gm-Message-State: AOAM531QNOnvXms4QlD7G0ouvyB0McQdMb8IfCBrhyDCwxmvaFyzhuwx
	iGGuinKfMWNJXin4nH4Unbs=
X-Google-Smtp-Source: ABdhPJx1HXFJcCEB/+ahdE0uaAMi08Pi/hoh4h6CVmAsb1HTuXKpQQGyJNunCAPsl84VwTO2aIoRpw==
X-Received: by 2002:a63:5c1a:: with SMTP id q26mr466880pgb.223.1599599276524;
        Tue, 08 Sep 2020 14:07:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b90:: with SMTP id w16ls285046pll.5.gmail; Tue, 08
 Sep 2020 14:07:56 -0700 (PDT)
X-Received: by 2002:a17:90b:fc4:: with SMTP id gd4mr621033pjb.129.1599599275929;
        Tue, 08 Sep 2020 14:07:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599599275; cv=none;
        d=google.com; s=arc-20160816;
        b=sgH2nUjVNTr8QICs0xh7226GnkRGax8ISBuSOiixe3H0IE3ZBbrkaHW3GNmolad9oo
         LKNZsLy0NikGiKrwKrhp6bi9+0avl2+/BIqIKbN2Bpfz0ZwGuwjhX0ks2byQ0bEvLVjG
         jzyNcZrQ1Q0zXwJQnn6asFBSX7wZ4m7xpqoAlmEPXNhuAsuOhIiL2tQGcgS5nbpiIHcc
         6mF22qm13ZS/RNxMRsmqAw1zMgcinjXfRpM1PPgiGSQwayyTkakndXHAibGMZZ91vSQb
         LupS49Bc+jWDbwe72j6guveb+/kb8dBNoT5sdkS8h65X1NlUUdpPA/RMBSSW7DIyEO5T
         kmOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Wm1YZJP5IHcZuymW2XEKoD0pUveQe7CoNm7r9bi/W1k=;
        b=uWsHLLeJs1Kv+F/rAyv4CYjc3OWG0UAlnbDqvxMhWOLOWjr1CGyCHcOZjXgI/txR++
         TP3E60jaK9thYgK9jIZb0TGii21priCX6lRjHftn2xk4Oz+9CVHqbrd6UEf53wQIzawb
         tICPR3r1usngZBjABCzyHKdg4xixprMndslw1AopT5d06BImIsS7W8PluqTsv9QJKJXb
         Q/nHdLX6QaVnUBTr+SRDwgqxFoq8FKpnElk1TNbIH/1PUydc+ESvgLGoeHGwBfTo64+R
         0fVFLeoi0sUYKvTFOWd3pCR7STj9CHEYF/W/Nj+FeYq8t6/eR+B1VR5EHDQ5+h5KDUn6
         mOLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=a7GjBHoh;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id lj12si45870pjb.0.2020.09.08.14.07.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 14:07:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id o20so182145pfp.11
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 14:07:55 -0700 (PDT)
X-Received: by 2002:a17:902:c38a:: with SMTP id g10mr511116plg.23.1599599275319;
        Tue, 08 Sep 2020 14:07:55 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id m188sm323916pfd.56.2020.09.08.14.07.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 14:07:54 -0700 (PDT)
Date: Tue, 8 Sep 2020 14:07:48 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Subject: Re: [PATCH v2 13/28] kbuild: lto: merge module sections
Message-ID: <20200908210748.GB1060586@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-14-samitolvanen@google.com>
 <CAK7LNARnh-7a8Lq-y2u72cnk2uxSuWxjaZ8Y-JHCYu5gwt7Ekg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNARnh-7a8Lq-y2u72cnk2uxSuWxjaZ8Y-JHCYu5gwt7Ekg@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=a7GjBHoh;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Tue, Sep 08, 2020 at 12:25:54AM +0900, Masahiro Yamada wrote:
> On Fri, Sep 4, 2020 at 5:31 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > LLD always splits sections with LTO, which increases module sizes. This
> > change adds a linker script that merges the split sections in the final
> > module.
> >
> > Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  Makefile               |  2 ++
> >  scripts/module-lto.lds | 26 ++++++++++++++++++++++++++
> >  2 files changed, 28 insertions(+)
> >  create mode 100644 scripts/module-lto.lds
> >
> > diff --git a/Makefile b/Makefile
> > index c69e07bd506a..bb82a4323f1d 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -921,6 +921,8 @@ CC_FLAGS_LTO_CLANG += -fvisibility=default
> >  # Limit inlining across translation units to reduce binary size
> >  LD_FLAGS_LTO_CLANG := -mllvm -import-instr-limit=5
> >  KBUILD_LDFLAGS += $(LD_FLAGS_LTO_CLANG)
> > +
> > +KBUILD_LDS_MODULE += $(srctree)/scripts/module-lto.lds
> >  endif
> >
> >  ifdef CONFIG_LTO
> > diff --git a/scripts/module-lto.lds b/scripts/module-lto.lds
> > new file mode 100644
> > index 000000000000..cbb11dc3639a
> > --- /dev/null
> > +++ b/scripts/module-lto.lds
> > @@ -0,0 +1,26 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * With CONFIG_LTO_CLANG, LLD always enables -fdata-sections and
> > + * -ffunction-sections, which increases the size of the final module.
> > + * Merge the split sections in the final binary.
> > + */
> > +SECTIONS {
> > +       __patchable_function_entries : { *(__patchable_function_entries) }
> > +
> > +       .bss : {
> > +               *(.bss .bss.[0-9a-zA-Z_]*)
> > +               *(.bss..L*)
> > +       }
> > +
> > +       .data : {
> > +               *(.data .data.[0-9a-zA-Z_]*)
> > +               *(.data..L*)
> > +       }
> > +
> > +       .rodata : {
> > +               *(.rodata .rodata.[0-9a-zA-Z_]*)
> > +               *(.rodata..L*)
> > +       }
> > +
> > +       .text : { *(.text .text.[0-9a-zA-Z_]*) }
> > +}
> > --
> > 2.28.0.402.g5ffc5be6b7-goog
> >
> 
> 
> After I apply https://patchwork.kernel.org/patch/11757323/,
> is it possible to do like this ?
> 
> 
> #ifdef CONFIG_LTO
> SECTIONS {
>      ...
> };
> #endif
> 
> in scripts/module.lds.S

Yes, that should work. I'll change this in v3 after your change is
applied.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908210748.GB1060586%40google.com.
