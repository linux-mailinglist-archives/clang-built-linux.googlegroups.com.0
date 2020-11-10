Return-Path: <clang-built-linux+bncBD4PP5X5UEBRBRWQVT6QKGQEMYZ5DHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D482AE473
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 00:54:46 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id t3sf163851lfk.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 15:54:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605052486; cv=pass;
        d=google.com; s=arc-20160816;
        b=LGbEaoGmgQNfJxCDkSc+K6ig4/5FGdK/HRmIA9njLJTa1gMK2TavR9RvSXgnmnO4mX
         r4wB1iN3Zx1rXnfgLV/EFqEc/xw1fgIApXlwFfIMSZ1HiPNqw1vFXZd4nzxfy3yhs7gQ
         JNpRVnmSKCO+i8acm4P3AF6NVphjhkDsxgs7MWkMD1eUmbzaMdnpyO36ZjfqKnlRtkcO
         /lznzh4qE+8+h9U9FHSbTL5bZ1vbrNtUQg2NlsQ1sv22Yv/G+ijxl7M+tqodDk7KwGoD
         SBkNH1tBszopzcRJia+fRZ10LRSCGqj++eZad+8UiAFJvb98N+eQOYDYB0jxBaDAcX2Y
         hYpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=W5C3HXAfRX8Cl9NzNzqpsAcOqH9iqN0ZE+dC8ticdG4=;
        b=tTBOj8L1wrPwZPkqwMvYKqoAz26nOOGFsEw3HYPjeiIuJeK7KEwvbSHTthAWvq2fqK
         P4U1lUOAliX3gPeoHWQSYcvRZt4eRTXN3CK/axz/O0hF3rLMI0EzU8fJMJPcapcNreAu
         ddq66rIh5ospg5hqqsb8TuYzQOhXidyzvlU84UsuitZcPVZQFjNWD4T5LgpcuxbXZXGS
         liJ5gp90xdG8HtiTysIYc3EtaOQdUmOxHHPkv+u1sS8Ir003Xo0V+AZ2vixLCGG8uFT0
         XnJlQe0iBC75iwxOwXx6HSJQ0wiHao2HtoCkZuXH9Q3RIjS3SBX4ZzXA2U7aJg3y8DYs
         6tLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W5C3HXAfRX8Cl9NzNzqpsAcOqH9iqN0ZE+dC8ticdG4=;
        b=IIanQ82jcNmPvbLHpmGTG4wANZSQSRe3fX8vc6e5smCrY9K4RMT5S7zrtKfPFQKTyC
         9EcogrqQ28ciUJOuHKb+nT5yTwKX5/NHIenNDzApbGS0M7I4Soi409VtbW84X5G9r9vs
         VaatctV3vND8RdWbFFdBXYOa+j0pzaVq44iRhP+paPDqnIyattpppChGp+zjnQUR+iWd
         nICD6QaLyKOdMZdN7+h7itrtDr5zsOJzXCvXexcf2l6IcaQLNXpFRceG29pU9Ne5nC0g
         EGrqyz8mfXXjOKuTKU1RO/XyjletpPHjD3KKHnYbRbR1UOhF+nMvy8V7dUbpLAAX5lUt
         9EIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W5C3HXAfRX8Cl9NzNzqpsAcOqH9iqN0ZE+dC8ticdG4=;
        b=Cn2/OV/Xugw+u3HdDjSLwyK9fh20VAMOw2PeVRUgs6y/DzrXbYZ8WdW1s34rm43rxE
         I+zhvBOKsyQ+uCsuDA3R62yTqajRrDohC43mW8csrtknjjD0+Lfb12Lb0xOIek2tjuXZ
         Sw+bZoHkeomCeyRb6DTQxQ9HFGH2zBgkClDpaebF1SQMI88muf/Y3GoZBMvO8Xkr9Alq
         0gHcN185m24vbYLWoZWmP8yKVx+quXvGIDzQ6XVjHirKxz2HncMMGvCEVyhcGDWlapfj
         oA/4PAMI/s7QfX6/YjGqX1mLz7bURh9pIwNR+g/ikT27ZphVs1Op4h4r5veCQJ2Qhx0+
         crOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53289Sgz/as9ic2VMc0jc5C/UzltZ1ObByfcrlSGtFho/z/vw9g7
	O4iaJFcJzQ/o0yjq6Yb1Haw=
