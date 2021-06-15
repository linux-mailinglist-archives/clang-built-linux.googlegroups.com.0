Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBK6DUSDAMGQESASPWTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB6D3A8B6E
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 23:54:51 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id d5-20020a0560001865b0290119bba6e1c7sf87878wri.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 14:54:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623794091; cv=pass;
        d=google.com; s=arc-20160816;
        b=E/p+SUlXetNvbg0s4dhH6FhpS09azN8IH+4fAKVxz8Tyfu/e9kcEed3nTmAo8Q29Ks
         bVqy81PcEwYReJ1MwM/yVUMuplHF0OuahzJiNP1rlzRDfvu47dbiFgnA4wZmCps65Szr
         ROpSbRNSWFJcT/HQHrUh9PMCYkOzidM6MgUVhvaAtvFjYAQ84Gf1xfkEyREbP2gc6Zh9
         63kskfjsmyRt3Wh8idEluJIFGpLseglKgJ1W8KGXKDaIQ92iKAwnIQMvnQi8Eil4xQAH
         cNDfDDcXTZ24l5LbHE6uO89CTzbSzX/PhZOMUjIMUXB9vSzEC4yjg6BLcoTVUygaWXGp
         VZ5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=8hVlET30i9km1gOSbqruT25NVynVhKml+1/86cVDpd0=;
        b=BkAiuaBPCrADEyYY4w3FUcYhvs1R2Njk4y2ecoF5RBhD8fanIckwTAD6tbUHSFAilK
         Dy9zPek8kcTnYexoBYIGnH5gOs+Am8ix3OEqInO8a9EHq58DzueKQPDpsvijEJW4ZN4F
         jRl2ga0S5bR7POZja56TmViUqm77+8yI9uWCJYK6UA/KeRwZs1M4f9W9G1Pr9ZBRYKaN
         lxgy/1mb6QUImvf8ZZeVYXTjisH3a2mSaQeCe7dPl/QeaDdfPTVvy+eHjoeObW2szDot
         nForaxZPKqxeHo1+LwbxQbuD9fumv9uEhvKkKwX0OOevfyEDduwoHVHPz8RAZ1ooxpDN
         GAvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8hVlET30i9km1gOSbqruT25NVynVhKml+1/86cVDpd0=;
        b=MW3y3YPmLYjzt7QGdbsqlyKPhre42FOg5xtyv8WZ4IJ/RWDFXyMknx/l1kAVq0zM1Z
         xbFCxOl6z3GXMtGzwQ9ms11Cg82ZtgxaCLGY2YnwjgvgS7XmuRmuekZZV4UZt42TNi0S
         xZ8xbh2VDS15TpDhFr8var2vupsuoTb7UL8cu52AU2t3VTN2b8i89XF8kJ0fl7hrIRCt
         t4CaVj4qlf6IOig//56BvwcwPGpZsMOI+6UxG7K3RBUa/P1rndygMqao3tIoQNYyq6rr
         kw76l8h1hSVuTcMI00yX2ThiMg94LX9v7J7D3o0JhSw8SpcIxMaJNZ+vnzUn4TeBzZVs
         32MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8hVlET30i9km1gOSbqruT25NVynVhKml+1/86cVDpd0=;
        b=Pvz7YsQ9+HuNJ2cYVLS7TYJY+Fj2LBHGE1nTUYEmNpWg68O5l0S0Dmx0FvjkY8A9Us
         +8+jkwKUJvMQkdD+Z4WRzRw2wFMcHXqaeP4KOqrSmc+ZnQDU7+gSppGJ2cQNsuO+tuLC
         rh3s+6/XVQPzhNAAHxKPuScgq4ExY/j0MvIVM6Lo1bos1+mylSe1ikc2q0Npac5JB3h0
         aKfmja8MvSP0Hx/Pq2uxVZbH6snEHiLn+ACDJrFDcy89ej2i8N4ketHWZm7p11zkBb27
         TPiju5nhEPfdHVM+RwEabVzeCGy7Whr9VronK+S2N1f32Qn96bflRRThzO7Co4GRYthi
         JoOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532IQI/3eUs/4YqGXPJvK1QNut8EIrHx6c0Ddh71wqysd6Y2efGN
	DMhUiNmWE7tKGbSCjgfy/X8=
