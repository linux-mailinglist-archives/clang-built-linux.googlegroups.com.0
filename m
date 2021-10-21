Return-Path: <clang-built-linux+bncBDC2RCVE24NRB7H3YWFQMGQECIY7CYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 121374364BE
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Oct 2021 16:49:34 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id c14-20020a37e10e000000b0045f3f44539esf700740qkm.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Oct 2021 07:49:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634827773; cv=pass;
        d=google.com; s=arc-20160816;
        b=tLYQ80AwsAU5Zv7X8cvJL0fB/K5yczWW/43wgl4SM21Z9jRHsjuwK+BFrPTPkANNMY
         heP2EbZAKDURd0h6hzvzvYXfY90lohx1llolZyRpAuXUiiyiIPkJrBRydjoG4j4Lr6cm
         GoWzmNgfcx+DydOboeJgZqcrpLSLqOCAj6i94/EtoYN1sO1VIUSVjArL15z7+jTKjYY1
         x1M9NKLWNsTBTEMZs9zqoVNuEMEyuUi3FMZ7/k+zAlBOZGsrzX9kjM6OMc+MzJp3zxrF
         qORJJCkoss1HOH8yWgfPly0zFphJxBPDqp3WM/AHoSONRecl1H6+r4tVjOv/TJ8S7srr
         dYJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=MS1xQ4OzjxKWHKGc3Pgqms/BEPqWpQvi11Ey3llWZMg=;
        b=lClBpp8LuIwRQOh9fAJXYcPfXflaYjjg21cDZZ3ArihaH92TsUJLjv38jtuSpyCJUh
         uUvL9BTeM/f7CcjXyehoA9gHhnoG6C/LZoDv7JO77AERfeDoJB0BQrzTa3BGU6xXDRIH
         ngO5+MZnCq7+hL9Q88NIqndicbAh8btjeCUQz9P8dRFA5qXcYJ64gYiCXAVeBeH7NSNb
         GKzKzQdh2tWYa9fy8w0WA2RNTNpGH59j8Ge7/CUqK03dGMCGgo5bRoEPpccob7J5trcy
         4/UgLtY37Y4UOdbysEgR5bHaJMvgHF5HUo5KrWvQCRTSjSDpz55d22DddzP2WwWi0OWd
         IzLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MS1xQ4OzjxKWHKGc3Pgqms/BEPqWpQvi11Ey3llWZMg=;
        b=ktIZ8F7s0yhxhc1PNgQ5cIeazNNoJTA+Et1MJ5y62XjzOVLIHpBCTJKwbF74Rdwa97
         l7oi75HHHdkJdZ2e5Fn6Sg9r5IhZ/YHspj0BqzeTOk84rEMYMdVwfm/wW8CrDCmc7UYU
         Y2gaK45F7kEudlskFcROtRlO3YhTbYimkYkgzLLRb91CQ6xcgBrgjQAEETHRtwu9htXJ
         Ay8OMKYmpWOuNLYqftZ7yvwpByPzGCqJc3KRoiDLrk/0vyqAIFO46qvPsMZ6h9ZQSBiv
         hYN3tkoxclp0Nqk8vvi0VyB67sGLSAuDijaSCwrEpPmMtC83NNzP3cHcBlzmeXv5YnNj
         VOgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MS1xQ4OzjxKWHKGc3Pgqms/BEPqWpQvi11Ey3llWZMg=;
        b=by6OC063+XBA+VO+blKnRXY2wlGk85MvktzXo515lR6X192vzEHVzZ1K310J4csuSx
         LD78xDY+O0six6gqNNeB4OcxowgtO3IPQMFNkXcgu22nIn5L+VLsBtUIzrYLfF06YhXp
         pkbp8cPDjjdunEY0a3msTmR3WH8EIULBCbQDqblxogDDbxQDPMnzFX84+gayxM9N3he2
         pFZAbkmhpv7ibsx52cXoryZm/0uof+bBM0QSaMlwyg+npi9lTRJdL4qMxAYlRjnxjXwh
         8tsCBjyJmXR2b43ytcWZMnfZBkxLtOg3wJtsQsypiBRhG/db9bhGMAZ/VQxx2YX8swmo
         sK3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303oQwk1xJ36gAAP7yIm3o7zEiApu/R/qgx7aZl5b9ipi/cfSq2
	uvszStD5H+AN7YhVXagMnHM=
X-Google-Smtp-Source: ABdhPJyAtl4nALr+Tk45zUWQSOk6Vd5Jx4LGY8e/cXkjXJj3L1HaA0tIRgvi/MIHfS6zG811LqJX4g==
X-Received: by 2002:a37:f902:: with SMTP id l2mr4649523qkj.511.1634827772868;
        Thu, 21 Oct 2021 07:49:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:15d5:: with SMTP id d21ls3129354qty.11.gmail; Thu,
 21 Oct 2021 07:49:32 -0700 (PDT)
