Return-Path: <clang-built-linux+bncBDGIXFWLTIHBBEEBWWEAMGQER43PF7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id B634E3E2C0D
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 16:00:49 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id g12-20020a1709026b4cb029012c0d2e483csf4756333plt.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Aug 2021 07:00:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628258448; cv=pass;
        d=google.com; s=arc-20160816;
        b=FCuIb4Py0xubXbbuZLvof7PW8JpLZnt8PUUC6y4TlpGu8WYTumsTlU1a20uV8WcyvH
         yX0USuMQ+DokYsKZ5kgxMsHsWhGU1AbLiGVViGmxSUIdv+ldb5WbI3P8rxbIvwLbawxk
         MoffMvPW4Hp/bTodbGwSY0BJ04g2MoX65ZNFJwAwie5YlLfU4+nTWs5rLloRHvCZX6hX
         NDqcq+pQ39IHTvw5I9IUbqvHMvogOjSPlwrFpDpYLf0UOMmnJedWnGmNKfJLZXkzToU+
         T+LBXvroiPN9d/RwRPCf38HQJv7zjvtHo0/aB9VpbQvE8ZtFv+adQm4QjuKoI176t5zY
         1dRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ycV/55GuNZ3sg5g5t3MskeouLZ3zkjAaWxxo79DDzIA=;
        b=zLwxjTkIZF3TNJMGMuwv0m5WXdOXw+JFAxoDrv/acz398VqOOHoIRhgB6At7WBg8YC
         aVDAP3tN4oKEuhJBh6kw0hg59SEl97ep76Z94cKmM2U5TXrgJYdrj1KaUnZqFmGlauac
         mnccvbFb8L+KVuBFL1dTjwkOPUhRThTUUtK6Rzs7Xb+uBmxhqlGBL1k8Tw5l2xyHE4AN
         /0HZ0XhMqOjZWHF+4lHRInte/hf7C3RfPm5R9ITpju6/Bbs64RDf8+QOUzhu6OcqTKiW
         vTXjbodYg7CHOtmhaabhLiTcPnv/DUiIGnX57/L0r7DpZjwv30B6tcbPIlKH6OC3dQ3q
         eqOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lkJisRfa;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ycV/55GuNZ3sg5g5t3MskeouLZ3zkjAaWxxo79DDzIA=;
        b=tXwa2Ajfs7eXnfHXNl/M+zZn4iMLq4sJdmy2q8zhz2LZupnHGM4KRV5E4y8Lh/b5Qe
         bDWD36ie6YXFGZq7LLxtHy9B5y6ulddsSkiPFjkoHnSEM4UBnC7ujNcRlfOerbDq4Rr3
         bBIGK5lcClGKHS0nxDAD4lWQ3wnMYn+tFdmKpigTaqU1kUU9Ma/eT33IS2xRH6ugNR3a
         vAU2G4bGqWWvUj+5FeYtowVMsPcd1FhfbtZcoAenqCf6F2psf+adfPFXobLVk3PFUoHD
         X6UlcYUcx8FwpfrJYBgoCNm0u7LYB2MwaK9Pn1ugqO0JdnNqVSNQkwSU9+4ImuAFVCjQ
         ri4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ycV/55GuNZ3sg5g5t3MskeouLZ3zkjAaWxxo79DDzIA=;
        b=iyBu+9KJcYjMwq4u68qo1GPMgvFXkKRpkCLORVwADIVnbE5xROd0OHHgbnM32dLCgs
         fHfklKcph28R2oaOSP8LYwSPJWAbDlQgmBTKCgXyms1jG/heg9cPV5uMW0zfb9BpI1JR
         TXsO8GXUTIhViVhJQf/dsZ5rnjbqn5uTHhRugLYATzTWBiwPW5Ta5m04zaWsZat27gsM
         Phf2uB5Q79SWZWlupf/jwct7lKFMo7E27uRpIDzLAc9jbBzEvUniox8X/FfUE9F/pnxm
         qvNRoE3UWSdRDgJFXbff8vMCSMhIiAy7C74C2uqO0xxp/SP1GlF8ExNv9OfdbXR9PKo5
         AdOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iuDAeIhSTKUy+2VwPXXQMs4v6fkX00gL0XUfiJ0vx/d3G7BBw
	X0AmB4D1YqCIpO3cVCVv04o=