X-Google-Smtp-Source: ABdhPJytCpNfKsy05ngqBUZPf11ekF+KqC1XrE0lXZ7LNyvh7k/F3z210eGYB1qciZFF/kgVefNXhA==
X-Received: by 2002:a5d:4903:: with SMTP id x3mr1318660wrq.376.1623794091240;
        Tue, 15 Jun 2021 14:54:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c0d1:: with SMTP id s17ls137263wmh.0.gmail; Tue, 15 Jun
 2021 14:54:50 -0700 (PDT)
X-Received: by 2002:a1c:ac87:: with SMTP id v129mr710025wme.45.1623794090403;
        Tue, 15 Jun 2021 14:54:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623794090; cv=none;
        d=google.com; s=arc-20160816;
        b=H7Go0+zX5lQQoEF63hSVFABS566hq3/MPEm3/M5eFha2j+4SUESM/zcMpBEc+N7abr
         6fBrurQnEvOMJOMHSzMDmdLB0NLVHjxTl2Mm6xfyi+N7aS7JAfoBiqTSuZAF7yJFhzO8
         e6G/kx4S/SjqtPiTs4AbZJMHfj9ktj7rKePkF9OnP29lm6Xl4qjlPFvwuLiee/RPuawK
         mN28rzlcsb4VHWbhe1Tgzt2pHwaXiKohsBzj9B9Rqt/0IgkLMi0IXRL8e1ZTp3JEzeuX
         uAXvECPOAwsSb7mDg76ZnY5i9jFd7pV3zkSXV6uUfwGIJbXw40/3cG4nf3Azg2T76OBB
         vb9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=k3ccg9mpyGuJlP4StkHf/KwlYBnsSRYrs6zxKfc17wc=;
        b=XzDCAhxzuU48lel7QgTVBn4tJJRihDnjmU9s3tgLRtxy7j78kIqIRpg5nRVkIsnY+e
         h0Q+s4S+6xV0PaKYQmKZne/b4p//O0D4d53tu99PsjnkIo6j90503v0AeY95mz78YkXt
         pyd7TRxiDigX96LohvrmMLn4MRQ3YgPahsGAMNAYikXeV7hfRXhbybalALs6kie8MMp5
         XYLEvuyomvOjVfNJObaZ+GwxD9YVaMuLWE72JRo9Ej6hEsZUk66nLCYpC34C4cwFQaqM
         j+fqQbKn32xz0qrxlOrYMQIZmf388zKB9hjxlPRYof3vgD2N2/WKp98AC29B8j2WDJWa
         1NNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id v4si6303wrg.2.2021.06.15.14.54.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jun 2021 14:54:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy01.your-server.de ([78.46.139.224])
	by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <daniel@iogearbox.net>)
	id 1ltH19-0009sn-8n; Tue, 15 Jun 2021 23:54:43 +0200
Received: from [85.7.101.30] (helo=linux-3.home)
	by sslproxy01.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1ltH18-000IMK-PK; Tue, 15 Jun 2021 23:54:42 +0200
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
References: <752cb1ad-a0b1-92b7-4c49-bbb42fdecdbe@fb.com>
 <CACT4Y+a592rxFmNgJgk2zwqBE8EqW1ey9SjF_-U3z6gt3Yc=oA@mail.gmail.com>
 <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com> <202106101002.DF8C7EF@keescook>
 <CAADnVQKMwKYgthoQV4RmGpZm9Hm-=wH3DoaNqs=UZRmJKefwGw@mail.gmail.com>
 <85536-177443-curtm@phaethon>
 <bac16d8d-c174-bdc4-91bd-bfa62b410190@gmail.com> <YMkAbNQiIBbhD7+P@gmail.com>
 <dbcfb2d3-0054-3ee6-6e76-5bd78023a4f2@iogearbox.net>
 <YMkcYn4dyZBY/ze+@gmail.com> <YMkdx1VB0i+fhjAY@gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <4713f6e9-2cfb-e2a6-c42d-b2a62f035bf2@iogearbox.net>
Date: Tue, 15 Jun 2021 23:54:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <YMkdx1VB0i+fhjAY@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.2/26202/Tue Jun 15 13:21:24 2021)
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

