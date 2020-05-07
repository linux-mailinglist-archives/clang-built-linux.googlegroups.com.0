Return-Path: <clang-built-linux+bncBCVLJ7OQWEPBBF4SZ72QKGQEJJGU7QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CF8F1C84F3
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 10:38:48 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id ck5sf5144875qvb.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 01:38:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588840727; cv=pass;
        d=google.com; s=arc-20160816;
        b=wTx6cwWeh3TbBTL5/hxpa16CCWTLgDsrc/yBx5TvX4Z3P3u9TU7JlqHK1G4bnSd1aG
         kLQ3cnhbaLYSFA5qsZBJ6WnK1lticD038OfSaA8tYQQs46n9Rgwuuww4cJ0P2TFTiTY9
         utzRNBD+NT8mpI55hYFnOeN4mG53cn9QJSEBFoisYsjWaBWjjwwuiplTkh0x7aiLXisf
         wtH2f91FJSa5rPkz9+qi9h9oyGCwsyp7gTUZuxjR3Bzc71vxj/rQd14YRtxQnco5+/QX
         Bnlc/M2S76SIUpuJvi1LMHJZJZsaBJ+BJjcNOPPR0waYqgzRgqjesJnyrL+rCSMF9X2V
         os4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :mime-version:references:in-reply-to:user-agent:date:dkim-filter
         :sender:dkim-signature;
        bh=8EvT4565vQFXwAZvc8YoL/KIDX3w+8e3/zOkPMKdvAc=;
        b=C6XuvuBe0iGwowczY1/u5tk10uHgWWmvdjAfzgNcKxjXNvS2Yi3ZSaae+OtkAksnoB
         2UQt8Ra6Im9YM8rpp5eX/TrJto9wa6JqBNG8PW2OQcytp1lCKM0rWC+WlG6c597kTY+F
         /SdaSBXBQNXQr9lWmslIlh8ukTzMEwB8hn8Jhr+BKoCobjuGxH1gGgfHKg7EizATGCWv
         FZ2B7RlII9I311KWPeXopPK3mizBXvkoKs+lXm1izXWBEXwzT2hGdeLl+31NziAqOdpA
         /sIynFlZxjywUjJ+8KqPLPb3IV1c0HvIfJVOIedEpIbsqnbkAO4veUeuIbKZTotcCPHr
         X9/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=pWbvTKbd;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:user-agent:in-reply-to:references
         :mime-version:subject:to:cc:from:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8EvT4565vQFXwAZvc8YoL/KIDX3w+8e3/zOkPMKdvAc=;
        b=qbdIsRBDV05ZxBUoET3Bn4fah3RENl2FPFEWMAlkpX0kiTdFMerqWBtLKo1Tkh4GW0
         lxloe/aaKsS0IT3vMTlqCCUW8wN1dhl2g4q+W4g/0hQmkqxYiF2Xs9GXrDH+uM/cisjg
         JXRYzDyhu2ZB5Y0B9jLDKICUxTiS13hoJGXEES4jG1bI0KvIUBoo4TnVGqAixR2E9oL4
         mECNz/6BdQZ7uS+rfA6jvyLVnzNbXsRII9FyL7TRxdhuNQqifeILq7rLEo7QXABKma3K
         BVnd4koXR8BWGKGumBfwb3ZDx857OXZdSFW+QpGGBYFOO/9nFIrrm96jW7v/iNkhT7+h
         2jGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:user-agent:in-reply-to
         :references:mime-version:subject:to:cc:from:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8EvT4565vQFXwAZvc8YoL/KIDX3w+8e3/zOkPMKdvAc=;
        b=KQmWCKBlEjqmU5ikjYoxFqE8hgL8YbOmToniqEYj6dWVV1DZZmMD1Yl5K9zmYJ82HM
         X66TxZMJJtwjBTpn36rimyqeDe6SX3KcfCNwVn0mLB8jEYWE8/GGE4InXAIQlheJlnbG
         ZDNg534rRuePwRFg7/yfwu1JHyhZT9q4hNQTWgkx5vITiQcLf06L4c43mAR7lvOiMFRJ
         Bl01uAZx/qMXvngvXNyVgZY+ks32qLWNtNwpw5qIb8ArtYKYUD9236t5tjjReyCNlrup
         XiEulQGxft60p7Pbu80gyQ863pVshLPlFZQE1qpUW69hfxOltd2JYtIPfCVXgVgtMx/g
         qtgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZmTznFzzHmJ1ki7aw7UlkA9oa86op7RHOxfAIDsYX3cPiVqD3n
	8MQt8dGIyTnfsobx25LulF8=
X-Google-Smtp-Source: APiQypJNuK2MYKOExAediVesT8JHsYMcwCA52d8tC6jA26Nnf7o0aIBqbBJB8777F3ZVT9F+S+ax+A==
X-Received: by 2002:a0c:aa47:: with SMTP id e7mr122778qvb.46.1588840727227;
        Thu, 07 May 2020 01:38:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:609:: with SMTP id z9ls2674702qvw.5.gmail; Thu, 07
 May 2020 01:38:46 -0700 (PDT)
