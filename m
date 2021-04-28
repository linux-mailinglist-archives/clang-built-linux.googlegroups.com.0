Return-Path: <clang-built-linux+bncBAABBOFAU6CAMGQEMMVBADQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DE536E0D5
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 23:14:33 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id o6-20020a1f5a060000b02901e4f2b90ceasf7115891vkb.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 14:14:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619644472; cv=pass;
        d=google.com; s=arc-20160816;
        b=iyo25rKgw0hj9EWxGpbSUdNXLilgPPQOtFpNnTtsprN+Ys4Ab2gRZ3OBUBLRk1kh6d
         uj+0FBBR1aKK+qpDZtW5lSrsYcUXZH34vPCx7bgLDzM/UJSoZmXZ6j3INsLN1bNbwb4E
         5Lf6P14b8dIseX/c2fGcpN0tyuK9DMAlJ93sn2LAH0gOBevPHfUbV63+RSp15ARVBD53
         G02Jy0fAREpiH4acLVco0OeBgI7qK3PfRm18TJ1U1+ahysMju9FahquYe8I3YGJTLipi
         ZIBKwhJhVjBuzHySm7NFHsONGuzcTGg37m/Cyph6Ew/Hg1Qg4WC1VQOvwpL4oVII5+lN
         oqMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Wmn/OV+OFvaMReKmOZMzNBqaH14KJpGJ6Mr55uQV/vM=;
        b=XYVFGnwNBHVvQtbJGZsFoPneHi6bY3iqmgJcS7wmW1rXd4gME9mb9wIh7BSQZMs/Fg
         ijBKt3lN0oP45KfL/m2Bjr9uneAGHGTYsBzARFb5qrgoV0m/NdnBAYTtX39zkMp6XoT6
         fSfnUK1Fq3entiMMhAao1JriXlkhXIkZozDloeE1fVeZUruiGUKzUQUb3EVtb0xspFVA
         8pKkc74mZA4EVmVm+j6fEDaPGxLU1YcRRD4k9tqCCqyDCzm3ocF2dyiwKvAn6ISaGMcJ
         Kxymhs9xYf7bJELRX80nG/9JpJVkIaOT9ZjUBMCzojm42z+sJOD40VADPOQggJmsOGMY
         7+Hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Auw/GOZg";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wmn/OV+OFvaMReKmOZMzNBqaH14KJpGJ6Mr55uQV/vM=;
        b=i49Q3TH3AcyDnBLiWqa7vPHMM5xHTKe2Pqcwvg15rcqfUd66OtkCPRi6MsMfbVjCeD
         vBTVL8DiauBmy2JXG7nO2pir+BkAhMOEKV5vDsRelSCFzlcR7ank7y8pPdIV5DzryWHv
         9nXeUaduxqOgpldkSUa/bXTGsmZzZGUZVHux33In+rGWbb9KXGrX2jqN35aXseGimukW
         OaJ6ckiKhXa2I/QZ7r/3oa2Vaqt66ldJO+TUVAMeTzpwx7FiizykTR4csYW41iyQepe3
         /0gvqtke6wtLeWMkkMmWMgvg+ltmDtj+rb7lILra5kenbhrAIBV4oZ7LRR0Vw1+cjwa7
         8fOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wmn/OV+OFvaMReKmOZMzNBqaH14KJpGJ6Mr55uQV/vM=;
        b=kHMPZbnQN9CiChheHiE0EdXNgrXGNOQSZjCosO8NMcXEru4IN2TdfamR0AbB+ViRzn
         /B2QegmSuND0UGJAI/+Ccfhdy/Hk5XbehEMbiWNT5qSzFgn7WiY+kV/bj+nAKevoLFuA
         gHV7LCEO47SyZMwlmJHi6q4mbZqZEXlJRNngwmDb+DJb71YndZSS2QXcw5M7RvYRPA04
         ntjwZrlCW+kXMFJqFYD5cvLbN5dKcDxOnvtMgPZrovSa+QDXDuvybvcDetEAl5cPuLnQ
         rrZ1W/FzwuJZ7E4N1gYd+ugfrgpuX0sHv+jAe8Gz+WBWmK0Ntnj8KLCOMxBxMTt2wB3v
         1sGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SdG4fwviSfNVJMfJTRKy4RLBCMVl7JfwofCc+MwOgRnWrUZhH
	9w42F1Ij1QaZA0n8zUX7J7A=
X-Google-Smtp-Source: ABdhPJwtRKsDtdAN/e/SxdWLZLZgdA+7zCsRI959KQGW9oWVl2HpbGf3/mqVN71tAJyYDizmqd0YoA==
X-Received: by 2002:a67:f5cc:: with SMTP id t12mr26538283vso.9.1619644472124;
        Wed, 28 Apr 2021 14:14:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5046:: with SMTP id e67ls102836vkb.2.gmail; Wed, 28 Apr
 2021 14:14:31 -0700 (PDT)
