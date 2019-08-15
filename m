Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVX423VAKGQEVDGVLKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id A83C98F5A4
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 22:19:34 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id d64sf2123442edd.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 13:19:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565900374; cv=pass;
        d=google.com; s=arc-20160816;
        b=aTSnnrlzRKMgzd2qMcdN9oioK5OhRG7sujO9V00S0InTidUYDIpPeVjXnqWRzz1/A8
         9fD4bKwHhkBQtGi+Ucu90eq3h0HErCklJq5kBjr3oYFeD8oRu6r6iB5uCjeMUDQJktjb
         UNFFv6xFU0ASfvY4HDi5AaX4VOoPRAY0Ue41CgxrRqxwGxu5SJslhtMbUi2vcIfKgkfW
         8hJ4tidcAjbmkRX/IvgVUuaffIE2QUPgoDmB1Qq3ORd5c71+FTtnkERd14zDHgNFFkQ0
         Cjhel6ywcfS9jNKOqcm2r8l1sx4CG3aveeZ5QlNQ2LkFx+aw0nPQqQFsIfHASS9MatgK
         6AYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Ya1mjF5GQDigm4Jy2N3FAUjnmuxamSrBWF00DFBpWOk=;
        b=Qj4Tbu7Odlvl69U6oFFrowU11gTyj/scYeJve+90QO9kTlc+1iwWW8+1SSlbLVLTQP
         KuMBl7V+yuIIUkV8638SLWqF1dPmDYDmcvPyzuIKLS6nXA9Zs5d8mSrFHn8D49FPAs9d
         HteKm6Xnj8iUkwHYC8AOAlJF/ixCKKGedOUGRegscMmzHyHJstx2n277QxneoBv2T8wl
         pR7LpGjUDR7Pe3ZK9WumJrF+6Zrp4NabZ+1/5grp26Nsiqs1F6iflFYt6TeeHUDbwUFp
         /8/FOXk5emMETrhvFfx1QKq6+KTw5+tEgVNlmRAYMKhrfBAiQnzWZ0r3jKxNYvAFI7Vi
         FZtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oJyVQn4S;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ya1mjF5GQDigm4Jy2N3FAUjnmuxamSrBWF00DFBpWOk=;
        b=RVUskGf+EDK3i2MufLCh8qPZ97j1FGQqZczJnluEUwZ+PxMZ+Zs/dbce8JwcBjmStJ
         NG9manabzy/35J2t0zzTZWKCUcPy07dsdqLWSRgX7WMBhjzDOlkUayQvt/mJU22bbLp1
         V3BZ9kd75biYzn/KqWPoDz8iLHIQBRcpea2ShwfErtFE4h4B99hc2LPlp2AirSpf7AsM
         +ieEVRNJ9n1cy1MuWxSU+BEEBDTHSraNAYKi4dOosMnQz2QrpG1AdleVKZp43LwcABVV
         y+gY27kjrmiGniK0sMawNBf28yHPJfcz1CzFbvyFFWjxbE4S+uOQXwmX+4n7ToI/Qc4N
         FREA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ya1mjF5GQDigm4Jy2N3FAUjnmuxamSrBWF00DFBpWOk=;
        b=hZPsNV2BiRECo9MYAZ7duIvyAn1bbsowkFLVp1gpY9NJn0ZQtxkKoxjGxx8OeyM5A2
         CEIwdnlNrKoKbZsXSldGnIyjCsZE9lZ5KSWTG0FDPj/MYR6+ge6PY72LAo4HfuGSG7pQ
         4G4vmYJFw811Hfwwdzy5/pqWSBxgWHzRj7F/8srdqJYKotolGNRxNaERKKZZFvbK58ZC
         v3IEaiHAhRZd6/h6wIus51xLr0kJAklm2Xj7+ourELg5LMuzN92rfAOUkP8lpsFVfQYK
         Bpbv72yj6FGmkqF3qkb6d/S+AyPkowE1kDgiKgQa0R0GTtPIeylomohNlQKhIWEc28Q1
         OwRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ya1mjF5GQDigm4Jy2N3FAUjnmuxamSrBWF00DFBpWOk=;
        b=S9TPqEngxXI7POFl6avKCnNYRSeUX0sqxmgEcdjmerlQoWpfcSXj0rKmgfO2jKRc9t
         3scgoc9PVDD6Lmd83Fipmvumr+f29VUI5Ws9+uz8nEjrm1sRxHU31E7wj9gTKquEZiV7
         gW4Se1gq2r3mC5J/HTQ/IG04vnDuKqiNbM+lZDbIcfWvK5Ofl8J6kuGrrZymIP2l5/7D
         E/x/fdJfngluntPR9q+vi5WeMfEbdNNeYe+AVwMd9fx69DFnirdEQzE0enokdydZE5ln
         4h0TmILH9Z4H//2izDLVOG/mkhDyNsvbuR8FOoU/8rVhVcBYWSzuwo4QAcryD3C8/SdD
         gT9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUhJli+/OyuFKYcLPMMbGF/j4VxkN3V/7iXTnkizQkIzl0/4DX/
	UdEQZw0BaeNar+c/Up8OFTg=
