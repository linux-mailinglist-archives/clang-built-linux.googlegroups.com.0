Return-Path: <clang-built-linux+bncBDV2D5O34IDRBM7ZZL6QKGQEYBWBJ6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6AB2B4E7D
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 18:53:55 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id y15sf5212776lfh.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 09:53:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605549235; cv=pass;
        d=google.com; s=arc-20160816;
        b=NRs5CwdTt1QeYt5dpjUpeaeRUOSNQSFNE3Ss9YnHwJapYTRcuB/AIVjZHEtfjHg9wk
         QkA+L8CKJ9v2S4EDF9abkgEFOiB3GmfZYtV+XumHApPrVvoxyJqVCc2cL6Naus0p42sF
         yra1B/S5pdgaVyw0HdlHM4P7/xdbwfXwtl2BJowz0wJgPMYonT7A/rItyKcFXRDXnZRy
         MNqOfmeKSIbFuqOTrUtnjpjY9JaaeAStdsRjuDSkHIXGGT4Zfcv6EtCgZQH9zdk9G+b8
         MVNANZUy64626qs+gtMmKbiBdjvtHXrj1aBJ2gnbVk/xwC+UIdi9BWfjOSuVeeOGX6hI
         Gr/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=RCmi6qiPETLdV7ggYnHzflOHrHawGxXUyG6Iyez2zxs=;
        b=yGCmzfnyDtKrfVRinry74JHZ17yjSkviNe9/cxXuv+Ez4xN264L1eGII2X84yPhyly
         RhPqcYmZEGFX5fwv023CHgKSspChSxzhY8y+qhAlGe0GNpTxBzQ0RtGnIIJKe/IR2K6Z
         +3bmuqcONM6uLKqBfsCeXZTmdGIfZ4X3y2zEfurXGENAOJTVTclHfuco5/MjPLzOZVAa
         3PgUsi829OgAY4M7p2HyYa6y/JM1Nd5FqI9IgJkOFI8/apnD1Fb64rwuE7gEskqGMYNW
         IkXYqMjn0M6Qq4tyZk9CzRUSA3ph3sdwFZTP/RF7qZh+h0IDucVDHqo/H5G7Vzu6GyB6
         9yQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=B0IYZ8EH;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RCmi6qiPETLdV7ggYnHzflOHrHawGxXUyG6Iyez2zxs=;
        b=BufFMP8jQGPGI2mLCMA7f8oz8150ThfYTpWkvDJ49C7CXYO+G7vcsTXRM2L79MWANX
         xWMSwhilTcirTNBGCc0t9p6mz/ZFE00Ckh1+v5zdREWVNYbvzHH9bEcNqtoqz9hEDR1C
         a5Fsq5B88A3XaCGz0HIApR0aR0DEZq558tvCrKAbT+KHSoHmn94nc1j9muNtZKVEWMSS
         R3jX55a9Kj7tP4sDe0+f3VS2460Dp2zoOIq0qtT/zJHJ3lFkQSQMDpIQ3XYKArXm/fYl
         OspmC3WhA4i7bwhfp+HodWvBi0sofsIy3pi1iUUIcKHS5yoXuOSUVXhZIwj1P/vvKRjV
         i0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RCmi6qiPETLdV7ggYnHzflOHrHawGxXUyG6Iyez2zxs=;
        b=aQCwQkLj19lauSy6blrocBG3q0I1sYjCx8bhkau+JagKRKzJhwDgB3o5K+qMad2qlx
         j/kiZcVWKUPx0dx0spqxN0OnIcYHwxZ3YwWILWWFnuwpE/GOauWXLTyfWbbwE1pYaA85
         snIlFVFWzSgtVLosEdb0w840OrUp0GrbYsogaYpqPx7+6suXjZkRy/tbjGtYqTlQ7FHP
         zGeMtHXOdR5INU1/RGPwcgYrIgi8EGQaUI3/aidSYLvZcYE/65HTcjNAJkVaNsLhu8Uz
         1drCrOwQPh3NVlG3BTcZOC5DfX97LM+VR7itfzXbFF2/afw7OjhXB6b68+gKfZex/vOK
         3+sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Mh7WzQ5hsJZ4W3/6EzdWr22ARqD7n20urBYTMc89lp5vIjKS+
	0dRnUF8w9klit51JQxKyrEA=
X-Google-Smtp-Source: ABdhPJyjkHlqSbHqyF2Bc3UufVk7ztf3t9LVqa3Feh7N/nHaWYHNWs2r7yv+bspS4IzXbdzQKL6UYQ==
X-Received: by 2002:ac2:550d:: with SMTP id j13mr203045lfk.301.1605549235451;
        Mon, 16 Nov 2020 09:53:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:d0e:: with SMTP id 14ls9168945lfn.0.gmail; Mon, 16 Nov
 2020 09:53:54 -0800 (PST)
