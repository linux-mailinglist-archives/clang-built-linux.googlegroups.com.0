Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7WDST6QKGQESOAUSDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9262A93DD
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 11:14:23 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id g3sf338035vso.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 02:14:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604657662; cv=pass;
        d=google.com; s=arc-20160816;
        b=UwhA928WkxWTqnsp3LRbv+DIVlqrYT0Cz6A+zierSSqJxZseyAQD3mcPGUk9cYtGbJ
         gRbKaPvjieUdf9OeQMyfvC4WXd9z7P8pbo6I/f4uDTPoYmr/EkCWW5GqxJPW72RxBfvn
         xFI2DYf6SFyqcrgtbcYOT1zTafKyG3oKiuyi6bglfR0JqMXahDxDXa98Wxu2Co4jO1/0
         ixzT48jIF0pG650h6OBegicl9/GODU4aEluHbQDe3uFAok7nlcWHks3jImMj+Ub0vaW4
         kLu6un5jbdWy973CS2aMKFRktC+GU785qprOCYP9ZjdTxR+fbn000XnFlKq1tVM2GwVT
         9GGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=12MBqMcizjrn2g+Gn1SrwW/WdJBKfngVPssmvHOmZy4=;
        b=d/sXw1Ctq2schpLlvpoGmWB7KNJwpQbZBy58WXKlkKKn6qsuv73z+uCsnEA/eAyh15
         ZfmEMM56a+B8ZAnssateLXRnPF+b7vrdQdKjCVyin5tbdTi9dy3/U4WZfe0B7cufUcTA
         O0x9wn2JDA2v6/7nHC6Dr10TC6Ycp8lxotTimZEDR4uqI29B4STsINnCnFBGsTe7bCYX
         Hs8pOAW/jcuwBSebDCDiq5J73OC5YovUOne6mn7yVEPjeiNxIjG3DNdzjIWs4PCljBN3
         uFHCQPtKXUFAsE4m3PRMgUgNUNjeGpBIp8WVkpIo3FN8oYLNzn64YBlLycZTZuO9iImZ
         9S1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EI/iO/20";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=12MBqMcizjrn2g+Gn1SrwW/WdJBKfngVPssmvHOmZy4=;
        b=HBZXYgfY9YjpKKKkNNEt6HebgQQf95Pmz4iRnhHa8y8Y8jRsxIdZGQD9qFrg37Y60A
         Td1jiFufKCLeRf9l/sayLKO+azQMhzi19sS55rO6CKvB8pu6J+lyb7vL/jY3OZV1GvbC
         HsR+VsmTQvcVy1hegQcibtfgA8zdSwEK1x1J7tQdZFGptHYsQFvp66UasjRebo2X0oby
         C38rfeh+0JjtzAOO/HWjJvoHZXSRSDiiUoSsPUDhuAVtDYoPW1sHEXo4aSCJswHmrHkc
         l4lC0R2j6EmWpsY/L++MfBi13giZ896zLrVEGMEWhG/mej3pMZA049q9R6vrYHYO2lme
         fTMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=12MBqMcizjrn2g+Gn1SrwW/WdJBKfngVPssmvHOmZy4=;
        b=o1/5YpyRNkmxO8T9cUfpa2c9htfVHYeMCoMAcCjNbjTEpbUGUXKp4mSGuHLvOEkbOp
         VFzOAMePJUXkGZKCB4yg5Y1xTkBV7qzE0rK4eg5yW9EsaUYXOpQ/9lJOBl9neQcBOKv7
         EQcfVAMpaXAoAaWIk8hJ4ZiipFT/mzncnsCZz74VwqGYzbfAGuwezsPL89SnPywxzSct
         pfxRPjyTZ4I8x66aGvq7TKGI2bS0v+ypeRmMuDSj6s0pPNiWwXh+vjV7iZXyyZoQcwpZ
         v6CZb3YbhnBv6gFFWCMdnNB38iGaVO2S7eYX06qMon8W/2mXmNG04bnJAxk6Amjtg+TG
         IfWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=12MBqMcizjrn2g+Gn1SrwW/WdJBKfngVPssmvHOmZy4=;
        b=KCtKd4UkjkMvEShf5qCBhieSj0W7yx0OO6OCtsu58+fpwSCtI6BWrUnPxZS+ePxsWq
         AuNbfwXOPL2lRwaYVoJ1QsDa6tYmRDStHf8YEpmN0ZVIQfp50M1u1sthyQUqBJ0+iis8
         mN85erz+NNP0qojLEfbZf3M/vGYgtE5PJx6fmqk1albLG68qC8DnXrKgP9T3tqHFy1s/
         5QdXtjomlw3oRaoLbBAvNA9EtjM5AR0l0lZXGVHyLakC/GZPIE9gUK0RNKYPoU7qnGj/
         HlFkn6bx8fzKDmcbO/vqSD79xTRMS66DySujDPdiGLFoj26aghaiMk76r/3KVgm5ID7R
         UZpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333R2fjKrYgoyGriETHEYRrzSo7jQc8bCYcpYE2JBVaDYXfqFRC
	T+1jV/bfW4U91SjZbIf082I=
