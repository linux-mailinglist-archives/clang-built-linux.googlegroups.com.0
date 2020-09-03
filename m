Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAWYYX5AKGQEHKYXDTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DBF25CD5A
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:19:47 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id g12sf2363309qtx.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:19:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599171587; cv=pass;
        d=google.com; s=arc-20160816;
        b=sp0gQNkXKKK42jPLNGzzD/WVcfL7/L7avXgCCbWgEsBFAOxbg0BeAFzpDNb8FSgeJ6
         JORkfIQrg28S1X16PMIRw+Llex9oJAf+w7sQfSwor+Fhy6Bb6QPXMC0qXpAQz5Qno4jc
         kAfnSP4Hc7ua0pOHrnnZ81J6R3CXry8V9WTh/H+gUXyTQ5ouCAe0vuVDyIevklYQVzes
         BKk2Vczr24VOI/1bFLXE9T5ych9x2g0DgrvNSYeb4wC4RK2jR8S9XK7VcUxWTLexv9gW
         XfVXOSQ2AoKlNc1qwtfQZMaIynYcd9Whx/Gpvqwiv43IfLH+ZyQkaInokWdZsmdnq8JZ
         8P9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=f6D095d6ndu/qqrbXYQcS0ieNTUGglUSnr76eUfD2oQ=;
        b=p/yzqG+hQWRyOnQ+jPYNVDAXfhXJ3000UssqQDm/RXMgp5SgaD55PpzndQOn8rWcae
         JY8IJDrQK5Zah7qPIpSY3wrNvNug3MY8GLKPM8dnEqME7YUDQdPMdqICGNWXXlsX/fFM
         oLDgTpZHVgGOdIlzh87oy5aKSIOReu2AcrTrFGoD5stqM2lyYIkESYetaH73StL62P3p
         8KBrl1/j/LJLJDJeZKx6bW77IbBStB7FG/91by1WuzUUnxh24bXa9TM2CCKmPu5bDKt+
         501HiEMfKy/bdr1BMnBou3KPyBMHtEFyUjb16v+BmTtd7nL7dm/wFDl+rboyerrPo04l
         wWJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jxDHCE4P;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f6D095d6ndu/qqrbXYQcS0ieNTUGglUSnr76eUfD2oQ=;
        b=O8BWHImXw6ywOYoj6aDvS3uaXMqHh6/JQH7F0mbBjomW1/E/o5Lmzh2uFItBEIr2je
         YZO33zHV5jT2e/3XbuPtmBF/dDmwqc/M8F0BrCfzN6C8C753DmF39FJzP9HAh74urwd4
         3mMzAxiQvPgGMPAhxCYqpZeWEIcjdJy5MIbI+8DXd47dWtbQkIqrEZGbNVQpf+4svCK/
         OwrleN47qaj/kDO4d+2aL9CLtB5AlbggZdJfUHb1zbGNNGbcMViTqaZWm+FYQebs89G4
         BU52VriK5bqcT3QOA2p/3w9oNU1PC9olxBIEkgmNbjggRddu94FudOHzBQubO6PeDCaH
         7J1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=f6D095d6ndu/qqrbXYQcS0ieNTUGglUSnr76eUfD2oQ=;
        b=NQ7mcasHjo5mScZCu8QlW7uicyzPklPZlSofck1ys5xvATHblYGkcxYtun3n4p7x4i
         HO7IWHdch80XbxdPAoo4XwJ7N0BkhT05YOY/vhJke2UCsVN+sfoVi0V5l1T1oIa4lcNA
         0LCbHQwfboF6WzAsqE5VwArbvHUudycI8nE1NqIJYwp1HwStOaJHC9tLmQn6PCxLAfB/
         7qnUPrPVjghbxKeI89yvid+i78gdlFLDrU/1K8sm8Cu4x0Qt9KgmA3+6uwBkXrOhfQN4
         8jbgwPIJDTN1WJGHPRXKWvDiLH/X6ckZuolYdeGzHdF+Hv+MpxVKbv4FHLDISPrlGa1Q
         CDPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321czdbLdHqkm3wSat/6uzi9yqu5Yr2j+ZPEr9RkQtAF/q+fHRs
	8/XKDJ5FO4WKnlO76p1muAM=
