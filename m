Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFX7TLVQKGQEZS4PIIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 917E9A0901
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 19:53:26 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id x1sf47934lfq.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 10:53:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567014806; cv=pass;
        d=google.com; s=arc-20160816;
        b=DCikg9R5Zd9l4PgjOCjG080L3JiUQpbKplfKGm09SQKLNOaBTTTmB2C3Z/cFqwvyP4
         yMiZRca8ExQFK9IOrJi2ivQNlgXLgP1YGFTogNjJE/pP4sv9glFByPGfPOPomLROTuR0
         kibKjNnllY++HE17fTUH6scr95tnfdrE1CFsM9cjvwztI9+xJNYPwbs2Bctv4Pm1gcrN
         v4/bHYmzRqyNMtik+Nfrw8u+IThcNpMBZVB5AAIFB3wr76h3iMZfI3KKCO2QolfVLyZh
         vUbC5zI3SYfzIMinJ6msErYPmfMmPuoS8dETzhPLinyzM/Iq+MnHIwUdbhIdEgwRlW1F
         G6hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=qNKAjv71D/eXRj6AYciIv4tdscPoyaVqFUt+G0j6uAI=;
        b=VxDT2vOuLsqjqeMUoU1Zw6spOUEUkJ7DCrdmeot0K9xYO2/rR6alTa7Ggj7BtWZEB+
         yXUrmncFjXUc18/8NJslquH2olN+a0ksTC4QzW4rAGRN9K/S2iRExtfbTq4WInGgtUbT
         FzRq8LM9TyR+yQSDAprWD1wHJpSzMO5P5qsCs4PoPdZMv+uU3cqWEh1cC6g/A0Tt2sQj
         nXBbCTVjRL6p/pt3Vv9lRuM9AavPLHvubDHKeHFTAfYuD+vvO+lqxihWnsjG9xPLTV0r
         5Y6+QLRkwAVe7vXatQgMNnN4Liop51LhasyOYyfgnrVNkOf1NUjCJ8cNhBkQHfse6ULs
         4+lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gkbV6uEU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qNKAjv71D/eXRj6AYciIv4tdscPoyaVqFUt+G0j6uAI=;
        b=pw+aMR1AKCHJGvaVb8HJmIkkKyJNtdwMC7+V2DBukJXBBbT/hiP2PtVOp0mPA6CTs3
         tzi3WekZb0oD8UvuF5wMSdJJLMQDGFzCBIEDj65NR/GgYMN6mU5SsYX0ixp4GJLpo6Lw
         67AVN6BKerH/yKfFXm3dBrTZc7GNbv6OAq/m84j7EuKlP63fl9M9EvqUp+MPHp/WoQai
         MOezhufHWkwCIBUF3qYh1w5TQsKV1hFaXltwYYadPXPuQxKd4ds9tEoAUKmEITxq+7cl
         IrAVX702G4JFDWhUnwL12eHmkhnq3qfweEWTDj33Dhu31LM7Fai4gS7EvkJiN7VWNWX7
         QmLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qNKAjv71D/eXRj6AYciIv4tdscPoyaVqFUt+G0j6uAI=;
        b=aD8gk3gYdKn9ZN/pAjeLxsjuqkuNPjWt0wnSO7F2Zz4Ky3aeGUrQso0q9BQCviIjG+
         OROKxxqMaCBADkfzH1cpYqq3LeKJsSyCU9hYUbT7N+JrqGKNMpe4AtZRo0uVm9KkWARN
         9Nrgh2zKhxAgo/LKjyj8bO8YWa2/VRMGkO/X1ftf0A3LJRomV2dRj7jgcyQiXQk5FyWX
         xqO1qsSmAfQqH2glBr7JXBzypXoU85+X1yx4xFMvyGsb9Ue+q0YsqwILKSSXxSdoff65
         oDHLQvUDlnVvj7XVN6JimcoCvfJnzbjBB+Abw7FwNkcSZvcS8Jx9j6NrVlnNm2UjPLAQ
         Q9tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qNKAjv71D/eXRj6AYciIv4tdscPoyaVqFUt+G0j6uAI=;
        b=qY3htiSMcy+7W4p/JsWWehElyXrsu+876Rs/IqzAeA/67S5N/EQHXNGKpvWnUGz5l+
         Ijo0thtulzHwHlqwHWjkhd9UKXKPDV13lJrRrQCLTwrLvZNMmRf5hEooLezrxkJv4bwU
         uA4W5KXxnsOtsA84aPiTmdAIW/RkkFv+oTcR0mtRfP+LUUew4XCM8GsOq9+RB0POhQek
         rgf0O0TFO2RFY06sWerUch6f46F60p/R/6v/smbYuTXnU7abd1DidWIzHM9flU2LQ6n2
         hwCFdZpvhk0SVfI9ijTixkea0M/rhZSFg87dogJnoLchA2CM1QZ7Zc4VrLly1wYle40Q
         MVJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVM37s5LxqGOI68M53cfW97rmbGz4ZXGyVISmr8j4a1ruxL0Nyl
	cLzI/xlxZBXs0tPQWQtl3Iw=
X-Google-Smtp-Source: APXvYqxbdGWKFsvhZBQCKGD3+fZsW0X+KmMArtJrHa4AGVaqq2VHW7aL9CMT8TATKRSAbhhXxcgNZg==
X-Received: by 2002:a19:6041:: with SMTP id p1mr3378693lfk.6.1567014806141;
        Wed, 28 Aug 2019 10:53:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:8c0c:: with SMTP id o12ls389179lfd.12.gmail; Wed, 28 Aug
 2019 10:53:25 -0700 (PDT)
