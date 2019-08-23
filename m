Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGWA7XVAKGQEWF7MTXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 733309A61D
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 05:40:11 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id g6sf4218457otq.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 20:40:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566531610; cv=pass;
        d=google.com; s=arc-20160816;
        b=esZAjImb9rg15+J4yykhFEqr/sCj19h0riU8Lc2z4UGJQiKdYuaEEE1n27KS4Nxdd2
         PDbBwPYE3IziQkNlRcho8QDQYvNFzhXgysEY1S6yU6ts5WnnyP+b1/Y5hq9siC8/Q5fb
         v4YLCeRcyamw8SYMaaJTiUobNnfeu7wgUFc/oTGlf/f1SG6CQfJsgtg3UvE/z4uNAeHB
         EK2Fc6t6RJq51NYBDB/cAAdJbM9xl4W2Fr9o1/PI2WNtMZVPYlcBwOwDNjm2KBkn3Z4o
         azmgB0gSMmlopNcqP5/FolQWVICyRAtv+ULBGu+WyCxSmxJ2SnASvWLAaglAGRfvdIvs
         iEPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lmKwROTQEjhrmSpwC5LVOI92lyLjVpK6lRBVCLTJNEc=;
        b=MVQ+rpijZDaEHvapGCphOGmf5mt35MzjjiN91DCR/n5acmS6u1833sU+rGPznStuVm
         GlX/uBpbJy4EL3Rp0dWo7K3w2YPHPwSRWNG58iyBMSMHxdLsh2Qc+IvhTISCkGDAnZ5h
         reBRyA4u6asojKc5DEkW6Z9anDo4TKo1vjPot4NQ36UWSmKEsJ8w7jFmzYxTdz1AfIBS
         PkjerNXMSGfCjp0/hptSNBNkLF8xxhhh7KpD6gjaOlI3xVGW5bGpFz4gTTPzUE7Uy6XR
         LM65GQE7EvPo/0gKm0zkCij6fOx+iQ7e9zQCo51ZtE2P0j8lYcwH5Ldv6EFd/Cw/hilB
         u6ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LvkUUuu7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lmKwROTQEjhrmSpwC5LVOI92lyLjVpK6lRBVCLTJNEc=;
        b=EzzS2UESrm/qHF2tD2B6oPVyQ90KwAd14FYzrhmeL6S/54DWDWNFFrOoXIj0dVdtNC
         opF0LesnARvhgVaA17HTZ+8o6DCO5eMwzHaF1ShuPv6I2pB0qGfs52bA7HKeNjVm4A6n
         s8fLsZ7ol/22SkXhsMKG3E/gCOaetb3ypn4KqjFU+auPVhX8zRMqu8UHHn3PTvfLz33z
         kpHXsi0/kWNkuozlQkfQiWZjA+kmOlqw35dagF2XBiknrwyJyRo+CfQFszv4zek6oTrz
         LpOZ3B83lx+xMRLZHDqj0Chk7+0chat1j0pEOpTlkYUU8QqSxMqvLRnQYObQPAi/MYHP
         Wxtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lmKwROTQEjhrmSpwC5LVOI92lyLjVpK6lRBVCLTJNEc=;
        b=KfMlTbYJE9cA4ZmKGY/EZ37ccFB9hWDGcTiIZn+8H93klxn48y24v+aEo5XLK9xuWJ
         XbiZTfdV1soLwRbSt52BJzhzID+E9gY/Z4lbGjq9zfNT0u5Aj5ReBUcSiOmwIODszVFh
         bpZWwq7AvVIw4WFo55Q97cjOkhK0LBu0DRDptjdeH/1thDgxr4UzW6HacV+I90r7ki+Z
         Ah6wKZrhsOVv7FOsPliN2GK6bmgRIpA0xCyucIxfKZoJL0hg4/65Pb+NRWGDV4nqmd6K
         f0GN751BGwe3W10j3Ob2lcBudsdlkqV+8gDMRYgewN7SP+3LKOG4Si0409B+jaF8aFtN
         g5wg==
X-Gm-Message-State: APjAAAWNkUxBalSAUn+8IOQ/ddg0jSK3mk9InSfSzSjESVxR9wbMhba0
	dAGBkHUwntJURrcxW66dh4Y=
X-Google-Smtp-Source: APXvYqw943ZnsQi3YUQ2sQ7F3RwuL1BfXzgxHvmTsgVoTTrbuL8x8+3MFpFVJN0HJ8Wb6ml/Mnq0tQ==
X-Received: by 2002:a9d:7516:: with SMTP id r22mr2523737otk.151.1566531610105;
        Thu, 22 Aug 2019 20:40:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c615:: with SMTP id w21ls228146oif.15.gmail; Thu, 22 Aug
 2019 20:40:09 -0700 (PDT)
