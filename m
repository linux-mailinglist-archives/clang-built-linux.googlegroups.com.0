Return-Path: <clang-built-linux+bncBAABB3VV6LZQKGQEAQMBO4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C42193EA2
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 13:07:11 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id 20sf4933448pfw.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 05:07:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585224430; cv=pass;
        d=google.com; s=arc-20160816;
        b=y45my92aQ/cVy90JupDHbUbRg5rWISIDI6OrBGdA04DNIYwvF1j5gw97cl6jxvfir0
         X8htL6k5jAqo2RPpkK3COIozrSRIpGlgN8rCVH7ROSQLZ9sS3TiW6sDKv7x0FgNFDqDd
         +D58U3pmY2n9ERGCresRk0fRNLuMOomuH4ipE7uiYVgxAjljrEbMGfHvuoYo5v/g0akQ
         1xaBOeWSUrgqlI/l4pRMsPVSvUuQHgE6cLeHaRAnKNGgXXXJewui+ii13whqLL2BqVO4
         C2MrDFlWHuRQNNxHcKujEitJej1T4BlMHg8xUyWeFmdIqEWis4rgGiBsGihGlO/cBvKV
         wTbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:cc:from:to
         :in-reply-to:mime-version:sender:dkim-signature;
        bh=1S3yPodK62mkBuMe2XxXTBTF04kR2wq1Q4081udNkTE=;
        b=BoASVRz2FDIvu9VxTcQ/7GY8f+s/yhdC/KT+wPD+SHsOQFgpfwo0wa+WkckKhHOlNW
         3feEsB0jID5Gq4+36a9MStyC4GFJjG2cyWLwVMXpUuUOkDfftqC8XLbesvoFlNMs7L/9
         7QyCIj8FOCp3wigeCYcBhsH+Ol+4+t4PXKF7CS7cGHQxPVEXHKA4JOILihATewXRFvkv
         44qonLSe41rzOmJw30b440f9lbqFQr1Y5i1zQDO2EoGKtBarjnNLpEiUFKdxe2Chw+cP
         t5fMETdHk3YHZShOI3cIohkX1e7fhiEvw011QncwGNSUNENvo7NSLgse0DI+wxVyvE/F
         ke9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:to:from:cc:subject:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1S3yPodK62mkBuMe2XxXTBTF04kR2wq1Q4081udNkTE=;
        b=teoDlfnh3BFgHuzCznONYO+X+uemG8jGGPTaQL1ogdE0Gt0oiG1RKMmnxB39s2WOsZ
         +jATS+xEscdVc0C7bCKLYoUrErLM6qHSA5hvLeqmuB5kmY7FfJOAwx8r7B4xxlXklVTj
         wmBlf1mmjcPIyUM3V7mlfPAcHtzZgTLYXwrXMqE3LNeeC+Q+6VBWAqrxNKPzqVibGAHm
         D88XHJJQHUMCrX9F0h1I89ogFggJgexRAnl+nal0ZoiDbTZ6gfsvkW8zCaoI1ADKchi1
         iYQwQbKdmcVO7fZM8Ih6UDABq8IokJ5SivZHRp3TmnczJcsVWR9aXjA/zR8dTsVoNBAy
         9iQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:to:from:cc
         :subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1S3yPodK62mkBuMe2XxXTBTF04kR2wq1Q4081udNkTE=;
        b=XURHsODmyzVdD1kUp2PLhpP/z6XA56Uk5z0tkVKTs+9IqsUZDxsSwfIw2cNXHAB/nH
         pP4cH17D0uXZth9Y4Zc2IJEfEQc6pQ++9f4XK8sDUj4QhxsX6HsGLoAYAoMm38ONAfaU
         GufXqpURYlUJ48et6RWMXP9uDAVGRlfd5A1KvJbJXVANZudGJlbtx4DmLZerI5wd2Fo3
         mouz7RSXqrRWw41HIGwH4RL6swLHFnQxxXYLcm2z8ATa3Awv9NlgEtn5Tlu9DId2WA8I
         owgFP0uHRNfjStxWdSv96lIvTh9LOnFC74VBtee/BUT9cQamXHHm5PZr+HGimKDgaiRQ
         +5OQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0gaS4bxL4i3FudJ5w3L4rp1XARojmOZaa8i/Zfi2rIrzr23EkK
	HcZEmWFDzDcODNjiuoVtSHA=
X-Google-Smtp-Source: ADFU+vuLdebc0xqn9bYvTLMrM7m7lSnrALWCfyND58L8AJXaq1ujLCfj/Xk/kcShVzVi+CiHf7XuwA==
X-Received: by 2002:a63:770d:: with SMTP id s13mr8245221pgc.5.1585224430224;
        Thu, 26 Mar 2020 05:07:10 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:834a:: with SMTP id h71ls3488824pge.4.gmail; Thu, 26 Mar
 2020 05:07:09 -0700 (PDT)
