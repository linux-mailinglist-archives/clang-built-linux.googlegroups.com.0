Return-Path: <clang-built-linux+bncBCM33EFK7EJRBH6YZP2QKGQE7YOPARA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C86721C773D
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 18:55:59 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id 30sf1625653wrq.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 09:55:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588784159; cv=pass;
        d=google.com; s=arc-20160816;
        b=uBb5L/eNgtQ6SrUNKrZaWLUBwTrtN1kK4YAjhKGm6yOG1rxdZWLNw+54j8AqGCMHsR
         eyK3DkQ++WNmJYNLZ68SgMhYIjhSuqe0me+LyeyRGGwZvzwxRNTfRAVd8E2ynpBBIIcg
         5rX734mrMOzuumCQn6BG/Q3l4scHSeVphz8qqFgxNN2ON8J4y5kGFvP6/Z4uSmgqvhd9
         0oPqrndG879oLGv/7GS/0xgr6Dg8h0O2SCgJVFwIj4xGlZLqKZSKD1GQ7n9MgTNiQ1Sc
         FV46bqj/N9yohT1NVtpiWJcco77UMbtTa30uftP6V7t1K9gtqAOumDSAsSaQsGqvp2tv
         i78w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=UCNk+ro3tzUVEURuqYlAYKrKw7k+Q6ArwbvzfB1LDhU=;
        b=BrConT/4RN9PqM9IV3S7BAXyh0AO11o53GgxyZdYP07Hq2TSJTK2zx8jGu9wbBm87h
         9lrzMtOCxMNek4D4Xbw+dSrxX3BqPR/mfTSBB4Y/9eJsPQxA7QGDeucX/UZS0tLHaJdZ
         qP4HKMDa6tkkVYNyhxZCX0YZckT8DSdlsGzgsgz/3iRONKW2S6u35WkAjqocfOvUOvLf
         8BRCsplNNh36BFH6M3n8Vo9/ZvYqtYXHlMYf+USjHXsze2GjQJUorQrWJHLACfpP/AQu
         ksjxNUMBkMff7uJS5VtF0X9nteVf0Y9KLApy/TI2qNGnbhfUBvgosq1v+cu/93t2KRvP
         kfng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RSvcn+XK;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UCNk+ro3tzUVEURuqYlAYKrKw7k+Q6ArwbvzfB1LDhU=;
        b=RMeg6YupLokhg8fWA70iIQmFjUdVkxiYCU3BM4ASSQcpKqIqUDzZ2/oxkfBwEU7RCR
         qDSlfbKpYLqOesspYEL8l7eumiNyw1IvHFwEFUQ63NktmW1oNBEcGlvTD6NxnhLSdchZ
         L+sjuaxREFmxll6W1+u21nKszAi4wlYlHmUlWIHtTZnXjnrshkBqlqIG6u2UagTx9HsL
         uJ2YMfBmQzxR+CTs2g0/X9e2N69JtWJGcjlgM1bTlZoQjXJyiZJ+q6jESjwxNVpB5ouN
         ex13i1ebQug2KWr3x946sM8cLSOvq1JZg4NqJ6Xw4d4loQmS/QMHNUub2id6l21292Tq
         YwQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UCNk+ro3tzUVEURuqYlAYKrKw7k+Q6ArwbvzfB1LDhU=;
        b=L2ymMc4fcMmNfpYoeSfPnwmOkA8luOk6uirzWbJkc+c3xX/1cemhfti4sn2Hk4Cph/
         VjOPsu9lSvo+9R0oaB9ufjTLtlR4HllWfB1BdKYwyDQfJAD+kJ5tWexjsWYQiq4fVUDS
         a6j0Sa4o8xE4mREUV3TsySImTGFhrKFzttfRkJp5m9RYr1xgVmU7YWhJsyawzDmJinqH
         0MSP5lZb+deX72K3jsIiEreY3/58rgn4pd7RRt1gax9YrKbWhotOigf+twDThPEwWcsm
         RwldXf5Irfh1oHs4vSOFyG4lgDmapHIr7kDXEm0Tw9ZfCj+0RM61Bhz1k1FcPVYmY40K
         pq7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UCNk+ro3tzUVEURuqYlAYKrKw7k+Q6ArwbvzfB1LDhU=;
        b=nfqXn2C8BtQe+FrH7PAtRClFGUEcWnXnP76eARQbRG3G8SI1jiov7pOjZLjtVDRxRd
         H+i021If+IzEqUnIgPIu+dU3ddbab2GL2DgN2dLgoetPPjVroPi+wBXf3bPeASFnghGs
         WsGOGNfyJp09q/JJrl2JAEDc2cVhQGQOutIdj4sb/kqFv0K3grIiBrcSDtsWN6drdmWO
         SLiezKDNv6NgxjUmEGRIFLcaN4AbGkObBNaRIMwr3xT/VcG7BFgj3KUuMREGZuOX51A2
         prvM+G4aAa98JZUBOa/deLhjh8DfF3mRb/Bt/MHNXONoQB6f13D826V81AtLBPsgEGap
         Qm7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puaws1Pgr84iG6l2XTXzPczF+OFmt00pcyoFIFH44x4eZYzhKKds
	pVXlWB7cxWWVovGzhc3UjwU=
