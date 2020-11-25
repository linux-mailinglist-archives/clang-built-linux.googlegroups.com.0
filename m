Return-Path: <clang-built-linux+bncBCR5ZKFZSUNRBCWG636QKGQESFAAMQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 525E02C354E
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 01:19:23 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id y24sf164645ljy.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 16:19:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606263562; cv=pass;
        d=google.com; s=arc-20160816;
        b=hbBfCHepOnizwTvz76ZpPi6dPbBloMY0n9xeSpK2WgtgmefE7zcJMvLpjKMxY5kx4g
         wFMh4rHzn8hxHcvFeWL9063MHQJPXzyPt+RWBP7oYEjYincJcDahaFl9VncCHrFBZv7G
         NrzqtMyPVsoOk/A+9UekAIgpGKByHZqEcNppmU7LwNpleKfOAee0Keb0570NHRKqRB5w
         dW988db1THP6JhbeQ5ZCs7/cC3r+XUDIFRm46LxnFVrKcH/AbRt6DPdWBoQVoxjBXL7q
         zsqfeP8r1/Vw1+LBRnNyinC2YXjInYrz4lUCiB+98vsaMijKG9u6y41IAO1htEgf6LAt
         /gpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:organization:subject:cc:to:from:sender
         :dkim-signature;
        bh=MijylHj1SERC+kbWw3HraKHPz2wBec2p5tgqpIwFDbY=;
        b=Iiu80lajSpXouMWpWgAqdVZRQKRfLFnK/N+MlXn/4YdIKb12mYxdcV3tdBr7tA68hr
         uPUXSSEQL01ovxKyyysTTai33oBuniNsZ8xIZPq9w7snmepc+F8Sdt/7PwbVm/d+3EGn
         3xLiA2uSQfZJJYgVV8jqQwJO0iUxNZ79OuUPatSEktR0FTYmJEGA6Q6bBTTHWJ7b+SQY
         Jjv96YR/fzcZjASOK+BG2YR5OfdAEZu6WPF1wxbBkZpmwkFM9SHMKyMZqOv/fNtzCVMY
         Ue/slyUcEIsjbfycvMG+3Po5BbqePvHSLMf/YRMw2KWlcRcrI2UIImp3ZU8mdbj73aoQ
         m4lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:organization:references:date:in-reply-to
         :message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MijylHj1SERC+kbWw3HraKHPz2wBec2p5tgqpIwFDbY=;
        b=fzrE1ayMyymP2sxGooCJa2nLdmAeYPpdJCjnStG8xmI9jphZPkW+RCOB3Sw9oxq5vt
         XmZxtY6G5eIX212yDTgLOUh2mPCn2wUN/+IoB7EsE2hV7ccNlRZogD7j33TfryjQzb9z
         ultj9PQEelSHPl7mA+LbepzOmIAcBRwqep121QbgpeiFviso+NbEbAp/gNSIzVxl761y
         P6LC/WcDrs9nKddweNj1fm2c26F2+uQgCsFFwHWjQUDLX+TUuCv9dvJJpuGqbcsBWdlz
         bPW0dLzbgPS1jdXIkEGJ3KsB3anNrPcZB5Mx40fqhrJJqxgV+ZUluzQW+PfUzIhCuF7J
         cFWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:organization
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MijylHj1SERC+kbWw3HraKHPz2wBec2p5tgqpIwFDbY=;
        b=uTmpIQ7fgpoumiCPL1+knGViFYgqRgRgmeqoagOjJ11gNJJCinI8U5WUoqns/ijtDQ
         NYKS2jzVldr3MXc1Jhgb4oie0tz6Mrh9LuXaMnug8lfTq7iwJ4/SpQAiRn8o7kReYaMx
         GOQ6ynoHiQllwzmBjknIUpcQhk/N2+3rJMkSqqT6biaN33uTvMUkDfvI7R3jnsrDNNrj
         g18zTpAVo81ddE6vt3m3Q4JRNEoE8P0h88ClBMpbefvYD9BEyXgNHe+EKTRHG9Uc9a2k
         F5SxIN1QS6YLVGk9KTis33KNUTtkMC67zQObm6JRp68OMEW8X7sZ9UsGiv52J0ntHdp+
         BHpQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324mUZEnUUkpT/ylLX2Fu9QLucWuOGX+YGXJHDtTqGVR3R8gilD
	RQj3Inpks659rOuFAlzF9D8=
X-Google-Smtp-Source: ABdhPJwODzqT5CLPou2Yv3YhOghxVf0InvP1YJsTBNsdqhItNeeQ/BYpV4q004D2Q5SmMUci4T9sdw==
X-Received: by 2002:ac2:53ab:: with SMTP id j11mr281723lfh.86.1606263562768;
        Tue, 24 Nov 2020 16:19:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:d0e:: with SMTP id 14ls261326lfn.0.gmail; Tue, 24 Nov
 2020 16:19:21 -0800 (PST)
