Return-Path: <clang-built-linux+bncBD45FSE2XIORB6E5QWAAMGQE63LMDWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0102F7420
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 09:14:50 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id bj5sf5066602pjb.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 00:14:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610698489; cv=pass;
        d=google.com; s=arc-20160816;
        b=xY/FJo9pd1Sdqwjmak+j2gCXiNBAodryY/XZY7qNIgu3VcKEWXuK7Np4Qet1wXzqI9
         J7+voZmkvtagWLVZ0JBbeaZYvnMMMPA495RrVLdVhLMT/0wACmqvYt9o6h+A+M7e6tox
         G3kS4mWGVTZeNV3ekfCgTNactB2CzGWMnjRZncdL41GSSkHWxEXUWt12ZuX/Yajo5Ghy
         juqx6PjbU40NHlEJMQaOg7Zm4cv6NfeRfYdN4nc4KEOXDkCutVQ99iOqXupIoZpPiFoU
         cs5lsoo8VJIdCaIKocrMUI67BruAK/Q1zB0yi54ocKlI1aYeF3h8CLp4Uvee2iUqvjos
         PGJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DA2yxruU/cvKYGjMSY2F0tPBeshepOLaptwmeYbKhRc=;
        b=xv+DLkAGQ8zWvxgCNE81/f4NBA1Mie3dDtHcdj4lxi064W6jv4yFTfJ06wZ+C+4BAh
         rWjdn17pVOcNT1OTruQ/1E0YhexYNJbStOl5+r9VCq6ZoDXN3PL9E5dHvXb766vRlwGz
         QPPVza03EM6RFZlygQ5hGuidlXb6tnqpkacVNZjsud8E3zpb/BQOyoz+34FRZSm2li0e
         M7WWsCgEoPW0GgsaHSCg20Tdv30PtrtnJiyP/IlbKcHOTiNXGc5ykRvIkzM0MqnPbzCr
         RWoXzqq6DS9Lnidl/tuGb2bp3/zdB1MI6Ucw3bC2qpPMBVl4zEvZvHaDYwUQKMpII/BO
         /Hwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j3lziUWJ;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DA2yxruU/cvKYGjMSY2F0tPBeshepOLaptwmeYbKhRc=;
        b=PxFtpWBiACUjIzhSNoiV00MzoP7KXO1V18e9JJ5dY/d4UU9YH7xLzL8OvIg05po7Dt
         g9GZiTjtmpJ6btfVstLYQecf9v7tmt6G0bt1nxS5eschBfZovrT3IzwMhu1CLY/Wa3wD
         /44R1hlXAF4YU8Gt0P+5HKRMhTiAFIBJkwkHgzXL28d3smxVaKPhjK4LO0yWnekzDhPT
         OMG5GwC5wR4SyCbVGk7wk7ZDAPSW7k59zIn6VGl3V1KAhB4Fuc5fK2o4cX85aLLUqnGk
         D8ywoKx/PTPDk5ARSAhQww/GRaiZaRFUi0BvdGRafOofSD+hNSx4AVkCkeOSJuN/zkFJ
         Pi+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DA2yxruU/cvKYGjMSY2F0tPBeshepOLaptwmeYbKhRc=;
        b=oZkU7L8IusnaGdWpYACoD8Vmp8Dxcn7sKb1D6FjrRAmAX+7amAFjQPXeuAmWMBHwPq
         6a4p5ihfoiPXYK1Rz3fCiNmo82oFQF3rHleH+sl4Equ7UgLB1nc+0Bgcow18sVHG984V
         dLcMntYBV0pZz+PdLrRvPQituu+Jfo46/ABOJDvpvo6bhFIdxh8gFkmi1S8w+MGtY5xx
         o6okK4fGmTfBwYIe/ns0SKVELJ1p3Cb/JAiMeNWHKCLM/KvxuL88bsWBOWWfoC/o8/5Z
         sRyjdaavv+/Q8iE2KW7HAWV3Zic5/tsG274PMyQLMzokkHdYE0ev7Mw5p7mM1XM0xZbv
         Zzkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531p8AVBq1OW0cYy5qkw2XJG3ABluUt/XvfZM9fsEPvMP330cpOH
	WbOvwXUWAuWdmZjjTMCR388=
X-Google-Smtp-Source: ABdhPJykTAwxp5Gno3lFVcEsuZUQlbkGIcV80pUfKvtabcxQoKErSkb/HXaB2Wh2At4pVm0ziWEeBw==
X-Received: by 2002:a65:6405:: with SMTP id a5mr11462388pgv.389.1610698488931;
        Fri, 15 Jan 2021 00:14:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7615:: with SMTP id r21ls3261098pfc.4.gmail; Fri, 15 Jan
 2021 00:14:48 -0800 (PST)
