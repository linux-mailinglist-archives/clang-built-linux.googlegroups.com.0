Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB37M2WIAMGQETZ67NHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B54C4C0589
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Feb 2022 00:49:04 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id 24-20020a5d9c18000000b0064075f4edbdsf9690064ioe.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Feb 2022 15:49:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1645573743; cv=pass;
        d=google.com; s=arc-20160816;
        b=MmsK08ZO/tK1XUoSN38CXRHjETrEPVVmPAhNmSQJEleA9yd273vu6sV9V/fAkXIjj5
         1pWSJ8gy1hwBXvq+CITZSxPlpzLBj9zcC7Wrvu6NRWfGbuTjPpKqv5zK8ha28UbA53uM
         RT48NwchQvlWreACydlxomg34JtkKKKUZc8enqs5YbBIgYgQ2e2tLzYmYpAoop4z4UFc
         43oWvzq9BP2VCteHuoDN7u9NoZ/u8kBDLOu2bv6rBJ0Gz+YgInf1BxVq1gZyYwT+m4Tk
         Kxgx06UTrFfsgsCCDoItheHWK9JwtafTQ6FUFNGhtzg68ZeuzXCZh8gdAY/dv4IiZrnr
         pihA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZGXux0pjXMf5ISJHaOCzU0eFyzKubZfZGY1CtmI8TzA=;
        b=dh2urbJAM2tHsbLBlXOqybB4XCNzpPDWxEnwAFupZICdNPUF/Ukr7wSh1cDcc0qzj2
         6HfZnPPFPDhUxyr0fsv351SieLhuwsrIAw7d3t5wTR5dXcnBwU6VpOMR73DgCio2hO7Y
         mW80vIis/T8YXLqnyhiWnZA/QSA8SLglEf6V70UlzjQLrdtvQzXU/uU3CX+fBthvC/Mg
         rqWYfNueoAf1JwuZoRXC/FvY2thmorsfr3f++LPD2zzxE9XyoMIkbAkeyfteXnWivKzK
         IZryXF9VRW4Di47lJnqH1C6/sa2zrfUIXW8Gua4dz9ByUOAeEfDrjNUP8WXKILo7FPkO
         8NXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZmrKv5e3;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZGXux0pjXMf5ISJHaOCzU0eFyzKubZfZGY1CtmI8TzA=;
        b=tMoNEtdRhrayq3JS7kb87j3EbmNf8KcL2eWOu5sbOfSyk4fghLzFHKNWQoWI7Dz8ik
         fAOWWIzjCK5a5RARoVVbphLYHjr4W/Rhp9MjM8uVcqrVcYnVFPYU3RcCsG2UhBxwiIBu
         dM5D2VzRQIPaQNlbGc/Uhxq8krGSyjOk3lFn4qmILQYtFo4VHV7L6GTtGugchOsh3mQF
         iKA8eGrlFnh8xa5nmpX7GVKHl4YLB1lUivMw4Uh+ffsaeybIVOI11adc2AR+JuWbh0OJ
         FVIZCea1/ivUGMRG8LA2wPfDHU4CdEIB1DHrbVi2cSFHeNNbqRBT4SKmE7r4/yWV3Qgf
         36Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZGXux0pjXMf5ISJHaOCzU0eFyzKubZfZGY1CtmI8TzA=;
        b=yv17w6QGSpY3HoFIdUcMLaOfOJFBvWOar7cXqNTCZzerE7gB6GU5DzPoegCwxKCMCB
         IMc5pNrPWXni6Qq3Tz/IQTJELgYW0QcIFLLS1CQZ3h9Y00J+H9bhf7yzzYdSzUN3/j+l
         JO4SgVu8qWK0vwoDu+wkSAELEQvzNWEMYzW7rDAg/RV7xMUKb+1qx4MjsqHb7lOd8/57
         pUWf3a7hWK0izJ+REk11yWeTwPWXN8XqFEdiP0RbZ6IMNIWxZQvIDvsUUgMlclj4iBX4
         2z9cvLwkTmiKuzAsCOLPaJ48QhvvP2GvgEz/cXR6V1ABmKKVkvenpzgQS0IjWIbyZBp3
         Tpdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533MxQBXlVvAnuxQd8yDVtRN30kIoKuJ0+Gzh1dpVTU6Oh6vfOvn
	sbQv57NZ/ff1QNsmnBu30nY=
