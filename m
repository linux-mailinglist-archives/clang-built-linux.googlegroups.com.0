Return-Path: <clang-built-linux+bncBDV2D5O34IDRBKOI2D6QKGQEEEJU5SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E8E2B6E9B
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 20:27:38 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id b18sf10711295ljf.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 11:27:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605641258; cv=pass;
        d=google.com; s=arc-20160816;
        b=sV62XyvnynLRSHfL0K4iOEooIQFdpylk0MQ4/5hR2h+cD5/5/b8FiLG/me9fsVSc3W
         Za/kR0GP1kC5ugNgh2pq0x127+o8FYcMpazskjkahEJmpSGMiGsZPwycHt4U9MHrIYgi
         y2jgknDO+5DuPRYjenfkHEx3L9rZta2D7lj7shhttkfz+snQyvsTQCRLg6rrJFv+UOE3
         mqzROYHy8L3CG4cW4pA/mTXh35ErlXMY+UxIUcYXlilMeykYHS6liu9Id7jJw6Q76JjZ
         PJO6P1pG/rCUgSkLoFtOSpBuLKwztg1hL7x5YKv+xzty/Eb4tJfUdbo4kaSo5hHROisG
         SvSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:cc:to:from
         :subject:sender:dkim-signature;
        bh=LvhlFYU1EndXvnXj3ZSdo81HqkPYHDVVHQ7S/po1Ja8=;
        b=amtu7bmdXJfILJ+pu3m1Yqa3y5Q/EALvOOSNRNq4RSFvcGxiGSRdJIQfQOv42kCKBO
         E8KNKpqlwx2PE0sxqQy5qBkIlsknJtX69GHKGN2noXfvRiBoAGzOrvAY+zar83Eo0LQC
         V0m16isjVcOwj9nkjDLESDTJj7KGRHVA7DtEBz/ORM+NLVJvCR2x9Zhp91JS3p/TEr3P
         cYS8WwJ4O9WZc89uFpABt1soa0ScQqKG8cxj5Mf8IdzXHZxknj7uH2Fk7aRh6ND0B9B0
         xI7AvCbaTXYoiflO/u9yaChmgHGVwWnqtdRazsqTZ0lbSTHUNiwne6cevnzfXixbqi/t
         laEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=mal+kPD2;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LvhlFYU1EndXvnXj3ZSdo81HqkPYHDVVHQ7S/po1Ja8=;
        b=DgJC+9UiaH9RjELeIk4Kg015UaO6m/YtbujOwaMiZkDq/A98vH/9hWIAtPxnYtugy+
         O0jgL/HQ7PsSk7dhmIPA5AC/C3ENoLKZmC4MxOsEkT0DbwRywftaskN2pBIm4hwhTWba
         H0V4N59JwLySeLXrbUmhPX25A/bO1TQ5/KhFt6vnRpM2zBxsClIoIJu2zpAyKiet8WHs
         bDqOiKkgQxt1/nUB7iOscc+HDbJIYI1YH14J0lgsB8bjyUbZByMQ9FeZ9NK2wgh4YUwP
         GQ0ONfsyJIlTmzaatisxmMyBqTTvk7R6IQv/NDMmUziO28WcHc4SRwuhDt2UzFO1R+qb
         nmxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LvhlFYU1EndXvnXj3ZSdo81HqkPYHDVVHQ7S/po1Ja8=;
        b=B6RIS4DMHsNOADSEqq+4CnHok+eKL+v0/ISssMrd36nuGUzZ74mK3HajFLmCAFvP/i
         uITVR2N3UE0Zw/CVfQgzqaS3SSF2ldB8Y659ihvC5INdaX3h0ZgwzuK1sNVg49M1VjVk
         5tRcRaaf2+7pZ+0N6AGmbAqeCjYw9PFhxp+zRHdGhGYepdgXiRzg1e8aFl+6C6fmDn/G
         JCmrALzPE4V7W9KzCk0Mim+fr40W95keUuiNyrdadb1RVnzuYSMVRnIp8C9c3HYaEzYV
         e5YvM4pj0OfElpRd5Ba2sHuqDAhKUu6OyiVCNQJmXkISksDF/dUMGnZdR5axKKtorGw0
         x2Kw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZRIQusUHv367xjp/tdwBEIsPb+YwT3UQLYaA0MDQGmn4u2nf1
	TzrksGdkIsbvSPG8v/BfD/g=
X-Google-Smtp-Source: ABdhPJzgpBT+foAxQGWN27AXWHsTXbCFXhjteI2a5H651xV1ndZOYrQCYPXZ67gda50+5ae2S9jNQA==
X-Received: by 2002:a2e:b1c9:: with SMTP id e9mr1437624lja.283.1605641257853;
        Tue, 17 Nov 2020 11:27:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6b0b:: with SMTP id d11ls11674940lfa.1.gmail; Tue, 17
 Nov 2020 11:27:36 -0800 (PST)
