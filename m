Return-Path: <clang-built-linux+bncBCWYVWVBVIEBBQGGTPZAKGQELAT4SNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC4615F291
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 19:13:20 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id n23sf4449395wra.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 10:13:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581704000; cv=pass;
        d=google.com; s=arc-20160816;
        b=B27IT3xRsFweJkZQNQSgoDi8mACApTjeZ1HKWpfqSYTH3833rhcZGS/3ig9BaF1CRN
         K9SNRfscOEACsRtZTaWOKQoS6vsMzzIvC6n99AjLeZWboYWWt57tVvj4ORGri4Ci/1mT
         c7ARArfjsLBQMJ2ckBlclcXakIPAECU7AZJBfgdS1oWSOzuT5No2JIInPPrJ1G3bgmhI
         LNg87MmrDSSFJfbFCQXuie49P4Km1SN1fhb4riq+TFvJwOOH3h4BC2IsKxjaS5mJhvm/
         6vvOJm+4APLZFj7uxR243qn2HCBB3uwrieq0Pqk0A2lFPIlEzbDqf/OnSiJ+t5/jfFH9
         tXRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Kv+HEckbV2EK2W63Bc7fa9HXfAwrtMtcomXTyscd9eU=;
        b=iyZ84t7GuUBC7vPqhiWaqtxa9s+q7pVB9rl1liUcSJaLmoYOqZ2rfO//zy6VqD0PyE
         SZl2zksHSLjbgxMNTE9yLH1wbmkxsaQAPNvacY6yAMDBp0rWhGVDh4PBcKxpTUoOykWQ
         pU/6yE8IiDorRJZqoRW3KD/wxc0q3gIZ5fdRnEKZJncLBfSeedGbmaPeVEvAbNFFQJgI
         1qAr+nqfr3CiQBdD5h+l2+/ysamTIkuxmi0MEOc/K1equUZB5jlucw4bF8EDJKAgMMRN
         jVfN79tiQgT5aOT0eEe7ExqH32pmPfthOpIfuhFdAd4yZ/zkQffh7o6Of+AhVb0tWMMP
         ARXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kv+HEckbV2EK2W63Bc7fa9HXfAwrtMtcomXTyscd9eU=;
        b=lcEhlmMadasYkPd8Q/+m8o5Rh0eYS+qYtBBZBtvDHJqaUy10Q0F0WQLcuvPQpWbW3k
         94GvGBzHd4H0jhowEpRuQ1m37yU9x2Yxt6EHzideYk6pyANPrufg8whQxYEaNk21AJOZ
         Z8UWpgOXIuBaAWw5AHbqY0ix67m0Ru45iFmx5CoAjtPp5ch05h4U1s4T3miZBcDPL41x
         G9GfobE8LO/w3smsfAsLxDJMlwyx2/+GiFJrhbQiS4NNzxe2wooOCmyTZwnuyLQzeCL/
         4QvxNbdGgZQIxe9TdG+JlVmmQDdxNEJOWq0xR7OI5+mprPsUtrsk6hHMfrSIX/FfhsuE
         PmwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Kv+HEckbV2EK2W63Bc7fa9HXfAwrtMtcomXTyscd9eU=;
        b=sZtcz6jDKCWpM1C4rR08pjfT/Pl9fD220iB5des1JisQIXHNnv/8Eeq6qmndeItiJr
         1nKVg5xfrQcWtupwTEwzy5p2qMMTeIIGU3jXW0PqPdYWz27R+sK+mCMJraT5xsWqa/Kz
         JEV6CLuHmWJzqJuKEcg1rtnQfXgs3x1598kdIJjk6Hx6VYSX7vGsXMxlTvrF3gqbuyb+
         xI528zB8AikD20QhPDiJ/urzOGTOg1GM8CksyijfXJBr7WrAXFMkt7QLPwuG/+o5XnhV
         zvrLjDVs+vUFpsGN5iUczRgAs4uv+sSGYZsgNP52fdjq5q5c6shMF9O0U3mdrf56h6bb
         SxBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXU6rhnDUQnozP8jBtIVvYPWurtalPLI+8vDF6iTflZzKIfhjdn
	tG9scpz5sEt/exaEWoZ+WWM=
X-Google-Smtp-Source: APXvYqxNUIkPllXbAY+joaP+Y9/l8AdLJlF7an36g8K4dumMqFjurRlW21M7aqgTSG+szxOsKh932w==
X-Received: by 2002:a7b:c242:: with SMTP id b2mr5708353wmj.19.1581704000521;
        Fri, 14 Feb 2020 10:13:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a8f:: with SMTP id s15ls1734238wru.7.gmail; Fri, 14 Feb
 2020 10:13:20 -0800 (PST)
