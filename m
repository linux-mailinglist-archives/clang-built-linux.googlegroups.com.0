Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDFV53WAKGQEQIKHFBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id DC45BCED26
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 22:05:32 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id v17sf7622319wru.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 13:05:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570478732; cv=pass;
        d=google.com; s=arc-20160816;
        b=uCgELeffjQ/mosILc3ru9leiT17EpobRM1gq7mkZIo6P9NBHUbGu16l/7n5NnsKT4w
         5qHzL+gfPCXdUolPJwWs8UQLzuWw2UP+dbtxPOuX0mwrVnT42ZoEnc6Htngtt2nRFIbm
         dy+FqXTJyxXsFwdBiC50KYmU8HOuP6+aQwjoD702s8Zr5ccYr0u4KZdXIiP/FRby9gCo
         GYdT7bn39W7MkMkkiUx0SWGBZcDpYBiXSR9yqAr92+PNZg2tmZb1384ptwRKTqpEmX9O
         9LYrBTMO+P9cMuMrovlQfpDPVSMrnd5bqboxwLvSIXZIlywqha+l4rhm/tMFH/5rqZKi
         TUdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=WarK1P4HEBPTl49BbWBiNfl3vZJsBCPCkxZaRtviV3k=;
        b=SKq0QH7FCA8OGHfikfuTmU1wdDW3A0BH/gbX3nC5exy4bk6i4oSXFwtRoKsfXkapHU
         l1j/T8fK/5rw23FeF3C0leYxtrsnPnUgO8X5WvLlMGdLYMUik9a8xj+re8lyXvdToajF
         n38YBdhEi0dcBybHHeJg5zirFEUfJbGpvnhxV4Vt+TVaHIHiM/l94gAtT9g3DKuCABSc
         9Sjt2BdkOBENB+zBkJUBcsk5RSb6lAuXxYb3mq8VtXT30RLCaj/7NftlKn40mBJAp14p
         KRnCX8u28z/fyPxtzCZMAHZpx3S2q/9iWFvbbbE8MZq+eBzxViUeo804IYz//LE0ZGfj
         khnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JUy3Ey2j;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WarK1P4HEBPTl49BbWBiNfl3vZJsBCPCkxZaRtviV3k=;
        b=DzmNm5msbOYUxhxR1xOyzoCJJAhlhdDB9rLsg8LpDBONBbdimbfCHgnjzKSfEBcKOJ
         EHGx4ZljtOGlROnRwRrPiAt59BeIbhZ/DLtPUA5CdVWIQG4jlRHtuVOCCAJS/8YeaIDz
         68pMVfYNfXEviucqkhUFhLB4rH7rDUOi1jmg6F73KIkJAIBKipOB96ude2vUmq9I80QY
         7RJbAfPx4fDYNQ5Rl5clXhLG0WdtF7l1I6B8qj/D+zNLQvb5ZSz0dIR0WSz1LzjTTnKw
         J7Xj48s5S1aDoJ/IAy6zEMxsGZxaIrSWdP4HTqOdZTaX7ziUdccCae6hmETepebUqE83
         kEhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WarK1P4HEBPTl49BbWBiNfl3vZJsBCPCkxZaRtviV3k=;
        b=BQrbXr6cZwu2tBRnNmsc4o7ybO8eI98mQ6L+CUVyKBndtpOt2YrBTHzHJnFlI3295D
         KNfr/12pEw0ASvK6awjerfszZDLdzd6bchkV6Odom3ZEvMf90bPhAvkiJGkbRi0mEBWX
         S7mQLarQav074QGjoeV4yeGK0mRxJ1mLTdZ6djjxusfErzIAz99+EpEMuzv5wJKwGArk
         MC5kwtb6LAxHB/c8v705HKYHkh/urxZ5/Dba319firKWt9KIEzoa7tZPACPWBeg7Y1nq
         qAadScMO3sDmZSRh2SyVYx1IfFGW9TGBly3Alawql98XNi1/o6N/MCiAO5LDzeu63VAZ
         LAVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WarK1P4HEBPTl49BbWBiNfl3vZJsBCPCkxZaRtviV3k=;
        b=iayC5C7Hx4ryd/N7efbA6Q88rCdQ148ml+q7tCXebOHm5r1wiWUUMqluIoi+hr9jmH
         D4QTY/xzRv1uTu8feDziXlqLRL7vgwOp6rQqihdXYMvOKJ6UlnbQOj7k1WvkacHR8y28
         ddBjuIkLeAd6ipqD+csc4AOF2zAUpz8p5FiHx0NKKg+Cp+eT8UWuwf5lOmt3CNI3Et3p
         /fRKoVikAc6pDgSkI0CBVhbcobtOnoE8bKM/6C/XKxc9NtsYHNBhA7rZAfXiuO8ISEAz
         vBoc+cea5Nu+Ku7ufmohv7ufOvx5oep6/tVA9Y0ak2g2iZM2jQtWTvQy/Yamxrdg83aG
         mo6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUZNbJeeJdDSMOMFBIuyDNh5DpGngX7dqSP9DMR5xEngv1DxSin
	z2LIHvqq5g3jwtbT48Acg8s=
