Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB54B272QKGQEDDVBVDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF511CB8F6
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 22:28:40 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id m6sf10642963pjo.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 13:28:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588969719; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZAWMKZ+xH2+lNLjAZ+sJhdoB+4/HVYKmNnTp5s1MY5WeBbLl8vbSrrzUAAvJXnRTuo
         F4O5K7wEMpKKZT4JQJ6O7F84grUt5phoyQ8iShE9zDgoZzboQ646ig9RmuvMRocpWB/s
         tb+QKUBXnRhK6a2TGBtsDKD3zZDSJn2D4bbpQBMSlRCy+Xk18e8glnQyaw8xCA8ez8ON
         tEbh0AblszOZwj+ZwU4Do4zd+bNrsxAs6wbm8BD7QIkPavScJN7qIOwVHB5RTY1rERCv
         ZB5BiljY9fWTwR1ycQKTTf3euknEiUodPv9VB8DQPYHK9IbUq3Up+6QSz+tOnWNs60sz
         Tpwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=mvsRyxDV55O59ix0W0YpK0jB4Vtd/LwnGq/985nlTQg=;
        b=B5felKIyZb7y2P88hT4jFL6YuXmEJtmZPmgNRKazp6b79TlpazhamjIR80eb3Xo3wt
         cJVkZUj5Ybb7ef7O/ElHEACuMBduBXuAlz8zf6Mleyab8wF9XfbpXeICR5tPIEp+MUPz
         Otz2r8xLr83KHUVgVNrNK3HIsFbpbexUA0iCoTdKgw6mRcUJtuJEb+FT2QNG+9EtH9b6
         T1pO67SFkj0l4QfCwG9lNtMEbwwinyQoBVLV6cKtc8jPrpsBPavErjKbIZoTUfqGSMpd
         uBB+79LD/1zGWSHPCVqVWBTLjRZD1rwkWkK36vsFap5WQoivQJBX0jwfwt7Zidj6y1Y/
         +NyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eyyBQ3kV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mvsRyxDV55O59ix0W0YpK0jB4Vtd/LwnGq/985nlTQg=;
        b=mjLVYVPvlJEVi8ZHtFgRdouI+ANgRgccbtzM5ItjTusPTyOe8F4FbKMHZ1HFiyXzyh
         yQ+2OjQOawf1C80fan30sHM802vB9+rr3kS0j2qJKDMRiLA4ss1ZGHg5Uukui2ds0tZR
         1uyE26O2pQ1GCZAhGekAypHJdmRYC3Bv0qxHw9z3vhR+MZBEGsBOx3fq6Om2L+JRYkdi
         Y++N06GsY8dE6ZJ1OMyA+rcEY9TGf42VKuKTOM8Xvzy0vry148umvqLXRHn+FjrkAIdo
         q7g5eZQeQsBrPUxjmVwCCgO9H4kgXYGvNpo3ShRbfhYkFlyL+OYJt9MaHVu8mDv77rgR
         EPxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mvsRyxDV55O59ix0W0YpK0jB4Vtd/LwnGq/985nlTQg=;
        b=kQmaNboopbVkZl65ZETTDoKfWsuMUh7tTYlYolILSIczJYVeGoUVOY7K6h7Yc1scz+
         cUntlFhnreXv9BGGrnkh8ITFnmKOwhBRqHkh5uFAACe2O/7b5Q0P6ymm+N9+tZLNsKUv
         NFvgYpem9tp+8cWBrGl3SipaiN4MKkdCSqeBQAFC4qes+7odCk50ieWIbvr7lxLqhl38
         m1XnA8lVHs7VsdipwrN6wRJdcyZXmlcgl5q8Soo0vhR/NLZZBuOgpechHSuNmDwa/dM8
         wciQiBJ/35J4mWTkBJj7MNiamKBs5SSJpCcxtrmrbSYKfJml+kWp12F11iPcCe7pluMJ
         gV9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mvsRyxDV55O59ix0W0YpK0jB4Vtd/LwnGq/985nlTQg=;
        b=sQ1YI+rLHzcKEqkawIUCCneVTS6aDt7KzigKVPnrsV2HGSXeBLcRmvJ12OciU9kUgI
         LO63D7WNERJ7ADXKHi0GEkaulcW6whIkXrqqGwtt4u20L4UVCI9tTrmb+yvJKY/AxmUY
         tUBC7lhoWQS96Kta88RY0TRz0qVNxwenDSmLt3c3O1VkW8J1jCdidNftXjfb58FEgrPE
         jykmfCmYeGHNvf/KxEKKPTyuwGO1Sx0hU7nX380+19QKOP/MXByp2Bpej02vdHQegRzJ
         gbPCwYsXJdOVfOGdj1QPgV4Y/hkm6WJfOqXzxJRebx0WhRpHs9zZOe2ezvtVsdf/On5b
         h3QA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubY3oJKc8qdqO9Abx7OcrBYELzDQ86PcWTcWrwS///osPu9uVDO
	iFSM+DjrvhFwzb6e8BFV+hE=
