Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5FAXLWQKGQE6S2ARUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id D698CDFD08
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Oct 2019 07:15:33 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id i25sf9587797qtm.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Oct 2019 22:15:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571721332; cv=pass;
        d=google.com; s=arc-20160816;
        b=D1wiNWopZJW4EhB5ernO1eVT9VNtpONBehoxw9/8dyK6tnC0rwd126PVRhPMNApeIR
         k/I+YY4MHvfvfalRm5rP1vC4Hd20CfAVAjBJJ8Ql9em0sSIaRnx8vfHrGsZfO7KNBh8e
         KTRcJhzBMGorIAOvwnMk6+P+w8xw6mhkW2XJMIhrrvhuYqV1q9QL4G1xj+6NpWSidxvE
         8uHp21FR4jBsGEtOpGIB7kCSDKtLW6tcPCImT2/5qovRmd0/GvBQLVMePXY4eVFcjiJy
         wLeIlIRFovNAeGx8+gm6HYEzOYahpEAxkiYd+zB37COKKvw9MjLjAE8ZyXEw+G7/15+J
         u9/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=lVTKZY/90CqUDLus8DwZkz0Gp/KBKLVn4KY+spSnAJc=;
        b=BcSFxxDSdHdPjmJS68A68PxhrGGdB8mbsJoczCQo+SVA8IYRI0RnEeYV4BezQoVkRF
         E6tcSlKj2yB2/IH9l9948mKKJVWDCouG9qvrygOFzOT44ZFVF0ytfPRJo1/Ds/WaaG+K
         t/4mTYdKYj3qlZShjQCESwP5tuaJ2d0e554mgqry2KPeLOffagqv3CytQ8Q0KFXiMBxL
         DbAzYkYak8+RDA8AZ6Qe3k9D2/x013ZeOsTUZ7v+y8Ne3+I3wF6F82G1hnyj1xzzqP5R
         aroY1LUKdlxNC2XekbWhZ5+RanFswNMpK2U4F481O7Ooijwwu7/tq3YF8gyN48v3D1kv
         6cgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ab/j3x+f";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lVTKZY/90CqUDLus8DwZkz0Gp/KBKLVn4KY+spSnAJc=;
        b=rqMuAjXd6n/w5TvVKhJQdavEZMUehChAenLrzBlt66eQ5Q/iJIFfTkQbElpCd8VTAh
         /vQ2UfcoXynyHGj5YLU5EhJrkTpvC+7NFaF0LHl854YNhPiwF0C0DCJWcRsIzuyYi3h0
         pvy5Kb8zXbqvLnDoW73lN7nYsKNFbRMEBn7bE09VeVPz8PyA/FDovWI9Q2e633kBr1SP
         u8/Vch47lw30zsaFqjKw6m4RAXE/EEVJQ0f75uhQeVCm+DZ/dc8V0YfxIunzxO+TIRhx
         4sA9Y5IrtKyNy4hVBuYi42GSeQ4IOrj1pvLw4LUtlcp6OWjLV0+023euiNT8fDZ5swQq
         lMgg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lVTKZY/90CqUDLus8DwZkz0Gp/KBKLVn4KY+spSnAJc=;
        b=nzhEQoEkvmlkKXWXhKXzUJG+wzIgkRiFwzZcTgu/aUZxLAt8nQzTOOOVb8rySre5D0
         CqdCywAUm8b0Pk23Bmu+Kjh6BF2ANwb1yYcZtyLpf+jFjpYbANpicXyOpdcmlQvMdLKv
         Dpd2lPl/CHlQg6M5Pv6UL4hxEUonNACjsMeLTf9GrqLmMlX+rEtsQpKhX5pxdQrLZK5T
         LSDDDxJtxCss6V2Unqi6eTuAptYu2htizolxqJgoW7yzZpvwXwpDL2ByqxYpIXlSjYiJ
         qmRBLJJSBIjLR9jl2IxncbjXIvp56/RLu0G0sQv57NPL+TtkJ+0ne7r1VhK6DuMWa12A
         BGww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lVTKZY/90CqUDLus8DwZkz0Gp/KBKLVn4KY+spSnAJc=;
        b=Qd/y4SsXI9P78aGn4AsN7NApY3swPCM6Hny2NkMMNy1XWVuQA0icRGIbWhVBquRjGf
         Uud9QVpiSwokcWkORWkv9/xKe2rv26QenyalFHX3XrVo/GOFXNp7q6x1fduOzlO814TS
         O0dGHPd8UbUAiVDk4NA8Hmo3hirE5fjY+AbQyxEtWs7WTqV8oVuj3x820N+ikTd/f1hg
         qXMQ/7HS1pHThr5oD3uJoPycbuK8MbWMt7Rc4gMfLjKe8mEdY0PtO4a4olDV9rvvKgvL
         uXgcseNgaRZBmezhm+oI7x8iQ7/+qypC5whzqfFfeaJQy/a9v06YrNprtwO08I8qbMAP
         7XCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVfI+PmLWcmtl8eqewyBCgPPLMG6+sFd2FJ66PNxCgU7vU76aNv
	8z67c+jq+j4UXQyF+Qo9Jgs=
