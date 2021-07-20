Return-Path: <clang-built-linux+bncBCQPNZEG7UCBBU5X3KDQMGQEFH7ORGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 64FFC3CF72A
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 11:48:04 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id p3-20020a0561021243b0290295f520a6fdsf4838767vsg.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 02:48:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626774483; cv=pass;
        d=google.com; s=arc-20160816;
        b=EFv3Lm00a54dZq+fDWSDdG81JZYfZEBbeNzk/t+9MV4+Bm3tOzIZ5pIO+3pnepFTDT
         oUkj4KSJKKSnlVTkTRb+F1Lofoh53SUOjHM7r/nI2PE6HwPearb9WzCwyWplhbkTpazy
         ZqRhN7KS4y0Q44Syn7A6TE7AwrYMPzB12eKDFLalCkK/q30OK0j9subuyRCV2P9VhwNA
         6QBsFzSWklBMG/plwDa3boFyV4xL7mx4vzi70LB08lwlTp7GKBzJepWbAj+ibK/hTYTP
         rWtq7lY67ys1hFVH3OaMH0A+JVlpBVvTXMVp28fMTqOxPTxWkX8KqG4qkZFBHLmZSQtl
         QoTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=XC5pU7t53uKobRaTJHD4Eaoj8xc3ll+ucIT7m9U0DYE=;
        b=PE0Csrykyn4xlIiXtVcWgZXD6M0kiQX/1yaCsO/mHZ1uwWRd3hqD6HNVO8o1sxZR1w
         AsGPi8KTM1UXhiaENiCqZAHUcFx0WMhcw7wGEJ+zF7bU0T+lL7gmy9XuLr6r1DTyFwEq
         lXkBOjLxpESEAdyMDq6Lm7oIx7d4FCVYD3vitlk56/ZwpXqhDcueOGHavrC0ojPYErqi
         tCS25uYGbJ7jrKtAxPqjS9btNXlpoXVVBg8dR0Ms5r4YcRe0IYzn1zI0+6iEjMtWUzmp
         WeZjxbq38haPp12CVFY/p+UwJgE3s3LkS67gbbQjfOStOm9h+wv4N+K4MQRQrn+qhFza
         DeZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M+Y6Hvmh;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XC5pU7t53uKobRaTJHD4Eaoj8xc3ll+ucIT7m9U0DYE=;
        b=Eh310zNvUiPmiufI64F3JStGed8c1V7QxuEgmUpTma74zkNNgNgHZ21a+ACtSENpRa
         0NO4tUaQL3ojxqHSLYIRn76Gkdwm+1E4hn+qxI4us23Tf//TvwD282N7/eiFlFC8NuC2
         Mbv5CXm2sQxFdXvuId+F1mMKIjeLaqbHemEBf1FPg613sKYDG4xanGrG276UlVP3VmLS
         R/IQrcxiMJCUfPfijkFR6d42EEgjeo+/iniQXJYfUm07yQMtKS5967xCizrJybqtiJEd
         GYqb0oTX0he/OAkBIs13LYmh1HNEY5BnBFpLrStIaL0+iJLkwONI8jVd7sVceveKwhOL
         4nvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XC5pU7t53uKobRaTJHD4Eaoj8xc3ll+ucIT7m9U0DYE=;
        b=QKuyoR0EsPx3p1cg+9lhmCqRI6tCoHdyyapcAvDEL0wuyDPIAR5jW6Sh/DINNXlLXP
         WF8At0+lWIDnM5X8kd75exp5/Kmm9nTbnkJLaYdJJflYZXMZ+eoMvRYdtLL9cOMEx8UY
         KvZz4Kv+DrevIAyCQEJa1czJsEK1+16mufdjXymmt70dd6LHM6VfYHVQPzaI9x7HMWIs
         2bkExQPTHxVxxjX5Uakw8fqBNQVutcJ/csozzgOyumNBYrwnAivNQQ60XK9Y1OSprDmW
         AQI6FVrRwuj686wE2XusUQ7FynTA7qPXj/LKY4RoyN4OTCDLOAT2OhCBGoh4xX7ulPOv
         6m2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XC5pU7t53uKobRaTJHD4Eaoj8xc3ll+ucIT7m9U0DYE=;
        b=G4OWw1DURXS4qUB88F+TPa5T0SWORIo27SfBM8zbgTJx49m6ThDOaLB8NOoIE5D6bj
         h8i2/Ky9fZnWk94DiO9hOQI89UlwffdJqHqFfZ405hKBkt3bw2YIEH+fZlUyRdjMep8q
         Wov/LCunOeHyEzmNHBXCwbreoQc2+eq1Nk7kcl+3PzMscTxJA89cr4QUNIQ9xrTaj1//
         bIDqnP2cKgPc2oBVr3WX2curjw43K+xj+rqsb/NSIIUBK4oJs3PPXB9nPLNFmEeTkhb4
         rc5DX/0jUS+0yuFqws/7joDXHK+HzKvbzg2h44QbrojWE8p00xSQicbG3yg+GJ8C6tWt
         LqaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iPRhxyjNBTLdF87ZBgT9CJMeGLSXqFsJwUtP0X8uwgpU+JwZo
	9YZBSAGSykalNsACENtQVLQ=
X-Google-Smtp-Source: ABdhPJyNkoHFo3gQyEUqR38Q1AqhqC4EkWRrOmmbP5McB4PJ5Co8RTTYWkW3ZUk8b5GuxpjvtYNkig==
X-Received: by 2002:a67:b004:: with SMTP id z4mr28345744vse.41.1626774483489;
        Tue, 20 Jul 2021 02:48:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:ec5:: with SMTP id m5ls6041535vst.11.gmail; Tue, 20
 Jul 2021 02:48:02 -0700 (PDT)
