Return-Path: <clang-built-linux+bncBC2ORX645YPRBRH7335AKGQES272PXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C3126174C
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 19:30:46 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id a184sf78957pgc.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 10:30:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599586244; cv=pass;
        d=google.com; s=arc-20160816;
        b=scFhQ2UdMw5qo3DbRkFM8BEqM9QS4xVtJfX+ksX0pa11ZWUkJVyJwpQpX2bSvfkqBj
         QA8Gv9vcefpzQ0uLWiQUHDrjW000huCDX8tq9hI3kuAtoZAQvZVuLJ9UhyIbzQVaIr6t
         Cks4mCXgH/GRZqGJI1hHPDUfVHj9kY/04DE47q/uv1rYZnml5V9qV1YbA9GT0n2pVVHx
         8rkhVlKGrZ9GiJdWm4sdXR0wXXHXf3f/V47y3FeQdJHQOzKj5JlgILE5niZOl4bLEGYu
         PaLhEqqdKAOzo2afVM8mSx59qwTpyIqGr6PFhT24uzjoovmqzZRgUgQ78hYSxNM/kF/y
         D9Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Gq2cegI0ECbR/YcsGXMVdZ6KdsxDosKN2gngisltFoc=;
        b=hecRVCaCLhvwhRSLCUoixfrRHkmNOrGYTF97HQKzYXNVxG5cj5ttCkoVs+qVMHiVLz
         OGuDvegXtXCcScawzs0NO8ugsoJl7VNJt6ALb6efs4nHSDRMKKSRBsryyOv/h1KK30Ur
         8DBDnDJreYhTpUW4LERAjhE+MAGpo/9rKBFiEtfa//a/w/apxeSMQ8ajsfdTm5qgBfrG
         U7Z21b8Evoc91DRlhj9/3siycPKcqegoJtjggo0hwTqwoYz0bQIyKKrpV4+jtHhUNpAW
         5421fBNiXf/obnBPRj6dhh7Iiojjvtcc7KCZs2Z+kHKfLzTt+FTlfMj+IrV8NlhlOsgu
         uVhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AzIN32ul;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Gq2cegI0ECbR/YcsGXMVdZ6KdsxDosKN2gngisltFoc=;
        b=st2oPTna1oV4NkceJttFP3oWAMcP5+OcHatOmUeZDIpxATA2/vz+cM2QvslG+aGiVg
         dheJkOYwyatgaKCrTsWvVgO6md5K31n26F+Wr6SCGGP/dfj7uT4OrODIRXpYuYvqLu+B
         wu03tq+lcuin/d6cDioaeqsu95R19quhpaDUyXDt6M+WFAf5f/hORKx3+c9ppKMwiKYM
         vnV1e+3htJOo9+dXdwD2/xGQr65fGxFz05sendaEIm08lyqShf+vyRkoxhSG/E06C2vJ
         x0uYSBNJ5U1opNcxzBAqOzSC1BsFSGQk5C4nmFGZ/iV4H55fA+APBgU1kTYRacF8vUuD
         WXjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gq2cegI0ECbR/YcsGXMVdZ6KdsxDosKN2gngisltFoc=;
        b=Xo/NsrNHEMlDLWF9DTeFlxvdlZaM3PexFUvfFY1u5Hp+pAPqAoS1AErQwRUaiX9U/n
         UkUMG8MviJ/2OtVY/EJvWsdEMtYv9RkeIAwHIKa11fTUf0/vzbEfmHvQokNHEPMBWuwA
         FvVhUfWoa9zTjEL6viIsVPRl1qR3xXLpib4GMshTsewMjUZiIUDPgHcFv1LQ5Go6F3pt
         NtQgWorM2Z3NeCgepBmA/r19DsvtPTZWYPzW8IyeevNKQ1XEYa4gPGJNjOIVeCtKu8WZ
         7L3lKUOJNxkXrFdmUPlFUoEG3b8rYLt86jeynCdMBTNprpk6P3P4AKs7RZ9UVwZBmai6
         wnig==
X-Gm-Message-State: AOAM5332rsxy+1CDHjfOyVFojIC78yM23VjvmANvyomgjfPdMr+UwF6Y
	XpouRvMK1VKNTojTDaOKkCs=
