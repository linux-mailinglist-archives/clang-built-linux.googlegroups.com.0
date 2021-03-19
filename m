Return-Path: <clang-built-linux+bncBCWMTL744QBRBSOB2GBAMGQEF5YBRZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 84502341781
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 09:28:57 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id z6sf21415841wrh.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 01:28:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616142537; cv=pass;
        d=google.com; s=arc-20160816;
        b=ff9NFSJAnmVzRKhWHMdKGQIpo6vAOyCP8l+bKovdFPXSczusva/hXv0Dz+8SX73EGE
         wYtF8WcQ7Cqm9ni2cvyTr8dHW5RcdCZcqZYNhaMbJ/OIq/DdMTCVRfzTFv/iGKTPBO+X
         kZVyvoA+KHeuBKQWkH6qJtvkfZqsO73TLWDHFcqfaVRovhEZ7od1nxlk6b65KtMe4Hz/
         /tJTJrjWdr81xnhN1FGP0FmBKI+7rP1l65MzyyKCPeeyrGY9g8244f3a7JgZlPkJ8nUt
         JeMyFDAmYtrQ+ywvZ6/SzK8Xu/y6AqlAVE0ujQDpCO9mvWnLnRWEkj24ZUoIlkCWiZYR
         zAWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=5pfO1NFssK5cF2VAcpYszwC3oaKgmoGwNjXqdFwNdsE=;
        b=rDckgEmhA3I+ZlRdzudMhGI5dYH/MEbHMIHwbI4FMwH7xhEUSKWMde4I8OkGGbdHP9
         mltJ4y9odkDKnBHLy/tFO5CAw3SN//lAfDj33UnKk0Ttp4Huo2Cc7GFJrL5hKkzKRkut
         U41A66JhQZLmRlY2eAzkOITq6aaZ0qCD4SORgYHf4uh+aocJMXXbPzY5El1o6poTyTOU
         qjPMn/mnZ9l2q3+FolQBrR4TU85fsq7I8oIps1p0V7F1gYhlXZQcrDfiBexq04+Om3cF
         I7Ro5nuF1yzJGSpTrTv4kGGj3zOd4Dw8fIkk0jLw3P2ilyeI0PNVS+S2iEPgagW21v5k
         M/jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mic@digikod.net designates 2001:1600:4:17::8fa8 as permitted sender) smtp.mailfrom=mic@digikod.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5pfO1NFssK5cF2VAcpYszwC3oaKgmoGwNjXqdFwNdsE=;
        b=anLI636w2Oi9UZLX/Odk2aTAYhnf+zxGGjWXVFKCLyFHaCEktqvz/Md38lKWTMa02A
         Vz55K+gaUhQVEobLH11KCxRRcVBMo59Q1hMz+q0moo0Fm5MvIV5Q6WBfe2w9qKPcsBi2
         em8M/oyn0O5QivB8a0+65kBWDTjizQAHO1+DikkNfiWv0RAw/aWoWK9DWcI2PZJG7re9
         0P6WYqquN/fFAYzUqzWtVFAQko2oiDoGimxsoy5t4u6TernD+ZYN7+8qDDha/Fnp0lnN
         FyWWt6Pw3kDuNE5wasagpRvNPLDKD/9mI++H6qpWpkgQHbk1yQTH2BqEEw5+lvmtp69w
         ODkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5pfO1NFssK5cF2VAcpYszwC3oaKgmoGwNjXqdFwNdsE=;
        b=CUSlnDzl1xCrYlTtUOzQw3V0QM/Xbhyge1cJjBMyyGYQ4sZHxombq6bTnQ8HbkGb5U
         yrKLKZ+8h2q2cAJL2BU7emKEmA0jC/I917ZAFwelyHzDubb0uuDgDufNg3/7vEOvUXtB
         zDtaNjO6a8aHwbHP3YgzozRQBiZy0BD9s3J2fZfMToYVLB75DBE2HE4O+qprqM66ygLZ
         6DrQO3wmC3eJWvCcoSfUoGkHh9KTPirhULqWBhnK6dsapjQDVnvBg4eksFXoQCZ6HsZp
         TJQNfiLuEmlEwXUa2o86VFlNVj7Z00AUvLaYSddpL4oo22AjfvthfxW7WChOJ4eMgf9G
         6KNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53263R12EA/D6SO4JPuBej96DtdvIHPk78At/VfaexaQym6sKh6a
	YLNagjvL8LF/jfzoK3aDs7o=