X-Received: by 2002:a67:b143:: with SMTP id z3mr28022294vsl.57.1626774482867;
        Tue, 20 Jul 2021 02:48:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626774482; cv=none;
        d=google.com; s=arc-20160816;
        b=w2/OyWywfulU2PJFm8Ze7drFiilZQWInPhrzwD0QH48Nch6LJ5guyBXGs9q31a5Qo3
         tK3d/wUGonKhzQ4Zn5CMfXM3tTKeSET8rLw8NuK2CR9nPRED8kCrTyAfB1EI2eQKzMSb
         8woi8xSQ/cpi7hjBHH4fxufre+j08zgophTvYJMTA4m72gTtzEzjM2y1PAvbDCNi3u0N
         u8JGeWAp+AXpdOFQpZaa+DafFneP0ayxCi+h3R9jGjzxaV8FAsK3Ts6/MgaRY3b78TjB
         2k+l9L6CkpKTnN82iZYglUs9pPb6H+VjYbKI7vQDCNDkJSOejFbEQ1IA+k+l/ygwD06g
         FSag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=9lZklnFLXGHgC8ad/UoOH3TanlFmLXF5QTGl3NJHfR8=;
        b=bmLTiYqer2kd2emhITyKnXe1raZQuM4qX84DysPjMvTLC56K6vEff2U+axJwlk/YjL
         vDsHRFSTk5cdkvBFXJvtZy/MPjN+aAbhbtyJCUoUlfjVtQ/XZUIdUNlANa4G2d1qiLoq
         PtKClq40cLD6JubOjsiTqr6MHftQBepSagoY6aX8vqdoEZzFac0nuIvO52an3ZBwrJeX
         UHFnXEV21y1I824AFlw8H2OGDBsdZiU78to+FUcPTulgKCDVTyh73ZzYRCcxc11LNTtl
         d6nLozdJAqxMg/UeuOyBwquO7ZEqs66HEiY+G6hUWYXuERtUo1U4VFvFjKKEJPA5KvYr
         On7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M+Y6Hvmh;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id o17si956287uat.1.2021.07.20.02.48.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 02:48:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id p14-20020a17090ad30eb02901731c776526so1565021pju.4
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 02:48:02 -0700 (PDT)
X-Received: by 2002:a17:902:ce84:b029:12b:8c5d:405 with SMTP id f4-20020a170902ce84b029012b8c5d0405mr7624137plg.58.1626774482009;
        Tue, 20 Jul 2021 02:48:02 -0700 (PDT)
Received: from [0.0.0.0] (jp.bgp.twd2.net. [2a0c:b641:571::1])
        by smtp.gmail.com with ESMTPSA id q31sm1291608pjh.13.2021.07.20.02.47.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 02:48:01 -0700 (PDT)
Subject: Re: [PATCH 2/3] RISC-V: build: Disable LTO for the vDSO
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com,
 Kees Cook <keescook@chromium.org>
References: <20210719205314.1023455-1-twd2.me@gmail.com>
 <CAKwvOdmanKSL3hLM4HjyeZg+K7pAWCHDuKeBfU4YSGzEyH_CaA@mail.gmail.com>
From: twd2 <twd2.me@gmail.com>
Message-ID: <182e9aba-252f-1be8-44b4-5dde90a92d88@gmail.com>
Date: Tue, 20 Jul 2021 17:47:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmanKSL3hLM4HjyeZg+K7pAWCHDuKeBfU4YSGzEyH_CaA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: twd2.me@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=M+Y6Hvmh;       spf=pass
 (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::1034
 as permitted sender) smtp.mailfrom=twd2.me@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 2021/7/20 5:19, Nick Desaulniers wrote:
> On Mon, Jul 19, 2021 at 1:53 PM Wende Tan <twd2.me@gmail.com> wrote:
>> Disable LTO for the vDSO as done for x86 [1] and arm64 [2].  This also
>> disables CFI for it [3].
>>
>> [1] https://patchwork.kernel.org/project/linux-kbuild/patch/20201009161338.657380-28-samitolvanen@google.com/
>> [2] https://patchwork.kernel.org/project/kernel-hardening/patch/20201211184633.3213045-15-samitolvanen@google.com/
>> [3] https://lore.kernel.org/bpf/CABCJKucpFHC-9rvT7uNF+E-Jh20fz69zdO49_4p8G_Sb634qmw@mail.gmail.com/
> It might be nicer to use the typical form for commits:
> commit <12 char sha> ("<oneline>")
> rather than a mix of patchwork and lore links.

commit 004d53f8c96f ("arm64: vdso: disable LTO")
commit e242db40be27 ("x86, vdso: disable LTO only for vDSO")

I can put these into the next version.

> Do you have a list of diagnostics produced when building this object
> file with LTO enabled?
Oh, this object can be built with LTO with no issue, but x86 and arm64
seem to disable LTO for it due to no noticeable benefit for the small
amount of C code.
>> Signed-off-by: Wende Tan <twd2.me@gmail.com>
>> ---
>>  arch/riscv/kernel/vdso/Makefile | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
>> index 24d936c147cd..4535a77792be 100644
>> --- a/arch/riscv/kernel/vdso/Makefile
>> +++ b/arch/riscv/kernel/vdso/Makefile
>> @@ -30,7 +30,7 @@ obj-y += vdso.o vdso-syms.o
>>  CPPFLAGS_vdso.lds += -P -C -U$(ARCH)
>>
>>  # Disable -pg to prevent insert call site
>> -CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
>> +CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_LTO)
>>
>>  # Disable profiling and instrumentation for VDSO code
>>  GCOV_PROFILE := n
>> --
>> 2.25.1

Thanks.
Wende

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/182e9aba-252f-1be8-44b4-5dde90a92d88%40gmail.com.
