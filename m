Return-Path: <clang-built-linux+bncBDV2D5O34IDRB7VFZP6QKGQEH45PTNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id EADC42B5115
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 20:29:03 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id t7sf5111818oog.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 11:29:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605554943; cv=pass;
        d=google.com; s=arc-20160816;
        b=a2LS6yMi888TEMPs5UF6fc25/P1aZUbBo0dhHQ6E+F2Gs6aEIZ+TzbBp2scyK/r+DS
         BYo748vqXhWXpU2+ceU5vitPJ9kQ32Jj4jJaJ2Sh0x71bGQ6Wx6h3Zf4CoOzr6DzTR4M
         Cu5kSGsw16KQyJz6oQ7Xd72QNnSNECobfvk9j/W03zweucxUYj+ChPbmj5FFSz4G/Gud
         rh6xy55QhHbYQdNAi94SJll5H9l0fPjYt/qKhBgfmpCxceSSLvGvxgNTlJUNuF4awFWL
         C8uvHh8dOHOA5rULPU7NuC+93t0yf2W+AzaGLCzwCDUz5u90dUYirfbYu0RAklP+KJvB
         M0Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=aa/6FXrYQFXME/7VblpT89WGLt2Yuf9AAq4Od3lzHVA=;
        b=kSg51nAgE6s/D1s4hB1vTNv751IQ4guqcR8YoUf+xRy4NRuMG0eCstH634nnQi/xDj
         kXlcv5esJDk4MaE+IGJuy2Ha6SjjdZ8k2NkNAW9rekoXDbc5+KQowSWjMHvUCRkzc4FY
         EmJf11tv63KIjsInAfKQ92AFoiN1QhoNn08ZBd8hLv5OKtFAo32UMNQ6DS3VD+Q2HZB0
         qEIevG84zultPBS4arZNqF6tW26kIKBb1PfNNAoBEI2YLkr9YKAmYPn4WDblZfA9SOIS
         Dr2HolAeufVpgXvY2PWUlthmIkDe8qiQLpo8ya+eaK2UkbpTHERoFICYBai887S+ZoO+
         oBDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=t3YX5Pr5;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aa/6FXrYQFXME/7VblpT89WGLt2Yuf9AAq4Od3lzHVA=;
        b=SfTsGTlpizFB1pN1eNaHaln/n7uR1A3+h2ys1fz32yfZtOB/Xri6uttRi36Kmx6GOK
         SsIP6Pn8X6dsv15mfJcfhOVAByW6yWeHEg8gRw5L7RMgkAuuYqleBHyECgR2BorpTZTV
         0q7yBvNSgpa/56N4bXR21F6s5gU+5S+pTzkdpTQZiiREXnbjuFeRgiH8s+m7FCcmLx/0
         Xtj011vwghByzkAQz4juESC/0dwfUxyXiUPL3jo0yBKYL4b3tXzl2NRUgox5rIwaSYJb
         E8kCRQiZCgyZVpp4o34yzkeE+a8ORBPnz3u8LgmkJt1BcdmGka7tTB4qmEqj22MxI+hP
         6uTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aa/6FXrYQFXME/7VblpT89WGLt2Yuf9AAq4Od3lzHVA=;
        b=Tn7DIDkOlDwpDGynyWnLN2U+zXdgZwvvUU3pf4dTHB+RwMlUZ7Zs+V0akhkUwhd0Tr
         8HZEHFjga6J99w+BnXZbWUcZxoTQ2YBU0ox5EIByyZuqt7qLzThTyhJ2GAyJ5B4uNMOu
         dvvblzgKiJHd+AMxuj7kpuTGeLWrkIGP8rO26WRtgTOCz5GiGnHav2FISqe/Mlq92ikZ
         lEwEHpfVbMA6kyJDtq2sh2Yr7osteIPZkz95KIqlzHDQyrs1D7RyKpo5NWc2wdbbDnNz
         TkoMbhwThoo/+AuorgcT7Kw7ZzqxnkRpGkBL6JVPVXBQUu084SphzZjPLyegCNHBVD5x
         tyFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ynZn0ENUa6rDXfV6AU9F7/2bW/A4eBYyNV9kggh5YEW/dbt01
	CpgQ5Vs5dBIvK2EC2W/MAJg=
