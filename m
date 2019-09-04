Return-Path: <clang-built-linux+bncBDV2D5O34IDRB2MAYHVQKGQETWWHB2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 73332A96C0
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Sep 2019 00:53:30 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id i12sf83763pgm.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 15:53:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567637609; cv=pass;
        d=google.com; s=arc-20160816;
        b=AA24dxKnWnDy/Tt/KJ3ZVnI23b26WDIHTiR9NY6/bYJA0ZXsqDvcXdZThZSZ2bGkAw
         wDOHjsjlaxGqt4gCl8AehjRDJ1XMqEbBxr9V8LlN931kzeCrUq5nRySAySTkIUH4F+Mz
         xWoydAHrSaFXTz497xpdV6Ff0e6WFU9AgaaSxM2L84E1stqKTzdVvW76W18E6oPoKLAo
         LFzuhvdsjzG2IZPTiZJLfcR2K0nkfwuKD9RhP2B5aOsIsNfpsi1UJ+yjRyqxIUxdiCwo
         /dTweAD1GZFxnrZk9bEIISdVDzFAYAZy8/QGZ82rx81MKpyYv803ldPaCNKaoe5NGD8A
         NxhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=tAkwPJeV0OJ1dave92+IB/jWhbUdKSAnb5BNfSmjhr4=;
        b=FEQ0hcyhwDivqq3GhKOEZhEBOxTrpiQ/y3t2m3ncWxniUPMA4e8SfV7iQGtWZGF0QO
         t0KR2hOCyfP2v7sl98JIIp2sAMFU5JWqXQPN70d1jdVCLXXqii0Wvdlvzz9JShdqeSul
         nPpC4lGEbGNZvaepfzSooJ3B0V5FgJdY8Qf8SOu4BJP3ELj3onNJgOKwHElfdXrljtU5
         r6e6Z1U8r7UabHFcDgse39rQs9SEAIVlYSMZLZXe71yPk50bqaBwmIGJVWu7IR3Y9+Yu
         Q+eBJhMaMbs+9r5JgMJSJhvSGTAsE1Hgjcyf5iJjqrOPPA2gpFVHWjBduB/1k2M9A6Y0
         fMmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=OGjChnSQ;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tAkwPJeV0OJ1dave92+IB/jWhbUdKSAnb5BNfSmjhr4=;
        b=M2AVJxrzr+omxSEMtK6D7wuMf7Ms/XnjxEiBWlm7QFdBG0J3GZIj+Dj2omNg3d7bJ8
         +4Xln7aHwuh+Ptvg07eYyyD3Bv1Jx9CZiQQ4QxuxZCWIea7H3HIrZyjt/0/E9HQPkeVW
         6VvilG9iJ7R6Vp1Sj9MpkKQ36UJokSqoO2M/xNtJhEegWFzdaLzIVHyUeiTuPrpa4yYs
         xLP5++IiL5FcHSvlKUARhlJpLcNxkOoSG8vqhzz+PrhtdRPoAE4DSMQb4HKpAO0ULY3y
         Dg1F8R+sujKyg9JG7QCI9tUZQlgXJCDD3Q2SJCaWX2EEqf0toH/HM3gTiH5LXIzU/VnQ
         QyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tAkwPJeV0OJ1dave92+IB/jWhbUdKSAnb5BNfSmjhr4=;
        b=R0U4LuX/iIegnYhL04oDwI7xdw4HzXsU49CqaFFQFObz7a9yIhnxmm+8wuyYw9ear6
         G5AwjC9ZWr1VuSbgaK6232qNc2j3yN2CufKStuzIuMX7FsBEiQa47bDUJQ2AD9B+JA0Z
         hiWFhH4k10k2TluqP0S74r6znaW7mZ6WtLd98x8MKpj9arzqdwKrC8n3ErQzpA3P6mDg
         S7A9AjuM+J6ROpa9f0SnlZcWjolIsaRDr1T8PJnhZBGK0vBGlwTcx4atSk/Q3PqBZyPA
         o00l3h6wVybQRGKxH9h3hYne018jUs1GU9NklBmdmHSX8dNsqGl7/Auvo/TAXKBaE2km
         G8eA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW7PgNFJMW3QpTfvVXDZ6bUm6VvQCI5F6c6gR3dTTzT+4jgNU8e
	J8IDBKKdAdpwGja5NpUsj0c=
X-Google-Smtp-Source: APXvYqyJbEuhlSM6hty9Xx45wwC/FiLD+ZZjGRTh/6LK4oQER3lXfDYsaYUAnxSZ/DiyfZytb1lSlg==
X-Received: by 2002:a17:90a:30e8:: with SMTP id h95mr631625pjb.44.1567637609060;
        Wed, 04 Sep 2019 15:53:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3742:: with SMTP id e63ls36071pfa.7.gmail; Wed, 04 Sep
 2019 15:53:28 -0700 (PDT)