X-Google-Smtp-Source: APXvYqw0A2LiTKc2Ob+s2EQ3mxFvQUXx+TzzcEOkAsAHAm/o3qmDeiOxwrq65oKO/yi6hnnCOYvB2w==
X-Received: by 2002:a50:b155:: with SMTP id l21mr7420935edd.186.1565900374374;
        Thu, 15 Aug 2019 13:19:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:420c:: with SMTP id oh20ls1446386ejb.12.gmail; Thu,
 15 Aug 2019 13:19:33 -0700 (PDT)
X-Received: by 2002:a17:906:3741:: with SMTP id e1mr6341266ejc.27.1565900373972;
        Thu, 15 Aug 2019 13:19:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565900373; cv=none;
        d=google.com; s=arc-20160816;
        b=VBq4nPqMAqyeD4enLqUEh2cg0nS4P3vA/EoZPlcrE5GNL78I1ZSyzM3KyZ0J+/3k9e
         wAUSSh86DSGGt0xOOVukqJLEI7MsJpParbH1Pk7PeX0Fe+fIlKIGeTK0I32yEqWTF82f
         jiQJIwe5pBNy3BC9EZEYhrhzFGCkO25rgdLxLNbi51MiDslZKzaPCM8E0kjF3fuWFXYU
         3eYia1QWF5INxmabz8wxCWiYrBfAC/cx3AK3yOV4f5jW1B4WoNAyTCHw6kzm31jzd+TA
         Fi9ihetoJeVkip0gar28wp2ynYmxr1xEJI+4+91ivJ4zmBFpjoX5gtQ1D2m/5v8fCfiK
         2X9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1ItqRlEm51JhPGmzR1SiZGZlDR/5feAqamu1SDJy22c=;
        b=DlYDQiaUw7zCd30QufjmIqL7SXhhq2chhwD3/L96LzZ/Tb2DKUt8ADHoVlWFYzYhOi
         VZvJgepHf3sbSYVe+OpUCA+8lHLBOx9ShuZpoFTrIl51XfPVyoYxCUucoEu4emNAeIn1
         y9eS33tMx6FEjCqDbPw34VO+vqTlD3ORDcMoyIPiWZlS9uyGv+V/60ByezRX05Rr9rWe
         NGsIMuvoZ47r6ZQDQlFUWmrhPmwrXyel+v9q/dqrIohdeioYVkbuYJHTnwAvOm1f5L7d
         gwYKpduy6KaaeAu8Kia+PunIxqbUCNqmbVH9B0vS9APVOmPRxR3KnZwzcLmS5epJGYPm
         8wYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oJyVQn4S;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b39si206537edb.1.2019.08.15.13.19.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 13:19:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id z1so3276360wru.13
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 13:19:33 -0700 (PDT)
X-Received: by 2002:a5d:6109:: with SMTP id v9mr6984331wrt.333.1565900373484;
        Thu, 15 Aug 2019 13:19:33 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id o16sm5153356wrp.23.2019.08.15.13.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2019 13:19:32 -0700 (PDT)
Date: Thu, 15 Aug 2019 13:19:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [chrome-os:chromeos-4.4 34/35] arch/x86/kernel/irqinit.c:157:2:
 warning: if statement has empty body
