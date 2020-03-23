Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDFU4PZQKGQEBTUUHWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C547318F8E6
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 16:47:25 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id 5sf5086853yba.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 08:47:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584978444; cv=pass;
        d=google.com; s=arc-20160816;
        b=rBWTs8XCXKwoWGcqzLMcnmvtfa7b3/lDhBnDq3/UzuWmhHv/N1aMfwUZPV4TSUMiaB
         V27RqM61dHdzRD3N8S1iQVHJYjR44+vhgQth141hXWOL8DR9tWRU10qzKBxN+lsQ1R79
         4eYsJa5X0lNJtuxLjbXS0ib7gRVSP2ewMHUZuOXsC1eQo/a8++xIcRplU4832Xl89hwW
         vqPUpE76QJStJ4uCYBT6yf63BW9wvHJHWg3h48CDliMmME695NC21HejZcBpS40i8erc
         DRiumbXFTLjr7NDxODoh5Tc5PsHVFw+WaMaue/apxR+vo340+nSgDX/GsOLLrDy5KtmN
         +vUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=RXYC4+LVnBF4h7RZ/yun9QfGsU7GoOuKneSZURGLeFY=;
        b=gaFYMpcdFlXJsVFyDsGui6D7BlNNOca30uKVvihiTiQHzBgUWZB4zhZzW3rpSnLuuX
         bobR1NGF2/At73l/hxfP2793y+xTRrDV2o3ykTqMybdVvLEhPesKy3mS+4NwVnm61N1u
         4Zsyh0IScT2jzRGQ/sJE07s+ZRpNBS6NQ0yNKfODXAsYCjpS+dLxjTNlP/PSMQgMFjW6
         8xFsdbAOY1SIDoD3jLgg23vrg0WFkDnTnE7JUOexsJl/dMGEAKVA1UlkNvfFUUlqjwgh
         zTn0UqcsbWErbIXusVMAY/wVzJ/HRMvOZmyJcKVjaHLyIE1eW1nN8iYA7XLdCzdsV1ZO
         Wjqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZDtoQrdG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RXYC4+LVnBF4h7RZ/yun9QfGsU7GoOuKneSZURGLeFY=;
        b=IFCzNZSe9wMl0fx7OGzzTp7jvhN5wVuFTpaph18iDk6fyk+bYFMONwhocnRFkSDR29
         GhopR2KwP71vXTXMC6WcP1XaHPjLYdKd8O+VGQnSm9rV3H9kY0sjFJs18SYadsOI6UAA
         qEgOcv7hQggwjQ3VwsE9CM/zHxjH/4vL3jIjbGuP1TwFjfVMH8c57At/7AyxCa7AhRCf
         T7Ey9epBZyQmLrq0EnaW0mSM/BzoeRIl7o2YEKzwJnq0p5tNTf8Hd0QedH4HqRqjpHpe
         72ayOGkdebysFO6g3AksIbrhVje9WCjSexoYxpl5NBeBlYmCbW6seaktGO57qYnZCN0s
         p7YQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RXYC4+LVnBF4h7RZ/yun9QfGsU7GoOuKneSZURGLeFY=;
        b=jeyHmI7Yu865r/TvUALODtY0Y+NDavknwqrr0veYqvVv04+DbDLxrJA589CUphiZlq
         gk9ZB4AKqHjl+Se4VOPEUB7+KsVXSfb5e2yn7BFgkdOqgvvR/++O/izVT/vNU1/qTX0V
         cV7Ie31hqpDesmhrYiMmNqUk91t4iWJ7SzCuLZym/xlYEzbW07+avvc7N/vojYY956P5
         jKtFdAUM0zoq+FAQCpVXJt49rLqr0Tb/5HkKAxu6a54T40afi+4cIyNKIBQJc+XRzQYD
         AjfStMnx3Vow7jWnhwVQA/TdXE+WlKLXKGcQvfvDSvc1vry7jSoAibQGaUheFv2MAN3D
         1yKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RXYC4+LVnBF4h7RZ/yun9QfGsU7GoOuKneSZURGLeFY=;
        b=Eonr/SFSTs0BozP1aWRF4arPB1QeICquIl/4YRH5RbPGrcNz2x+KZ26xHs6sJHbch3
         +xAdvJiQJN7iqy2X7e/RSPCMUPvuBsf4M1HWH2H71XMO2Yf82E+YZrLGyijfWkc2KpkA
         ZSCowdjIAybUPt2aX8jQ+tMiPJP7ZxnywVbKuQ3ip+2eSQgStVnShugYHZa1Dlf6XLw+
         Jc2MeCINjirEqq58LjwNQ2aOoFQwG/Wme0kjAiF8QcJtWnrmpi5zsOGKxYmd9DsT5E4o
         9Z4K6EkHF+aRgql+8cOln95Kp7D7pk1VpnTWaC92kRXr9Yi928N+fGw83b1kiRWt2ILc
         oYoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2A8MJrkGAY9avtE+6qoyyw56R4ytK5Fq/hzepK2IhXgGgZ5RpV
	MXUQQbW0wN3dr6EiQGnaOq4=
