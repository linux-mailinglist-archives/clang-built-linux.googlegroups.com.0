Return-Path: <clang-built-linux+bncBCR5PSMFZYORB25477VAKGQERHVBUTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id E42EF9AFC4
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 14:39:08 +0200 (CEST)
Received: by mail-yw1-xc3c.google.com with SMTP id h22sf6339536ywk.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 05:39:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566563947; cv=pass;
        d=google.com; s=arc-20160816;
        b=izscF3a0ATMLOOBBm5dkGZMHAE3t0+jHWg4K/Qm6orvzbGYdCgcpYo3CfGzGn3aPV3
         RS9/hf8VGnydN3vdn80rigldZ5AWduX8uqGFP2T49imgiV9mE5Qxni8MUhL4l+kViEUS
         QlXTrMxWR1fvqOqDdTlCJj19B7JGHaEcpPwOAKh9RJ/Jm7VHZBWLmvnrfV+pv5rcsv/Z
         +tgOUx6zxQxX0u2d4ZmLF3rspoH0Ct9ThwOYF9azboy8eb/28RpyPmdNRSyCsmxzufyP
         iag3SBJ28mAifD46yCXWCwzx4ml4GhYDxXTlc2GWIvEIUZaACnNA5vBxDNHQkRHLpXEW
         jDDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=NbcrgcFRgT2019+gARdNx0/jsLWSScIkvlMUXCzO9uQ=;
        b=BlizPzSanB+GClaCmFkM/QmWj6Dp1bKHBEVpqKJTsEwjGto9vTOT3wPo83ZhbVBpia
         9fbkM4HwqljbRQSsWet7O1kzvMjLUVOA+8peqprmHj/zwohJlJsd7xp+cTDLyETw+IoB
         y3WslpaPw4ocmsZWA6fVPztfvDJNwKuIvgLsZpIenlofIN0AtXYXYWPEBc+SoCmdv6ax
         smo6y9te4Q8OdVi6VHjbVma/cMPGXnhzt3ieiDMM6hW2AgLkfV+z/HsZICWD8Hj/4z07
         2gJwJBqaUfd87ds9MdehJwtrU3VXYDljZmDOBAFpP6BLam6UaaiuLiAslurV/AWHvDIh
         kKKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NbcrgcFRgT2019+gARdNx0/jsLWSScIkvlMUXCzO9uQ=;
        b=MoJ8CNh+MP2HT/Prz1gJQujGTwvDCZS6lGBBkgWqManh93TiXwO/0n6i52sqszpvo+
         Q5TNSEiYac9w9H94FyfTPLOE64wJ/wzgLUXt4mn6oIp466Zx4eUULFLGskVpbBVtFkWr
         OItfAxzfZbukzRcVgyBW4T5hAPO6K+DM91CF37JxBdPYcbiX4yAEMrN6PqjNKD48nzhB
         nK0gsYf+7P2oUV+EC3NKlWG/Vphz5nLQINOF83BzInouOYqctKyntd1LtOG+4LuQNHF0
         L4c2/bwOCdaytNbowToQ+jdTQ5eJzhNurdN4m+Z7tvW8kYYVtM774Fk0mxfi1+LEhMKP
         7j7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NbcrgcFRgT2019+gARdNx0/jsLWSScIkvlMUXCzO9uQ=;
        b=KcTLz0q9RJSlIXlAOAPoFRt1VqtXX9BSMDAehX1VSvfaFcz++hPK3HEUPO7tdJN+8d
         7Nijnhj6exKRRmPk2LiTAp12kgpBUq08IoCmIb73YcBpvNFQKQK3Ygv4FzyqCd4x8NPU
         PHa/2C4UJ1wx0SbuLILdzS6gFDAQK5zk79j58AnghYRLAq8LZbF4cDVE1jaoN7VewmEa
         azop8/M4uCEpVdPwvUC4a1FcJr0wuE0ezY7pBhinYHUhtaxfOVf0mfLHC7FeVs+P4bli
         FsSuPYAOSi9w6Q2nE8XmfEUN8Z5lyLl/h+aNHsd/Z2ylN2T4ZNTff+ugunsTSKn3sPb4
         L9/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUpn9j2106RNdGzh0Tj+8UyKRofjS6pkeEHchIazI+cqw225C8c
	eo9l97CPt2O8UqTuWiIn3B8=
