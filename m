Return-Path: <clang-built-linux+bncBCIO53XE7YHBBFOMS34QKGQEUCZBAUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B442353C3
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 19:27:50 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id v12sf13912250iln.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 Aug 2020 10:27:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596302870; cv=pass;
        d=google.com; s=arc-20160816;
        b=x70PEw07uwfTugxVUgL5KTK64g/iAwvPNE6VDc7483rIAzfkTOIwBdc9mtua0Klphy
         4lEzJ/IxOz0T7+B4O6/u8tei1wF/JAEx826x0huL1Ep22VVBeSYvcT7VPuWjWVULWb3/
         F8732oZkhNOnm/WB/llhCMh5GPr3ETcp0bfUpbJe3m92ibidkRhXYx0Iaxh7nklPfbnl
         AfwH2Xx+e44rM3B2qJJLNQ3zgT7evq52xZknvo7Fnzaymzb0yP5ZYbw+pU+inK8GItGr
         /OFRsnKWIFTkupLRRTXZjYxUnMHtqX4Iy0gHs1AAp5Nfw0V/Irx/skiaNNTU3Y/468cM
         GUAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=gyQcX7Zkec9t7iz+HzRnaOYuhDqLHjxm4+D8v98Ej3g=;
        b=vh228MPtIL+3Jt48uOZEWm3MFw5K9Jm/c6yIHAo1Fb9aLybvwGiNaQonHxiURLPKeg
         YsC4Jedi1fh5dSX4S3ViqMijjdHEpukzcuPSgNkaxdAmt9iGN3Rg8hs6muXTQKtw0ri3
         P71/nGV4NPhZgDbNcWv4s1tOSNCyB+uS4jFQyLZV3BOOfPujjA6HIuArxfJdbcxF53WH
         a0dwaXBRCmuh+qU02TiCKYRxJkW0ECZyVw3XHn4k5vF7PiXDBLH02x9PD8t+0eTwYXid
         m2JLbjWaYdGs+LPSvF10MLR/t/f/rbE1D0Xk8u+CJoKZy5k7t/g2tciW08pIhydhC2Hn
         qeQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lDrKUAaQ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gyQcX7Zkec9t7iz+HzRnaOYuhDqLHjxm4+D8v98Ej3g=;
        b=tsO2ptJP7GrIorHrE05+WKAXk6d3pdKkWt8unsNXk1+LDNt9UucAodcQYfCQaCwqt3
         /K2/ZhOqpAa6LZK2HwCza2XQUk9EzKof1WEfzo1ioDQYUilsrSVPt5EFDpDTMKWYF8st
         Ent9Nui6aJMPtr4dYMjbPiOuxjEs9evFWAKTc2Vr0BDCHewnu8f+GTfNiGpNrdNTnyGT
         kyzcj1Ov0gZxAR7pmlIJ4L350bmio07tpdUE62pq2Rb0ctzkf486Er4k4tlry3iU7HqR
         VhiszG61vBODvxx/fmzjpTh5P47wodzqOZMWoxioTdAiYHbgcZBFhFvbw3wZ4q4wdhRi
         It3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gyQcX7Zkec9t7iz+HzRnaOYuhDqLHjxm4+D8v98Ej3g=;
        b=QLdrCcW14nnHmmRi2ekhhAZgO0Sdfw1QtYRJygZRM6+5ybs7+KFm53/ya6r+bjP/0c
         MFrCNr9zWxrsDJSQFu8ABgg0oPOxMsU5bYij0bA81VRNhBCg4acMtMapVBgpUKjlVhuv
         w+KNflCoS+E5hFv/pVyFdMAaeSa0e7k9bEY0E2QEK7/EIENfoSMGH4mDH4t7wHNyxO+m
         XdgYFvNOmEtac1OgNfQxaMVJSl9+s0+ByvDYxaMkf1udh+cmzh3aTXTBBE24GKodfiYi
         1bF/zd6qg9LBHR5D6yJ/5DZpIOkHDJOc7H6vyDKYMurU9+HeMauyrzzdu2h65WD3ezRm
         AMOQ==
X-Gm-Message-State: AOAM533h1C3xtEC6Ck7zLdYssCjz6RBvIG2EPdTaDIITYWTrzQOi/jeJ
	0XRVmjC2FEpwxVJcQ7KOAX0=
X-Google-Smtp-Source: ABdhPJzJlYxMf6argS4NZBg28J/Tq/8H9VrYaWPq0tsZ1xT0tp3vCa4wP/cu5G6DsxN1kgZl5w6pZA==
X-Received: by 2002:a02:820b:: with SMTP id o11mr11598327jag.136.1596302869909;
        Sat, 01 Aug 2020 10:27:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:84d6:: with SMTP id z22ls518592ior.4.gmail; Sat, 01 Aug
 2020 10:27:49 -0700 (PDT)
