Return-Path: <clang-built-linux+bncBDAMN6NI5EERBA5K4X4AKGQEQ46SLAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C6822AB93
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 11:14:43 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id y10sf2163477ejd.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 02:14:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595495683; cv=pass;
        d=google.com; s=arc-20160816;
        b=T5124RummqO3ImAGzDx9ivnhkaUPbAcvsFjYAqVoK9GfOxVr4pF2IHXifEUVO2ybcl
         N26y41JbpzHPScaAE4GVxN2QIj148aaVVo9/62ohKceFQgd5ChXCIY9yF8zNPwAmA91w
         mFNB7D76y5PYAybQdDGtA2ML9jyuTc57G2iXdzv5l8eMq8LDp0Jpc4rceo+gkAlQrrkn
         Z/vULXYp7Zi1sgwC9dDeX5MRVk2BUOE0APnZlqB63IVLMm1kae21dj2pjbn6VzYxDqjD
         ivSDR5f0psoWTM8/Eloymb2iLXmHM6H3zdoDokjsJskufKZOq2rHRt0MDvlBpGxAT53S
         5ctg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=MEVhqOWkhrCU7c5wuXcZeFr88xft76DvuHWWjrb1gTQ=;
        b=uYQJBXJ3S3oZggx50pNx9p7AbzjMwNWQUirkUyiiVyb/81JHmSSBREMOl7pCq6n8TT
         aeKUMtvrGI4eypmkWvO+iP0N17UFUKaOA1Iy09baIlWnGlJKT+/CJFxCfVbgM8DeruNt
         /XxUJA2mzAAYNjXJ7lj/uAAPCIJ49JKuBpV1bWbizUMbBg5TeICNIKZilD9FLsGHtq7v
         ljDn6icYBWNkGZmBrOPF575QzLec30QgLi3IRiCk8ioUT2SIv2xM5MCfqMxp+WD6wU6D
         Lcxp5rV9TjLUtQmQV9BVLJaC3y2eFM6YyebfT0q6MXp5kKyF/ARFFY2SP+bFj1ppIydD
         3DsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=KKpKKbbE;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="/NlnNn3/";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MEVhqOWkhrCU7c5wuXcZeFr88xft76DvuHWWjrb1gTQ=;
        b=KvTg0KNnHnjk+ROzH4lSHLhxyjkNlmuYiSgUcVSA2YPV44ioKSU8VZL1HQKfB2oUmg
         BOcioepXTHrQJLq+PfnZXfasr81Z7HH8kqL/szN4y9+4QCxGpq3aqZL3ir1rkPDRYTPP
         rS5kXuwhF3QgAdZxeKqwXT4YYD/vYBvJYdIhVEQoMyAwDvyUhcMk2+RMvVoy0pBXRb/p
         KyLWguVmJYrrLCvJafgneIFhjHCmOjM8JzvBRqbtfXR2zX9wbY2dyahmnz5DswOw0u7A
         QSwxoXLDtDOFDc80soBHbhNDc08n0yYpOZQ4lhJQCP3ekp4byr9VdIOqOxaR2ttiVlBQ
         2/lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MEVhqOWkhrCU7c5wuXcZeFr88xft76DvuHWWjrb1gTQ=;
        b=kFhKhF77dYNRyecU2Yt+TmH5sD74o5cz0W/t/uZry0UrP1P5rEcEpMfHksh6K1x1FP
         SEGRVZy6/tjoUFG2al9mKZPwqfpFZXv2LQpxhw4tgDHHLWvdOrthYEACQ4M7X4ZL3kX5
         1H1S0F5wGuLK4YKXdva9RJcQCKH/3yXj96rxjbjr99hgDBQ09fuBKyf/uGnu5C/ESvhU
         0FscU2nY8/s43tJJ+yPLE6ptynTTOK2cAWp4MagaXAkf0tmus8u/YlXWWWa8fPtSAiev
         /bYcnqSbNiYo3eoyo1gCKnngeK4lySDSswz/YXEKYXm5/xZ2k4l30cF+oy5HcZvpTHSQ
         lE0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532D/F2dpFH437Jh0B+H5JsyLBm63zH5T6/6bKWOBfQQgxQ4OiOb
	HG/RKhqKrafk8Nk6e2U89PA=
