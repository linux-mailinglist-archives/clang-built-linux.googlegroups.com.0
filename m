Return-Path: <clang-built-linux+bncBCVLJ7OQWEPBBHXFZ32QKGQEQB75C3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 45ED51C82FD
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 09:02:55 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id r14sf5806232ybk.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 00:02:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588834974; cv=pass;
        d=google.com; s=arc-20160816;
        b=ci5lClZEPi+FNizXNX1xlVeqmhuyQvhG6UDGi9zvNDp6UJFsyBK7j/lTm5dWBWqRHb
         pt/VSIpVPSr8/qR4G2+vF8x8dNM28yQO4WOakJ2Fx3AUjodA0f+BDisFVkzmu6FjztPx
         P6yKUB7wZttAEhG5mDDvbXCzZIo6Kc7W3A3Vgqji3/+idtnTDmlSKvQa7Zy7eXJL7uRl
         RU3qWZcARhGPOEH+LUynQxxPOD+DJsroQq9T4o7jQ901FWiGPfxPyHdJxMOeQrlflPxI
         HKzKJpyp5BdlLUyA0WRKX4O8AD/ki5+NBoaJaci4UbJ6PJpsQroNUuARvUlEhxdwsf44
         Im+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :mime-version:references:in-reply-to:user-agent:date:dkim-filter
         :sender:dkim-signature;
        bh=td60sGigEw4VNvMg+sqByXyQq8HOBKkMEn4qYfI4M14=;
        b=UwlMZ1xTDCMYj4FNtBydtNEbP/IVbMR3LS0YoicYNnvbjcPxzvgXa3s7do4/jAFQA6
         yldz60s4d8F+JJys8d8vk6lZrIiE2K2i1YRN6WlRnWrbk/0bf3QCUI2+Mq5O+dQZMKSn
         VDQScYJE/xQzAjt4iOBiwK6DojUtbI2uD5eNQgKatnafcTWQVWoQWTVjCNmB7GLtwKzb
         qfUbFU2qY7f4oEeHDxoWSbjoHdqoQl5OQA2JW1i6l3BkJM1KR4rH5esLFshvwaBwA37N
         osMavtr7aBDHea0HECpfDRdWESe5liG7g6zja53MuHkyAbD3MeMc/Lap7rwSE4yXOnmD
         0gnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=imHsOD4Y;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:user-agent:in-reply-to:references
         :mime-version:subject:to:cc:from:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=td60sGigEw4VNvMg+sqByXyQq8HOBKkMEn4qYfI4M14=;
        b=CF+R8ZgqayQOR6ueLu7hYc5TqGTXgVBeipCcxny3b4rtahBgFh5KxQWlg+etlvIsY5
         jYl+2rq/+VSRbe5SiqwkhQpXM4fGEZnTswIm2mLDZkubMdB802j6NNl63ixr/AE28laJ
         JOOWA2CS6jpHVFF668ZXQcvqUTnM+7Bub0rwbgXKw8M0dlub09S7yeFZQASYL/Xj/027
         SJc9wSRnxAI1syHHs+Jjy+9BWJIOWKMgGSEbdzxaMOQ4l1jtMnERfwt4vE5ZUF0j/MQ3
         jIwL587eyPoN+jpwhvEXDABP3M8QC/RDC0cvJGmaMx6PHu+dR7xSarbxGMhjbHcOFVRS
         G8ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:user-agent:in-reply-to
         :references:mime-version:subject:to:cc:from:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=td60sGigEw4VNvMg+sqByXyQq8HOBKkMEn4qYfI4M14=;
        b=q3akGZDXKAaewKG309bgqTpuzS4TdNprv/b0Sro3hZTUrgmbZiN6nJrgEc/MwIct0n
         eb5cmKs4hQj9XKwT4WzshdgupV+Ab2Z7MAYOjHweaCvcJ30QR93p2weVOvGStk/iDd+X
         5dBzgipDApw4cI6RA+qEqRcC0RWtJl/1A8ELIqO6zNgK9V4w+rSa4raIyQpzNILafO4H
         1PEgz0J8cogbQRu5fICjkFrjrtY9grjdpsOagY6DYmzpiL7Z6eANNYNiwZO4ugdszNm0
         KNegvX+rge8mNtTft6WCrcUtgbmH9hBmXYV41sVpuvNHUy6M/Pg9Y3YF4m6JvQF8dmSr
         rCqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Puaz4x6R/yjnwFLxA3Rk7tN+0VmeO1ZSNANfdS0bu1/vrZftmDB7
	aVsn6FiCGkxASP27KZMGlP4=
X-Google-Smtp-Source: APiQypKvyFuRQWUb3cQjitkaOIfApzxjqCuZLOF7b+wRHpfyj9uwK4BDZ9s0Sewwlvp1vBB+ZHH3OA==
X-Received: by 2002:a25:8411:: with SMTP id u17mr19653556ybk.131.1588834974031;
        Thu, 07 May 2020 00:02:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3897:: with SMTP id f145ls961305yba.9.gmail; Thu, 07 May
 2020 00:02:53 -0700 (PDT)