X-Google-Smtp-Source: ABdhPJwRK4+EZRZNtMdLqGK/dX5rfQ7BYadYVYafONuwUNJOtUu6DphjjfUO3MrISkFIEmlloLTCcg==
X-Received: by 2002:a2e:93cf:: with SMTP id p15mr10098098ljh.141.1605052486527;
        Tue, 10 Nov 2020 15:54:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b5b7:: with SMTP id f23ls2440211ljn.2.gmail; Tue, 10 Nov
 2020 15:54:45 -0800 (PST)
X-Received: by 2002:a2e:88cd:: with SMTP id a13mr10000458ljk.180.1605052485505;
        Tue, 10 Nov 2020 15:54:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605052485; cv=none;
        d=google.com; s=arc-20160816;
        b=sHuiAhx6xXlgfKaBoAFPnpjCmKgnAVbXOzMUDA2GR/6ZnR1+Gc30YKcb2Nmsu5ANoq
         XSk8tE/f68fCwJUaz+P1+9mkbOAvzDerzMoi+xMqgSiH1LkM8nv+5bIWSbKun88gAcg4
         klmRXGXoVWxDLPVpnUhDRA5R0qfgiVVCaqs8aM+7MP2i57+8qcD6tOzVInq7bldiT4qN
         fUiD94Mu6aJ9KUFXltzerLTAbxLpcw5jQVDEf2uqd491fL5C7kw+X/naiuFp+M0I/Y2H
         fjZfkN/n21x55uMCxKHtKMawJm0FkzcBLfGNX9yprqVHft9Cn43vadfvuLsC8L3eirRF
         l0aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=MxCSh6Ume2fxAiIaiGOUVoq2LqEQN/Z9ENgYntt/q9Q=;
        b=JiVkfae2wh6dcQ2yWSL6zS3pQ4YJMRspigDOaynvIm2Qin30FIYy6XMdlYvV7i2VNM
         d3PlV/5RNt4NlMLBLMYtDlBY+trclG6S9RNKEaVfjM8O90DyEWoVpcFk23wm+FEQotQB
         qqOxwT5ZSw5pjhPa/fu7inLdIjvoXPlu3KeAbq718VF8XYPwVSU2cMGy9VE8JfeJ2yiD
         R6/SgxXqMbUt1GB2BBW/Hl2Mof5c7wUD6ZJkeSeCQoMW+taCT1mJ4XNAPZv+tIxAZsNx
         O0AyRDd+bd6R5KYqb6V1HmYNZ3oeJJir3MlCMNubUieGAUyH6hP5sAWmQlXeXjGH+GN/
         tIrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id f28si10790ljp.3.2020.11.10.15.54.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Nov 2020 15:54:45 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id 0F4511F4565A
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann
 <arnd@arndb.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, Russell King
 <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>, Collabora
 Kernel ML <kernel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
In-Reply-To: <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com>
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com>
 <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com>
 <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
 <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com>