X-Received: by 2002:a19:57:: with SMTP id 84mr211418lfa.79.1605549234574;
        Mon, 16 Nov 2020 09:53:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605549234; cv=none;
        d=google.com; s=arc-20160816;
        b=eYJD47KCejtPf/vQWIGGCuvWQMstUj8hhT/XyZvNOVQrsOaxzWjQbQ7zGraZy2t9kY
         e8m9ErjNm5JD3TBrCWJfOAd+BjOXpk9LwMDqbwYqs3mHcY2NOivv+6jzuLh8zRzCrHlv
         CZSL2zPlx4ogcXN+eu3S2OMetUaO86rCshH3NrncOepIUzQA1n5d7LoYkEItWwtvYReB
         /7TOIp1+eKuarcUDsC6jWHULiSpJxRBNahFYh3l5NUREw2P8qAFB4+jXIDfzoKPvvCzZ
         9MMuCx5dIEHKB9Zcy/44kH/5Vc7W1QO03k/eJxDmymQLPhtFYhZJLOH7aR9K2oAo13Z3
         ixcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ePseZts8+sY/Qq1NpQZifi/yR1ZOAX2fbODxhYzGnJ4=;
        b=cIU2f4DQAJIkU+Yr6OnUhSSp/+uUNO/t2Ywdeu1oR2S+2QEHlB3zBVjNYmxRbFjy7B
         KteZmNayIAkEA0J1hBg7i5XIkqtR4cpqNiTR/RiL525u2Cg1XxLaycmONwF33zdapyje
         7vmVaA10//msB3uqvXtA8EzOwkEO2jHoQ51Ib9OMXaNt2fc15NmEILRU/7cfWvdALhmO
         Jf7loSZCJ8dZuauYMzm8fpHLW3qPKJmjffbqWPzTkQjQWS0HZEjJKN9jkZtltv7hLowb
         A/mdY8w0odHjjf4jbImNtJdcKdXrk7KXBp1BcCPS+cTFmiPckdqlSYM3M77ctCK6zNre
         39KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=B0IYZ8EH;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id s22si52776ljp.4.2020.11.16.09.53.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 09:53:54 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::f32]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keihJ-0002bH-L2; Mon, 16 Nov 2020 17:53:50 +0000
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
To: Andreas Schwab <schwab@linux-m68k.org>,
 Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
 <87sg999ot0.fsf@igel.home>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <0dbaca2d-9ad0-8c1a-a280-97be01cac2bd@infradead.org>
Date: Mon, 16 Nov 2020 09:53:46 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <87sg999ot0.fsf@igel.home>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=B0IYZ8EH;
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

On 11/16/20 9:47 AM, Andreas Schwab wrote:
> On Okt 14 2020, Arvind Sankar wrote:
> 
>> Commit
>>   815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
>>
>> neglected to copy barrier_data() from compiler-gcc.h into
>> compiler-clang.h. The definition in compiler-gcc.h was really to work
>> around clang's more aggressive optimization, so this broke
>> barrier_data() on clang, and consequently memzero_explicit() as well.
>>
>> For example, this results in at least the memzero_explicit() call in
>> lib/crypto/sha256.c:sha256_transform() being optimized away by clang.
>>
>> Fix this by moving the definition of barrier_data() into compiler.h.
>>
>> Also move the gcc/clang definition of barrier() into compiler.h,
>> __memory_barrier() is icc-specific (and barrier() is already defined
>> using it in compiler-intel.h) and doesn't belong in compiler.h.
>>
>> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>> Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
> 
> This breaks build on riscv:
> 
>   CC [M]  drivers/net/ethernet/emulex/benet/be_main.o
> In file included from ./include/vdso/processor.h:10,
>                  from ./arch/riscv/include/asm/processor.h:11,
>                  from ./include/linux/prefetch.h:15,
>                  from drivers/net/ethernet/emulex/benet/be_main.c:14:
> ./arch/riscv/include/asm/vdso/processor.h: In function 'cpu_relax':
> ./arch/riscv/include/asm/vdso/processor.h:14:2: error: implicit declaration of function 'barrier' [-Werror=implicit-function-declaration]
>    14 |  barrier();
>       |  ^~~~~~~
> cc1: some warnings being treated as errors
> make[5]: *** [scripts/Makefile.build:283: drivers/net/ethernet/emulex/benet/be_main.o] Error 1
> make[4]: *** [scripts/Makefile.build:500: drivers/net/ethernet/emulex/benet] Error 2
> make[3]: *** [scripts/Makefile.build:500: drivers/net/ethernet/emulex] Error 2
> make[2]: *** [scripts/Makefile.build:500: drivers/net/ethernet] Error 2
> make[1]: *** [scripts/Makefile.build:500: drivers/net] Error 2
> make: *** [Makefile:1799: drivers] Error 2

Hi,
What kernel version are you building?
This should be fixed in 5.10-rc4 by
commit 3347acc6fcd4ee71ad18a9ff9d9dac176b517329;
specifically this portion of it:

diff --git a/include/asm-generic/barrier.h b/include/asm-generic/barrier.h
index 798027bb89be..640f09479bdf 100644
--- a/include/asm-generic/barrier.h
+++ b/include/asm-generic/barrier.h
@@ -13,6 +13,7 @@
 
 #ifndef __ASSEMBLY__
 
+#include <linux/compiler.h>
 #include <asm/rwonce.h>
 
 #ifndef nop



-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0dbaca2d-9ad0-8c1a-a280-97be01cac2bd%40infradead.org.
