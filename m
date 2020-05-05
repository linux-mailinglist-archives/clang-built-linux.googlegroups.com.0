Return-Path: <clang-built-linux+bncBCRIBEM7SMBBBBX4YL2QKGQEUJNS5CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2E31C4B6B
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 03:14:47 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id j21sf46491qtq.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 18:14:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588641286; cv=pass;
        d=google.com; s=arc-20160816;
        b=mpgJ+6X2qYUvlQfTYqzY1ouYUDMXNfiSbCEIjxQTSdqCxbFqT6NzD8zex9f57dfgVC
         Yk2qPf4GIGUteOb43piivnEGNK71Q8i7tJiabQG9c+KFLb4ZFvUoworQEcINIujWuAZX
         SFYRSETnQtXcpQgM5gVhLPWkufiG6KXvNx2FH/mTDyRrvhlwBtythp7b4ZQcJN0rvO0w
         FrjR9UuaYTHRA/pxmx0+3DZdr/OARGlYG4zAhFP2mLcLDR+kpq1j43o/QvJRBve5XQEp
         8FX44Ccu2YWf3k4DVg9ndx0eiZnZ4HYoXvl9Wks2K2AeJeEIA6JaUuogvt71icom71iU
         xpmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=e8MtENYWs/BKuCfQmceiois7ObVSoGt/HG3ueaIqEtE=;
        b=kGs/MNDHGEi+ryhTTSoGJ9g61lm6/89GzkAv+fJ3SWGzdGu1x7LW2DqtRTvTbrzYna
         jQ5gtjbo9n0qY3YSiW9Ka/WWmvnm8zJ7qtFBAmNzwCPP8FnQlKMGl5Mv8QwtWMBaE482
         t0chX3siRQSgYOU2qQ4Ky7QX4ho0S3DCtsuZ60rKX8aIpLaPMMZPk6zt2r823VtA2KTs
         fyCkIwbYk92nUeyV98Cg6j2IU8s0r/RneU8z3XjmE+a/yTNYzzPzbqW3VSbvgPzSlsY6
         xQZyLnUSNqoV5irObXX0n0WRqPzpx1qh8qaETOwlzldnRo1foovYT4zEc+xSWyA4sBa1
         5XVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jesse.brandeburg@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=jesse.brandeburg@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e8MtENYWs/BKuCfQmceiois7ObVSoGt/HG3ueaIqEtE=;
        b=Vm8DEx6YReQpe2Ja+t18/0Kz0rsXEMOcupXDXf/eBEcJOopF6+F4YFiI5THi3knOu7
         rHxrCX5QBH7QA5rnwu2VLJk2qD4CrQZdN58kPvEZ1Qrq3DoD2TPHLW+M6g5M7bIu93K/
         35T6r8WklCB3bpsIeP3UPTaHLHEbbo+8R7iT9VdTZ/XHxaEOXEE2wOa+ncMAYdaSVNfO
         Ny/IYuVkJvRO++9Mt51FCpQCMzy12C2qyMfKZSQrcMm4qsJ168+4noIdAO4wGc8CPfjH
         QqU0T7I4JWn2+/mkoz+8by4SLctG8iGMiZcBAH6TFmEiFwbmGH5iJgmjt2SLtiZ8ckys
         X99w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:in-reply-to:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e8MtENYWs/BKuCfQmceiois7ObVSoGt/HG3ueaIqEtE=;
        b=GhQtJ/agW001ilqVcDeqGkxQpFv3e3VNa83OaXSZAHdWPiLhmO1SkgmjFWuqVqeJjk
         fspbwOW+UobCbwscL2IKq3sNGxz4xOuZE9hOm3xRE4AKVKNdeh7U8q2a1MJj8M4HHBF9
         Ota/MynujqWzNESva0vJLiOQMY+RIGzwBs/Z7KkP285bZCUfqLsIy7sjag9RqVZ752oR
         IRAu+0iqiJH2nryeFU5kbuSDFtEBbXkVy8Tt9lSbW8yFC3OaBCj5t99SiE6OohcH9/Ur
         HbnQcp1OFLGzkt+0/g/DgMx03AjwGb4RNmKk3iGUNp9a4q+yXP0GkgLqjpwa2TOtbY9u
         v29A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PualLzHlaXhvshm+qXeaJLmk1VbgKBKWKAk8RTUR33yW5LbygpYg
	rswGZSwG/aDbfm/qOs47kp4=
X-Google-Smtp-Source: APiQypKd38avBlLdFSmAxwdYBj/q3XtZV7Zu7596cMT8aNpaN4vfmaCM/VCuJSFtXQAE8EAScMDCzg==
X-Received: by 2002:ac8:4e0f:: with SMTP id c15mr192332qtw.211.1588641286610;
        Mon, 04 May 2020 18:14:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2205:: with SMTP id m5ls804245qkh.1.gmail; Mon, 04
 May 2020 18:14:46 -0700 (PDT)
