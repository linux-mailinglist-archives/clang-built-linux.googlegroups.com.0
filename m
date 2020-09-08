Return-Path: <clang-built-linux+bncBC2ORX645YPRB5O7375AKGQE5JK4IZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC2026218A
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 22:56:22 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id y6sf77701vsm.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 13:56:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599598581; cv=pass;
        d=google.com; s=arc-20160816;
        b=kxiKYvEBm7sPu7SE7WV3RGf6n2hH3kGWUQc7DXvjvzT1WCmdW49FTCdREapZfUgMVF
         CykHbjEC13i2Qpe77rTat0/6NdDYh3o39i8n6uVIcwKhzuM24vcREdf48R2DG0Ts0k6A
         NxFgYxS/L10bE19KVw0PWlY7KP5d7kzOyGIDLJ8aWVWOuumABQLjlDxIolelofjeolOh
         ZDqaPf3DOIuCnfZ3mNnqQ33iSRefUYjBUOuiKKDjFP9AUUVVqzfgBlgvnbiLiLb0CwQF
         1iLonxU1afGa8TlJkXfFSCkNcVSVylbPxhPl15hQSeiUZok8EUwTjojzPzTXnj8D0MSW
         WbyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=jidn0jYuOLOUB9+QnUpQv/Fib/GZS8+CJnrsjQzEhjw=;
        b=R630cHSjye37+NyvP8gfBV4iXFpjVVl4LxqY/Qhp5k6uMa8SsIguPARmGyQc3lnNJd
         bHTGj958WMAHGaUINe2kuChXk+VNCZckfEaLPQ1EzmeMbUgW/7D9R5OrDn2E64ud41Of
         lSe1RZgDI7fR7vqKN0DEirUAhgpHWnW22sagDyTrUwGLUkhiIDg0kNsRdkrmRo7qfmwM
         Lo9xMUCq1vSLXr0cxctdmGHGDqa05kqyq6HGicWwwjRVtF4UV3/gi0c6+wauAYYkf875
         y0i5t3AaXTPaq5JgPO6crzTf3lWMSh0Adl6KZzaDle9J4YCZU7o37R/E5DKQTpAATEip
         crQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kqiVfXTq;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jidn0jYuOLOUB9+QnUpQv/Fib/GZS8+CJnrsjQzEhjw=;
        b=GyzU2fN4uAR0YdxRQgOxZ8zoFcrph7u4LzdPD5VVEuizYtDdfgArPJG7Uwawnr0RrK
         EYimPzqVGA65sOMmBnfwyKJ4jxY/Y22GTneKR4SBd8yKmGJ9E9/HWyg85ncwaWnt/DsV
         gpdkCNf9srMKidJLcOmaFuHg6BL+Y4OR+jf0QakR7dbdPhdOiu4FL6AP0TG6RjsAOQq9
         mqsuJBvh3AdzFowWpOdYJOGpOcQm6rwqisD1cPXAWVmRvCASzW2iSwKdK5lSk5t+A9wK
         nB/82YSkYsz/DNnSnlzn2PKxVZDjNdRfjLPKUYGXz+bLyrBkjNQ+d+b26/MAd169EUSP
         4P3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jidn0jYuOLOUB9+QnUpQv/Fib/GZS8+CJnrsjQzEhjw=;
        b=V99lOswQY0bk83ns0LAgsyEadGEiLbeGTw5UfCut9V5iZy0oC3X/Ssigqi/liZvivI
         3+7//7E8WOY/FKIfLl8qe+KDcYCgoLBGw7HU1ky06445gBylSpfC2ffo5yVhvYrjn+hM
         v9GK+HIGUz2fKg812Uj4f1scVQw1uqUQBff/CL8rhuIRTOOejr8dYq1aHT8qTEpN4A+t
         dZ3eNFV9xXssxEonpXVT2nx88tvPvJYr+YgTCcchuMdiP8ggPDs5k+YPfwkxEBU20Rx7
         4tYSKYYniiST25zv7ppG0sEpSIVpCNFL39WATdLY2GnesrjmvmMCEEO1PhwclVmvwwzO
         6S/w==
