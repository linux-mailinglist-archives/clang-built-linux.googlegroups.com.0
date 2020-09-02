Return-Path: <clang-built-linux+bncBAABBFHCXX5AKGQED77MFAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C35C25A93B
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 12:16:52 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id x6sf1689845wmb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 03:16:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599041812; cv=pass;
        d=google.com; s=arc-20160816;
        b=jVbbLVku+C7OBHOrMcjBYTH/6EHz2zPJmgds9KMjVBdj1gQyNEhVtUXl8y8Zd0JoDh
         F/iltOmyW+DHmnhHbY2wUzBWSQv7C5J6VUVC//FEHFfavwNBhPmnExz/MVNbbwUjSPIz
         KlEbTVuxliU09VhVxboQa4o8X8gEn83tGdew/tKVplUwJrbKbXvzDYfpScW53E3hUyGt
         0RXfF9HMfQrk/7JxTp1SbEyJyEQYPF+ZpDsxwcn4OWQpAj9y52+IVQsPrORTjQ4jP+BX
         GPXnnvmL086OWNJE8srgk76/JQdhfH3+Rw3z5y48aEsED1S/35PbVYrwEf+6pd/DOGMp
         QMUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=xwBX7sMJnbaz//2wm0wg1SLSywzE9+q9D/5Bbp/Y9UM=;
        b=aOCs6nqDcrdUDAvIpGjInqansEpJAElcECJIeVbXyORIU2ubWTJxCatstPFblxhEVS
         sFCOgXJ95am0AYAcZ1owiGbAq+upOYCjEfPItrnZYulQZDuHlDqrwZ37DKXexjJ5jNE8
         ee+rypmEWdT2qc3FJJ0bZnl45kbkzRhudXe6O7T+1ia1ddD4sNuiNA1LqesuEacqVg24
         7IDbiRbWTKxabt4dRkSTf6PHIVQRb2AHLiWE/jBGbo71d31NbMDQp4QP6hEoQK+usmTa
         iMk0uWW8cnfOjgOo73REwVflgCDBas/o3qeyv+CTChLafO4c2cJ/bPKZlmM7ak62OsNc
         r5Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xwBX7sMJnbaz//2wm0wg1SLSywzE9+q9D/5Bbp/Y9UM=;
        b=cdFvj1o8f0KgVaaPsuy3QQvdYFykwzAULnF4fZwcWjbQmr2vrf7PYAJoGrn3JgvyaY
         Hwq5GkNU6ENz+hb47uFlLwq89nvWkXAXI3U5qPqhBtVVLixl0ns8loJTWK31SE4wz77o
         69ci5QmIsBx2l9kNkCl+IQyHxMUbE6aiqXppZWp/e4ShUYVeut28e8pMIOuv8WxuY2o8
         pv+SHV1fKrGfR168WCzkiUoRXDrc/7chR/UZh19BxmHKnSyb3V8VZjNDNccUdbcEQOeZ
         uz357wF3lSlnHn/QVt0mLvyboQUckl/ook/h0t/RruCT7JYbMV1dh5UAdvrqFVymJNjw
         /QlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xwBX7sMJnbaz//2wm0wg1SLSywzE9+q9D/5Bbp/Y9UM=;
        b=JS4VrJ0UyYaBtLRTswAl01a5vpH7brdoOYof55AjsFyxqdhfV1lT5p1/Or8+g04GgM
         +oUKwJYvieI2zNbCOh12IrMNgKW+Son+Uh2G2cdSuxoTEXrvgg10dLdV0qV0xS4NB8wN
         T6GkXpLKjuOJ9snvNVcGTMdoOMAb3BsDkcPICg7GNHqPyBsS3nF3SqB6C6QiL7SOjOZl
         OT7zrp+Us7wDdrmop0fajdCxYEIRVr+Wd/K6oUH2RABcYR/HmLRNj5iUm+owHL5w1sPL
         UuJ/C1UadwysmaypVVCMn5Nl7+nAMLIav9KCOA9aGFu9LZteuerS1cTBktQ1oG+xjzkP
         wpbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530f0OsmaddrJa1YgCWmk9zkCy+7Z7pTSzOAuTXmezrwTxS43ER9
	S8cOVlEZLGc3g22yR5QHA38=
X-Google-Smtp-Source: ABdhPJyNZb9oU95OLvomIXiJfCTB9pu9H1jXkxp5Q6N006GuVtZIg3Mjcs4gbIwYhOlP5cn6WpgAMg==
X-Received: by 2002:a7b:c958:: with SMTP id i24mr6408322wml.50.1599041812248;
        Wed, 02 Sep 2020 03:16:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1b86:: with SMTP id b128ls802131wmb.3.canary-gmail; Wed,
 02 Sep 2020 03:16:51 -0700 (PDT)
