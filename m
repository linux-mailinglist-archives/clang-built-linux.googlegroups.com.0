Return-Path: <clang-built-linux+bncBDV2D5O34IDRBCGG2D6QKGQEPMYM7PA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B8C2B6E81
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 20:22:49 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id w5sf11243409wrm.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 11:22:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605640969; cv=pass;
        d=google.com; s=arc-20160816;
        b=rKbd1uNk4+33tBp8SAb8Z+TFgkXbRAgs1BZRioYt0Cl/DKCmyFdAn3bf8IrBtocQQ4
         SMh6wrKGdohhioWHtJbcdxKolKak0hasBqdjm1rAMAs96/pHd8IROBdpqUaX18cMyjmJ
         qsra5rdM/6sp+VsZtiNSZEMKObZ5fhiyqBYzQNXR6qoqHwkZSayh/rGJKJ2wtc5/2M9F
         VPC9kA0JXV0aD1k72TqRoNcPi9orXryCYE7dF4vS5seAfHsM3mkpeHty+llK0kJOLPw9
         ebl/BaMjzbq8wAn6yG2roCF2iEezJAUy9gZTtMelafdjEFAg4l7XEbThIZHptVieaHsw
         DEcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=cEVIO4wPMBamWr5J9MShBfDEZp9UvsAwgcK8dnb2RLc=;
        b=ur4dp2JTqt3Qw+Rb0nhzpIPqILgEf5ZfGDaPKxpuFm+IfhtQFDZObifv1XfMEL4iQV
         1t9Z6ejyKkD4a5eIRY3LpISSvci1x6MdKTGnmHsCdSacLr8/TfzWsl+Lc9jhw3mdGRvS
         ANcntZRqNqprAAhWKL07ekXAnWKLwAZudrQjZ5QpOHv+WCvcDTQAGUZVe8GrdVqWhs22
         PYTSWeUYOhHWBOrhnEZChqb9f9TBdidJSdAssWv9QHiqnyRiKW9Vsaj4PkZBO87v71Pd
         IQ4heLDaeLE42XuAgEDXXVTt4uktqIPvrAq77CEbNHgQShdNGHxjK4C9Gy6gylMLUUBL
         r/FQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="iC49Y/Wp";
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cEVIO4wPMBamWr5J9MShBfDEZp9UvsAwgcK8dnb2RLc=;
        b=IlYP7BlMCQlvRQ7wSL+vhPrNAvkrv8ZWEW7ESJjHBaXcWVKV99L/CUSXTva1kuZdfI
         2yNfFB7ONRladk/LQ8r13g2yMzWVr2meXdD8kjbGqC9Lqch/yH6mZH3HK0lAgm2yq76K
         3DRese4xbv0pgV1CJUMx5Ukj5SkqSJCGARYBJ7g15HwQec6NXHZHxz5q6+tRbE+yep0m
         l66RHnd3bICIJS3vHzoJQJByIYaWQTd2mBWE0Ei74GPh1DhKsUM0Qa8qb3HPsKPSh3KR
         wb5A8j5hDbsbqN+hkcHT8bZ85P2ydVE0dsPicnPXTXWuLo2u1AxBgPTkEB8rIuMoRcf9
         TXMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cEVIO4wPMBamWr5J9MShBfDEZp9UvsAwgcK8dnb2RLc=;
        b=sfpypBXPEN0tTcSrlYa4XwH9WM9gEQBzildExoev1+ne7JfqZBXpj06U4YvDP/oQZO
         CiYyZOlxJPGpCvPm4j/edxuaAtoZeX6qI+/5YoGeTKgBCReS50rPUTkgFW1AoEf+8LR8
         6eAUJZvG8sXnmGkNaj8zcZ606/CpcJTBcdWjU6OUkrbU+RWLJcrMaywpBbX3obxE7E8u
         A93klaJpYBOa6SKVO0maMMyjpV7hysvAeCdTtS/fu8mPHeUPtCwehP1+CwhvtO84KlA6
         iLMV5xGXAYL2VizH8UMcpWDL5ChS8dpgbPWuUhTWcq82vj4xzeZfaifRFZoZZivGVhbU
         sPBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LTBb+7iT5/5CsiFKSXwfK/P64aeTIPmF5WejH/nf6R5A8KWQu
	7cA8hwGzItiHVAedWLg2ImA=
X-Google-Smtp-Source: ABdhPJzI+VwPP/40mdzSx3Mn6YoU2WY/tclqufmWqIzJ13DY5k4ezf6E3YBJXksqrg0YhE1wkxnlCw==
X-Received: by 2002:adf:ebc5:: with SMTP id v5mr1156000wrn.392.1605640969030;
        Tue, 17 Nov 2020 11:22:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:408a:: with SMTP id n132ls1831045wma.2.gmail; Tue, 17
 Nov 2020 11:22:48 -0800 (PST)
