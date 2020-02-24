Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLVY2HZAKGQE5F5Z4UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 171A216B584
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 00:28:48 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id x2sf17747885iog.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 15:28:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582586927; cv=pass;
        d=google.com; s=arc-20160816;
        b=uarzU2vIi48YRkRBCRm+7rSBKIs4nD2Jb6ei5/TD0LTFsMEAjnoIzYg0PdQK6AgSrM
         5fL2BBbRqGvmbZXv3aGdgXHWahmTeguVCnlMME8Qs1N9ikDkXiY8UNfpWCcoZKEdvza0
         WHPPpYVHIx4m7x72Z+g9Z8fU8781fvIQruGCTpi0bcxOtwhPrkrXvTK1q9F6jTAKt9BJ
         IgOQXaCvN8NsL8pLb/FY1bJI8wg2mCQdq0vt5a118RAlXrBd92dTMZdcKgSsZRC8WNES
         PFzFBqLdaBWfXR0OjwNDQfEjCMJYlQikFxeSWNYOzfAWl3CbkYp7jP6I+Wi+9BY2AYXi
         pBfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=CH9zAnb2klH6pZEGqnslOsGZhcW7KK6l0zcTHkSUCXI=;
        b=HgVZZLsZizlukFI6r6HFSCNFRRXi/zZq4bMhJLenTRe7EKvyJATObMzTHktUZgFLUT
         GOns8scVYKBQ5O4AmcPW2SAK5xV3asBcRuxMQlJQuchimgQjd/65FlsxLliux/9qGEDX
         MCyhl6fN5XxxhwCsclkyTxNuW8wvWz4c31TudwamYZ9wAm+tydPVSR31AjTn7L/3T65F
         +1D+ZbdykDUjxmhrZTZIQeNMjb22H/+MwaxJ+bdaf+pcwVr7DOdBFoJuCRzGmeEkt8WI
         8lEefWTTWpkVMldqLMU+FPx+m8/IRzU8GgJDWKg631v0XwMwqdbT4E0u3BsRprzpE3H1
         ASbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i/I735s6";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CH9zAnb2klH6pZEGqnslOsGZhcW7KK6l0zcTHkSUCXI=;
        b=IPqMex+Ww9paNCr7AykDdthdJ0pMoIuNuLasdeQcDkE7CSCIm4mc1eANms67WD2mSy
         hhVZ5DTgK1Z07/SyAkzfEZ8qK5to/kAlJvDcrNExZfggU4qeoQljXPrGhuyQUrY9ajYW
         TWmmrskQt2eH4NiwFER3msxwu23SnPRB/j5rS1nuuTeYLxnaMpBr62gmRR3hELt/PuKv
         frZGCpIxFAf4lG7t9QMu6CEG9kLRWxzpVJAGx04zSoAfdF32cEnrlvLJDsM/NUJNPgkM
         DGMUEbHCUPP/NME7QsJjxqRF5xPWNQlbsjiT+FHai3XUfILEpru1zuO1hDVg5QRRSJvv
         9RIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CH9zAnb2klH6pZEGqnslOsGZhcW7KK6l0zcTHkSUCXI=;
        b=csONVUJ2UF308VJcHjcu+/TTqO2LbVGklesacgcFLtxOJP/wtQZiiZuikvaek4AfcJ
         czKWAXAA9zMxYqis9H0MZWuvwpl+gBk4CVG0wA7OO7WXAFiSYAta26hPC2cNNVUh9wVM
         opDQPhm8VV1Yfah8wqeDUpZkcva9UG7MVrA5F08ZIbMNOM8D+nvjNbHeIHKWtFBUpUCl
         ZvKK9m0pZ1wofk+mvbEkAazjG2PL7fdwe04nEcspKvMvNPRzJx76zOcGQKJ4JJ6VrSEl
         w30/bU0JXHFU+UmwQQatMYEjIgkSzfRWmqwU15RKmJYOZG2MNdvehLx4U6YCnWrrytO4
         tcKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CH9zAnb2klH6pZEGqnslOsGZhcW7KK6l0zcTHkSUCXI=;
        b=IJ9X9z4OADwJYOXx3pOvj2LsoYQS4yFg3gjkn6KZzTU5lN5+qZ9l1iQahI9L51n3Nn
         A8PbxTUErJxdbc6l+jFlDb0II/SdQbi6wYWY6B5sTj5j768KKW5LxpzqwBPAwJ6wvHnP
         nh91ap31QfQr7BGUZQSB1n9iI6PgNtqXxJRhLYO5fCW2RkIjjcav7+JCNU3hvOvid18c
         DYynkyQyJgqnKXStw4PbtmBNKKJ8O69FwgJ4WNrX8/I5dD6cFDLSAbaa7+279yhQHLl2
         qv/p5MLvLPFSdf9Ip9qe7UrGU+3GOI/s5wEZDUzf1BHkx9eLg3ZtYsXwhmjwscHypcBL
         kF5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXmPGtPzHQBkaXOECvuA8QuEJs+xfji6IZoYaJNJ8Szrz/+ifhf
	AnMrhFl3iFss/pRshr9U8TU=
