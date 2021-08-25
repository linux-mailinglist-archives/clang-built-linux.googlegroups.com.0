Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPOQS2EQMGQEA4UOVMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0499E3F6D62
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 04:17:35 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id et12-20020a056214176c00b0037279a2ce4csf3213250qvb.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 19:17:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629857854; cv=pass;
        d=google.com; s=arc-20160816;
        b=s3eUg14YCUej1ZrQmkndw4EZKY5ehY87tJ/SN+RL+pRgVVu4LdC67a7md36UChZNHO
         a9M8whHhX5ezwg1sleBcJ/7/KmQkZ3MpARUL/WxX8lzgU+V5QkAGNhY1zABir33Z3BWC
         IMsyWzsOkH5yMPmopzz4Oa0kfaodts+ETozZ5pyFL/8+oygbKAgrNB2XszE4JhKQrGPr
         UljCLcKcqxWK+rzPb8RNmqxALLteu67F/YbPVPqowiRgxFbJGh7gPG5acrbRVJ6emEtH
         ucRtQH4YXcFqicXtTpgE+ccg0eFrVrrZcP+wVff9tmT+ENSpQixb0QmJq3IS584VdNSs
         c+yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ujqxfo0m7kpFc3rDpayvVaEo9y+CXUwZadWRt8d8l98=;
        b=o+S8Vzdc4nJOJwC07uCl+n5OUt/2oz7Z6F/AU6awK57OOt9/Qtj/TafYtdqYLCwbZD
         itR+2WiH1QsDaIDaXQRfvKWqZUgUfSWOeNa7BA46cYYYKfKhU7AU3g0AdGxP2xzHScFv
         9GqcgVzD87RMaEWJijwwwC/afHty91qWmf6QoXaCldJVk49k4kAmbMITJrArhzddpAbw
         uTZyg/v4SrVOIhInob4euVwhshWivGSYeq9rRLw4gHQ839dCxTAG/qBd1vcBRWJ7DtlG
         U2W/kAzdqA/zstNCWJA2Z8QpFiEyOF67474vaYHS+RDTgLSMIs+ETlW1vpAH7LrjUSmQ
         ayvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Sp4TYw1y;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ujqxfo0m7kpFc3rDpayvVaEo9y+CXUwZadWRt8d8l98=;
        b=OBiZ/oDvsEhEOgbQPy+sKPEvkz/DF0u9AKu0sEyf4d3t3iYL+B7XlWBFL+2ko3uVQ8
         FiX+HN1P9rbsoBUUAIawVOuP14HTf919teaPQyUqTcVT9Lcwn+MZu0pG54cG+ho8L7u1
         4KlLtMQBHTfQBKLE3L522Jp0t3+biWaG4ZA3TsOhCM0CFohGOLHY+NCI0qbhZ7Ku862P
         xEQS4/X58Tqjd1X+wGp4iM5XXmDDLCg73aYtAVDzrC6JhsVBW9SuEe0YFAhC3cIIPf+v
         9r5yjPbqjl/mvZy4EaU0ByYoZNSEwT0co2gM/AbWaUIoczYieVtRiQgInQprvoS1jZjS
         H4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ujqxfo0m7kpFc3rDpayvVaEo9y+CXUwZadWRt8d8l98=;
        b=MCS4ktQilljchDbkc3h56SAjnOpHYcvGKlbiCbktnkTpWMXjqAL5bPrk8wCbF+Jj3Q
         BajPzpET05EIlqCzS0SKPqWppz56YzIMAfI6ZjFluWkwLapDA3FfwlOiA9H1FOOJGhVL
         0/TPWKxrVH9HcZBs4TGgmMfAAEwcQHcbpJAd9rWGZ8P94WFe8e/ToqEX0AgDI3uuJovH
         wLNrmhiRL41Dz4UX2zUsjE08YxsZyVBazMSHY24aRgAkVBbrOuvnRBQbkNCFvA/iYJWq
         tZ9XsKeXA/MzMeZ5PjyQ6Y30qvO0hURq0ltm6Hi5DQtjr+8vI12fz0go1eMq7Mkrxq4i
         leKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Xq3KI/Cs0yP0BH1mKD2gC3hRmgTxZt2t0lHbrLLMG2nUk6mqO
	DfgRh3aJjDUZc9k04g0oSRo=
