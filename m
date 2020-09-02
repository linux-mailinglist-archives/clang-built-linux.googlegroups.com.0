Return-Path: <clang-built-linux+bncBAABBKVAXX5AKGQEPMHYSJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F6925A71B
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 09:56:27 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id c186sf1515045wmd.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 00:56:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599033387; cv=pass;
        d=google.com; s=arc-20160816;
        b=j/0LVTG80R+6xNAsKTvqKjLtpzzSrcv2iuIwVxz37Z26lDC++qa+/Jq9LwXGDqKLMR
         lhoWYw/Fzh7CaPbgJGV4WUs3W9j4aH4c4Z4HzKaS0Q5zoRoSY6wrp85QtjZ2+evf5wC9
         F5OWWzuWHndtk+dLjasqpNpmtjaN4ynNBKele5AsBM092VequLGsLmPIe5ow6Swixt0s
         yTiBC6WfE1Xj4cdXGeIcqGIBf/27ICHoujFLlBP7gX/JvnRfmouAhPs+tuNc1LEkypHm
         q6LNwDWwRQqpYpQ1FHwujraizgICnAvmTWzRVYKFadZ/8iI/QwRiCMQTfllRgAC6jJxA
         H2jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=+IrBePi08mxvZI/MbAvJzIDj3PsfASLkpujGE0Eng7c=;
        b=vJr3ae0i0PVFHJ8yA0EmdOuY2N9yCz9fjF7JsDmGrN3aiKxUHVlV5ilOHWtU6jNuBX
         BcjHdvDMiEAOJYJn05hpVAl51JcuZIqxr5SCRFFfjLL30TC1uIR328UcziQ/CWAmyloL
         JqWhxCb0Uvs4vUfwmuOTl4cTgTaSjJc/VjrIhLmEdMFQGFqFCGucXj5Dyy4LMWWPeXt1
         gNqh7HzfY/acCrSsXUNR9tR/WrLTxeC8QiRWdYUBH/Wk2sI4OGm6qMY+bBUjr3xLiZfL
         ax9I9bNcDeYtZ3ABWk82+NwxgFBsbq0tBH2AgYePPD4BH0MYX9GRzy3+LvaO01V/Xfrs
         BiEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+IrBePi08mxvZI/MbAvJzIDj3PsfASLkpujGE0Eng7c=;
        b=frsg2vKqoh4Os1gdDWkjHDkw774F1KlnyeXcmQZ5s/l9E3SV9gXncG20wKEOpe12yP
         ckOdgeK7o1YC1y2HKJFxtEDOyfKhB2BvvfoRGRYjcQCXOpGAhD6Ms60iQjfh1shjbj7r
         Q87NiKl9MBaSB1eeN+WKLKcp3X6IVX4caRniOYbGWojmZ879aHViuEPtBvABREzgdZal
         ronps5vwgZp3b2YqPTJINVb3x8vV87O0sW94YifOkHVncC4mKoFdqXjgWLBqYL/nyraY
         dvJhUDiUYkOmU3SbQ8PtWx3c4ChzEn9IEDSVLpJI547F9ZxvyqMeuSDaQflzUBJfX2Ej
         qAxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+IrBePi08mxvZI/MbAvJzIDj3PsfASLkpujGE0Eng7c=;
        b=N7WrNLeKpsTBxUhTCyFoXmtvqIMZA2lQB09kcNxS9QYaJbbcWAcOHxHcgAel2uC/88
         bCPgncGSyMTlmTMLpJK7CdqzpHuKpbOlz8YgBq6lSES38uBxVzY12s90bhERIjdDXBZh
         vE4e6ZmC6GWgW5ovox6MP5EaL2q7aWoei123VQ5ggDjwlLl0PrnacdJ1BEJzwlUcPHnh
         5Cm9ypICYqB0aRIL+gFz1lyTaHw9d/MgonlfggfdjBp1Zb6PRYrfpd3s+pf74oMl3sp+
         C5shLGQEd2xasjYJflgktZO9H9FoP+R+nYbRMd2jJX05pNpIIFmpIxAfe7Qpp5To087D
         Zjaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317qKX/6rmNe7JJQWbUNhYWbKf+8h4qOOu+vIv/pYqFXcV9+C6V
	sCYSJ06Ponl+FxZfIlY5sns=
X-Google-Smtp-Source: ABdhPJxT+g5YKut/Ue/KS8MIk6ilbcHI/7xOaedE7AwFKsp2gY6RFMnVI5VrhH+9c6SzJ2O4ltXX/Q==
X-Received: by 2002:a5d:6a45:: with SMTP id t5mr6321350wrw.58.1599033387027;
        Wed, 02 Sep 2020 00:56:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c2c1:: with SMTP id s184ls567813wmf.2.canary-gmail; Wed,
 02 Sep 2020 00:56:26 -0700 (PDT)
