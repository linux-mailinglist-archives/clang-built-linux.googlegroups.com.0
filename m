Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFOUZKEQMGQEDZH4UDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B889E400809
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 01:04:54 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id z23-20020a4ad597000000b0029174f63d3esf224613oos.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Sep 2021 16:04:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630710293; cv=pass;
        d=google.com; s=arc-20160816;
        b=biEj/jwluHPGOuCvEYumnLANF0La2PWgBDbyExl+tTzvK49oY7A027JoOOsgpx9QDt
         o7uchLcgOd4zqvlKSoieQeDcrzDf04Ym4f1minO4cCiI9K0BO6VyDhSV8qWUUGrS1+uj
         fOwcFbFxTiu/XCw02lvQZOurpKkc2jwiqFH16KRjkNt6U5jZ2Y6OIBdYDiC/BlL1JQUa
         hYPGgZ/dcyDBp+aw0ialgVISbVx4MyQMGN67kNFTai4ac8lEjut+Bvq5xKH+3eC9HAXq
         OEg7chzZPB+i4iXE10cVhlgpKa4K9EGLVnU+QSUEIh8yQVpAev0xj19+9r1IwLOKyxs2
         dj/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=6oggBshBPGhH5feMNy7b6eMstRhiaugS0FYmiwWp1ZM=;
        b=kL0dzEMn1yvsH1w3uOFFAyuyhuWPwlgVKH8R23XVOomtoTwQegJqmj6P4Mt2fNjSU3
         dJKMrGApG/a8bh+2Khv358sBWpEuqxpnRhVA7z3Kalcx6KGU6d8YKpMzXK3z/XWhGCaB
         CxfeQoNpfZyPJbffgNENu5HalUPjK4TNA971aVtXUvj0G9SylZTe308BgKWNrUHr+/cE
         n7nsYwr60NCZIft5hMSf3QOLmL9dsK/JsQr0YlvCLF2NH54UJ7+kzlccWZ6gjsOs++98
         w9in/tDKzUFUN2wZ9qI0E/YtTJB2Ltrcr5srAWJ+nRuWmHCJueV/CeebG5D3oCgBq+hg
         qU7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VBpNgYVx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6oggBshBPGhH5feMNy7b6eMstRhiaugS0FYmiwWp1ZM=;
        b=FCrrKY6PH7MGOsC56g4S+FiYj8zCL+efwxSgZfgl8AzZhnL0L3BRFK+FtzP2+MnB50
         yYAatUs/mQ0Oqo3LZwKYcilCyIUlFCBbDWkVG6r+cJ/c6xbieBmgx1UpZuco2wmI/5fo
         xMZN/tOgTPxHM4G3A5kFtG9IPHQbEJtQgPUT+Ka0k+x2m6snZ+0j7/u18yld+clZJ5Le
         BIPA/BMCOIynMHC+O0kGZsXqm28gBeMCWemeDn6oNIYbzJ9Cwp6Jqv7oLQestLsp44o7
         BJXfydbuEMs1nfv0EgEw4eL5/0xYc+rq3DXoWQlmMuRgEXL2EyP33OVUWlbP3oFNPVxa
         KjBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6oggBshBPGhH5feMNy7b6eMstRhiaugS0FYmiwWp1ZM=;
        b=SE2jZboIeEAwY3SLBPQgRgo6BuRirlJLAHGUQcsSrcwUEd/OxjSG3PC2pzpFt+zmSS
         WTQH8FLnSxVu1dJ7/LLttXwgMfnmFUYqJCdIPDKUjM/jp4pW+Sy/8w6aCLgPHDM/isMH
         P/xS2BkeoOOviRlJdW7ZTvQYOdt6i5gEA4LQTHiUc1nPvEJEQOijys94+ERzi8NLM4hH
         2F1/OA6hpw2jp6YEzW/BiahKECBtvhuIgdmZlHacFQzuwHLQK8YXU44x1HoSeNTGemX9
         G9GblpyZSplGG/gY8uFUjsuYsnTVOSfBVjzhIyAogcT4pMFUI6nfztoWrFd15kIwLvRE
         Mimw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530omxG+iB5G3BAZQYx3rXJDy8Bgp47hJNYdWsrg6T0Hh0+hOn1V
	wlyn5+6zjj+A5LU/1HpZfRU=
X-Google-Smtp-Source: ABdhPJyPluXnaZ9kRDJIRV/aZPPpQzNUIJrbZ3Z3SNA1oLlT8stMlZcBobIUmjGRlghohGwiRJ63/w==
X-Received: by 2002:a9d:7e83:: with SMTP id m3mr1180655otp.44.1630710293358;
        Fri, 03 Sep 2021 16:04:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:20d:: with SMTP id l13ls133493oie.5.gmail; Fri, 03
 Sep 2021 16:04:53 -0700 (PDT)