X-Google-Smtp-Source: ADFU+vtPwKkSbOdzQjj8vznl7u1UZW96X0/J3argzjTkylTG5+MNYHksyH9OYGYCFhTvlFBjkUTI+Q==
X-Received: by 2002:a25:3a01:: with SMTP id h1mr37275438yba.293.1584978444566;
        Mon, 23 Mar 2020 08:47:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:25d4:: with SMTP id l203ls2315226ybl.3.gmail; Mon, 23
 Mar 2020 08:47:24 -0700 (PDT)
X-Received: by 2002:a25:8002:: with SMTP id m2mr34125057ybk.320.1584978444261;
        Mon, 23 Mar 2020 08:47:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584978444; cv=none;
        d=google.com; s=arc-20160816;
        b=Rhklpxfje5FwQkPKKBHxRT5fBTqLcZ9HJ/CXXWoplUilPBAqWwtr0iZlDutYpxI2wy
         SAPHDzg9gtA8uBH4mI0hFFCQJXtoQB4vX1dx1d+H9CGyMC4sWrbUt59nG5AINh+shxZx
         u40RP95duU59TRBdmvh6dnBDlBPqn2yeSsmSYtDV8ufU0clp8fXjOyZfcJ0sKx1eBlNt
         NM1aKdDwMANRd9EbF3Fi4VBfEpP5BaZx4NgqGgKsNYdEsqD81myy5xAZIf6j9p1y9VrF
         t7jdB5o3+pY2/5VUoTPV5nyCILkpihG4kqSKwDAgj2YCqbxPgzT6JP2PgaHqu2D3MT8J
         wGHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cItIuGU2gR6wVLWQZQIQDeYiaP+Gc3FxK48fZM1brJk=;
        b=VjB9Jr3OA6wmuX03FZfMBrsdV4T7CBAWZnsN9mngGdTgXX1IvhsEgILBiTZnN8NGfG
         U5ej0DFKEh4UaDoO3Az+VGv9aULJeeF9GlDYOAg57dmLnomn4T7doWidWsTfnU0VC/va
         0PN7/Ct/RZ00NhXdxpoGPaGeYqH51jA3UM8CP280Of4QgkS+2aTxmVNBGxziV2KaIlzr
         8YvFgLUkli7RxmdW7U+HkuADcQWy7Orb5oUA+Jk7CBjJaR76m8pKSz+HeJ1DEVoQovwS
         Vm6LIZoDvVK5fGEY5tVMcARfuT9FDCtDIbqWE+xV5VQcV98rOdiXQ6rFjDjGCHkRZERS
         fB7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZDtoQrdG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id l1si814149ybt.2.2020.03.23.08.47.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 08:47:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id j16so13856361otl.1
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 08:47:24 -0700 (PDT)
X-Received: by 2002:a05:6830:201a:: with SMTP id e26mr19198262otp.238.1584978443730;
        Mon, 23 Mar 2020 08:47:23 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g5sm5424312oiy.27.2020.03.23.08.47.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 08:47:22 -0700 (PDT)