X-Received: by 2002:a1c:1b8f:: with SMTP id b137mr5845499wmb.151.1599033386595;
        Wed, 02 Sep 2020 00:56:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599033386; cv=none;
        d=google.com; s=arc-20160816;
        b=U9Ke5ujw1z5+LPlNsgEoi3FEe1LDEc5KjHe0w38AhVNjbo3Y/Zmc2IFTBDwUI0qigc
         XXPIWp1AgRpIY/BnLwFKw4HgA//7eyXSKjPPNNFOvO8ycs4cP/FVXWBA4OUtJaSajEDf
         TRsXRM6GLiBVYfqC3lia+xUIYjqtwqubcJ0MzclNqZVCMqHLcGjmHj/vL1yJBkFgf1Zq
         MOi3GQTqXm8H8fP5vuh48rKI+q2fg4pMnlP8KHvDtG0gBYsSu5TATeWyHBg1BFuUKyEZ
         ty0W4GRzXHrqvQ0/SDED6FIhqwxlaHIq9H+18/oMpd+c2PZZbW971DKmDZnYn9J5mC3v
         BmYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=xddrT+dL6V/+qq7/r01DLCkCy9ANk9pqrBRi+NEmnhE=;
        b=E4H9KpX5+z+V9cQq+WjHOavGX8y6tM2ZpS+QMLocE0slMEM+Y40lFFpfyFwR3EZeyK
         zzvFaCmt1EJkmwvGMyOPN9g5ReEtXaNQjweCLen8dEvnHpr+LTyP8bNcUOD2C5X5t650
         K/u+ZfBup4iot4YJ1iyYm1J8lHKt24qXbq71NS94j4Ipz+uEIwU8kBeQewN+5L8LyWHM
         gGMReCxlWO9d5MIK+jC15iwxnBrO4/QWwZyW79aH9qZnCNINM4xTVB2xL2dysl1F8E0z
         qOoZ0AVX8/lql5x9os3Q+4MiAl9ymFjM5E/dtFEvziww1kBAVp9+I8JbWVRIfaE7odnN
         F5GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id g5si195722wmi.3.2020.09.02.00.56.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 00:56:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4BhGV10PBXzB09Zc;
	Wed,  2 Sep 2020 09:56:25 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id X4dnrfZE-x6l; Wed,  2 Sep 2020 09:56:24 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4BhGV05Xz7zB09Zb;
	Wed,  2 Sep 2020 09:56:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id B79728B7A4;
	Wed,  2 Sep 2020 09:56:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id NtV84Jj5A1jP; Wed,  2 Sep 2020 09:56:25 +0200 (CEST)
Received: from po17688vm.idsi0.si.c-s.fr (unknown [10.25.210.31])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 42EF18B784;
	Wed,  2 Sep 2020 09:56:25 +0200 (CEST)
Subject: Re: [PATCH 2/2] powerpc/vdso32: link vdso64 with linker
To: Nick Desaulniers <ndesaulniers@google.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Joe Lawrence <joe.lawrence@redhat.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>
References: <20200901222523.1941988-1-ndesaulniers@google.com>
 <20200901222523.1941988-3-ndesaulniers@google.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <371fd179-7d25-1393-f878-10eeb6ad12cc@csgroup.eu>
Date: Wed, 2 Sep 2020 07:56:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200901222523.1941988-3-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



On 9/1/20 10:25 PM, Nick Desaulniers wrote:
> Rather than invoke the compiler as the driver, use the linker. That way
> we can check --orphan-handling=warn support correctly, as cc-ldoption
> was removed in
> commit 055efab3120b ("kbuild: drop support for cc-ldoption").
> 
> Requires dropping the .got section.  I couldn't find how it was used in
> the vdso32.
> 
> Fixes: commit f2af201002a8 ("powerpc/build: vdso linker warning for orphan sections")
> Link: https://lore.kernel.org/lkml/CAKwvOdnn3wxYdJomvnveyD_njwRku3fABWT_bS92duihhywLJQ@mail.gmail.com/
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Not sure removing .got is a good idea or not.  Otherwise I observe the
> following link error:
> powerpc-linux-gnu-ld: warning: orphan section `.got' from `arch/powerpc/kernel/vdso32/sigtramp.o' being placed in section `.got'
> powerpc-linux-gnu-ld: _GLOBAL_OFFSET_TABLE_ not defined in linker created .got
> powerpc-linux-gnu-ld: final link failed: bad value
> 
> sigtramp.c doesn't mention anything from the GOT AFAICT, and doesn't
> look like it contains relocations that do, so I'm not sure where
> references to _GLOBAL_OFFSET_TABLE_ are coming from.

I'm getting the same but only when building for PPC64.
I don't get any reference to sigtramp.o though:

   CALL    scripts/checksyscalls.sh
   CALL    scripts/atomic/check-atomics.sh
   VDSO32A arch/powerpc/kernel/vdso32/sigtramp.o
   VDSO32A arch/powerpc/kernel/vdso32/gettimeofday.o
   VDSO32A arch/powerpc/kernel/vdso32/datapage.o
   VDSO32A arch/powerpc/kernel/vdso32/cacheflush.o
   VDSO32A arch/powerpc/kernel/vdso32/note.o
   VDSO32A arch/powerpc/kernel/vdso32/getcpu.o
   LD      arch/powerpc/kernel/vdso32/vdso32.so.dbg