X-Google-Smtp-Source: APXvYqzvrTqu5CJQm9yYMksZ09et1Em0CYybUzSJkkHKdhyGrnFh1NfG/3CThZE7KdSBU0cscnkyrw==
X-Received: by 2002:a25:dac8:: with SMTP id n191mr2735523ybf.161.1566563947433;
        Fri, 23 Aug 2019 05:39:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:a087:: with SMTP id x129ls2348536ywg.14.gmail; Fri, 23
 Aug 2019 05:39:07 -0700 (PDT)
X-Received: by 2002:a81:4cc:: with SMTP id 195mr3480489ywe.236.1566563947122;
        Fri, 23 Aug 2019 05:39:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566563947; cv=none;
        d=google.com; s=arc-20160816;
        b=Ksc7e4YvrFqF65nEk59r/r1gq2DqP5ZxWJzahpsLu8X0O7E3sIoNPJspnR5RNaMe/P
         RajjhCoytts3J91UlPeX4b5MiO1Ylmelx0+9LWgipGT+cZOxf9Te3OMR/2ycSEBF9Yo/
         Djn/nP6F9o8E+Geg9dlkyEmdyeD2zjLAxSR61vlGLcq5/+0uu39tCaO6XfzyeQ1sTooM
         0ze4dGN7Uwts/aynBqcIee6CD+ByJvrPHK1SVtVqymqQxBT8JDPU/GzOHaFYITkfEhrd
         omGp/V1Ytiz8ft0nUY1mKEXdycIkbYb8fdi6fk35SCoQHpMilG4BFg/WjdQwf98Qk+1M
         BerA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=IM7pmUdZovr1T7IefljRsCyhTSAHVchf5IRq3S+blfQ=;
        b=Dfg15sDRDIZuN90uAtp8P4eZR3x2ndKpfuychNDHDxw9P+jlERIDaEM9XsHDh322bz
         /pQC0R1hZoXheI9IPE53WPjf79+OHGwBuRGiKF9v9fDWL6UXKx6joNWMq1Y3+YJHBrDG
         GXlsX36Pm/oma+VDZ2jU/tQTCU3OXhI7+paBVImqTD9+XKB9e7eSVSrml1+MG7NyEgbR
         /QJGKt7xF9zmIOPWuPWI+46Jb5/GELgBnMqnXPjz9/OSXMZ0wOahqK2+nGXsrrUwGhQd
         BzrifX+M8CZslQeZGXvbUoi4gYjsj6BW6FmYe9b9eU7mfASTxGodMAsVR9dOZkMp5GuO
         Tqtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id n40si124107ywh.3.2019.08.23.05.39.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 05:39:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 46FLYc46Kfz9s7T;
	Fri, 23 Aug 2019 22:39:00 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>, Philip Li <philip.li@intel.com>, Chen Rong <rong.a.chen@intel.com>
Cc: Joel Stanley <joel@jms.id.au>, kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Subject: Re: arch/powerpc/include/asm/current.h:32:43: error: unknown register name 'r2' in asm
In-Reply-To: <CAKwvOd=8ouR_mCbK=ZtQ6ojJtWnNpvMkyj=gL1xkpADmnPg0aQ@mail.gmail.com>
References: <201908201102.0U21yPsV%lkp@intel.com> <CAKwvOd=sfYbVT=eY=MGX-aKVuVrXW2o_=pSvTG7r2EY4dsG9NA@mail.gmail.com> <8736hs5zrp.fsf@concordia.ellerman.id.au> <CAKwvOd=8ouR_mCbK=ZtQ6ojJtWnNpvMkyj=gL1xkpADmnPg0aQ@mail.gmail.com>
Date: Fri, 23 Aug 2019 22:38:57 +1000
Message-ID: <87r25c3vku.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nick Desaulniers <ndesaulniers@google.com> writes:
> On Thu, Aug 22, 2019 at 8:25 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
>>
>> Hi Nick,
>>
>> For some reason I can't find the original mail from the buildbot,
>> despite it saying it sent it me?
>
> Ah, haha, yeah sorry, I should have mentioned that 0day bot is just
> sending our mailing list the Clang reports as a trial run.

Haha, OK, at least it's not me going crazy then. I even checked my spam
folder! :P

I'll assume this is some sort of config problem for now until we know
more from the lkp folks.

cheers