X-Google-Smtp-Source: ABdhPJxm/7mjwP8gcAm5f72SSctv+EcFRq4li0ODjXwkRVx6u0nT5yHHCtPDAPNEGKsPKiDFkolQ8Q==
X-Received: by 2002:ac8:1415:: with SMTP id k21mr5970269qtj.374.1599171586959;
        Thu, 03 Sep 2020 15:19:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b3d9:: with SMTP id b25ls1707773qvf.5.gmail; Thu, 03 Sep
 2020 15:19:46 -0700 (PDT)
X-Received: by 2002:a05:6214:292:: with SMTP id l18mr4011070qvv.3.1599171586567;
        Thu, 03 Sep 2020 15:19:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599171586; cv=none;
        d=google.com; s=arc-20160816;
        b=hWAYo8PNP5hmSeGqVGTK/Ltg0JD4K/XIJ783tCEMD+QKhDFAUc1yUOJEDzl/4AovKm
         j47ThCtM1l/s5pqGR6k4xpNqZtdqvtmolfMX5H988VOfkhjvxtQjnbyhUULA2ifahlYO
         rfsIljz+vj4PILU0QMJpFMSMpYyNMbe0YAPT/dHTMC46WNQjnx1/qWPODoiO1VtJSeBU
         z3nl5gHLwjsIdfsnE76aoyzxBJOeQsdSphYTJKkTKc6D7xCDKB7JsLhr45ZFi1O9iEBr
         iCR7Wdhvt2d1TthvE2L8jMVLmo9yIblS/lnev0rd4VivddFZ/oQW1hM4KiFfQNtl9zOA
         OWQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MWNxdRC9o4O5cBaQMtBrWZaTyq9NHomAWBLJ5BXZ/Cg=;
        b=WeBI7PHgUTYp2gNQTQkdsot7bwp28XiR7YxZkyaIbJQD/mrUeJEj1oHzFAq/ZtG53X
         EcQnoMdpQi54iWWBItBQzmV73FRN2PKEET+VbDN4wavfHwE3v4nOX/rOo7W9Ox5kgbQt
         54qLqR7Ln/9xOwme0zOBfvc2Gxv730A4f4+Y/Drwoxyew/Jdf+a6PSyXXKQTHNDnSsdT
         N59XzOcWy+m7IJpp9jFlwikdXrXwueKBd32fUT+OvpHFl9o5+Xx50AXe8eIFhNhsFdk7
         P6Oikl9BXL+tlqO1Mplin121TSBHKkkoAdeG0FCoOieecpL/0TuqwRUt9cTDBcCBxByl
         b0yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jxDHCE4P;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id a27si289906qtw.4.2020.09.03.15.19.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:19:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id w7so3469560pfi.4
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:19:46 -0700 (PDT)
X-Received: by 2002:a05:6a00:14ce:: with SMTP id w14mr5536446pfu.119.1599171585674;
        Thu, 03 Sep 2020 15:19:45 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c1sm4139792pfi.136.2020.09.03.15.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:19:44 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:19:43 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
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
Message-ID: <202009031513.B558594FB9@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-12-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-12-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jxDHCE4P;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::443
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

On Thu, Sep 03, 2020 at 01:30:36PM -0700, Sami Tolvanen wrote:
> With LTO, LLVM bitcode won't be compiled into native code until
> modpost_link, or modfinal for modules. This change postpones calls
> to objtool until after these steps.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

For a "fail fast" style of building, it makes sense to have objtool run
as early as possible, so it makes sense to keep the current behavior in
non-LTO mode. I do wonder, though, if there is a real benefit to having
"fail fast" case. I imagine a lot of automated builds are using
--keep-going with make, and actually waiting until the end to do the
validation means more code will get build-tested before objtool rejects
the results. *shrug*

