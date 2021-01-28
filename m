Return-Path: <clang-built-linux+bncBDAMN6NI5EERB76UZKAAMGQEJHUUKKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E8C30759F
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 13:13:52 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id c2sf968296lff.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 Jan 2021 04:13:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611836031; cv=pass;
        d=google.com; s=arc-20160816;
        b=g59CjU/dkC9eZkz073fvtaeYaQ9pWFg7DkTW0Yo73C1wdllyP9J5xTSN3oZTaVJH4X
         WMYtMrYE0gSnbwoqyBwU9Nbo9KF0h4X8bUdKVIizE3sZ/T+57tK+cCYhKv6Fa11U6LIw
         blVjjxqkpOB+yDJITKfHcVMaLop8Hnmn4Q9jtu7sjKUguJWLBMiHvu9noCHc6CL5qfO/
         3Revh8zODOTQWWDCdYyP3cwuxNwfDCQkQlNKKl7e6tMki+BfyTomuNllRy/a4BjF8PfJ
         NIjqrFJNO4L0zAxrtJknZaOR8JuolE6kT60oVkdrgma69RHsveI/6EyEcf9w/fGMVemM
         rj2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=DWb7uHeGbM2/pyCGR/BPzWtkN8E61JG1LBmHFJdJOG4=;
        b=GTxHqopRr9oorsI43DHacc7P71XS24mxiJFLB240CLXqMI++dghYnawxQ6mbgM8gOn
         P6gHTVmnY++6uoP9tSiA4nyMLyqznfcThkDIjTlZA8WcZRWEEIdqx/GLF+Vn1OMEiNqM
         HaYJKSiJnhF9wcgoa0YRy0tL1WdwlXuKDOK2eEF2pEMwM5U6xWyeAcEfgsQWMN0pLyf/
         SVl3M43Y4fUk6yynGBZ9vABkSt7x7YB7+Im5ISwniwKRKWHELxIpgkNQOs1SFSOa2UlW
         7goCl5mxnSW3c4nNUEcovfn/gSYpMpDtxKTlph5JBfMxGnCCOwLeQEGELsLzCqXhAQ+k
         5rWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="vJsf/NU9";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=YVxBRhQU;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DWb7uHeGbM2/pyCGR/BPzWtkN8E61JG1LBmHFJdJOG4=;
        b=UByvSpX6i67m3a7druGcF3+4RRth7Bnu79pqkJ+RbjVsL+KloMwZzNmNG4WyjqlUFi
         QYm0L/7IN1RSHBIh5EovvWDjer2rpCLfom3jzv64lRHeyaW7vTB3fMKtl89WLEYhQpeH
         +496u0TR55Yk8a0IiNpBqoot3f8AiWNtDlnW4FB4KeUgtdate+JDdQMnMeKi7teCYoIT
         QPBxEu+1QEPLmp8XCY/loLxgDjZHSKeb3u4khIkASdDs7tVy0PweQX9d0h2hkE51Qp0t
         DC+PJgcjW/U0obwMSz0Or3+uWZ/XWWGXqs/2IzqP3w6maGAKROtGLqSnUcff37IWbsiZ
         sxCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DWb7uHeGbM2/pyCGR/BPzWtkN8E61JG1LBmHFJdJOG4=;
        b=tikNGl9sUMR6080W4TWfwUScCds905eI+g4VrX9L3CEVMjv5OO8SvSMjpdv7+Teupj
         HT1BA3Eg6+koExT+7gYilhOdl+f7m2+oQIUaYTYNwnVBDz1Q5ZrBJtzDBnssPbw5n8Al
         3F39VVm9+7au4QOI7AesXnhpfFcdlZkI+anCWgTEqBwT88Q48H/xnRH8KTYfMcyBRHTb
         iLmrH5IG7jzOGGunE+CkV3xwq6BHThkyWvZJ/9ACbUUj+rx+l1NSobmg7Q/A7TL6pBrF
         i0AN3kfAo7kdsHvo9fPnEpkquh0hxtZlttAFEKPVOYAXANdKBH3/mmDyGT8s7QFz7hh5
         a+Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533rKfcglsqcgAJgOYrDjK8elWINsP3XpNAdibXT696Ia9YEmbLr
	BXT8PwhG0VzjCDbKL0O0OYU=
X-Google-Smtp-Source: ABdhPJzqh10VIILtltfJOQRwERzJ4acQs5jhiRlRZeC18EW8/bhQwmzp8x7zB+rY+rrC17YASUf+nA==
X-Received: by 2002:a19:5208:: with SMTP id m8mr7014938lfb.531.1611836031627;
        Thu, 28 Jan 2021 04:13:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d0d:: with SMTP id y13ls1015808ljc.9.gmail; Thu, 28 Jan
 2021 04:13:50 -0800 (PST)