X-Google-Smtp-Source: ABdhPJyxhDoH+fWyHyXcCEfLhL8PGGt9lsAA7QMLzMJVgzUN4CV8VgzUoDUPZidSha2WmbZwPNO0cA==
X-Received: by 2002:a63:fa10:: with SMTP id y16mr14408611pgh.304.1599586244745;
        Tue, 08 Sep 2020 10:30:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6641:: with SMTP id a62ls1778701pgc.11.gmail; Tue, 08
 Sep 2020 10:30:44 -0700 (PDT)
X-Received: by 2002:a62:8011:: with SMTP id j17mr16892236pfd.98.1599586244056;
        Tue, 08 Sep 2020 10:30:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599586244; cv=none;
        d=google.com; s=arc-20160816;
        b=vJMpmyA3l9nYb6xQ2lUb95Z8VZ635oGFw8okNJFpq7mXNwKkNCDoYIo+GN9+FicY9T
         mUJHQkkkmW3dRjCcNGhI4L1f58mVqz8r7pkys8keVnzHMBLblitdat/EopL/yqPNCZjL
         CWmXCynwKXzo4vZMSR4lqi5fXV5lgpn4gX0fhn3SHjNrBPmTKf2GkUob8NjpbGpwaehX
         XOM4fPox8kST4so0bgt0Q9RD/iVEosnbRWNByGn61G2KiGbBYp7PnNr6CwJ2zv+rJ/e7
         ki1fE3y5CKPsiiFTLCKxVozJmX4/ssUfduUa12RfonO5CXWy5FxeuvztloRCJnNmSTPk
         +RTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/5WUqOjLHPAdLAI0MKh9zhuMyV7IC1nlysZjintZ/W0=;
        b=gzpkwIV0tXcml0wyx9AzX29ndoUctXkArn1o62VQsBnlVw2TJDveusYQ7WSCc2sbE6
         4QbkRtwLastRJO7Ya8F1sakkVKovRl0M+zkiW2JULT5Tfwo8/s43W7secVlcDz47VHTt
         bpnRmAoxiNJVhT1Lyr4OSmqVo+qH1cwY4mnK5WbdP4wpQtUnazr+rCO5GGU7Pjk0kLdp
         wzP0hIUL5RYBVN5k4ZZgvGe8Fsn6gHlL7Rr69WVXUabHT/aRRVf71LusV1hIcL9cYTvc
         J+pDYfOcYizAkXm70VpR4rjc2cLrOWqBDpdtJEVCi4g/FofXy3Vt66B7TZX62/n0TJkf
         Xs5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AzIN32ul;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t6si4479pjq.2.2020.09.08.10.30.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 10:30:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id 34so12921pgo.13
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 10:30:44 -0700 (PDT)
X-Received: by 2002:a63:ca0c:: with SMTP id n12mr18009749pgi.209.1599586243396;
        Tue, 08 Sep 2020 10:30:43 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id w185sm60365pfc.36.2020.09.08.10.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 10:30:42 -0700 (PDT)
Date: Tue, 8 Sep 2020 10:30:36 -0700
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
Subject: Re: [PATCH v2 09/28] kbuild: add support for Clang LTO
Message-ID: <20200908173036.GD2743468@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-10-samitolvanen@google.com>
 <CAK7LNAR7SbBPz06s5Gf2d+zry+Px1=jcUrC9c=_zQiCJLttY3A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAR7SbBPz06s5Gf2d+zry+Px1=jcUrC9c=_zQiCJLttY3A@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AzIN32ul;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::542
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