X-Google-Smtp-Source: ABdhPJzzcrZs5MJa0LQVIUtWguyLLwRKCxEE/gESDAHzZktHEM+zP4TMTOkMWrMd6enOQOGUUBlN+A==
X-Received: by 2002:a1c:7ec4:: with SMTP id z187mr2614383wmc.3.1616142537313;
        Fri, 19 Mar 2021 01:28:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f8f:: with SMTP id n15ls2225974wmq.2.gmail; Fri,
 19 Mar 2021 01:28:56 -0700 (PDT)
X-Received: by 2002:a05:600c:2102:: with SMTP id u2mr2683554wml.22.1616142536368;
        Fri, 19 Mar 2021 01:28:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616142536; cv=none;
        d=google.com; s=arc-20160816;
        b=NpMG0VmHoeNzLZgIpmdBfAyLeWzZnwm+DA+PDKzNEykwyCP7uH33UkIqxEEJmYobEU
         fbl2/VFE5anZDZFIFYa8a9zSy32otLJsbWHCb0RJmBKsTusWIQqH9bsYNH2L6IlDAtjT
         4U+uOnZF5mHPwsI/bMqT+X6tCL7JhKTK83czPR6nZqIYuCL3yDpsnJEZE3uFGhQeQjts
         j1DnHxlLTPlKoW/kzmrFhiDxjTG8QqBiqrdkV1lihD9cjL4ob5YWiP8OSDuWM8FEpx+s
         cZhTBDiL0MiVuiMa8LFgDi/yvhDrozs2STfxJAz0wGz1+xUrIIwaMyVagRncx1GS/U88
         Ecbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=fUCUENoAuCWU8d5EYvQlAW7FPdzSi41ehJQAwWOYpAo=;
        b=fqq5f6wFzZGojB4zfTwiXLL5xdTfff4R5Pb11lt/Dl+FKH+A3/2sHvt9sCf/DNZopy
         Nia7OQoAVM5v+hFSrhMft29aVmlYELeRRJWgBV9cKepWUBjGqlcoOYgbIJXkG1KgA0TE
         CH6ac3sJ2yJLLyxiafGM2+Ffs+eA91GRxvc5PEqj4HZWjDp4ivabP4RWd8lwkXbR77D2
         dLCPRSqjvp32N6YOG96QFVm61NKiuUpU58MKN3olo0lgPImMBmxpT2x5YuYTRDZkqSa2
         avdDRvQePaxus4IuO60Bn5bDlYeCDIbDh8jW0+vzQFbNbIQUgjeqMlXun7wzovqUeaCB
         dx7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mic@digikod.net designates 2001:1600:4:17::8fa8 as permitted sender) smtp.mailfrom=mic@digikod.net
Received: from smtp-8fa8.mail.infomaniak.ch (smtp-8fa8.mail.infomaniak.ch. [2001:1600:4:17::8fa8])
        by gmr-mx.google.com with ESMTPS id y12si145734wrw.3.2021.03.19.01.28.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Mar 2021 01:28:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of mic@digikod.net designates 2001:1600:4:17::8fa8 as permitted sender) client-ip=2001:1600:4:17::8fa8;
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4F1xr76p6KzMpnlT;
	Fri, 19 Mar 2021 09:28:55 +0100 (CET)
Received: from ns3096276.ip-94-23-54.eu (unknown [23.97.221.149])
	by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4F1xr506LQzlh8TD;
	Fri, 19 Mar 2021 09:28:52 +0100 (CET)