X-Google-Smtp-Source: APiQypI0g1psDJ7QA5R6V8wZ89C5/STuqfaKp/RE5oh9oqBDMqzVSa59P69i5W7LkDiFlhOmorDAfw==
X-Received: by 2002:a5d:6847:: with SMTP id o7mr10603940wrw.83.1588784159573;
        Wed, 06 May 2020 09:55:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dc85:: with SMTP id r5ls4553301wrj.5.gmail; Wed, 06 May
 2020 09:55:59 -0700 (PDT)
X-Received: by 2002:adf:e812:: with SMTP id o18mr11004887wrm.185.1588784159005;
        Wed, 06 May 2020 09:55:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588784159; cv=none;
        d=google.com; s=arc-20160816;
        b=y+3r2thBinLkSzYnhV0+nfe+vT6hAcpIQoXa92mtdOMS4iv5gKC8P0HdGcsUIARwE2
         c0f2lg3mxgYlWDST2wyBv5FEWLLye58lCYay4xDVy1FV78l5vYtKK6b8Z8SV2Wv2S28I
         kqb0/gIGq7jiN69ZF/9LPmEAPfjexGrkpTKzl0hjHooZOVjTlz3FiDrAZ65dMI4KzhLQ
         yM7beqyXJt6THU8rGTu00FSmab/8oFRyvHw0FNpdC9IeSSw/zKPw3H7LtOEuq75IRVDL
         QBiBTBMYAJWb5AXS2srEqzUEBixBnQyR8Xhx/C+7SGP+GpEGFQ8ci6LmxjmVTvc3QvnX
         gxUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kKFHMEDldcqtXJZZom1e30Amb1qemItMYb+MfCtBaYc=;
        b=FmDJfr9ETJElwnbuYC3iDy2rDBxZOQpVFUra3eIvt8fhznkR8iwOuJN+HyIXgmxFUx
         g5fn5eBX3EZZPEIir5RhncXXZuuC5Bax4Z7rKGRYGROWZY4Ua5BgwuNuOCoecTtm6DDR
         lR0vQ7zjYiEP8KsTHpdF92ysmECp4H/cVZYQdfagsBGIrYTwi2V/Iip7KAVJbMqLTDZF
         cmr6xUm1+H6Vfg3WHE57+jXJZngHSxbAc6Jhn7O85oxBwBSOlo3fGHjsWwHQLDH5NUVr
         BHjqWDgquvu1IpyTFGLDCaWGyVSlSuGt/qSBlk142Qci4W2w7IjDoPACvxsDua5qzyzd
         uATg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RSvcn+XK;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id w8si145134wrn.2.2020.05.06.09.55.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 09:55:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id a21so3114276ljb.9
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 09:55:58 -0700 (PDT)
X-Received: by 2002:a2e:a176:: with SMTP id u22mr5680710ljl.177.1588784158471;
 Wed, 06 May 2020 09:55:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <20200506043028.GA663805@ubuntu-s3-xlarge-x86> <CAKwvOd=c6gzpUsRgh-XmKEh0xHkZUWfXNW52EpqfrbH+XhH5fQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=c6gzpUsRgh-XmKEh0xHkZUWfXNW52EpqfrbH+XhH5fQ@mail.gmail.com>
From: Ilie Halip <ilie.halip@gmail.com>
Date: Wed, 6 May 2020 19:55:47 +0300
Message-ID: <CAHFW8PQ1jusUS9xNUmiwwTU3x=GCqL3AJwwirhJOAgZUjx9wVA@mail.gmail.com>
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>, 
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Daniel Axtens <dja@axtens.net>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RSvcn+XK;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::243
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

> Ilie, may I put your authorship and signed off by tag on the V2?

Yes, of course. With the current global situation I took some time off
and didn't follow the latest discussion.

Feel free to credit/rework the code as you see fit.

Thanks,
I.H.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHFW8PQ1jusUS9xNUmiwwTU3x%3DGCqL3AJwwirhJOAgZUjx9wVA%40mail.gmail.com.