powerpc64-linux-ld: _GLOBAL_OFFSET_TABLE_ not defined in linker created .got
powerpc64-linux-ld: final link failed: Bad value

(GCC 8.1, Binutils 2.30)

So it seems that the got section is being created by the linker. Don't 
know why though.


With GCC 10.1, binutils 2.34 I get:

   LDS     arch/powerpc/kernel/vdso32/vdso32.lds
   VDSO32A arch/powerpc/kernel/vdso32/sigtramp.o
   VDSO32A arch/powerpc/kernel/vdso32/gettimeofday.o
   VDSO32A arch/powerpc/kernel/vdso32/datapage.o
   VDSO32A arch/powerpc/kernel/vdso32/cacheflush.o
   VDSO32A arch/powerpc/kernel/vdso32/note.o
   VDSO32A arch/powerpc/kernel/vdso32/getcpu.o
   LD      arch/powerpc/kernel/vdso32/vdso32.so.dbg
powerpc64-linux-ld: warning: orphan section `.branch_lt' from 
`arch/powerpc/kernel/vdso32/sigtramp.o' being placed in section `.branch_lt'
powerpc64-linux-ld: _GLOBAL_OFFSET_TABLE_ not defined in linker created .got
powerpc64-linux-ld: final link failed: bad value

I can't see any .branch_lt section when objdumping sigtramp.o or any 
other .o

When I move sigtramp.o at the end of the definition of obj-vdso32 in 
Makefile, I then get:

powerpc64-linux-ld: warning: orphan section `.branch_lt' from 
`arch/powerpc/kernel/vdso32/gettimeofday.o' being placed in section 
`.branch_lt'
powerpc64-linux-ld: _GLOBAL_OFFSET_TABLE_ not defined in linker created .got
powerpc64-linux-ld: final link failed: bad value


gettimeofday.o now being the first object in obj-vdso32


Christophe

> 
>   arch/powerpc/kernel/vdso32/Makefile     | 7 +++++--
>   arch/powerpc/kernel/vdso32/vdso32.lds.S | 3 ++-
>   2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/powerpc/kernel/vdso32/Makefile b/arch/powerpc/kernel/vdso32/Makefile
> index 87ab1152d5ce..611a5951945a 100644
> --- a/arch/powerpc/kernel/vdso32/Makefile
> +++ b/arch/powerpc/kernel/vdso32/Makefile
> @@ -27,6 +27,9 @@ UBSAN_SANITIZE := n
>   ccflags-y := -shared -fno-common -fno-builtin -nostdlib \
>   	-Wl,-soname=linux-vdso32.so.1 -Wl,--hash-style=both
>   asflags-y := -D__VDSO32__ -s
> +ldflags-y := -shared -soname linux-vdso32.so.1 \
> +	$(call ld-option, --eh-frame-hdr) \
> +	$(call ld-option, --orphan-handling=warn) -T
>   
>   obj-y += vdso32_wrapper.o
>   extra-y += vdso32.lds
> @@ -49,8 +52,8 @@ $(obj-vdso32): %.o: %.S FORCE
>   	$(call if_changed_dep,vdso32as)
>   
>   # actual build commands
> -quiet_cmd_vdso32ld = VDSO32L $@
> -      cmd_vdso32ld = $(VDSOCC) $(c_flags) $(CC32FLAGS) -o $@ $(call cc-ldoption, -Wl$(comma)--orphan-handling=warn) -Wl,-T$(filter %.lds,$^) $(filter %.o,$^)
> +quiet_cmd_vdso32ld = LD      $@
> +      cmd_vdso32ld = $(cmd_ld)
>   quiet_cmd_vdso32as = VDSO32A $@
>         cmd_vdso32as = $(VDSOCC) $(a_flags) $(CC32FLAGS) -c -o $@ $<
>   
> diff --git a/arch/powerpc/kernel/vdso32/vdso32.lds.S b/arch/powerpc/kernel/vdso32/vdso32.lds.S
> index 4c985467a668..0ccdebad18b8 100644
> --- a/arch/powerpc/kernel/vdso32/vdso32.lds.S
> +++ b/arch/powerpc/kernel/vdso32/vdso32.lds.S
> @@ -61,7 +61,6 @@ SECTIONS
>   	.fixup		: { *(.fixup) }
>   
>   	.dynamic	: { *(.dynamic) }		:text	:dynamic
> -	.got		: { *(.got) }			:text
>   	.plt		: { *(.plt) }
>   
>   	_end = .;
> @@ -108,7 +107,9 @@ SECTIONS
>   	.debug_varnames  0 : { *(.debug_varnames) }
>   
>   	/DISCARD/	: {
> +		*(.got)
>   		*(.note.GNU-stack)
> +		*(.branch_lt)
>   		*(.data .data.* .gnu.linkonce.d.* .sdata*)
>   		*(.bss .sbss .dynbss .dynsbss)
>   		*(.glink .iplt .plt .rela*)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/371fd179-7d25-1393-f878-10eeb6ad12cc%40csgroup.eu.
