Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBUPN3T7QKGQELBRK3DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4D92ED448
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 17:29:05 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id b8sf2850274wrv.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 08:29:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610036945; cv=pass;
        d=google.com; s=arc-20160816;
        b=wsDG7pQe5frZtGeUIq48lNZ4kW4jBnc8Mu8cIriMvqtvj5JilvMbMzLdoqt0AcZQc8
         SsHy66eN91iLvGodhDFGzMYaMNBRjMM4NsUkAzDezDYHF9N5spxbzAbj3tHSboFDu8u2
         6t7H2cnK3DdqfVmKhuEIrpctsBmja7KYdVVgnAQJyfoghrnD1jBuXSpPy9PXnvQWbZw8
         a3i3vsw48T+PzHYj5t7PCL9c82xLKhhPTTSPBMqKcEbLBEVccXthDhPArkfjDx2ijGtr
         yDLB6sTyIaIvj0/RWUogVSiez8vdVbCBzlkDxP2r2SqzhnvC7ABt/XqutV3UJOvpgpCW
         tmgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=bKOvM4zKEN9gcCghY0uSQFvPMPUvOwQq7W6gmDsKQko=;
        b=jkWHvaeTIxhexXeqD8M337j39JjQ/q1GIjRMB8a2FPXISmuOMcdMG4ZWTeCQI9UO5r
         /XgbrMb/ye3TSnVo8E7qsw+A0N2FiiaJygyDhGNgzQUcS9q+v7xNRFfxRcOGOvDvy9ie
         U3wn2OyqZn4IlVUDrya/S5fFpuVAZ6310Z5Ysjy3maxj1gEAJx2Adj645PNNhCwmOGiG
         4ZdkbMQXVjXcPJnL+11ZcF8xHDV7OGa+HvB2CKRaJN0hbOK/GOgW/uvMHUhe1DwZv4Li
         z8d2FMG49GyUw6BGgWAvnD6BHrbNjcOPQv1GZnAoakNU2YDcxb3XCcPhsKPtENuEHQR0
         K96w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bKOvM4zKEN9gcCghY0uSQFvPMPUvOwQq7W6gmDsKQko=;
        b=tH5sNxxGwKsDMtnDJWO1v6q7JNJxWBp0jd/Rgnof1kosdcsZ026y4pFj299geLImn+
         woo47uRtyOCMbcaTnUM3UqK/TYwsyV+Qtk6KgEOuH6VRnzG5e8uKaQRf+zdPN+GlZHRS
         Y2olbGG0q5LcZF19ncg8NPLa8A6IkvolvShRxjxVfn7ErcMo+4ajQlHpy8rO8tXgbrUx
         RQKwLlvGlYWO/H3CVgMj6E5fE13E8UCGkG40wzFbcj8pAgCyghOHBNNufkM2y4asibwv
         FHvXwIXG2hBmtHuRuQSzc8D5RNrFI+5SiurkUi6i8CEWbXteGvjf42vTQkEUaoMk4QqX
         zWAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bKOvM4zKEN9gcCghY0uSQFvPMPUvOwQq7W6gmDsKQko=;
        b=UyZ7NBT0+jygTNe5woDX7EJ4ak6DlMN6P4g+CZO8x8yKrxSRnkq2hP+wSm8w8S++/q
         OYAV7AkknC8WntnqAcV3RA/+0PlCXOZEYcI+3kAwq1HsN6VwQTwbZYS82bZGLLX0URNE
         3aKCdokz9rEXcXXLZW5Z7wiDY+bu2VDzN+0FpoG+c4YZgEj1kE7XZLGdjFJ4DOBdqDnN
         PO7vN4DLur/TMG+z43+BO/61xRh0YPesEKB63LgLXKJsvaCMEQplBjv5qJpcb4cveyye
         HktFF7L7CR2ezr0bMxCYvxFiLoZHr5fDBm2yf3aqshVBBGh3Kc36fm5ffDwM2hWXBGBg
         3Piw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532onLYLv9sWZlHD/F2lH3tSXRuyCrrJ/dGwSW/v1+d1QLTVZjHV
	3UeR0NDIMM0wWYWx2BXQ9NM=
