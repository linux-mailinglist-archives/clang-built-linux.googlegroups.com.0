Return-Path: <clang-built-linux+bncBCR5PSMFZYORBNVZ7XVAKGQE5CXXC3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8912A9A605
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 05:25:44 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id x19sf4349553pgx.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 20:25:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566530743; cv=pass;
        d=google.com; s=arc-20160816;
        b=vhz8QGvM/rgZBBemY50MaubwCk0b93StQM53tqRAU+nM7p9QDHyVfF1VFr1SNuivTF
         y7P9ZvkG846tuLRxiTd/dGZvvSjOmKFO4qJR8MruSQ4uDmzhpFSqz9uEaBKODUQMncd7
         GD4kSxFiviNGMcwBKKI7V5XHpKUOeEs+KgQNaEsl3RFleois0TzaWEP+yDc3cKMYJVSX
         5bSktNauVZA1iEcvsBsbgzZ8etEAuPshuIiDFgx2CNIkxMd9R4JR7ra1DRqidAuIsW2E
         Qxnu09kPrWA7tC9GwujCb92zDmSA5bSdOw7xafaTYnksxsVsFQuQMg4cjvW4oo4kP5wZ
         vN/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=xnXY1jJ+j+RRe8rBUFR0cBXiWPenprBUqM2vaodzUUQ=;
        b=IX4Knr+1HTrW+xYOaMjPawfn2N0+bvUKpDdQb1Cr2mFvHJUE0SHh2oQ1zSl74Lb1oP
         pp1jq2z1csffGEfm4gP5XHDd9paoc9w589fZSQhy9s1TDy9GzO22jiTFqKf2iK5CRimZ
         Gnv+dBe6dJziAtE1cdzPRMa4hWzWG00nrkJGpOdCmyZYIPll8Bm1b+9gbODscpA3ICLD
         d4WSO5m7FoP7By3036TqqvjtzivHu09qbey61v6LEbQcMh/aT8avB7yoBVTbtA/Q+QG6
         duAqEz+5bypw6zO93p5xhyJ/worm8cj/Mx2z5GlPv9q8K1L8KOeol/4xLwL3iFaE84qM
         prdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xnXY1jJ+j+RRe8rBUFR0cBXiWPenprBUqM2vaodzUUQ=;
        b=AYApno2tgLTt8ny6hX3an5jH5rxOLXX8fBOGXtONXMLVmKShJnsy8A2AXWmecHdnvn
         G8jWTXF7yJU6w8Gb7hp19JQ55dJNu9iP9/QGUgP36Lwljua+X/X59Il0DpXK4LC67Uw0
         1k4UQeJLGklaLdMNw5MjFC10BrCEyIcf16VSmsfIoT6DBW4+tMmek6BkzL9uLrxEvIu6
         nstJDn5ztLFfwEqqEwb/vc25JVnZsXunadjhysi9qkMIzn5oIYfMaE5hSK7JZR4fPrZi
         Qo/oWVMdqiUL7Q4LLshqe/zDapq9MEB6ZKWi7UAlItZ93DwkPgfIoEieHGbs7KD+E7uz
         R81w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xnXY1jJ+j+RRe8rBUFR0cBXiWPenprBUqM2vaodzUUQ=;
        b=mVN6b6qNizivP5lxMNKtxNkCd5dGY7W2xH8EiRJPSGDr9ayRRLpEHTHWRdqwdShI6P
         H7PBQ6g2bEV15+GS94s0KuHi8okwgF8uOhrmuHmkINSUAUEckW+U/ohX8FAg19XYpWof
         LZ2Hxm2qYj9dNMslHcR6L6KuSvwK7usdpj9+5g87SgURtjysC714BTiQOsP3HzQOfGjS
         voqi48D8D0cjbW7GnU/wf35a2/s9yviWgR0UDYBeyArLBB5GywqOg7Hh/o8WMaa4xNlf
         mvWDDdKmF1U104b69aNFisie7LO0/PxCyE5UKzkKh7XFOG9vnM6B1I763rX7LQmLm396
         v0ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9EkKyQESAQpsxJiYsIFPFawbhPzSLvRG+klmRozMiaVYAy4O4
	pO2ycOwhGhcZI5fXQyTxEKE=
X-Google-Smtp-Source: APXvYqxPAnuyLxJiLRPDzHY5kQnkl1mYqtPmG4RYaCbLe4v1lla/cD05/rFao6gqYg4v3rqEt18qrQ==
X-Received: by 2002:a17:90a:be02:: with SMTP id a2mr3004438pjs.94.1566530742544;
        Thu, 22 Aug 2019 20:25:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:18c1:: with SMTP id 184ls2048428pfy.10.gmail; Thu, 22
 Aug 2019 20:25:42 -0700 (PDT)