X-Google-Smtp-Source: ABdhPJy3j47o1hLOJkZGxkY5Bw03ZtH+WlDrYMXiHjbdiU9wsKE4ELkQ7ayeL6O+tbgNLbl2qmINVQ==
X-Received: by 2002:a67:f142:: with SMTP id t2mr485701vsm.34.1604657662778;
        Fri, 06 Nov 2020 02:14:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3113:: with SMTP id e19ls46426ual.6.gmail; Fri, 06 Nov
 2020 02:14:22 -0800 (PST)
X-Received: by 2002:ab0:3792:: with SMTP id d18mr349078uav.1.1604657662306;
        Fri, 06 Nov 2020 02:14:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604657662; cv=none;
        d=google.com; s=arc-20160816;
        b=RPpjomzkuUry4h/5DsHDrnu/zrbfy7WE7dFgOLB1TwxCE4NzTObZHlL6n2BApTrlBZ
         Q4QMHdJjxXIJk0Yd2P33lNRPeDW7FHaQidO/yp9fJACq4hynplFVKArakubXsshkWvJ8
         uAkbFahGQz4eQMpyrGv4GSlWUkvW4LN2BfNnQf92RRISLkmOVvUgxenOAQAu8oTq6mw9
         IERDAXCzro6CHNAe9caFcryKlZXLA4KV2t2aYdxy9kpc1MDywsYZpYerxxvqdjnf4cgs
         eaIHRV4Brg9naeUFYIFZqmMQlMsLeoE/i2u5EXSeK0KeWx3voBQkjrs0wo0u5bt5IMMo
         fyww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iOjO/+SmXIjhhMmb/arLW6PNxmPECHhSo5uEUFHznhs=;
        b=1IrGvTxSajMu9k36KRYXjaP0VwWQsRfC6DBNYNilmw3MDyWKPTA2wzlNIglMgziZ+t
         hvGTu4FIzH7vK03Ni10aG1KQIV/XXmG49sHVhVrPUNm353czg8iTQcyJwqqX/Qss34Ad
         UrhLn/DvAt0Amsv7vwvV26kYQc3I7gHSp+t1N6aiS8DtDNs5uvQ34ReNDS9MPvP9hmar
         QRz00tSVOP5LJpkvCgXyqDtkf7wVv4wVs1YDGGRI/XsFwoRSVxNAJ/7h101ROC2KtfjW
         9Qr4viY+IGt859W393rFajRNnkJrjSXzDz5QE2C2q8hfLdNiFZo4IlZEj6ls7oO+w0F1
         2W/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="EI/iO/20";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id n1si73745vsr.2.2020.11.06.02.14.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 02:14:22 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Received: by mail-il1-x141.google.com with SMTP id g7so590210ilr.12
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 02:14:22 -0800 (PST)
X-Received: by 2002:a92:d449:: with SMTP id r9mr809204ilm.276.1604657661703;
        Fri, 06 Nov 2020 02:14:21 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id r16sm557880ioc.45.2020.11.06.02.14.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 02:14:20 -0800 (PST)