X-Google-Smtp-Source: ABdhPJw+fB/+1mYusXf4E+6QjNwl4WfaH49AIWYgfmXctgmKPDVDGrQzRuOKrbWPhNmX0jOKZMbg+w==
X-Received: by 2002:a1c:2b46:: with SMTP id r67mr8678305wmr.162.1610036945666;
        Thu, 07 Jan 2021 08:29:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cbd5:: with SMTP id n21ls3355181wmi.3.gmail; Thu, 07 Jan
 2021 08:29:04 -0800 (PST)
X-Received: by 2002:a05:600c:214a:: with SMTP id v10mr8553865wml.138.1610036944844;
        Thu, 07 Jan 2021 08:29:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610036944; cv=none;
        d=google.com; s=arc-20160816;
        b=YmeCyFFSdwWSEpgl3ywFlBVN7p6TNeRmw4fRXMsxcgHMOx7MpIRlujdF1Nww5kR+MA
         xRdscDhfhEpwn8KChDtg/WUXWbtv/AeWqhfr5/obR2ffLUSe0zURRwm/CBzeBAFoNN5p
         GJijHLJxceEWtFQaiRdpo25GPZKdvCCZYQ4psHv1B1oMoefVFSBvR05hyDmPCczopOgj
         TSZlimOTcos1iUpOpGJpQhT3EfFpz2sB1+Ad6iPwO3+rCsGLF+FNdHjzfbVDK8tRboGx
         nsOygni2aZsSqFGBM4b3jAGHJG0AKOjr07y6YVFxcm+bvdOaSo9g3p8i+WJ9r746zAJX
         0gbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=n6y0zgDDEAY8n0dahtb+m1cFcPMDcfwpEkBr85S6X5g=;
        b=IkCGWj2kJv99CxI2YZ+HpCYSr74HudfRjhDmwWAoHiu+DxGHtMm2bCkbU9p9+C0Asu
         E7hidcu9pKcxVMJW+UfiG3z/YQOAILlzE5ml0RLtj6sn6hAV6qKX2Jq3pEksh3AraLl+
         HRE0ckKLADtrhYlEpKBz68h92abqcobatiLH6GGbzE1Dt8pHFOvLzPbjHbg64Uxhe8Eu
         yb/dCcsAbZH4FGq86HACGz6/dy9qhIaDe0BL/sP4sMle+K/B4EuM8joVvzljFz//ZYC1
         hQCTGj2EuUimZxqjw1XGiZlcqnejjzvALAqIG+q2eE8DQWKwvW/1/aNbltmbCIeB0vR/
         ZcRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id d2si200767wrc.2.2021.01.07.08.29.04
        for <clang-built-linux@googlegroups.com>;
        Thu, 07 Jan 2021 08:29:04 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1kxY9o-0000Mi-02; Thu, 07 Jan 2021 17:29:04 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 4A2ECC080E; Thu,  7 Jan 2021 17:26:58 +0100 (CET)
Date: Thu, 7 Jan 2021 17:26:58 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
	John Crispin <john@phrozen.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] MIPS: Use address-of operator on section symbols
Message-ID: <20210107162658.GC11882@alpha.franken.de>
References: <20210105201827.51766-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210105201827.51766-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Tue, Jan 05, 2021 at 01:18:27PM -0700, Nathan Chancellor wrote:
> When building xway_defconfig with clang:
> 
> arch/mips/lantiq/prom.c:82:23: error: array comparison always evaluates
> to true [-Werror,-Wtautological-compare]
>         else if (__dtb_start != __dtb_end)
>                              ^
> 1 error generated.
> 
> These are not true arrays, they are linker defined symbols, which are
> just addresses. Using the address of operator silences the warning
> and does not change the resulting assembly with either clang/ld.lld
> or gcc/ld (tested with diff + objdump -Dr). Do the same thing across
> the entire MIPS subsystem to ensure there are no more warnings around
> this type of comparison.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1232
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/mips/bmips/setup.c          | 2 +-
>  arch/mips/lantiq/prom.c          | 2 +-
>  arch/mips/pic32/pic32mzda/init.c | 2 +-
>  arch/mips/ralink/of.c            | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)

applied to mips-next.

Thomas.

-- 
Crap can work. Given enough thrust pigs will fly, but it's not necessarily a
good idea.                                                [ RFC1925, 2.3 ]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107162658.GC11882%40alpha.franken.de.