X-Received: by 2002:a65:4844:: with SMTP id i4mr952127pgs.113.1566530742065;
        Thu, 22 Aug 2019 20:25:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566530742; cv=none;
        d=google.com; s=arc-20160816;
        b=K7agIN/QRi0oV02c+dianmJpUdf3/t/lmDMWFSl/V0skC6ZN/ezx/AoBl3mQV1fXgZ
         e5vIK9uUduWyKSNdF6zSuyHNXYFRqM0mjReY8BDUTVOnaKRK7bdrVqKBgRV5aLFYLzHg
         dcLP0TlmHZ43kClqEy1VdRruIZk8OQRaBubTrfYbyozAmQRP8PX9FD8rL6ixRJsKXWLH
         dIFcXTomcrfXYDYmncUV6wkibzC3WCcVRKXCi92CCOAj0HMKznrJpUfKogmQ6PvJRGyB
         /zzibz9KvW3C0QvZrRXhqvvrE2B40DEN2sFMwrUTTop0f1D92TA63rFIgvbN9EySmFl/
         /Naw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=608g8PudA9tE+JLy4szzhFBcPgDy/MwnvpypnYq1ncw=;
        b=WiWACL7OMan/QKWpDJeisHiszDOvIL3gpCxo2QRmnZwYovk8S9CNRgJezhxTp7NwEm
         of5wRiyrQiCEBa3El5mAbzbzRGIVH10LfnolVafvsyH5rQBLm6orUbCk8AvCLKWNcac8
         DbzNct2yXnSnfcG+7aHkLZBgRPvGPf/1996NNzwECLboAjy8K+7zP4eoCyOj+u07DiEL
         /ULS7c9+tZ2kZ1H0SQcg9PQjlGVjozXdsLr+EuoQ+e/4Tmx0FRNtaPBUNmNgL2O+e07d
         ddJbH98Bdbuq4KA7EbJNjckavXvoG61B6uezrAxa/HQMPxsDroKM3Z/G6fbWwuHDG11X
         2m0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id t35si289955pjb.3.2019.08.22.20.25.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 20:25:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 46F6H44VFpz9s7T;
	Fri, 23 Aug 2019 13:25:36 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>, Joel Stanley <joel@jms.id.au>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Subject: Re: arch/powerpc/include/asm/current.h:32:43: error: unknown register name 'r2' in asm
In-Reply-To: <CAKwvOd=sfYbVT=eY=MGX-aKVuVrXW2o_=pSvTG7r2EY4dsG9NA@mail.gmail.com>
References: <201908201102.0U21yPsV%lkp@intel.com> <CAKwvOd=sfYbVT=eY=MGX-aKVuVrXW2o_=pSvTG7r2EY4dsG9NA@mail.gmail.com>
Date: Fri, 23 Aug 2019 13:25:30 +1000
Message-ID: <8736hs5zrp.fsf@concordia.ellerman.id.au>
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

Hi Nick,

For some reason I can't find the original mail from the buildbot,
despite it saying it sent it me?

Nick Desaulniers <ndesaulniers@google.com> writes:
> +Michael and Joel,
> I thought this would be a bug in Clang not recognizing the register
> names, but my simple reproducer errors in GCC as well:
> https://godbolt.org/z/ivGCXo

That link is compiling with both clang and gcc for x86_64?

If I flip them to ppc64le it works for me:

  https://godbolt.org/z/_mZlm7

So I'm not sure what's going on here :)

My best guess is that the clang they are using is actually targeting
x86. That would explain the register name not being understood and also
the BIG/LITTLE endian mismatch.

cheers

