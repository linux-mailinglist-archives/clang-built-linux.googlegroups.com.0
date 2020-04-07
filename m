Return-Path: <clang-built-linux+bncBCS7XUWOUULBBPH7WL2AKGQEQCQPSPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 787771A133E
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 20:00:29 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id h125sf3070048pfg.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 11:00:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586282428; cv=pass;
        d=google.com; s=arc-20160816;
        b=yshg9jpuJrGGQT+/k5iQEFLv0r5kn1wpiQLTxqcYGbF3H7Xsb3g5+rcmqCPSGTBWBj
         1f0c2ShlBCCCwQXzGN6YJlyvJ3n18XKkPM7IFWYpqB0Ox16o6NcQr/anYUAmsOpWBXDl
         gdbUBFKdW2q214Ax3QjVes+vbEDPntVE96b6IEyhWAst0ytf1gTG9pbZqrtjpK9VJn3H
         gSC90Fry4NEpbgHnqbCDULflwgKCoPaQMgTZUepCB+fRMUC18WRBxa1ARogbtrbncEk/
         lw0x6hzvyNdZxK9BZrENQF7Vr72WRB1edfD726KOHOv38eJNlkTeG6MTCMmBEwaBmT9P
         VffQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FiABGy0WfrBzMhdcgGCTH48JIxIl6lO3+WUbpFu+QXA=;
        b=R9E3/9BAP2ryxqphmYV1jmzofupOZnGtFUYyHl1WIsQbgzHxR89eVe7sAoWnCPcJva
         USzlMb8cweISEyscXXDEioCC2Glz4T69+olgp7aOerJDryBXh/p4SK10sN6SzZqNJyIQ
         B0NzaD6aIY86dLnxiRJ+sIETPSsA7trQ9qFhmBHZzXikgtXPQiI3gD5R/sakz1CDp31Z
         gsOWGY5AFxBdsOhUv/V5S2j6708wOjh8bq++miUPmN94oMtp9HQVXeSuZvG41KCcvEa5
         WtY8iKsd+cESiKeLOLHIsaHRYcu2N0EWIkNDpdq+iTX9s7sphEv4t4FXgomo4fdVI/ZY
         2L0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Q/OfXybI";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FiABGy0WfrBzMhdcgGCTH48JIxIl6lO3+WUbpFu+QXA=;
        b=l4ydHb+4Auzyba3/5lGu0IAujiZKVjRIi4P403BLZKjPdWxr7P0G66N9OTP9PHniat
         agh3xuTviEIYAb5Jnk/js6MUCAqUbwVQR6JP7WJytGSZF8l/Cj+KYZmkpDmwJnX2t/jc
         j0Y/rrBKhSm5eGLXfvEy6BlUmIN99XWGscJMat5X0YTGfyBUGmdUOga5qlsiWOJvlTVt
         Xb+N229e8YYyDn8Fi6/6JmtlxfQRGal2ts+JMTNJF+dGEApV6paOA7p0gQHgSg3UDBSy
         twJVGcUEsq6FEd5Ce11cvp2G7gu8fFIdqzkcEm2NQblWJhrK5zHmfdPE9vjDWdCQ6brS
         +4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FiABGy0WfrBzMhdcgGCTH48JIxIl6lO3+WUbpFu+QXA=;
        b=mUiWorn8nYBDNGiwB3yCGTaJxf/00C4LVW8ZMinghrtmyXTERzHxSDAxZnhHG/OwY3
         ZjqLwDZnFCiSAnomwZpcnRSoybMDJx9asfFlcM/AkPYgLOnWmlnod5rp5iu8H24YIa1R
         jr0N/AQr6V2ogLaeeb7CCi4r69OeKQvlE1wYsGP9KsKjg/Q/I4wDCEWhZF5/HWHCRCzB
         l57aJ1YS7NYoUgua6m9sRWl2ZAaXJAXakRvFNZqkHJqQbM7To4bELCCNWFOlfeGdma7K
         M2ZcJQdX/08447TgQovK72Kdu6R7EYBCrRXYTqAu5dCEPh81R+XAia+cHAhL+k4yFz2l
         qIXQ==
X-Gm-Message-State: AGi0Pua+2XQZ3TM9YF94LkeHDs7pQ/4sF016r3cQYQ2j2S7ySOUrYYqB
	a8NlhwC8FU92qofwT01sxeM=
X-Google-Smtp-Source: APiQypL0kextIh0Z1idacVjYXBygWWINbug/A8wgd43KmfwhNrwmG43XE+39MetpoxExaleiFWKACg==
X-Received: by 2002:a17:90a:80ca:: with SMTP id k10mr561741pjw.45.1586282428101;
        Tue, 07 Apr 2020 11:00:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3112:: with SMTP id gc18ls348278pjb.3.gmail; Tue, 07
 Apr 2020 11:00:27 -0700 (PDT)
