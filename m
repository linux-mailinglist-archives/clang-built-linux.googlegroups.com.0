Return-Path: <clang-built-linux+bncBC7457HKSMPRBNFJU2CAMGQE43PSZWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-f56.google.com (mail-vs1-f56.google.com [209.85.217.56])
	by mail.lfdr.de (Postfix) with ESMTPS id 990C036DDBD
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 19:00:38 +0200 (CEST)
Received: by mail-vs1-f56.google.com with SMTP id q4-20020a67cc040000b02902221bedbe6bsf10732151vsl.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 10:00:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619629236; cv=pass;
        d=google.com; s=arc-20160816;
        b=HQ6yd21hwcsthkho5TbokUSMPONRPULJduC92YqaJtkEm0rrvTnCzKc9Sz7IVtrq1A
         vQFrNcT63HiPoNjugCJpQrt0OoSRmI6H1krRFh3cQJCT0OyuKEeeZB1vUQLUJazgR8I+
         xXkFvN+sW5JgReTU0lU1P9RjUDBuXHhRgkhms9nKBkrJ35SFrHAtBjcN18B9YXfZeCgN
         K9Kazm21fgD1Jrk0VzXdWcBCQf1S+b0NjlZEnjx8XCwCYfgSXhiXrTzPcoKhHAbxYxXj
         5lA8fKTdWlvVF+F9aFk3HoVxzkyzwsMTwncxQo2xZnexKQzeOV7WVg+3/ryGc/oXBiiK
         4Zdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=sB1SYiWXWdaaqo1KoEFPZ8CnKQJthklaBblasrCpQdk=;
        b=if9/y41QBF8KugkXlOegTnF2Wq79X7IHb7xKEMINn1LCF97tTytn0+IQFwr5V5d+FX
         cm//lZ9uYKWEH3eprjK6HrCGmt9XInFlR/bzpn5LDe7L9nREL7Z8fTfgwdxK55Kc6HWV
         dX/LQkCVJQ6H2oHGHjBQgr90WTUS0mymah8+Smkaqm+M4pdxcNSinEM0B3Bqw70vq74l
         ONgFYKGN6GZ+dRgzPwAe4RsLVrovROr0stMMqE+opaQ2fbzJZBzTqiS637jo24lm2XTV
         M4YlyswooEqlijlgprF1bvb+UzX2ZUlxzUpA2yp6fCW63KYtl9lXL32wWn+036vlVuba
         Petg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=Mdy748th;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sB1SYiWXWdaaqo1KoEFPZ8CnKQJthklaBblasrCpQdk=;
        b=VZY+25vX4U7XqVbiwb3s581haL1VyiH/3BlGfsBg5B796k9L1QMcF0H3Dp/Arj/zJ0
         iNVMRvIjw9We2Y9jIpMq2/rRe6x+umtMZoL3d2UTB1B1eYnc1/9MAqaOxmNfQQffsZfx
         VViZOZ8Dcx+JbW7Qt6t3qs3aQJhbijVN8xscJ4S79ki3arpedv/JR84DqzEkI/vpOWvj
         JDcVNSEIEWLSLtGC7ALPEDoADvg77RHPHOeDihaiS+FuQskxFpsj1LmhJ6Y2TKmsy+88
         cHRyfWg3FQkFlTyg24qLVx26gfQ4bXbe1/1M+4fTu7VKJ7w0h9dCvRQuH4Zgt+/lfEuA
         MbOA==
X-Gm-Message-State: AOAM530xje+eLIZp9mmkZkOrdl7jWU3kHYf+EIcoF+17K5FRtWIZ15iW
	IuNFLh+Ki1hbK95EztxvV0E=
X-Google-Smtp-Source: ABdhPJxuA/XkraA8IOVzsn6ts7PJu+yqDdx/Q3lIJFUbNDmnDsH+shejTIhcqHmVdTl2B1se5F4bpA==
X-Received: by 2002:ac5:c96c:: with SMTP id t12mr26371298vkm.23.1619629236368;
        Wed, 28 Apr 2021 10:00:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:319:: with SMTP id c25ls36989vko.6.gmail; Wed, 28
 Apr 2021 10:00:35 -0700 (PDT)