X-Received: by 2002:a65:5786:: with SMTP id b6mr443725pgr.236.1567637608750;
        Wed, 04 Sep 2019 15:53:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567637608; cv=none;
        d=google.com; s=arc-20160816;
        b=zq5poja/S1qhzwLRQBNEkejEfpC0q6COvKMkzsX+dn940Buii2oQxPuwtvwV/z6b/l
         /MPInky5h2oNVBkl4r7VkoxySdctSkUrITyvPuXemUaADOFzslgPMXHDnzcg/0Llk7yI
         zyG+pXTuq9eX5KCdvh4CBGcd0hvJQWr6zJ7amN2huguvoKRU1hCVMn6IBMQZiQdGcrZQ
         Dk9bEys20Wteu5pmTePUpBUnbUtSnXuQj/sgjSRamZCoTIHnJkR8QAQhZQg9V357SqVv
         NsTAQfRDg366UW+tXZeEYx2k3eZwOLMjqZZEnoEjV2EOw4NNFxAV8i2ue5JCIg4Iu3pK
         8I8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=VOCDgRJjNCLo+qT7jheJoN/yK4TwqXLq7YSM/I7lAwM=;
        b=aZuZvB8X+RkiP8ukFXoScqFxABGme3GnL6ZquUTz3JexFC/rHLmHvAWteZ/vksaH84
         /eR6LwIjQ2YqoLl0SRvEroHO6QxKXwBLWEmN8HT2nIRkKrH+MRGt77ip5u/4OpIbISTq
         hoQ5/imM9tFpvQw2dqVxEGCorB2lwhwuLpnAUjYFTQZziBOTOf+6Dd5TqdMfF94SvEmJ
         7lse8qcbpQPBOwzd6gyAD8tZ04f6GlgNYZCZxirlo2Gy5+fsU9dAfF54+3og6aLtNmd9
         pgLqUUYDI8GwqDrwxhFz3KkQ/Xm7hY+qK2zLUrKOZKPMFc5JR9Z6IGI6/JfCgwmADD4S
         yEAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=OGjChnSQ;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id t35si147333pjb.3.2019.09.04.15.53.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 15:53:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6200:6e8::e2a8]
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1i5e9M-0008GX-Tb; Wed, 04 Sep 2019 22:53:18 +0000
Subject: Re: [PATCH 1/1] x86/purgatory: Change compiler flags to avoid
 relocation errors.
To: Nick Desaulniers <ndesaulniers@google.com>,
 Steve Wahl <steve.wahl@hpe.com>, Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vaibhav Rustagi <vaibhavrustagi@google.com>, russ.anderson@hpe.com,
 dimitri.sivanich@hpe.com, mike.travis@hpe.com, Ingo Molnar
 <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
References: <20190904214505.GA15093@swahl-linux>
 <CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8+Eg@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <5cdbd4bf-245c-1baf-97c0-e7723bad89bd@infradead.org>
Date: Wed, 4 Sep 2019 15:53:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnX3qVq1wGovViyGJSnySKzCATU4SU_ASsL-9XfDZ8+Eg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=OGjChnSQ;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 9/4/19 3:18 PM, Nick Desaulniers wrote:
> + (folks recommended by ./scripts/get_maintainer.pl <patchfile>)
> (See also, step 7:
> https://nickdesaulniers.github.io/blog/2017/05/16/submitting-your-first-patch-to-the-linux-kernel-and-responding-to-feedback/)
> 
> On Wed, Sep 4, 2019 at 2:45 PM Steve Wahl <steve.wahl@hpe.com> wrote:
>>
>> The last change to this Makefile caused relocation errors when loading
> 
> It's good to add a fixes tag like below when a patch fixes a
> regression, so that stable backports the fix as far back as the
> regression:
> Fixes: b059f801a937 ("x86/purgatory: Use CFLAGS_REMOVE rather than
> reset KBUILD_CFLAGS")

but don't split the Fixes: line (I did that once :).

from submitting-patches.rst:

If your patch fixes a bug in a specific commit, e.g. you found an issue using
``git bisect``, please use the 'Fixes:' tag with the first 12 characters of
the SHA-1 ID, and the one line summary.  Do not split the tag across multiple
lines, tags are exempt from the "wrap at 75 columns" rule in order to simplify
parsing scripts.


thnx.
-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5cdbd4bf-245c-1baf-97c0-e7723bad89bd%40infradead.org.