X-Google-Smtp-Source: ABdhPJw7OVKBJCCpLGrDzqu8M2J2cq+tLtCVbNr5XHvRr9zCX8z/9ZjX3LfghB1KK9oYmQ5UPbuXbg==
X-Received: by 2002:ac8:5848:: with SMTP id h8mr38433059qth.254.1629857853750;
        Tue, 24 Aug 2021 19:17:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:628c:: with SMTP id w134ls372237qkb.7.gmail; Tue, 24 Aug
 2021 19:17:33 -0700 (PDT)
X-Received: by 2002:a37:9085:: with SMTP id s127mr28587380qkd.215.1629857853240;
        Tue, 24 Aug 2021 19:17:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629857853; cv=none;
        d=google.com; s=arc-20160816;
        b=EqdpeYnwQCs3U+xtropjaLPtf3ZcaxDlC9C9xwHVv8peMLuPZ2VxvfQ97I/ASQ21Fx
         GGHn+22hoTFFFeqdRSRSIC0+FZznMLWqQDzxkhCIWVJn+SfAYPZX8w80D5t7bhG0Revf
         V+ixq9ar5TXYGJsNHcOeaiCbRmCAfkGpy1GhoqSRjJCWEMbj3IhLWxWR1QX5C0TTpdRU
         4ozbx82hhfJZUjlw/T13/jMJODnIoVqNqiqYFfUPJ0wrfisrIsSfcS2cSJjm3VmRjltX
         0c0FG5hOOB1i0mMSRaUkIzc6HvGVbvB9ZbaDQnrPriDkTHDqlyb2tpuWGwmUA4+VErdj
         JYzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kDInSr8L7ift0b5jP69a65dVfelWdpVx5p0PeZjr4RU=;
        b=Q9DUFUMoxgbbDDqoRFY7ArnZCiafzF7VLyyFhq00FuMvDahyAI/z3ia3wyCzj6VnFv
         ofcTa5Ug7fVVAmwqJh5EvzT/yBYE+HOwnwghT+IFveMbjmZcVUiDHsKZay2WhBM5ggff
         MAWN8EaAZQrkA4XmUuWOi3yg9Sre5I6z/mhcGx+MTYcRWZK+t11zl45/l8UqAElilbQ6
         rRyq+phO19wJROKYDNndZI6sVRwuvzljAh6lSAyiq6N67s5XzjVK8jOvnhoVPWRYMSre
         g25fFGcu42NjgHjDN+d0ratqF9CN9zBoqOsvNJDFFjzC2hj5TBwBGMQODKEijx087UF/
         uR9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Sp4TYw1y;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id n2si1382972qkg.5.2021.08.24.19.17.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 19:17:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id s11so21626532pgr.11
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 19:17:33 -0700 (PDT)
X-Received: by 2002:aa7:90d4:0:b029:3b3:2746:5449 with SMTP id k20-20020aa790d40000b02903b327465449mr42208949pfk.81.1629857852007;
        Tue, 24 Aug 2021 19:17:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c23sm23721255pgb.74.2021.08.24.19.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 19:17:31 -0700 (PDT)
Date: Tue, 24 Aug 2021 19:17:30 -0700
From: Kees Cook <keescook@chromium.org>
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 8858/10077] fs/statfs.c:131:3: warning:
 'memcpy' will always overflow; destination buffer has size 64, but size
 argument is 84
Message-ID: <202108241916.7EFB8D5E1C@keescook>
References: <202108250548.HB9OXC36-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108250548.HB9OXC36-lkp@intel.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Sp4TYw1y;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e
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