X-Received: by 2002:a1f:9b92:: with SMTP id d140mr28644408vke.10.1619644471650;
        Wed, 28 Apr 2021 14:14:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619644471; cv=none;
        d=google.com; s=arc-20160816;
        b=dEGYYbqAgkesWhJgfPFfoON/0dsJvjaFwGfh1bOrOAIPOI0p13o/HMVqEnc1H3FIU3
         AjHpKcX5eGx0i+M1XmoGyfJMIV3zTMvy8eJBw2pswkX4K18ED/dgTGXMF/lNzIBeKFIl
         eDvjthUwO+HaTaZ3XL/i8iW3q3XHbsZXu82WzCix673VYQhU523HmRNB5ioJs8zneRMP
         nhb8sPlGUi0ozXYJsCKzyEG2cduPkDo3AexDc5h4frnvjQxB2NkoOGmQxR/pqK+C70uu
         2tJIORhk6ef2WMngFS/pCwrcBOOj5nmUHbbGGKxnxA8gvGMgw6UR/AhwyGEvMouFOoFQ
         /ahw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a0WXD2edv7S9QxgZDgrqkZ5XDSNdooj6hUQ/JphacZo=;
        b=lrAxA1iWBCssCaYKVSmF9gBVf+NibHGfMWaN0RIzT6hg+hU0okeuNeFfomqD7R2nxX
         zZoC5y8QCkt84NHyrNi2cErzDrN1MwHElkn7aeBGIvje/YLe7dQe7+dEhCt3rBRY3zEr
         EeJjNHGkFsTQGD11p1HMeCYbvG1j472WKIPa2MQzE2K9JGNgPL+tZoRSWCHjd9Dmu6Id
         DmlDw4tLvxqT7GC+nmPWDdPIyq3+Jbzj/V9sVgv4XgEEr0PzhOl2sMzg919qNM5HU7Y0
         XZ6BttwFbbjWDY3o+1KsfMQbRY6otNiNaZetoIRPHuHLUZB5gSDWwtJNfNACH6vAIzEp
         0ivQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Auw/GOZg";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p12si95406vsm.0.2021.04.28.14.14.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 14:14:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 487016143C
	for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 21:14:30 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id x5so14281686wrv.13
        for <clang-built-linux@googlegroups.com>; Wed, 28 Apr 2021 14:14:30 -0700 (PDT)
X-Received: by 2002:adf:d223:: with SMTP id k3mr5080193wrh.99.1619644468801;
 Wed, 28 Apr 2021 14:14:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
 <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
 <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org>
 <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com>
 <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com>
 <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org> <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com>
 <CAK8P3a2m6ScgPCUZweyF-hr4wtYp0_Un3-ZxHkxr3=LXShTzbQ@mail.gmail.com>
In-Reply-To: <CAK8P3a2m6ScgPCUZweyF-hr4wtYp0_Un3-ZxHkxr3=LXShTzbQ@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Wed, 28 Apr 2021 23:13:54 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0avv=Pd2ksYF4T5xqTm=YM3ofL3tapK6LARA8pk1YVCQ@mail.gmail.com>
Message-ID: <CAK8P3a0avv=Pd2ksYF4T5xqTm=YM3ofL3tapK6LARA8pk1YVCQ@mail.gmail.com>
Subject: Re: FW: ARCH=hexagon unsupported?
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Brian Cain <bcain@codeaurora.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, sidneym@codeaurora.org, 
	"Manning, Sid" <sidneym@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Auw/GOZg";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Apr 28, 2021 at 10:56 PM Arnd Bergmann <arnd@kernel.org> wrote:

> Trying to build allmodconfig using clang-12 resulted in a different
> internal error:

I tried one more thing: turning off anything that failed to compile gave me
this link error:


ld.lld: error: undefined symbol: __divsi3
>>> referenced by hexagon_ksyms.c
>>>               hexagon_ksyms.o:(__ksymtab___divsi3) in archive arch/hexagon/kernel/built-in.a

ld.lld: error: undefined symbol: __modsi3
>>> referenced by hexagon_ksyms.c
>>>               hexagon_ksyms.o:(__ksymtab___modsi3) in archive arch/hexagon/kernel/built-in.a

ld.lld: error: undefined symbol: __udivsi3
>>> referenced by hexagon_ksyms.c
>>>               hexagon_ksyms.o:(__ksymtab___udivsi3) in archive arch/hexagon/kernel/built-in.a

ld.lld: error: undefined symbol: __umodsi3
>>> referenced by hexagon_ksyms.c
>>>               hexagon_ksyms.o:(__ksymtab___umodsi3) in archive arch/hexagon/kernel/built-in.a

ld.lld: error: undefined symbol: __irqentry_text_start
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a

ld.lld: error: undefined symbol: __irqentry_text_end
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a

ld.lld: error: undefined symbol: __softirqentry_text_start
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a

ld.lld: error: undefined symbol: __softirqentry_text_end
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a
>>> referenced by stackdepot.c
>>>               stackdepot.o:(filter_irq_stacks) in archive lib/built-in.a

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0avv%3DPd2ksYF4T5xqTm%3DYM3ofL3tapK6LARA8pk1YVCQ%40mail.gmail.com.
