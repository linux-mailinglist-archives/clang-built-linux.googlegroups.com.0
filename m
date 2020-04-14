Return-Path: <clang-built-linux+bncBCS7XUWOUULBBEFU272AKGQEWX2GC2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9C31A8391
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 17:43:13 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id x185sf70528vsc.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Apr 2020 08:43:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586878992; cv=pass;
        d=google.com; s=arc-20160816;
        b=oP3AolodFel00MmE9SEhq9qU0t6/Le7BfFOPA7ub4s6hPUJYZQWH9EFD9XMC5S9GOS
         rZHviT7Uoqj6yq0RUcyVemlqHITguo4hSWZsiwPSpz35ibJaV3To+lW4l3NsnLvQHwcf
         aCzxpspdPRh36JASRDJtbkHwBFkZ3lqhRcR14WSBJ/+kYLurqVZ2POg3M4w52zihPyIp
         al2bad/BsY9GHWMBBhl8L7KXtaGU7B2dmnuQwqUYmRxFywQk54L4yJphg0cQ4tZ/dSqU
         EvE27hOv3ianrsDAw+64JcRmsCOHnZZ/Ir94KmzEJSA5n7nAJW4+sCuSdcSXEfKazjTD
         ICXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FD1Jq7Sjlwtxzc5QyM+gTQQ+vFQycgDTJM7cPcl8fTQ=;
        b=AHmgSZbM+6cbp1rjva+fW99ZmK6OG3GQZGsAbXMYmw/9oKbbwsEex8YGlL6qtCTGmI
         XxRIM1CBOIHD9PsFP9RtHYpbQy0Se/9LlxyThlNE/PJjmh3cXXIChfmOEwePWjiMSjYG
         PtjlEKdN9oeNCZBy4JwJkvCyk7GpzkKl38+UosoYHYhQfayy8Apm1P3DNhkpcW2DRZH4
         SR8jxNWJ+H8NrsgwUqPMioOVv532Q6nElApARwnnTvqrWUs5qpOmrY6GKhKXn2cnUp4R
         vVajJ2gIboWpoWAjSaOrG2zkVjixXQKqYWhvlY1hvEH1B6UrMYtH2T6eIRcd/eb1B+QY
         FM1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YedDG0ZF;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FD1Jq7Sjlwtxzc5QyM+gTQQ+vFQycgDTJM7cPcl8fTQ=;
        b=goG2bSOczk6QlRcZY+V0ym2uRUEeHVTDnNgDzoQQ7w2+hUHV8xgzJkqK1VIO8UXKkv
         XEx2H7ieT2rP7Es06UwF5zJSHczzS1GK9tgzREH8KD5P+8vKC4HdJMeRSYm8kwZc/1tm
         96JbhVGwNvCc2qlVi4mQUnfK/du4or24lFuSumK5AYr0MerQIhUm7OHZk3YtC2+ME3Fe
         IW7pdM1+fbRzjH4EhYlrq6fJarOn30lEjE/vnL1i1Pu+L2KAQFKphvwwyHnTk6wuz57z
         dWdT/rH+LSbAucjuAF//46IobLeJ7YcNnT3EgM/mGnOPL33pJiBBFDeRKANTBmN+GeF/
         BPCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FD1Jq7Sjlwtxzc5QyM+gTQQ+vFQycgDTJM7cPcl8fTQ=;
        b=qzF5W4Sz4tXT7XxzMa5jgseyb/l3ic8AE32ikwVth1/NXmt+nFBpMlMv2CsmPhTVM9
         60tfwdh1QPxZfnae8BL9w5iuOhZKIpmMlIIOpg7980gXzFl6Tdf7SwsvIewkvtFTU/br
         oeHEo9JgL099wc/3Y9hyLTdznYaDsgzPCy5VN3EdCgNgTIg0qpfB5MJOAovjLoRK/iMX
         YPkBeqYmiGEcQYbWR/xMAdpw885dideoGJWMQbzE3yDw4dLXVslu3LOKMzL6p4uKwhp+
         p25DjDNYfv2z7pM2KXV9gEj+3ehStOTJdfnhWbR27IUKnsueemS9sqEC1EH2x7BUCS8Z
         /ErQ==