Message-ID: <20190815201931.GC119104@archlinux-threadripper>
References: <201908151845.xO92AhOS%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908151845.xO92AhOS%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oJyVQn4S;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 15, 2019 at 06:09:51PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> BCC: philip.li@intel.com
> TO: cros-kernel-buildreports@googlegroups.com
> 
> tree:   https://chromium.googlesource.com/chromiumos/third_party/kernel chromeos-4.4
> head:   5a6016061c6229a93ab01182469242faac59f3ba
> commit: 2e62e34f0efe804c7e229ab9ea6b259510a404b1 [34/35] UPSTREAM: include/asm-generic/bug.h: fix "cut here" for WARN_ON for __WARN_TAINT architectures
> config: x86_64-allnoconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         git checkout 2e62e34f0efe804c7e229ab9ea6b259510a404b1
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> arch/x86/kernel/irqinit.c:157:2: warning: if statement has empty body [-Wempty-body]
>            alloc_intr_gate(ERROR_APIC_VECTOR, error_interrupt);
>            ^
>    arch/x86/include/asm/desc.h:396:3: note: expanded from macro 'alloc_intr_gate'
>                    set_intr_gate(n, addr);                         \
>                    ^
>    arch/x86/include/asm/desc.h:373:3: note: expanded from macro 'set_intr_gate'
>                    set_intr_gate_notrace(n, addr);                         \
>                    ^
>    arch/x86/include/asm/desc.h:366:3: note: expanded from macro 'set_intr_gate_notrace'
>                    BUG_ON((unsigned)n > 0xFF);                             \
>                    ^
>    include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
>    #define BUG_ON(condition) do { if (condition) ; } while (0)
>                                                  ^
>    arch/x86/kernel/irqinit.c:157:2: note: put the semicolon on a separate line to silence this warning
>    arch/x86/include/asm/desc.h:396:3: note: expanded from macro 'alloc_intr_gate'
>                    set_intr_gate(n, addr);                         \
>                    ^
>    arch/x86/include/asm/desc.h:373:3: note: expanded from macro 'set_intr_gate'
>                    set_intr_gate_notrace(n, addr);                         \
>                    ^
>    arch/x86/include/asm/desc.h:366:3: note: expanded from macro 'set_intr_gate_notrace'
>                    BUG_ON((unsigned)n > 0xFF);                             \
>                    ^
>    include/asm-generic/bug.h:157:47: note: expanded from macro 'BUG_ON'
>    #define BUG_ON(condition) do { if (condition) ; } while (0)
>                                                  ^
>    1 warning generated.
> 
> vim +157 arch/x86/kernel/irqinit.c
> 
> acaabe795a62bb arch/x86/kernel/irqinit_32.c Dimitri Sivanich 2009-03-04  154  
> 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  155  	/* IPI vectors for APIC spurious and error interrupts */
> 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  156  	alloc_intr_gate(SPURIOUS_APIC_VECTOR, spurious_interrupt);
> 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11 @157  	alloc_intr_gate(ERROR_APIC_VECTOR, error_interrupt);
> 47f16ca7631f9c arch/x86/kernel/irqinit.c    Ingo Molnar      2009-04-10  158  
> e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  159  	/* IRQ work interrupts: */
> e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  160  # ifdef CONFIG_IRQ_WORK
> e360adbe29241a arch/x86/kernel/irqinit.c    Peter Zijlstra   2010-10-14  161  	alloc_intr_gate(IRQ_WORK_VECTOR, irq_work_interrupt);
> 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  162  # endif
> 2ae111cdd8d83e arch/x86/kernel/irqinit_32.c Cyrill Gorcunov  2008-08-11  163  
> 
> :::::: The code at line 157 was first introduced by commit
> :::::: 2ae111cdd8d83ebf9de72e36e68a8c84b6ebbeea x86: apic interrupts - move assignments to irqinit_32.c, v2
> 
> :::::: TO: Cyrill Gorcunov <gorcunov@gmail.com>
> :::::: CC: Ingo Molnar <mingo@elte.hu>
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

I think this would be resolved with commit 3c047057d120 ("asm-generic:
default BUG_ON(x) to if(x)BUG()") upstream.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190815201931.GC119104%40archlinux-threadripper.
