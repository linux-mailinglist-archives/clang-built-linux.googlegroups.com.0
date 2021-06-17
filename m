Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBB256VSDAMGQEU4KOTZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4C33AB0FD
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 12:09:48 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id 1-20020a05651c0081b0290141541aa7casf2461725ljq.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 03:09:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623924588; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yk2fDpqLuVPuA6iiwCGa9NjY5scDLBYNzfdaTZchd6G9XNOPN1nua5SZQc6V+5RJ9M
         fmjEP4Voh7fCHcbeHU7jomQmDACzqIW1r3X2Mr7pEuLMU+7Gq3qBvlwECcI15dNFwULW
         S+x82ctzbnld0QYFxiravqgp6InlLcx1JLTpREiDA2sa67AM3RfDZHrv7J0fx6qj87Qf
         PaF8mt07vuicBI87YqNUekri2amXdT9d5erHYaloSbgJZVZXt4oeM63FkQdT/7sXl1lb
         q5AWNrF4L5oYTUjifTA/jZPVenbGfF0CJcHawcE1TdZVVuzpZPbEPnYTKaaLiZAgYLCR
         39MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=zjvFoHFDEDbmYcJj2W/4rYvakIavYJGN6oPp0nuruic=;
        b=gbAe4koiRL47dNMDrueSIjT8ChT43KbUaAo/XyraueVjXpg/oAWNzQOPX8fSg3YgcX
         JTqG7P+S7TI4SAjeQYRf9CAubUHbAgq1PMsUfcQF05+Qpt5Ne6CruybiLoEiFeVviXJl
         LHUFfnJWvtt7wZp1WlXT/NmsnBygEVCukrxXyUh0tmxPiYH7vgyrbO+zVteGGEdHpxSC
         fpISuQBdDGgh156I4VCkBhjOaFXcv8/RQ1dMt86sWZzEWCc1Dh8s1JDLnL/0VQunXPu4
         ZAzzzam/KBD+zyfRS6lOimdhhfaQ39tsQasMzZ1Ccuiexn69p5HQYg6h+feTZ98IxgSR
         Fsnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zjvFoHFDEDbmYcJj2W/4rYvakIavYJGN6oPp0nuruic=;
        b=Og+C2UZI8nGTySUM81NWI6tcYRUyZv9Jilni9TIwnE8tbRPTUadaY8/ELpLuZPQe9J
         lU4wzgHxdHPT3Szg2PYRaNBP0Cfjk0ldl+IfxesgOswk0pOn1Kt26jj+X0U8MDv0jP0c
         JHMd+iNYcXYese8tIaJAfZRRaK2lawj+0SkkpRGVNxZUOc8SB8fuKjvgaZclexBkJIVe
         kKIwF2xrK4j6xU7eEveFhEPHKNWE4+9AaGVTqz8a3uz7oyd0YJmM3wzGoMhjyy8Bf/Fg
         9XTFrQIEGJF64BWLirb80kKNrR2XXXynurwppX0nNjYbns+urb50w+1RLXQ5S4gNF7GP
         Ar6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zjvFoHFDEDbmYcJj2W/4rYvakIavYJGN6oPp0nuruic=;
        b=JHZdX1FBbtHd8cK1c8OVPJW1j94Y7uWjBegIXWiY7HT0u92Eeq3ptt1jV2dsDgSLcj
         tC5NrmtNBHtr+/Qa9IPtvs9bJP8SR+/hOqngHwOLKvLSLCrL6fRreUyvI27duLaiNJbr
         k9r7CshWYf2zTsi536WVql4JBsgR9w3CiHxhAr9ZP6E55MagjsjgzNxjBO+pYlMhuJWX
         ryyLSyjqDdkF7piaYFEadwwDdso8nKTFNi9X7+qI4+O0Jy2VCA8GnpfP+zcPW9aIdlp5
         1kkmEllKRPXXI6V4KCnBcF/t5tlVNzJHNs/nzkdbTY44Um+mrp8EMeLAaC1sred03FLP
         auDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530f69UNkl/mpCI6OkJrQtSIl5KjDPDwV3NR3phHatp54wbddPRD
	wgKlIFZ66qoKbjplkwER5fE=
X-Google-Smtp-Source: ABdhPJziB9Xkc2xcY6L96JuQUQEUl82RndumjcoJnogNeGwSfLKsdInhfhj3+bRwc7lvF7ed5119+A==
X-Received: by 2002:a05:6512:ac9:: with SMTP id n9mr3367001lfu.235.1623924588105;
        Thu, 17 Jun 2021 03:09:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:504:: with SMTP id o4ls1234104ljp.2.gmail; Thu, 17
 Jun 2021 03:09:47 -0700 (PDT)
