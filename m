Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6WOUX7AKGQENRMPL6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id B41CF2CE1AB
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 23:32:27 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id h2sf2057391pjs.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 14:32:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607034746; cv=pass;
        d=google.com; s=arc-20160816;
        b=rLDm/mwVKR26mlQwVwXABpx5iwEcXwMTm/tKGdk3GHWUxXXtKONVrZRE2o4h9CzKSF
         6a5We1TDE/qO7ABGR8iRejFdGM3VWCje8CTbNghPEbPXIsFRJm+8ytBLy3/71JvVH2ur
         iG1sXnpYv0/tg5VhyureRXDh4p7tWhGZ6Xeauy/ZSXkI7X3Rl/9mun1lJyupAJ/XuHKG
         osunq0astsMvPK4x6BTyfsHUZzEY/cLRcnRm3pMPpYhaHpVngQMVbuDyE0Rqi636a7o6
         Nr8+vVtH3d01SslPGhslU8fEAMKmwINoriLUBqJ3iL8pB37AkQE053RTeT1Eh1+6HTxh
         Afdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vH3gJNhn8l45OZByP2pgyzoVyy6xAV2+OI+d3wBM2sM=;
        b=Oua8/LGcLXTEg8hhP+aUCe1x2S5o7XiWiwBAfLbLU25FvCt9tXZCFSj3dAyVXmW3rU
         eVOiFlydh+sAnrkUnUFoRDRl3+rR0lrfGINnltKByEbBx08rtGmZZuHLbrl6Q3n5N6D/
         SLaGl6yKIHxKk59dTS2PXMZCByVTohRkC0wTUtk6QzwiEcSnBide5sy/iOJHv82VoUCr
         rqQJxEbfUv9Rk1bpbvECLIwH0U1gs6P/25FdrPCCNMsqiEuNIDnRWD8FSt6B0HmVsVnV
         QvwKyosN60ocr8PCcKb7TIE/LUBv7xCLDuZIMulYtmJdXX69GbMNd8gHbQCjahtVtfH/
         /Ayw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gelHd6qa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vH3gJNhn8l45OZByP2pgyzoVyy6xAV2+OI+d3wBM2sM=;
        b=b/7jnO2UkHIuRnoBQ9LjnZDzuAEQwKInV/WaNTdn9XBYyAv4PcYIRo2ClrsUPVkw3X
         sm2nSGUWXs0nHnf55raoqCClYXijbOzVLRf1SosBojczKO9p6qLdG9/IH/DXVbxyAF7A
         SiMLsXffpyBPDNSBcYduDurEc0A53hZtW8Dr1RJFqnEmyS6opMZHpVRxuaPto1gcmQHO
         C9Xx0kAuKdqlsmEwvLK3ZTyktnPmwBwV7lphz8oDaKnS1NYJLe8ndswHTdkkNJeLcaFS
         G2U3vv/3C+MaPoaAbvSv+gL3KRwSKeL9IHEPTMt6NnWx4/nhAaTzmg0yznQTYB/WqhqQ
         Zc+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vH3gJNhn8l45OZByP2pgyzoVyy6xAV2+OI+d3wBM2sM=;
        b=TaQylAypm/wLUul3GqvCJjQrD3hm1f8XphdrdSQiIX7IUpfrbCNrsHClzuvkpckXeH
         GWJ4p1tzZjbjXoKJ7vRgIsSe7xRJS8Ezz6Mi5F+vBgmWot4hvXXSg1Yb4BFpcH4/E1Dn
         CjH05zhEmxEOXjFGdWhHcPaEUArarxbGLHUChcR9yHOVHdiMdtXmceFFiVd7QlR3oPge
         GI+F234KGN1BhbstZA/w2NP6jVu87YEXeuJJY/KI31wTkLJR394VmVvNBd3q9X96W4Ac
         aCltc4mU1cuwQFoDjMdMScuToQaAl4xkembNeqDiseJZJ02eHc2wyuPEhaoCYSCzbi8r
         Ch2g==