X-Received: by 2002:a19:230d:: with SMTP id j13mr292598lfj.378.1606263561613;
        Tue, 24 Nov 2020 16:19:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606263561; cv=none;
        d=google.com; s=arc-20160816;
        b=Uayvx1yIokcv7+TOz0C/0OPtdWc88RODxQ+0Ukt/lyB0zuz8Ga7pLTmYYxMEJt2fQ3
         D2WApztEY/zPxilFtxdlZMLcRMKIc1rEvr5Or+C49cj3CWdTBRAJEIHHkV2Lc+BOOof/
         Pouwl1D4z8fSIOhExygPXaMz6H93CzzmnzGB4sxNUa8pO+Y4mSqoLXaaSfeFG/wcofUb
         SDkRCQFJKJMEnMm4TX79xkZWoHEpJq6DQwgTQP9vaw+gTa6yj3YIYP1jV61V8mcbxGtl
         q0uf/3KTrm+1pSJYeG+1BJ/c8oyLgdlW4efk9Z+/rsgc5QhxCuKqiL8h+qpq+n5SOzrR
         QABw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :organization:subject:cc:to:from;
        bh=Xw3gVnm7p8JjMA+Gg1E7oLy7J+dYcoCQ8zmN6lyxakQ=;
        b=tTK0syKJZ6kA/5FflBKIJ+gJHGAJ26frK3B2eQdtHz2Q82/glpLt8hdYuysPPKnrwA
         kyaACSZa4lXw7LTylnMp4AE3btexY8QdncA6M3z9bIbOD9LT+ZAGAlMxrtF3hjbCRVkX
         z/2cLxStPJPgTSyS5FImue+0/2kqYFZ6AdDpZ0I4BtElw4eX8fEULfpRLZLS+fmTVlwK
         2I+E/+TIqPCJGANwrEm6kMkA5/1oJ754iSMnP1a1xJlikD60P69BhRDsb1VQLPxqu6mM
         ZafZB+CFB/ewbMb73lK/+y0qfL1PtoXL5CS7duBJVt9TQgpPXf6N85qOj7w9zZpS4onW
         VlTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=krisman@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id y84si20264lfa.6.2020.11.24.16.19.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Nov 2020 16:19:21 -0800 (PST)
Received-SPF: pass (google.com: domain of krisman@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: krisman)
	with ESMTPSA id E7A941F4539F
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org,  clang-built-linux@googlegroups.com,
  linux-kernel@vger.kernel.org,  x86@kernel.org,  Thomas Gleixner
 <tglx@linutronix.de>,  Kees Cook <keescook@chromium.org>
Subject: Re: [tip:core/entry 1/1] include/linux/seccomp.h:45:15: error: use
 of undeclared identifier 'TIF_WORK_SECCOMP'
Organization: Collabora
References: <202011250806.w8maTx2J-lkp@intel.com>
Date: Tue, 24 Nov 2020 19:19:13 -0500
In-Reply-To: <202011250806.w8maTx2J-lkp@intel.com> (kernel test robot's
	message of "Wed, 25 Nov 2020 08:09:27 +0800")
Message-ID: <87pn42nv9a.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: krisman@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of krisman@collabora.com designates 46.235.227.227 as
 permitted sender) smtp.mailfrom=krisman@collabora.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

kernel test robot <lkp@intel.com> writes:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git core/entry
> head:   0395124a2fbff5132afee5767071ebe7e05885ac
> commit: 0395124a2fbff5132afee5767071ebe7e05885ac [1/1] entry: Fix boot for !CONFIG_GENERIC_ENTRY
> config: riscv-randconfig-r024-20201124 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project df9ae5992889560a8f3c6760b54d5051b47c7bf5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=0395124a2fbff5132afee5767071ebe7e05885ac
>         git remote add tip https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
>         git fetch --no-tags tip core/entry
>         git checkout 0395124a2fbff5132afee5767071ebe7e05885ac
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from arch/riscv/kernel/asm-offsets.c:10:
>    In file included from include/linux/sched.h:22:
>>> include/linux/seccomp.h:45:15: error: use of undeclared identifier 'TIF_WORK_SECCOMP'
>            if (unlikely(test_syscall_work(SECCOMP)))
>                         ^
>    include/linux/thread_info.h:136:45: note: expanded from macro 'test_syscall_work'
>            test_ti_thread_flag(current_thread_info(), TIF_WORK_##fl)
>                                                       ^
>    <scratch space>:71:1: note: expanded from here
>    TIF_WORK_SECCOMP

Was this a merge error when applying the commit?

The patch I submitted is different from what is in the TIP tree.

https://www.spinics.net/lists/arm-kernel/msg857461.html

https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?h=core/entry

-- 
Gabriel Krisman Bertazi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87pn42nv9a.fsf%40collabora.com.