X-Google-Smtp-Source: APiQypJvTvtdxlfNAmhBe8k+9r/HAbHZ3xtkxG/HIPItmolAS6VIzYXyjHPNTzQZhV5KPdWF19y0zA==
X-Received: by 2002:a17:90b:1993:: with SMTP id mv19mr8344815pjb.88.1588969719186;
        Fri, 08 May 2020 13:28:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9117:: with SMTP id 23ls2461898pfh.0.gmail; Fri, 08 May
 2020 13:28:38 -0700 (PDT)
X-Received: by 2002:a63:1608:: with SMTP id w8mr3614974pgl.232.1588969718742;
        Fri, 08 May 2020 13:28:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588969718; cv=none;
        d=google.com; s=arc-20160816;
        b=RpFZ3tdiZ/6RwNgwrrw7beJ2dSixctRlE4Y74GlVVw8COj0w1twi/6WJzWgzk/L1Zl
         hzBtlHFIvQW9hHeObuaeoSZvOmkf5BYLH5cqG+Ds6aisMwHTsZxQKuunmN9bhI/YCE1v
         nrn4RXMwqFp/YnKjixLmofo1AEfLL5mIubFIP0GK+Evbs3FjGN3vjk+pbPVXjHJw8TWM
         9I+SbzEjlycmtfbE0oJPEZUfiBPux4eCWb4pfpSgvTva+fwtG3CbMqgkeIwavwXIltm6
         EK3FTLyi6Nz8Npy55N4t00wrZk4D9V5GP5M7dAs0XuDuwjlMWzJR5CmZDEP7xoHYgilq
         PlxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IyFIhj/81iNIcxew/1W4kf3IkOg+PZK0fC0YxofxM9k=;
        b=wD7HPMCrhUl8qBJKvVnVpx5Tgw7cyIPzSGE30iPUtQGDHGl3csGX1R30JL2CS4MGjJ
         +DK8OOpJKMjst7CH5mYMxIT3sZ3EPbUPz0EpQ88ygWn6chfLHgRRWUjKk+ci8+eJfVqX
         oSd92gdqJprFqLCWCTC7zInd99QkPnWCX1e4TwIZrXAWOC2JtcYX3/pm6Yw6YXcVbYaC
         fk5BMXZbdMp0Ybiy89cd6sPZqttjETcEGkQwuQicjrTSsPs7skCPwmP36ts+MAonH7R9
         IGSTVnRugnirfyZ/GWmgK/aAl/cSgRZSpe9qu7fL8KeKXWBgWQ7Qp/RaXOaz8zozhQs3
         wV7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eyyBQ3kV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id u2si762810pjb.3.2020.05.08.13.28.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 13:28:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id j4so2506114otr.11
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 13:28:38 -0700 (PDT)
X-Received: by 2002:a9d:7990:: with SMTP id h16mr3554812otm.145.1588969717893;
        Fri, 08 May 2020 13:28:37 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n6sm722136oof.35.2020.05.08.13.28.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2020 13:28:37 -0700 (PDT)
Date: Fri, 8 May 2020 13:28:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Jesse Brandeburg <jesse.brandeburg@intel.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	"kernelci . org bot" <bot@kernelci.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Brian Gerst <brgerst@gmail.com>, "H . Peter Anvin" <hpa@zytor.com>,
	Ilie Halip <ilie.halip@gmail.com>, x86@kernel.org,
	Marco Elver <elver@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Daniel Axtens <dja@axtens.net>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v5] x86: bitops: fix build regression