X-Received: by 2002:a2e:380b:: with SMTP id f11mr4005964lja.269.1623924586963;
        Thu, 17 Jun 2021 03:09:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623924586; cv=none;
        d=google.com; s=arc-20160816;
        b=yPIZpV2CD0rGXd/SDaPc1j93ow9XQ4adKvnucZVVWbERBw8FA9kLeDYrpVmBiRtDqh
         2dOipHoVHMDoDHiRrxgQpnICahH9DJBASCX1wsH1BhUlPZLiVObytScxEbDF0IHbnw16
         TJgMJfaH0AnLxRXFCPoYewKrrezR6DPBJHvdNLevBldCYhI64+vVXd9vDtpZVpXbJawe
         GWFqGnqOvH8jLATBSKishv1WezryWANF+30YfufLKFwFtzQdxsOE2QIbR6LbL13J41du
         ZhT7FwXdBu/l0enJyROedREf6Trzurcz2WWjUahRGsV8i61NpIkNVt7Rh9FGUF7X1cQU
         CQVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=naMT9usCXIV9LeHpCzOtsQq//B+jDDo5rOT1ZsTZ0OM=;
        b=gAZM7EgWqaxFS5O3Yt72uvP9DOjGogHjNYTxoOUw6on4xskMP94vkJrgsTsOF26Vqh
         wfgiEq/ukxPaNCnaSiCMfrUpgzXSAFlyEW/SrvRCM9LYlgFBawvioFIvQG9jtmeZ0zVM
         ipZpTWtvLbplcUM3z1+j6NY+6eXq3v1LrAi/+vRztA3ZmBLPuRa7ukUrtFAaQRTOPkA0
         2h6ybdEmd2FjHY+XjFFEqoh/e1/OObo9KkBKo0Lx/sHj7l8PLTxzXCws6U9Y0+j9vujU
         73kzallltj15QJkwWQMoNMt54pQS9NxNB4tD7GMNjBzfYaoqjAcozOq4JhxtgxN26tfB
         flGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id z4si68516lfs.0.2021.06.17.03.09.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jun 2021 03:09:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <daniel@iogearbox.net>)
	id 1ltoxu-000BTK-0B; Thu, 17 Jun 2021 12:09:38 +0200
Received: from [85.7.101.30] (helo=linux.home)
	by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1ltoxt-000DB3-IW; Thu, 17 Jun 2021 12:09:37 +0200
Subject: Re: [PATCH v5] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
To: Eric Biggers <ebiggers@kernel.org>
Cc: Edward Cree <ecree.xilinx@gmail.com>,
 Kurt Manucredo <fuzzybritches0@gmail.com>,
 syzbot+bed360704c521841c85d@syzkaller.appspotmail.com,
 keescook@chromium.org, yhs@fb.com, dvyukov@google.com, andrii@kernel.org,
 ast@kernel.org, bpf@vger.kernel.org, davem@davemloft.net, hawk@kernel.org,
 john.fastabend@gmail.com, kafai@fb.com, kpsingh@kernel.org, kuba@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, songliubraving@fb.com,
 syzkaller-bugs@googlegroups.com, nathan@kernel.org, ndesaulniers@google.com,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 kasan-dev@googlegroups.com
References: <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com>
 <202106101002.DF8C7EF@keescook>
 <CAADnVQKMwKYgthoQV4RmGpZm9Hm-=wH3DoaNqs=UZRmJKefwGw@mail.gmail.com>
 <85536-177443-curtm@phaethon>
 <bac16d8d-c174-bdc4-91bd-bfa62b410190@gmail.com> <YMkAbNQiIBbhD7+P@gmail.com>
 <dbcfb2d3-0054-3ee6-6e76-5bd78023a4f2@iogearbox.net>
 <YMkcYn4dyZBY/ze+@gmail.com> <YMkdx1VB0i+fhjAY@gmail.com>
 <4713f6e9-2cfb-e2a6-c42d-b2a62f035bf2@iogearbox.net>
 <YMkkr5G6E8lcFymG@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <845ad31f-ca3f-0326-e64b-423a09ea4bea@iogearbox.net>