X-Google-Smtp-Source: APXvYqzt4/foggS0Svyf7/D6Lx2gxfj1qD8FW4ImK33Z0A9VhXcmU0p8AjvUh6OAajwDBnFKHudUkQ==
X-Received: by 2002:a05:600c:143:: with SMTP id w3mr745858wmm.17.1570478732589;
        Mon, 07 Oct 2019 13:05:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c44e:: with SMTP id l14ls261604wmi.4.canary-gmail; Mon,
 07 Oct 2019 13:05:32 -0700 (PDT)
X-Received: by 2002:a7b:c011:: with SMTP id c17mr735576wmb.95.1570478732127;
        Mon, 07 Oct 2019 13:05:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570478732; cv=none;
        d=google.com; s=arc-20160816;
        b=YH9hyLWaQHfoywH/z+NwFNkw6LPxga1kyPYnt1RHqnElSueT2MMFJp5xTep1F1Hv+R
         SEHl7t/BL/S9tAI68OZiKfNuVQWwprdv7BEPVY69mxWU8Qb+6K8dG5z4GTbfHKdJyVWM
         IAd3nwbqPuDzXQ+NlMEJ28qu3CGxDTr4l2gr2oG6FpTt7V/qjsN89m1E6qmrJauNeRBw
         web9JFPO5eosfWTkJyqzY8SwQFtLc4KG0mqlYtXfX8Uk0d82IR+Hnh0DSXPrEZ9DFi27
         dFdR/Mo5jxdeeo5tlIai3j9JBNXMdi7oDXnEMzFWwisSrnjhNffvMo0p6nBVdc/gWEbM
         Z4bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zpqh/2Usq3AQxv2p5u7LDb/DJaQ2+JAq8e1TQs5MjIc=;
        b=xmdBXNYOYO9SLn2KwlGKi6cAeENrgLfTivUTHjr++Pm2Vz7V8yJFz4iZNUYOq0Hnz0
         Q3Htz09DjWAEeZJIuGXGj8srqero/9eFwdnzgGfa7Ybe9yEgCxbqkMnb2k7optgjYH2D
         Kb6afR5PajkJl/xCVx+JnnDHr7x5oU1bhnYJTrbV4dKZkv8IBymCpVOs8+/UZt9HQSz/
         ojvtVNIjOEzdXWt3qpmzAbSOqgKNqEGCHK0U1u073aILnJ3VJvFZe24kDp+GqOLFyymy
         DyggkpQfx0Om7pHMOCoaaBfyIBqTZmVfzmzsp0hlR6ZRzNfi9pTvs7NBGCeDShDtTgkJ
         INrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JUy3Ey2j;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id q137si63359wme.3.2019.10.07.13.05.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 13:05:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id m18so783086wmc.1
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 13:05:32 -0700 (PDT)
X-Received: by 2002:a1c:1bd8:: with SMTP id b207mr752943wmb.62.1570478731663;
        Mon, 07 Oct 2019 13:05:31 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id h7sm16302556wrt.17.2019.10.07.13.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2019 13:05:30 -0700 (PDT)