X-Received: by 2002:a17:90a:94c8:: with SMTP id j8mr539508pjw.155.1586282427700;
        Tue, 07 Apr 2020 11:00:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586282427; cv=none;
        d=google.com; s=arc-20160816;
        b=cZvB+WVi3BnpYy9/gkrHqgqhYyvd5x4mWNGVxBRjfbPAgUgidDw56GKblui3IVLLFx
         Ihhu0u8Y5x2g5EM54rxcZSjK7Q5e15o589gF8wdHtOQtHtyaKT5UpS6FR6l8tchfAREJ
         roBg6ljNThifQrybswdPK+04ZCEczMukrFRt9BrY6+k8AtRy0fKx8MsG0jDQfgjCSZJz
         nsPidhxVThlqbKD0aUjgjHZcSko7LB7W2P6Y6Q7cusTtk540kFM757KblZVM9h/0mByn
         qgDFkURc1JZ82tYAtnETqpmyIiPVpcrmHkSIjeZCfsiXfx8Qj/YNSmjodZtv6CC0iQHw
         tgtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=lL9PIYFwO5H6pFnjqwU20khB08jFZDfwSO7ZNczzL60=;
        b=vYuh/gmD/e6a5jvl0v9hbD0QeLJsGV2BacGeiS9D/WeZCdbeHdtwhu3iuCp+bVllbb
         XtxoTAK3N4eO/R0a8/NEFC7xAqgfP1CAJq08iXGjudEu+Nps9Zw3bPtDdYGL1BbR1CfH
         bt7AGFrTlKMBGUcJFe9dJQKubA10mVTYmMLrD1LkC/HCdUFE3JfdtJSh9nm+bJQUCe+i
         Y1pKVC65nf8f2DKBWfMN0G7OhoLxuqIY0pvTR6e4Ie2kx3x08jI1h0AI5K5Avk0u9w5d
         j5da2j3EmR0gQhxqgbuThQbzDTqew4T+/lp4DleVUcyesafUJABUE37mVkXHgO88iYg9
         jAkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Q/OfXybI";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f8si415049pjw.3.2020.04.07.11.00.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 11:00:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id f206so1143407pfa.10
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 11:00:27 -0700 (PDT)
X-Received: by 2002:a62:5f06:: with SMTP id t6mr3817977pfb.192.1586282427135;
        Tue, 07 Apr 2020 11:00:27 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id 66sm14769704pfb.150.2020.04.07.11.00.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 11:00:26 -0700 (PDT)
Date: Tue, 7 Apr 2020 11:00:23 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] MIPS: Truncate load-y into 32bit for 32bit kernel
Message-ID: <20200407180023.vpwkhtrg3v6inqtt@google.com>
References: <20200405082451.694910-1-jiaxun.yang@flygoat.com>
 <20200407080611.859256-1-jiaxun.yang@flygoat.com>
 <CAKwvOd=Upj_OcrhBnqf1=woCRm-g2wqjv882R0HQeMJu12Uq9w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=Upj_OcrhBnqf1=woCRm-g2wqjv882R0HQeMJu12Uq9w@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Q/OfXybI";       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-04-07, Nick Desaulniers wrote:
>On Tue, Apr 7, 2020 at 1:07 AM Jiaxun Yang <jiaxun.yang@flygoat.com> wrote:
>>
>> LLD failed to link vmlinux with 64bit load address for 32bit ELF
>> while bfd will strip 64bit address into 32bit silently.
>> To fix LLD build, we should truncate load address provided by platform
>> into 32bit for 32bit kernel.
>>
>> Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
>> Reviewed-by: Fangrui Song <maskray@google.com>
>> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>>
>> --
>> V2: Take MaskRay's shell magic.
>
>V2 is way too clever, V1 was much more readable.

This is difficult:/
https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_06_04
The POSIX shell is only required to do signed long integer arithmetic.
"signed long" can be 32-bit.

awk may not provide precision more than a double ("... decimal-floating-constant token as specified
by the ISO C standard")

   % gawk 'BEGIN {printf("%x", (0xffffffff80101234 % 0x100000000))}' /dev/null
   80101000

>Can this tag be added to the commit to help us track when and where it lands?
>Link: https://github.com/ClangBuiltLinux/linux/issues/786

And this tag for GNU ld enhancement:

Link: https://sourceware.org/bugzilla/show_bug.cgi?id=25784

>> ---
>>  arch/mips/Makefile | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
>> index e1c44aed8156..f8fd3c39fb55 100644
>> --- a/arch/mips/Makefile
>> +++ b/arch/mips/Makefile
>> @@ -286,6 +286,9 @@ ifdef CONFIG_64BIT
>>        $(error CONFIG_CPU_DADDI_WORKAROUNDS unsupported without -msym32)
>>      endif
>>    endif
>> +else
>> +       # Truncate address into 32-bit
>> +       load-y := 0x$(shell echo "$(load-y)" | rev | head -c 8 | rev)
>>  endif
>>
>>  KBUILD_AFLAGS  += $(cflags-y)
>> --
>
>-- 
>Thanks,
>~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200407180023.vpwkhtrg3v6inqtt%40google.com.
