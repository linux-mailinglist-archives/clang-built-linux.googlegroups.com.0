Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFWJQODAMGQEEA5FVZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D223A1A3C
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 17:56:08 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id x7-20020a1709027c07b02900e6489d6231sf11514135pll.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 08:56:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623254167; cv=pass;
        d=google.com; s=arc-20160816;
        b=WYb1Ob+ryrOIRQyJjzVRalSdySprAl4Zi6EE/WI2FOuYMomdJKbWzDEHpreVWD8MAL
         +H2dUeZ0odYlBMhw+zOKkMJ6Eoc3b05RL7ahjyGVOVv/45Uc/nAAIarbVaFVPL549Csl
         LA1xzzv9G+CFOs6hzLnDtbIEDZXNY0VWaXe1cBPfUTUkWZhvLDDUk+83XgD4t8mjq9Hs
         7fdqMxm9ucD19K4jJV2jHosz1SIHAtCbtSJdZJu1QYA/42iMn/pFTKsZ5AvlV/21GqvG
         LSowKqUuxAQg7H9C9b32S7d+iwSc5Pv5wBKIAtX6PrAI4NIn+tna+HoeGjkgbRRAhVDg
         5SRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=bQ4CNqKIUCQ8JpNBUUjY3/VcA9cuEQXoTGD70mYCHug=;
        b=obiFb5HsXOG3qif/nUvfBAKfIBpa4DoHBsmkPv/sBbBxs5jeyx053aO3Ec1PAj4w5S
         VP9+5dfFRNAMI/Ro5ABEvx7mkCcW/qZBRwFzoKSQpDqJoebl6CJEGyO2GLxiZNZK+lb+
         lxdu/MQtxXjngjLJKRp9yv4wVNbfOTSEECAD+mqd481axMRAG9lqHcQig/rER/iMXm0n
         Fir2MIFkSa4CXqv0pFTUPmFjghlQ9Vgxo293F+6V8yUjzXhMlm7f5PSzzAy7OYRMIzCA
         0droT/whDRE5p5o5AepKrNt0kqDAlDSqlGXx5SpOvPbNcUSGc84jMuVIKZifKHLSxn2c
         rUnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=si0WHEUr;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bQ4CNqKIUCQ8JpNBUUjY3/VcA9cuEQXoTGD70mYCHug=;
        b=CugbKerZSRgdY1LGSlNGjHP8BtiPrNgUg+mr49lxAcoGM7ix7Npu3X4zW8wRjgJN7X
         ZUcFrldZtvrQfIOYZtZIytqxilLDxvqjQdIiTtJgNZwyiaz2RmWpAqxuIe7Z4QiW/PAy
         jyZinOkDRCG8FCgPvaLEzpdKpuTTD7iAZs2Yr1vXTKYsirs/vzYeWhcqabiIjwbqc47k
         CVXN4syjDnyyfNSszv2pxQK12yy//rnA80v+xH2mEIBGGQNMjGn+xbJmTWQDg8eEJyzT
         AyQ21PPVz5BCDhJMSEU3sKAOO136DgFB08Lky25/ZTulPbvpRcN7ihBm4/YF5j+5TSH4
         aZzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bQ4CNqKIUCQ8JpNBUUjY3/VcA9cuEQXoTGD70mYCHug=;
        b=CoXLYyAO9+w92gDYiUmK8jRfAafHlK37gH2B83k8e8aFjipI8bPx37xX8LshoN2m3c
         k9Vxm8BeTAedt7U0QzTwfIdzcgsQ3aCBZnFruF7La9Mb1vBnaTayLGK+SqczxfJDXESX
         LmjxHVCf+8IpsC3rAE0NIZ1qKW7FMvPQA19dPzL4jeJumfIEUySFwI64zCmY0Zaf4eaD
         6IyEMbupvyENVOVKcOB84GATebZztDwet4VZRj8igmusy7eShRuLvYxbNTJp84efADiO
         05Ig75SdohS1QZAm5B9tOmUzSKjzMCH4wCb4YY7Ipww6T8ZC/w1LMZyvMHW9kMAcVl35
         OrKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aarbyncJ40Mj4olDO6StmayxOFS0uWj1eKl4kucOT1uBH+x6L
	ogTwW18kN6NAnhAXwvAK+Fk=