X-Received: by 2002:aca:bfd4:: with SMTP id p203mr1683998oif.95.1566531609685;
        Thu, 22 Aug 2019 20:40:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566531609; cv=none;
        d=google.com; s=arc-20160816;
        b=y5y408Y5qtcnStlPthmBewavVkFV7Vrx0ArJq8ZfLzSMq1ePXKn3XpEZm4i/jPRr5o
         7MqltER9M6hhFVR6QOJRKpZ+xQ0zPnDe8WzlryoZR8YcbsMphQIFo1YSBj40/6KCwZfZ
         BwNbV1BnwS3kgKz6teS2WptmieDm07t4uLC2VT3vS5P/feu2kGkewERq4qqL6A5u5unr
         Qe+HwuvX+mh9lXzQCNov3ZAOxBT4/D50gRI4y3S0S7VEJMwFjC2CGoX6H1tZdQRRakmb
         2FOqrVSVjuIEWf1Kq6GVkMY1OVR+eWwVfQ4IZuHhF04EsLRBEGKQ/7d+kQafibXc7RFG
         FkHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/2Cjq1kpLGtEDpUBvYJZY1cpqO+WyefSJg3P/vr3Myk=;
        b=N168WNobTrCzA+mkY1ciwXryXJSF9P14D3CmcH5FoT2svV1qXMOwjc5PDVVoBYvn5o
         LJ7ePQDPJwvZCyS3okjKKAO1/UkhsTcdQX7fujOxduBO57faKYcMFJ2ntPE5QV1/brAx
         2vI3suYkf+qeHyOVSVaWY/2MtG6r5nv0MeUqpuw1CPjBrMXyFjcYAkOiNER0I/kHTGjE
         kKS0Eu5dm6Qy3lay+G/BwvExF1P1pdnoS+2kXAMzeHwNIddodKYVDRloGZwI1GOY+oSd
         nRspO+EOmWsZ60vjCZLfaXUBHXTeZSNssHjQxTxrGO1OoupWyGJUOuRENaPqHRLFCW/M
         4miA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LvkUUuu7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id m4si80834otk.1.2019.08.22.20.40.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2019 20:40:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id e11so4949694pga.5
        for <clang-built-linux@googlegroups.com>; Thu, 22 Aug 2019 20:40:09 -0700 (PDT)
X-Received: by 2002:a63:61cd:: with SMTP id v196mr2112972pgb.263.1566531608235;
 Thu, 22 Aug 2019 20:40:08 -0700 (PDT)
MIME-Version: 1.0
References: <201908201102.0U21yPsV%lkp@intel.com> <CAKwvOd=sfYbVT=eY=MGX-aKVuVrXW2o_=pSvTG7r2EY4dsG9NA@mail.gmail.com>
 <8736hs5zrp.fsf@concordia.ellerman.id.au>
In-Reply-To: <8736hs5zrp.fsf@concordia.ellerman.id.au>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 22 Aug 2019 20:39:57 -0700
Message-ID: <CAKwvOd=8ouR_mCbK=ZtQ6ojJtWnNpvMkyj=gL1xkpADmnPg0aQ@mail.gmail.com>
Subject: Re: arch/powerpc/include/asm/current.h:32:43: error: unknown register
 name 'r2' in asm
To: Michael Ellerman <mpe@ellerman.id.au>, Philip Li <philip.li@intel.com>, 
	Chen Rong <rong.a.chen@intel.com>
Cc: Joel Stanley <joel@jms.id.au>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LvkUUuu7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Thu, Aug 22, 2019 at 8:25 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
>
> Hi Nick,
>
> For some reason I can't find the original mail from the buildbot,
> despite it saying it sent it me?

Ah, haha, yeah sorry, I should have mentioned that 0day bot is just
sending our mailing list the Clang reports as a trial run.

>
> Nick Desaulniers <ndesaulniers@google.com> writes:
> > +Michael and Joel,
> > I thought this would be a bug in Clang not recognizing the register
> > names, but my simple reproducer errors in GCC as well:
> > https://godbolt.org/z/ivGCXo
>
> That link is compiling with both clang and gcc for x86_64?
>
> If I flip them to ppc64le it works for me:
>
>   https://godbolt.org/z/_mZlm7
>
> So I'm not sure what's going on here :)