X-Google-Smtp-Source: ABdhPJyzGI0HAyZ42X6NrygTaOc/UDni8G0I3vzYZN8REwF8UIkvHv77Ozxa0eXLjOYqHt0+LXz72g==
X-Received: by 2002:aca:1009:: with SMTP id 9mr158039oiq.146.1605554942881;
        Mon, 16 Nov 2020 11:29:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5214:: with SMTP id g20ls3423943oib.9.gmail; Mon, 16 Nov
 2020 11:29:02 -0800 (PST)
X-Received: by 2002:a05:6808:a0c:: with SMTP id n12mr167032oij.174.1605554942441;
        Mon, 16 Nov 2020 11:29:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605554942; cv=none;
        d=google.com; s=arc-20160816;
        b=KobHW7OUGyLxbwlFWmEHAjDAbHMJT/GIJfLgnR9a04TcdrCbu/ZyQePP2sFADevLV2
         4TuEEVDIjEW9kiGOH4CO8awNkYIjjaCbY0nLOHjfVJEzyningeAvg8BV1C/GDWfBf2vc
         B0DZfF1pSP64MDcOSZHKwKf2ZiF82ed93fODQhC36uQKTq5n8TZEzuqQoMgtrg6AqL/7
         OznnDVLuLbnLkRKPm+Cl9DxJIVLaNnSTOfR1dhxLgIkUz7CDAFzbdb0Aez9gf+nPzhVd
         D1vvUIsXvHumeJNS8O/YjTi7r58FrRylcILKDrGbAIruEuPfqv1kOW1LV1unY2JlBofX
         CyRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=BBb+0MAVRl4o+gsCUweO3CE8BYgSiGgb0WEbUxUtSNM=;
        b=aTHweeMzNFx+1NqFdhTFsJugcvz0Ao+I1EBSnU1UrIxJ0ppiBxK3fj50madJKYX0sk
         7B+FDDG5E8ZQTqJNhD3ZL0i37MZqN5udGI9+5je+ETpfeJR4bem9nZBkESB6vwXsSVrr
         2WLiHGvhmePQjPweftk7hzJsxAP41aqr6c+nKFKYADC7IBT3mhme7La3SGb8FLxPNfH8
         FHjdogQs19fpOToDfXekHWNDGr0+oYcluXZ3cxfmF+rBDnMZY1ZjSnkiFH771R/iWdFN
         WoUH4m66MkHPArJRM8Pr/ivICpNzhgUVCjCaj9DcZz+zrCii6RYsVxd2pHZ2H/6gdLoE
         19Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=t3YX5Pr5;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id f16si1747841otc.0.2020.11.16.11.29.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 11:29:02 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::990e] (helo=dragon.site)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kekBP-0006V2-LK; Mon, 16 Nov 2020 19:28:59 +0000
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
To: Andreas Schwab <schwab@linux-m68k.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
 <87sg999ot0.fsf@igel.home>
 <0dbaca2d-9ad0-8c1a-a280-97be01cac2bd@infradead.org>
 <87k0ul9msr.fsf@igel.home>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <3fff1eb9-83c0-1c29-6f57-fa50f1ec6ee7@infradead.org>
Date: Mon, 16 Nov 2020 11:28:52 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <87k0ul9msr.fsf@igel.home>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=t3YX5Pr5;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 11/16/20 10:30 AM, Andreas Schwab wrote:
> On Nov 16 2020, Randy Dunlap wrote:
> 
>> What kernel version are you building?
> 
> 5.10-rc4
> 
> Andreas.

OK, thanks.

My build machine is slow, but I have a patch that I am testing:

---
From: Randy Dunlap <rdunlap@infradead.org>

riscv's <vdso/processor.h> uses barrier() so it should
#include <asm/barrier.h> to prevent build errors.

Reported-by: Andreas Schwab <schwab@linux-m68k.org>
---
  arch/riscv/include/asm/vdso/processor.h |    2 ++
  1 file changed, 2 insertions(+)

--- lnx-510-rc4.orig/arch/riscv/include/asm/vdso/processor.h
+++ lnx-510-rc4/arch/riscv/include/asm/vdso/processor.h
@@ -4,6 +4,8 @@

  #ifndef __ASSEMBLY__

+#include <asm/barrier.h>
+
  static inline void cpu_relax(void)
  {
  #ifdef __riscv_muldiv





-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3fff1eb9-83c0-1c29-6f57-fa50f1ec6ee7%40infradead.org.
