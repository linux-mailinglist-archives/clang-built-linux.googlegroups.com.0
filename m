Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4HI4X6QKGQERSHLQSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C42612BC1F2
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 21:11:29 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id g129sf16781186ybf.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 12:11:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605989488; cv=pass;
        d=google.com; s=arc-20160816;
        b=SEAVZh4PzuEyb/PcDQ3SFFeML1xfyUDDaWlp44jfGwo8zX43/rsVChHCeZvpEvKUrK
         2CRWmDxwkAm+nnPmRXxXas2iGebRcuIfO4iMb62aVTgybUWAltiYxub9cGZ1C1wLm1cZ
         RJWDWQs+sM3o89RwzxPEWesvWohmkuYa5wsRxaUDCzc8es2BfyLNG96rd7L21PjTWgiv
         AJLg/ZXQ6eG538rHi3NuEOn7EjOthHVbnPA+T0M6drvL9K86U0vSOT6c9Lcdl7dN0+Yo
         7cejV/i2Q7fN4A80uoH2nGRmK1QnXVIWlesM5euxlk6H9YVdedL7oK8OZwVLO/kNl2Co
         p1hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=U2vvLX3AIBxDDmexREro6MSeD8bUEe5XxLSZIC2bnXQ=;
        b=0Mpr+r+p7XtSld/ZXqwiAuQaLC9htT+Zj3OYSjY/kE+KiFlhuIWlQw5CsUZHcDz7mP
         yK6zP2lwBu9VHkE8YQYU/5NMk0Rk64b8H2e/3AjcgDQEcg+xtvB2MclwZPSqbRdDVCt4
         MiCQiBXO/IyGN9370pxA1Cmp4y4hpuMakvuydqAesEEhZWKFI/Y3HuVNZYy1IVPTdn09
         tXS4g6FifXjwh/ev6NnjPy70KSr39CIz458MOFb1173T/ppce3yBYhAhTRRguLNrm02E
         gEDsboYmAr714cQ6JBlFG7q0HLExATXEYQtnncBK3A53SKLilxNsOiajnZgwblkPCz4T
         78Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d6GrwcPv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U2vvLX3AIBxDDmexREro6MSeD8bUEe5XxLSZIC2bnXQ=;
        b=ocuuyef+83PI+ZEqGWWPxE17cJVcTk2lLhJKFNCMFpzH6uMDjyADz8KhAnWGl2O48u
         W2/Ehj2TXQIbxnA+LDSp3dM64SKourO/DVfARDWuhzk1jm+ThcyU+rFdE2D/5oEGbDHv
         SVss1I/vmzjfTmJMhOiyZuJ0kgqEsbchcJeJjU/YqvZYixXUbqlGAbLGyJPSjDwL0dqs
         Wgt/XpdtJfwju6oHy/mNoPgjhnVmlBk22yfryQS4JvwxNi43fjNfmeaUJl5FZWLuaL31
         p4bm9iGvsHRR8FIxftCrkRrv1mSZ8CTriQTx8BJZPXGCdoHSqVrf0lxjtAKGDm7i7zqx
         oO0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U2vvLX3AIBxDDmexREro6MSeD8bUEe5XxLSZIC2bnXQ=;
        b=bUN3dMeAZYwpy+vbPUUeiYWENq7WCiMTdp0KE3iZRzjCMslu4RChAVdA9LZ6HozMca
         218XkiBaKoSljCUUJX4m5TaFc9NxhnqRyPipv8BPmXROUWmnKWfFF3i5WxESrE63SAEH
         yc5QM7GIMUHR0QE27FgnlZxwNmDSGU9HlukaDQ0xRojpUkW1czoay5oUACRjNWxqdYbc
         efFWgNnUl07etx+hfIMFivmLAufA85m/hZvzlQOIaGjoGN6k3hjdovO5RWv0WyzxjWJL
         4PQpz2ZDgZ5IJxPhoIHEd2EeSX2KiqOqUjGqDH5L/yuyAJMfvtP9SsW1uN4MQupCKFun
         x6eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305IRz4ted9wsBYpuuRien4yNlVZfSM9BkXSgahlUEEAJw06O7Z
	p3uhBXlsX8SwhXOndvnGhNM=
X-Google-Smtp-Source: ABdhPJxyoKORvto9a5Y4Ym4ck8z3Jbv5A/6hUSYLVa5LKSYj0IyQbCFvIX0APoAuxL3sgx4vgODDLQ==
X-Received: by 2002:a25:2d55:: with SMTP id s21mr26367328ybe.389.1605989488648;
        Sat, 21 Nov 2020 12:11:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bcf:: with SMTP id 198ls5038895ybl.10.gmail; Sat, 21 Nov
 2020 12:11:28 -0800 (PST)