X-Received: by 2002:a19:5e4b:: with SMTP id z11mr2419925lfi.305.1605641256753;
        Tue, 17 Nov 2020 11:27:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605641256; cv=none;
        d=google.com; s=arc-20160816;
        b=GGaqayP5gb43CVBB6atJhdI2wmuA1unx3g4r8Ul3NgBAtUwVRbYHQjpTQMowWZ61Wp
         zfgTPTYBVXN6PR733nZSATuRX5I3NpGFGU2M5pgh0ZUXb0LNaKO3tIf3Tyw/nyEnhaDM
         XgRzVH3l5akuxw/EVI1MtalE/t9uYMnCL7BoGlGTUlwhh20Yx/zRTLYD8dRaaSEjJuTO
         YvuVzHtcoFRQ51+B4gAPn43xeXUBSp5hwC3vNs5MHL5DPrkKlGtAGSOGfZcbHdsqb3dA
         v/XYYaE9W7Pd7CRFrT3y7ExgGTHFck5so/1NZMayPZLYByCSvyK0rvhGbLBPyhlxEI4k
         /0aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=68h4/CMO0Xb/f6x4VOJA0yG7fXJsrNZzip6hN7Yjkww=;
        b=AtelfAGtjuHpxNt9aQThLkQu5QzXNZInZiVH5SwC7a1YJUiYbzEg6t13zdqOqgI8FA
         xEtuexQy+1970h0OQzDsrFHiNVHcm4l2Boh6YckeAKEh+fU4IjmHMmO7+T8w2Ab5vgbR
         CQFxAKIcD9RHxkPwpT2piu+DanD97JU7u/DhtUQiPqXq9LGSRlnwo9Oo0FmRDyLeRdof
         CS/coEwp1Z1bC1QZOca7j6xo2GrgIJICWP6kBjuRgppwSpMYhxMxkK+qf7NOr7JbvI4V
         nlMLg/XOhQIGiwkX7cxIlmrt+oOIqulNUtwBqKT+MURtFHYcce1Yzv3xXbhPPQx1JbRY
         dgjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=mal+kPD2;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id o13si619095lfo.5.2020.11.17.11.27.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 11:27:36 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::bcc4]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf6dY-0005Zb-Re; Tue, 17 Nov 2020 19:27:33 +0000
Subject: Re: [PATCH] RISC-V: fix barrier() use in <vdso/processor.h>
From: Randy Dunlap <rdunlap@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Andreas Schwab <schwab@linux-m68k.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Arvind Sankar <nivedita@alum.mit.edu>, linux-riscv@lists.infradead.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
References: <20201117013951.7827-1-rdunlap@infradead.org>
 <CAKwvOdmESwnF14TLjRfzJg8Dau8XW0LgoDvXtdPjPOqdf211SQ@mail.gmail.com>
 <9ab43756-6c48-c5e8-3a5d-e44bba070a97@infradead.org>
Message-ID: <fe040988-c076-8dec-8268-3fbaa8b39c0f@infradead.org>
Date: Tue, 17 Nov 2020 11:27:28 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9ab43756-6c48-c5e8-3a5d-e44bba070a97@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=mal+kPD2;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 11/17/20 11:22 AM, Randy Dunlap wrote:
> On 11/17/20 11:00 AM, Nick Desaulniers wrote:
>> On Mon, Nov 16, 2020 at 5:40 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>>>
>>> riscv's <vdso/processor.h> uses barrier() so it should
>>> #include <asm/barrier.h> to prevent build errors.
>>>
>>> Fixes this build error:
>>>   CC [M]  drivers/net/ethernet/emulex/benet/be_main.o
>>> In file included from ./include/vdso/processor.h:10,
>>>                  from ./arch/riscv/include/asm/processor.h:11,
>>>                  from ./include/linux/prefetch.h:15,
>>>                  from drivers/net/ethernet/emulex/benet/be_main.c:14:
>>> ./arch/riscv/include/asm/vdso/processor.h: In function 'cpu_relax':
>>> ./arch/riscv/include/asm/vdso/processor.h:14:2: error: implicit declaration of function 'barrier' [-Werror=implicit-function-declaration]
>>>    14 |  barrier();
>>>
>>> This happens with a total of 5 networking drivers -- they all use
>>> <linux/prefetch.h>.
>>>
>>> rv64 allmodconfig now builds cleanly after this patch.
>>>
>>> Fixes fallout from:
>>> 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
>>>
>>> Fixes: ad5d1122b82f ("riscv: use vDSO common flow to reduce the latency of the time-related functions")
>>
>> Hi Randy,
>> Thanks for the patch, it looks good to me.  I only had a question on
>> the commit message.
>>
>> Is this also related to:
>> commit 3347acc6fcd4 ("compiler.h: fix barrier_data() on clang")
> 
> Hi Nick,
> Yes, it looks like I tagged the wrong commit in Fixes:
> Thanks for noticing that.
> 

I'll send a v2 with corrections.

> 
>> I plan to backport 3347acc6fcd4, so it would be good if all of the
>> follow ups are all tagged accordingly with fixes tags, so that I don't
>> break anything backporting 3347acc6fcd4 because I forgot or missed any
>> follow ups that also needed to be backported.
>>
>>> Reported-by: Andreas Schwab <schwab@linux-m68k.org>
>>> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
>>> Cc: Andrew Morton <akpm@linux-foundation.org>
>>> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
>>> Cc: Arvind Sankar <nivedita@alum.mit.edu>
>>> Cc: linux-riscv@lists.infradead.org
>>> Cc: clang-built-linux@googlegroups.com
>>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>>> Cc: Nathan Chancellor <natechancellor@gmail.com>
>>> Cc: Paul Walmsley <paul.walmsley@sifive.com>
>>> Cc: Palmer Dabbelt <palmer@dabbelt.com>
>>> Cc: Albert Ou <aou@eecs.berkeley.edu>
>>> ---
>>>  arch/riscv/include/asm/vdso/processor.h |    2 ++
>>>  1 file changed, 2 insertions(+)
>>>
>>> --- lnx-510-rc4.orig/arch/riscv/include/asm/vdso/processor.h
>>> +++ lnx-510-rc4/arch/riscv/include/asm/vdso/processor.h
>>> @@ -4,6 +4,8 @@
>>>
>>>  #ifndef __ASSEMBLY__
>>>
>>> +#include <asm/barrier.h>
>>> +
>>>  static inline void cpu_relax(void)
>>>  {
>>>  #ifdef __riscv_muldiv


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fe040988-c076-8dec-8268-3fbaa8b39c0f%40infradead.org.