X-Google-Smtp-Source: ABdhPJxcWH3Mn8u4mc4XcBRKxOZQQe6SUbt1ZY5ZN9F0FrlhuJWdikdrihW1B/NhEjsFlYWttht6FQ==
X-Received: by 2002:a17:90a:d816:: with SMTP id a22mr10613799pjv.180.1628258448411;
        Fri, 06 Aug 2021 07:00:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e80a:: with SMTP id u10ls4410171plg.9.gmail; Fri, 06
 Aug 2021 07:00:46 -0700 (PDT)
X-Received: by 2002:a17:90a:4a88:: with SMTP id f8mr21598996pjh.226.1628258446539;
        Fri, 06 Aug 2021 07:00:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628258446; cv=none;
        d=google.com; s=arc-20160816;
        b=AEmMXr6noHQUbJBgSSvjEiYaEq5Pt5RWR8m+RmECDSwWZR/4HMEoG8Eu3I6KfdhjCs
         LncVy7VtO3XkRG4PTVJ9gW297CKXGy8z1p8L7MLnbpg/57TyDlsXjHGQyLAjpapcB7z0
         8oDGX+W1/BabeNTkUksOLgbW7YQiwz5tL3ZO1UVYTyAYwOZZwDPkJ1PKLMRfmO2HIIYG
         Tv3VDKPIURE0UPywoXrUHRAm349sbKHQir1nGDNme/4CfiOdQAxEI/KlktBPLXaw4gRG
         f/QucoZcpTtg6OshyflwjYpr9Ax7P9+acyINqxrBu36fqOrViBl+4Y33lZSLFeytShAJ
         Vplg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=CT8PB4ioVW+di7wPk+2HNgrsGjyXajEJihc9kwUD0O0=;
        b=EKe8AGx76x6HlGz84m/Wro8WaqAJoqJqmMU361DnGr62V5rtmXBVGTeXp8m4XTnHjU
         ZorkVUlLxkcNdtdp9emNw6XeaKNNBERgty2t/lYygjjgEODDJSEtXk+c8AOSHNrNbe2S
         14iQ6N+5+jJ0bX6+zD96ph61C3IPYI0/+BLuLy09q+OWWqs00ok6F02vyoqpt1PgCOJ9
         hXYToGIV/mhmLXWCtA/jKZ4TfifyG04w7oC6qMwFjTz/HDTfz87araGj5mo1nSIPlYZT
         xcym1pNS0VOtzQTXCqqckRouxc43G/P4X/2kJue95j3/SkuCWdNiZ3mzevUyGfOov+1B
         TFdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=lkJisRfa;
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p18si337074plr.1.2021.08.06.07.00.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Aug 2021 07:00:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5DB8361165;
	Fri,  6 Aug 2021 14:00:45 +0000 (UTC)
Date: Fri, 6 Aug 2021 23:00:43 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Steven Rostedt <rostedt@goodmis.org>,
 clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org, Tom Zanussi <zanussi@kernel.org>
Subject: Re: [PATCH v2 5/9] tracing/boot: Show correct histogram error
 command
Message-Id: <20210806230043.cc3700ca5518651c3efe5748@kernel.org>
In-Reply-To: <202108061028.Wme82Hlq-lkp@intel.com>
References: <162818075888.226227.14156763636028793396.stgit@devnote2>
	<202108061028.Wme82Hlq-lkp@intel.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=lkJisRfa;       spf=pass
 (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mhiramat@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, 6 Aug 2021 10:58:30 +0800
kernel test robot <lkp@intel.com> wrote:

> Hi Masami,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on tip/perf/core]
> [also build test WARNING on trace/for-next linux/master linus/master v5.14-rc4 next-20210805]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Masami-Hiramatsu/tracing-boot-Add-histogram-syntax-support-in-boot-time-tracing/20210806-002938
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 79551ec0782895af27d6aa9b3abb6d547b7260d3

This seems that the base tree is not correct. I worked on Steve's 
linux-trace tree for this series, including 

commit e5efaeb8a8f5 ("bootconfig: Support mixing a value and subkeys under a key")

which introduced "xbc_node_for_each_subkey()" macro.

Thank you,


