Return-Path: <clang-built-linux+bncBC2ORX645YPRBV6AZXWQKGQEUKKSWYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E5DE5574
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 22:51:36 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id 70sf2275352ple.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 13:51:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572036695; cv=pass;
        d=google.com; s=arc-20160816;
        b=JPvrgBzo8qRiNKTCBJQJo64HX662U1SE4v7WGyV/ZQlzLCfK2JJmGXI+kF/l6gN2uS
         uld78L4pSrDe/bpruWCIuwgMVr7lZqzsZjKzq5ZovspUULDzmWcTCWQwH0sORZlXW8Jp
         BhSHrvw1EtAzlX3KfYhu02ymojfTG6g8slpQQpruRleekKAGryZKeUK6KkGqbcnWAGx7
         Ufv4U3YwTHJoXb3I0aUmHqF6Hi1hoi4ptf+7UZ2Apn8hzyiFxo5nagtoUA+YZsZgArHW
         kT1ct2EBYi/S6BdC4T4Z/mCIOquhwZWKZH6Aa9Zqup/PYy+cAkDBY097rx3S0mAcOerI
         cNrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Xt2zk2sLyhDl3GP8i2qOXmYoRXFA5ARXiEzSt60vsSQ=;
        b=n3d9epDHVoRHDIK6vzf4e6DAJ5vf5IYS/3npxqgcJOwojFCBQhrgYOGm7XZIXrWqQA
         76L8xi5UeBhH4tFQ7TL/CFTGHBPrCFG/yqBd+41yiHPJ9/rUFWz6cr/YJp/PEyQtSSRx
         lATt0h5tJRbmlUsekre8lX9V3QlQ21Q3mT++zpEq4jbCO29DiqQozXHoxdhmwVzfPfOb
         7BihJNbwXFZS+ACRVCha10pnaZRtiu4dywrZUjFO4DYDKrlY/B2OLrlxCZGNtE0SX9OA
         VCq7bb2GJVPrnP1+PVbFqJIvvBwwAi1ALlAmxdPLI6VAxXWWj3voVjuO8VojanTFu+kx
         DOIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OMpIHy66;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xt2zk2sLyhDl3GP8i2qOXmYoRXFA5ARXiEzSt60vsSQ=;
        b=kbBv1aWi9gAO0Yex4FTHnZ0Rft2oIb8fXdTkTCiw7EXDRukH/TcvCgps2QLGGq/HgY
         5HmH+3x1sKPUbStL/zxCM8v3EPtqPzsKrkxVKw5Yqrk9Ph5DR4G4Z7e3siR9MCqR5ZU/
         LcSmppn1+i+CLjA6QefrLXiKVMBL8iDKDPpB7Jb0S9bHFviAQvaTJpcbAyXfbaszN9vY
         k4D9RlwzJpk+xmQAsUYweSwRs6eqkcUEWAajKGoF0ZT7HsavtFiZvOqCjTg02VYjlUJG
         ixi8kIHEYmSeCioNIYtFYxOb37dIfShTwF7Op2UvzSi+SKOvqa4BvQ9T4oYBE7VVsITM
         lJDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xt2zk2sLyhDl3GP8i2qOXmYoRXFA5ARXiEzSt60vsSQ=;
        b=jlmvl3aEFQbc8uxXDBzl+lAU82ElP4Cqel+Zx3ruNK2awnbOcDolwruD8YMCfyyZS0
         9/nYf00w1wprlIKyF2D3i5CM9jTTpbuqf1bRAlKnUwiLg6BkNuUt6ftfYO3UX8vkmFha
         SjkyGcFViJBoIvtfYgtOM2ly2CaafQ46avqSGjMzbEXEEq8VDtn+dhBF8UELWtm7QuiH
         QOk+SevBOKZQctUF7ycrIoTHXRb06VE/FefJqTv3HKhqU5SYwZV6CQo1bf3QM8UFvFul
         oLfv0xLq9Jp29P4z4eqCWxQhYRA1X9DZWEQk3ssWiTO2npKZ0lUVLpGW/ljbddCyW5F7
         n68g==
X-Gm-Message-State: APjAAAXACtHSkidmi5av1KmK4wMC0UQRFp5FeuExoFDPcWdJWG0f4lIm
	wlR5divhQ0gaXPVqybWhDss=