X-Received: by 2002:a65:648c:: with SMTP id e12mr11599278pgv.123.1610698488221;
        Fri, 15 Jan 2021 00:14:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610698488; cv=none;
        d=google.com; s=arc-20160816;
        b=dXPyLrzQRzazVElTOLeanwF4nxY4SawT9FKHK2N9JMD8uTQyyN/XGQJ0v+QGkwHrwq
         YW9GfxeCsnbLytD4Ys70/DiUj1sbCKnKNKrHD5dWS91dvj9HZu0lF6YETjIsI3bV1uLt
         W6UZk9gGCbvEjGee3ydEWLJwQRyA3sunug5uZUZBaBgj4AVmIKPwmzcG2BWVG9TCvChr
         w3GjJCjPryqC3r5pTZZ/Dnpb/eIDpEjW2szPghRTw8ElxJ13j5Jbh0HmrrQWeWkLv6CT
         MOGIRt+35ORqGaj7U84u4DS18g/ajoHMTsr7y1nYkLxWUWJvsOnTpyEQaa0xaUp1IRR/
         XRGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=AGB2FYlHkYy8Oqylnwu4GaXuq7mjj+kJASMcPXLkX3Y=;
        b=1ExYEj2EL0HeW8kWn5CsHz5U4JmKmo7lgKYVEXNqFAtQUmIG39XAuDm5WbQnlwhNsf
         7atWyS/uWNU0iBUQKKEesV38T4OE5s2ZWtW1e4OpDtyHvZObF1Xe/pxprRjvyak1qe+e
         EEY5QVoBMta7yLNn+aFNGpSsC8mJX7McbZjAHsV48u25idX/eVCJTch9J3zd7lu4dGf+
         SQxz4Zc/x41PQjzncaS31B5wypYIB2BxWoR22SklVgNsq9U1PsQSggwesCiWF9zGWhNz
         Lo0Ls6qUeLCS5J0WrqtP9PQBAGEwhWpM7H5ITFmsizjSXesKLcmzfL6gsk/xlY8FCi2O
         gIBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j3lziUWJ;
       spf=pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jeyu@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h11si938234pjv.3.2021.01.15.00.14.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 00:14:48 -0800 (PST)
Received-SPF: pass (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 513C52072D;
	Fri, 15 Jan 2021 08:14:46 +0000 (UTC)
Date: Fri, 15 Jan 2021 09:14:42 +0100
From: Jessica Yu <jeyu@kernel.org>
To: Marco Elver <elver@google.com>
Cc: Fangrui Song <maskray@google.com>, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v2] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
Message-ID: <20210115081442.GB9637@linux-8ccs>
References: <20210114211840.GA5617@linux-8ccs>
 <20210114215416.993167-1-maskray@google.com>
 <CANpmjNOrD76O2_Zpwo5RJ2d12gczuQpG9bJkXYLY_sOVeEVZGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CANpmjNOrD76O2_Zpwo5RJ2d12gczuQpG9bJkXYLY_sOVeEVZGQ@mail.gmail.com>
X-OS: Linux linux-8ccs 5.8.0-rc6-lp150.12.61-default+ x86_64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jeyu@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=j3lziUWJ;       spf=pass
 (google.com: domain of jeyu@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jeyu@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

+++ Marco Elver [15/01/21 08:03 +0100]:
>On Thu, 14 Jan 2021 at 22:54, Fangrui Song <maskray@google.com> wrote:
>> clang-12 -fno-pic (since
>> https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
>> can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
>> on x86.  The two forms should have identical behaviors on x86-64 but the
>> former causes GNU as<2.37 to produce an unreferenced undefined symbol
>> _GLOBAL_OFFSET_TABLE_.
>>
>> (On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
>> linker behavior is identical as far as Linux kernel is concerned.)
>>
>> Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
>> scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
>> problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` for
>> external function calls on x86.
>>
>> Note: ld -z defs and dynamic loaders do not error for unreferenced
>> undefined symbols so the module loader is reading too much.  If we ever
>> need to ignore more symbols, the code should be refactored to ignore
>> unreferenced symbols.
>>
>> Reported-by: Marco Elver <elver@google.com>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/1250
>> Signed-off-by: Fangrui Song <maskray@google.com>
>
>Tested-by: Marco Elver <elver@google.com>
>
>Thank you for the patch!
>
>> ---
>>  kernel/module.c | 20 ++++++++++++++++++--
>>  1 file changed, 18 insertions(+), 2 deletions(-)
>> ---
>> Changes in v2:
>> * Fix Marco's email address
>> * Add a function ignore_undef_symbol similar to scripts/mod/modpost.c:ignore_undef_symbol
>>
>> diff --git a/kernel/module.c b/kernel/module.c
>> index 4bf30e4b3eaa..278f5129bde2 100644
>> --- a/kernel/module.c
>> +++ b/kernel/module.c
>> @@ -2348,6 +2348,20 @@ static int verify_exported_symbols(struct module *mod)
>>         return 0;
>>  }
>>
>> +static int ignore_undef_symbol(Elf_Half emachine, const char *name)
>
>Why not 'bool' return-type?
>
>> +{
>> +       /* On x86, PIC code and Clang non-PIC code may have call foo@PLT. GNU as
>
>Not sure if checkpatch.pl warns about this, but this multi-line
>comment does not follow the normal kernel-style (see elsewhere in
>file):
>
>/*
> * ...
> */

+1 to Marco's comments. Otherwise, patch looks good to me.

Thanks Fangrui!

Jessica

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115081442.GB9637%40linux-8ccs.