Date: Fri, 6 Nov 2020 03:14:19 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com,
	Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
	kernel@collabora.com, Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
Message-ID: <20201106101419.GB3811063@ubuntu-m3-large-x86>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201106051436.2384842-3-adrian.ratiu@collabora.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="EI/iO/20";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

+ Ard, who wrote this code.

On Fri, Nov 06, 2020 at 07:14:36AM +0200, Adrian Ratiu wrote:
> Due to a Clang bug [1] neon autoloop vectorization does not happen or
> happens badly with no gains and considering previous GCC experiences
> which generated unoptimized code which was worse than the default asm
> implementation, it is safer to default clang builds to the known good
> generic implementation.
> 
> The kernel currently supports a minimum Clang version of v10.0.1, see
> commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1").
> 
> When the bug gets eventually fixed, this commit could be reverted or,
> if the minimum clang version bump takes a long time, a warning could
> be added for users to upgrade their compilers like was done for GCC.
> 
> [1] https://bugs.llvm.org/show_bug.cgi?id=40976
> 
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>

Thank you for the patch! We are also tracking this here:

https://github.com/ClangBuiltLinux/linux/issues/496

It was on my TODO to revist getting the warning eliminated, which likely
would have involved a patch like this as well.

I am curious if it is worth revisting or dusting off Arnd's patch in the
LLVM bug tracker first. I have not tried it personally. If that is not a
worthwhile option, I am fine with this for now. It would be nice to try
and get a fix pinned down on the LLVM side at some point but alas,
finite amount of resources and people :(

Should no other options come to fruition from further discussions, you
can carry my tag forward:

Acked-by: Nathan Chancellor <natechancellor@gmail.com>

Hopefully others can comment soon.

> ---
>  arch/arm/include/asm/xor.h | 3 ++-
>  arch/arm/lib/Makefile      | 3 +++
>  arch/arm/lib/xor-neon.c    | 4 ++++
>  3 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/include/asm/xor.h b/arch/arm/include/asm/xor.h
> index aefddec79286..49937dafaa71 100644
> --- a/arch/arm/include/asm/xor.h
> +++ b/arch/arm/include/asm/xor.h
> @@ -141,7 +141,8 @@ static struct xor_block_template xor_block_arm4regs = {
>  		NEON_TEMPLATES;			\
>  	} while (0)
>  
> -#ifdef CONFIG_KERNEL_MODE_NEON
> +/* disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976 */
> +#if defined(CONFIG_KERNEL_MODE_NEON) && !defined(CONFIG_CC_IS_CLANG)
>  
>  extern struct xor_block_template const xor_block_neon_inner;
>  
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index 6d2ba454f25b..53f9e7dd9714 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -43,8 +43,11 @@ endif
>  $(obj)/csumpartialcopy.o:	$(obj)/csumpartialcopygeneric.S
>  $(obj)/csumpartialcopyuser.o:	$(obj)/csumpartialcopygeneric.S
>  
> +# disabled on clang/arm due to https://bugs.llvm.org/show_bug.cgi?id=40976
> +ifndef CONFIG_CC_IS_CLANG
>  ifeq ($(CONFIG_KERNEL_MODE_NEON),y)
>    NEON_FLAGS			:= -march=armv7-a -mfloat-abi=softfp -mfpu=neon
>    CFLAGS_xor-neon.o		+= $(NEON_FLAGS)
>    obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
>  endif
> +endif
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index e1e76186ec23..84c91c48dfa2 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -18,6 +18,10 @@ MODULE_LICENSE("GPL");
>   * Pull in the reference implementations while instructing GCC (through
>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>   * NEON instructions.
> +
> + * On Clang the loop vectorizer is enabled by default, but due to a bug
> + * (https://bugs.llvm.org/show_bug.cgi?id=40976) vectorization is broke
> + * so xor-neon is disabled in favor of the default reg implementations.
>   */
>  #ifdef CONFIG_CC_IS_GCC
>  #pragma GCC optimize "tree-vectorize"
> -- 
> 2.29.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201106101419.GB3811063%40ubuntu-m3-large-x86.