X-Received: by 2002:a25:cad7:: with SMTP id a206mr25866004ybg.418.1605989488286;
        Sat, 21 Nov 2020 12:11:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605989488; cv=none;
        d=google.com; s=arc-20160816;
        b=tn7312KA5VINlJJgdyt/t2S05l/Y6WS+jE42O6uGbNPMQ5vtVfcy4dKH+iNzxay4bM
         bJIP4MA+Ql2sNPbsqNe/AsuPmqyXIEc8oqriLIY8B83moIvpzYPaNz5XV4xLleKz+2bi
         Zi26dVOKmBX5dci5/fKP6K1n5uPVkd1upxjFm61F8FN45o2inerV/zdxqlW3Stz5PEoW
         kR8bMpGDoFHhCtB3tmx7TWGNdS88PuibSomonxX7XCOoNNoha3ild4daTymBMtnssQBr
         ho4JyQ7Ws1+v9cYgBdlHCo72uvjrxcyPJ4cQJW5l31BA/EbCl/vNFTbqlm+NRbezSF5r
         mywg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2E/G1+BC++eqc5/VVuVWg3zAaLSLEIJOC7i/xjg7VSs=;
        b=CI0ky8b3ytEEMd58faEUm26FgmJ7JSh0DESW8hCJj0dMtsfKvuPJQgJvCFmPvsTNOY
         3ChD2FsqsymUFQamLKAR65Hq4NYpQ9dforFaM+krByI/z5ZQvYFJU9z89ClKvYfwleuC
         7gRNI2MHvBqff7N6++MasWuznmJzfH72X7et7ysqK8DG57wvh1ZduNemicYgTvGY9bOe
         EzUOeulOjwmQxVufHGa1u0c8Q43D/8pTXZIFZSWYJV50RztROepEODmtFPrulBEunClk
         25/9cFh7nR0c7zbW2q5N7+zizvuu8BkbDlhdZxBRGvpgFwe4Hp9i3vko5XEZw19ULiEX
         XXew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=d6GrwcPv;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id l7si427428ybt.4.2020.11.21.12.11.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Nov 2020 12:11:28 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id i13so10481037pgm.9
        for <clang-built-linux@googlegroups.com>; Sat, 21 Nov 2020 12:11:28 -0800 (PST)
X-Received: by 2002:a17:90a:f406:: with SMTP id ch6mr15105294pjb.134.1605989487549;
        Sat, 21 Nov 2020 12:11:27 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y10sm8724624pjm.34.2020.11.21.12.11.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2020 12:11:26 -0800 (PST)
Date: Sat, 21 Nov 2020 12:11:25 -0800
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 02/17] kbuild: add support for Clang LTO
Message-ID: <202011211204.211E2B12@keescook>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-3-samitolvanen@google.com>
 <CAKwvOdnYTMzaahnBqdNYPz3KMdnkp=jZ4hxiqkTYzM5+BBdezA@mail.gmail.com>
 <CABCJKucj_jUwoiLc35R7qFe+cNKTWgT+gsCa5pPiY66+1--3Lg@mail.gmail.com>
 <202011201144.3F2BB70C@keescook>
 <20201120202935.GA1220359@ubuntu-m3-large-x86>
 <202011201241.B159562D7@keescook>
 <CABCJKucJ87wa73YJkN_dYUyE7foQT+12gdWJZw1PgZ_decFr4w@mail.gmail.com>
 <202011201556.3B910EF@keescook>
 <CABCJKudy5xFfjBFpFPR255-NAb1yOSuVqsL4fFUwJGGWKDnmQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKudy5xFfjBFpFPR255-NAb1yOSuVqsL4fFUwJGGWKDnmQQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=d6GrwcPv;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Nov 20, 2020 at 05:46:44PM -0800, Sami Tolvanen wrote:
> Sure, this looks good to me, I'll use this in v8. The only minor
> concern I have is that ThinLTO cannot be set as the default LTO mode,
> but I assume anyone who selects LTO is also capable of deciding which
> mode is better for them.

It could be re-arranged similar to what you had before, but like:

config LTO
	bool "..."
	depends on HAS_LTO
	help
	  ...

choice
	prompt "LTO mode" if LTO
	default LTO_GCC if HAS_LTO_GCC
	default LTO_CLANG_THIN if HAS_LTO_CLANG
	default LTO_CLANG_FULL
	help
	  ...

	config LTO_CLANG_THIN
	...

	config LTO_CLANG_FULL
endchoice

Then the LTO is top-level yes/no, but depends on detected capabilities,
and the mode is visible if LTO is chosen, etc.

I'm not really sure which is better...

> > +config LTO_CLANG_THIN
> > +       bool "Clang ThinLTO (EXPERIMENTAL)"
> > +       depends on ARCH_SUPPORTS_LTO_CLANG_THIN
> > +       select LTO_CLANG
> > +       help
> > +         This option enables Clang's ThinLTO, which allows for parallel
> > +         optimization and faster incremental compiles compared to the
> > +         CONFIG_LTO_CLANG_FULL option. More information can be found
> > +         from Clang's documentation:
> > +
> > +           https://clang.llvm.org/docs/ThinLTO.html
> > +
> > +         If unsure, say Y.
> >  endchoice
> 
> The two LTO_CLANG_* options need to depend on HAS_LTO_CLANG, of course.

Whoops, yes. Thanks for catching that. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011211204.211E2B12%40keescook.