X-Received: by 2002:a05:6602:2417:: with SMTP id s23mr8937897ioa.94.1596302869569;
        Sat, 01 Aug 2020 10:27:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596302869; cv=none;
        d=google.com; s=arc-20160816;
        b=tmVqoHBAQ5YV8xWT3Zcoi2jUF8tkGCuSlaDBBpwSO4XyI18WN9rLyDwXj7VCyCxerH
         E4lqI6IuGLxKZ7j+s+natEREFIg0EF9gElW/OqGVCdpR4ox7JHc3K6Wo4WqLSEgb3HnO
         gBWUCtxf8UAX9HYVwmDXUQNXSKEm3XZVlVzjmg+D4kYyYh6UUV0fv89rIGLbxViwkB8z
         HnwHvn/Mu/c87coiXJj4X+7in3iBmlyCkyNmT04EqKETLz+rLH/PquqpEznEBBLS8ClY
         0CvEvVWzUhJ4auR7eVb+7Dzj08DTZjl9Q2rSQKeaedhVaPEs85E/g5QiMciBMp6zgBM/
         ch8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=sH4ZgoE2+krh+pccRrSZUcqU9PhKP/eT8yH9LsNvEAE=;
        b=i+vjP9zyG3yjGVUc6l9bVZG+Zm9Amp3K+4ovx0KWFE4c/xDSYQNAEbUe8OwE4hC3pz
         ksatsCKXWzwHhSR8pYoLJ08B7swcwA2A6onKko010QeDP21symdW8zUsmraIgAv1ahQd
         TnZ7O4aOxsYE9omk2mvs1sVgQA7djZ0wxyNM9HeOWxx3SIOis5+oL7iraJUovvcrI/k3
         B1CdToiDhTu+qC7/QUc1e7T/2a21nt1MDljbUekf8ssfg8MwOIBSpJnqgQ8GsZ5hAZax
         elI5KlTrUjguM8J1n708pPocXlCFYwjn8VGktfZwgU5xKbUnvUemgiSqhYUCxqjrt3LI
         DYRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lDrKUAaQ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf43.google.com (mail-qv1-xf43.google.com. [2607:f8b0:4864:20::f43])
        by gmr-mx.google.com with ESMTPS id z6si645684ioj.0.2020.08.01.10.27.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Aug 2020 10:27:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43 as permitted sender) client-ip=2607:f8b0:4864:20::f43;
Received: by mail-qv1-xf43.google.com with SMTP id dd12so10562390qvb.0
        for <clang-built-linux@googlegroups.com>; Sat, 01 Aug 2020 10:27:49 -0700 (PDT)
X-Received: by 2002:ad4:43c9:: with SMTP id o9mr9657897qvs.217.1596302868608;
        Sat, 01 Aug 2020 10:27:48 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z197sm13658960qkb.66.2020.08.01.10.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2020 10:27:48 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sat, 1 Aug 2020 13:27:46 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>, stable@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Andi Kleen <ak@linux.intel.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Kristen Carlson Accardi <kristen@linux.intel.com>
Subject: Re: [PATCH v5 13/36] vmlinux.lds.h: add PGO and AutoFDO input
 sections
Message-ID: <20200801172746.GC3249534@rani.riverdale.lan>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-14-keescook@chromium.org>
 <20200801035128.GB2800311@rani.riverdale.lan>
 <202007312237.4F385EB3@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007312237.4F385EB3@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lDrKUAaQ;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f43
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Jul 31, 2020 at 11:18:02PM -0700, Kees Cook wrote:
> On Fri, Jul 31, 2020 at 11:51:28PM -0400, Arvind Sankar wrote:
> > 
> > This also changes the ordering to place all hot resp unlikely sections separate
> > from other text, while currently it places the hot/unlikely bits of each file
> > together with the rest of the code in that file. That seems like a reasonable
> 
> Oh, hmm, yes, we aren't explicitly using SORT() here. Does that mean the
> input sections were entirely be ordered in compilation unit link order,
> even in the case of orphan sections? (And I think either way, the answer
> isn't the same between bfd and lld.) I actually thought the like-named
> input sections were collected together first with lld, but bfd strictly
> appended to the output section. I guess it's time for me to stare at -M
> output from ld...

I don't know what happened to the orphans previously. But .text.hot and
.text.unlikely will now change ordering. It sounds from below like this
wasn't intentional? Though it does seem to be how BFD's default linker
scripts lay it out.

> 
> Regardless, this patch is attempting to fix the problem where bfd and lld
> lay out the orphans differently (as mentioned above, lld seems to sort
> them in a way that is not strictly appended, and bfd seems to sort them
> strictly appended). In the case of being appended to the .text output
> section, this would cause boot failures due to _etext not covering the
> resulting sections (which this[1] also encountered and fixed to be more
> robust for such appended collection -- that series actually _depends_ on
> orphan handling doing the appending, because there is no current way
> to map wildcard input sections to their own separate output sections).
> 
> > change and should be mentioned in the commit message.
> > 
> > However, the history of their being together comes from
> > 
> >   9bebe9e5b0f3 ("kbuild: Fix .text.unlikely placement")
> > 
> > which seems to indicate there was some problem with having them separated out,
> > although I don't quite understand what the issue was from the commit message.
> 
> Looking at this again, I actually wonder if we have bigger issues here
> with dead code elimination:
> 
> #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
> #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
> ...
> 
> that would catch: .text.hot .text.fixup .text.unlikely and .text.unknown
> but not .text.hot.*, etc (i.e. the third dot isn't matched, which is,
> I assume, why Clang switched to adding a trailing dot). However, this
> patch lists .text.hot .text.hot.* first, so they'd get pulled to the
> front correctly, but the trailing ones (with 2 dots) would not, since
> they'd match the TEXT_MAIN wildcard first. (This problem actually existed
> before this patch too, and is not the fault of 9bebe9e5b0f3, but rather
> the addition of TEXT_MAIN, which could potentially match .text.unlikely
> and .text.fixup)

The existing comment on TEXT_TEXT mentions that issue. However, note
that the dead code stuff is only available currently on mips and ppc,
and is hidden behind EXPERT for those, so I'm not sure if anyone
actually uses it.

9bebe9e5b0f3 predates LD_DEAD_CODE_DATA_ELIMINATION, and there were no
wildcards I can see in .text at the time, which is why I don't
understand what problem is referred to in the commit message.

Btw, for the FGKASLR stuff, instead of keeping the output sections per
function, couldn't you generate a table of functions with sizes, and use
that when randomizing the order? Then the sections themselves could be
collected into .text explicitly.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200801172746.GC3249534%40rani.riverdale.lan.
