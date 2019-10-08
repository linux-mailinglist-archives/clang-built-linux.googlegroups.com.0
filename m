Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYVX57WAKGQEXNQANRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 70382CEFF5
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 02:44:19 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id w22sf14085133ywa.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 17:44:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570495458; cv=pass;
        d=google.com; s=arc-20160816;
        b=S1bw6kqu69S/uscuRrNzzhdh8142MJ3O8zXJDLPnzBExVaCAlLGBD9tnkh7pPuBWIf
         mn6TYYfKSHLVFjs0BI67MYB8m/33Bu0IbU/kr6zim88rV6k8GCDn8owXZzC9g+ZB/X7v
         G9psIupvU3apz8nuB1nHkc+4vrv386OlYzVQdQempUlnXNtB71NizF9f7VwE/UwKHnRz
         sOOqXPq06Dkbo5BPsTr1u5sCD85isUbdrYI4fhMhtL87c+Ngla0tsCrxGKCuZJ8c8YjR
         /BZAeOyuboMYVo1Z3KpTcG+T7uSvNbmIBGOnstnHg5Nc/yKMZbNwD5ATeZvNWSttowwK
         70Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=z8dtB9xYEeN9+4w7ankJO8PoXXRKnkqFto3F0CTWzyA=;
        b=rmJLEKQOJONIAZmoF5H3rGgIlFjlVjdjX5YqBT4z8BEfn0ld3+OSchwCaSBsxtHvXM
         gaKdZ9wuspfdDd6omMRlxy44yEzU616PhGoprgml0cSVFrnSvcx9f4f66FBTpq6nNN8E
         nUfvSI3QA5TnVaBuJEsk7+Fj6JZGoFcEK/noFFeF9+ZQxJmLElIZHk0oW8J7F27Tof8T
         b4YAakvhj2y+t7SAilHv8RmGNykgMAh4xaz7baohtCF6KtoZgnWH8un+WYU+/eKa/SiV
         dR4dlzDNZPlfGc73fsKMMHkvdlOgHazaH7J4ISLV9lHLbNpXgx4nAmyzmnZ6WIWIXwtg
         5IKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PzUlYZNo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z8dtB9xYEeN9+4w7ankJO8PoXXRKnkqFto3F0CTWzyA=;
        b=UdGsVzulbmCi8kzRZfu0Uo3qerDO1mVGm6M+VWvEtrttfEAaoIiWxAfyhfXvOp2XRh
         019IbN90FnnCvn1TkxUI+hwKBHIw9Pzgu96J0pgjLN6lmtJGXLiwjjXRnmeD/OlNNlcU
         vOsbCtHq0Ivkkt/6pP0c8hyvuySWvPuzNgHGJ8SRHF2RFouItlZ6+ABp67YkkF2yif5S
         nDttyrGDk/zcVkL81BS9CLZFZrMGZe3HrMw5rU4Y5h/CiF7myq+A9ALl4nUFhEFSs9QO
         FAULaJMThr/Rjc3Dy2yAU7HONUV5E9vi4gjeyxJFFv/RKllZYXa5mmm/nTnv94DoLBE4
         sRSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z8dtB9xYEeN9+4w7ankJO8PoXXRKnkqFto3F0CTWzyA=;
        b=Lze7PlbuA4TuaSHlhWCKjWrx6bqsHSWpZDaLj7x97c/BC5i6xgK1QkCdAyrywd8EwG
         ivYYxm3hM+POchg20LIdrAA3brY2Z1q6rTZ+sDWAiWEhuoDw6xsgk5C8r2y5tKE78e8J
         eGDCUOJY0sc92pEuU+Frynn7XbJoQd6gTFaNutzdGHUmSIVK95PF2+0Ps2H2IbKPtwMt
         QETtPeIY2GgF79g2udXc1s9+X5ccgV9pfgT4CSaXNi5SwZHhoqEM7R8HyEEwe0F4knVy
         kt5sfFjhOJCva2hPgSlPUIunyU+6OcEycU6L6wBRwaxb1qvQOYFJC8lL0ZYx/un/s+xl
         vDkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgIJ9CcVHS+epP+OkM1WqD4NyBhFGiNqRSDI5cdR+F4gvJO4xQ
	NebxWXTtEtU3FDgjW4ioLj0=
X-Google-Smtp-Source: APXvYqz4kPTHdELPy1+R+R+yDuMYYwSLdpmZxdzXcOZXq9yXI39CcM9xZ4lIHSOTLBTt0gnpKvtlqg==
X-Received: by 2002:a25:bb45:: with SMTP id b5mr12850882ybk.263.1570495458457;
        Mon, 07 Oct 2019 17:44:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:3dcc:: with SMTP id k195ls301349ywa.6.gmail; Mon, 07 Oct
 2019 17:44:18 -0700 (PDT)
