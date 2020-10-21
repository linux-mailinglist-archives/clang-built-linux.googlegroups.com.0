Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBM7PX76AKGQEC5QKYMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C7329498E
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 10:56:20 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id y2sf811459oie.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 01:56:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603270579; cv=pass;
        d=google.com; s=arc-20160816;
        b=WCoaA45Yr+ebfX/c4xxOkZEzrsFI0O3PZqsuVkNoZ6rg0cK4qrGoM+R+mEeWoLZ56U
         TskH4oAgxYcyYhOEZw+3UxDrPeuBXpA+rhDItoYWwYCwD9CxljCh13DFdhqEDlxNgaLr
         IkrIJmfflA6lwjApSJOPAeNCECrUVD9wswR0cs1Itjy1mL+LfyhqeXxXgqpqbFhE6aVD
         KZRHZgQFWBtgWOz6+nT5ZSfZe91ntV3Bg4v4jbUh5vywrOl0okWb3cBXdzA8m5OfGB7b
         VXCwprOy4vqi1l3vrcIvINqARF9AxJYhZ4c2SZX1uq+CNT6G6bx8V/zIw/44z1NKtUcT
         GQvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UmBWt27ZWqsXOiQCg3k0VDJuIyfxAnFCCx1T/aUq5+g=;
        b=khoqcTeM0DvbsmyBy+ljYTjquUbY0BRZ8/eCW5TLhNcOjh+vsW/Sx44gK/ZBeC0Ajz
         WTP278wXjqkiGrmksNcIg07sUrnzOb9fzHHRcg2V0EU8CdTQFXZeqJByf8gnuXNY856o
         vY9YkbLVX6bwa4yzDkwl0AMBeiD6edaWR5b8F/xr2iaPM//6AhoK4Qamxo0BFY5NbC2J
         EpwtFWe0SatangQp32EOAAy0IUrCh7xkJy879WXqRcJIbhcM4++QRgB2fUBT4my15Mce
         L2Jcl18VO36aVUIUWt+gBV7BdqGeEIGTNhL9p/BQ21DF0zNBI6sfHF5m1nAqZVt5vpPh
         Civw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=IperxMxd;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UmBWt27ZWqsXOiQCg3k0VDJuIyfxAnFCCx1T/aUq5+g=;
        b=Xxlosvym4srLM+Z9N+MFNkk56JlJtm1QJ39QjWOSNspRI3DkKSuNg8Nbz2ZjpRwToe
         XAJSmrTeq+Co4ibizM8++5d4nQsLe27RBoLF7ocluFT9ggoEoOWJIfvYjwyaDAkLWhVj
         r/Tyq2OeapMrQnXE6KJc8wNhhONLsZrrSgxPT7PQAEEUnHYRMX9a+zRXMaaoGYRwFOrq
         hBfnFjdil5nmHhnuSpDrKkSxy5nmPBTsnMtUwZjzQIG8iPJ2A00B5L4PmHDmYOk51a0G
         2zQVO2cRF1xnFKRwu0qiu/lOIuH5aEElfqzfZV+Rnwidp8N/pqin3A1mnCQgKNH5yUpN
         iNBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UmBWt27ZWqsXOiQCg3k0VDJuIyfxAnFCCx1T/aUq5+g=;
        b=AMLSFzfQZ3lZQEnfBJH8EzPMvVe5Lu2dF8IXI8v78hekXt/zQdFL2Y0vzaMfCzufxt
         nQ6e6etT/73fK49MatlbcFrjbnPfTxBggFwovmcq82w4GlZB5liwIOIzXHD4barqqPHD
         vBVsAfmLe2Am17M2ZcdnfaWSJi07RDTeTkdtYB1ZQOh/VzCRgSFPYRZaoPKOIPGTO7JT
         BIgPlvaqkGd903bqz8MmV6wjFA7M0fCMTrkcxa2uuouKNTSuDmC+arVWV0IYjSv00h4h
         X6xx7rJc/IlCCT+RGWPMBWYHW4OjIh07KQJ+xGMMG1HwOfMVWfzef41IAGwm0Oi/x2J1
         qpYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533l4QF90kE/muYAEcMFmh0vUvw2Adh8FeMOWBQuQU4ygIvqdEIT
	7nhXRWsRUP8/hvnqjrLvtZw=
X-Google-Smtp-Source: ABdhPJwRZPosMbEoRG33nAfxPnIoofy61uhzk7ZFf1Q9rnyruxb5vFL2c1hJoLaKjGTyFxNrtyWBYw==
X-Received: by 2002:a54:448e:: with SMTP id v14mr1590556oiv.60.1603270579564;
        Wed, 21 Oct 2020 01:56:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:60a:: with SMTP id w10ls1191979oti.0.gmail; Wed, 21
 Oct 2020 01:56:19 -0700 (PDT)