> ---
>  arch/Kconfig              |  2 +-
>  scripts/Makefile.build    |  2 ++
>  scripts/Makefile.modfinal | 24 ++++++++++++++++++++++--
>  scripts/link-vmlinux.sh   | 23 ++++++++++++++++++++++-
>  4 files changed, 47 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 71392e4a8900..7a418907e686 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -599,7 +599,7 @@ config LTO_CLANG
>  	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
>  	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
>  	depends on ARCH_SUPPORTS_LTO_CLANG
> -	depends on !FTRACE_MCOUNT_RECORD
> +	depends on HAVE_OBJTOOL_MCOUNT || !(X86_64 && DYNAMIC_FTRACE)
>  	depends on !KASAN
>  	depends on !GCOV_KERNEL
>  	select LTO
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index c348e6d6b436..b8f1f0d65a73 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -218,6 +218,7 @@ cmd_record_mcount = $(if $(findstring $(strip $(CC_FLAGS_FTRACE)),$(_c_flags)),
>  endif # USE_RECORDMCOUNT
>  
>  ifdef CONFIG_STACK_VALIDATION
> +ifndef CONFIG_LTO_CLANG
>  ifneq ($(SKIP_STACK_VALIDATION),1)
>  
>  __objtool_obj := $(objtree)/tools/objtool/objtool
> @@ -253,6 +254,7 @@ objtool_obj = $(if $(patsubst y%,, \
>  	$(__objtool_obj))
>  
>  endif # SKIP_STACK_VALIDATION
> +endif # CONFIG_LTO_CLANG
>  endif # CONFIG_STACK_VALIDATION
>  
>  # Rebuild all objects when objtool changes, or is enabled/disabled.
> diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> index 1005b147abd0..909bd509edb4 100644
> --- a/scripts/Makefile.modfinal
> +++ b/scripts/Makefile.modfinal
> @@ -34,10 +34,30 @@ ifdef CONFIG_LTO_CLANG
>  # With CONFIG_LTO_CLANG, reuse the object file we compiled for modpost to
>  # avoid a second slow LTO link
>  prelink-ext := .lto
> -endif
> +
> +# ELF processing was skipped earlier because we didn't have native code,
> +# so let's now process the prelinked binary before we link the module.
> +
> +ifdef CONFIG_STACK_VALIDATION
> +ifneq ($(SKIP_STACK_VALIDATION),1)
> +cmd_ld_ko_o +=								\
> +	$(objtree)/tools/objtool/objtool				\
> +		$(if $(CONFIG_UNWINDER_ORC),orc generate,check)		\
> +		--module						\
> +		$(if $(CONFIG_FRAME_POINTER),,--no-fp)			\
> +		$(if $(CONFIG_GCOV_KERNEL),--no-unreachable,)		\
> +		$(if $(CONFIG_RETPOLINE),--retpoline,)			\
> +		$(if $(CONFIG_X86_SMAP),--uaccess,)			\
> +		$(if $(USE_OBJTOOL_MCOUNT),--mcount,)			\
> +		$(@:.ko=$(prelink-ext).o);
> +
> +endif # SKIP_STACK_VALIDATION
> +endif # CONFIG_STACK_VALIDATION

I wonder if objtool_args could be reused here instead of having two
places to keep in sync? It looks like that might mean moving things
around a bit before this patch, since I can't quite see if
Makefile.build's variables are visible to Makefile.modfinal?

> +
> +endif # CONFIG_LTO_CLANG
>  
>  quiet_cmd_ld_ko_o = LD [M]  $@
> -      cmd_ld_ko_o =                                                     \
> +      cmd_ld_ko_o +=                                                     \
>  	$(LD) -r $(KBUILD_LDFLAGS)					\
>  		$(KBUILD_LDFLAGS_MODULE) $(LDFLAGS_MODULE)		\
>  		$(addprefix -T , $(KBUILD_LDS_MODULE))			\
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index 3e99a19b9195..a352a5ad9ef7 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -93,8 +93,29 @@ objtool_link()
>  {
>  	local objtoolopt;
>  
> +	if [ "${CONFIG_LTO_CLANG} ${CONFIG_STACK_VALIDATION}" = "y y" ]; then
> +		# Don't perform vmlinux validation unless explicitly requested,
> +		# but run objtool on vmlinux.o now that we have an object file.
> +		if [ -n "${CONFIG_UNWINDER_ORC}" ]; then
> +			objtoolopt="orc generate"
> +		else
> +			objtoolopt="check"
> +		fi
> +
> +		if [ -n ${USE_OBJTOOL_MCOUNT} ]; then
> +			objtoolopt="${objtoolopt} --mcount"
> +		fi
> +	fi
> +
>  	if [ -n "${CONFIG_VMLINUX_VALIDATION}" ]; then
> -		objtoolopt="check --vmlinux"
> +		if [ -z "${objtoolopt}" ]; then
> +			objtoolopt="check --vmlinux"
> +		else
> +			objtoolopt="${objtoolopt} --vmlinux"
> +		fi
> +	fi
> +
> +	if [ -n "${objtoolopt}" ]; then
>  		if [ -z "${CONFIG_FRAME_POINTER}" ]; then
>  			objtoolopt="${objtoolopt} --no-fp"
>  		fi
> -- 
> 2.28.0.402.g5ffc5be6b7-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031513.B558594FB9%40keescook.