Message-ID: <20200508202835.GA550540@ubuntu-s3-xlarge-x86>
References: <20200508182835.228107-1-ndesaulniers@google.com>
 <20200508183230.229464-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200508183230.229464-1-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eyyBQ3kV;       spf=pass
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

On Fri, May 08, 2020 at 11:32:29AM -0700, Nick Desaulniers wrote:
> This is easily reproducible via CC=clang+CONFIG_STAGING=y+CONFIG_VT6656=m.
> 
> It turns out that if your config tickles __builtin_constant_p via
> differences in choices to inline or not, these statements produce
> invalid assembly:
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
> Use the `%b` "x86 Operand Modifier" to instead force register allocation
> to select a lower-8-bit GPR operand.
> 
> The "q" constraint only has meaning on -m32 otherwise is treated as
> "r". Not all GPRs have low-8-bit aliases for -m32.
> 
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/961
> Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
> Link: https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html#x86Operandmodifiers
> Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> Suggested-by: Brian Gerst <brgerst@gmail.com>
> Suggested-by: H. Peter Anvin <hpa@zytor.com>
> Suggested-by: Ilie Halip <ilie.halip@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com> # build, clang-11

> ---
> Changes V4 -> V5:
> * actually use `%b` in arch_change_bit().
> 
> Changes V3 -> V4:
> * drop (u8) cast from arch_change_bit() as well.
> 
> Changes V2 -> V3:
> * use `%b` "x86 Operand Modifier" instead of bitwise op then cast.
> * reword commit message.
> * add Brian and HPA suggested by tags
> * drop Nathan & Sedat Tested by/reviewed by tags (new patch is different
>   enough).
> * Take over authorship.
> 
> Changes V1 -> V2:
> * change authorship/signed-off-by to Ilie
> * add Nathan's Tested by/reviewed by
> * update commit message slightly with info sent to HPA.
>  arch/x86/include/asm/bitops.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> index b392571c1f1d..35460fef39b8 100644
> --- a/arch/x86/include/asm/bitops.h
> +++ b/arch/x86/include/asm/bitops.h
> @@ -52,9 +52,9 @@ static __always_inline void
>  arch_set_bit(long nr, volatile unsigned long *addr)
>  {
>  	if (__builtin_constant_p(nr)) {
> -		asm volatile(LOCK_PREFIX "orb %1,%0"
> +		asm volatile(LOCK_PREFIX "orb %b1,%0"
>  			: CONST_MASK_ADDR(nr, addr)
> -			: "iq" (CONST_MASK(nr) & 0xff)
> +			: "iq" (CONST_MASK(nr))
>  			: "memory");
>  	} else {
>  		asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
> @@ -72,9 +72,9 @@ static __always_inline void
>  arch_clear_bit(long nr, volatile unsigned long *addr)
>  {
>  	if (__builtin_constant_p(nr)) {
> -		asm volatile(LOCK_PREFIX "andb %1,%0"
> +		asm volatile(LOCK_PREFIX "andb %b1,%0"
>  			: CONST_MASK_ADDR(nr, addr)
> -			: "iq" (CONST_MASK(nr) ^ 0xff));
> +			: "iq" (~CONST_MASK(nr)));
>  	} else {
>  		asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
>  			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");
> @@ -123,9 +123,9 @@ static __always_inline void
>  arch_change_bit(long nr, volatile unsigned long *addr)
>  {
>  	if (__builtin_constant_p(nr)) {
> -		asm volatile(LOCK_PREFIX "xorb %1,%0"
> +		asm volatile(LOCK_PREFIX "xorb %b1,%0"
>  			: CONST_MASK_ADDR(nr, addr)
> -			: "iq" ((u8)CONST_MASK(nr)));
> +			: "iq" (CONST_MASK(nr)));
>  	} else {
>  		asm volatile(LOCK_PREFIX __ASM_SIZE(btc) " %1,%0"
>  			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");
> -- 
> 2.26.2.645.ge9eca65c58-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200508202835.GA550540%40ubuntu-s3-xlarge-x86.