X-Received: by 2002:a05:6830:1046:: with SMTP id b6mr1826303otp.363.1603270579247;
        Wed, 21 Oct 2020 01:56:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603270579; cv=none;
        d=google.com; s=arc-20160816;
        b=iLjx3xUxoftK1ibwYdmWIarYSvKlq1THQ4VOG9g03iecuzMrKcMaAX723nnvtNtfeD
         BNPzcEVqJsZBqiXtBjoIti50uB+58nP5azSfeRu7g5a2MbUH2eYumlYg1JOo7esT9L6u
         XPbxC6n5tBlulcJtNfNzmXmqwQiPobHyFBi5EwV+yXaKqf2B/TZFmrEErO+ExGlE8280
         Ys/R46lj9MUB2KDLtBKbgivC8E10ICxwKAjdWxjF61/7YTV/obTC6LrGc9ixitoBQh9n
         v0CErIEzGVfV+t2snZmFuv1mdF2HdgOvPsHrr54efivBwchgAo/55ffp7U1BPKnWOr5u
         oNCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=T1Nj/VgNWnCwEdvHUApSGaEXo57LUFa1cim9ekP5a3o=;
        b=skxXWHCrM4hHSV0TBHjJYpJZkIjerZwehLgP+NOfjTWff6pDK2O44qA+IwchQ4CpLU
         84rSx7OCu9TOOLMThunBzwq76Hk7S7qSl8uiVx6wQi9YCv4g0qWgeyB6v8gBZ2akT5EV
         IcDgNDSSE//euoDUHH3dAaXzMSpEMeBB70HP249iw102sLTmO6n61GGR/YPSxJNE6zfi
         YSPSRxWMTtmkFBAqfTKBq+YjvhfQZ3CxeZnxVD8X/qJMrulekBFbQHYDvjfU9CVFGaaG
         dBx8FFXIKZUwJKc/pvqfS3lAe6LyH5URpxsk8PrjRXsOhC8FOrf7xGnjvPSUibvnGllr
         b94w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=IperxMxd;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id i23si128111otk.5.2020.10.21.01.56.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 01:56:17 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kV9uj-0000lf-BR; Wed, 21 Oct 2020 08:56:09 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id D00FE304BAE;
	Wed, 21 Oct 2020 10:56:06 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C3AF5203CC497; Wed, 21 Oct 2020 10:56:06 +0200 (CEST)
Date: Wed, 21 Oct 2020 10:56:06 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Jann Horn <jannh@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com>
 <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
 <20201015203942.f3kwcohcwwa6lagd@treble>
 <CABCJKufDLmBCwmgGnfLcBw_B_4U8VY-R-dSNNp86TFfuMobPMw@mail.gmail.com>
 <20201020185217.ilg6w5l7ujau2246@treble>
 <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=IperxMxd;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Oct 20, 2020 at 12:24:37PM -0700, Sami Tolvanen wrote:
> > > Building allyesconfig with this series and LTO enabled, I still see
> > > the following objtool warnings for vmlinux.o, grouped by source file:
> > >
> > > arch/x86/entry/entry_64.S:
> > > __switch_to_asm()+0x0: undefined stack state
> > > .entry.text+0xffd: sibling call from callable instruction with
> > > modified stack frame
> > > .entry.text+0x48: stack state mismatch: cfa1=7-8 cfa2=-1+0
> >
> > Not sure what this one's about, there's no OBJECT_FILES_NON_STANDARD?
> 
> Correct, because with LTO, we won't have an ELF binary to process
> until we compile everything into vmlinux.o, and at that point we can
> no longer skip individual object files.

I think what Josh was trying to say is; this file is subject to objtool
on a normal build and does not generate warnings. So why would it
generate warnings when subject to objtool as result of a vmlinux run
(due to LTO or otherwise).

In fact, when I build a x86_64-defconfig and then run:

  $ objtool check -barf defconfig-build/vmlinux.o

I do not see these in particular, although I do see a lot of:

  "sibling call from callable instruction with modified stack frame"
  "falls through to next function"

that did not show up in the individual objtool runs during the build.

The "falls through to next function" seems to be limited to things like:

  warning: objtool: setup_vq() falls through to next function setup_vq.cold()
  warning: objtool: e1000_xmit_frame() falls through to next function e1000_xmit_frame.cold()

So something's weird with the .cold thing on vmlinux.o runs.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201021085606.GZ2628%40hirez.programming.kicks-ass.net.