X-Google-Smtp-Source: ABdhPJwNsOUcWj1HRKZ/Xah7Y696l6KI3b6znFY0o4H2+ApFPPZcIDcoDNvwRDWHP2YqR08B5js5LA==
X-Received: by 2002:a17:90a:f3d0:: with SMTP id ha16mr192582pjb.123.1623254166681;
        Wed, 09 Jun 2021 08:56:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:fb0e:: with SMTP id x14ls1403262pfm.10.gmail; Wed, 09
 Jun 2021 08:56:06 -0700 (PDT)
X-Received: by 2002:a63:aa48:: with SMTP id x8mr338620pgo.359.1623254166136;
        Wed, 09 Jun 2021 08:56:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623254166; cv=none;
        d=google.com; s=arc-20160816;
        b=mC4JvSQ6rNjDbxHiPm7+iYjqhMddLpFZP4zUp7khU4vQiLqq5DHon4/TdfL/4c+rUh
         ec4ZsXJyBgUQZHkdWCBOgZYuDfMwQCA88WLCujpZ1W1wVxRRqHgMKBvqMlLMi5JkXe7V
         HUKyNbe7/qONNnqqaZitjaePRjGdTabQzeNv7wGH5cAXQgiF2cSx/ufhdpYibL1mQ+Wu
         F7GAmoUfuNg+9aa7iVbrftfLkGGhXtidUtwVgLhzWvcdTO6s0+c31MI5TKeb2bCbt1b9
         8hIPFqePGh5F9nNqMmUhSjoTjbLmH/Y0V6PAbk6oez8ONhGQCVXSPbNDz8aT8zlIklUB
         FIjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=g7BsolxgiPfxHCxc4J7uGo+erTnS2WKVGV6E003FUuE=;
        b=XIapUrwSI6so6itaxbkROLlhjpDeB64Z2CQuI8s+W8OXPMNrEF+LOBr8lqwaG01IQQ
         qjjppoLT6a59O5erTIM1bmwntiLT2MngnLJdAumuv9teMnqv15KqsIItH328lg8kfOVp
         Y5sTWboEfQ15jCkSbT1Z3m/GrFOg+u1JGYmcDZ49WH+bi04W2j40L22NZMYTXA1n+nME
         5xN/m7XQH67ttJKpUleXLo6ccGTQ+2vG0mcjfevitKGzoTRcEnSWMvRLgB1rQkRFe32G
         QfjuGM4WpUQ2XQfsbtkLG6RT31xp02NmjhA2a7quZg/+Ky2PwLpFyvQ3gmWiuPNqOx9p
         zAfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=si0WHEUr;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m14si415673pjq.1.2021.06.09.08.56.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Jun 2021 08:56:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1EA7C61278;
	Wed,  9 Jun 2021 15:56:05 +0000 (UTC)
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
To: Peter Zijlstra <peterz@infradead.org>, Lukasz Majczak <lma@semihalf.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Guenter Roeck <groeck@google.com>,
 Juergen Gross <jgross@suse.com>, =?UTF-8?Q?=c5=81ukasz_Bartosik?=
 <lb@semihalf.com>, LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com,
 =?UTF-8?Q?Rados=c5=82aw_Biernacki?= <rad@semihalf.com>,
 upstream@semihalf.com,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>