Date: Thu, 17 Jun 2021 12:09:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <YMkkr5G6E8lcFymG@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.2/26203/Wed Jun 16 13:07:58 2021)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 6/16/21 12:07 AM, Eric Biggers wrote:
> On Tue, Jun 15, 2021 at 11:54:41PM +0200, Daniel Borkmann wrote:
>> On 6/15/21 11:38 PM, Eric Biggers wrote:
>>> On Tue, Jun 15, 2021 at 02:32:18PM -0700, Eric Biggers wrote:
>>>> On Tue, Jun 15, 2021 at 11:08:18PM +0200, Daniel Borkmann wrote:
>>>>> On 6/15/21 9:33 PM, Eric Biggers wrote:
>>>>>> On Tue, Jun 15, 2021 at 07:51:07PM +0100, Edward Cree wrote:
>>>>>>>
>>>>>>> As I understand it, the UBSAN report is coming from the eBPF interpreter,
>>>>>>>     which is the *slow path* and indeed on many production systems is
>>>>>>>     compiled out for hardening reasons (CONFIG_BPF_JIT_ALWAYS_ON).
>>>>>>> Perhaps a better approach to the fix would be to change the interpreter
>>>>>>>     to compute "DST = DST << (SRC & 63);" (and similar for other shifts and
>>>>>>>     bitnesses), thus matching the behaviour of most chips' shift opcodes.
>>>>>>> This would shut up UBSAN, without affecting JIT code generation.
>>>>>>
>>>>>> Yes, I suggested that last week
>>>>>> (https://lkml.kernel.org/netdev/YMJvbGEz0xu9JU9D@gmail.com).  The AND will even
>>>>>> get optimized out when compiling for most CPUs.
>>>>>
>>>>> Did you check if the generated interpreter code for e.g. x86 is the same
>>>>> before/after with that?
>>>>
>>>> Yes, on x86_64 with gcc 10.2.1, the disassembly of ___bpf_prog_run() is the same
>>>> both before and after (with UBSAN disabled).  Here is the patch I used:
>>>>
>>>> diff --git a/kernel/bpf/core.c b/kernel/bpf/core.c
>>>> index 5e31ee9f7512..996db8a1bbfb 100644
>>>> --- a/kernel/bpf/core.c
>>>> +++ b/kernel/bpf/core.c
>>>> @@ -1407,12 +1407,30 @@ static u64 ___bpf_prog_run(u64 *regs, const struct bpf_insn *insn)
>>>>    		DST = (u32) DST OP (u32) IMM;	\
>>>>    		CONT;
>>>> +	/*
>>>> +	 * Explicitly mask the shift amounts with 63 or 31 to avoid undefined
>>>> +	 * behavior.  Normally this won't affect the generated code.
>>
>> The last one should probably be more specific in terms of 'normally', e.g. that
>> it is expected that the compiler is optimizing this away for archs like x86. Is
>> arm64 also covered by this ... do you happen to know on which archs this won't
>> be the case?
>>
>> Additionally, I think such comment should probably be more clear in that it also
>> needs to give proper guidance to JIT authors that look at the interpreter code to
>> see what they need to implement, in other words, that they don't end up copying
>> an explicit AND instruction emission if not needed there.
> 
> Same result on arm64 with gcc 10.2.0.
> 
> On arm32 it is different, probably because the 64-bit shifts aren't native in
> that case.  I don't know about other architectures.  But there aren't many ways
> to implement shifts, and using just the low bits of the shift amount is the most
> logical way.
> 
> Please feel free to send out a patch with whatever comment you want.  The diff I
> gave was just an example and I am not an expert in BPF.
> 
>>
>>>> +	 */
>>>> +#define ALU_SHIFT(OPCODE, OP)		\
>>>> +	ALU64_##OPCODE##_X:		\
>>>> +		DST = DST OP (SRC & 63);\
>>>> +		CONT;			\
>>>> +	ALU_##OPCODE##_X:		\
>>>> +		DST = (u32) DST OP ((u32)SRC & 31);	\
>>>> +		CONT;			\
>>>> +	ALU64_##OPCODE##_K:		\
>>>> +		DST = DST OP (IMM & 63);	\
>>>> +		CONT;			\
>>>> +	ALU_##OPCODE##_K:		\
>>>> +		DST = (u32) DST OP ((u32)IMM & 31);	\
>>>> +		CONT;
>>
>> For the *_K cases these are explicitly rejected by the verifier already. Is this
>> required here nevertheless to suppress UBSAN false positive?
> 
> No, I just didn't know that these constants are never out of range.  Please feel
> free to send out a patch that does this properly.

Summarized and fixed via:

https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/commit/?id=28131e9d933339a92f78e7ab6429f4aaaa07061c

Thanks everyone,
Daniel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/845ad31f-ca3f-0326-e64b-423a09ea4bea%40iogearbox.net.