X-Gm-Message-State: AOAM531M/JcaCzdW7/WGYnH875gdbLg0D9gQLklZKBSuSY8dcnxwBG8q
	n5oK2viUsQcCOSn3L25Yfuo=
X-Google-Smtp-Source: ABdhPJz6l0Y2pZJU6fTI6iGjZU4ePwUjBDJSTz6HvUhi3Y+Pld/oj5r7sEVOetYZoyJ8d67kBx4Itg==
X-Received: by 2002:a67:b408:: with SMTP id x8mr659821vsl.47.1599598581539;
        Tue, 08 Sep 2020 13:56:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c797:: with SMTP id t23ls33809vsk.8.gmail; Tue, 08 Sep
 2020 13:56:21 -0700 (PDT)
X-Received: by 2002:a67:cb97:: with SMTP id h23mr709056vsl.43.1599598581025;
        Tue, 08 Sep 2020 13:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599598581; cv=none;
        d=google.com; s=arc-20160816;
        b=MKgGcKNQG+oLDAZ3qce9XWAllmJAMVMe1p3Z5BLt3x8nzsO5atyvuiG497FA8F8N9s
         pwKSJN090b7oeHwvrnvD5OjWaZQtcBTqvMiD+Up8ZYmj425wRCCQpmiT5TMbKfk7/HE0
         iP/qBI2cWmuwFNS1ArkpcTKiqp4rrHchC542Vtlx3C7TB6aMJq+v5jKeta5sWWBKzyIL
         nMJs4AavQcfHGePHLUeqOQES+gevxVxHuookowZi42cAu7sPTPoD9RZ9Cnmsnw7CvZqE
         QB1X9PbjiZqDcwDPoxTzNpdVbGwgKvJXLnVu1qUsZ7u2vryF7ocLCUvkF6gPkufakWAM
         O5rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+1kwkhnnjfbD1n3YicFbQyeenHuldLrryzBMnu30RTk=;
        b=ch8fEFDws+2OrAVaaxbhh5PrI9t8gY9JhojoCY6Hb+xSPWiPS6PGMhi5Hj5xEbbqS1
         ob1U5rmkjQTRSR336x+o22KovnQ+nmjj4GoKYCOsTG84GYzs46r3xuTtof6w7yxRsAak
         eriVzamMO38XyKL6O0kd0Fqoh7Ywc5Vsxm0dMD7aN5QGT6fPFxFs7UO852SFXhmuRQ29
         iiCgzF9WUIalkYTfU+ziL3XtSMX4YyCDh7S0Dx9Q0Qousz75Q7Ghygnon0nUrGrAlJVj
         nOLuVyj6ea3xF7Nc/9B9YQ7JQ2PXNp/jo8vz3LJjaWkNIgy54PF1qHcCiLazb3g8+oUQ
         FFOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kqiVfXTq;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id x16si47918vko.2.2020.09.08.13.56.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 13:56:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id q4so210039pjh.5
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 13:56:20 -0700 (PDT)
X-Received: by 2002:a17:90b:3444:: with SMTP id lj4mr574843pjb.78.1599598579801;
        Tue, 08 Sep 2020 13:56:19 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id e14sm187682pgu.47.2020.09.08.13.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 13:56:19 -0700 (PDT)
Date: Tue, 8 Sep 2020 13:56:12 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 11/28] kbuild: lto: postpone objtool
Message-ID: <20200908205612.GA1060586@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-12-samitolvanen@google.com>
 <202009031513.B558594FB9@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009031513.B558594FB9@keescook>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kqiVfXTq;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1042
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