References: <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
 <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
 <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org>
 <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
 <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org>
 <YL+0MO/1Ra1tnzhT@hirez.programming.kicks-ass.net>
 <5dd58dce-c3a7-39e5-8959-b858de95b72c@kernel.org>
 <CAFJ_xbp5YzYNQWEJLDySyC_bWUsirq=P03k8HHW=B4sH0V_uUg@mail.gmail.com>
 <YMBrqDI0Oxj9+Cr/@hirez.programming.kicks-ass.net>
 <CAFJ_xbodWTQQaJ-3yJ4ZQOiTFFXo6M+cn_F0p157o=80BwrQAw@mail.gmail.com>
 <20210609150804.GF68208@worktop.programming.kicks-ass.net>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <6caa3fa0-f71c-1a3f-b944-57b518645e74@kernel.org>
Date: Wed, 9 Jun 2021 08:56:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210609150804.GF68208@worktop.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=si0WHEUr;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 6/9/2021 8:08 AM, Peter Zijlstra wrote:
> On Wed, Jun 09, 2021 at 02:23:28PM +0200, Lukasz Majczak wrote:
>> =C5=9Br., 9 cze 2021 o 09:20 Peter Zijlstra <peterz@infradead.org> napis=
a=C5=82(a):
>>>
>>> On Wed, Jun 09, 2021 at 09:11:18AM +0200, Lukasz Majczak wrote:
>>>
>>>> I'm sorry I was on vacation last week - do you still need the requeste=
d debugs?
>>>
>>> If the patch here:
>>>
>>>    https://lkml.kernel.org/r/YL3q1qFO9QIRL/BA@hirez.programming.kicks-a=
ss.net
>>>
>>> does not fix things for you (don't think it actually will), then yes,
>>> please send me the information requested.
>>
>> Ok, it didn't help. Peter, Josh I have sent you a private email with
>> requested information.
>=20
> OK, I think I've found it. Check this one:
>=20
>   5d5:   0f 85 00 00 00 00       jne    5db <cpuidle_reflect+0x22>       =
5d7: R_X86_64_PLT32     __x86_indirect_thunk_r11-0x4
>=20
>=20
> +Relocation section '.rela.altinstructions' at offset 0 contains 14 entri=
es:
> +    Offset             Info             Type               Symbol's Valu=
e  Symbol's Name + Addend
>=20
> +0000000000000018  0000000200000002 R_X86_64_PC32          00000000000000=
00 .text + 5d5
> +000000000000001c  0000009200000002 R_X86_64_PC32          00000000000000=
00 __x86_indirect_alt_call_r11 + 0
>=20
> Apparently we get conditional branches to retpoline thunks and objtool
> completely messes that up. I'm betting this also explains the problems
> Nathan is having.

Yes, the below patch gets my kernel back to booting so it seems the root=20
cause is the same.

> *groan*,.. not sure what to do about this, except return to having
> objtool generate code, which everybody hated on. For now I'll make it
> skip the conditional branches.
>=20
> I wonder if the compiler will also generate conditional tail calls, and
> what that does with static_call... now I have to check all that.
>=20
> ---

Tested-by: Nathan Chancellor <nathan@kernel.org>

> diff --git a/tools/objtool/arch/x86/decode.c b/tools/objtool/arch/x86/dec=
ode.c
> index 24295d39713b..523aa4157f80 100644
> --- a/tools/objtool/arch/x86/decode.c
> +++ b/tools/objtool/arch/x86/decode.c
> @@ -747,6 +747,10 @@ int arch_rewrite_retpolines(struct objtool_file *fil=
e)
>  =20
>   	list_for_each_entry(insn, &file->retpoline_call_list, call_node) {
>  =20
> +		if (insn->type !=3D INSN_JUMP_DYNAMIC &&
> +		    insn->type !=3D INSN_CALL_DYNAMIC)
> +			continue;
> +
>   		if (!strcmp(insn->sec->name, ".text.__x86.indirect_thunk"))
>   			continue;
>  =20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/6caa3fa0-f71c-1a3f-b944-57b518645e74%40kernel.org.
