Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB2WR4OCAMGQEADH56YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 36995377D9D
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 10:03:56 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id b17-20020a631b510000b029021559104068sf6009743pgm.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 01:03:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620633834; cv=pass;
        d=google.com; s=arc-20160816;
        b=UNYkW7Np+LdZwCYKT+kSHiLXYlTX6DpWLgJIBV5RHyiuEwswXcu6+W53imRDIKOkwI
         sLUYviyocnGA7XEKpBU3AyQ3udc6HbtFYN18Tx/TJDJZZVxVOZ6Lq9LmgSSTXJZa/8tm
         BuXaPwcdDK91K4LnGj1DdebCDiqAPTQKgDvO3FaaE8nN31IbbvYfehYLNmmb30wUl0LS
         pmMkk+jLbt4w3t2Vcf0yGrquzlY1COvfONV4qYtRFURSRMw91dZL20Yn6wyKl2P25A4p
         OVlSKfMJMxzvlNx8MCmcr1qB/h4qTlhL2lL4abyc6qO7i11xPcQ9fuPlOcdC4NTA8S8B
         lInw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=3NPSLSSkaf7c2r453x1vGyPUiC+K/53m4v/9FjrZHkc=;
        b=0tDfmFKrolZrIHoSUMRFPXevw/2RGxgP1tqldvqvVyTvi8PHCj9pFDMOM3FNTxFHDI
         Xyj9zat3DuSnedS6SVC1eAafj1m8hbwIGruaU6DDERRQ5ozpGBjOL97VRpYQG/kYDt0S
         I6gypQox+cbQJ7rj66blPPS4t7bip6pEoPjdGqA74kUx5nzgxq5f47z76EFHKeJabKUE
         vIKxzy927DOO5hSTb/wcNaJjoBpEGjkuUit0dwFOkxO0JNheVMVPVbDGt1YbuCafevrw
         CvxrudMQr+Lu6jm2mvaRTjCopVcJXki3kmWzwXsqkBs5FaEDJD1BZ/L/1Lv1Bivvcvob
         YMmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=1BOnYO8k;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3NPSLSSkaf7c2r453x1vGyPUiC+K/53m4v/9FjrZHkc=;
        b=AnsRHu1TYWhjOYibM9emjA8ItGIEb4eqySGylIHznh8BhUcOLBjtSSmyaUYs3iwQnx
         CjSR71zvq+BA9Ttim3Mv3IVnxIjtXrfHwHVbcwiqO3BwaTrw47v8T/fTziWZeLJokVoO
         1lZ/VlLbGtikLm7NKxfDCCOPemWVN4CSkSJhaWVL/b5UJsW8wWU8eEE6u6RBOLxLZxFd
         k7HZ94lSNbY2H8mGguvZ94UxWi2JHnIpiGJ9Mmhs1HH3fOrU3Kl0AM9v4m4qNt8wC5Dn
         Am3D9LEvTZ+qhMrTFDei498xM0RNPe8Eq7UgMdKtXD02Q+J1k8RZyGGC7Cc1FuGG2/Ce
         h8IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3NPSLSSkaf7c2r453x1vGyPUiC+K/53m4v/9FjrZHkc=;
        b=YDRbGnentFjZ/0HGubNYX9QOxirFosOZtqjUnzm/qcMra692blsKxP2AqXWL+BstyM
         Wm1QY3+nLyvOhKEa9H+GxME3yVNDig0Q+f56Yb+BV3oYskTMG1eIj0C0lG4TCoy8HMzn
         du1+Ajzme1KPIUDTDcmx/42pYNaAEY62tmGkOJ/xyxg3JDWJ5AZFNrY5f2lF6BhCqDaB
         CvPho0/ijPddH8hB8P5f92lux6AF69kHZOFYZTWB49k9qc1ybXv5GxcYljvMk082A9I5
         YKuAAjKF4Hr0FktIZl6znAFoIo6xHM0VX3GHCNWIwKvs4Bkceko20jG2xhk8/POtwCqb
         YZcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bHtyH1kASNbXgQYkRKecMnHlZOsKf8YbGMyFXESlt6L5zoGEq
	KrDNhocewXQcncwgfOZZXCk=
X-Google-Smtp-Source: ABdhPJyQ/LFP+O7tHto7nvW59Y+TjUov4rUudJYq2xNQVu9wFJihR3XtFTDp52vaZGscHwUCfihjfQ==
X-Received: by 2002:a63:9d48:: with SMTP id i69mr23867821pgd.297.1620633834648;
        Mon, 10 May 2021 01:03:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f48e:: with SMTP id bx14ls8219695pjb.2.gmail; Mon,
 10 May 2021 01:03:54 -0700 (PDT)