X-Received: by 2002:a63:35c1:: with SMTP id c184mr8335981pga.121.1585224429791;
        Thu, 26 Mar 2020 05:07:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585224429; cv=none;
        d=google.com; s=arc-20160816;
        b=M7eVyoOjoc96/No0c7JpyBbw9gT+/8jGdPyC2fh09CF2IfG9k58XqQVqZYJ4mS3Z9L
         Fo1O9/QkO3VAM1pbu/pBv8sQN4P42JT/BdtGRCxdQkoXPQ+bBFgJvGypyCmKBEr5/uyS
         YEJA3IXAy8g1/AlX0QqTxdkhx6iCfYQ3sV+4/ED12p045NFqa01n8VZp1Oqfs5/JOZ4d
         LJRFG9zAaA6IQc9mhNF+WkLJ5jADPU6n7c5Jw/k4rbxlLzPEylWHhmk34jXr/Jq5kIG0
         6ZkgKqq0dq554VLkAWSyVe/wWEWs1c/tx1nTmXdIhB6TQ5R6D4MsTfm2kSXENH1CyK44
         IyEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:cc:from:to:in-reply-to;
        bh=FOZNVFtIdrKBxP7Vjwt+49PcyZpbeTtdzI+/pQjFTXA=;
        b=00FIIeYyJhvuM7kBKlv0s+sphc2JHQyXuWNn5nRS2flFVtLiZGoqV3pnUcR6ydbX39
         Hla9uYdfL0w7j3GOZ7Mk6s6xoUs8pgP7lQ2ppgL17Uk3MVHTdb5VOpztArSQe4izWIbi
         2sKloJNisxis1Ptz8atJV0qC1mAqxaC0HPj2fHfxcfTWz5m2oqg3PlUAd0Pn+Af772uV
         cBvemHhAOBCbUFgFNoGsYRS6iGwtGE684jxAgzKUz/d4j5oqTEW5hd/ZimXP1OIuU053
         cmFgSfgqyzQOQL0TiZK6pxHz7au7tWBPo7pBDbIQsTpK4lGRVHOseHFIMPS+RFpJrbvL
         BFUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id y1si147192pjv.2.2020.03.26.05.07.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 05:07:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 48p3d34sgtz9sRY; Thu, 26 Mar 2020 23:07:02 +1100 (AEDT)
X-powerpc-patch-notification: thanks
X-powerpc-patch-commit: af6cf95c4d003fccd6c2ecc99a598fb854b537e7
In-Reply-To: <20200323222729.15365-1-natechancellor@gmail.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>
From: Michael Ellerman <patch-notifications@ellerman.id.au>
Cc: Ilie Halip <ilie.halip@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nathan Chancellor <natechancellor@gmail.com>, linuxppc-dev@lists.ozlabs.org
Subject: Re: [PATCH] powerpc/maple: Fix declaration made after definition
Message-Id: <48p3d34sgtz9sRY@ozlabs.org>
Date: Thu, 26 Mar 2020 23:07:02 +1100 (AEDT)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=michael@ozlabs.org
Content-Type: text/plain; charset="UTF-8"
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

On Mon, 2020-03-23 at 22:27:29 UTC, Nathan Chancellor wrote:
> When building ppc64 defconfig, Clang errors (trimmed for brevity):
> 
> arch/powerpc/platforms/maple/setup.c:365:1: error: attribute declaration
> must precede definition [-Werror,-Wignored-attributes]
> machine_device_initcall(maple, maple_cpc925_edac_setup);
> ^
> 
> machine_device_initcall expands to __define_machine_initcall, which in
> turn has the macro machine_is used in it, which declares mach_##name
> with an __attribute__((weak)). define_machine actually defines
> mach_##name, which in this file happens before the declaration, hence
> the warning.
> 
> To fix this, move define_machine after machine_device_initcall so that
> the declaration occurs before the definition, which matches how
> machine_device_initcall and define_machine work throughout arch/powerpc.
> 
> While we're here, remove some spaces before tabs.
> 
> Fixes: 8f101a051ef0 ("edac: cpc925 MC platform device setup")
> Link: https://godbolt.org/z/kDoYSA
> Link: https://github.com/ClangBuiltLinux/linux/issues/662
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Suggested-by: Ilie Halip <ilie.halip@gmail.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied to powerpc next, thanks.

https://git.kernel.org/powerpc/c/af6cf95c4d003fccd6c2ecc99a598fb854b537e7

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/48p3d34sgtz9sRY%40ozlabs.org.
