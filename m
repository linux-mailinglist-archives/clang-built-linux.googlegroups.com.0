Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYXBYX5AKGQEAT2MN6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B6C25CDB8
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:40:35 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id o1sf3453495ilk.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:40:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599172834; cv=pass;
        d=google.com; s=arc-20160816;
        b=qTSgzmGQH1lT2oG9DmtrmB6U8msU5MQXKgM9zm2+mu8g8/n3Cd5d+75yM6B7CdUkgq
         /oXRHuzj9H63Zn5AdpSealYKurRT5VGS1rBQxd4JmCe6j0BkkSLyl161xmC9ZZwRiDg2
         CICqu8qDCc6qKIC998f2/pVqBUW+ZDLRuIS/zB3dcHHutr56swTthxL3KeSLhP71mjx6
         07+BI9gajA7HTPRzv210E3oWidv0fqPb4uZVXSUml2AxBLxx+zMQAarCYuytI/JTCuCk
         E2yok8MCfwN5GGtJgLg26zvq0gZz24/YxRcM8CvA1tMTJ64hckU2HpMxQO5YqJ42SJDS
         we1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CSFglkHiUYTYsnDqmKrYpi7HIggPWuw2w+w2kxDjKYs=;
        b=KMEDyt9NqXKeYTXdy9iTna26XBRdzUeQqfsLsvuFjWUVhTYamVXwdTbsowWx8zBNR7
         4F/p9ftdq8ka92Yr2yUlbqThh8Or9FoHkvFpsj/lqD9qYPoWctaMZ6ocdqvUbUexQT5J
         ITv55rF8CmhuGmRzmzDtAGNE+gqSSajgt4J7tKsG/ieXZjxC8mgPAfHish4sXSPH+o07
         Dl1IHhGPPokbM46gWGq1oKGcA1n9GzwAMqyQvoc0WmlSxOJycH66dJIVCb1jS8+MqGsL
         8xzwGoqLQ+ZdW7vAcoDZwQ8XeQEGe10h3c9IJKcON3P3NhmhxZegNm6gnGKuJXCpbm/B
         g0WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A41hd+D6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CSFglkHiUYTYsnDqmKrYpi7HIggPWuw2w+w2kxDjKYs=;
        b=O94byFjz/itcHfmFC+KybMLWQ/l/QSRyldJHNcE69n/+LzFKtEu3k74pJKFERJAx2k
         mkT8R2gyQXWQWLDgY30CmiPidtEUUWSREDFrLV0MWKf7RPIiXmlZd4CYkXu7wLjDBRVy
         Gq4twKr8H8di9Sg0XYev5Npz+jq/7BXDLxLVJXp4ybYVmsaF93ghqno9XQwiYxYeAGDG
         HlMglNkCJQJnP1QgoJ7KMgbfJZyXnETJg4/oIA3bC72GZl7k7/70KexbH3SsFvu/kF58
         xMLQXJL7Nj0fS81KRtstyZRnWcjZvkUnPTYM0FQDQeCvvdBxTg3oTuTXoscBRxvutxJX
         w1tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CSFglkHiUYTYsnDqmKrYpi7HIggPWuw2w+w2kxDjKYs=;
        b=lVZpInQKywsi97Yi8NQkSv7jTXX5S4C740sYfoywdEJqpS4iDd+BzPnwOOWLSlkG/t
         I7QVYWTS3s7eBWPN3Eo/8iEJK3zNBAzrpS92PVOcK8zfvQDlfPfd9d/75/GQZSL8rBNh
         Heww6YoFGaJI+CJJRCcoaIL4oUFxA65XGfRc0E//GUEAUueRcNPqMfuu12mdFwmEVGvY
         dy0T2H8zl093aDQ38Sxb6psPv78fnzYh45WCwqUbzjYGXrarnWI7u6FO95ixl7SsIF4h
         u9aNs23E11hKi5sieQcs0c6z+U5zepCYZodUCNGFs+xgGCo4+NUWNavmoG53YmfS9XcH
         xDdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531IL3cj2ECTyTNWNTY1GUQe4pKJedIvzMcsttiNLu2nGIaUd6Sf
	IeYX9uSsjx4a+BfmPm8O0PY=