X-Received: by 2002:a17:90a:6309:: with SMTP id e9mr12113726pjj.20.1620633834013;
        Mon, 10 May 2021 01:03:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620633834; cv=none;
        d=google.com; s=arc-20160816;
        b=UsgFmTptf4LX5wEjzeb4lHrb6BlqYJg5/0aYGXL18wlayJQ78sggxqEGpR+GcuQleN
         1lzpFLkqzCwtv1sHMtMwFQ5UHzucXCPQRY2i3fd5gWZj9GhGiXwbteumGC2ybUgOWRy9
         QrSNUzOfIcefuimWstlJo+5+pgAGXE5QgID5FMXNWBwe1cmvQHgtMlh0RMo/jkX5Qlsa
         J1YJOd4OsBqpgJjULzFlYF7PkxNhE1u6PTleq2k55R9XByUkt6Eu1pR1c7jDXMuKVLp/
         ZTTdwo4y9f65z/cI+8REh7Z+MzmFbc3gaqBuLTdhydwyIJeMMXGKbL9e9SI7qwffDBNu
         ED0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+rMRqhlav8PSD3WGfNcjzlbBvkCmhpW6OzLvC2706gY=;
        b=U8z4NXQnPH6VhKmui0f8E6cZPAj435N+liQCdIlrPZ+Ou4jvgh1f7rgtvPZUCLaBoq
         iUc3rG+RYe/SSa5aEGrYm8H4WTfROpNTkvAnacXKrWg33xPSQ7j5cxfknxkAo077Z3Qd
         XdUZV3/zTy79/7G12spUbu1Zom/G+Vn8MIfDG20pX8fpQMFm2quYgSHrOQ0OLw2uRP7F
         aR/kveIbQ6yHqoUrGSK0JdROB1RT3oiYEI3ArjMNs/PcNfU6wlWRuT63TEbQCpUuxeyl
         BsQvG8sUvQabzDwzAaiMwZY/mdy65B6+Von1VssDeXz90T1fMWmuJ+Z/9UviNUWevUgs
         No7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=1BOnYO8k;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q59si315489pjh.0.2021.05.10.01.03.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 01:03:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D41DD61108;
	Mon, 10 May 2021 08:03:52 +0000 (UTC)
Date: Mon, 10 May 2021 10:03:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Jian Cai <jiancai@google.com>, sashal@kernel.org, will@kernel.org,
	catalin.marinas@arm.com, stable@vger.kernel.org,
	ndesaulniers@google.com, manojgupta@google.com, llozano@google.com,
	clang-built-linux@googlegroups.com,
	Will Deacon <will.deacon@arm.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4.19 ONLY v4] arm64: vdso: remove commas between macro
 name and arguments
Message-ID: <YJjo5xRF9zZnVouN@kroah.com>
References: <20210506012508.3822221-1-jiancai@google.com>
 <fd08dce2-71c0-3414-d661-d065480c04ff@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <fd08dce2-71c0-3414-d661-d065480c04ff@kernel.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=1BOnYO8k;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, May 06, 2021 at 10:43:33AM -0700, Nathan Chancellor wrote:
> On 5/5/2021 6:25 PM, Jian Cai wrote:
> > LLVM's integrated assembler appears to assume an argument with default
> > value is passed whenever it sees a comma right after the macro name.
> > It will be fine if the number of following arguments is one less than
> > the number of parameters specified in the macro definition. Otherwise,
> > it fails. For example, the following code works:
> > 
> > $ cat foo.s
> > .macro  foo arg1=2, arg2=4
> >          ldr r0, [r1, #\arg1]
> >          ldr r0, [r1, #\arg2]
> > .endm
> > 
> > foo, arg2=8
> > 
> > $ llvm-mc -triple=armv7a -filetype=obj foo.s -o ias.o
> > arm-linux-gnueabihf-objdump -dr ias.o
> > 
> > ias.o:     file format elf32-littlearm
> > 
> > Disassembly of section .text:
> > 
> > 00000000 <.text>:
> >     0: e5910001 ldr r0, [r1, #2]
> >     4: e5910003 ldr r0, [r1, #8]
> > 
> > While the the following code would fail:
> > 
> > $ cat foo.s
> > .macro  foo arg1=2, arg2=4
> >          ldr r0, [r1, #\arg1]
> >          ldr r0, [r1, #\arg2]
> > .endm
> > 
> > foo, arg1=2, arg2=8
> > 
> > $ llvm-mc -triple=armv7a -filetype=obj foo.s -o ias.o
> > foo.s:6:14: error: too many positional arguments
> > foo, arg1=2, arg2=8
> > 
> > This causes build failures as follows:
> > 
> > arch/arm64/kernel/vdso/gettimeofday.S:230:24: error: too many positional
> > arguments
> >   clock_gettime_return, shift=1
> >                         ^
> > arch/arm64/kernel/vdso/gettimeofday.S:253:24: error: too many positional
> > arguments
> >   clock_gettime_return, shift=1
> >                         ^
> > arch/arm64/kernel/vdso/gettimeofday.S:274:24: error: too many positional
> > arguments
> >   clock_gettime_return, shift=1
> > 
> > This error is not in mainline because commit 28b1a824a4f4 ("arm64: vdso:
> > Substitute gettimeofday() with C implementation") rewrote this assembler
> > file in C as part of a 25 patch series that is unsuitable for stable.
> > Just remove the comma in the clock_gettime_return invocations in 4.19 so
> > that GNU as and LLVM's integrated assembler work the same.
> > 
> > Link:
> > https://github.com/ClangBuiltLinux/linux/issues/1349
> > 
> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > Signed-off-by: Jian Cai <jiancai@google.com>
> 
> Thanks for the updated example and explanation, this looks good to me now.
> 
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>

Now queued up, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJjo5xRF9zZnVouN%40kroah.com.