Oh man, sorry, bad link (mine).  Indeed if I set `-target
powerpc-linux-gnu` (or `-target powerpc64-linux-gnu`) for clang than
it's recognized.

>
> My best guess is that the clang they are using is actually targeting
> x86. That would explain the register name not being understood and also
> the BIG/LITTLE endian mismatch.

Indeed, Rong and Philip, is the ppc backend disabled in your build of
clang per chance?  If you're configuring your clang build with cmake,
please triple check `LLVM_TARGETS_TO_BUILD` has `PowerPC` in the `;`
separated list.

https://llvm.org/docs/CMake.html#llvm-specific-variables

You can also check `llc --version` to check that the backend is
enabled.  Though PPC is a default target, IIRC, in LLVM so I think
you'd need to be setting `LLVM_TARGETS_TO_BUILD` without `PowerPC` in
the first place to observe that.

Can you triple check if that is the problem, or something else?

Otherwise maybe an allnoconfig build is messing something up?
make.cross looks gcc specific, I think there's still a TODO to include
a link to the clang one for clang reports?

>
> cheers
>
> > Though also the line:
> >    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent
> > configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
> > makes me think nothing here is valid.
> >
> > On Mon, Aug 19, 2019 at 8:17 PM kbuild test robot <lkp@intel.com> wrote:
> >>
> >> CC: kbuild-all@01.org
> >> CC: linux-kernel@vger.kernel.org
> >> TO: Michael Ellerman <mpe@ellerman.id.au>
> >>
> >> Hi Michael,
> >>
> >> FYI, the error/warning still remains.
> >>
> >> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git master
> >> head:   5f97cbe22b7616ead7ae267c29cad73bc1444811
> >> commit: ed4289e8b48845888ee46377bd2b55884a55e60b Revert "powerpc: slightly improve cache helpers"
> >> date:   3 weeks ago
> >> config: powerpc-allnoconfig (attached as .config)
> >> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> >> reproduce:
> >>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>         chmod +x ~/bin/make.cross
> >>         git checkout ed4289e8b48845888ee46377bd2b55884a55e60b
> >>         # save the attached .config to linux build tree
> >>         make.cross ARCH=powerpc
> >>
> >> If you fix the issue, kindly add following tag
> >> Reported-by: kbuild test robot <lkp@intel.com>
> >>
> >> All errors (new ones prefixed by >>):
> >>
> >>    In file included from kernel/bounds.c:10:
> >>    In file included from include/linux/page-flags.h:10:
> >>    In file included from include/linux/bug.h:5:
> >>    In file included from arch/powerpc/include/asm/bug.h:128:
> >>    In file included from include/asm-generic/bug.h:18:
> >>    In file included from include/linux/kernel.h:12:
> >>    In file included from include/linux/bitops.h:19:
> >>    In file included from arch/powerpc/include/asm/bitops.h:243:
> >>    In file included from include/asm-generic/bitops/le.h:6:
> >>    In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
> >>    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
> >>    #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
> >>     ^
> >>    1 warning generated.
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
> >>    In file included from include/linux/compat.h:10:
> >>    In file included from include/linux/time.h:6:
> >>    In file included from include/linux/seqlock.h:36:
> >>    In file included from include/linux/spinlock.h:51:
> >>    In file included from include/linux/preempt.h:11:
> >>    In file included from include/linux/list.h:9:
> >>    In file included from include/linux/kernel.h:12:
> >>    In file included from include/linux/bitops.h:19:
> >>    In file included from arch/powerpc/include/asm/bitops.h:243:
> >>    In file included from include/asm-generic/bitops/le.h:6:
> >>    In file included from arch/powerpc/include/uapi/asm/byteorder.h:12:
> >>    include/linux/byteorder/little_endian.h:8:2: warning: inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set [-W#warnings]
> >>    #warning inconsistent configuration, CONFIG_CPU_BIG_ENDIAN is set
> >>     ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
> >>    In file included from include/linux/compat.h:10:
> >>    In file included from include/linux/time.h:6:
> >>    In file included from include/linux/seqlock.h:36:
> >>    In file included from include/linux/spinlock.h:51:
> >>    In file included from include/linux/preempt.h:78:
> >>    In file included from ./arch/powerpc/include/generated/asm/preempt.h:1:
> >>    In file included from include/asm-generic/preempt.h:5:
> >>    In file included from include/linux/thread_info.h:21:
> >> >> arch/powerpc/include/asm/current.h:32:43: error: unknown register name 'r2' in asm
> >>    register struct task_struct *current asm ("r2");
> >>                                              ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:14:
> >>    In file included from include/linux/compat.h:10:
> >>    In file included from include/linux/time.h:6:
> >>    In file included from include/linux/seqlock.h:36:
> >>    In file included from include/linux/spinlock.h:445:
> >>    In file included from include/linux/atomic.h:7:
> >> >> arch/powerpc/include/asm/atomic.h:138:10: error: unknown register name 'xer' in asm
> >>            : "cc", "xer");
> >>                    ^
> >>    arch/powerpc/include/asm/atomic.h:154:10: error: unknown register name 'xer' in asm
> >>            : "cc", "xer");
> >>                    ^
> >>    arch/powerpc/include/asm/atomic.h:171:10: error: unknown register name 'xer' in asm
> >>            : "cc", "xer");
> >>                    ^
> >>    arch/powerpc/include/asm/atomic.h:187:10: error: unknown register name 'xer' in asm
> >>            : "cc", "xer");
> >>                    ^
> >>    arch/powerpc/include/asm/atomic.h:262:10: error: unknown register name 'xer' in asm
> >>            : "cc", "xer", "memory");
> >>                    ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:87:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>                    return (set->sig[3] | set->sig[2] |
> >>                            ^        ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:87:25: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>                    return (set->sig[3] | set->sig[2] |
> >>                                          ^        ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:103:11: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>                    return  (set1->sig[3] == set2->sig[3]) &&
> >>                             ^         ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:103:27: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>                    return  (set1->sig[3] == set2->sig[3]) &&
> >>                                             ^         ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:104:5: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>                            (set1->sig[2] == set2->sig[2]) &&
> >>                             ^         ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:104:21: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>                            (set1->sig[2] == set2->sig[2]) &&
> >>                                             ^         ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_BINOP(sigorsets, _sig_or)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/signal.h:128:8: note: expanded from macro '_SIG_SET_BINOP'
> >>                    a3 = a->sig[3]; a2 = a->sig[2];                         \
> >>                         ^      ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_BINOP(sigorsets, _sig_or)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/signal.h:128:24: note: expanded from macro '_SIG_SET_BINOP'
> >>                    a3 = a->sig[3]; a2 = a->sig[2];                         \
> >>                                         ^      ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_BINOP(sigorsets, _sig_or)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/signal.h:129:8: note: expanded from macro '_SIG_SET_BINOP'
> >>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
> >>                         ^      ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:147:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_BINOP(sigorsets, _sig_or)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
> >>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
> >>                                         ^      ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:147:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_BINOP(sigorsets, _sig_or)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> --
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/signal.h:129:24: note: expanded from macro '_SIG_SET_BINOP'
> >>                    b3 = b->sig[3]; b2 = b->sig[2];                         \
> >>                                         ^      ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:153:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/signal.h:130:3: note: expanded from macro '_SIG_SET_BINOP'
> >>                    r->sig[3] = op(a3, b3);                                 \
> >>                    ^      ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:153:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_BINOP(sigandnsets, _sig_andn)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/signal.h:131:3: note: expanded from macro '_SIG_SET_BINOP'
> >>                    r->sig[2] = op(a2, b2);                                 \
> >>                    ^      ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_OP(signotset, _sig_not)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/signal.h:164:27: note: expanded from macro '_SIG_SET_OP'
> >>            case 4: set->sig[3] = op(set->sig[3]);                          \
> >>                                     ^        ~
> >>    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
> >>    #define _sig_not(x)     (~(x))
> >>                               ^
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:177:1: warning: array index 3 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_OP(signotset, _sig_not)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/signal.h:164:10: note: expanded from macro '_SIG_SET_OP'
> >>            case 4: set->sig[3] = op(set->sig[3]);                          \
> >>                    ^        ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_OP(signotset, _sig_not)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/signal.h:165:20: note: expanded from macro '_SIG_SET_OP'
> >>                    set->sig[2] = op(set->sig[2]);                          \
> >>                                     ^        ~
> >>    include/linux/signal.h:176:24: note: expanded from macro '_sig_not'
> >>    #define _sig_not(x)     (~(x))
> >>                               ^
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:15:
> >>    include/linux/signal.h:177:1: warning: array index 2 is past the end of the array (which contains 2 elements) [-Warray-bounds]
> >>    _SIG_SET_OP(signotset, _sig_not)
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/signal.h:165:3: note: expanded from macro '_SIG_SET_OP'
> >>                    set->sig[2] = op(set->sig[2]);                          \
> >>                    ^        ~
> >>    arch/powerpc/include/uapi/asm/signal.h:18:2: note: array 'sig' declared here
> >>            unsigned long sig[_NSIG_WORDS];
> >>            ^
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:21:
> >>    include/linux/mman.h:133:9: warning: division by zero is undefined [-Wdivision-by-zero]
> >>                   _calc_vm_trans(flags, MAP_LOCKED,     VM_LOCKED    ) |
> >>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
> >>       : ((x) & (bit1)) / ((bit1) / (bit2))))
> >>                        ^ ~~~~~~~~~~~~~~~~~
> >>    include/linux/mman.h:134:9: warning: division by zero is undefined [-Wdivision-by-zero]
> >>                   _calc_vm_trans(flags, MAP_SYNC,       VM_SYNC      );
> >>                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    include/linux/mman.h:111:21: note: expanded from macro '_calc_vm_trans'
> >>       : ((x) & (bit1)) / ((bit1) / (bit2))))
> >>                        ^ ~~~~~~~~~~~~~~~~~
> >>    In file included from arch/powerpc/kernel/asm-offsets.c:23:
> >>    In file included from include/linux/suspend.h:5:
> >>    In file included from include/linux/swap.h:9:
> >>    In file included from include/linux/memcontrol.h:13:
> >>    In file included from include/linux/cgroup.h:26:
> >>    In file included from include/linux/kernel_stat.h:9:
> >>    In file included from include/linux/interrupt.h:11:
> >>    In file included from include/linux/hardirq.h:9:
> >>    In file included from arch/powerpc/include/asm/hardirq.h:6:
> >>    In file included from include/linux/irq.h:20:
> >>    In file included from include/linux/io.h:13:
> >> >> arch/powerpc/include/asm/io.h:152:1: error: constraint 'Z' expects an integer constant expression
> >>    DEF_MMIO_IN_X(in_be16, 16, lhbrx);
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
> >>                    : "=r" (ret) : "Z" (*addr) : "memory");                 \
> >>                                        ^~~~~
> >>    arch/powerpc/include/asm/io.h:153:1: error: constraint 'Z' expects an integer constant expression
> >>    DEF_MMIO_IN_X(in_be32, 32, lwbrx);
> >>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >>    arch/powerpc/include/asm/io.h:109:23: note: expanded from macro 'DEF_MMIO_IN_X'
> >>                    : "=r" (ret) : "Z" (*addr) : "memory");                 \
> >>                                        ^~~~~
> >> >> arch/powerpc/include/asm/io.h:157:1: error: invalid output constraint '=Z' in asm
> >>    DEF_MMIO_OUT_X(out_be16, 16, sthbrx);
> >>    ^
> >>    arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
> >>                    : "=Z" (*addr) : "r" (val) : "memory");                 \
> >>                      ^
> >>    arch/powerpc/include/asm/io.h:158:1: error: invalid output constraint '=Z' in asm
> >>    DEF_MMIO_OUT_X(out_be32, 32, stwbrx);
> >>    ^
> >>    arch/powerpc/include/asm/io.h:117:5: note: expanded from macro 'DEF_MMIO_OUT_X'
> >>                    : "=Z" (*addr) : "r" (val) : "memory");                 \
> >>                      ^
> >>    31 warnings and 10 errors generated.
> >>    make[2]: *** [arch/powerpc/kernel/asm-offsets.s] Error 1
> >>    make[2]: Target '__build' not remade because of errors.
> >>    make[1]: *** [prepare0] Error 2
> >>    make[1]: Target 'prepare' not remade because of errors.
> >>    make: *** [sub-make] Error 2
> >>    16 real  4 user  6 sys  67.00% cpu   make prepare
> >>
> >> vim +/r2 +32 arch/powerpc/include/asm/current.h
> >>
> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  28
> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  29  /*
> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  30   * We keep `current' in r2 for speed.
> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  31   */
> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09 @32  register struct task_struct *current asm ("r2");
> >> 584224e4095d8a include/asm-powerpc/current.h David Gibson 2005-11-09  33
> >>
> >> :::::: The code at line 32 was first introduced by commit
> >> :::::: 584224e4095d8abcf2bef38efacc291be9a44c20 [PATCH] powerpc: Merge current.h
> >>
> >> :::::: TO: David Gibson <david@gibson.dropbear.id.au>
> >> :::::: CC: Paul Mackerras <paulus@samba.org>
> >>
> >> ---
> >> 0-DAY kernel test infrastructure                Open Source Technology Center
> >> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8ouR_mCbK%3DZtQ6ojJtWnNpvMkyj%3DgL1xkpADmnPg0aQ%40mail.gmail.com.
