Return-Path: <clang-built-linux+bncBDYJPJO25UGBBG6L6DVAKGQE6OTNPSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C5A966D2
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 18:53:48 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id t18sf5269176ybp.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 09:53:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566320027; cv=pass;
        d=google.com; s=arc-20160816;
        b=tnKeqcQINjPk7iGMH1ah26DoOs1Y8bJ+jtyTbd4f9zieZM6WKKoBZYckivPyt6xlVc
         Vum4l7bF2MZQvW5yH5WAAAuz9lRgWEIxlM5VgjXKBCmRPg4Ivmcx4OEM++h7g9gxcyvl
         W09R8DTZH1u7gr+S5Iqz/aqc8AaQ1VYikgDz/tM882g34vrJ4LbDTPOSX34hfM3V4Fej
         8CcYLQr9ikWscS3Dtyi7cyJqJYwEbkvhV+Slzentug4j402eNocvLYlMXxttBv4HJq6/
         7yGdLwL38htqE69qjykoOY2rYFxHECTIF2pymq0KtssKJ6tnImfA5rFcu6WXRc/unb74
         R22w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=d8T3+4BXNNfwB/U3Z0thPAoClA5SIRKZYEWE76r17Hg=;
        b=av1qOKQT4rc/GzyzKHNuNZdoHcDBytoReKAAMwPNrOeTloNVeohg0M55XKQHIL0ci6
         3CTafyscXxTabTWjpGYTGETXoMC9r/D//Ua/So4Tf1HeJpEy6KUMLtkPFNbnnAuGbY21
         wNqJj0nxH7/NFbSUQmUKJJYV5RKQTy8Cul5x/2P6F4y14D2uJY2M+CDlRafuRaX/eFEi
         gVYainBqGaTVQOxmDjEmeHvPBFPzc22a5zCbQSOKGHLL+uZsmv9GnAGXwbW3HiTcDxne
         W7WeXOyUBcPlljIxFEvZ5sZ6AxxbjQbY/iklMbkbdy2optcNVh7iZD9Nzq8Hwda3M9KL
         /VHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oIHoHDw9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d8T3+4BXNNfwB/U3Z0thPAoClA5SIRKZYEWE76r17Hg=;
        b=tL7JYduNbiwFqmW47oHp8LoV9NDGVmoclBUENX17Tidmj042X7RBdiK2HgMiURJBPL
         tV/iOPWPyz9SXxo3sVP1lmIhFBl4xmT8W0e2MjRXkvZSwsWgBkh70qiJVJYhjImZwHX6
         5n3EK5Llu7FWgf+HLZNoiNrec4h5aAvdrU9XYPC5otn8i4HGhCP2rOqDsOD9feiUHTX2
         A+jBdBhcotxR07XFT7YMdQ4Efv3P1clr36tnoGRF+T0mlYf59zKjrPLcBbp8ER3w8imu
         rS9ml46PcJ7rv3nnzmQtlq+5U3xaCcyRjpi5gQdwTmB948pd2J0PlJQqFzqJ8Vwf0Mt9
         7oIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d8T3+4BXNNfwB/U3Z0thPAoClA5SIRKZYEWE76r17Hg=;
        b=jzgUhhIvG2S8xIIpm+kiPX0DZA4qXJcGbwLPsy5hXFau97pTNltXUT0SBCx+0WdZRn
         muBOfcTZef6V95oDD5cqVJaaxPf/EEMxU7PmEY9zVYE+WEgJ2580/U72ao3IG4rdgCRg
         j54lqWWlNTXhLBX1sU9YTUL1NsQAKXtQnk8KDgieM6fwv7H/AMcrxTIt6VjWQ8CPCMXU
         qJpkw+6nm2POWyCy58d0VQus8CsVU1u2jwpGYmkYwK/rv4B4nKCymKz3r+zdCL2+K5z5
         66Tx9KVQrSVempjbcLkqkXx+ASakq4tYEqYqUxpfIrLMQyq207PT5AwQTJmEyHTfgQCT
         tXug==
X-Gm-Message-State: APjAAAUSnGBKcCgKMz+5kkZ0d7e8ySkUWmlXd4Iq/4BXQ8qNUqczVDPi
	gLbl5dqq3cQL6CcuYCsF6Ko=
