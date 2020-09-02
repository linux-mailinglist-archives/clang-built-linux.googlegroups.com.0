Return-Path: <clang-built-linux+bncBAABBY77XT5AKGQE47SI2FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id BD96125A5BA
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 08:46:59 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id j17sf1220901lfe.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 23:46:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599029219; cv=pass;
        d=google.com; s=arc-20160816;
        b=HJOrFAN1DuOK4guLoFLXUjbklFN+qkH6kpHQpvqJq0Af4nDkCI7h8CX2zPsxJh7FYQ
         YHxD5xXY2++hVNRgefkwYdDSL4pqCN9/sdcKncS6ryXYkqPQZFwaEAd4K9pWdFlE59is
         Suam8SlhfJN7iH6Q2FU9qTIQdyolIkaWul9aEn9L+U28QmJDfhcWfZjDNcDrIQ24ewQC
         m11kTyHa5+kJmJrTDcVoKDFILHO3iD841Fx/jXavqbHcm0dDGFKZHFpsoyaxN9L1ICKn
         kTlVibfaEze5vJkYGenlyvwKWED4rjxR05l9Q4vU+byx82Ol0jXj+5tsNQSmxVZ0pZBP
         konw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=gJs755oMV+Oi6CHQ3I7f5sIk2Mnboqst6a8xkjXc6iU=;
        b=NyCr3/gudyC4VVa7kOXXCQvaLD2iTUFcrQKKl1YiGykFGsgRXzq6FIaClzCPKsvjoX
         UR2rCjUAXIIwrdP5PzACzeN5dxpyJKdm6P1D2NxNjdgjjB7kgj7EXjI3Owcy9XkmO8lF
         kwnv0bLUZgXVcIqYPH67Fk7eftscUFL7yuFLDBphEoQDmhIbbsMnnlkbM4mPZ5Oz+hZ3
         qz+4t87fekq47YC9HJ2BDCyomXDws1t3L873G/M2HpjTIgx8gtklOiT3VkDCne/wRdIX
         I9MPCJYHzeYyBjKSN7uADT6h+mhcpoR8yFrDs69dK75pXi+485MBNDal+mghqTXa0XHL
         BrRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gJs755oMV+Oi6CHQ3I7f5sIk2Mnboqst6a8xkjXc6iU=;
        b=an8grZCxHcGjES9TtBRnmGWnzxmKs8OyuD4bVPjEUYC2Megwfb9tDJp6ygFH1Fm5dh
         VK7D4DHSQKaj5eXhdPV63PQBldd4Ls6ut/R5UX1NL/RH5g8CQ/wZrJMgEjGgZljkVec/
         BKHZ+cLGl5A+ajTYgcVHxDye6X3kWnyZeRY29kc+6xzNjbCUkzsv9yfNZ0vyxBkqF9bF
         cdesyXSfFi83qYQZtuhK75WIl2MSDNTRg+Q0zIPf82UBBAi8FJ8Y2bnEA8lhlWt+xF3v
         brvqecfOY9FktXTBfCMtWx4+BdHuowQmb0coX6zz2n3NWWlQl3u3luXNhKtoIAuTk/IB
         /YbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gJs755oMV+Oi6CHQ3I7f5sIk2Mnboqst6a8xkjXc6iU=;
        b=gxNRB7XSTSlOZKA77aE14cRV7Z+HieDI/YwdMKm2DobZHKUhEMBKJnDrsMcWB3ALFe
         0Md5Yp96CoFm/vtjj61sz69fhAByXf9fqjIz4WEfC542U8jHSKb7qHh/SKypQHRLnPt9
         NHW6juJ4X6OUp9Qo3qSF/Ts/KEkqsZbVdrxpYnwMsw4nyJ9U3oIKVMYViUkQpCrENIDY
         70qBb9/H/DWMNMpg8qI5KRrH7WJjM7D/1FIIG1dOqg7Agss/Q/zilHwWGMdAahyVA0NP
         2i548XyWDWEVYo/DQEZreoF5TZiHw8wv3H9sHqkGruffZnqC+N1miKzTOz1ZM/lQIHou
         QEwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zxaJpVTEdP8S8eKXV/RZPto95gQGUDZQmhJTY6L9OMGBc7EU1
	a+kFxFQNaXQiVJZJTB93J88=
X-Google-Smtp-Source: ABdhPJxH5hvluz1sVQftj7g6QqgBm8pKGBNjDVAwDv5ROcPoKW7+omVCQ5fRjQbrn2w77aYfG7trXA==
X-Received: by 2002:a2e:b0fc:: with SMTP id h28mr2642169ljl.114.1599029219214;
        Tue, 01 Sep 2020 23:46:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7c8:: with SMTP id x191ls261366lff.0.gmail; Tue, 01 Sep
 2020 23:46:58 -0700 (PDT)