>> Nick Desaulniers <ndesaulniers@google.com> writes:
>> > +Michael and Joel,
>> > I thought this would be a bug in Clang not recognizing the register
>> > names, but my simple reproducer errors in GCC as well:
>> > https://godbolt.org/z/ivGCXo
>>
>> That link is compiling with both clang and gcc for x86_64?
>>
>> If I flip them to ppc64le it works for me:
>>
>>   https://godbolt.org/z/_mZlm7
>>
>> So I'm not sure what's going on here :)
>
> Oh man, sorry, bad link (mine).  Indeed if I set `-target
> powerpc-linux-gnu` (or `-target powerpc64-linux-gnu`) for clang than
> it's recognized.
>
>>
>> My best guess is that the clang they are using is actually targeting
>> x86. That would explain the register name not being understood and also
>> the BIG/LITTLE endian mismatch.
>
> Indeed, Rong and Philip, is the ppc backend disabled in your build of
> clang per chance?  If you're configuring your clang build with cmake,
> please triple check `LLVM_TARGETS_TO_BUILD` has `PowerPC` in the `;`
> separated list.
>
> https://llvm.org/docs/CMake.html#llvm-specific-variables
>
> You can also check `llc --version` to check that the backend is
> enabled.  Though PPC is a default target, IIRC, in LLVM so I think
> you'd need to be setting `LLVM_TARGETS_TO_BUILD` without `PowerPC` in
> the first place to observe that.
>
> Can you triple check if that is the problem, or something else?
>
> Otherwise maybe an allnoconfig build is messing something up?
> make.cross looks gcc specific, I think there's still a TODO to include
> a link to the clang one for clang reports?
>
>>
>> cheers
>>
>> > Though also the line:
>> >    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent
>> > configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
>> > makes me think nothing here is valid.
>> >
>> > On Mon, Aug 19, 2019 at 8:17 PM kbuild test robot <lkp@intel.com> wrote:
>> >>
>> >> CC: kbuild-all@01.org
>> >> CC: linux-kernel@vger.kernel.org
>> >> TO: Michael Ellerman <mpe@ellerman.id.au>
>> >>
>> >> Hi Michael,
>> >>
>> >> FYI, the error/warning still remains.
>> >>
>> >> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git master
>> >> head:   5f97cbe22b7616ead7ae267c29cad73bc1444811
>> >> commit: ed4289e8b48845888ee46377bd2b55884a55e60b Revert "powerpc: slightly improve cache helpers"
>> >> date:   3 weeks ago
>> >> config: powerpc-allnoconfig (attached as .config)
>> >> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
>> >> reproduce:
>> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>> >>         chmod +x ~/bin/make.cross
>> >>         git checkout ed4289e8b48845888ee46377bd2b55884a55e60b
>> >>         # save the attached .config to linux build tree
>> >>         make.cross ARCH=powerpc
>> >>
>> >> If you fix the issue, kindly add following tag
>> >> Reported-by: kbuild test robot <lkp@intel.com>
>> >>
>> >> All errors (new ones prefixed by >>):
>> >>
>> >>    In file included from kernel/bounds.c:10:
>> >>    In file included from include/linux/page-flags.h:10:
>> >>    In file included from include/linux/bug.h:5:
>> >>    In file included from arch/powerpc/include/asm/bug.h:128:
>> >>    In file included from include/asm-generic/bug.h:18:
>> >>    In file included from include/linux/kernel.h:12:
>> >>    In file included from include/linux/bitops.h:19:
>> >>    In file included from arch/powerpc/include/asm/bitops.h:243:
>> >>    In file included from include/asm-generic/bitops/le.h:6:
>> >>    In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
>> >>    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
>> >>    #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
>> >>     ^
>> >>    1 warning generated.
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
>> >>    In file included from include/linux/compat.h:10:
>> >>    In file included from include/linux/time.h:6:
>> >>    In file included from include/linux/seqlock.h:36:
>> >>    In file included from include/linux/spinlock.h:51:
>> >>    In file included from include/linux/preempt.h:11:
>> >>    In file included from include/linux/list.h:9:
>> >>    In file included from include/linux/kernel.h:12:
>> >>    In file included from include/linux/bitops.h:19:
>> >>    In file included from arch/powerpc/include/asm/bitops.h:243:
>> >>    In file included from include/asm-generic/bitops/le.h:6:
>> >>    In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
>> >>    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
>> >>    #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
>> >>     ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
>> >>    In file included from include/linux/compat.h:10:
>> >>    In file included from include/linux/time.h:6:
>> >>    In file included from include/linux/seqlock.h:36:
>> >>    In file included from include/linux/spinlock.h:51:
>> >>    In file included from include/linux/preempt.h:78:
>> >>    In file included from ./arch/powerpc/include/generated/asm/preempt.h:1:
>> >>    In file included from include/asm-generic/preempt.h:5:
>> >>    In file included from include/linux/thread_info.h:21:
>> >> >> arch/powerpc/include/asm/current.h:32:43: error: unknown register name 'r2' in asm
>> >>    register struct task_struct *current asm ("r2");
>> >>                                              ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
>> >>    In file included from include/linux/compat.h:10:
>> >>    In file included from include/linux/time.h:6:
>> >>    In file included from include/linux/seqlock.h:36:
>> >>    In file included from include/linux/spinlock.h:445:
>> >>    In file included from include/linux/atomic.h:7:
>> >> >> arch/powerpc/include/asm/atomic.h:138:10: error: unknown register name 'xer' in asm
>> >>            : "cc", "xer");
>> >>                    ^
>> >>    arch/powerpc/include/asm/atomic.h:154:10: error: unknown register name 'xer' in asm
>> >>            : "cc", "xer");
>> >>                    ^
>> >>    arch/powerpc/include/asm/atomic.h:171:10: error: unknown register name 'xer' in asm
>> >>            : "cc", "xer");
>> >>                    ^
>> >>    arch/powerpc/include/asm/atomic.h:187:10: error: unknown register name 'xer' in asm
>> >>            : "cc", "xer");
>> >>                    ^
>> >>    arch/powerpc/include/asm/atomic.h:262:10: error: unknown register name 'xer' in asm
>> >>            : "cc", "xer", "memory");
>> >>                    ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>                    return (set->sig[3] | set->sig[2] |
>> >>                            ^        ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>                    return (set->sig[3] | set->sig[2] |
>> >>                                          ^        ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>                    return  (set1->sig[3] == set2->sig[3]) &&
>> >>                             ^         ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:103:27: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>                    return  (set1->sig[3] == set2->sig[3]) &&
>> >>                                             ^         ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:104:5: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>                            (set1->sig[2] == set2->sig[2]) &&
>> >>                             ^         ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:104:21: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>                            (set1->sig[2] == set2->sig[2]) &&
>> >>                                             ^         ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_BINOP(sigorsets, _sig_or)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/signal.h:128:8: note: expanded from macro '_SIG_SET_BINOP'
>> >>                    a3 = a->sig[3]; a2 = a->sig[2];                         \
>> >>                         ^      ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_BINOP(sigorsets, _sig_or)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/signal.h:128:24: note: expanded from macro '_SIG_SET_BINOP'
>> >>                    a3 = a->sig[3]; a2 = a->sig[2];                         \
>> >>                                         ^      ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_BINOP(sigorsets, _sig_or)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/signal.h:129:8: note: expanded from macro '_SIG_SET_BINOP'
>> >>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
>> >>                         ^      ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_BINOP(sigorsets, _sig_or)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
>> >>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
>> >>                                         ^      ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_BINOP(sigorsets, _sig_or)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >> --
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
>> >>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
>> >>                                         ^      ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:153:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/signal.h:130:3: note: expanded from macro '_SIG_SET_BINOP'
>> >>                    r->sig[3] = op(a3, b3);                                 \
>> >>                    ^      ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/signal.h:131:3: note: expanded from macro '_SIG_SET_BINOP'
>> >>                    r->sig[2] = op(a2, b2);                                 \
>> >>                    ^      ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_OP(signotset, _sig_not)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/signal.h:164:27: note: expanded from macro '_SIG_SET_OP'
>> >>            case 4: set->sig[3] = op(set->sig[3]);                          \
>> >>                                     ^        ~
>> >>    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
>> >>    #define _sig_not(x)     (~(x))
>> >>                               ^
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_OP(signotset, _sig_not)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/signal.h:164:10: note: expanded from macro '_SIG_SET_OP'
>> >>            case 4: set->sig[3] = op(set->sig[3]);                          \
>> >>                    ^        ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_OP(signotset, _sig_not)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/signal.h:165:20: note: expanded from macro '_SIG_SET_OP'
>> >>                    set->sig[2] = op(set->sig[2]);                          \
>> >>                                     ^        ~
>> >>    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
>> >>    #define _sig_not(x)     (~(x))
>> >>                               ^
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>> >>    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>> >>    _SIG_SET_OP(signotset, _sig_not)
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/signal.h:165:3: note: expanded from macro '_SIG_SET_OP'
>> >>                    set->sig[2] = op(set->sig[2]);                          \
>> >>                    ^        ~
>> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>> >>            unsigned long sig[_NSIG_WORDS];
>> >>            ^
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:21:
>> >>    include/linux/mman.h:133:9: warning: division by zero is undefined [-Wdivision-by-zero]
>> >>                   _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
>> >>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
>> >>       : ((x) & (bit1)) / ((bit1) / (bit2))))
>> >>                        ^ ~~~~~~~~~~~~~~~~~
>> >>    include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
>> >>                   _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
>> >>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
>> >>       : ((x) & (bit1)) / ((bit1) / (bit2))))
>> >>                        ^ ~~~~~~~~~~~~~~~~~
>> >>    In file included from arch/powerpc/kernel/asm-offsets.c:23:
>> >>    In file included from include/linux/suspend.h:5:
>> >>    In file included from include/linux/swap.h:9:
>> >>    In file included from include/linux/memcontrol.h:13:
>> >>    In file included from include/linux/cgroup.h:26:
>> >>    In file included from include/linux/kernel_stat.h:9:
>> >>    In file included from include/linux/interrupt.h:11:
>> >>    In file included from include/linux/hardirq.h:9:
>> >>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>> >>    In file included from include/linux/irq.h:20:
>> >>    In file included from include/linux/io.h:13:
>> >> >> arch/powerpc/include/asm/io.h:152:1: error: constraint 'Z' expects an integer constant expression
>> >>    DEF_MMIO_IN_X(in_be16, 16, lhbrx);
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
>> >>                    : "=r" (ret) : "Z" (*addr) : "memory");                 \
>> >>                                        ^~~~~
>> >>    arch/powerpc/include/asm/io.h:153:1: error: constraint 'Z' expects an integer constant expression
>> >>    DEF_MMIO_IN_X(in_be32, 32, lwbrx);
>> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> >>    arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
>> >>                    : "=r" (ret) : "Z" (*addr) : "memory");                 \
>> >>                                        ^~~~~
>> >> >> arch/powerpc/include/asm/io.h:157:1: error: invalid output constraint '=Z' in asm
>> >>    DEF_MMIO_OUT_X(out_be16, 16, sthbrx);
>> >>    ^
>> >>    arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
>> >>                    : "=Z" (*addr) : "r" (val) : "memory");                 \
>> >>                      ^
>> >>    arch/powerpc/include/asm/io.h:158:1: error: invalid output constraint '=Z' in asm
>> >>    DEF_MMIO_OUT_X(out_be32, 32, stwbrx);
>> >>    ^
>> >>    arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
>> >>                    : "=Z" (*addr) : "r" (val) : "memory");                 \
>> >>                      ^
>> >>    31 warnings and 10 errors generated.
>> >>    make[2]: *** [arch/powerpc/kernel/asm-offsets.s] Error 1
>> >>    make[2]: Target '__build' not remade because of errors.
>> >>    make[1]: *** [prepare0] Error 2
>> >>    make[1]: Target 'prepare' not remade because of errors.
>> >>    make: *** [sub-make] Error 2
>> >>    16 real  4 user  6 sys  67.00% cpu   make prepare
>> >>
>> >> vim +/r2 +32 arch/powerpc/include/asm/current.h
>> >>
>> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  28
>> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  29  /*
>> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  30   * We keep `current' in r2 for speed.
>> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  31   */
>> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09 @32  register struct task_struct *current asm ("r2");
>> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  33
>> >>
>> >> :::::: The code at line 32 was first introduced by commit
>> >> :::::: 584224e4095d8abcf2bef38efacc291be9a44c20 [PATCH] powerpc: Merge current.h
>> >>
>> >> :::::: TO: David Gibson <david@gibson.dropbear.id.au>
>> >> :::::: CC: Paul Mackerras <paulus@samba.org>
>> >>
>> >> ---
>> >> 0-DAY kernel test infrastructure                Open Source Technology Center
>> >> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>> >
>> >
>> >
>> > --
>> > Thanks,
>> > ~Nick Desaulniers
>
>
>
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87r25c3vku.fsf%40concordia.ellerman.id.au.
