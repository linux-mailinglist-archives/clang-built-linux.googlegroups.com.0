Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBVGM6WCAMGQEVO62JDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FAA37FCC4
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 19:48:05 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id o19-20020a170902e293b02900ef869214f9sf3801453plc.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 10:48:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620928084; cv=pass;
        d=google.com; s=arc-20160816;
        b=DQIa6z6xDU9x0qnUzS85U5fJm0D3ijz4vyyNbMk3Gt18A5xiVCA8CuawjH7/SezW4h
         +D6xYpELLJALQbXkb3OsSoeiEa2JnH02+c5kDxLsyyCQTF3C9zbHt2Bnc507bFYQ6oOZ
         sguAq9CWHS33WOl/R/5X9RuaiKRM12ClH5j8e3qkrfeEH9Mfr0g8nd8UaK6tlsFBHisL
         wMsUOG8SuLdpNT4J+p3TAa1yn1FHMLRbGaTekAVJdrkyNbJ4x/XF4OFb06IJ8KDAheA7
         LTe2bA75O5iiReNLn90KaPUV9qhPCfQwp0g9zvRRLrasCuJeG1MHdDQjAsWxaJltk2UE
         YC5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=9qwvn5F/o3cmJNaI4lDUI5kUzXtMzQyWJkudb2JgccQ=;
        b=pXd5/ahMp8fJhbMJONVdCEVLgWWclvydbUiiaYQsp09L+38eckO98A+EfN/+7s7NS1
         OgSYbfBG6i7oT7gZOU0R3ZZUggP/7iIzrKAg0jO0giGJyogiKB7IA2kVhjzsmAPgOpAb
         chOJwfKVaTbxdOVkNTSAxOeQ6i29mUEw/vaGp0T/7lG+ZC97FHOTNgTdYHEANyDaEObX
         uTZqf8BQWAiObzgIepoRnW+bsAOqioP8MXZRGVKGELgvkgRhVaEuZ5xR3wKVXAbbjQpI
         GXa/BoTTN+VYR7Lzmdzpw/QYZVXePt7ZbiCinNZvXL6Ef2pbMCnoIwomgpjxHyfIWeL+
         J74w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ukSTk0AA;
       spf=pass (google.com: domain of srs0=cslx=ki=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=CslX=KI=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9qwvn5F/o3cmJNaI4lDUI5kUzXtMzQyWJkudb2JgccQ=;
        b=GtyuZzG5d0XfENwUEymqgljbbZ3V+lqMHYq72U6/ePN3MrfNsHVMBS5oALF+wk3y7i
         gd7idXc38n24Os2Rsjjb8bYmFnsx2PyHZeq6Ry+CMD1zYP0hqt+xHmz58+0EAkFOASlu
         jIqfEwYz8qEX306nMGHrn9mx8N2RYmZGLBzkh7q87iJtMmLPOFSDlJ+8CXC8dSHPxyRN
         fySQfeMoLJoDAfjldf3vDEwvx7fOH2Q9eKv6Hkmirkiml0j9Ixt1wR1jigKQ1r2PJZWV
         9duaTlqg1Pjdd2J1/ZYtktolp/ljYRapVhofj/DJE9+Y7YNzEXtU9tmkryQ+sI2FGxM7
         0ZWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9qwvn5F/o3cmJNaI4lDUI5kUzXtMzQyWJkudb2JgccQ=;
        b=G31AIwR09BTw4GALKg1d7hioBjk9FRYG2Igv7e7HBLvXleH+KeGwrIcQAYtx3SMa9Z
         4xJFwgQ6wYaAx7rNCugHBsnsoOptkDauWr4qgzikZSxIDDXOjQ42Bx9XHJqtS8CSXPrg
         swcDvbAcWxVkEt8r4t+yiMtnMz3T/Y+DZJY+KAcYRFXDd1E9hHNGMz4+TF/kk0uOq3P0
         Kolyr3Olf4yGSLcwkM5C98SHVRLImE0YJoNNHiU0r4lbz11BufeaVYaa3J/IihAhIn1q
         HxnsKMWRi0Rdfm82VXljXMYQhfayRvYZGCe8bKlpuGKm9dUvBkFpFHbTNYGTUaB4VHwU
         GO8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QmdPVW5XEflmLVou4flpy9+bhch8Pz31t61Xx/JQcjwnkn74K
	tCFxwCX2ryOTMfhbLxyovQQ=
X-Google-Smtp-Source: ABdhPJyrowLtVg4VUdaMd6nlgsenWfnD2WGywiBBKjmfDFgaYkTemkjQnTBnQD/R1CGpUbG9CVcYpw==
X-Received: by 2002:a62:16c9:0:b029:24b:a41e:cd6 with SMTP id 192-20020a6216c90000b029024ba41e0cd6mr42244770pfw.52.1620928084160;
        Thu, 13 May 2021 10:48:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cd47:: with SMTP id a7ls2958558pgj.1.gmail; Thu, 13 May
 2021 10:48:03 -0700 (PDT)
X-Received: by 2002:a62:ee09:0:b029:247:56aa:dfa6 with SMTP id e9-20020a62ee090000b029024756aadfa6mr41660693pfi.69.1620928083623;
        Thu, 13 May 2021 10:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620928083; cv=none;
        d=google.com; s=arc-20160816;
        b=MK04eOTmHk0rW9jb18ubguFj00qEaTv2aFBj5FOJbMyQSL8xcrJ3T1Q460ANWFcKWp
         t6V5Gk4UR4qmP7tEnjkX8iLM8MUyPo70Z9NG3rNUS+I6MvUkWeik+exkdVFTXeVSA4Y8
         iYph7hJvBU02yyTX7T5PsrRBHOt3egIrhEUDsd21/EaqwI6cT4F8DqMeBF2tDfkgwmGg
         7gqHQkDe5wmr2k0a5It80U38aUKUa4olmG+loC1xukwHIr7JyJxOM8qoo5J8QgLF0Xyc
         5GZD/SZxknY+rCZgKUK1CYzhzrlpOvGJf113ngm6vU+bz0MWxWRYS0KJ/pJxgr0C+4Yl
         2iQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=n7QzJFg7SahGdAc+1+C3FHxlh//vaITEFLFYyoIi1ww=;
        b=MvzVhz5EdP1RoR6NmeCOecYKJEn8y2xUoiByLU4YZzXGwGBnPrzjrjcSkj5eg+XV5L
         PeEqDR5t37UZEHYKZOo5sn7jD5qkuI4mXDgaoJHZAX03EhFAMtEI8LqzIWAamHkcE/3C
         2T4t1hlHPqecz7LiLdIz9j7IeqIQ4cn+By/3zhsAeJGHLfRhMPnNLKLwDtDgISdEmI4f
         ic1qWvF+7MapZNS4kF8aYsvuJEWve7FyhWakRDXNqy3m4kFIa+0hb27Ta9lI/57arSGu
         JdFtkQH0ayo/i/78I7xtXLduYT/EB8Sf87TlTxJ1ric+i5ZULHhqTt0tZr/iuYzOhpnN
         GUxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ukSTk0AA;
       spf=pass (google.com: domain of srs0=cslx=ki=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=CslX=KI=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f1si282010plt.3.2021.05.13.10.48.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 May 2021 10:48:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=cslx=ki=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 536EC613CB;
	Thu, 13 May 2021 17:48:03 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id 1DC665C014E; Thu, 13 May 2021 10:48:03 -0700 (PDT)
Date: Thu, 13 May 2021 10:48:03 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [linux-next:master 1888/2633] kernel/rcu/refscale.c:479:3:
 warning: variable 'x' is uninitialized when used here
Message-ID: <20210513174803.GC975577@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <202105121916.mj2oXShS-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202105121916.mj2oXShS-lkp@intel.com>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ukSTk0AA;       spf=pass
 (google.com: domain of srs0=cslx=ki=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=CslX=KI=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, May 12, 2021 at 07:38:22PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   ec85c95b0c90a17413901b018e8ade7b9eae7cad
> commit: 4b46fcb7f1a6a202e3f77ce377079b4243d1be6f [1888/2633] refscale: Add measurement of clock readout
> config: riscv-randconfig-r022-20210512 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a0fed635fe1701470062495a6ffee1c608f3f1bc)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install riscv cross compiling tool for clang build
>         # apt-get install binutils-riscv64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=4b46fcb7f1a6a202e3f77ce377079b4243d1be6f
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 4b46fcb7f1a6a202e3f77ce377079b4243d1be6f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=riscv 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> kernel/rcu/refscale.c:479:3: warning: variable 'x' is uninitialized when used here [-Wuninitialized]
>                    x += ktime_get_real_fast_ns();
>                    ^
>    kernel/rcu/refscale.c:474:7: note: initialize the variable 'x' to silence this warning
>            u64 x;
>                 ^
>                  = 0
>    kernel/rcu/refscale.c:492:3: warning: variable 'x' is uninitialized when used here [-Wuninitialized]
>                    x += ktime_get_real_fast_ns();
>                    ^
>    kernel/rcu/refscale.c:487:7: note: initialize the variable 'x' to silence this warning
>            u64 x;
>                 ^
>                  = 0
>    2 warnings generated.
> 
> Kconfig warnings: (for reference only)
>    WARNING: unmet direct dependencies detected for LOCKDEP
>    Depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT && (FRAME_POINTER || MIPS || PPC || S390 || MICROBLAZE || ARM || ARC || X86)
>    Selected by
>    - DEBUG_LOCK_ALLOC && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT

Fixed by updated commit 210b2a9a9247 ("refscale: Add measurement of
clock readout").

							Thanx, Paul

> vim +/x +479 kernel/rcu/refscale.c
> 
>    471	
>    472	static void ref_clock_section(const int nloops)
>    473	{
>    474		u64 x;
>    475		int i;
>    476	
>    477		preempt_disable();
>    478		for (i = nloops; i >= 0; i--) {
>  > 479			x += ktime_get_real_fast_ns();
>    480		}
>    481		preempt_enable();
>    482		stopopts = x;
>    483	}
>    484	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210513174803.GC975577%40paulmck-ThinkPad-P17-Gen-1.