X-Google-Smtp-Source: APXvYqyrrjf46j4GiXfvFVq66vvmp+GjkPnioABQxBs/7sGzqZ3HDm4s+EF8aWngU0SogkOPUIf7Kw==
X-Received: by 2002:a05:6602:2113:: with SMTP id x19mr55864841iox.227.1582586926920;
        Mon, 24 Feb 2020 15:28:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7205:: with SMTP id n5ls1995103ioc.3.gmail; Mon, 24 Feb
 2020 15:28:46 -0800 (PST)
X-Received: by 2002:a6b:f214:: with SMTP id q20mr55469495ioh.137.1582586926547;
        Mon, 24 Feb 2020 15:28:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582586926; cv=none;
        d=google.com; s=arc-20160816;
        b=vTuk2NlYfnqF6wl6UAWYHEGdIqBhQuUDWPnLueVm2PsqOuKWZh4tRN1tBDxi3nOyio
         vkCzOb1sOW8/DomXJnoQeZYtLlMXOrUt2pV/WrrR5/SRIkk6l8D7D1ing2xXLZU7eLX8
         Clcp75ztrXPSLDV4BIjX6SN6SJbbcsWNKaLVa4RvBkEawH3iobaPayz5u36nfr98yCSB
         sdct4YxUs5kCjF8UzquyDXB8RBbIGPT1+wIgNhVF1aAVgQNu8V8nCL/il2/FRL0/LVOY
         51ksYs1gVou+9lka2t4MBVgSfRmrju/dOIbR8olD9fyB4+z4TFGmNOCt8sadu4QNlvKA
         6TRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GAy6f6HwZcvA+vCvtzUtJuDggm1hBgZwofmVHQAmFio=;
        b=sAVJzjf6/ID5T8c6kLu6PIKHLdk2Zbl44Ot8xCptDMblaBFXhDkPRhrw6Z9L91g/MJ
         rvsOuAi67TN/W7LLwuMD+r1MXkg3nrCzKM992Lvj1RZ2JlrKovAPief6/zE5GaXWiGI1
         oBlCOz+TyjrmshiE+5wPybWe7ip0U0veD8OHyoEXt4zAQVRO1K5S3UocZG+l58aXndbe
         UZ9gwXY+CyJruSlDVI0K6duLLqdpVJCNnBHmmCS7/PrFKm9d3K3OhFmWykscqSKKNPw5
         WuQUj3rY2v3M0Slt7ikbTttiKZDuW46jeqLyCrrDiAjovXzv0Fs8Sqj13XsT8DRNAv2A
         CpVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i/I735s6";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id z20si1070897ill.5.2020.02.24.15.28.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 15:28:46 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 66so10381019otd.9
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 15:28:46 -0800 (PST)
X-Received: by 2002:a9d:48d:: with SMTP id 13mr39635978otm.249.1582586926139;
        Mon, 24 Feb 2020 15:28:46 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m185sm4528897oia.26.2020.02.24.15.28.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 24 Feb 2020 15:28:45 -0800 (PST)
Date: Mon, 24 Feb 2020 16:28:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arvind Sankar <nivedita@alum.mit.edu>, m@ubuntu-m2-xlarge-x86
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>, Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH v2 1/2] arch/x86: Use -fno-asynchronous-unwind-tables to
 suppress .eh_frame sections
Message-ID: <20200224232844.GB31729@ubuntu-m2-xlarge-x86>
References: <CAKwvOdn6cxm9EpB7A9kLasttPwLY2csnhqgNAdkJ6_s2DP1-HA@mail.gmail.com>
 <20200224232129.597160-2-nivedita@alum.mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200224232129.597160-2-nivedita@alum.mit.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="i/I735s6";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Feb 24, 2020 at 06:21:28PM -0500, Arvind Sankar wrote:
> While discussing a patch to discard .eh_frame from the compressed
> vmlinux using the linker script, Fangrui Song pointed out [1] that these
> sections shouldn't exist in the first place because arch/x86/Makefile
> uses -fno-asynchronous-unwind-tables.
> 
> It turns out this is because the Makefiles used to build the compressed
> kernel redefine KBUILD_CFLAGS, dropping this flag.
> 
> Add the flag to the Makefile for the compressed kernel, as well as the
> EFI stub Makefile to fix this.
> 
> Also add the flag to boot/Makefile and realmode/rm/Makefile so that the
> kernel's boot code (boot/setup.elf) and realmode trampoline
> (realmode/rm/realmode.elf) won't be compiled with .eh_frame sections,
> since their linker scripts also just discard it.
> 
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-By: Fangrui Song <maskray@google.com>
> [1] https://lore.kernel.org/lkml/20200222185806.ywnqhfqmy67akfsa@google.com/

My previous review conments still stand,

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224232844.GB31729%40ubuntu-m2-xlarge-x86.