X-Received: by 2002:a0c:b751:: with SMTP id q17mr11574554qve.97.1588840726939;
        Thu, 07 May 2020 01:38:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588840726; cv=none;
        d=google.com; s=arc-20160816;
        b=eoskKyArbiuLSrzMOdk0xC9KHXuDXX87Y0q/jKPI/99vUQAiD9TXOifCW9eulzprnl
         uvxg38s0kyzGMAIpxavMnpzsodvgPZvm51M93haFWsGBrQvDgFESBdlC0j/gvYyv+qR3
         istmkI8AjJLrb2yrSHy+5V4XxoUSNKEKJme1auROM5hCIBSpvuUBQ4iYjdDAUntuYnO4
         eHVBG3vhZOy2t7r0iF3v966E9mZ4gI484DI0MpCQ9R62qcfWoqmQlv5UdPjfm4SuuCmI
         NJiNfxwwFNpsklQiwZlSvTxhjTMaFb+VBJo5fBjr6Qyo8uiFu5mVQ6oeZIQNWyAWXaua
         0osA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature
         :dkim-filter;
        bh=Sizgvkow12UlMRPJ88fhJx797WUVfBKXkAG1rgsf2c0=;
        b=jfyA0OSTwBdcV7HafRk4p3OmV/OROg8O/853bqBk7YC50KbYLoNJKQVNBIFcbImAAL
         j5Il/zmqoeDixOYEvNEvkga1lgzMjeeTrhx65dbEnOpvaoFX1BqueKGCqZ6JvQcwWV+T
         lIVudQKwIbCzvlge+AXc95+r2XUCxh0VLIB4m8aE+MmkdNvnz9VoIQilfg7fYO65BtJq
         HlNqp9B5mp780K+E+BDwQQ/m/dHBfrInPIBZMT2C8PwR0DVUq4nXNLDsmk2l5JCNgFy7
         MXLQdq1ANM2nDej8Fd4hQYbb9vhBUQe63B8RC7PFC5DV1mblc4LhaIfIag8rU6xjcsYC
         3Dgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=pWbvTKbd;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
Received: from mail.zytor.com (terminus.zytor.com. [198.137.202.136])
        by gmr-mx.google.com with ESMTPS id w66si24178qka.6.2020.05.07.01.38.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2020 01:38:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) client-ip=198.137.202.136;
Received: from [IPv6:2601:646:8600:3281:6547:66ee:1a90:d675] ([IPv6:2601:646:8600:3281:6547:66ee:1a90:d675])
	(authenticated bits=0)
	by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 0478cW5L3345498
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Thu, 7 May 2020 01:38:34 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 0478cW5L3345498
Date: Thu, 07 May 2020 01:38:26 -0700
User-Agent: K-9 Mail for Android
In-Reply-To: <ef7d077424554abebbd0d46738c90163@AcuMS.aculab.com>
References: <20200505174423.199985-1-ndesaulniers@google.com> <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com> <60b16c05ca9e4954a7e4fcdd3075e23d@AcuMS.aculab.com> <7C32CF96-0519-4C32-B66B-23AD9C1F1F52@zytor.com> <ef7d077424554abebbd0d46738c90163@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Subject: RE: [PATCH] x86: bitops: fix build regression
To: David Laight <David.Laight@ACULAB.COM>,
        "'Brian Gerst'" <brgerst@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>
CC: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>,
        stable <stable@vger.kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        "kernelci . org bot" <bot@kernelci.org>,
        Andy Shevchenko <andriy.shevchenko@intel.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        the arch/x86 maintainers <x86@kernel.org>,
        Marco Elver <elver@google.com>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        Daniel Axtens <dja@axtens.net>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
From: hpa@zytor.com
Message-ID: <3559DCF4-0E59-48DF-8500-D4BA2852975D@zytor.com>
X-Original-Sender: hpa@zytor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=fail
 header.i=@zytor.com header.s=2020042201 header.b=pWbvTKbd;       spf=pass
 (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted
 sender) smtp.mailfrom=hpa@zytor.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zytor.com
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

On May 7, 2020 1:35:01 AM PDT, David Laight <David.Laight@ACULAB.COM> wrote:
>From: hpa@zytor.com
>> Sent: 07 May 2020 08:59
>> On May 7, 2020 12:44:44 AM PDT, David Laight
><David.Laight@ACULAB.COM> wrote:
>> >From: Brian Gerst
>> >> Sent: 07 May 2020 07:18
>> >...
>> >> > --- a/arch/x86/include/asm/bitops.h
>> >> > +++ b/arch/x86/include/asm/bitops.h
>> >> > @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long
>> >*addr)
>> >> >         if (__builtin_constant_p(nr)) {
>> >> >                 asm volatile(LOCK_PREFIX "orb %1,%0"
>> >> >                         : CONST_MASK_ADDR(nr, addr)
>> >> > -                       : "iq" (CONST_MASK(nr) & 0xff)
>> >> > +                       : "iq" ((u8)(CONST_MASK(nr) & 0xff))
>> >>
>> >> I think a better fix would be to make CONST_MASK() return a u8
>value
>> >> rather than have to cast on every use.
>> >
>> >Or assign to a local variable - then it doesn't matter how
>> >the value is actually calculated. So:
>> >			u8 mask = CONST_MASK(nr);
>> >			asm volatile(LOCK_PREFIX "orb %1,%0"
>> >				: CONST_MASK_ADDR(nr, addr)
>> >				: "iq" mask
>> >
>> >	David
>> >
>> >-
>> >Registered Address Lakeside, Bramley Road, Mount Farm, Milton
>Keynes,
>> >MK1 1PT, UK
>> >Registration No: 1397386 (Wales)
>> 
>> "const u8" please...
>
>Why, just a waste of disk space.
>
>	David
>
>-
>Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes,
>MK1 1PT, UK
>Registration No: 1397386 (Wales)

Descriptive.
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3559DCF4-0E59-48DF-8500-D4BA2852975D%40zytor.com.
