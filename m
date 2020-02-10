Return-Path: <clang-built-linux+bncBCWYVWVBVIEBBCFBQ3ZAKGQE2TZD5WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4CD158132
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 18:19:05 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id v17sf5298481wrm.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 09:19:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581355144; cv=pass;
        d=google.com; s=arc-20160816;
        b=pLc+dNqeeVl33dGdE1AmXKv4IBj9mNnj1ArO1x5mAGDqibYMk7q7g1cVGm1BNjwuLl
         N503Lui/IETO0A6HB00aEguNuW9HUQsq+ovBT3BFMOsMGg1Jm4z2IWbzF4ak3lLT+qwu
         Z+GKnowMJdXE88gu++DRyu1hSisMzTd15aei4nA6VE3yRa+XOQeLsOr1U+h53BkbLpCB
         n9XNrQSZHoqpqbn3wjvSZwQzt4bjEY6E5CjYBBuw4xBmRvsMy2WOlmY+DoJGDKbwEf4s
         hH0rM3M/CN2RLHMbTdxmlji8hfe6r4Wz1TfRov/tDnGyrY/bSxt+4Iwh3hy7hUe17tSs
         uRNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:subject
         :from:sender:dkim-signature;
        bh=UDWXM/8SbQjVBEk1P+YmVYtrDycUFCGQ09d1lWWU47U=;
        b=jtmk/AgrbH01FZIjKNGR5HzPFUErRetawvII8qF5XvLdK/XIf67sFNieo81KD4XoOO
         j5KEaj6oWv1E6v47XKEHwqnmMV8H/W+13uDflwewK1YatCgH5UZQlhJ9kBTj/5Y8M7t1
         ZrHM3LLMEORe/73RVsqCiqvS/mDnO9x54UB1p40LJd9IDHWY7An3xsJ2LZ2IH/ZbY3AU
         fFgirMubCMJQDzWSkOewc9VI9cfkTUKroe1RPwpZ9U75E1pr5AteZwY+uIqqHK9iKAYi
         Ya9xDGzcKdgN6q6UUuilZaYdgUpIAoggkUZ8ZraDI79VIW9qpUpMfB6ocGi+96jh3839
         OGUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UDWXM/8SbQjVBEk1P+YmVYtrDycUFCGQ09d1lWWU47U=;
        b=pkncC2l/TagZciSN9reZ8Mkh5kgSG3BX5vpTuAITwwg8yazf/i0DHUEjabx9Mx4ss+
         EsWTBAgEZGWiqK2heBsbSY6J5wPoNQAjY3M18p13gu+6+e/pHF3PWfc69JW0DQKQWuvq
         pCXE+D2tS1a3AcZwkh0rifNv4P3JGc7C4Iu/WmgPP7+VrIJr/7k5SECF2sa4E+rIJNAC
         bAdoIEuyTPWAvMCsUGrEXD9iudgCIGQhTy7bwOT2tyQVaDQk71L7Pe4IiEdLtvQ/B5AI
         98q/VAQwsDu3fucqycHHbSb0v9Pb/OCiD6Ef8NFyQ/fU6iL+pZC2DmWJgqVtLIsyoyEd
         3fOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UDWXM/8SbQjVBEk1P+YmVYtrDycUFCGQ09d1lWWU47U=;
        b=GdqabdhaORdEhUJirMJ0U7RBBFM9eefvT4zxzR27IiUDIFVSfWaTQahxSgeMKu1q4X
         QPOVr/xZhd9F/lIhXvmGUjNHHw9e9xL1RR5WG5/cxtZ0ppo8verjob1K7/Ens4HxhhCW
         Bpz3kAENX2vAlIG7vT/iyKDma36Z3LKloul0JpP1RCxX/087REuy+MDi61PHOitWXFd/
         qmIaJvyYGmYlJFKJRs/ovx2G2XtlAhDzV4EsQpIfb+QYGga5f9WvjEDs+avY645lF+hP
         ZoS4Z1UfQX7rjD0AAsZowdV/bkRk8oBA/LFVoIRAqKqGJjLtC0ylZmvPlGpON3rnK03X
         XuzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVgStf5q6i33MmSAk90lC4d1GlafemYWpXp3KpOGb81pGH8LqM0
	6zV8oUXlOElLih62+qJ1BRw=
X-Google-Smtp-Source: APXvYqxXbhAWFpQkM1fh+5Ma8HiiAYZVfKl8RkZHYx6gcmToMBP03GEiH3w9JSwfriW75AaqqtPgfw==
X-Received: by 2002:adf:b352:: with SMTP id k18mr2957474wrd.242.1581355144832;
        Mon, 10 Feb 2020 09:19:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fc89:: with SMTP id g9ls5723406wrr.5.gmail; Mon, 10 Feb
 2020 09:19:04 -0800 (PST)