X-Received: by 2002:a1f:2a95:: with SMTP id q143mr26730965vkq.8.1619629235571;
        Wed, 28 Apr 2021 10:00:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619629235; cv=none;
        d=google.com; s=arc-20160816;
        b=l5uT8yqBX336b1/2izPbwf41hvMkaF821AIhqmxPzudsnPAAey1IdP63U/PWs9TmRA
         toURXMdv/rU95M4/IG8sVOYRKgVgucYzVO98bg3t1c7sieBKfCidyHerb5yvJDN+SVdR
         aiiRy0hi97sm004tQn3hLTaVoeLQYeCbTYVzZSI8+0xHQ2oSTdg0wLyG59OK5KZnPyC2
         TY11lXmaZBzTzlX+eImB10o5ThM4uR0T6C56XtscaKEFpu7YQxsqHbXRLdX3N6AR5jDs
         xHxweK8aqqdRn4jeGas3Ej4PeORDY792zXr2ayiTDvcvlghSOXFpqdJHUoSFAeUquDJI
         yj+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=1rpVEhMl42Z+TemL9rGQg65UUibSaCzBBgDUqpj595M=;
        b=LxlXfVS8jd1eb8o91Lir77I1C/ADius9t1r7RBQqg97hBsmfrvq6qPbvldTP6DGaKQ
         cb5+jKB5mPat1JwiA9NA/0UyZf+38qH7Gux1sC/bJzO4LrCAr6prQH6N9lB+Rc4qHJcV
         +5v8xnqzeBFtTqcoXDPxOens94lnzVeNy87oiYUyuwZYIK8qIq01yRS9wnCn+k+xUFHF
         QkSkJJkGU3gplgmnkK1YcdrIQ9GKLBUdpSIBtCH+OaDtF+Jar+OY6dxes44vBgQvqO86
         QjaU9viBioLbBm7pWu75XNUgmDRZLrejjVGKWQErjF8cgpjHgypq7QCtQgdPcbilogbX
         bQIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=Mdy748th;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id f9si50493vkm.2.2021.04.28.10.00.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 10:00:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 608994a8853c0a2c461dd572 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 28 Apr 2021 17:00:24
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id CE30CC4338A; Wed, 28 Apr 2021 17:00:23 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net [104.54.226.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id C804FC433F1;
	Wed, 28 Apr 2021 17:00:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C804FC433F1
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: "'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	<sidneym@codeaurora.org>,
	"'Manning, Sid'" <sidneym@quicinc.com>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com> <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org> <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com>
In-Reply-To: <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com>
Subject: RE: FW: ARCH=hexagon unsupported?
Date: Wed, 28 Apr 2021 12:00:21 -0500
Message-ID: <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAr2ClWoDAPOEXAJITqGjAjip4FACC4XbUqqDC08A
Content-Language: en-us
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=Mdy748th;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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



> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Wednesday, April 28, 2021 11:50 AM
> To: Brian Cain <bcain@codeaurora.org>
> Cc: clang-built-linux <clang-built-linux@googlegroups.com>;
> sidneym@codeaurora.org
> Subject: Re: FW: ARCH=hexagon unsupported?
> 
> On Wed, Apr 28, 2021 at 9:09 AM Brian Cain <bcain@codeaurora.org> wrote:
> >
> > > -----Original Message-----
> > > From: Nick Desaulniers <ndesaulniers@google.com>
> > > Sent: Friday, April 23, 2021 4:40 PM
> > ...
> > > We'd be first in line to help build test such a patch. Please
> > > consider cc'ing myself and clang-built-linux@googlegroups.com when
> > > such a patch is available externally.  Further, we have the CI ready
> > > and waiting to add new architectures, even if it's just build
> > > testing. That would have caught regressions like 8320514c91bea; we
> > > were down to 1 build failure with
> > > https://github.com/ClangBuiltLinux/linux/issues/759 last I looked
> > > which was preventing us from adding Hexagon to any CI, but we must
> > > now dig ourselves out of a slightly deeper hole now.
> > >
> > > Is this patch something you suspect will take quite some time to
> > > work through internal review?
> >
> > These patches have completed their internal review.  I have pushed them
> to my tree at git://git.kernel.org/pub/scm/linux/kernel/git/bcain/linux using
> for-linus branch, up to commit 43810cfdd2e6af9c57c0975e1b920f2b18c484b6
> :
> 
> Are you able to link these with lld? I see:

Sorry -- I used " KBUILD_CFLAGS_KERNEL=-mlong-calls".  Sid, since this seems to be required maybe we should add it to the kernel build config?

> 
> $ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu make LLVM=1
> LLVM_IAS=1
> -j71 defconfig
> $ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu make LLVM=1
> LLVM_IAS=1 -j71 ...
>   LD      .tmp_vmlinux.kallsyms1
> ld.lld: error: vdso.c:(function vdso_init: .init.text+0x74):
> relocation R_HEX_B22_PCREL out of range: 4010400 is not in [-2097152,
> 2097151]; references panic
> >>> defined in kernel/built-in.a(panic.o)
> 
> ld.lld: error: cpu.c:(function cpuhp_threads_init: .init.text+0x4C):
> relocation R_HEX_B22_PCREL out of range: 4009620 is not in [-2097152,
> 2097151]; references printk
> >>> defined in kernel/built-in.a(printk/printk.o)
> ...
> <many R_HEX_B22_PCREL out of range failures>
> 
> This is with llvm-project @ bdd68357901d.
> 
> (Looking at the builtins, I'm curious what are `:endloop0`, and `if` like
> statements?)
> 
> >
> > ~~~~
> >
> > commit 43810cfdd2e6af9c57c0975e1b920f2b18c484b6
> > Author: Sid Manning <sidneym@codeaurora.org>
> > Date:   Tue Oct 13 16:17:50 2020 -0500
> >
> >     Hexagon: add builtins to kernel
> >
> >     Add the compiler-rt builtins like memcpy to the hexagon kernel.
> >
> >     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
> >     Signed-off-by: Brian Cain <bcain@codeaurora.org>
> >
> > commit 19a75d4ece15d519036db9e52768e46ddc1dcecd
> > Author: Sid Manning <sidneym@codeaurora.org>
> > Date:   Mon Apr 26 22:38:31 2021 -0500
> >
> >     Hexagon: remove DEBUG from comet config
> >
> >     Remove CONFIG_DEBUG_INFO from comet configuration.
> >
> >     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
> >     Signed-off-by: Brian Cain <bcain@codeaurora.org>
> >
> > commit 4c8a34896e830ad02bf8cf4abe5b639e0de12938
> > Author: Sid Manning <sidneym@codeaurora.org>
> > Date:   Mon Apr 26 13:51:53 2021 -0500
> >
> >     Hexagon: change jumps to must-extend in futex_atomic_*
> >
> >     Cross-section jumps from .fixup section must be extended.
> >
> >     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
> >     Signed-off-by: Brian Cain <bcain@codeaurora.org>
> >
> > commit 9492ed9c4d146f2143f21b82aa8157a2787ad993
> > Author: Sid Manning <sidneym@codeaurora.org>
> > Date:   Fri Apr 23 15:06:58 2021 -0500
> >
> >     Hexagon: fix build errors
> >
> >     Fix type-o in ptrace.c.
> >     Add missing include asm/hexagon_vm.h
> >     Remove superfluous cast.
> >     Replace 'p3_0' with 'preds'.
> >
> >     Signed-off-by: Sid Manning <sidneym@codeaurora.org>
> >     Signed-off-by: Brian Cain <bcain@codeaurora.org>
> >
> 
> 
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/029a01d73c4f%24fa5d9940%24ef18cbc0%24%40codeaurora.org.