X-Received: by 2002:aca:918:: with SMTP id 24mr847571oij.58.1630710292921;
        Fri, 03 Sep 2021 16:04:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630710292; cv=none;
        d=google.com; s=arc-20160816;
        b=ei3EphdSyZFe8+3vPrUsdS5sNKEJ7yKATCUcFdUrbrbgIj40usROu4NEToFDXtENwW
         3gWrjb38sa07vuxp/+Sx0IdyJSLs9DSQAiP5Obpm9/4uwaryXaDgI48bgjuZ8TKLycFm
         PE8gl8fTVYc/YDgBrrMriebs23C61KRHhtdE1Jz/slxQ700mO5oI4jl7eCc69yD1OaTt
         eIve0TrcLbX4let7hrwJi9gadkQ2lsywmBAAWDmO4eY1nG0tR5RdaDeQvhiNaTd1Chwx
         KCyPVl/PxFabmZY+4am2WJo8V2Xl5EOP8IshWSbhOIXsef8wOQgaF1DiEPh51xMGIsWz
         qExg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=47jHCEYHAGhavgqw7Taui0hPE/9Rg8dj4ydZwA+ocGo=;
        b=vaMUtWk1LDAwkF7jFZkmwMcBZG82StlS4jF/rPkvb0J1OsCodaF/hk2pRF8aRcxVvU
         XUnzWyG6eb7kH9vVdYbVEsqlaFA5wGl95ZdvJNqRNDVTqQStRbc4eKNdfcQRU5SaNHsl
         r6OeFY+FqaAHwkiVb5namUpt3ea5J4oHwXE7q5qMXYlWUJOEHrVC8TBOA3IaMfLTdbUJ
         qrgpQo6oUbPKxCehcgZWN8bkrOza2mRvKoxYN+t95GTiCyCLZZQ3fWIJHFaHtb47I8hh
         cpw0pllN6+orK+en7rj4gR6HpNMC6psJiGRV5nZHfqOlbjSw1mnaIig+hfywUaqBhTe+
         yy4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VBpNgYVx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s20si42360ois.4.2021.09.03.16.04.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Sep 2021 16:04:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9A00A6101A;
	Fri,  3 Sep 2021 23:04:51 +0000 (UTC)
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
To: Linus Torvalds <torvalds@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
References: <CAK7LNAQ0Q6CdXaD-dVGj_e3O3JYs_crpejWKpXHYQJYxyk-1VQ@mail.gmail.com>
 <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <3b461878-a4a0-2f84-e177-9daf8fe285e7@kernel.org>
Date: Fri, 3 Sep 2021 16:04:50 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wgoX0pVqNMMOcrhq=nuOfoZB_3qihyHB3y1S8qo=MDs6w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VBpNgYVx;       spf=pass
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

On 9/3/2021 3:53 PM, Linus Torvalds wrote:> On Thu, Sep 2, 2021 at 4:31 
PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>>
>> I fixed the warnings observed in the previous PR.
> 
> Ok, let's try it again.
> 
>>   - Add <linux/stdarg.h> to the kernel source instead of borrowing
>>     <stdarg.h> from the compiler.
> 
> So I certainly agree with the reasoning, but this worries me a bit.
> 
> stdarg is truly intimately an internal compiler file, in ways that
> stddef (to pick another example) isn't.
> 
> Yeah, yeah, offsetof() is "kind of compiler internal", and we end up
> using __compiler_offsetof(), but in the absence of that we *can* just
> do it by hand. So offsetof() really is one of those things where we
> can just do our own version if some compiler is being difficult.
> 
> But va_start and friends absolutely *must* match the exact compiler version.
> 
> It does look like both gcc and clang have just standardized on using
> __builtin_xyz for all the different stdarg things, and so I approve of
> what that <linux/stdarg.h> ended up looking like.
> 
> But at the same time, it does make me go "ok, this is a big new
> assumption that we've consciously avoided for a long time".
> 
> Nick is already on the cc here for other reasons, but let's add the
> clang-built list and Nathan explicitly. Because this basically
> codifies that
> 
>      typedef __builtin_va_list va_list;
>      #define va_start(v, l)  __builtin_va_start(v, l)
>      #define va_end(v)       __builtin_va_end(v)
>      #define va_arg(v, T)    __builtin_va_arg(v, T)
>      #define va_copy(d, s)   __builtin_va_copy(d, s)
> 
> being the way all the supported compilers work.
> 
> Did people talk to any gcc maintainers too? We don't have the same
> kind of "gcc kernel people" list or contacts. The above builtins have
> been the case for a long long time for gcc, so I don't think it's
> wrong or likely to change, but I think it would be a good thing to
> just make compiler people aware of how we're now relying on that
> explicitly.

We set up the linux-toolchains mailing list after Plumbers 2020 to have 
a common place that kernel developers can bring issues and discussion to 
both clang and GCC folks. I am not sure who exactly from the GCC world 
is subscribed but I have added it now to see.

> (Side note: Linux using the compiler <stdarg.h> goes so far back that
> it very much predates all those nice builtins. I still have memories
> of <stdarg.h> being a collection of nasty per-architecture messes back
> in the bad old days. So I'm actually happy we can do this now, but
> there most definitely was a time when we really really had to use the
> compiler-provided stdarg.h).

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3b461878-a4a0-2f84-e177-9daf8fe285e7%40kernel.org.