On Tue, Sep 08, 2020 at 12:30:14AM +0900, Masahiro Yamada wrote:
> On Fri, Sep 4, 2020 at 5:31 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > This change adds build system support for Clang's Link Time
> > Optimization (LTO). With -flto, instead of ELF object files, Clang
> > produces LLVM bitcode, which is compiled into native code at link
> > time, allowing the final binary to be optimized globally. For more
> > details, see:
> >
> >   https://llvm.org/docs/LinkTimeOptimization.html
> >
> > The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
> > which defaults to LTO being disabled. To use LTO, the architecture
> > must select ARCH_SUPPORTS_LTO_CLANG and support:
> >
> >   - compiling with Clang,
> >   - compiling inline assembly with Clang's integrated assembler,
> >   - and linking with LLD.
> >
> > While using full LTO results in the best runtime performance, the
> > compilation is not scalable in time or memory. CONFIG_THINLTO
> > enables ThinLTO, which allows parallel optimization and faster
> > incremental builds. ThinLTO is used by default if the architecture
> > also selects ARCH_SUPPORTS_THINLTO:
> >
> >   https://clang.llvm.org/docs/ThinLTO.html
> >
> > To enable LTO, LLVM tools must be used to handle bitcode files. The
> > easiest way is to pass the LLVM=1 option to make:
> >
> >   $ make LLVM=1 defconfig
> >   $ scripts/config -e LTO_CLANG
> >   $ make LLVM=1
> >
> > Alternatively, at least the following LLVM tools must be used:
> >
> >   CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm
> >
> > To prepare for LTO support with other compilers, common parts are
> > gated behind the CONFIG_LTO option, and LTO can be disabled for
> > specific files by filtering out CC_FLAGS_LTO.
> >
> > Note that support for DYNAMIC_FTRACE and MODVERSIONS are added in
> > follow-up patches.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  Makefile                          | 18 +++++++-
> >  arch/Kconfig                      | 68 +++++++++++++++++++++++++++++++
> >  include/asm-generic/vmlinux.lds.h | 11 +++--
> >  scripts/Makefile.build            |  9 +++-
> >  scripts/Makefile.modfinal         |  9 +++-
> >  scripts/Makefile.modpost          | 24 ++++++++++-
> >  scripts/link-vmlinux.sh           | 32 +++++++++++----
> >  7 files changed, 154 insertions(+), 17 deletions(-)
> 
> 
> 
> >  #define TEXT_MAIN .text
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index 6ecf30c70ced..a5f4b5d407e6 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -111,7 +111,7 @@ endif
> >  # ---------------------------------------------------------------------------
> >
> >  quiet_cmd_cc_s_c = CC $(quiet_modtag)  $@
> > -      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS), $(c_flags)) $(DISABLE_LTO) -fverbose-asm -S -o $@ $<
> > +      cmd_cc_s_c = $(CC) $(filter-out $(DEBUG_CFLAGS) $(CC_FLAGS_LTO), $(c_flags)) -fverbose-asm -S -o $@ $<
> >
> >  $(obj)/%.s: $(src)/%.c FORCE
> >         $(call if_changed_dep,cc_s_c)
> > @@ -428,8 +428,15 @@ $(obj)/lib.a: $(lib-y) FORCE
> >  # Do not replace $(filter %.o,^) with $(real-prereqs). When a single object
> >  # module is turned into a multi object module, $^ will contain header file
> >  # dependencies recorded in the .*.cmd file.
> > +ifdef CONFIG_LTO_CLANG
> > +quiet_cmd_link_multi-m = AR [M]  $@
> > +cmd_link_multi-m =                                             \
> > +       rm -f $@;                                               \
> > +       $(AR) rcsTP$(KBUILD_ARFLAGS) $@ $(filter %.o,$^)
> 
> 
> KBUILD_ARFLAGS no longer exists in the mainline.
> (commit 13dc8c029cabf52ba95f60c56eb104d4d95d5889)

Thanks, I'll drop this in the next version.

> > +ifdef CONFIG_LTO_CLANG
> > +# With CONFIG_LTO_CLANG, .o files might be LLVM bitcode,
> 
> or, .o files might be even thin archives.

Right, and with LTO the thin archive might also point to a mix of bitcode
and ELF to further complicate things.

> For example,
> 
> $ file net/ipv6/netfilter/nf_defrag_ipv6.o
> net/ipv6/netfilter/nf_defrag_ipv6.o: thin archive with 6 symbol entries
> 
> 
> Now we have 3 possibilities for .o files:
> 
>   - ELF  (real .o)
>   - LLVM bitcode (.bc)
>   - Thin archive (.a)
> 
> 
> Let me discuss how to proceed with this...

Did you have something in mind to make this cleaner?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908173036.GD2743468%40google.com.