X-Received: by 2002:a1c:4e17:: with SMTP id g23mr3005383wmh.135.1599041811883;
        Wed, 02 Sep 2020 03:16:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599041811; cv=none;
        d=google.com; s=arc-20160816;
        b=vMCeVNFoFhGbERhj4hFMTQ0QLBWCg/u/EQDSINB0YHSLb6WALt6LAS2V1iJktMnNy2
         zUAWYEQWDj9C3RYViYvmcuYbl3PmZIVxA+ITHnAosiAaSgxsniBESu2vPN9vkNdh5fox
         58V9zfpZ5UC1vGY7bn7yuP4CUiIb0zPgtTEF/J330UqFNjq0vzmg8gcrz06nKBPBV4W0
         CIB7/nHt3O0pWyDgfIT8AWVaVXrUzjP3cPhdob+k2n6Lg5a2l5DCxS4DWjJDltKq0ElB
         Scklra8kvqw+eQzFekryf1tsxtwApA8LO2q0IA3JADGK4obGnP4JXOfMbzaQ7KSPPQOM
         zkDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=adu7uxBStKzDMQeeqZd08TUnXd3WiFyv7OMWrNH2Fvk=;
        b=Zs4O4jKkHV0tpsBQRY37dzWZX75c0FcFkD5XU+6vXG6JNRY1ZsiSf0NWaVZhcfv5W7
         lqILKZhVRfsXuKsWxwgaApsmhsB9B4FajkQSqHzy6es/bRQFGGo+xjcwzfgiFIHpSlMW
         0jxWR2ltcKtcuddbHgPkAn49FIB5fv3i6lLSlidsWgSI9XPfBtkebvuyj6Z7HWOK+8eI
         QlVg2zw6l8hH7xWL/BybrLUQovD1Y4B8UGrmC0Z41GrBWGdEa2U/248IpLY0vcOSXoMj
         LapmWHJRk10L4ALQgHydSJAKF0oWTGIgCGorSaYoOFpFNri7vZ6deArxNqefawwSCtaM
         G/dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id w6si199210wmk.2.2020.09.02.03.16.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 03:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4BhKc21349z9vG2L;
	Wed,  2 Sep 2020 12:16:50 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id QGu27BKWDP8Y; Wed,  2 Sep 2020 12:16:50 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4BhKc14zNyz9vG2K;
	Wed,  2 Sep 2020 12:16:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 522338B7A5;
	Wed,  2 Sep 2020 12:16:48 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id 1Rd4fa65cdvD; Wed,  2 Sep 2020 12:16:47 +0200 (CEST)
Received: from po17688vm.idsi0.si.c-s.fr (unknown [10.25.210.31])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 4C7088B784;
	Wed,  2 Sep 2020 12:16:46 +0200 (CEST)
Subject: Re: [PATCH 2/2] powerpc/vdso32: link vdso64 with linker
To: Nick Desaulniers <ndesaulniers@google.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Joe Lawrence <joe.lawrence@redhat.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Kees Cook <keescook@chromium.org>,
 Fangrui Song <maskray@google.com>
References: <20200901222523.1941988-1-ndesaulniers@google.com>
 <20200901222523.1941988-3-ndesaulniers@google.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <dea7ef74-821f-0a1c-07dc-54e0c0d739aa@csgroup.eu>
Date: Wed, 2 Sep 2020 10:16:35 +0000
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

Finally I spotted it I think:

	make arch/powerpc/kernel/vdso32/ V=1

powerpc64-linux-ld  -EB -m elf64ppc -shared -soname linux-vdso32.so.1 
--eh-frame-hdr  --orphan-handling=warn -T 
arch/powerpc/kernel/vdso32/vdso32.lds 
arch/powerpc/kernel/vdso32/sigtramp.o 
arch/powerpc/kernel/vdso32/gettimeofday.o 
arch/powerpc/kernel/vdso32/datapage.o 
arch/powerpc/kernel/vdso32/cacheflush.o 
arch/powerpc/kernel/vdso32/note.o arch/powerpc/kernel/vdso32/getcpu.o -o 
arch/powerpc/kernel/vdso32/vdso32.so.dbg



If I do the same manually but with -m elf32ppc instead of -m elf64ppc, 
there is no failure.

Adding -m elf32ppc to ldflags-y also works, allthough I don't like too 
much having "-m elf64ppc -m elf32ppc" on the line.

Christophe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dea7ef74-821f-0a1c-07dc-54e0c0d739aa%40csgroup.eu.