On Wed, Aug 25, 2021 at 05:59:01AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   372b2891c15acbf7b90d948b08ac174bde77102c
> commit: 185e297653a7e0431db813764d2efb9ffd09160c [8858/10077] fortify: Explicitly disable Clang support
> config: i386-randconfig-a016-20210824 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d26000e4cc2bc65e207a84fa26cb6e374d60aa12)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=185e297653a7e0431db813764d2efb9ffd09160c
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 185e297653a7e0431db813764d2efb9ffd09160c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    clang-14: warning: optimization flag '-falign-jumps=0' is not supported [-Wignored-optimization-argument]
>    In file included from fs/statfs.c:2:
>    In file included from include/linux/syscalls.h:76:
>    In file included from include/uapi/linux/aio_abi.h:31:
>    In file included from include/linux/fs.h:6:
>    In file included from include/linux/wait_bit.h:8:
>    In file included from include/linux/wait.h:9:
>    In file included from include/linux/spinlock.h:51:
>    In file included from include/linux/preempt.h:78:
>    In file included from arch/x86/include/asm/preempt.h:7:
>    In file included from include/linux/thread_info.h:60:
>    arch/x86/include/asm/thread_info.h:172:13: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
>            oldframe = __builtin_frame_address(1);
>                       ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/x86/include/asm/thread_info.h:174:11: warning: calling '__builtin_frame_address' with a nonzero argument is unsafe [-Wframe-address]
>                    frame = __builtin_frame_address(2);
>                            ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    In file included from fs/statfs.c:2:
>    In file included from include/linux/syscalls.h:87:
>    In file included from include/trace/syscall.h:7:
>    In file included from include/linux/trace_events.h:10:
>    In file included from include/linux/perf_event.h:49:
>    In file included from include/linux/ftrace.h:22:
>    arch/x86/include/asm/ftrace.h:7:3: error: Compiler does not support fentry?
>    # error Compiler does not support fentry?
>      ^
>    In file included from fs/statfs.c:2:
>    In file included from include/linux/syscalls.h:87:
>    In file included from include/trace/syscall.h:7:
>    In file included from include/linux/trace_events.h:10:
>    In file included from include/linux/perf_event.h:49:
>    include/linux/ftrace.h:843:9: warning: calling '__builtin_return_address' with a nonzero argument is unsafe [-Wframe-address]
>            addr = CALLER_ADDR1;
>                   ^~~~~~~~~~~~
>    include/linux/ftrace.h:830:38: note: expanded from macro 'CALLER_ADDR1'
>    #define CALLER_ADDR1 ((unsigned long)ftrace_return_address(1))
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/ftrace.h:823:36: note: expanded from macro 'ftrace_return_address'
>    #  define ftrace_return_address(n) __builtin_return_address(n)
>                                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/ftrace.h:846:9: warning: calling '__builtin_return_address' with a nonzero argument is unsafe [-Wframe-address]
>            return CALLER_ADDR2;
>                   ^~~~~~~~~~~~
>    include/linux/ftrace.h:831:38: note: expanded from macro 'CALLER_ADDR2'
>    #define CALLER_ADDR2 ((unsigned long)ftrace_return_address(2))
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/ftrace.h:823:36: note: expanded from macro 'ftrace_return_address'
>    #  define ftrace_return_address(n) __builtin_return_address(n)
>                                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> fs/statfs.c:131:3: warning: 'memcpy' will always overflow; destination buffer has size 64, but size argument is 84 [-Wfortify-source]
>                    memcpy(&buf, st, sizeof(*st));
>                    ^
>    arch/x86/include/asm/string_32.h:182:25: note: expanded from macro 'memcpy'
>    #define memcpy(t, f, n) __builtin_memcpy(t, f, n)
>                            ^
>    5 warnings and 1 error generated.
> 
> 
> vim +/memcpy +131 fs/statfs.c
> 
> c8b91accfa1059 Al Viro 2011-03-12  125  
> c8b91accfa1059 Al Viro 2011-03-12  126  static int do_statfs_native(struct kstatfs *st, struct statfs __user *p)
> c8b91accfa1059 Al Viro 2011-03-12  127  {
> c8b91accfa1059 Al Viro 2011-03-12  128  	struct statfs buf;
> 7ed1ee6118ae77 Al Viro 2010-03-23  129  
> c8b91accfa1059 Al Viro 2011-03-12  130  	if (sizeof(buf) == sizeof(*st))
> c8b91accfa1059 Al Viro 2011-03-12 @131  		memcpy(&buf, st, sizeof(*st));

Wat. Statement above this makes that assertion impossible.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108241916.7EFB8D5E1C%40keescook.