X-Google-Smtp-Source: ABdhPJy3KucuNsZ/wdpAeuPAaQkb1bvUjDykxsAcELXRJPenOceGBKFGc/VSqGv+P9h6R4rZIWSVXQ==
X-Received: by 2002:a92:d902:: with SMTP id s2mr4995030iln.21.1599172834410;
        Thu, 03 Sep 2020 15:40:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8bc4:: with SMTP id i187ls1876980ild.2.gmail; Thu, 03
 Sep 2020 15:40:34 -0700 (PDT)
X-Received: by 2002:a92:4950:: with SMTP id w77mr5085015ila.93.1599172833999;
        Thu, 03 Sep 2020 15:40:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599172833; cv=none;
        d=google.com; s=arc-20160816;
        b=ioiP6xu47BGYBysCigO4XESO4deWvUZma+5EaXtfKQm1QnE9BoKKqZrpteXVc3JH9Q
         NfIaChGYkeIn4pz5oSfBQ8VNNwJW9Gob/DLuNViSd9a4ow6uiDipIJPEefvSps/x9FbS
         oi0Ayn6/LwCw6xR8wUxb123o12Y4qHz10PjAcHUzbrev1feRc+dcEqyxA3nERJ5kwd76
         i1XC8TNxEPekZcWWTXZ3V8Q5Sh+L5cV4pztNRM8yGu1TpY8CXiMZxTdk6o2haMb/MY8B
         /8ETNoMVj4Qwyx2b6j99EtkM8SHQKUD+dufsRmOEMg6ltHPZzAAaOAqQrB/peKcyxLkn
         g3Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AO8zY8IpOt+4Aoge4u6pHOXbc9CbbijXeon5Zk1dn8Q=;
        b=AQRsT1Outtu+l+FcHxMk4AyTYH3C/kKCvb9llVnUFszF58ZT8YF56nTUW+nS/V+4gc
         NO1FirTN9L4EHEm8fAWAHPzSOb5FbbRBiNFZJMuLHH5GcNgVLU5d44w+dvSutWjZbk3r
         pFZz4yIIznjN/bZhd8MHTTH5gOc49VtSWDl1FM4f3ah9a1DoI08G0usNCtL9UPwQhp4L
         09gIfTfX5fiJ52aLe6L6FWWd3s1dUzVyB0vI0fCuX5X03+Fhcuy6pOBMuyYmFX1Y9F+J
         UMMH6gZ1/BH8Z62PZwpUL1dIfygtOcmAkpCsPXngtlSu0p1OgzlkImQ7dQhILN9HRXYR
         uiTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=A41hd+D6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id n1si249809iom.0.2020.09.03.15.40.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:40:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id 2so2247629pjx.5
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:40:33 -0700 (PDT)
X-Received: by 2002:a17:90b:889:: with SMTP id bj9mr5177885pjb.73.1599172833180;
        Thu, 03 Sep 2020 15:40:33 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t25sm3636765pgl.60.2020.09.03.15.40.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 15:40:32 -0700 (PDT)
Date: Thu, 3 Sep 2020 15:40:31 -0700
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
Subject: Re: [PATCH v2 15/28] init: lto: ensure initcall ordering
Message-ID: <202009031532.CD2A5F372D@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-16-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-16-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=A41hd+D6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
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

On Thu, Sep 03, 2020 at 01:30:40PM -0700, Sami Tolvanen wrote:
> With LTO, the compiler doesn't necessarily obey the link order for
> initcalls, and initcall variables need globally unique names to avoid
> collisions at link time.
> 
> This change exports __KBUILD_MODNAME and adds the initcall_id() macro,
> which uses it together with __COUNTER__ and __LINE__ to help ensure
> these variables have unique names, and moves each variable to its own
> section when LTO is enabled, so the correct order can be specified using
> a linker script.
> 
> The generate_initcall_ordering.pl script uses nm to find initcalls from
> the object files passed to the linker, and generates a linker script
> that specifies the intended order. With LTO, the script is called in
> link-vmlinux.sh.