X-Received: by 2002:ac8:4117:: with SMTP id q23mr6342214qtl.390.1634827772412;
        Thu, 21 Oct 2021 07:49:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634827772; cv=none;
        d=google.com; s=arc-20160816;
        b=y94m5AkC4YAAX8mrQbz/AG3yaK15T78fQSCjxTwMHii2XQNfRwAdJXFa+KFgbLMfB1
         jEShI9qEUCKrHj69UnYM8cx1xWB3zbB9Nti2KX2ZrNpyOvRhhPq2Xb9jx4d66IzeZyzf
         oy85+WlYZovcWiOv/FNFdKYe5H200muTbmpoCibl5x0RdcQ06KXYdUQ5cH8Sp1wrMhJn
         sdZligQI6zK3Bd/GF6wgXcxWOpveGysfJvric7wvuGg/cZI2g0jlR4Abs+eb/eA6jarn
         lR+nnr8699o7juN8OeVQfQkG3wV1moZiC6Tgl7GlUk7D3HYNYBzInDbQe1VtXi9BmbTX
         UhaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=8VVikAfAfelFVP6FXwoTAwLqGp0MjW6qEjxarn06lKw=;
        b=YrSB1pkyoD6vq4aWmRvOBDY9ztPZKDG46fbx9YLs6S0YpO+8RVpUyQaWVhJazUgaIr
         TnyrtRLHuxUBI9nHHQLXDitzfMFgfv1FJ1B08DvYbB7hES7hCOnTNWGFakeO8St7zplU
         0NGE0xa5CM44FWDrC7cOeCAaSbHb8nPkf8b3NbRyBCgNd3uzSqLiEBFRl+sK3zrO0pXm
         oHtQHbZxDLlGrYLCx3rCxYSA/B22TYQ18WMIJcOzoB7ZzDjccBENLXtK/HvBIUKTbSnD
         /CHoyCo84sD+PDlH16KAe9/Jd+L6/vUIgULEDr+lgI920LHE3nG37J+z1DrN/37MTAEO
         Lw1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-56.freemail.mail.aliyun.com (out30-56.freemail.mail.aliyun.com. [115.124.30.56])
        by gmr-mx.google.com with ESMTPS id m17si667011qkp.2.2021.10.21.07.49.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Oct 2021 07:49:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.56 as permitted sender) client-ip=115.124.30.56;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R111e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04426;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=29;SR=0;TI=SMTPD_---0UtAB4.e_1634827764;
Received: from ashimida.local(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0UtAB4.e_1634827764)
          by smtp.aliyun-inc.com(127.0.0.1);
          Thu, 21 Oct 2021 22:49:25 +0800
Subject: Re: [PATCH] [PATCH V5]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Kees Cook <keescook@chromium.org>
Cc: Qing Zhao <qing.zhao@oracle.com>, Sami Tolvanen
 <samitolvanen@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 masahiroy@kernel.org, michal.lkml@markovi.net, catalin.marinas@arm.com,
 will@kernel.org, nathan@kernel.org, ndesaulniers@google.com,
 tglx@linutronix.de, akpm@linux-foundation.org, frederic@kernel.org,
 rppt@kernel.org, mark.rutland@arm.com, yifeifz2@illinois.edu,
 rostedt@goodmis.org, viresh.kumar@linaro.org, andreyknvl@gmail.com,
 colin.king@canonical.com, ojeda@kernel.org, luc.vanoostenryck@gmail.com,
 elver@google.com, nivedita@alum.mit.edu, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-hardening@vger.kernel.org, clang-built-linux@googlegroups.com
References: <1634337180-92127-1-git-send-email-ashimida@linux.alibaba.com>
 <202110191006.68BB660@keescook>
From: Dan Li <ashimida@linux.alibaba.com>
Message-ID: <a8d3fbb8-916a-13db-fc60-4ed7881d2bdb@linux.alibaba.com>
Date: Thu, 21 Oct 2021 22:49:23 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <202110191006.68BB660@keescook>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 115.124.30.56 as
 permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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