X-Received: by 2002:a5d:4c84:: with SMTP id z4mr3104067wrs.423.1581355144328;
        Mon, 10 Feb 2020 09:19:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581355144; cv=none;
        d=google.com; s=arc-20160816;
        b=xh4f7ptB3apOCGRcI0CQIYTyGgKVzO+1Yu+8M+4vx+yZQ6z5dQWaYzHm59U5zYUeJO
         HKWn7D+C+1Tt8Ucz+h9sdvBLl7LPcSfTNnLZbZ6BTeSeGYe572ThYi4CFfxZfpBj+0Eb
         xWjRlOnuBXdtSj43V+wALsYpz1Mv+EJ8ykRZ/lG+M8MozS3Fkmuw3AQtyFl1I3Oo71vd
         Dk5ffowF6lgozccshduhGyeY8lb9/xLXeqdWRQdqUPGMdO390+NUAcH/vwS6BHPHkzOp
         7SxcnxnNlocx0ch2E/X3AQDYmq+JEBwBF4ARv0cz6HTV0YzAqQ4dbcnJjx85sVibe4dk
         Vhfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:subject:from;
        bh=PbN6nRH1DPk9mm+8rVKmwluy8aGVMfR84eKhkCGfbz4=;
        b=qFR2I0/rNcjb1p4LYeT87CKu6GptssyTLHpLFfskSHy4qkuRm969x6b2/vTJqnkL7y
         R0g6eGv501u17bLrm8fO7qh+R+8B98U6Zbc62fmcRg1EDq5bZxk5S/JvA8fIFOaoyJsF
         e53KyZ54kqN4UOpIL1+d7O3oOYrYAkdaiozz5cXLmnPNly7wvHsCaWlrFHa/j82NIL5U
         15iUC3EcvI0bzbGLc7sipU95qSR+PEpc8O3nUrWiV8SmqpENivmhX9NdgS6Wp2JLpKi1
         LXxNzyUX/iTaX1vncXwMr/MOwwHJdFgOGGRpD+4MnS6uGpe3u1V+530dxzEIjrDhDRzm
         +p1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=james.morse@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i18si44134wrn.0.2020.02.10.09.19.04
        for <clang-built-linux@googlegroups.com>;
        Mon, 10 Feb 2020 09:19:04 -0800 (PST)
Received-SPF: pass (google.com: domain of james.morse@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 95E281FB;
	Mon, 10 Feb 2020 09:19:03 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 58DEF3F68F;
	Mon, 10 Feb 2020 09:19:00 -0800 (PST)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v7 09/11] arm64: disable SCS for hypervisor code
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
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200128184934.77625-1-samitolvanen@google.com>
 <20200128184934.77625-10-samitolvanen@google.com>
Message-ID: <6f62b3c0-e796-e91c-f53b-23bd80fcb065@arm.com>
Date: Mon, 10 Feb 2020 17:18:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200128184934.77625-10-samitolvanen@google.com>
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

On 28/01/2020 18:49, Sami Tolvanen wrote:
> Filter out CC_FLAGS_SCS and -ffixed-x18 for code that runs at a
> different exception level.

Hmmm, there are two things being disabled here.

Stashing the lr in memory pointed to by VA won't work transparently at EL2 ... but
shouldn't KVM's C code still treat x18 as a fixed register?


As you have an __attribute__((no_sanitize("shadow-call-stack"))), could we add that to
__hyp_text instead? (its a smaller hammer!) All of KVM's EL2 code is marked __hyp_text,
but that isn't everything in these files. Doing it like this would leave KVM's VHE-only
paths covered.

As an example, with VHE the kernel and KVM both run at EL2, and KVM behaves differently:
kvm_vcpu_put_sysregs() in kvm/hyp/sysreg-sr.c is called from a preempt notifier as
the EL2 registers are always accessible.


Thanks,

James

> diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
> index ea710f674cb6..5843adef9ef6 100644
> --- a/arch/arm64/kvm/hyp/Makefile
> +++ b/arch/arm64/kvm/hyp/Makefile
> @@ -28,3 +28,6 @@ GCOV_PROFILE	:= n
>  KASAN_SANITIZE	:= n
>  UBSAN_SANITIZE	:= n
>  KCOV_INSTRUMENT	:= n
> +
> +# remove the SCS flags from all objects in this directory
> +KBUILD_CFLAGS := $(filter-out -ffixed-x18 $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6f62b3c0-e796-e91c-f53b-23bd80fcb065%40arm.com.