X-Google-Smtp-Source: APXvYqyGtYcgdo2txcwWc6PuFSn3odfWGAZO7G6CuwvSmsEuMvwLQOEnjPVKXuVooZUFAL6W1Bu8Hg==
X-Received: by 2002:a37:804:: with SMTP id 4mr1377522qki.236.1571721332725;
        Mon, 21 Oct 2019 22:15:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:63d3:: with SMTP id x202ls5106582qkb.8.gmail; Mon, 21
 Oct 2019 22:15:32 -0700 (PDT)
X-Received: by 2002:a05:620a:2f8:: with SMTP id a24mr1335392qko.21.1571721332393;
        Mon, 21 Oct 2019 22:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571721332; cv=none;
        d=google.com; s=arc-20160816;
        b=RjC9XCdsnpdYExEZJdwzlQ+Qt3LjnEbeC8uMArfcwdZiJKwsv/ZUOzLDy+moEiQGd8
         lECKezAdZtowTQ3q5TDHiROnlRzBwxqZeespOYLXO0lvNltaphhrkRGGKET2rjWaiGfE
         rhteM5IkBzq3jE92qpcEl45lRHPthJ5dRjZYYnX3T7bTHFGlTt2ZLcr4abetgcQMuYVV
         L2XQ2Ez3jCp4SuMDEfdF4WJRo7cvkptJHlBpT/C6SYGVApUa7exlKcgCZxYOgYmV+mgv
         6RSML6wUSXGPH60ULhOt+/2Yge0TwlxRObTvqBcl/d2xlVVBntpQgdwyPGGiXt57E/uB
         x0cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=6rY2Wjoe2GHPPcQrTvZ8onLLc/wPWzZXs6sWpQV54Tw=;
        b=k765z+yx8c0gayjmnyHI2zUbCJWftzbpC7Z59zZbYcem6sJypOgQkLRgaM0Bo5M8M+
         DT0lybb9GyRjJM70qh6OAsqCFFMM3Wk9DyO1aHLeSYUGSrAUyxHXqrRRwn0uJIxQ57te
         CfvC8QnoKp9iIFG2r16+Tljy96pVMkZMby1CjbohW/pldYpEuUhMHqZRZU2rynYmt4mq
         bJQeA5Zma8rf+Z75v9bWJmBlDhgw9bdmAf1p1RTiRad8TZWjUoJWN4FLXhRnjivS6Dg2
         oFtfFurjHMjejak0+ziq4Ypo8XTckzZynJtIcjPvYCDD93EVANy32Eu0avJ9VH7DJsav
         m9bA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ab/j3x+f";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id y41si846549qtb.5.2019.10.21.22.15.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2019 22:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id i16so13111358oie.4
        for <clang-built-linux@googlegroups.com>; Mon, 21 Oct 2019 22:15:32 -0700 (PDT)
X-Received: by 2002:a05:6808:b07:: with SMTP id s7mr1288447oij.162.1571721331706;
        Mon, 21 Oct 2019 22:15:31 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id k93sm4869194otc.30.2019.10.21.22.15.30
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 21 Oct 2019 22:15:31 -0700 (PDT)
Date: Mon, 21 Oct 2019 22:15:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 3/3] powerpc/prom_init: Use -ffreestanding to avoid a
 reference to bcmp
Message-ID: <20191022051529.GA44041@ubuntu-m2-xlarge-x86>
References: <20190911182049.77853-1-natechancellor@gmail.com>
 <20191014025101.18567-1-natechancellor@gmail.com>
 <20191014025101.18567-4-natechancellor@gmail.com>
 <20191014093501.GE28442@gate.crashing.org>
 <CAKwvOdmcUT2A9FG0JD9jd0s=gAavRc_h+RLG6O3mBz4P1FfF8w@mail.gmail.com>
 <20191014191141.GK28442@gate.crashing.org>
 <20191018190022.GA1292@ubuntu-m2-xlarge-x86>
 <20191018200210.GR28442@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191018200210.GR28442@gate.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="ab/j3x+f";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Oct 18, 2019 at 03:02:10PM -0500, Segher Boessenkool wrote:
> On Fri, Oct 18, 2019 at 12:00:22PM -0700, Nathan Chancellor wrote:
> > Just as an FYI, there was some more discussion around the availablity
> > and use of bcmp in this LLVM bug which spawned
> > commit 5f074f3e192f ("lib/string.c: implement a basic bcmp").
> > 
> > https://bugs.llvm.org/show_bug.cgi?id=41035#c13
> > 
> > I believe this is the proper solution but I am fine with whatever works,
> > I just want our CI to be green without any out of tree patches again...
> 
> I think the proper solution is for the kernel to *do* use -ffreestanding,
> and then somehow tell the kernel that memcpy etc. are the standard
> functions.  A freestanding GCC already requires memcpy, memmove, memset,
> memcmp, and sometimes abort to exist and do the standard thing; why cannot
> programs then also rely on it to be the standard functions.
> 
> What exact functions are the reason the kernel does not use -ffreestanding?
> Is it just memcpy?  Is more wanted?
> 
> 
> Segher

I think Linus summarized it pretty well here:

https://lore.kernel.org/lkml/CAHk-=wi-epJZfBHDbKKDZ64us7WkF=LpUfhvYBmZSteO8Q0RAg@mail.gmail.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191022051529.GA44041%40ubuntu-m2-xlarge-x86.