X-Received: by 2002:a19:5215:: with SMTP id m21mr1150847lfb.89.1567014805605;
        Wed, 28 Aug 2019 10:53:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567014805; cv=none;
        d=google.com; s=arc-20160816;
        b=Z3ihoQjKIHo3bbZs7XmvGjGJ+98mjAS3/wDPjV5Q3xBYHv5QrroAG8DBJ2z01mWJeP
         Q/djOLqH7wcLVFMp45CpxaarB3Ncba146h5OSggk34oynFB2eqSgH/UoOs5IxHDU06mO
         e4MU9h8/Fa2m8B0RXp1T6SLLlIKsHmp7cPOsKAmDDYo+k0SIKtZnA7deqqdooKhNNPTq
         ZQ8niihJH8PoA6dsQjC8ddbluxiBchGAyN2ZOUN2JS0FYqoszUNaWcjr0QcXW0LHWx7y
         4s6Wf/t72oQ85fSYd/1/SfVY0EumxcnjepaUdOLsx0TXbIG4yfYeempSvzBsq1PrfWwu
         yUIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ctwr+81XjxtZjBI+RKeebPhdkGvaIWpze3WikDHHYro=;
        b=M96HtbWFBI3Kd61eYJENCABwN2GNKvy6e3x5uTg/OZxmX1X7yYNikQE2AJP0UH2aJw
         hFMR/Gk4hIa7rCMuR7JKNvqQWfaEhXDc84oEwR1ypQEtEuAe87xe9FXXgHwdZpJ84Jwf
         jKqilqFEyNnoVaUwqfbjdSdfzaWZhHam0ul/G8M3KNTebF3Wu/lrA7+FUDi0khYOZUnJ
         4PthctfgnAEIHwz6j6ljZ0e6dUpvp66+gvPK0sPHeR56ZuHuXcRBGQZC99HXXDMtPovK
         ouIt2sRdXXrUKZP3MvIyf4bUxu5fsG4kg1I7TfozckKqwtie4x+hfsdu3waab9adgWwZ
         ut/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gkbV6uEU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id d23si137479ljo.5.2019.08.28.10.53.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 10:53:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id j16so675389wrr.8
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 10:53:25 -0700 (PDT)
X-Received: by 2002:adf:c803:: with SMTP id d3mr6529921wrh.130.1567014804807;
        Wed, 28 Aug 2019 10:53:24 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id w8sm10456031wmc.1.2019.08.28.10.53.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 10:53:23 -0700 (PDT)
Date: Wed, 28 Aug 2019 10:53:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Message-ID: <20190828175322.GA121833@archlinux-threadripper>
References: <20190812023214.107817-1-natechancellor@gmail.com>
 <878srdv206.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <878srdv206.fsf@mpe.ellerman.id.au>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gkbV6uEU;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Aug 28, 2019 at 11:43:53PM +1000, Michael Ellerman wrote:
> Nathan Chancellor <natechancellor@gmail.com> writes:
> 
> > Commit aea447141c7e ("powerpc: Disable -Wbuiltin-requires-header when
> > setjmp is used") disabled -Wbuiltin-requires-header because of a warning
> > about the setjmp and longjmp declarations.
> >
> > r367387 in clang added another diagnostic around this, complaining that
> > there is no jmp_buf declaration.
> >
> > In file included from ../arch/powerpc/xmon/xmon.c:47:
> > ../arch/powerpc/include/asm/setjmp.h:10:13: error: declaration of
> > built-in function 'setjmp' requires the declaration of the 'jmp_buf'
> > type, commonly provided in the header <setjmp.h>.
> > [-Werror,-Wincomplete-setjmp-declaration]
> > extern long setjmp(long *);
> >             ^
> > ../arch/powerpc/include/asm/setjmp.h:11:13: error: declaration of
> > built-in function 'longjmp' requires the declaration of the 'jmp_buf'
> > type, commonly provided in the header <setjmp.h>.
> > [-Werror,-Wincomplete-setjmp-declaration]
> > extern void longjmp(long *, long);
> >             ^
> > 2 errors generated.
> >
> > Take the same approach as the above commit by disabling the warning for
> > the same reason, we provide our own longjmp/setjmp function.
> >
> > Cc: stable@vger.kernel.org # 4.19+
> > Link: https://github.com/ClangBuiltLinux/linux/issues/625
> > Link: https://github.com/llvm/llvm-project/commit/3be25e79477db2d31ac46493d97eca8c20592b07
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >
> > It may be worth using -fno-builtin-setjmp and -fno-builtin-longjmp
> > instead as it makes it clear to clang that we are not using the builtin
> > longjmp and setjmp functions, which I think is why these warnings are
> > appearing (at least according to the commit that introduced this waring).
> >
> > Sample patch:
> > https://github.com/ClangBuiltLinux/linux/issues/625#issuecomment-519251372
> 
> Couldn't we just add those flags to CFLAGS for the whole kernel? Rather
> than making them per-file.

Yes, I don't think this would be unreasonable. Are you referring to the
cc-disable-warning flags or the -fno-builtin flags? I personally think
the -fno-builtin flags convey to clang what the kernel is intending to
do better than disabling the warnings outright.

> I mean there's no kernel code that wants to use clang's builtin
> setjmp/longjmp implementation at all right?
> 
> cheers

I did a quick search of the tree and it looks like powerpc and x86/um
are the only architectures that do anything with setjmp/longjmp. x86/um
avoids this by using a define flag to change setjmp to kernel_setjmp:

arch/um/Makefile: -Dlongjmp=kernel_longjmp -Dsetjmp=kernel_setjmp \

Seems like adding those flags should be safe.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190828175322.GA121833%40archlinux-threadripper.