X-Received: by 2002:a25:d156:: with SMTP id i83mr20518193ybg.449.1588834973770;
        Thu, 07 May 2020 00:02:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588834973; cv=none;
        d=google.com; s=arc-20160816;
        b=GW50TKoN5Q13MK5c5n1etoDBujIfbVopqcHiptWgb5KCBtvf6zX90WBle12pCO++Do
         dzbKmruUp9c+SdXg/LzU8fjKNKdqlgmCkMDCKYspav8xLg4AOZDA5WjcEEQMhmoWk2xW
         Ctl4k6Uc0hmGDH5pPeN7Ecx7GYaAVSSpFA3RY4SpZ5zm+UNZQsfp2G0pUtN+UFd01iXx
         A3tQaejtJZClLPQ0Qm17vvXNvn/ioAyW1b2LucBkr4Bj1Mvw6rRzUxE4RVP4bdBIlH0n
         uCCi30ShlfSYW+woa5IuZC3H5+VeUSua8XbE9DRLeSAG+slxlWNNUIQiqEm2+cXPROr5
         FcRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature
         :dkim-filter;
        bh=yYx5yVXM/i8u2Dcnj45uR/2GtUdPJmvTI047oSKF4iM=;
        b=DB3+tFHNyXb+o+hbzUZCPxwjcAHuiOE/NXwEQJH2eb7iLNFzueP3jcKq/NHf+YN/kr
         0fwEVfDUlkvBleTTSaUiU/VPG+U9ne3+RNYow3+fYVcdqVEFIIUmyu9eqyeVSPGVq5kh
         OvLXLgBpt968gJlfnxpOTwwNqCGRrdF7/DGBRSnShAwkHNUf+T0S9h1rbc16VnuVEaXh
         b/fPu9cIt3NgjZ3IXILJntgfeNs3c3zof3YHxPKat1puFzey2fIp8moJXuvtf+X319Po
         TPfCUdo9x9ttoSE4v6c24DKSBKqxvNe/li2GRF/NNQxFvGAlNMl1vCLtxYCAtnCZAd8h
         nydQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=imHsOD4Y;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
Received: from mail.zytor.com (terminus.zytor.com. [198.137.202.136])
        by gmr-mx.google.com with ESMTPS id y199si103559ybe.2.2020.05.07.00.02.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2020 00:02:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) client-ip=198.137.202.136;
Received: from [IPv6:2601:646:8600:3281:4d3d:6b02:5dfa:3aaf] ([IPv6:2601:646:8600:3281:4d3d:6b02:5dfa:3aaf])
	(authenticated bits=0)
	by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 04772eAl3323914
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Thu, 7 May 2020 00:02:40 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 04772eAl3323914
Date: Thu, 07 May 2020 00:02:32 -0700
User-Agent: K-9 Mail for Android
In-Reply-To: <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com>
References: <20200505174423.199985-1-ndesaulniers@google.com> <CAMzpN2idWF2_4wtPebM2B2HVyksknr9hAqK8HJi_vjQ06bgu2g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [PATCH] x86: bitops: fix build regression
To: Brian Gerst <brgerst@gmail.com>,
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
        clang-built-linux@googlegroups.com
From: hpa@zytor.com
Message-ID: <6A99766A-59FB-42DF-9350-80EA671A42B0@zytor.com>
X-Original-Sender: hpa@zytor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=fail
 header.i=@zytor.com header.s=2020042201 header.b=imHsOD4Y;       spf=pass
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

On May 6, 2020 11:18:09 PM PDT, Brian Gerst <brgerst@gmail.com> wrote:
>On Tue, May 5, 2020 at 1:47 PM Nick Desaulniers
><ndesaulniers@google.com> wrote:
>>
>> From: Sedat Dilek <sedat.dilek@gmail.com>
>>
>> It turns out that if your config tickles __builtin_constant_p via
>> differences in choices to inline or not, this now produces invalid
>> assembly:
>>
>> $ cat foo.c
>> long a(long b, long c) {
>>   asm("orb\t%1, %0" : "+q"(c): "r"(b));
>>   return c;
>> }
>> $ gcc foo.c
>> foo.c: Assembler messages:
>> foo.c:2: Error: `%rax' not allowed with `orb'
>>
>> The "q" constraint only has meanting on -m32 otherwise is treated as
>> "r".
>>
>> This is easily reproducible via
>Clang+CONFIG_STAGING=y+CONFIG_VT6656=m,
>> or Clang+allyesconfig.
>>
>> Keep the masking operation to appease sparse (`make C=1`), add back
>the
>> cast in order to properly select the proper 8b register alias.
>>
>>  [Nick: reworded]
>>
>> Cc: stable@vger.kernel.org
>> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/961
>> Link:
>https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
>> Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
>> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
>> Reported-by: kernelci.org bot <bot@kernelci.org>
>> Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
>> Suggested-by: Ilie Halip <ilie.halip@gmail.com>
>> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
>> Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> ---
>>  arch/x86/include/asm/bitops.h | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/x86/include/asm/bitops.h
>b/arch/x86/include/asm/bitops.h
>> index b392571c1f1d..139122e5b25b 100644
>> --- a/arch/x86/include/asm/bitops.h
>> +++ b/arch/x86/include/asm/bitops.h
>> @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
>>         if (__builtin_constant_p(nr)) {
>>                 asm volatile(LOCK_PREFIX "orb %1,%0"
>>                         : CONST_MASK_ADDR(nr, addr)
>> -                       : "iq" (CONST_MASK(nr) & 0xff)
>> +                       : "iq" ((u8)(CONST_MASK(nr) & 0xff))
>
>I think a better fix would be to make CONST_MASK() return a u8 value
>rather than have to cast on every use.
>
>Also I question the need for the "q" constraint.  It was added in
>commit 437a0a54 as a workaround for GCC 3.4.4.  Now that the minimum
>GCC version is 4.6, is this still necessary?
>
>--
>Brian Gerst

Yes, "q" is needed on i386.
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6A99766A-59FB-42DF-9350-80EA671A42B0%40zytor.com.