X-Gm-Message-State: AGi0PuYGhN2I8ktfKgIdj99B4OKjTLEzPWh6ROcQzPFSzLarofWL2fnO
	jWnRwhWH+D05ilxp9UUTwDM=
X-Google-Smtp-Source: APiQypLo83pbbqC7GzZLBt9LavfOCA9//dDm0IjA3i1biw4q5sym8v5UVlGkHq7cO/x790//AJbjHA==
X-Received: by 2002:ab0:6588:: with SMTP id v8mr800616uam.35.1586878992475;
        Tue, 14 Apr 2020 08:43:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6950:: with SMTP id c16ls356410uas.0.gmail; Tue, 14 Apr
 2020 08:43:12 -0700 (PDT)
X-Received: by 2002:ab0:2852:: with SMTP id c18mr767878uaq.27.1586878992012;
        Tue, 14 Apr 2020 08:43:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586878992; cv=none;
        d=google.com; s=arc-20160816;
        b=psiibFmIDNEGLaBa7zfbjbR+e5Ty+vEaGsjAltScMJM0cnqm6TDJEeSO3Ok0WAdZrE
         BcP4HAtKofjBFkZShLtis/0fpz0OK6+QHfAy9F4uOPuiakRbjOmk3W7lxb6S6TKB6/8x
         kcfM2RAihR4jMjp1gmiIHmkl4vkpAeTwkU7h/ji5UZlRaCmqC31R4Dar7kaovsHKnkJ2
         Fcu88bZ3wiIzir+TuIv1vAFxri+8gaTVKBwfOhGBomcC1kdhKLZ/1Rc5I1Z94EOewYEI
         fRgRf0uD3XqTW4rN6BosXPPnwDutmDWiuOole9o8BqFJ6GgA3eVza/QyQQ2oJJXSUIAs
         a+sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HrHc89msdXgi2Y4Q0qH1yTEHGNBhvf5/H8327yK+Ls4=;
        b=ot1i/uuS9OvsEMIvThEVe8TaDe/8I5NiZBxOH1ddA1DMRnHq3pyFe4y8I6vsOCQNL2
         TD+cVBmfnCN6AbT+5nuVvesXqEZOsc8AQimr/ogBgugFjTsz+2tLT0hrsEDa506ibua+
         AnVFLfwmSIWHqcHCU0CIR1xkCLTxdmblTf2weyDseTlCpmvj8Vg7pOVuKFT/j1SNBv5W
         oGKIo/4lSZYFG0rQVFr4i/Z9K7xgumgtKzVgai4/RJlaongbMhcBXpOLyOKd5txxnofW
         amFeUs82Tt/wf1cchGEsG06rVr2JAqqFbQ9vdld8f1D54fz7zLzhKNH6qyKeRl0zDLvK
         Rtqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YedDG0ZF;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id i8si109370vsm.0.2020.04.14.08.43.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 08:43:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id d17so61513pgo.0
        for <clang-built-linux@googlegroups.com>; Tue, 14 Apr 2020 08:43:11 -0700 (PDT)
X-Received: by 2002:a63:1e0a:: with SMTP id e10mr23094381pge.417.1586878990825;
        Tue, 14 Apr 2020 08:43:10 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id s9sm11766283pjr.5.2020.04.14.08.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 08:43:10 -0700 (PDT)
Date: Tue, 14 Apr 2020 08:43:07 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: Delete the space separator in __emit_inst
Message-ID: <20200414154307.2cke3x5ocz3q2as4@google.com>
References: <20200413033811.75074-1-maskray@google.com>
 <20200414095904.GB1278@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200414095904.GB1278@C02TD0UTHF1T.local>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YedDG0ZF;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-04-14, Mark Rutland wrote:
>Hi Fangrui,
>
>On Sun, Apr 12, 2020 at 08:38:11PM -0700, Fangrui Song wrote:
>> Many instances of __emit_inst(x) expand to a directive. In a few places
>> it is used as a macro argument, e.g.
>>
>>   arch/arm64/include/asm/sysreg.h
>>   #define __emit_inst(x)                       .inst (x)
>>
>>   arch/arm64/include/asm/sysreg.h
>>   #define SET_PSTATE_PAN(x)            __emit_inst(0xd500401f | PSTATE_PAN | ((!!x) << PSTATE_Imm_shift))
>>
>>   arch/arm64/kvm/hyp/entry.S
>>   ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
>>
>> Clang integrated assembler parses `.inst (x)` as two arguments passing
>> to a macro. We delete the space separator so that `.inst(x)` will be
>> parsed as one argument.
>
>I'm a little confused by the above; sorry if the below sounds stupid or
>pedantic, but I just want to make sure I've understood the problem
>correctly.
>
>For the above, ALTERNATIVE() and SET_PSTATE_PAN() are both preprocessor
>macros, so I would expect those to be expanded before either the
>integrated assembler or an external assembler consumes any of the
>assembly (and both would see the same expanded text). Given that, I'm a
>bit confused as to why the integrated assembly would have an impact on
>preprocessing.
>
>Does compiling the pre-processed source using the integrated assembler
>result in the same behaviour? Can we see the expanded text to make that
>clear?
>
>... at what stage exactly does this go wrong?
>
>Thanks,
>Mark.

Hi Mark,

The C preprocessor expands arch/arm64/kvm/hyp/entry.S
    ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)

to:
    alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

`alternative_insn` is an assembler macro, not handled by the C preprocessor.

Both comma and space are separators, with an exception that content
inside a pair of parentheses/quotes is not split, so clang -cc1as or GNU
as x86 splits arguments this way:

    nop, .inst, (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

I actually feel that GNU as arm64's behavior is a little bit buggy. It
works just because GNU as has another preprocessing step `do_scrub_chars`
and its arm64 backend deletes the space before '('

    alternative_insn nop,.inst(0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1

The x86 backend keeps the space before the outmost '('

   alternative_insn nop,.inst (0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1

By reading its state machine, I think keeping the spaces will be the
most reasonable behavior.

If .inst were only used as arguments,

    alternative_insn nop, ".inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8))", 4, 1

would be the best to avoid parsing issues.

>>
>> Note, GNU as parsing `.inst (x)` as one argument is unintentional (for
>> example the x86 backend will parse the construct as two arguments).
>> See https://sourceware.org/bugzilla/show_bug.cgi?id=25750#c10
>>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/939
>> Cc: clang-built-linux@googlegroups.com
>> Signed-off-by: Fangrui Song <maskray@google.com>
>> ---
>>  arch/arm64/include/asm/sysreg.h | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
>> index ebc622432831..af21e2ec5e3e 100644
>> --- a/arch/arm64/include/asm/sysreg.h
>> +++ b/arch/arm64/include/asm/sysreg.h
>> @@ -49,7 +49,9 @@
>>  #ifndef CONFIG_BROKEN_GAS_INST
>>
>>  #ifdef __ASSEMBLY__
>> -#define __emit_inst(x)			.inst (x)
>> +// The space separator is omitted so that __emit_inst(x) can be parsed as
>> +// either a directive or a macro argument.
>> +#define __emit_inst(x)			.inst(x)
>>  #else
>>  #define __emit_inst(x)			".inst " __stringify((x)) "\n\t"
>>  #endif
>> --
>> 2.26.0.110.g2183baf09c-goog
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200414154307.2cke3x5ocz3q2as4%40google.com.