X-Google-Smtp-Source: APXvYqzU++D2jpEfsun8ddFNO8lKn7a+V80KmWfShSa7VeCP3Edyj7zlbMCyA6ITgYlQUAt3yT796w==
X-Received: by 2002:a25:2f56:: with SMTP id v83mr10049265ybv.2.1566320027398;
        Tue, 20 Aug 2019 09:53:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8544:: with SMTP id v65ls3389944ywf.16.gmail; Tue, 20
 Aug 2019 09:53:47 -0700 (PDT)
X-Received: by 2002:a0d:d90f:: with SMTP id b15mr9069397ywe.329.1566320027122;
        Tue, 20 Aug 2019 09:53:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566320027; cv=none;
        d=google.com; s=arc-20160816;
        b=Ha1PW7jHTMFuKxPvjIOrTbrbNstfosbzb6r8J1gneP1+3gJGgC7pLKo4PpohiXv4JG
         CbAa6o4A0lElgFYzt7dSY1ePMhdgDBg3wUc4W+HI0UDCIyVcFYF0RgbzAmgi7av0k9Yj
         3Tmo20+9WNYcMmAswNqStLUnrwOy9EFrf5kqdN4LHZgavg2zazrNGpx1ckJtsu3rHgZQ
         tUOlIlelWWY0KlUo+ujd/jxXbgaXQJbRJEqtMLYLW0laoWJuiMHCupVJt+zMJ/iq/d31
         GxbkD3io5uiv6DSLpNw6ixahigtoD4pv50l+uzn22RVpjyN7nc9/bPYosyo9XLtkvFDA
         kjeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LHRlGw+8twVh3TR53SdjPc3aGLjAxWkEYN2U9CR6WoU=;
        b=SzEYtLKBNQ+A3W0xGlbBTDEsJxv64Yue70Jm2zfmHvi19A03R0DXhXZAqytRE0D688
         xrIbN6L1AGTh7564DoB+Zcom4y5gkYQrjPu6EfW8psXOpUuDeNCv2ojMGGjqeU/S2Dhe
         oE7a+k0ahFhsgKs7avjabkI/EhUnD9mxa4mRv3KDrJx2Terl5X+eZ3OSPIcbjbxU3vqH
         +C5HSrf2p5m5PZ7Ygjx3dDEJhVe+SwsmINzq3x+quibmtWh0V3YiMZRxSaNvCyhaepc3
         +Rrcggt+Y1jcZOvi9wHyuj3gJA4Enoyq/8RMRX1zf0l2rGGgeWVNWgvuSLmI2wnpdNZV
         Bg8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oIHoHDw9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id r6si924892ybb.1.2019.08.20.09.53.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 09:53:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id l21so3570912pgm.3
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 09:53:47 -0700 (PDT)
X-Received: by 2002:a62:cec4:: with SMTP id y187mr30708275pfg.84.1566320025770;
 Tue, 20 Aug 2019 09:53:45 -0700 (PDT)
MIME-Version: 1.0
References: <201908201102.0U21yPsV%lkp@intel.com>
In-Reply-To: <201908201102.0U21yPsV%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Aug 2019 09:53:33 -0700
Message-ID: <CAKwvOd=sfYbVT=eY=MGX-aKVuVrXW2o_=pSvTG7r2EY4dsG9NA@mail.gmail.com>
Subject: Re: arch/powerpc/include/asm/current.h:32:43: error: unknown register
 name 'r2' in asm
To: Joel Stanley <joel@jms.id.au>, Michael Ellerman <mpe@ellerman.id.au>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oIHoHDw9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

+Michael and Joel,
I thought this would be a bug in Clang not recognizing the register
names, but my simple reproducer errors in GCC as well:
https://godbolt.org/z/ivGCXo

Though also the line:
   include/linux/byteorder/little_endian.h:8:2: warning: inconsistent
configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
makes me think nothing here is valid.