> config: x86_64-randconfig-r025-20210805 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 42b9c2a17a0b63cccf3ac197a82f91b28e53e643)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/b07ebb734f4e2b68934de501715c1cd98e34ae17
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Masami-Hiramatsu/tracing-boot-Add-histogram-syntax-support-in-boot-time-tracing/20210806-002938
>         git checkout b07ebb734f4e2b68934de501715c1cd98e34ae17
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    kernel/trace/trace_boot.c:287:2: error: implicit declaration of function 'xbc_node_for_each_subkey' [-Werror,-Wimplicit-function-declaration]
>            xbc_node_for_each_subkey(hnode, node) {
>            ^
>    kernel/trace/trace_boot.c:287:39: error: expected ';' after expression
>            xbc_node_for_each_subkey(hnode, node) {
>                                                 ^
>                                                 ;
>    kernel/trace/trace_boot.c:290:4: error: 'continue' statement not in loop statement
>                            continue;
>                            ^
>    kernel/trace/trace_boot.c:294:4: error: 'break' statement not in loop or switch statement
>                            break;
>                            ^
>    kernel/trace/trace_boot.c:404:2: error: implicit declaration of function 'xbc_node_for_each_subkey' [-Werror,-Wimplicit-function-declaration]
>            xbc_node_for_each_subkey(hnode, node) {
>            ^
>    kernel/trace/trace_boot.c:404:39: error: expected ';' after expression
>            xbc_node_for_each_subkey(hnode, node) {
>                                                 ^
>                                                 ;
>    kernel/trace/trace_boot.c:407:4: error: 'continue' statement not in loop statement
>                            continue;
>                            ^
> >> kernel/trace/trace_boot.c:420:4: warning: misleading indentation; statement is not part of the previous 'if' [-Wmisleading-indentation]
>                            if (trigger_process_regex(file, buf) < 0)
>                            ^
>    kernel/trace/trace_boot.c:418:3: note: previous statement is here
>                    if (trace_boot_compose_hist_cmd(hnode, buf, size) == 0)
>                    ^
>    1 warning and 7 errors generated.
> 
> 
> vim +/if +420 kernel/trace/trace_boot.c
> 
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  395  
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  396  static void __init
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  397  trace_boot_init_histograms(struct trace_event_file *file,
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  398  			   struct xbc_node *hnode, char *buf, size_t size)
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  399  {
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  400  	struct xbc_node *node;
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  401  	const char *p;
> b07ebb734f4e2b Masami Hiramatsu 2021-08-06  402  	char *tmp;
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  403  
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06 @404  	xbc_node_for_each_subkey(hnode, node) {
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  405  		p = xbc_node_get_data(node);
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  406  		if (!isdigit(p[0]))
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  407  			continue;
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  408  		/* All digit started node should be instances. */
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  409  		if (trace_boot_compose_hist_cmd(node, buf, size) == 0) {
> b07ebb734f4e2b Masami Hiramatsu 2021-08-06  410  			tmp = kstrdup(buf, GFP_KERNEL);
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  411  			if (trigger_process_regex(file, buf) < 0)
> b07ebb734f4e2b Masami Hiramatsu 2021-08-06  412  				pr_err("Failed to apply hist trigger: %s\n", tmp);
> b07ebb734f4e2b Masami Hiramatsu 2021-08-06  413  			kfree(tmp);
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  414  		}
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  415  	}
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  416  
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  417  	if (xbc_node_find_child(hnode, "keys")) {
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  418  		if (trace_boot_compose_hist_cmd(hnode, buf, size) == 0)
> b07ebb734f4e2b Masami Hiramatsu 2021-08-06  419  			tmp = kstrdup(buf, GFP_KERNEL);
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06 @420  			if (trigger_process_regex(file, buf) < 0)
> b07ebb734f4e2b Masami Hiramatsu 2021-08-06  421  				pr_err("Failed to apply hist trigger: %s\n", tmp);
> b07ebb734f4e2b Masami Hiramatsu 2021-08-06  422  			kfree(tmp);
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  423  	}
> 8885ed81dfd529 Masami Hiramatsu 2021-08-06  424  
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
Masami Hiramatsu <mhiramat@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210806230043.cc3700ca5518651c3efe5748%40kernel.org.