Subject: Re: [security:landlock_lsm 8/12] kernel/sys_ni.c:270:1: warning: no
 previous prototype for function '__arm64_sys_landlock_create_ruleset'
To: kernel test robot <lkp@intel.com>, Masahiro Yamada
 <masahiroy@kernel.org>, James Morris <jamorris@linux.microsoft.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-security-module@vger.kernel.org,
 =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@linux.microsoft.com>,
 Al Viro <viro@zeniv.linux.org.uk>, "Serge E . Hallyn" <serge@hallyn.com>,
 Jann Horn <jannh@google.com>, linux-arch <linux-arch@vger.kernel.org>,
 X86 ML <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <202103191225.cgrp2F0E-lkp@intel.com>
From: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Message-ID: <0491a550-4800-fd39-fea4-468b7aed110b@digikod.net>
Date: Fri, 19 Mar 2021 09:29:08 +0100
User-Agent: 
MIME-Version: 1.0
In-Reply-To: <202103191225.cgrp2F0E-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: mic@digikod.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mic@digikod.net designates 2001:1600:4:17::8fa8 as
 permitted sender) smtp.mailfrom=mic@digikod.net
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

This kind of warnings will be fixed with
https://lore.kernel.org/lkml/20210301131533.64671-2-masahiroy@kernel.org/