On Mon, Aug 19, 2019 at 8:17 PM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> CC: linux-kernel@vger.kernel.org
> TO: Michael Ellerman <mpe@ellerman.id.au>
>
> Hi Michael,
>
> FYI, the error/warning still remains.
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   5f97cbe22b7616ead7ae267c29cad73bc1444811
> commit: ed4289e8b48845888ee46377bd2b55884a55e60b Revert "powerpc: slightly improve cache helpers"
> date:   3 weeks ago
> config: powerpc-allnoconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout ed4289e8b48845888ee46377bd2b55884a55e60b
>         # save the attached .config to linux build tree
>         make.cross ARCH=powerpc
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    In file included from kernel/bounds.c:10:
>    In file included from include/linux/page-flags.h:10:
>    In file included from include/linux/bug.h:5:
>    In file included from arch/powerpc/include/asm/bug.h:128:
>    In file included from include/asm-generic/bug.h:18:
>    In file included from include/linux/kernel.h:12:
>    In file included from include/linux/bitops.h:19:
>    In file included from arch/powerpc/include/asm/bitops.h:243:
>    In file included from include/asm-generic/bitops/le.h:6:
>    In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
>    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
>    #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
>     ^
>    1 warning generated.
>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
>    In file included from include/linux/compat.h:10:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:51:
>    In file included from include/linux/preempt.h:11:
>    In file included from include/linux/list.h:9:
>    In file included from include/linux/kernel.h:12:
>    In file included from include/linux/bitops.h:19:
>    In file included from arch/powerpc/include/asm/bitops.h:243:
>    In file included from include/asm-generic/bitops/le.h:6:
>    In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
>    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
>    #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
>     ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
>    In file included from include/linux/compat.h:10:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:51:
>    In file included from include/linux/preempt.h:78:
>    In file included from ./arch/powerpc/include/generated/asm/preempt.h:1:
>    In file included from include/asm-generic/preempt.h:5:
>    In file included from include/linux/thread_info.h:21:
> >> arch/powerpc/include/asm/current.h:32:43: error: unknown register name 'r2' in asm
>    register struct task_struct *current asm ("r2");
>                                              ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
>    In file included from include/linux/compat.h:10:
>    In file included from include/linux/time.h:6:
>    In file included from include/linux/seqlock.h:36:
>    In file included from include/linux/spinlock.h:445:
>    In file included from include/linux/atomic.h:7:
> >> arch/powerpc/include/asm/atomic.h:138:10: error: unknown register name 'xer' in asm
>            : "cc", "xer");
>                    ^
>    arch/powerpc/include/asm/atomic.h:154:10: error: unknown register name 'xer' in asm
>            : "cc", "xer");
>                    ^
>    arch/powerpc/include/asm/atomic.h:171:10: error: unknown register name 'xer' in asm
>            : "cc", "xer");
>                    ^
>    arch/powerpc/include/asm/atomic.h:187:10: error: unknown register name 'xer' in asm
>            : "cc", "xer");
>                    ^
>    arch/powerpc/include/asm/atomic.h:262:10: error: unknown register name 'xer' in asm
>            : "cc", "xer", "memory");
>                    ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>                    return (set->sig[3] | set->sig[2] |
>                            ^        ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>                    return (set->sig[3] | set->sig[2] |
>                                          ^        ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>                    return  (set1->sig[3] == set2->sig[3]) &&
>                             ^         ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:103:27: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>                    return  (set1->sig[3] == set2->sig[3]) &&
>                                             ^         ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:104:5: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>                            (set1->sig[2] == set2->sig[2]) &&
>                             ^         ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:104:21: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>                            (set1->sig[2] == set2->sig[2]) &&
>                                             ^         ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_BINOP(sigorsets, _sig_or)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:128:8: note: expanded from macro '_SIG_SET_BINOP'
>                    a3 = a->sig[3]; a2 = a->sig[2];                         \
>                         ^      ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_BINOP(sigorsets, _sig_or)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:128:24: note: expanded from macro '_SIG_SET_BINOP'
>                    a3 = a->sig[3]; a2 = a->sig[2];                         \
>                                         ^      ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_BINOP(sigorsets, _sig_or)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:129:8: note: expanded from macro '_SIG_SET_BINOP'
>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
>                         ^      ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_BINOP(sigorsets, _sig_or)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
>                                         ^      ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_BINOP(sigorsets, _sig_or)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> --
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
>                                         ^      ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:153:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:130:3: note: expanded from macro '_SIG_SET_BINOP'
>                    r->sig[3] = op(a3, b3);                                 \
>                    ^      ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:131:3: note: expanded from macro '_SIG_SET_BINOP'
>                    r->sig[2] = op(a2, b2);                                 \
>                    ^      ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_OP(signotset, _sig_not)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:164:27: note: expanded from macro '_SIG_SET_OP'
>            case 4: set->sig[3] = op(set->sig[3]);                          \
>                                     ^        ~
>    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
>    #define _sig_not(x)     (~(x))
>                               ^
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_OP(signotset, _sig_not)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:164:10: note: expanded from macro '_SIG_SET_OP'
>            case 4: set->sig[3] = op(set->sig[3]);                          \
>                    ^        ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_OP(signotset, _sig_not)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:165:20: note: expanded from macro '_SIG_SET_OP'
>                    set->sig[2] = op(set->sig[2]);                          \
>                                     ^        ~
>    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
>    #define _sig_not(x)     (~(x))
>                               ^
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>    _SIG_SET_OP(signotset, _sig_not)
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/signal.h:165:3: note: expanded from macro '_SIG_SET_OP'
>                    set->sig[2] = op(set->sig[2]);                          \
>                    ^        ~
>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>            unsigned long sig[_NSIG_WORDS];
>            ^
>    In file included from arch/powerpc/kernel/asm-offsets.c:21:
>    include/linux/mman.h:133:9: warning: division by zero is undefined [-Wdivision-by-zero]
>                   _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
>       : ((x) & (bit1)) / ((bit1) / (bit2))))
>                        ^ ~~~~~~~~~~~~~~~~~
>    include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
>                   _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
>       : ((x) & (bit1)) / ((bit1) / (bit2))))
>                        ^ ~~~~~~~~~~~~~~~~~
>    In file included from arch/powerpc/kernel/asm-offsets.c:23:
>    In file included from include/linux/suspend.h:5:
>    In file included from include/linux/swap.h:9:
>    In file included from include/linux/memcontrol.h:13:
>    In file included from include/linux/cgroup.h:26:
>    In file included from include/linux/kernel_stat.h:9:
>    In file included from include/linux/interrupt.h:11:
>    In file included from include/linux/hardirq.h:9:
>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>    In file included from include/linux/irq.h:20:
>    In file included from include/linux/io.h:13:
> >> arch/powerpc/include/asm/io.h:152:1: error: constraint 'Z' expects an integer constant expression
>    DEF_MMIO_IN_X(in_be16, 16, lhbrx);
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
>                    : "=r" (ret) : "Z" (*addr) : "memory");                 \
>                                        ^~~~~
>    arch/powerpc/include/asm/io.h:153:1: error: constraint 'Z' expects an integer constant expression
>    DEF_MMIO_IN_X(in_be32, 32, lwbrx);
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
>                    : "=r" (ret) : "Z" (*addr) : "memory");                 \
>                                        ^~~~~
> >> arch/powerpc/include/asm/io.h:157:1: error: invalid output constraint '=Z' in asm
>    DEF_MMIO_OUT_X(out_be16, 16, sthbrx);
>    ^
>    arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
>                    : "=Z" (*addr) : "r" (val) : "memory");                 \
>                      ^
>    arch/powerpc/include/asm/io.h:158:1: error: invalid output constraint '=Z' in asm
>    DEF_MMIO_OUT_X(out_be32, 32, stwbrx);
>    ^
>    arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
>                    : "=Z" (*addr) : "r" (val) : "memory");                 \
>                      ^
>    31 warnings and 10 errors generated.
>    make[2]: *** [arch/powerpc/kernel/asm-offsets.s] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [prepare0] Error 2
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [sub-make] Error 2
>    16 real  4 user  6 sys  67.00% cpu   make prepare
>
> vim +/r2 +32 arch/powerpc/include/asm/current.h
>
> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  28
> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  29  /*
> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  30   * We keep `current' in r2 for speed.
> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  31   */
> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09 @32  register struct task_struct *current asm ("r2");
> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  33
>
> :::::: The code at line 32 was first introduced by commit
> :::::: 584224e4095d8abcf2bef38efacc291be9a44c20 [PATCH] powerpc: Merge current.h
>
> :::::: TO: David Gibson <david@gibson.dropbear.id.au>
> :::::: CC: Paul Mackerras <paulus@samba.org>
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DsfYbVT%3DeY%3DMGX-aKVuVrXW2o_%3DpSvTG7r2EY4dsG9NA%40mail.gmail.com.