X-Google-Smtp-Source: ABdhPJxofV92hNxUuG7VeawsEz2Vl767HIcsvJTNqdDJhPN1x8LwYUoPmo/S3vQjJAYGBi/FTxZROA==
X-Received: by 2002:a05:6638:23b:b0:314:a260:1c0f with SMTP id f27-20020a056638023b00b00314a2601c0fmr19583251jaq.26.1645573743334;
        Tue, 22 Feb 2022 15:49:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1b8b:b0:2bf:a93f:e5b7 with SMTP id
 h11-20020a056e021b8b00b002bfa93fe5b7ls3447531ili.2.gmail; Tue, 22 Feb 2022
 15:49:03 -0800 (PST)
X-Received: by 2002:a05:6e02:1c49:b0:2c1:ec10:70af with SMTP id d9-20020a056e021c4900b002c1ec1070afmr16088064ilg.184.1645573742967;
        Tue, 22 Feb 2022 15:49:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1645573742; cv=none;
        d=google.com; s=arc-20160816;
        b=rZPL0t5yz97IJJeIlHjBhg4ykzIWmXd58sZT2ZDx3wnVDdbvhYE/xyWREhgFPSvfcB
         /1A83n7jFrzkv1YVOl7ahxiuP11F8thva9lKg6l0zd4pF1KtIh8VdfEh5KsOupXBZqag
         28cVbPBMqLh0F2/Zcmh6d9mfa+9s4jol41FYyh/ipzFHnbdIu4PP292tCALmD7qSxCWs
         G7pdGTe658ITHn0orEqg7/d7gOo52aP0QnIF7wRURlmb0UqLmylzi+0eGICVLsO1E0m4
         q6ifGuANKNfMaHk8H9Vy0cf60ILev195PAYAIykk2mJr1dj5ux2ztFvIEMX+txa/3RKj
         dMBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=k4qXAFqi0ySdR1Aw0Ol4TjEnW6pDCjdujI4uqf/WnnU=;
        b=utHQJAjeI6QY5yMZzG/+Snoe2uLpsXhY07JNt3hLGDbq7KquacJtzlNcKEBm5gnOZH
         euUUDHL7YFTFjHtz5iFaY5BKXxtgQwJURHxVbk2orO/o8DJBR1n1Tkgt9YTlt/8ycOrM
         KaSIiBGQm8m6U8NHqas28gXWSojL/ThLrVtVxnfQyau9qQas8TTdZ3GTkE39TyZwdudW
         wv6fbw3OWZxwDwcIPBj608DPl0TjiTORY23MV0QDwEqkLk7MLTa2ZeHViOvoa+XQoINQ
         ejkycypjvdeYNegOvuUO/Sox6fr3Oozzqi6PrFk2pFaOhMIc6oQ9tppgk+CgZnTA5onv
         HpLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZmrKv5e3;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id n10si3260845jaj.0.2022.02.22.15.49.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 15:49:02 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id p23so18359193pgj.2
        for <clang-built-linux@googlegroups.com>; Tue, 22 Feb 2022 15:49:02 -0800 (PST)
X-Received: by 2002:a63:224c:0:b0:372:9ec7:e7e4 with SMTP id t12-20020a63224c000000b003729ec7e7e4mr21075101pgm.385.1645573742144;
        Tue, 22 Feb 2022 15:49:02 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z14sm19080775pfe.30.2022.02.22.15.49.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Feb 2022 15:49:01 -0800 (PST)
Date: Tue, 22 Feb 2022 15:49:00 -0800
From: Kees Cook <keescook@chromium.org>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Tiezhu Yang <yangtiezhu@loongson.cn>,
	Xuefeng Li <lixuefeng@loongson.cn>,
	Juxin Gao <gaojuxin@loongson.cn>, linux-mips@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH] MIPS: Modernize READ_IMPLIES_EXEC
Message-ID: <202202221548.40C0AA5E@keescook>
References: <20210901194208.2420671-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210901194208.2420671-1-keescook@chromium.org>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ZmrKv5e3;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a
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

Friendly ping. :)