X-Google-Smtp-Source: ABdhPJyoD36OdxwoGmU667cjpNsVmxwEhY2Ve8aXuPbde4OWPF4mazy82QIQrjx7jyylYhxEKd3hHg==
X-Received: by 2002:a17:906:b143:: with SMTP id bt3mr3665545ejb.134.1595495683093;
        Thu, 23 Jul 2020 02:14:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:834a:: with SMTP id b10ls2433437ejy.3.gmail; Thu, 23
 Jul 2020 02:14:42 -0700 (PDT)
X-Received: by 2002:a17:906:57da:: with SMTP id u26mr3506670ejr.157.1595495682568;
        Thu, 23 Jul 2020 02:14:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595495682; cv=none;
        d=google.com; s=arc-20160816;
        b=C97go4C/5j7suqjhpzpeqeYwUzWi4nivjkLfx8PTPET0DjFp9Ezwwg2EvIXMoM95xK
         8JGIwP4Lf0iBB3G4Q/wmBQTJMWt5h8tRd6WKSoPZNipb1q6R3G5Tq4kpIUjgxqNXcyWM
         EeATuztLtHxfWKM/cSpIfKhh2FxQ9nyjrYRcjeywD6Y6z7EQp+8qKe6XrxTBb4ogYHRJ
         xsyy9oqWK279skXCs+BcuvwlqiupFAJNsLIxrnzvWhKuflqwtXFbnvy+I3ZYEqTeEUzI
         G3GRHPN3UOASzk6SSXdKSoEsNgPV/u01ZSWwDaK/01ZSAyf4pqDYtQJBYUKGhyUqgq0e
         4HkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=V2ZK9/Df1B3F90/1wjoCaVFTYcpJBDi10j1OGUy5dnQ=;
        b=k1ovh0GABYR07lMsYTDFbIx4dReHRcAdZrmVm+KpBoKk94+C1SA95NSUeQ95FBelOH
         GqBp61E7lfkqV436VIusfN6m8FCJfN3qfwTrInkWtjsHy5NigJzC839Jk+jgYn6wbTrH
         mQ4VtqmGw9RjmSIt1GxTI8eipkM1PH4VZsJDSPMyK2EwfMTmXX1ShvNWQ9cmzLqpAyom
         4NvW/F0+iVjAJctMrtXT0oK1SmY4UV3AKY7pffQd9Y8pDTeaItPcNMzDVZciKzY/kOk4
         qb6xAFyYPQHVunNnuCgM7sMoBoNCVw5KEUTYaYCb0V8+MkPHB8scHZoeuf0B43qrYh/w
         FJpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=KKpKKbbE;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="/NlnNn3/";
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id v16si90622eda.5.2020.07.23.02.14.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 02:14:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, David Woodhouse <dwmw2@infradead.org>, Dmitry Golovin <dima@golovin.in>, Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH v3 11/11] x86: support i386 with Clang
In-Reply-To: <20200720204925.3654302-12-ndesaulniers@google.com>
References: <20200720204925.3654302-1-ndesaulniers@google.com> <20200720204925.3654302-12-ndesaulniers@google.com>
Date: Thu, 23 Jul 2020 11:14:41 +0200
Message-ID: <87365izj7i.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=KKpKKbbE;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b="/NlnNn3/";
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Nick Desaulniers <ndesaulniers@google.com> writes:

I'm glad I looked myself at this.

> We also don't want to swap the use of "=q" with "=r". For 64b, it
> doesn't matter. For 32b, it's possible that a 32b register without a 8b
> lower alias (i.e. ESI, EDI, EBP) is selected which the assembler will
> then reject.

The above is really garbage.

We don't want? It's simply not possible to do so, because ...

64b,32b,8b. For heavens sake is it too much asked to write a changelog
with understandable wording instead of ambiguous abbreviations?

There is no maximum character limit for changelogs.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87365izj7i.fsf%40nanos.tec.linutronix.de.