X-Received: by 2002:a81:431d:: with SMTP id q29mr23668880ywa.205.1570495458180;
        Mon, 07 Oct 2019 17:44:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570495458; cv=none;
        d=google.com; s=arc-20160816;
        b=WfPd72XEiZqOrGImRFMNB5LK5KX6oWx6YuUMwM4DWIdMp4WDJIvg2NLMQ1mVBQqi6Y
         cTX7urInEVIWS0Nt752bK71GS3II8A3KCoybWW8qG4BGwnZgc2tHJvZk+NtcZ/dJVsz4
         CjOkuISoF4RODPurV3thZmfoCMcOLLvmj9Li4EddAKFFjpU3CB2QZ9maA73XB3MPZBzV
         NueudpzZ1aorrFHSDISkV3A8+6eaRNuY4wnH7iscBqJJuLYrV/owU8ICCeDVURIPPg6m
         7LdT7LJTd83BqqnXddWLxRYQo96jl52BJ+BydF/cs8pglHSKs5+sxW73ujsIn94yrbqi
         HgAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=trN9p3zclD944pvbb9tZbZNaEC++2nqbN3BsYHyRgOw=;
        b=0XXhe7NUz5U5OQTMWonZtwmIbZG22ihsXTp013Yxkj1eytmrq7GjM52P22bn/CsNGj
         pCWtAVado9y7BuQVKgaqWRDtYKC50Ip+mIwu+DYGlKghkeDUiR5TFJ9Jh60oBMxK8Jcm
         Lo9+x4a0OhxAEhWw9WusX/AmbglT7P1KHdb/vlXWYNMm0WaCuN5T04FqK067g91pr4Nz
         D2HW1Xxfw6alink7mm1z/BLIY66Jp6hxWu5E+FSDeFRqo2ZIsZbTVOjmjz3wqYZyI2vh
         7+3mgZIPjZ5lPrYzJ0KOrc3apfQVADyCjqdNf9xthpGuiwFi56LzBymHloGi472/iCeH
         vaFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PzUlYZNo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id y7si900668ybg.5.2019.10.07.17.44.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 17:44:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id c3so6201102plo.2
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 17:44:18 -0700 (PDT)
X-Received: by 2002:a17:902:6b88:: with SMTP id p8mr22772868plk.74.1570495457346;
        Mon, 07 Oct 2019 17:44:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q13sm17744104pfn.150.2019.10.07.17.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2019 17:44:15 -0700 (PDT)
Date: Mon, 7 Oct 2019 17:44:14 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Thomas Hellstrom <thellstrom@vmware.com>, pv-drivers@vmware.com,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	hpa@zytor.com, x86@kernel.org,
	virtualization@lists.linux-foundation.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86/cpu/vmware: use the full form of inl in VMWARE_PORT
Message-ID: <201910071743.1C48038A@keescook>
References: <20191007192129.104336-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191007192129.104336-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PzUlYZNo;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Oct 07, 2019 at 12:21:29PM -0700, Sami Tolvanen wrote:
> LLVM's assembler doesn't accept the short form inl (%%dx) instruction,
> but instead insists on the output register to be explicitly specified:
> 
>   <inline asm>:1:7: error: invalid operand for instruction
>           inl (%dx)
>              ^
>   LLVM ERROR: Error parsing inline asm
> 
> Use the full form of the instruction to fix the build.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
>  arch/x86/kernel/cpu/vmware.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/x86/kernel/cpu/vmware.c b/arch/x86/kernel/cpu/vmware.c
> index 9735139cfdf8..46d732696c1c 100644
> --- a/arch/x86/kernel/cpu/vmware.c
> +++ b/arch/x86/kernel/cpu/vmware.c
> @@ -49,7 +49,7 @@
>  #define VMWARE_CMD_VCPU_RESERVED 31
>  
>  #define VMWARE_PORT(cmd, eax, ebx, ecx, edx)				\
> -	__asm__("inl (%%dx)" :						\
> +	__asm__("inl (%%dx), %%eax" :					\
>  		"=a"(eax), "=c"(ecx), "=d"(edx), "=b"(ebx) :		\
>  		"a"(VMWARE_HYPERVISOR_MAGIC),				\
>  		"c"(VMWARE_CMD_##cmd),					\
> -- 
> 2.23.0.581.g78d2f28ef7-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910071743.1C48038A%40keescook.