> Though also the line:
>    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent
> configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
> makes me think nothing here is valid.
>
> On Mon, Aug 19, 2019 at 8:17 PM kbuild test robot <lkp@intel.com> wrote:
>>
>> CC: kbuild-all@01.org
>> CC: linux-kernel@vger.kernel.org
>> TO: Michael Ellerman <mpe@ellerman.id.au>
>>
>> Hi Michael,
>>
>> FYI, the error/warning still remains.
>>
>> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   5f97cbe22b7616ead7ae267c29cad73bc1444811
>> commit: ed4289e8b48845888ee46377bd2b55884a55e60b Revert "powerpc: slightly improve cache helpers"
>> date:   3 weeks ago
>> config: powerpc-allnoconfig (attached as .config)
>> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
>> reproduce:
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         git checkout ed4289e8b48845888ee46377bd2b55884a55e60b
>>         # save the attached .config to linux build tree
>>         make.cross ARCH=powerpc
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>    In file included from kernel/bounds.c:10:
>>    In file included from include/linux/page-flags.h:10:
>>    In file included from include/linux/bug.h:5:
>>    In file included from arch/powerpc/include/asm/bug.h:128:
>>    In file included from include/asm-generic/bug.h:18:
>>    In file included from include/linux/kernel.h:12:
>>    In file included from include/linux/bitops.h:19:
>>    In file included from arch/powerpc/include/asm/bitops.h:243:
>>    In file included from include/asm-generic/bitops/le.h:6:
>>    In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
>>    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
>>    #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
>>     ^
>>    1 warning generated.
>>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
>>    In file included from include/linux/compat.h:10:
>>    In file included from include/linux/time.h:6:
>>    In file included from include/linux/seqlock.h:36:
>>    In file included from include/linux/spinlock.h:51:
>>    In file included from include/linux/preempt.h:11:
>>    In file included from include/linux/list.h:9:
>>    In file included from include/linux/kernel.h:12:
>>    In file included from include/linux/bitops.h:19:
>>    In file included from arch/powerpc/include/asm/bitops.h:243:
>>    In file included from include/asm-generic/bitops/le.h:6:
>>    In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
>>    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
>>    #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
>>     ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
>>    In file included from include/linux/compat.h:10:
>>    In file included from include/linux/time.h:6:
>>    In file included from include/linux/seqlock.h:36:
>>    In file included from include/linux/spinlock.h:51:
>>    In file included from include/linux/preempt.h:78:
>>    In file included from ./arch/powerpc/include/generated/asm/preempt.h:1:
>>    In file included from include/asm-generic/preempt.h:5:
>>    In file included from include/linux/thread_info.h:21:
>> >> arch/powerpc/include/asm/current.h:32:43: error: unknown register name 'r2' in asm
>>    register struct task_struct *current asm ("r2");
>>                                              ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
>>    In file included from include/linux/compat.h:10:
>>    In file included from include/linux/time.h:6:
>>    In file included from include/linux/seqlock.h:36:
>>    In file included from include/linux/spinlock.h:445:
>>    In file included from include/linux/atomic.h:7:
>> >> arch/powerpc/include/asm/atomic.h:138:10: error: unknown register name 'xer' in asm
>>            : "cc", "xer");
>>                    ^
>>    arch/powerpc/include/asm/atomic.h:154:10: error: unknown register name 'xer' in asm
>>            : "cc", "xer");
>>                    ^
>>    arch/powerpc/include/asm/atomic.h:171:10: error: unknown register name 'xer' in asm
>>            : "cc", "xer");
>>                    ^
>>    arch/powerpc/include/asm/atomic.h:187:10: error: unknown register name 'xer' in asm
>>            : "cc", "xer");
>>                    ^
>>    arch/powerpc/include/asm/atomic.h:262:10: error: unknown register name 'xer' in asm
>>            : "cc", "xer", "memory");
>>                    ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>                    return (set->sig[3] | set->sig[2] |
>>                            ^        ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>                    return (set->sig[3] | set->sig[2] |
>>                                          ^        ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>                    return  (set1->sig[3] == set2->sig[3]) &&
>>                             ^         ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:103:27: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>                    return  (set1->sig[3] == set2->sig[3]) &&
>>                                             ^         ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:104:5: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>                            (set1->sig[2] == set2->sig[2]) &&
>>                             ^         ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:104:21: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>                            (set1->sig[2] == set2->sig[2]) &&
>>                                             ^         ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_BINOP(sigorsets, _sig_or)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/signal.h:128:8: note: expanded from macro '_SIG_SET_BINOP'
>>                    a3 = a->sig[3]; a2 = a->sig[2];                         \
>>                         ^      ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_BINOP(sigorsets, _sig_or)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/signal.h:128:24: note: expanded from macro '_SIG_SET_BINOP'
>>                    a3 = a->sig[3]; a2 = a->sig[2];                         \
>>                                         ^      ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_BINOP(sigorsets, _sig_or)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/signal.h:129:8: note: expanded from macro '_SIG_SET_BINOP'
>>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
>>                         ^      ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_BINOP(sigorsets, _sig_or)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
>>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
>>                                         ^      ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_BINOP(sigorsets, _sig_or)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> --
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
>>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
>>                                         ^      ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:153:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/signal.h:130:3: note: expanded from macro '_SIG_SET_BINOP'
>>                    r->sig[3] = op(a3, b3);                                 \
>>                    ^      ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/signal.h:131:3: note: expanded from macro '_SIG_SET_BINOP'
>>                    r->sig[2] = op(a2, b2);                                 \
>>                    ^      ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_OP(signotset, _sig_not)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/signal.h:164:27: note: expanded from macro '_SIG_SET_OP'
>>            case 4: set->sig[3] = op(set->sig[3]);                          \
>>                                     ^        ~
>>    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
>>    #define _sig_not(x)     (~(x))
>>                               ^
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_OP(signotset, _sig_not)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/signal.h:164:10: note: expanded from macro '_SIG_SET_OP'
>>            case 4: set->sig[3] = op(set->sig[3]);                          \
>>                    ^        ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_OP(signotset, _sig_not)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/signal.h:165:20: note: expanded from macro '_SIG_SET_OP'
>>                    set->sig[2] = op(set->sig[2]);                          \
>>                                     ^        ~
>>    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
>>    #define _sig_not(x)     (~(x))
>>                               ^
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
>>    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
>>    _SIG_SET_OP(signotset, _sig_not)
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/signal.h:165:3: note: expanded from macro '_SIG_SET_OP'
>>                    set->sig[2] = op(set->sig[2]);                          \
>>                    ^        ~
>>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
>>            unsigned long sig[_NSIG_WORDS];
>>            ^
>>    In file included from arch/powerpc/kernel/asm-offsets.c:21:
>>    include/linux/mman.h:133:9: warning: division by zero is undefined [-Wdivision-by-zero]
>>                   _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
>>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
>>       : ((x) & (bit1)) / ((bit1) / (bit2))))
>>                        ^ ~~~~~~~~~~~~~~~~~
>>    include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
>>                   _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
>>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
>>       : ((x) & (bit1)) / ((bit1) / (bit2))))
>>                        ^ ~~~~~~~~~~~~~~~~~
>>    In file included from arch/powerpc/kernel/asm-offsets.c:23:
>>    In file included from include/linux/suspend.h:5:
>>    In file included from include/linux/swap.h:9:
>>    In file included from include/linux/memcontrol.h:13:
>>    In file included from include/linux/cgroup.h:26:
>>    In file included from include/linux/kernel_stat.h:9:
>>    In file included from include/linux/interrupt.h:11:
>>    In file included from include/linux/hardirq.h:9:
>>    In file included from arch/powerpc/include/asm/hardirq.h:6:
>>    In file included from include/linux/irq.h:20:
>>    In file included from include/linux/io.h:13:
>> >> arch/powerpc/include/asm/io.h:152:1: error: constraint 'Z' expects an integer constant expression
>>    DEF_MMIO_IN_X(in_be16, 16, lhbrx);
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
>>                    : "=r" (ret) : "Z" (*addr) : "memory");                 \
>>                                        ^~~~~
>>    arch/powerpc/include/asm/io.h:153:1: error: constraint 'Z' expects an integer constant expression
>>    DEF_MMIO_IN_X(in_be32, 32, lwbrx);
>>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>    arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
>>                    : "=r" (ret) : "Z" (*addr) : "memory");                 \
>>                                        ^~~~~
>> >> arch/powerpc/include/asm/io.h:157:1: error: invalid output constraint '=Z' in asm
>>    DEF_MMIO_OUT_X(out_be16, 16, sthbrx);
>>    ^
>>    arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
>>                    : "=Z" (*addr) : "r" (val) : "memory");                 \
>>                      ^
>>    arch/powerpc/include/asm/io.h:158:1: error: invalid output constraint '=Z' in asm
>>    DEF_MMIO_OUT_X(out_be32, 32, stwbrx);
>>    ^
>>    arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
>>                    : "=Z" (*addr) : "r" (val) : "memory");                 \
>>                      ^
>>    31 warnings and 10 errors generated.
>>    make[2]: *** [arch/powerpc/kernel/asm-offsets.s] Error 1
>>    make[2]: Target '__build' not remade because of errors.
>>    make[1]: *** [prepare0] Error 2
>>    make[1]: Target 'prepare' not remade because of errors.
>>    make: *** [sub-make] Error 2
>>    16 real  4 user  6 sys  67.00% cpu   make prepare
>>
>> vim +/r2 +32 arch/powerpc/include/asm/current.h
>>
>> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  28
>> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  29  /*
>> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  30   * We keep `current' in r2 for speed.
>> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  31   */
>> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09 @32  register struct task_struct *current asm ("r2");
>> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  33
>>
>> :::::: The code at line 32 was first introduced by commit
>> :::::: 584224e4095d8abcf2bef38efacc291be9a44c20 [PATCH] powerpc: Merge current.h
>>
>> :::::: TO: David Gibson <david@gibson.dropbear.id.au>
>> :::::: CC: Paul Mackerras <paulus@samba.org>
>>
>> ---
>> 0-DAY kernel test infrastructure                Open Source Technology Center
>> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
>
>
>
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8736hs5zrp.fsf%40concordia.ellerman.id.au.