On Wed, Sep 01, 2021 at 12:42:08PM -0700, Kees Cook wrote:
> I'm doing some thread necromancy of
> https://lore.kernel.org/lkml/202007081624.82FA0CC1EA@keescook/
> 
> x86, arm64, and arm32 adjusted their READ_IMPLIES_EXEC logic to better
> align with the safer defaults and the interactions with other mappings,
> which I illustrated with this comment on x86:
> 
> /*
>  * An executable for which elf_read_implies_exec() returns TRUE will
>  * have the READ_IMPLIES_EXEC personality flag set automatically.
>  *
>  * The decision process for determining the results are:
>  *
>  *                 CPU: | lacks NX*  | has NX, ia32     | has NX, x86_64 |
>  * ELF:                 |            |                  |                |
>  * ---------------------|------------|------------------|----------------|
>  * missing PT_GNU_STACK | exec-all   | exec-all         | exec-none      |
>  * PT_GNU_STACK == RWX  | exec-stack | exec-stack       | exec-stack     |
>  * PT_GNU_STACK == RW   | exec-none  | exec-none        | exec-none      |
>  *
>  *  exec-all  : all PROT_READ user mappings are executable, except when
>  *              backed by files on a noexec-filesystem.
>  *  exec-none : only PROT_EXEC user mappings are executable.
>  *  exec-stack: only the stack and PROT_EXEC user mappings are
>  *  executable.
>  *
>  *  *this column has no architectural effect: NX markings are ignored by
>  *   hardware, but may have behavioral effects when "wants X" collides with
>  *   "cannot be X" constraints in memory permission flags, as in
>  *   https://lkml.kernel.org/r/20190418055759.GA3155@mellanox.com
>  *
>  */
> 
> For MIPS, the "lacks NX" above is the "!cpu_has_rixi" check. On x86,
> we decided that the READ_IMPLIES_EXEC flag needed to reflect the
> expectations, not the architectural behavior due to bad interactions
> as noted above, as always returning "1" on non-NX hardware breaks
> some mappings.
> 
> The other part of the issue is "what does the MIPS toolchain do for
> PT_GNU_STACK?" The answer seems to be "by default, include PT_GNU_STACK,
> but mark it executable" (likely due to concerns over non-NX hardware):
> 
> $ mipsel-linux-gnu-gcc -o hello_world hello_world.c
> $ llvm-readelf -lW hellow_world | grep GNU_STACK
>   GNU_STACK      0x000000 0x00000000 0x00000000 0x00000 0x00000 RWE 0x10
> 
> Given that older hardware doesn't support non-executable memory, it
> seems safe to make the "PT_GNU_STACK is absent" logic mean "assume
> non-executable", but this might break very old software running on
> modern MIPS. This situation matches the ia32-on-x86_64 logic x86
> uses (which assumes needing READ_IMPLIES_EXEC in that situation). But
> modern toolchains on modern MIPS hardware should follow a safer default
> (assume NX stack).
> 
> A follow-up to this change would be to switch the MIPS toolchain to emit
> a non-executable PT_GNU_STACK, as this seems to be unneeded.
> 
> Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
> Cc: Tiezhu Yang <yangtiezhu@loongson.cn>
> Cc: Xuefeng Li <lixuefeng@loongson.cn>
> Cc: Juxin Gao <gaojuxin@loongson.cn>
> Cc: linux-mips@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/mips/kernel/elf.c | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/mips/kernel/elf.c b/arch/mips/kernel/elf.c
> index 7b045d2a0b51..5582a4ca1e9e 100644
> --- a/arch/mips/kernel/elf.c
> +++ b/arch/mips/kernel/elf.c
> @@ -328,16 +328,10 @@ void mips_set_personality_nan(struct arch_elf_state *state)
>  
>  int mips_elf_read_implies_exec(void *elf_ex, int exstack)
>  {
> -	if (exstack != EXSTACK_DISABLE_X) {
> -		/* The binary doesn't request a non-executable stack */
> -		return 1;
> -	}
> -
> -	if (!cpu_has_rixi) {
> -		/* The CPU doesn't support non-executable memory */
> -		return 1;
> -	}
> -
> -	return 0;
> +	/*
> +	 * Set READ_IMPLIES_EXEC only on non-NX systems that
> +	 * do not request a specific state via PT_GNU_STACK.
> +	 */
> +	return (!cpu_has_rixi && exstack == EXSTACK_DEFAULT);
>  }
>  EXPORT_SYMBOL(mips_elf_read_implies_exec);
> -- 
> 2.30.2
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202202221548.40C0AA5E%40keescook.