X-Google-Smtp-Source: APXvYqxNxpjjQjAMv7LE7kroubeiNDvecu8JC1UIOWS5L61WIDJNUg3X20Pji/mau3Xb6z0s1ENPeg==
X-Received: by 2002:a17:90a:d205:: with SMTP id o5mr6675928pju.46.1572036695320;
        Fri, 25 Oct 2019 13:51:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa91:: with SMTP id d17ls3080921plr.2.gmail; Fri, 25
 Oct 2019 13:51:34 -0700 (PDT)
X-Received: by 2002:a17:90a:9291:: with SMTP id n17mr6626991pjo.60.1572036694932;
        Fri, 25 Oct 2019 13:51:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572036694; cv=none;
        d=google.com; s=arc-20160816;
        b=yTpPQRp8C1dOAS9rG6RuddqYY1EDG3qLdXMJhmONR2xMWHGXqaKCt97lcoc+f+OvR8
         bsIi8IVaUiKsbeYNfymp9NLih5iSUsC0izECEdcNne+obLaDKQ/5fKGMgwfAvS09RkUj
         6GtUh2HD3Spq7Ib2f/rlAh+Jkoxh8d5XFIGhqZ4GGnfQ3LtY8dUJN1Sco48cIkQeGNWV
         J8++0P0C3fs/9k6nF9lZHUfk24E5p2Pmfnxs3j08MKjviTpPVFXToxkSFuKng+iK+moR
         9VQeAtKtbKnvRXlH1CFUjB8EkNB0Uc3+UySEiqr+2jlaXhBkcZ5kJBNuU6pZq05EoCtR
         v1mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SOwCMPM2O4ZOlwd3DBrA7iEvzDojcSJWVcNWTrD2V3A=;
        b=Oqiajnv0yz0d6AmBL801lVx2WmsAQCVzO/fAcPLvkmjG5V0PlBCDxhIGTb8atrOWhJ
         2pv0L6uSYzcMqYIzzb5hr2ZxFD7hHHoQSpxBv8o7yMr2LE6KsxX9p4aBxWmAEXHnajok
         ZDLH0iDT6hBoZRSjBs985VBvc9hw5qSd+rdtK56YfysK5d86mytwH39MsJ0XwyLUopxS
         bq16mTDo7uqQvyogFddxjNkjykDhvDFIR+Q0Ms8mqgcC/6ApjqHpH30GPyO1BKAWNY/V
         M5SE0SDL6AbvWVY5/J5mrPZlr1Lf9Rh6+kIwKEAWKMYo0oXEc9pqmtoxWhmDUGF9Oi+D
         Us4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OMpIHy66;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id v16si151373pjy.3.2019.10.25.13.51.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 13:51:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id d3so2387878vsr.1
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 13:51:34 -0700 (PDT)
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr3107850vsp.104.1572036693631;
 Fri, 25 Oct 2019 13:51:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-6-samitolvanen@google.com>
 <CAKwvOdmfXbnWf0dPN4EGCBVvppVRhuc=eq-pbfmotCCBaRN-Cw@mail.gmail.com>
In-Reply-To: <CAKwvOdmfXbnWf0dPN4EGCBVvppVRhuc=eq-pbfmotCCBaRN-Cw@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 25 Oct 2019 13:51:22 -0700
Message-ID: <CABCJKufR04dmzj3-7Uw0QkcHXvNd6h8XMPVV-hZ-AyOX-CJcjA@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OMpIHy66;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Fri, Oct 25, 2019 at 9:22 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> > +static void scs_free(void *s)
> > +{
> > +       int i;
> > +
> > +       for (i = 0; i < SCS_CACHE_SIZE; i++) {
> > +               if (this_cpu_cmpxchg(scs_cache[i], 0, s) != 0)
> > +                       continue;
> > +
> > +               return;
> > +       }
>
> prefer:
>
> for ...:
>   if foo() == 0:
>     return
>
> to:
>
> for ...:
>   if foo() != 0:
>     continue
>   return

This was essentially copied from free_thread_stack in kernel/fork.c,
but I agree, your way is cleaner. I'll change this in the next
version. Thanks!

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufR04dmzj3-7Uw0QkcHXvNd6h8XMPVV-hZ-AyOX-CJcjA%40mail.gmail.com.