On 19/03/2021 05:56, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jmorris/linux-security.git landlock_lsm
> head:   f642729df39003efe2a9bfa341a95759d712eb35
> commit: c5eafae25eb54cc5354f0675a88a34f03c08f559 [8/12] landlock: Add syscall implementations
> config: arm64-randconfig-r033-20210318 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project fcc1ce00931751ac02498986feb37744e9ace8de)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/jmorris/linux-security.git/commit/?id=c5eafae25eb54cc5354f0675a88a34f03c08f559
>         git remote add security https://git.kernel.org/pub/scm/linux/kernel/git/jmorris/linux-security.git
>         git fetch --no-tags security landlock_lsm
>         git checkout c5eafae25eb54cc5354f0675a88a34f03c08f559
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:21:1: note: expanded from here
>    __arm64_sys_shutdown
>    ^
>    kernel/sys_ni.c:250:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:251:1: warning: no previous prototype for function '__arm64_sys_recvfrom' [-Wmissing-prototypes]
>    COND_SYSCALL(recvfrom);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:22:1: note: expanded from here
>    __arm64_sys_recvfrom
>    ^
>    kernel/sys_ni.c:251:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:253:1: warning: no previous prototype for function '__arm64_sys_sendmsg' [-Wmissing-prototypes]
>    COND_SYSCALL(sendmsg);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:27:1: note: expanded from here
>    __arm64_sys_sendmsg
>    ^
>    kernel/sys_ni.c:253:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:255:1: warning: no previous prototype for function '__arm64_sys_recvmsg' [-Wmissing-prototypes]
>    COND_SYSCALL(recvmsg);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:32:1: note: expanded from here
>    __arm64_sys_recvmsg
>    ^
>    kernel/sys_ni.c:255:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:261:1: warning: no previous prototype for function '__arm64_sys_mremap' [-Wmissing-prototypes]
>    COND_SYSCALL(mremap);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:37:1: note: expanded from here
>    __arm64_sys_mremap
>    ^
>    kernel/sys_ni.c:261:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:264:1: warning: no previous prototype for function '__arm64_sys_add_key' [-Wmissing-prototypes]
>    COND_SYSCALL(add_key);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:38:1: note: expanded from here
>    __arm64_sys_add_key
>    ^
>    kernel/sys_ni.c:264:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:265:1: warning: no previous prototype for function '__arm64_sys_request_key' [-Wmissing-prototypes]
>    COND_SYSCALL(request_key);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:39:1: note: expanded from here
>    __arm64_sys_request_key
>    ^
>    kernel/sys_ni.c:265:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:266:1: warning: no previous prototype for function '__arm64_sys_keyctl' [-Wmissing-prototypes]
>    COND_SYSCALL(keyctl);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:40:1: note: expanded from here
>    __arm64_sys_keyctl
>    ^
>    kernel/sys_ni.c:266:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>>> kernel/sys_ni.c:270:1: warning: no previous prototype for function '__arm64_sys_landlock_create_ruleset' [-Wmissing-prototypes]
>    COND_SYSCALL(landlock_create_ruleset);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:45:1: note: expanded from here
>    __arm64_sys_landlock_create_ruleset
>    ^
>    kernel/sys_ni.c:270:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>>> kernel/sys_ni.c:271:1: warning: no previous prototype for function '__arm64_sys_landlock_add_rule' [-Wmissing-prototypes]
>    COND_SYSCALL(landlock_add_rule);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:46:1: note: expanded from here
>    __arm64_sys_landlock_add_rule
>    ^
>    kernel/sys_ni.c:271:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>>> kernel/sys_ni.c:272:1: warning: no previous prototype for function '__arm64_sys_landlock_restrict_self' [-Wmissing-prototypes]
>    COND_SYSCALL(landlock_restrict_self);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:47:1: note: expanded from here
>    __arm64_sys_landlock_restrict_self
>    ^
>    kernel/sys_ni.c:272:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:277:1: warning: no previous prototype for function '__arm64_sys_fadvise64_64' [-Wmissing-prototypes]
>    COND_SYSCALL(fadvise64_64);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:48:1: note: expanded from here
>    __arm64_sys_fadvise64_64
>    ^
>    kernel/sys_ni.c:277:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:280:1: warning: no previous prototype for function '__arm64_sys_swapon' [-Wmissing-prototypes]
>    COND_SYSCALL(swapon);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:49:1: note: expanded from here
>    __arm64_sys_swapon
>    ^
>    kernel/sys_ni.c:280:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:281:1: warning: no previous prototype for function '__arm64_sys_swapoff' [-Wmissing-prototypes]
>    COND_SYSCALL(swapoff);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:50:1: note: expanded from here
>    __arm64_sys_swapoff
>    ^
>    kernel/sys_ni.c:281:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:282:1: warning: no previous prototype for function '__arm64_sys_mprotect' [-Wmissing-prototypes]
>    COND_SYSCALL(mprotect);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:51:1: note: expanded from here
>    __arm64_sys_mprotect
>    ^
>    kernel/sys_ni.c:282:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:283:1: warning: no previous prototype for function '__arm64_sys_msync' [-Wmissing-prototypes]
>    COND_SYSCALL(msync);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:52:1: note: expanded from here
>    __arm64_sys_msync
>    ^
>    kernel/sys_ni.c:283:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:284:1: warning: no previous prototype for function '__arm64_sys_mlock' [-Wmissing-prototypes]
>    COND_SYSCALL(mlock);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:53:1: note: expanded from here
>    __arm64_sys_mlock
>    ^
>    kernel/sys_ni.c:284:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    arch/arm64/include/asm/syscall_wrapper.h:76:13: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                       ^
>    kernel/sys_ni.c:285:1: warning: no previous prototype for function '__arm64_sys_munlock' [-Wmissing-prototypes]
>    COND_SYSCALL(munlock);
>    ^
>    arch/arm64/include/asm/syscall_wrapper.h:76:25: note: expanded from macro 'COND_SYSCALL'
>            asmlinkage long __weak __arm64_sys_##name(const struct pt_regs *regs)   \
>                                   ^
>    <scratch space>:54:1: note: expanded from here
>    __arm64_sys_munlock
>    ^
>    kernel/sys_ni.c:285:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> 
> 
> vim +/__arm64_sys_landlock_create_ruleset +270 kernel/sys_ni.c
> 
>    268	
>    269	/* security/landlock/syscalls.c */
>  > 270	COND_SYSCALL(landlock_create_ruleset);
>  > 271	COND_SYSCALL(landlock_add_rule);
>  > 272	COND_SYSCALL(landlock_restrict_self);
>    273	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0491a550-4800-fd39-fea4-468b7aed110b%40digikod.net.
