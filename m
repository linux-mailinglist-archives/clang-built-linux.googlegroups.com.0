Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBBO2UT7AKGQEJNPZJOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FF62CDD3C
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 19:23:02 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id 202sf2703142qkl.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 10:23:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607019781; cv=pass;
        d=google.com; s=arc-20160816;
        b=M5yJ3N83vyAfbO6F/EhMTEB5fcO5jeCX1rt5NuElYUdElxdR1IgvIx9WS7O50yqPhB
         SQDKpKBPcL7qH+licG67TMFNxu8r19K6u4KuLPq65y2Tqcu9M3Xasy4Cv8THUoz7fiTa
         NgNWiSIXppYxt10zengdFjTfDeEQ+9+ZZa/nffUMfjTz1FEyI3m4rlF5N/c4+kxuXoHW
         2nsgOGpWA/qEI5vhA0MV9iiT5gVsD/G3IwdUdM3UQGVd0oee7Nn7Dtk0M6PlcmZ3nSNM
         WYzjRoO7OPfvs0gDe2tMP0RwW1TJKPT+arBGCm+hP1DbMywYSoTySePx1p3Bxu/hmR52
         jMpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uxOyY7nGgWEfbV/vTlK05nd0z+icE5+d1CkqW75MR7U=;
        b=mazcjfl0xJdNv5QxHe8gqirx9fX7SZqIUFdC031ZLcx/qDi9rFiA1kOqzeN22j7CXf
         du2BZMC1IoUm7Q8Vf6tnCZwAyQXATV5oWxRWIAZwP43ScjUIEq6Vkq9fbdQAdteSvFhJ
         X1jHWac9mB1CZ0iEV3rxzVh2GT0MhFglmlgk/fM61L2abrBKRz3LPLxHaegBR2iph7AJ
         7miFdCA7PNxxPtANvraS7I3F3rGAvDnN4SKznajBSbhZEOMRvfw8djPS1MNBx4fWHgwT
         qMfL5AYtK5vfaY8fAHLoRdYHY/qb5FWblC5kcDOFNmhYw3AOJG1CYdzTQkPs5UO1uOIC
         oMnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j4tuv3ca;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uxOyY7nGgWEfbV/vTlK05nd0z+icE5+d1CkqW75MR7U=;
        b=Xu79Ys2C/1hp830XxhsslV6abAkLutBCcxo9WX521V9HH5U0+zC0QQ0wlGzS8sDStz
         7SfngfNR86kfNttBlYLPrMP1Z1UgDlR1+ECHlOlVH2aeDs3TeRVnMGWzU/BwPgHPAE+P
         IVMhF14OaMWWkyWS/k/VKkH+hpb0OguJIvUq8BbJdog8ErNZZXi4x8JyHcqj8H/NFVbq
         xqEVwiZ4v754XSw2DukBf4p+XZpfCkl87cNSTcoba2BmOUAc+wt1YKy6eTRQz7Ttz5Mo
         0VBeJmwz5RzZ3eM6bcv023x31mRwtoTrYJq0Ln2cKKhtaKWyMp19lbiUKZiZoAjQnPyr
         q8cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uxOyY7nGgWEfbV/vTlK05nd0z+icE5+d1CkqW75MR7U=;
        b=DGkh4HdlABcC+Sk2uHtUWcQ9vpiNtAbYUk6rzuEhlxwOLz7wy/0XSYQmVivY3Mmt/9
         7tQ6u0oBTPMlq4h+7iyUFlHuySinQhR/Ydqcrs1SfmzdAw/ug1JV+lUY9Wgynw3oTCBc
         4cPqp8Skc/jjsfVbcTmIhheoU3qWIRWAUIPi4A0+5ZVVSDXpR4Dsf3DIv92sER4qmh29
         JLwrVvni1c4Nuxm940rM5FjbopANdWmL/DDRvR2akXcPZGR2cXuWA/pNe54Y/WP4j0f8
         DT96641eP4/sdfhUR0FZ+4qUUYi7jZh1rrcX6E74ZrZy99DOp4fyfqifw0U5MmzApV4K
         3HUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EBp+exONh0v+LhWnbIENo6ap56sRq2J1Rm6pr5hpmBM4fPgv9
	n8z6Xtbe8kxd+Skhuvt3COM=
X-Google-Smtp-Source: ABdhPJzX972sAc+pqfvsBVm0ugl4lfEul85VpLHjp7dZz3b3RMcvqkmq0CtBCeq8OCN1AqS1XGpHkQ==
X-Received: by 2002:a37:9dd8:: with SMTP id g207mr4254379qke.294.1607019781690;
        Thu, 03 Dec 2020 10:23:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f90b:: with SMTP id v11ls1463047qvn.8.gmail; Thu, 03 Dec
 2020 10:23:01 -0800 (PST)