X-Received: by 2002:a7b:c772:: with SMTP id x18mr627597wmk.185.1605640968126;
        Tue, 17 Nov 2020 11:22:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605640968; cv=none;
        d=google.com; s=arc-20160816;
        b=jbgriNw+VIZh6tRwLcwC0RoCjsdF0At3Cs9/5RtqTHpAVKDR8CW/Hio36Qnz9qPkfa
         WsZTwU1Qd6yG0i9+EE5cZ17ejCQ6YYnSM++O0odt8bX92J/nZZFmBOKeUj5SOs2J5oaq
         ItrMdUpxcVN02kp1fW/cTLrOem+iseWgSzWrmljRvo/VzIHRQeC7cPHR41wI7PbZPCch
         Ficp5W7dK84Hz9ZTR4QXTfV2webFVqeNcF+gYp5xCcTnUXprZFl56DKbI3a+06xG+0yg
         M774rxGt5zrskz127Y0zhaUurMI6adiDDwa4am7nEIr9Y6bIEblhK9Ublsoq1SwGdEPc
         9iqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=t0Ko6hqbyKkoaE2Zp9g1QeIuYu7rk/KOlj3Y3oin9Ng=;
        b=INWOgke7CMVUSC1/0TEZmBOxtieW+KRVb4f92g8nLAlBDhJgJLUjf44H7y6CtzJGrg
         Qez3W2zWnXjZYAVyipOWeEkABlCkYBG5Bec41aERO6KbNjxP9ukJEPYnwf6+qdmA1vGi
         O/0/i8qTSjnt4oLR9J24QaOjXR/CC+HB6Qc9HGN5P0GmJAMQSjZlngdNg6LqWCTlAZXu
         ezEGBzncjinYJAy+qUfD4xoMrPj53AdGhj4r4I73c7F+8gbfC7CODXvbwZNvSzJWIXtK
         tYciUZZnqeAaru37ThLmSy0ZR9hlFHRee431T9cvUwruid9iKZFQBmymr48pL1WeQOrT
         SdhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b="iC49Y/Wp";
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id i3si655489wra.1.2020.11.17.11.22.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 11:22:48 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::bcc4]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf6Yt-0005HV-Qs; Tue, 17 Nov 2020 19:22:44 +0000
Subject: Re: [PATCH] RISC-V: fix barrier() use in <vdso/processor.h>
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
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <9ab43756-6c48-c5e8-3a5d-e44bba070a97@infradead.org>
Date: Tue, 17 Nov 2020 11:22:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmESwnF14TLjRfzJg8Dau8XW0LgoDvXtdPjPOqdf211SQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b="iC49Y/Wp";
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

On 11/17/20 11:00 AM, Nick Desaulniers wrote:
> On Mon, Nov 16, 2020 at 5:40 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>>
>> riscv's <vdso/processor.h> uses barrier() so it should
>> #include <asm/barrier.h> to prevent build errors.
>>
>> Fixes this build error:
>>   CC [M]  drivers/net/ethernet/emulex/benet/be_main.o
>> In file included from ./include/vdso/processor.h:10,
>>                  from ./arch/riscv/include/asm/processor.h:11,
>>                  from ./include/linux/prefetch.h:15,
>>                  from drivers/net/ethernet/emulex/benet/be_main.c:14:
>> ./arch/riscv/include/asm/vdso/processor.h: In function 'cpu_relax':
>> ./arch/riscv/include/asm/vdso/processor.h:14:2: error: implicit declaration of function 'barrier' [-Werror=implicit-function-declaration]
>>    14 |  barrier();
>>
>> This happens with a total of 5 networking drivers -- they all use
>> <linux/prefetch.h>.
>>
>> rv64 allmodconfig now builds cleanly after this patch.
>>
>> Fixes fallout from:
>> 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
>>
>> Fixes: ad5d1122b82f ("riscv: use vDSO common flow to reduce the latency of the time-related functions")
> 
> Hi Randy,
> Thanks for the patch, it looks good to me.  I only had a question on
> the commit message.
> 
> Is this also related to:
> commit 3347acc6fcd4 ("compiler.h: fix barrier_data() on clang")

Hi Nick,
Yes, it looks like I tagged the wrong commit in Fixes:
Thanks for noticing that.


> I plan to backport 3347acc6fcd4, so it would be good if all of the
> follow ups are all tagged accordingly with fixes tags, so that I don't
> break anything backporting 3347acc6fcd4 because I forgot or missed any
> follow ups that also needed to be backported.
> 
>> Reported-by: Andreas Schwab <schwab@linux-m68k.org>
>> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
>> Cc: Andrew Morton <akpm@linux-foundation.org>
>> Cc: Stephen Rothwell <sfr@canb.auug.org.au>
>> Cc: Arvind Sankar <nivedita@alum.mit.edu>
>> Cc: linux-riscv@lists.infradead.org
>> Cc: clang-built-linux@googlegroups.com
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Cc: Nathan Chancellor <natechancellor@gmail.com>
>> Cc: Paul Walmsley <paul.walmsley@sifive.com>
>> Cc: Palmer Dabbelt <palmer@dabbelt.com>
>> Cc: Albert Ou <aou@eecs.berkeley.edu>
>> ---
>>  arch/riscv/include/asm/vdso/processor.h |    2 ++
>>  1 file changed, 2 insertions(+)
>>
>> --- lnx-510-rc4.orig/arch/riscv/include/asm/vdso/processor.h
>> +++ lnx-510-rc4/arch/riscv/include/asm/vdso/processor.h
>> @@ -4,6 +4,8 @@
>>
>>  #ifndef __ASSEMBLY__
>>
>> +#include <asm/barrier.h>
>> +
>>  static inline void cpu_relax(void)
>>  {
>>  #ifdef __riscv_muldiv
> 
> 
> 


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9ab43756-6c48-c5e8-3a5d-e44bba070a97%40infradead.org.