X-Received: by 2002:a37:274a:: with SMTP id n71mr1255585qkn.212.1588641286318;
        Mon, 04 May 2020 18:14:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588641286; cv=none;
        d=google.com; s=arc-20160816;
        b=Kbr5o6mpoUubJs51vex5oslG88H+scPhSezYM0Y2BEeXWBR/z2+sfQ21kYR/MAMMy2
         g2+mVFhPvXSU6EmPKaR6MrLcXBnFbvyXXK2UPqsoo5cTvTbdtQjFliis8SK4p5+O66YM
         y0ATZypX1Mzf4+pju3vYJcSqH4ImeJ8w4XtE0PD8nIDynzPuHa/8Vm5UJSJBjvaMdK54
         sTXu/2HtVMrgVJ4PMPjwLFgkISUGEHfn0Wlw5ww70Geeo2wEiyc3bdv43LwzIj9lWdk2
         bhSaY4pEVGSnkroCOG/viIfkBIHlQeIKtGIGQotuLQa7yegtMo7Z6HFmKG0y9OpvCBeN
         DuhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=y0Al61GtSeOVsvTQc+ZMY5zsN+MPP3BoKQxNz52Re54=;
        b=zbFCBiZvo5nIJPnkVrNSUhyup54SA0DnAnMz5b9OwOHbxEcz350IDSLvYWTBuEk06d
         sSSHhRb3GW+63NXOXHnEVoW52QGaUopmUNj0q06eA0/L5gUnL167/gbYp1+M1ZA4MOcg
         PzKoouMrnLYwpbODR9loLW94u9whBJRexX67wyz+WdsIa+dNJZqQrahsyYd1Nq9APJ4d
         1rxs3abozI3EhlfqUB/3zV5CArV1e+WxDGOGPd2qQByzArnwjHfKFLfgNCowNj575OWc
         gea4QvklYkR1It7eHOaWf60ev2MZQ3FJvTu+6gIjqM0qbAelhnJ+Etwr2oHLkUcTCyCu
         EcRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jesse.brandeburg@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=jesse.brandeburg@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id t5si51582qkb.4.2020.05.04.18.14.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 May 2020 18:14:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of jesse.brandeburg@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: dnZVmnjXR1by3ImSVRuGi/qcN3vXmLRNfkMkt9jpG5hSqSvIsVh9y10dDXzUd9BUPhR8l7JJNT
 O2UgHxqgcRMw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 May 2020 18:14:44 -0700
IronPort-SDR: d26C27YGcupVoq61tsh2NheD8M+GJHRYiT9Ig7OraRIBT6Gx8MS07v/zvYF9nM/0wkC/b02/4Z
 ToYtlv437uHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,354,1583222400"; 
   d="scan'208";a="461205749"
Received: from jbrandeb-mobl2.amr.corp.intel.com (HELO localhost) ([10.251.156.122])
  by fmsmga006.fm.intel.com with ESMTP; 04 May 2020 18:14:43 -0700
Date: Mon, 4 May 2020 18:14:43 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: <clang-built-linux@googlegroups.com>, <andriy.shevchenko@intel.com>,
 <bp@alien8.de>, <dan.j.williams@intel.com>, <linux-kernel@vger.kernel.org>,
 <linux@rasmusvillemoes.dk>, <mingo@redhat.com>, <peterz@infradead.org>,
 <tglx@linutronix.de>, <x86@kernel.org>, <ilie.halip@gmail.com>,
 <natechancellor@gmail.com>
Subject: Re: [PATCH v6 1/2] x86: fix bitops.h warning with a moved cast
Message-ID: <20200504181443.00007a3d@intel.com>
In-Reply-To: <20200504193524.GA221287@google.com>
References: <20200310221747.2848474-1-jesse.brandeburg@intel.com>
	<20200504193524.GA221287@google.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jesse.brandeburg@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jesse.brandeburg@intel.com designates 134.134.136.20
 as permitted sender) smtp.mailfrom=jesse.brandeburg@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Mon, 4 May 2020 12:51:12 -0700
Nick Desaulniers <ndesaulniers@google.com> wrote:

> Sorry for the very late report.  It turns out that if your config
> tickles __builtin_constant_p just right, this now produces invalid
> assembly:
> 
> $ cat foo.c
> long a(long b, long c) {
>   asm("orb\t%1, %0" : "+q"(c): "r"(b));
>   return c;
> }
> $ gcc foo.c
> foo.c: Assembler messages:
> foo.c:2: Error: `%rax' not allowed with `orb'
> 
> The "q" constraint only has meanting on -m32 otherwise is treated as
> "r".
> 
> Since we have the mask (& 0xff), can we drop the `b` suffix from the
> instruction? Or is a revert more appropriate? Or maybe another way to
> skin this cat?

Figures that such a small change can create problems :-( Sorry for the
thrash!

The patches in the link below basically add back the cast, but I'm
interested to see if any others can come up with a better fix that
a) passes the above code generation test
b) still keeps sparse happy
c) passes the test module and the code inspection

If need be I'm OK with a revert of the original patch to fix the issue
in the short term, but it seems to me there must be a way to satisfy
both tools.  We went through several iterations on the way to the final
patch that we might be able to pluck something useful from.

> Link: https://github.com/ClangBuiltLinux/linux/issues/961
> This is blowing up our KernelCI reports.

ASIDE: 
Bummer, how come none of those KernelCI reports are part of
zero-day testing at https://01.org/lkp/documentation/0-day-test-service
I'm interested in your answer but don't want to pollute this thread,
feel free to contact me directly for this one or start a new thread?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200504181443.00007a3d%40intel.com.