X-Received: by 2002:a05:6214:b83:: with SMTP id fe3mr202513qvb.24.1607019781324;
        Thu, 03 Dec 2020 10:23:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607019781; cv=none;
        d=google.com; s=arc-20160816;
        b=g6f4cf/XbjbvlPoaCFsHtuzpchkK3QKVJlUJU6AU+bbjsuShQuiFcYJOnCY5sCGQzJ
         k1xClFzVTfav74+KbO72QZIvX0rXiwqLM2yHrnl8ViepeEn2qiaSu38/LQm3g3CeeSGI
         W8jnHfcE+0C5fLEqoP3OVQaZe6vhMcenAyUaklnRDPvb+grHy+bsmurEy+cIgZY3guLe
         hBlFs5J6EgRbwN4SE6V0kSE0Fr6wj3bq39w8U+fIboVgf4Z+OZRvPoe+A2G6ryoAQokN
         DI3Jw0pPKhtXnuwc4Lm8n+pOMO52DK1rrYcEFi5T1gMOMETApM3j1WLmsmN5prJ4OqlC
         /4SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:dkim-signature:date;
        bh=v/E73XkVZifcNl/7djpNXYa1P7zIy2HhP5LZGyuVODI=;
        b=glf0bevzwEqHl4qouHzuBhS4nGLH/pMrblpDxzaZQQCQzYVfWXMn66u5aXVpeWeVAk
         LbRW+110dZgtRoAWT+9rbWL2/URKPmQMou64aWFLbXRIsDfCfyVmr0w9ROSlpYIA/aTq
         QcOJVkk3oyqV8sdYzprzBbXWeZoGascAFQ97MteloVSlMghg4imWqsLfNa3+D3LEb+23
         qe8NM4tuDMTLGNbSWzKFuR3JXSaqdA3H5sFQGhFI7eFsBMU6oCE0GaIEwSHMft5IEZs+
         OKIy0B0qqGCwOUB1EIe6pFG5n+mgt4MUz2PDdANhXO4qHkbRB68CTVz++3GF3vHgz4jF
         VaYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j4tuv3ca;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j44si166169qtc.2.2020.12.03.10.23.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Dec 2020 10:23:01 -0800 (PST)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Thu, 3 Dec 2020 18:22:53 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	PCI <linux-pci@vger.kernel.org>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
Message-ID: <20201203182252.GA32011@willie-the-truck>
References: <20201201213707.541432-1-samitolvanen@google.com>
 <20201203112622.GA31188@willie-the-truck>
 <CABCJKueby8pUoN7f5=6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKueby8pUoN7f5=6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=j4tuv3ca;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Dec 03, 2020 at 09:07:30AM -0800, Sami Tolvanen wrote:
> On Thu, Dec 3, 2020 at 3:26 AM Will Deacon <will@kernel.org> wrote:
> > On Tue, Dec 01, 2020 at 01:36:51PM -0800, Sami Tolvanen wrote:
> > > This patch series adds support for building the kernel with Clang's
> > > Link Time Optimization (LTO). In addition to performance, the primary
> > > motivation for LTO is to allow Clang's Control-Flow Integrity (CFI)
> > > to be used in the kernel. Google has shipped millions of Pixel
> > > devices running three major kernel versions with LTO+CFI since 2018.
> > >
> > > Most of the patches are build system changes for handling LLVM
> > > bitcode, which Clang produces with LTO instead of ELF object files,
> > > postponing ELF processing until a later stage, and ensuring initcall
> > > ordering.
> > >
> > > Note that arm64 support depends on Will's memory ordering patches
> > > [1]. I will post x86_64 patches separately after we have fixed the
> > > remaining objtool warnings [2][3].
> >
> > I took this series for a spin, with my for-next/lto branch merged in but
> > I see a failure during the LTO stage with clang 11.0.5 because it doesn't
> > understand the '.arch_extension rcpc' directive we throw out in READ_ONCE().
> 
> I just tested this with Clang 11.0.0, which I believe is the latest
> 11.x version, and the current Clang 12 development branch, and both
> work for me. Godbolt confirms that '.arch_extension rcpc' is supported
> by the integrated assembler starting with Clang 11 (the example fails
> with 10.0.1):
> 
> https://godbolt.org/z/1csGcT
> 
> What does running clang --version and ld.lld --version tell you?

I'm using some Android prebuilts I had kicking around:

Android (6875598, based on r399163b) clang version 11.0.5 (https://android.googlesource.com/toolchain/llvm-project 87f1315dfbea7c137aa2e6d362dbb457e388158d)
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /usr/local/google/home/willdeacon/work/android/repo/android-kernel/prebuilts-master/clang/host/linux-x86/clang-r399163b/bin

and:

LLD 11.0.5 (/buildbot/tmp/tmpx1DlI_ 87f1315dfbea7c137aa2e6d362dbb457e388158d) (compatible with GNU linkers)

> > We actually check that this extension is available before using it in
> > the arm64 Kconfig:
> >
> >         config AS_HAS_LDAPR
> >                 def_bool $(as-instr,.arch_extension rcpc)
> >
> > so this shouldn't happen. I then realised, I wasn't passing LLVM_IAS=1
> > on my Make command line; with that, then the detection works correctly
> > and the LTO step succeeds.
> >
> > Why is it necessary to pass LLVM_IAS=1 if LTO is enabled? I think it
> > would be _much_ better if this was implicit (or if LTO depended on it).
> 
> Without LLVM_IAS=1, Clang uses two different assemblers when LTO is
> enabled: the external GNU assembler for stand-alone assembly, and
> LLVM's integrated assembler for inline assembly. as-instr tests the
> external assembler and makes an admittedly reasonable assumption that
> the test is also valid for inline assembly.
> 
> I agree that it would reduce confusion in future if we just always
> enabled IAS with LTO. Nick, Nathan, any thoughts about this?

That works for me, although I'm happy with anything which means that the
assembler checks via as-instr apply to the assembler which will ultimately
be used.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203182252.GA32011%40willie-the-truck.