Date: Wed, 11 Nov 2020 01:56:22 +0200
Message-ID: <87sg9ghil5.fsf@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On Tue, 10 Nov 2020, Nick Desaulniers <ndesaulniers@google.com> 
wrote:
> On Mon, Nov 9, 2020 at 11:51 AM Adrian Ratiu 
> <adrian.ratiu@collabora.com> wrote: 
>> 
>> On Fri, 06 Nov 2020, Nick Desaulniers <ndesaulniers@google.com> 
>> wrote: 
>> > +#pragma clang loop vectorize(enable) 
>> >         do { 
>> >                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0]; p1[1] 
>> >                 ^= p2[1] ^ p3[1] ^ p4[1] ^ p5[1]; 
>> > ``` seems to generate the vectorized code. 
>> > 
>> > Why don't we find a way to make those pragma's more toolchain 
>> > portable, rather than open coding them like I have above 
>> > rather than this series? 
>> 
>> Hi again Nick, 
>> 
>> How did you verify the above pragmas generate correct 
>> vectorized code?  Have you tested this specific use case? 
> 
> I read the disassembly before and after my suggested use of 
> pragmas; look for vld/vstr.  You can also add 
> -Rpass-missed=loop-vectorize to CFLAGS_xor-neon.o in 
> arch/arm/lib/Makefile and rebuild arch/arm/lib/xor-neon.o with 
> CONFIG_BTRFS enabled. 
> 
>> 
>> I'm asking because overrulling the cost model might not be 
>> enough, the only thing I can confirm is that the generated code 
>> is changed, but not that it is correct in any way. The object 
>> disasm also looks weird, but I don't have enough knowledge to 
>> start debugging what's happening within LLVM/Clang itself. 
> 
> It doesn't "look weird" to me. The loop is versioned based on a 
> comparison whether the parameters alias or not. There's a 
> non-vectorized version if the parameters are equal or close 
> enough to overlap.  There's another version of the loop that's 
> vectorized.  If you want just the vectorized version, then you 
> have to mark the parameters as __restrict qualified, then check 
> that all callers are ok with that. 
> 

Thank you for the explanation, that does make sense now. I'm just 
a compiler optimization noob, sorry. All your help is much 
appreciated.

>> 
>> I also get some new warnings with your code [1], besides the 
>> previously 'vectorization was possible but not beneficial' 
>> which is still present. It is quite funny because these two 
>> warnings seem to contradict themselves. :) 
> 
> From which compiler?  ``` $ clang 
> -Wpass-failed=transform-warning -c -x c /dev/null warning: 
> unknown warning option '-Wpass-failed=transform-warning'; did 
> you mean '-Wprofile-instr-missing'? [-Wunknown-warning-option] 
> ``` 

I'm using Clang 10.0.1-1 from the Arch Linux repo.

In the LLVM sources that transform-warning appears to be 
documented under 
llvm-10.0.1.src/docs/Passes.rst:1227:-transform-warning

Here's a build log: http://ix.io/2DIc

I always get those warnings with the pragma change you suggested, 
even on clean builds on latest linux-next.

I looked at the Arch PKGBUILD and they don't appear to do anything 
special other than patching to enable SSP and PIE by default (eg 
llvm bug 13410).

> 
> The pragma is clang specific, hence my recommendation to wrap it 
> in an #ifdef __clang__. 
>

Yes, I understand that. :)
 
>> 
>> At this point I do not trust the compiler and am inclined to do 
> 
> Nonsense. 
> 
>> like was done for GCC when it was broken: disable the 
>> optimization and warn users to upgrade after the compiler is 
>> fixed and confirmed to work. 
>> 
>> If you agree I can send a v2 with this and also drop the GCC 
>> pragma as Arvind and Ard suggested. 
> 
> If you resend "this" as in 2/2, I will NACK it.  There's nothing 
> wrong with the cost model; it's saying there's little point in 
> generating the vectorized version because you're still going to 
> need a non-vectorized loop version anyways.  Claiming there is a 
> compiler bug here is dubious just because the cost models 
> between two compilers differ slightly.

Ok, so that "remark" from the compiler is safe to ignore.

> 
> Resend the patch removing the warning, remove the GCC pragma, 
> but if you want to change anything here for Clang, use `#pragma 
> clang loop vectorize(enable)` wrapped in an `#ifdef __clang__`. 
>

Thanks for making the NACK clear, so the way forward is to either 
use the pragma if I can figure out the new 'loop not vectorized' 
warning (which might also be a red herring) or just leave Clang as 
is. :)

>>
>> Kind regards,
>> Adrian
>>
>> [1]
>> ./include/asm-generic/xor.h:11:1: warning: loop not vectorized:
>> the optimizer was unable to perform the requested transformation;
>> the transformation might be disabled or specified as part of an
>> unsupported transformation ordering
>> [-Wpass-failed=transform-warning] xor_8regs_2(unsigned long bytes,
>> unsigned long *p1, unsigned long *p2)
>
>
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87sg9ghil5.fsf%40collabora.com.