Date: Mon, 7 Oct 2019 13:05:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
	Arvind Sankar <nivedita@alum.mit.edu>, x86@kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] x86/purgatory: Make sure we fail the build if
 purgatory.ro has missing symbols
Message-ID: <20191007200529.GA716619@archlinux-threadripper>
References: <20191007175546.3395-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191007175546.3395-1-hdegoede@redhat.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JUy3Ey2j;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Oct 07, 2019 at 07:55:46PM +0200, Hans de Goede wrote:
> Since we link purgatory.ro with -r aka we enable "incremental linking"
> no checks for unresolved symbols is done while linking purgatory.ro.
> 
> Changes to the sha256 code has caused the purgatory in 5.4-rc1 to have
> a missing symbol on memzero_explicit, yet things still happily build.
> 
> This commit adds an extra check for unresolved symbols by calling ld
> without -r before running bin2c to generate kexec-purgatory.c.
> 
> This causes a build of 5.4-rc1 with this patch added to fail as it should:
> 
>   CHK     arch/x86/purgatory/purgatory.ro
> ld: arch/x86/purgatory/purgatory.ro: in function `sha256_transform':
> sha256.c:(.text+0x1c0c): undefined reference to `memzero_explicit'
> make[2]: *** [arch/x86/purgatory/Makefile:72:
>     arch/x86/purgatory/kexec-purgatory.c] Error 1
> make[1]: *** [scripts/Makefile.build:509: arch/x86/purgatory] Error 2
> make: *** [Makefile:1650: arch/x86] Error 2
> 
> This will help us catch missing symbols in the purgatory sooner.
> 
> Note this commit also removes --no-undefined from LDFLAGS_purgatory.ro
> as that has no effect.
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  arch/x86/purgatory/Makefile | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
> index fb4ee5444379..0da0794ef1f0 100644
> --- a/arch/x86/purgatory/Makefile
> +++ b/arch/x86/purgatory/Makefile
> @@ -14,7 +14,7 @@ $(obj)/sha256.o: $(srctree)/lib/crypto/sha256.c FORCE
>  
>  CFLAGS_sha256.o := -D__DISABLE_EXPORTS
>  
> -LDFLAGS_purgatory.ro := -e purgatory_start -r --no-undefined -nostdlib -z nodefaultlib
> +LDFLAGS_purgatory.ro := -e purgatory_start -r -nostdlib -z nodefaultlib
>  targets += purgatory.ro
>  
>  KASAN_SANITIZE	:= n
> @@ -60,10 +60,16 @@ $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
>  
>  targets += kexec-purgatory.c
>  
> +# Since we link purgatory.ro with -r unresolved symbols are not checked,
> +# so we check this before generating kexec-purgatory.c instead
> +quiet_cmd_check_purgatory = CHK     $<
> +      cmd_check_purgatory = ld -e purgatory_start $<

I think this should be $(LD) -e ... so that using a cross compile prefix
(like x86_64-linux-) or an alternative linker like ld.lld works properly.

> +
>  quiet_cmd_bin2c = BIN2C   $@
>        cmd_bin2c = $(objtree)/scripts/bin2c kexec_purgatory < $< > $@
>  
>  $(obj)/kexec-purgatory.c: $(obj)/purgatory.ro FORCE
> +	$(call if_changed,check_purgatory)
>  	$(call if_changed,bin2c)
>  
>  obj-$(CONFIG_KEXEC_FILE)	+= kexec-purgatory.o
> -- 
> 2.23.0
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191007200529.GA716619%40archlinux-threadripper.