On 10/20/21 5:40 AM, Kees Cook wrote:
> On Sat, Oct 16, 2021 at 06:33:00AM +0800, Dan Li wrote:
>> This patch supports gcc-based SCS protection on ARM64 by adding a plugin.
>>
>> For each function that x30 will be pushed onto the stack during execution,
>> this plugin, similar to gcc's pac implementation, will normally:
>> 1) insert "str x30, [x18], #8" at the beginning of function's prologue
>> 2) insert "ldr x30, [x18, #-8]!" immediately before function's
>> epilogue return/sibling calls
>>
>> If pac is enabled, scs push/pop will be inserted between paciasp/autiasp.
>>
>> At present, this patch has been successfully compiled in the following
>> gcc versions based on defconfig with kernel 5.14 and startup normally
>> with commands:
>>
>> make ARCH=arm64 defconfig
>> ./scripts/config -e CONFIG_GCC_PLUGINS -e CONFIG_SHADOW_CALL_STACK \
>> -e CONFIG_GCC_PLUGIN_SHADOW_CALL_STACK
>> make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
>>
>> Tested gcc version:
>> * 6.3.1
>> * 7.3.1
>> * 7.5.0
>> * 8.2.1
>> * 9.2.0
>> * 10.3.1
>>
>> A similar feature request has also been sent to gcc.
>> Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=102768
>>
>> Signed-off-by: Dan Li <ashimida@linux.alibaba.com>
>> Acked-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> This is very cool; thanks for working on this! I am, however, struggling
> with a few overlapping issues that touch this area of functionality.
> I'll try to give you some background on my thoughts here...
> 
> For a while now, it's been made clear that Linus isn't a fan[1] of the
> gcc-plugins (and Masahiro hasn't been too happy either, as the plugins
> complicate[2] things for the build infrastructure). However, it's been
> pretty important for proving out various compiler-provided security
> defenses. I view them as being in one of three states:
> 
> 1) stuff that isn't available in either compiler
> 	- e.g. structure randomization
> 	- e.g. per-task canaries on arm32
> 2) stuff that is in Clang but stalled/unlikely in GCC
> 	- e.g. stack initialization
> 3) deprecated
> 
> State 1 hasn't changed much really, and serves as a good "try out this
> idea and see if people want it", as a jumping-off point for actually
> getting the feature into GCC and Clang proper.
> 
> State 2 is what happens with something from State 1 gets implemented in
> Clang but not GCC. (i.e. Clang upstream has been convinced of the
> utility of a given feature, which should help with upstreaming it to
> GCC.)
> 
> State 3 is what happens when the feature exists in GCC, but not in all GCC
> versions supported by the kernel. It makes a plugin follow the kernel's
> GCC deprecation schedule.
> 
> Notably, since we don't have Clang plugins, there's no corresponding
> "State 2" for where something is in GCC but not Clang, but we can still
> enable it under Clang builds.
> 
> Anyway, this is a long way to say that I don't think I want to add
> a new gcc-plugin when it is at "State 2" (i.e. Clang has support but
> GCC doesn't.) There's no need to "prove" that the compiler feature is
> generally desirable, so it's best to get this into GCC directly.
> 
Thank for your sharing kees,

I learned the history of discussions about plugins, and also just saw
your latest patch[1].

It sounds reasonable that the kernel should not rely on GCC plugins as
much as possible, and it's better to submit such features to GCC first.

But we often face the problem of low compiler version in practice. Those
who really care about security should choose to switch to the appropriate
version, but it may not always be easy for security guys to push compiler
guys or customers to make changes. It's even more annoying when this
happens frequently. Providing plugins for lower versions of GCC will make
such things easier.

At the same time, it sounds more reasonable to dynamically select pac/scs
for SCS, but there are also gcc <7 versions that may need to be supported.
Another case is forward edge KCFI, I'm not sure if there are other ways to
support low version gcc besides plugins (please let me know if so)

So what I want to say is, after both GCC and CLANG support a feature
(in "State 3"), could it be allowed to support for this feature
in lower versions of gcc through a plugin?

[1]https://lore.kernel.org/all/20211020173554.38122-1-keescook@chromium.org/

> On top of this, there is the interaction between SCS and PAC, in the
> sense that the kernel will need to be able to dynamically select between
> SCS and PAC (likely via the "alternatives" infrastructure), and that
> needs work for Clang too, so it'd be a good time to coordinate this with
> GCC. (Sami and Ard have been working[3] on this, though I realize I don't
> think there was a specific bug for it, so I've opened one now[4]).
>
I'm not sure, maybe it's a stupid question ...

Do SCS and PAC have to choose one or the other? Although the two are
similar in theory, they can be implemented without conflict. If they are
turned on at the same time, it may usually makes the attacker think about
one more step.

In the case that both can be supported at the same time, is it better to
let the user decide whether to open at the same time?

> So, I think the best way forward with this would be to implement this as
> a feature in GCC directly, and to see if there's some way to coordinate
> work with Sami, Ard, Qing, and other folks who look into this.
> 
> -Kees
> 
> [1] https://lore.kernel.org/lkml/202103031334.8D898CA@keescook/
> [2] https://lore.kernel.org/lkml/20200729031537.37926-1-masahiroy@kernel.org/
> [3] https://lore.kernel.org/all/20211013152243.2216899-1-ardb@kernel.org/
> [4] https://github.com/KSPP/linux/issues/168
> 
>> 2.7.4
>>
>> -- 
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1634337180-92127-1-git-send-email-ashimida%40linux.alibaba.com.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a8d3fbb8-916a-13db-fc60-4ed7881d2bdb%40linux.alibaba.com.