On Thu, Sep 03, 2020 at 03:19:43PM -0700, Kees Cook wrote:
> On Thu, Sep 03, 2020 at 01:30:36PM -0700, Sami Tolvanen wrote:
> > With LTO, LLVM bitcode won't be compiled into native code until
> > modpost_link, or modfinal for modules. This change postpones calls
> > to objtool until after these steps.
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> 
> For a "fail fast" style of building, it makes sense to have objtool run
> as early as possible, so it makes sense to keep the current behavior in
> non-LTO mode. I do wonder, though, if there is a real benefit to having
> "fail fast" case. I imagine a lot of automated builds are using
> --keep-going with make, and actually waiting until the end to do the
> validation means more code will get build-tested before objtool rejects
> the results. *shrug*
> 
> > ---
> >  arch/Kconfig              |  2 +-
> >  scripts/Makefile.build    |  2 ++
> >  scripts/Makefile.modfinal | 24 ++++++++++++++++++++++--
> >  scripts/link-vmlinux.sh   | 23 ++++++++++++++++++++++-
> >  4 files changed, 47 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 71392e4a8900..7a418907e686 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -599,7 +599,7 @@ config LTO_CLANG
> >  	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
> >  	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
> >  	depends on ARCH_SUPPORTS_LTO_CLANG
> > -	depends on !FTRACE_MCOUNT_RECORD
> > +	depends on HAVE_OBJTOOL_MCOUNT || !(X86_64 && DYNAMIC_FTRACE)
> >  	depends on !KASAN
> >  	depends on !GCOV_KERNEL
> >  	select LTO
> > diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> > index c348e6d6b436..b8f1f0d65a73 100644
> > --- a/scripts/Makefile.build
> > +++ b/scripts/Makefile.build
> > @@ -218,6 +218,7 @@ cmd_record_mcount = $(if $(findstring $(strip $(CC_FLAGS_FTRACE)),$(_c_flags)),
> >  endif # USE_RECORDMCOUNT
> >  
> >  ifdef CONFIG_STACK_VALIDATION
> > +ifndef CONFIG_LTO_CLANG
> >  ifneq ($(SKIP_STACK_VALIDATION),1)
> >  
> >  __objtool_obj := $(objtree)/tools/objtool/objtool
> > @@ -253,6 +254,7 @@ objtool_obj = $(if $(patsubst y%,, \
> >  	$(__objtool_obj))
> >  
> >  endif # SKIP_STACK_VALIDATION
> > +endif # CONFIG_LTO_CLANG
> >  endif # CONFIG_STACK_VALIDATION
> >  
> >  # Rebuild all objects when objtool changes, or is enabled/disabled.
> > diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> > index 1005b147abd0..909bd509edb4 100644
> > --- a/scripts/Makefile.modfinal
> > +++ b/scripts/Makefile.modfinal
> > @@ -34,10 +34,30 @@ ifdef CONFIG_LTO_CLANG
> >  # With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
> >  # avoid a second slow LTO link
> >  prelink-ext := .lto
> > -endif
> > +
> > +# ELF processing was skipped earlier because we didn't have native code,
> > +# so let's now process the prelinked binary before we link the module.
> > +
> > +ifdef CONFIG_STACK_VALIDATION
> > +ifneq ($(SKIP_STACK_VALIDATION),1)
> > +cmd_ld_ko_o +=								\
> > +	$(objtree)/tools/objtool/objtool				\
> > +		$(if $(CONFIG_UNWINDER_ORC),orc generate,check)		\
> > +		--module						\
> > +		$(if $(CONFIG_FRAME_POINTER),,--no-fp)			\
> > +		$(if $(CONFIG_GCOV_KERNEL),--no-unreachable,)		\
> > +		$(if $(CONFIG_RETPOLINE),--retpoline,)			\
> > +		$(if $(CONFIG_X86_SMAP),--uaccess,)			\
> > +		$(if $(USE_OBJTOOL_MCOUNT),--mcount,)			\
> > +		$(@:.ko=$(prelink-ext).o);
> > +
> > +endif # SKIP_STACK_VALIDATION
> > +endif # CONFIG_STACK_VALIDATION
> 
> I wonder if objtool_args could be reused here instead of having two
> places to keep in sync? It looks like that might mean moving things
> around a bit before this patch, since I can't quite see if
> Makefile.build's variables are visible to Makefile.modfinal?

It doesn't look like they are. I suppose we could move objtool_args to
Makefile.lib. Masahiro, any thoughts?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908205612.GA1060586%40google.com.
