Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQGQ7OCAMGQEQCYKTRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id BFDDC3812AD
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 23:14:41 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id z18-20020a0568301292b02902dc88381e4dsf236642otp.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 14:14:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621026880; cv=pass;
        d=google.com; s=arc-20160816;
        b=AO/x0LB2fVmRRn4cqKAFUar9JAQomyjTEDRLd6v9RyarJR+swbLRDYpKFPX54PaAVQ
         1qzSmdTQZmc1m/4Rs3C/myYqrYPzMlkNUZk++DWb7HSySGFGqqiQ8GMyo7iLbkhPDoA7
         j9dYn083xxyLH7FTTPRWTxgGFbFE414a6WyhnWffXevCoVK0yt/7aWSsht7xb2HR2xZj
         /3WEhf01pqlBA4hR0we9tjHwrbNzL0ttXgEksbNwztsXOaxo+t2VZKuudAsd/ITi5TJA
         HX0b+2RRDN40A0orjklVKVWw6BhO5p9BNWDcIHio2IAhGa1gj5z/nAx7eBuSdP6lSp9B
         noPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=RAPHlagAmHG0cK0RxoPmAOTS9wOs5aSd8s3kKRcFGCk=;
        b=N4rtMl6PBf5ndxWIlOJ2t9T+59cziF2cNwQFVEXT716Gp8zGiZQiqAhlHFMMT6XwKj
         xmxkJnp5nmUzE2j/hSKsXPhCtLlI7q8cYk5zIVr5IwiSB1nD2EXyKCSejP0TG/AkD4GW
         G0x8M52EgXgPenxzop+TdQ4ux12juWGfyFDc7ceN90+TN48M5++ah9cCdG9Pf4Z/5Uhn
         QuY7fsOf8Wto4ne2T5j+FEdvt5frQnXHA9vbZHV3RJiyeBU2/YlvN4kkmJ7dYzk0GBcV
         dhEIiAPdd8Bmz/6dEIQwecXsuoJBPaCGz5oHQfw0vBn0IvcTBDiQH4dJX6nLZGw2g4bA
         VadQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I8aARS9L;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RAPHlagAmHG0cK0RxoPmAOTS9wOs5aSd8s3kKRcFGCk=;
        b=shS3mrtzjI6PYdNpX4+QyhK/OUiHpQ17hdKkp3FCFlfe500+COPu5mGjuQmndZDgMK
         3v/T6h2lJRBxTZrGIED9TqFTUpdPmo4WQYvRpUIKwcntjO7LS9UGQy/C7zIX2wNMLepD
         whKc3c7xqEvJa81i86Y6vDzROm/s4z1GnXoDjheoOIGUuej92qO6Ci1C/t8ssaCbeuIS
         wddK0U3nvwiXgV6unkWxlL96r8kLxOKEv4sD89HSrNF0rc3j5WwhGay/fqwSeGFs3ydF
         qyliEpznuH1d7AroSOD8zcwUK25SOnbfYI8EAJRB/2LrioZ771t2vmyY/IqDqDHbZ/gu
         +5uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RAPHlagAmHG0cK0RxoPmAOTS9wOs5aSd8s3kKRcFGCk=;
        b=tJ575mWHGEq9DHFPiRGfT3pdCrAY0aBJEy7qs004PsbePhMHlMuMCdmuXGoAwtO+MM
         zAUiOeK/sL5k9OBqhdC7hzAVkpJVGSWaQBOE5NZ5u0Gbunx0qrtoKSHNrXRDKZrUbXuq
         c3ihqKK7y2vInoc+xQy62awBr4w2iLDCdLLFhXBQUBS9FBni7x7ZRLnR3WFMPELof0EY
         iQ0983ac7W+PKeXOCDG28B0zWJJseqkg1KDdbbfD3CODJ8Iv5e8bYoke+8ro9TiPAgB6
         Q1sg/Wnon/gg+8mYNLdpFBwWHT2ASPkpexVdDcztnSeAxmXzDaiO654UEVs/i5IE0aCP
         iL8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533acwXvgJ38N/oeuxwvFb2q5/usJXg0oQSTEyr92ulJm59MejUN
	qBv4iY0+vPEz4LO8UCQ1mSg=
X-Google-Smtp-Source: ABdhPJxlLQWnH05FOQtKY4N8intNHUmZRDeo+fPkNLjKuNydxWDRoWfpvsMaO42maU/jfqB+OoRzig==
X-Received: by 2002:a05:6830:445:: with SMTP id d5mr8437954otc.331.1621026880509;
        Fri, 14 May 2021 14:14:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:a6f:: with SMTP id 102ls2895374otg.8.gmail; Fri, 14 May
 2021 14:14:40 -0700 (PDT)