X-Received: by 2002:a2e:9b57:: with SMTP id o23mr8630617ljj.314.1611836030675;
        Thu, 28 Jan 2021 04:13:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611836030; cv=none;
        d=google.com; s=arc-20160816;
        b=s9cQ45VWkhswa5FjGe90ucec+xFElAK+KAblsgq2Gr87YtL8V8kGmGfyEhAHVJFScL
         bWdgbd/U+AkR5mPFS0eVaJHelA3dwTkCIBFOeFnYeBnMvBgfxHu6/xZoTgOo2BWEsikx
         tw52hxVvOK+cu7vH6ypgXqeuwA420gzOTrBGk7jgsHS442Bx8E7b/uJMJ7S+UfoczLND
         6SXK6jGQFSd1nInX1NZw/pm9a1l2BSH3dr7o+Z9PiMgBbi5Wqmhb+2DE02SUpt1NG52g
         q1iXd5dQ04vz4uuOWIw8bjvW/Z2udhH/InvnQezim38WBByK01JN8KWWfnfvB3Jl7UvP
         XLIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=1rfB/IZ4d07bQ4kaZK+SNMWZnaf6ZtvArs5ezTl/PSc=;
        b=qdDWtgQqaJTDYYIKPi+c/xCs5h4w1QMu8cMGTXwMrF7UTnoIjeu4aSaQsihCFpqeY8
         VCsj90aMStmyob2iR3bt8EBRXp5nSbPfjb3g1Jc3xXRCkEzOsZpssYM2TFdnBPe6Ci3t
         67j5uaG8SYtHLVxqtT/5qAQkHzrROIu/Vwe+pN0tftTUYf0244EBpIDcCr2lY5cN/OCJ
         bgLOICb0rYuVi/DiIhi0XNTkr7gKjLLZY4HPFwqL+cl3ojkKuPenR+Pjn5A6VTbNTai/
         VgIvCEm7njCV3AQEsorwJVSKM9pMqccDPs3fQcxCIelkb1OB0amJtZe8YEZpbBGb2OWj
         I8eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="vJsf/NU9";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=YVxBRhQU;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id h12si155696lfp.7.2021.01.28.04.13.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 04:13:50 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: kernel test robot <lkp@intel.com>, Mark Rutland <mark.rutland@arm.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, x86@kernel.org, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [tip:locking/core 10/10] sclp_early_core.c:undefined reference to `warn_bogus_irq_restore'
In-Reply-To: <202101281628.n32qBmXh-lkp@intel.com>
References: <202101281628.n32qBmXh-lkp@intel.com>
Date: Thu, 28 Jan 2021 13:13:49 +0100
Message-ID: <871re5dzsy.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="vJsf/NU9";       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=YVxBRhQU;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Thu, Jan 28 2021 at 16:29, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git locking/core
> head:   997acaf6b4b59c6a9c259740312a69ea549cc684
> commit: 997acaf6b4b59c6a9c259740312a69ea549cc684 [10/10] lockdep: report broken irq restoration
> config: s390-randconfig-r035-20210128 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 48bdd676a1d1338c10541460bf5beb69ac17e451)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?id=997acaf6b4b59c6a9c259740312a69ea549cc684
>         git remote add tip https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git
>         git fetch --no-tags tip locking/core
>         git checkout 997acaf6b4b59c6a9c259740312a69ea549cc684
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    s390x-linux-gnu-ld: arch/s390/boot/sclp_early_core.o: in function `sclp_early_cmd':
>>> sclp_early_core.c:(.text+0x18c): undefined reference to `warn_bogus_irq_restore'
>    s390x-linux-gnu-ld: arch/s390/boot/sclp_early_core.o: in function `sclp_early_set_event_mask':
>    sclp_early_core.c:(.text+0x376): undefined reference to `warn_bogus_irq_restore'
>    s390x-linux-gnu-ld: arch/s390/boot/sclp_early_core.o: in function `__sclp_early_printk':
>    sclp_early_core.c:(.text+0xa90): undefined reference to `warn_bogus_irq_restore'
>>> s390x-linux-gnu-ld: sclp_early_core.c:(.text+0xa9a): undefined reference to `warn_bogus_irq_restore'

That's S390 early boot code which lacks a stub function ....

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/871re5dzsy.fsf%40nanos.tec.linutronix.de.