X-Gm-Message-State: AOAM5330DkroddbS0eTCbAzfaobAIEUMNgVjoeguRmXcA3P9USk275HD
	41VLaKkbQYnoeWeqLRctRj8=
X-Google-Smtp-Source: ABdhPJyrs3l/DlXnTKFK09mQF8L26/69VmfhDNzCw6iqu8V4xzt3NydMdIKoWZia+Zvl13TarmYtmg==
X-Received: by 2002:a17:90a:4093:: with SMTP id l19mr1184682pjg.218.1607034746391;
        Thu, 03 Dec 2020 14:32:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:52d1:: with SMTP id g200ls730664pfb.8.gmail; Thu, 03 Dec
 2020 14:32:25 -0800 (PST)
X-Received: by 2002:a63:784a:: with SMTP id t71mr3241972pgc.87.1607034745769;
        Thu, 03 Dec 2020 14:32:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607034745; cv=none;
        d=google.com; s=arc-20160816;
        b=Fp9FHenAdNFCO2eKiY6SqFTxRY00K1164pRGFX3vGnHqogWkysAEK2rOSHT9nFrHNU
         ltzTtmppZWNUtHlQHCC4mX0JXEwTId3CIzYO3GrWDfQaLBB5WQvnG2xxfFIeEahlKB0O
         ALU1LpgIp7v5Sr0mrLY1B6SOccH1zwcxrrSEazMQUBQh+tespCrnXge3rLggElufbeq+
         hywzcuBtvyU2YgHkGW6NHXSYBZtIRAQfMaUkXbTpkY3HyVu4yIoLNd7EHSfyCUSCX9vf
         2MD3v9xUStyxRWRDNiPPFNcAvkITeH+4Zg55teL+q3doop36SbKywPxnr1SvCIWUtCcu
         kAog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TmvlHcKNE+BZSUGjT3sP+ZmkJmCYLaFZSs3K50hnDTw=;
        b=Zj/NOiESU5RcXJH8gs5z6G4jaNYkapSliEScfDsSkoyqEIA7CanlYCi3nURg8bUO9i
         NBXwqYk/3oU6T3mxy9WtcZDB0fPsx1ObNWSzngdCaDynTq1n2EIuZVoNoohqB5DQrpo1
         O8NUnaHxA0u/kT+yDyxKjzw9reBe16rKxIf4wWE15r/8ZhKdi7Nb62tnV/yARqglHdpc
         /uZP919ICp/KlvGqiZv1losvaex2mS/nMrs857gcLyq4hOs7UPmQ+EL32aU6YrWGNENM
         OTzm7TJ4JC1ro80f6AAiLvRmGmxrp4cJXEkju9CLZGjly8RqQhrvEZZ312MkjNQoBOn4
         6Axg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gelHd6qa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id d2si344581pfr.4.2020.12.03.14.32.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 14:32:25 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id v3so1962716plz.13
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 14:32:25 -0800 (PST)
X-Received: by 2002:a17:90a:6fa1:: with SMTP id e30mr1244326pjk.32.1607034745179;
 Thu, 03 Dec 2020 14:32:25 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <20201203112622.GA31188@willie-the-truck> <CABCJKueby8pUoN7f5=6RoyLSt4PgWNx8idUej0sNwAi0F3Xqzw@mail.gmail.com>
 <20201203182252.GA32011@willie-the-truck>
In-Reply-To: <20201203182252.GA32011@willie-the-truck>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Dec 2020 14:32:13 -0800
Message-ID: <CAKwvOdnvq=L=gQMv9MHaStmKMOuD5jvffzMedhp3gytYB6R7TQ@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Will Deacon <will@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>, Jian Cai <jiancai@google.com>, 
	Kristof Beyls <Kristof.Beyls@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gelHd6qa;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Thu, Dec 3, 2020 at 10:23 AM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Dec 03, 2020 at 09:07:30AM -0800, Sami Tolvanen wrote:
> > On Thu, Dec 3, 2020 at 3:26 AM Will Deacon <will@kernel.org> wrote:
> > > I took this series for a spin, with my for-next/lto branch merged in but
> > > I see a failure during the LTO stage with clang 11.0.5 because it doesn't
> > > understand the '.arch_extension rcpc' directive we throw out in READ_ONCE().
> >
> > I just tested this with Clang 11.0.0, which I believe is the latest
> > 11.x version, and the current Clang 12 development branch, and both
> > work for me. Godbolt confirms that '.arch_extension rcpc' is supported
> > by the integrated assembler starting with Clang 11 (the example fails
> > with 10.0.1):
> >
> > https://godbolt.org/z/1csGcT
> >
> > What does running clang --version and ld.lld --version tell you?
>
> I'm using some Android prebuilts I had kicking around:
>
> Android (6875598, based on r399163b) clang version 11.0.5 (https://android.googlesource.com/toolchain/llvm-project 87f1315dfbea7c137aa2e6d362dbb457e388158d)
> Target: x86_64-unknown-linux-gnu
> Thread model: posix
> InstalledDir: /usr/local/google/home/willdeacon/work/android/repo/android-kernel/prebuilts-master/clang/host/linux-x86/clang-r399163b/bin
>
> and:
>
> LLD 11.0.5 (/buildbot/tmp/tmpx1DlI_ 87f1315dfbea7c137aa2e6d362dbb457e388158d) (compatible with GNU linkers)

On Thu, Dec 3, 2020 at 10:22 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> 11.0.5 is AOSP's clang, which is behind the upstream 11.0.0 release so
> it is most likely the case that it is missing the patch that added rcpc.
> I think that a version based on the development branch (12.0.0) is in
> the works but I am not sure.

Yep, I have a lot of thoughts on the AOSP LLVM versioning scheme, but
they're not for LKML.  That's yet another reason to prefer feature
detection as opposed to brittle version checks.  Of course, as Will
points out, if your feature detection is broken, that helps no
one...more thoughts below.

> > > We actually check that this extension is available before using it in
> > > the arm64 Kconfig:
> > >
> > >         config AS_HAS_LDAPR
> > >                 def_bool $(as-instr,.arch_extension rcpc)
> > >
> > > so this shouldn't happen. I then realised, I wasn't passing LLVM_IAS=1
> > > on my Make command line; with that, then the detection works correctly
> > > and the LTO step succeeds.
> > >
> > > Why is it necessary to pass LLVM_IAS=1 if LTO is enabled? I think it
> > > would be _much_ better if this was implicit (or if LTO depended on it).
> >
> > Without LLVM_IAS=1, Clang uses two different assemblers when LTO is
> > enabled: the external GNU assembler for stand-alone assembly, and
> > LLVM's integrated assembler for inline assembly. as-instr tests the
> > external assembler and makes an admittedly reasonable assumption that
> > the test is also valid for inline assembly.
> >
> > I agree that it would reduce confusion in future if we just always
> > enabled IAS with LTO. Nick, Nathan, any thoughts about this?
>
> That works for me, although I'm happy with anything which means that the
> assembler checks via as-instr apply to the assembler which will ultimately
> be used.

I agree with Will.

I think interoperability of tools is important.  We should be able to
mix tools from GNU and LLVM and produce working images. Specifically,
combinations like gcc+llvm-nm+as+llvm-objcopy, or clang+nm+as+objcopy
as two examples.  There's a combinatorial explosion of combinations to
test/validate, which we're not doing today, but if for some reason
someone wants to use some varied combination and it doesn't work, it's
worthwhile to understand the differences and issues and try to fix
them.  That is a win for optionality and loose coupling.

That's not what's going on here though.

While I think it's ok to select a compiler and assembler and linker
etc from ecosystem or another, I think trying to support a build that
mixes or uses different assemblers (or linkers, compilers, etc) from
both for the same build is something we should draw a line in the sand
and explicitly not support (except for the compat vdso's*...).  ie. if
I say `make LD=ld.bfd` and ld.lld gets invoked somehow (or vice
versa); I consider that a bug in KBUILD.

That is what's happening here, it's why as-instr feature detection is
broken; because two different assemblers were used in the same build.
One for inline asm, a different one for out of line asm.  At the very
least, it violates the Principle of Least Surprise (or is it the Law
of Equivalent Exchange, I forget).

In fact, lots of the work we've been doing to enable LLVM tools to
build the kernel have been identifying places throughout KBUILD where
tools were hardcoded rather than using what make was told to use, and
we've been making progress fixing those.  The ultimate test of Linux
kernel build hermiticity IMO is that I should be able to build a
kernel in an environment that only has one version of either
GCC/binutils or LLVM, and the kernel should build without failure.
That's not the case today for all arch's; cross compiling compat vdsos
again are a major pain point*, but we're making progress.  In that
sense, the mixing of an individual GNU and LLVM utility is what I
would consider a bug in KBUILD.  I want to emphasize that's distinct
from mixing and matching tools when invoking make, which I consider
OK, if under-tested.

Ok (mixes GNU and LLVM tools; gcc is the only compiler invoked, ld.lld
is the only linker invoked):
$ make CC=gcc LD=ld.lld

Not ok (if ld.bfd or both are invoked)
$ make LD=ld.lld

Not ok (if ld.lld or both are invoked)
$ make LD=ld.bfd

Not ok (if clang's integrated assembler and GAS are invoked)
$ ./scripts/config -e LTO_CLANG
$ make LLVM=1 LLVM_IAS=1

The mixing of GAS and clang's integrated assembler for kernel LTO
builds is a relic of a time when this series was first written when
Clang's integrated assembler was in no form ready to assemble the
entire Linux kernel, but could handle the inline asm for aarch64.
Fortunately, ARM's LLVM team has done great work to ensure the latest
extensions like RCpc are supported and compatible, and Jian has done
the hard work ironing out the last mile issues in clang's assembler to
get the ball in the end zone.  Removing mixing GAS and clang's IA here
ups the ante and removes a fallback/pressure relief valve, but I'm
fine with that.  Requiring clang's integrated assembler here aligns
incentives to keep this working and to continue investing here.

Just because it's possible to mix the use of clang's integrated
assembler with GNU assembler for LTO (for some combination of versions
of these tools) doesn't mean we should support it, or encourage it,
for all of the reasons above.  We should make this config depend on
clang's integrated assembler, and not support the mixing of assemblers
in one build.

Thou shalt not support invoking of different tools than what's
specified*.  Do not pass go, do not collect $200. Full stop.

* The compat vdso's are again a special case; when cross compiling
using GNU tools, a separate binary with a different target triple
prefix will typically get invoked than what's used to build the rest
of the kernel image.  This still doesn't cross the GNU/LLVM boundary
though, and most importantly doesn't involve linking together object
files that were built with distinct assemblers (for example).

So I'd recommend to Sami to simply make the Kconfig also depend on
clang's integrated assembler (not just llvm-nm and llvm-ar).  If
someone cares about LTO with Clang as the compiler but GAS as the
assembler, then we can revisit supporting that combination (and the
changes to KCONFIG), but it shouldn't be something we consider Tier 1
supported or a combination that need be supported in a minimum viable
product. And at that point we should make it avoid clang's integrated
assembler entirely (I suspect LTO won't work at all in that case, so
maybe even considering it is a waste of time).

One question I have to Will; if for aarch64 LTO will depend on RCpc,
but RCpc is an ARMv8.3 extension, what are the implications for LTO on
pre-ARMv8.3 aarch64 processors?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnvq%3DL%3DgQMv9MHaStmKMOuD5jvffzMedhp3gytYB6R7TQ%40mail.gmail.com.