X-Received: by 2002:a05:6830:1404:: with SMTP id v4mr41491049otp.209.1621026880091;
        Fri, 14 May 2021 14:14:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621026880; cv=none;
        d=google.com; s=arc-20160816;
        b=zYOHicUlrsZ6WeJHlGHrGMog7hQhpLuHBkT8ughhYjoPo1cE/gdsDC4OwzK947EtGt
         FA6rfxYbS6Mrg2OyUChXXKdQ4f8qmEfxrTJXzUckkXmbrJz1y1vJIQouYYqt7DQVpRL/
         WW7ZE8CP1VjtG+WJagjeSs2e6UJr9fUBWo9d4UR96696n9qv9hgxq+8jt44i+BsBq+is
         vE93oBRQEi4ai0HyVWiOPsrUG+mu5tCEyiJB35IEjt1h5cBEDNqp5RfTf3Pr3q59w9P4
         KFnf7+NqGW9ZbiZk5tTlFccS6uiDaks1LqQpB6pbGYbXu812L0AVPzU8uC85mHlgvfdt
         o+Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=VW7HJuHaDnGpXZOnS7Xj+UiyGJ5ZeAvJxmRsVxNh09I=;
        b=V0ANtNZHcwfw+XDOvBdoDKOhdLSujfA9wv5XnW1IfLnY11g3QGX8Qaa/qQ10VgifXA
         HcDOjK+fP5zCNO5fRJRkJ9lh/qqzKyU/HLZ/MStfhzVmezpsm68OLWAB9ABM9mtE7dz5
         RRtq9gKT7smU6j4bLz08IJbbH7674iAhg17lbtVIPqOUFeKl2rQDqwgBCD2L6wtfbmq6
         GE7eZqxJdTo5HAyf8kDC/DQC6UlEALX76LWo63/687HlUEXb6ibBYZzezLxw23cgPARy
         bySTHA30jk1vg0U6kKkDtvZ0t4Kgd2Qg0svoZLe+eC5kTyNnMVh2aE7W4TZSTpivEQ6Y
         Sqtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=I8aARS9L;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f4si952536otc.2.2021.05.14.14.14.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 14:14:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D9B0761283;
	Fri, 14 May 2021 21:14:38 +0000 (UTC)
Subject: Re: [PATCH] riscv: Use -mno-relax when using lld linker
To: Khem Raj <raj.khem@gmail.com>, linux-riscv@lists.infradead.org,
 clang-built-linux@googlegroups.com
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <20210514205643.383422-1-raj.khem@gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <bd8ae62f-1ead-2d82-5fdb-87308accc023@kernel.org>
Date: Fri, 14 May 2021 14:14:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210514205643.383422-1-raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=I8aARS9L;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Khem,

On 5/14/2021 1:56 PM, Khem Raj wrote:
> lld does not implement the RISCV relaxation optimizations like GNU ld
> therefore disable it when building with LLVM=1, Also pass it to
> assembler when using external GNU assembler ( LLVM_IAS != 1 ), this
> ensures that relevant assembler option is also enabled along. if these
> options are not used then we see following relocations in objects
> 
> 0000000000000000 R_RISCV_ALIGN     *ABS*+0x0000000000000002
> 
> These are then rejected by lld
> ld.lld: error: capability.c:(.fixup+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax but the .o is already compiled with -mno-relax
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>

Thank you for the patch! I can build a ARCH=riscv defconfig kernel with 
LLVM=1 now. LLVM_IAS=1 still needs work but we have outstanding issues 
for that:

https://github.com/ClangBuiltLinux/linux/issues/1023
https://github.com/ClangBuiltLinux/linux/issues/1143

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

One comment below though.

> ---
>   arch/riscv/Makefile | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 3eb9590a0775..519f133e0d53 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -38,6 +38,15 @@ else
>   	KBUILD_LDFLAGS += -melf32lriscv
>   endif
>   
> +ifeq ($(LLVM),1)

ifeq ($(CONFIG_LD_IS_LLD),y)

is a better choice so that LD=riscv64-linux-gnu-ld LLVM=1 can still work.

> +	KBUILD_CFLAGS += -mno-relax
> +	KBUILD_AFLAGS += -mno-relax
> +ifneq ($(LLVM_IAS),1)
> +	KBUILD_CFLAGS += -Wa,-mno-relax
> +	KBUILD_AFLAGS += -Wa,-mno-relax
> +endif
> +endif
> +
>   # ISA string setting
>   riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32ima
>   riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64ima
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bd8ae62f-1ead-2d82-5fdb-87308accc023%40kernel.org.