I think I asked before about this being made unconditional, but the hit
on final link time was noticeable. Am I remembering that right? If so,
sure, let's keep it separate.

> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  include/linux/init.h               |  52 +++++-
>  scripts/Makefile.lib               |   6 +-
>  scripts/generate_initcall_order.pl | 270 +++++++++++++++++++++++++++++
>  scripts/link-vmlinux.sh            |  14 ++
>  4 files changed, 333 insertions(+), 9 deletions(-)
>  create mode 100755 scripts/generate_initcall_order.pl
> 
> diff --git a/include/linux/init.h b/include/linux/init.h
> index 212fc9e2f691..af638cd6dd52 100644
> --- a/include/linux/init.h
> +++ b/include/linux/init.h
> @@ -184,19 +184,57 @@ extern bool initcall_debug;
>   * as KEEP() in the linker script.
>   */
>  
> +/* Format: <modname>__<counter>_<line>_<fn> */
> +#define __initcall_id(fn)					\
> +	__PASTE(__KBUILD_MODNAME,				\
> +	__PASTE(__,						\
> +	__PASTE(__COUNTER__,					\
> +	__PASTE(_,						\
> +	__PASTE(__LINE__,					\
> +	__PASTE(_, fn))))))
> +
> +/* Format: __<prefix>__<iid><id> */
> +#define __initcall_name(prefix, __iid, id)			\
> +	__PASTE(__,						\
> +	__PASTE(prefix,						\
> +	__PASTE(__,						\
> +	__PASTE(__iid, id))))
> +
> +#ifdef CONFIG_LTO_CLANG
> +/*
> + * With LTO, the compiler doesn't necessarily obey link order for
> + * initcalls. In order to preserve the correct order, we add each
> + * variable into its own section and generate a linker script (in
> + * scripts/link-vmlinux.sh) to specify the order of the sections.
> + */
> +#define __initcall_section(__sec, __iid)			\
> +	#__sec ".init.." #__iid
> +#else
> +#define __initcall_section(__sec, __iid)			\
> +	#__sec ".init"
> +#endif
> +
>  #ifdef CONFIG_HAVE_ARCH_PREL32_RELOCATIONS
> -#define ___define_initcall(fn, id, __sec)			\
> +#define ____define_initcall(fn, __name, __sec)			\
>  	__ADDRESSABLE(fn)					\
> -	asm(".section	\"" #__sec ".init\", \"a\"	\n"	\
> -	"__initcall_" #fn #id ":			\n"	\
> +	asm(".section	\"" __sec "\", \"a\"		\n"	\
> +	    __stringify(__name) ":			\n"	\
>  	    ".long	" #fn " - .			\n"	\
>  	    ".previous					\n");
>  #else
> -#define ___define_initcall(fn, id, __sec) \
> -	static initcall_t __initcall_##fn##id __used \
> -		__attribute__((__section__(#__sec ".init"))) = fn;
> +#define ____define_initcall(fn, __name, __sec)			\
> +	static initcall_t __name __used 			\
> +		__attribute__((__section__(__sec))) = fn;
>  #endif
>  
> +#define __unique_initcall(fn, id, __sec, __iid)			\
> +	____define_initcall(fn,					\
> +		__initcall_name(initcall, __iid, id),		\
> +		__initcall_section(__sec, __iid))
> +
> +#define ___define_initcall(fn, id, __sec)			\
> +	__unique_initcall(fn, id, __sec, __initcall_id(fn))
> +
>  #define __define_initcall(fn, id) ___define_initcall(fn, id, .initcall##id)
>  
>  /*
> @@ -236,7 +274,7 @@ extern bool initcall_debug;
>  #define __exitcall(fn)						\
>  	static exitcall_t __exitcall_##fn __exit_call = fn
>  
> -#define console_initcall(fn)	___define_initcall(fn,, .con_initcall)
> +#define console_initcall(fn)	___define_initcall(fn, con, .con_initcall)
>  
>  struct obs_kernel_param {
>  	const char *str;
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 3d599716940c..7e382d12d309 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -117,9 +117,11 @@ target-stem = $(basename $(patsubst $(obj)/%,%,$@))
>  # These flags are needed for modversions and compiling, so we define them here
>  # $(modname_flags) defines KBUILD_MODNAME as the name of the module it will
>  # end up in (or would, if it gets compiled in)
> -name-fix = $(call stringify,$(subst $(comma),_,$(subst -,_,$1)))
> +name-fix-token = $(subst $(comma),_,$(subst -,_,$1))
> +name-fix = $(call stringify,$(call name-fix-token,$1))
>  basename_flags = -DKBUILD_BASENAME=$(call name-fix,$(basetarget))
> -modname_flags  = -DKBUILD_MODNAME=$(call name-fix,$(modname))
> +modname_flags  = -DKBUILD_MODNAME=$(call name-fix,$(modname)) \
> +		 -D__KBUILD_MODNAME=kmod_$(call name-fix-token,$(modname))
>  modfile_flags  = -DKBUILD_MODFILE=$(call stringify,$(modfile))
>  
>  _c_flags       = $(filter-out $(CFLAGS_REMOVE_$(target-stem).o), \
> diff --git a/scripts/generate_initcall_order.pl b/scripts/generate_initcall_order.pl
> new file mode 100755
> index 000000000000..fe83aec2b51e
> --- /dev/null
> +++ b/scripts/generate_initcall_order.pl
> @@ -0,0 +1,270 @@
> +#!/usr/bin/env perl
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Generates a linker script that specifies the correct initcall order.
> +#
> +# Copyright (C) 2019 Google LLC
> +
> +use strict;
> +use warnings;
> +use IO::Handle;
> +use IO::Select;
> +use POSIX ":sys_wait_h";
> +
> +my $nm = $ENV{'NM'} || die "$0: ERROR: NM not set?";
> +my $objtree = $ENV{'objtree'} || '.';
> +
> +## currently active child processes
> +my $jobs = {};		# child process pid -> file handle
> +## results from child processes
> +my $results = {};	# object index -> [ { level, secname }, ... ]
> +
> +## reads _NPROCESSORS_ONLN to determine the maximum number of processes to
> +## start
> +sub get_online_processors {
> +	open(my $fh, "getconf _NPROCESSORS_ONLN 2>/dev/null |")
> +		or die "$0: ERROR: failed to execute getconf: $!";
> +	my $procs = <$fh>;
> +	close($fh);
> +
> +	if (!($procs =~ /^\d+$/)) {
> +		return 1;
> +	}
> +
> +	return int($procs);
> +}
> +
> +## writes results to the parent process
> +## format: <file index> <initcall level> <base initcall section name>
> +sub write_results {
> +	my ($index, $initcalls) = @_;
> +
> +	# sort by the counter value to ensure the order of initcalls within
> +	# each object file is correct
> +	foreach my $counter (sort { $a <=> $b } keys(%{$initcalls})) {
> +		my $level = $initcalls->{$counter}->{'level'};
> +
> +		# section name for the initcall function
> +		my $secname = $initcalls->{$counter}->{'module'} . '__' .
> +			      $counter . '_' .
> +			      $initcalls->{$counter}->{'line'} . '_' .
> +			      $initcalls->{$counter}->{'function'};
> +
> +		print "$index $level $secname\n";
> +	}
> +}
> +
> +## reads a result line from a child process and adds it to the $results array
> +sub read_results{
> +	my ($fh) = @_;
> +
> +	# each child prints out a full line w/ autoflush and exits after the
> +	# last line, so even if buffered I/O blocks here, it shouldn't block
> +	# very long
> +	my $data = <$fh>;
> +
> +	if (!defined($data)) {
> +		return 0;
> +	}
> +
> +	chomp($data);
> +
> +	my ($index, $level, $secname) = $data =~
> +		/^(\d+)\ ([^\ ]+)\ (.*)$/;
> +
> +	if (!defined($index) ||
> +		!defined($level) ||
> +		!defined($secname)) {
> +		die "$0: ERROR: child process returned invalid data: $data\n";
> +	}
> +
> +	$index = int($index);
> +
> +	if (!exists($results->{$index})) {
> +		$results->{$index} = [];
> +	}
> +
> +	push (@{$results->{$index}}, {
> +		'level'   => $level,
> +		'secname' => $secname
> +	});
> +
> +	return 1;
> +}
> +
> +## finds initcalls from an object file or all object files in an archive, and
> +## writes results back to the parent process
> +sub find_initcalls {
> +	my ($index, $file) = @_;
> +
> +	die "$0: ERROR: file $file doesn't exist?" if (! -f $file);
> +
> +	open(my $fh, "\"$nm\" --defined-only \"$file\" 2>/dev/null |")
> +		or die "$0: ERROR: failed to execute \"$nm\": $!";
> +
> +	my $initcalls = {};
> +
> +	while (<$fh>) {
> +		chomp;
> +
> +		# check for the start of a new object file (if processing an
> +		# archive)
> +		my ($path)= $_ =~ /^(.+)\:$/;
> +
> +		if (defined($path)) {
> +			write_results($index, $initcalls);
> +			$initcalls = {};
> +			next;
> +		}
> +
> +		# look for an initcall
> +		my ($module, $counter, $line, $symbol) = $_ =~
> +			/[a-z]\s+__initcall__(\S*)__(\d+)_(\d+)_(.*)$/;
> +
> +		if (!defined($module)) {
> +			$module = ''
> +		}
> +
> +		if (!defined($counter) ||
> +			!defined($line) ||
> +			!defined($symbol)) {
> +			next;
> +		}
> +
> +		# parse initcall level
> +		my ($function, $level) = $symbol =~
> +			/^(.*)((early|rootfs|con|[0-9])s?)$/;
> +
> +		die "$0: ERROR: invalid initcall name $symbol in $file($path)"
> +			if (!defined($function) || !defined($level));
> +
> +		$initcalls->{$counter} = {
> +			'module'   => $module,
> +			'line'     => $line,
> +			'function' => $function,
> +			'level'    => $level,
> +		};
> +	}
> +
> +	close($fh);
> +	write_results($index, $initcalls);
> +}
> +
> +## waits for any child process to complete, reads the results, and adds them to
> +## the $results array for later processing
> +sub wait_for_results {
> +	my ($select) = @_;
> +
> +	my $pid = 0;
> +	do {
> +		# unblock children that may have a full write buffer
> +		foreach my $fh ($select->can_read(0)) {
> +			read_results($fh);
> +		}
> +
> +		# check for children that have exited, read the remaining data
> +		# from them, and clean up
> +		$pid = waitpid(-1, WNOHANG);
> +		if ($pid > 0) {
> +			if (!exists($jobs->{$pid})) {
> +				next;
> +			}
> +
> +			my $fh = $jobs->{$pid};
> +			$select->remove($fh);
> +
> +			while (read_results($fh)) {
> +				# until eof
> +			}
> +
> +			close($fh);
> +			delete($jobs->{$pid});
> +		}
> +	} while ($pid > 0);
> +}
> +
> +## forks a child to process each file passed in the command line and collects
> +## the results
> +sub process_files {
> +	my $index = 0;
> +	my $njobs = get_online_processors();
> +	my $select = IO::Select->new();
> +
> +	while (my $file = shift(@ARGV)) {
> +		# fork a child process and read it's stdout
> +		my $pid = open(my $fh, '-|');

/me makes noises about make -jN and the jobserver and not using all
processors on a machine if we were asked nicely not to.

I wrote a jobserver aware tool for the documentation builds, but it's in
python (scripts/jobserver-exec). Instead of reinventing that wheel (and
in Perl), we could:

1) ignore this problem and assume anyone using LTO is fine with using all CPUs

2) implement a jobserver-aware Perl script to do this

3) make Python a build dependency of CONFIG_LTO and re-use scripts/jobserver-exec

> +
> +		if (!defined($pid)) {
> +			die "$0: ERROR: failed to fork: $!";
> +		} elsif ($pid) {
> +			# save the child process pid and the file handle
> +			$select->add($fh);
> +			$jobs->{$pid} = $fh;
> +		} else {
> +			# in the child process
> +			STDOUT->autoflush(1);
> +			find_initcalls($index, "$objtree/$file");
> +			exit;
> +		}
> +
> +		$index++;
> +
> +		# limit the number of children to $njobs
> +		if (scalar(keys(%{$jobs})) >= $njobs) {
> +			wait_for_results($select);
> +		}
> +	}
> +
> +	# wait for the remaining children to complete
> +	while (scalar(keys(%{$jobs})) > 0) {
> +		wait_for_results($select);
> +	}
> +}
> +
> +sub generate_initcall_lds() {
> +	process_files();
> +
> +	my $sections = {};	# level -> [ secname, ...]
> +
> +	# sort results to retain link order and split to sections per
> +	# initcall level
> +	foreach my $index (sort { $a <=> $b } keys(%{$results})) {
> +		foreach my $result (@{$results->{$index}}) {
> +			my $level = $result->{'level'};
> +
> +			if (!exists($sections->{$level})) {
> +				$sections->{$level} = [];
> +			}
> +
> +			push(@{$sections->{$level}}, $result->{'secname'});
> +		}
> +	}
> +
> +	die "$0: ERROR: no initcalls?" if (!keys(%{$sections}));
> +
> +	# print out a linker script that defines the order of initcalls for
> +	# each level
> +	print "SECTIONS {\n";
> +
> +	foreach my $level (sort(keys(%{$sections}))) {
> +		my $section;
> +
> +		if ($level eq 'con') {
> +			$section = '.con_initcall.init';
> +		} else {
> +			$section = ".initcall${level}.init";
> +		}
> +
> +		print "\t${section} : {\n";
> +
> +		foreach my $secname (@{$sections->{$level}}) {
> +			print "\t\t*(${section}..${secname}) ;\n";
> +		}
> +
> +		print "\t}\n";
> +	}
> +
> +	print "}\n";
> +}
> +
> +generate_initcall_lds();
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index a352a5ad9ef7..1d5730176bed 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -43,6 +43,16 @@ info()
>  	fi
>  }
>  
> +# Generate a linker script to ensure correct ordering of initcalls.
> +gen_initcalls()
> +{
> +	info GEN .tmp_initcalls.lds
> +
> +	${srctree}/scripts/generate_initcall_order.pl \
> +		${KBUILD_VMLINUX_OBJS} ${KBUILD_VMLINUX_LIBS} \
> +		> .tmp_initcalls.lds
> +}
> +
>  # If CONFIG_LTO_CLANG is selected, collect generated symbol versions into
>  # .tmp_symversions.lds
>  gen_symversions()
> @@ -74,6 +84,9 @@ modpost_link()
>  		--end-group"
>  
>  	if [ -n "${CONFIG_LTO_CLANG}" ]; then
> +		gen_initcalls
> +		lds="-T .tmp_initcalls.lds"

Oh, I think lds should be explicitly a "local" at the start of this
function, perhaps back in the symversions patch that touches this?

> +
>  		if [ -n "${CONFIG_MODVERSIONS}" ]; then
>  			gen_symversions
>  			lds="${lds} -T .tmp_symversions.lds"
> @@ -285,6 +298,7 @@ cleanup()
>  {
>  	rm -f .btf.*
>  	rm -f .tmp_System.map
> +	rm -f .tmp_initcalls.lds
>  	rm -f .tmp_symversions.lds
>  	rm -f .tmp_vmlinux*
>  	rm -f System.map
> -- 
> 2.28.0.402.g5ffc5be6b7-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031532.CD2A5F372D%40keescook.