X-Received: by 2002:a5d:6789:: with SMTP id v9mr5526218wru.55.1581704000026;
        Fri, 14 Feb 2020 10:13:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581704000; cv=none;
        d=google.com; s=arc-20160816;
        b=VOWtq64aS0iVPiO4IQXAMmTe1QnM39s5SjempbuC/X2NAnML2z74W+l65RtGhpzk7K
         W8YQfk85RO4fPRPjkQzppURV9gswSkiZe5NxYAiX6grjiXIlq1ui5YuhbkvQ+vDv06wv
         QxRjOExcsEtUy8k3+Kz9l2/MgfKWKhBHqCkW/CnYIqdGEt6bujMzBtThwTRWonV+T3+J
         YX+aYa1/uUHOl8nsesajolenwFPBJ3coKAPFtGnaFvgNnX5Ap1N7Ia3pXMgyf5CEdjyn
         qIRLQq+MyFSc66bh8Q38qtV/7nDm1f2+yXtR+3CJLMHcdPFLjzF4PRAd+GekBoPD0HB6
         PQmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=vJvkUieP+398Z90TkqQKr6tU3AKBZ7A4Scj3h0DmU8g=;
        b=swWxMt+YZBHlDYSoeJhm4NCPD5Q/BVoKTcudUNYsISXZUUmNXtlULUsmSaKhB6nXQb
         WUaidgwWAuBafpTEA6DS2Us3ev1SAS4ECa17YyPPB+qCqrmDHhfliMNqBiuMfL6Z1cIU
         XZTah/c+kv9ngKzFgBS5PehreUxUcujXyC8q7MdmTTUpLd2Ma+ZtBYC3LTstHDW3ogWu
         C3zFTX/hl9I7vGa9pDiL/m6VlK7E+/fwWMw3NPsWMr3mAJPTw/xZ1SCzxGDOnhFoHes9
         PCgHrWmdnHLX1p3eJUANQEOeb63zD5HpZLg+mJTuOeZxElWlCBiXxbMGwEhqSfG2IIjx
         rf0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i15si383076wro.2.2020.02.14.10.13.19
        for <clang-built-linux@googlegroups.com>;
        Fri, 14 Feb 2020 10:13:19 -0800 (PST)
Received-SPF: pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D5F6328;
	Fri, 14 Feb 2020 10:13:19 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B62A53F68E;
	Fri, 14 Feb 2020 10:13:16 -0800 (PST)
Subject: Re: [PATCH v7 11/11] arm64: scs: add shadow stacks for SDEI
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu
 <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>,
 Marc Zyngier <maz@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 Jann Horn <jannh@google.com>, Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-12-samitolvanen@google.com>
 <dbb090ae-d1ec-cb1a-0710-e1d3cfe762b9@arm.com>
 <CABCJKudpeTDa4Ro1aCsCJ-=x97SG0qu5LGpj9ywj1aLOtboNkQ@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <a0ca5766-fb76-a498-ab2f-3015f1335fe9@arm.com>
Date: Fri, 14 Feb 2020 18:13:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CABCJKudpeTDa4Ro1aCsCJ-=x97SG0qu5LGpj9ywj1aLOtboNkQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Original-Sender: james.morse@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of james.morse@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=james.morse@arm.com
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

Hi Sami,

On 12/02/2020 20:59, Sami Tolvanen wrote:
> On Tue, Feb 11, 2020 at 5:57 AM James Morse <james.morse@arm.com> wrote:
>> On 28/01/2020 18:49, Sami Tolvanen wrote:
>>> This change adds per-CPU shadow call stacks for the SDEI handler.
>>> Similarly to how the kernel stacks are handled, we add separate shadow
>>> stacks for normal and critical events.
>>
>> Reviewed-by: James Morse <james.morse@arm.com>
>> Tested-by: James Morse <james.morse@arm.com>

>>> diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
>>> index eaadf5430baa..dddb7c56518b 100644
>>> --- a/arch/arm64/kernel/scs.c
>>> +++ b/arch/arm64/kernel/scs.c
>>
>>> +static int scs_alloc_percpu(unsigned long * __percpu *ptr, int cpu)
>>> +{
>>> +     unsigned long *p;
>>> +
>>> +     p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
>>> +                              VMALLOC_START, VMALLOC_END,
>>> +                              GFP_SCS, PAGE_KERNEL,
>>> +                              0, cpu_to_node(cpu),
>>> +                              __builtin_return_address(0));
>>
>> (What makes this arch specific? arm64 has its own calls like this for the regular vmap
>> stacks because it plays tricks with the alignment. Here the alignment requirement comes
>> from the core SCS code... Would another architecture implement these
>> scs_alloc_percpu()/scs_free_percpu() differently?)
> 
> You are correct, these aren't necessarily specific to arm64. However,
> right now, we are not allocating per-CPU shadow stacks anywhere else,
> so this was a natural place for the helper functions.

Fair enough,


> Would you prefer me to move these to kernel/scs.c instead?

I have no preference, as long as they don't get duplicated later!


Thanks,

James

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a0ca5766-fb76-a498-ab2f-3015f1335fe9%40arm.com.