On 6/15/21 11:38 PM, Eric Biggers wrote:
> On Tue, Jun 15, 2021 at 02:32:18PM -0700, Eric Biggers wrote:
>> On Tue, Jun 15, 2021 at 11:08:18PM +0200, Daniel Borkmann wrote:
>>> On 6/15/21 9:33 PM, Eric Biggers wrote:
>>>> On Tue, Jun 15, 2021 at 07:51:07PM +0100, Edward Cree wrote:
>>>>>
>>>>> As I understand it, the UBSAN report is coming from the eBPF interpreter,
>>>>>    which is the *slow path* and indeed on many production systems is
>>>>>    compiled out for hardening reasons (CONFIG_BPF_JIT_ALWAYS_ON).
>>>>> Perhaps a better approach to the fix would be to change the interpreter
>>>>>    to compute "DST = DST << (SRC & 63);" (and similar for other shifts and
>>>>>    bitnesses), thus matching the behaviour of most chips' shift opcodes.
>>>>> This would shut up UBSAN, without affecting JIT code generation.
>>>>
>>>> Yes, I suggested that last week
>>>> (https://lkml.kernel.org/netdev/YMJvbGEz0xu9JU9D@gmail.com).  The AND will even
>>>> get optimized out when compiling for most CPUs.
>>>
>>> Did you check if the generated interpreter code for e.g. x86 is the same
>>> before/after with that?
>>
>> Yes, on x86_64 with gcc 10.2.1, the disassembly of ___bpf_prog_run() is the same
>> both before and after (with UBSAN disabled).  Here is the patch I used:
>>
>> diff --git a/kernel/bpf/core.c b/kernel/bpf/core.c
>> index 5e31ee9f7512..996db8a1bbfb 100644
>> --- a/kernel/bpf/core.c
>> +++ b/kernel/bpf/core.c
>> @@ -1407,12 +1407,30 @@ static u64 ___bpf_prog_run(u64 *regs, const struct bpf_insn *insn)
>>   		DST = (u32) DST OP (u32) IMM;	\
>>   		CONT;
>>   
>> +	/*
>> +	 * Explicitly mask the shift amounts with 63 or 31 to avoid undefined
>> +	 * behavior.  Normally this won't affect the generated code.

The last one should probably be more specific in terms of 'normally', e.g. that
it is expected that the compiler is optimizing this away for archs like x86. Is
arm64 also covered by this ... do you happen to know on which archs this won't
be the case?

Additionally, I think such comment should probably be more clear in that it also
needs to give proper guidance to JIT authors that look at the interpreter code to
see what they need to implement, in other words, that they don't end up copying
an explicit AND instruction emission if not needed there.

>> +	 */
>> +#define ALU_SHIFT(OPCODE, OP)		\
>> +	ALU64_##OPCODE##_X:		\
>> +		DST = DST OP (SRC & 63);\
>> +		CONT;			\
>> +	ALU_##OPCODE##_X:		\
>> +		DST = (u32) DST OP ((u32)SRC & 31);	\
>> +		CONT;			\
>> +	ALU64_##OPCODE##_K:		\
>> +		DST = DST OP (IMM & 63);	\
>> +		CONT;			\
>> +	ALU_##OPCODE##_K:		\
>> +		DST = (u32) DST OP ((u32)IMM & 31);	\
>> +		CONT;

For the *_K cases these are explicitly rejected by the verifier already. Is this
required here nevertheless to suppress UBSAN false positive?

>>   	ALU(ADD,  +)
>>   	ALU(SUB,  -)
>>   	ALU(AND,  &)
>>   	ALU(OR,   |)
>> -	ALU(LSH, <<)
>> -	ALU(RSH, >>)
>> +	ALU_SHIFT(LSH, <<)
>> +	ALU_SHIFT(RSH, >>)
>>   	ALU(XOR,  ^)
>>   	ALU(MUL,  *)
>>   #undef ALU
> 
> Note, I missed the arithmetic right shifts later on in the function.  Same
> result there, though.
> 
> - Eric
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4713f6e9-2cfb-e2a6-c42d-b2a62f035bf2%40iogearbox.net.