X-Received: by 2002:ac2:5597:: with SMTP id v23mr2587023lfg.5.1599029218816;
        Tue, 01 Sep 2020 23:46:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599029218; cv=none;
        d=google.com; s=arc-20160816;
        b=SdDpdQseny5nEy+vas6puwGcrYD6Wv2vf5Vbg8hQvei5i6jW9e0+OocL+76TumsPfX
         A/53WWNidvrFP2gweT4IpauuwnqHmuxo/oH0Y+YvZVc7+Jx0NTWKbzW9a/L1uOtFWq8y
         YVFEif+nCZmwbr+nK61ArGVFxrh+nBk69TAuGoe0bQ7puOgfRWI6nkV240j1LwWtXIAa
         g6xVBVsHfrKxTkeeEUphYOTe5naYZi6M7lcw9quO+dtnIi3SvXecajw4szxvKnMQb8Wf
         9/Xf0HT0EY8i7GiQatz2u+flvuVOdmLwjpJGjQC/e0fvRbwJERUMsvENUrtONS0O/ohn
         I2hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Nq3UOjiX9JKfoxCdABwasux9HL95/uWF76axIGuWzBM=;
        b=Sqx/8Ub+uqGAayKWgINzic3dm8qNFP5N1W+Q4Ux5mE58L8nmo1uVNEHYYw82Pn9Ysp
         BUhXo2ZkjiMo1XwI/pPbJtgZsSNtxfoIePQIHzCKoAE6YoblqtE6GjPmbg3fiePbpnbG
         r9duGWz4WTY2IrovHZoA7GjC7znCSUG+xG9dw3CyQ0AOL8ehndvbB8LS74EGBhBF2xBs
         4dibJcERe0Q7wrZILqiFZfNZBVjC8sJ1o+I9Duc+Mm9UpuqeegqIA7bpxYQ6A6CKAXFZ
         2P16lsSI/f5DE3fRvby2JguY8MLFwex6l9av5GY2dI6M2/BI/ZfGEx052XcrbD4SGltX
         8x8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id k10si91145ljj.0.2020.09.01.23.46.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Sep 2020 23:46:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4BhDxr6VGJz9tybc;
	Wed,  2 Sep 2020 08:46:56 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id iEERQsHpL4eE; Wed,  2 Sep 2020 08:46:56 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4BhDxr5Sfgz9tybb;
	Wed,  2 Sep 2020 08:46:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id B9D0E8B788;
	Wed,  2 Sep 2020 08:46:57 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id cHWP0PZXhRVt; Wed,  2 Sep 2020 08:46:57 +0200 (CEST)
Received: from po17688vm.idsi0.si.c-s.fr (unknown [10.25.210.31])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 18CA78B784;
	Wed,  2 Sep 2020 08:46:57 +0200 (CEST)
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
Message-ID: <b2066ccd-2b81-6032-08e3-41105b400f75@csgroup.eu>
Date: Wed, 2 Sep 2020 06:46:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
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



On 09/01/2020 10:25 PM, Nick Desaulniers wrote:
> Rather than invoke the compiler as the driver, use the linker. That way
> we can check --orphan-handling=warn support correctly, as cc-ldoption
> was removed in
> commit 055efab3120b ("kbuild: drop support for cc-ldoption").
> 
> Requires dropping the .got section.  I couldn't find how it was used in
> the vdso32.

ld crashes:

   LD      arch/powerpc/kernel/vdso32/vdso32.so.dbg
/bin/sh: line 1: 23780 Segmentation fault      (core dumped) 
ppc-linux-ld -EB -m elf32ppc -shared -soname linux-vdso32.so.1 
--eh-frame-hdr --orphan-handling=warn -T 
arch/powerpc/kernel/vdso32/vdso32.lds 
arch/powerpc/kernel/vdso32/sigtramp.o 
arch/powerpc/kernel/vdso32/gettimeofday.o 
arch/powerpc/kernel/vdso32/datapage.o 
arch/powerpc/kernel/vdso32/cacheflush.o 
arch/powerpc/kernel/vdso32/note.o arch/powerpc/kernel/vdso32/getcpu.o -o 
arch/powerpc/kernel/vdso32/vdso32.so.dbg
make[4]: *** [arch/powerpc/kernel/vdso32/vdso32.so.dbg] Error 139


[root@localhost linux-powerpc]# ppc-linux-ld --version
GNU ld (GNU Binutils) 2.26.20160125


Christophe

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b2066ccd-2b81-6032-08e3-41105b400f75%40csgroup.eu.