Date: Mon, 23 Mar 2020 08:47:21 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Clement Courbet <courbet@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH]     x86: Alias memset to __builtin_memset.
Message-ID: <20200323154721.GB40380@ubuntu-m2-xlarge-x86>
References: <20200323114207.222412-1-courbet@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200323114207.222412-1-courbet@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZDtoQrdG;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Mar 23, 2020 at 12:42:06PM +0100, 'Clement Courbet' via Clang Built Linux wrote:
>     Recent compilers know the meaning of builtins (`memset`,
>     `memcpy`, ...) and can replace calls by inline code when
>     deemed better. For example, `memset(p, 0, 4)` will be lowered
>     to a four-byte zero store.
> 
>     When using -ffreestanding (this is the case e.g. building on
>     clang), these optimizations are disabled. This means that **all**
>     memsets, including those with small, constant sizes, will result
>     in an actual call to memset.
> 
>     We have identified several spots where we have high CPU usage
>     because of this. For example, a single one of these memsets is
>     responsible for about 0.3% of our total CPU usage in the kernel.
> 
>     Aliasing `memset` to `__builtin_memset` allows the compiler to
>     perform this optimization even when -ffreestanding is used.
>     There is no change when -ffreestanding is not used.
> 
>     Below is a diff (clang) for `update_sg_lb_stats()`, which
>     includes the aforementionned hot memset:
>         memset(sgs, 0, sizeof(*sgs));
> 
>     Diff:
>         movq %rsi, %rbx        ~~~>  movq $0x0, 0x40(%r8)
>         movq %rdi, %r15        ~~~>  movq $0x0, 0x38(%r8)
>         movl $0x48, %edx       ~~~>  movq $0x0, 0x30(%r8)
>         movq %r8, %rdi         ~~~>  movq $0x0, 0x28(%r8)
>         xorl %esi, %esi        ~~~>  movq $0x0, 0x20(%r8)
>         callq <memset>         ~~~>  movq $0x0, 0x18(%r8)
>                                ~~~>  movq $0x0, 0x10(%r8)
>                                ~~~>  movq $0x0, 0x8(%r8)
>                                ~~~>  movq $0x0, (%r8)
> 
>     In terms of code size, this grows the clang-built kernel a
>     bit (+0.022%):
>     440285512 vmlinux.clang.after
>     440383608 vmlinux.clang.before
> 
> Signed-off-by: Clement Courbet <courbet@google.com>
> ---
>  arch/x86/include/asm/string_64.h | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/x86/include/asm/string_64.h b/arch/x86/include/asm/string_64.h
> index 75314c3dbe47..7073c25aa4a3 100644
> --- a/arch/x86/include/asm/string_64.h
> +++ b/arch/x86/include/asm/string_64.h
> @@ -18,6 +18,15 @@ extern void *__memcpy(void *to, const void *from, size_t len);
>  void *memset(void *s, int c, size_t n);
>  void *__memset(void *s, int c, size_t n);
>  
> +/* Recent compilers can generate much better code for known size and/or
> + * fill values, and will fallback on `memset` if they fail.
> + * We alias `memset` to `__builtin_memset` explicitly to inform the compiler to
> + * perform this optimization even when -ffreestanding is used.
> + */
> +#if (__GNUC__ >= 4)

This ifdef is unnecessary, this will always be true because the minimum
supported GCC version is 4.6 and clang pretends it is 4.2.1. It appears
the Intel compiler will pretend to be whatever whatever GCC version the
host is using (no idea if it is still used by anyone or truly supported
but still worth mentioning) so it would still always be true because of
the GCC 4.6 requirement.

I cannot comment on the validity of the patch even though the reasoning
seems sound to me.

Cheers,
Nathan

> +#define memset(s, c, count) __builtin_memset(s, c, count)
> +#endif
> +
>  #define __HAVE_ARCH_MEMSET16
>  static inline void *memset16(uint16_t *s, uint16_t v, size_t n)
>  {
> @@ -74,6 +83,7 @@ int strcmp(const char *cs, const char *ct);
>  #undef memcpy
>  #define memcpy(dst, src, len) __memcpy(dst, src, len)
>  #define memmove(dst, src, len) __memmove(dst, src, len)
> +#undef memset
>  #define memset(s, c, n) __memset(s, c, n)
>  
>  #ifndef __NO_FORTIFY
> -- 
> 2.25.1.696.g5e7596f4ac-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323154721.GB40380%40ubuntu-m2-xlarge-x86.
