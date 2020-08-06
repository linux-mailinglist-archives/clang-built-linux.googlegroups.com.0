Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2NHWH4QKGQE32CJIVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C0A23E1AA
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 21:03:07 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id p12sf8170845uak.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 12:03:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596740586; cv=pass;
        d=google.com; s=arc-20160816;
        b=fDP1jxq3IpZE41fOjoPoKLz01drENnQSIdMOfWQH+T+0CAdhiul7aKidElalAQJ1TU
         bjBrZ/5fpW4EuyVs1Gr7r2PyRY/KHrd0njmQSs5VgdhZZj+XOucWcXw9Dz4cEI+cZDqw
         phFO7zzsMZRUoaaOBhjGX+2/Nca1cMNTy2rEnMCMuPDhcSH1WklUYG036a34P3Zx2bj0
         YCxSfpWvFbyRs7Z64MMCkyDVXeauR2RL32a8VIwfvR9OuUrPHci1balZxu1g8lVwvPiw
         gJUhxxvnBtvdk9cS6AMN4byL6fJ/fTBnQM5Blw3ZqgcMlpM0Bd7fDdYxDGt7ZI+44vYn
         TqtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3Zwcr0dRb+pIIAahR7XMnpXUIv3mmeRVmRUJJxgFSjo=;
        b=U26fled7naQSqnGbPP7A0Y/KHGTPzQKzCwRgPqRtlknK+4H60jIUsx5Sk0+6Q93DmF
         9pyVAsdJFlfrCSTjZymgTmxa7PWOlmOauXaAYGpY81c7xNXwlI1vzLN92vLUGFuq0F7O
         Lpnw7Vf63KoDTG2RhuSRoyheeAdo/Ksj3AN4+5CZ7BJOq5fPChRuXS0x3umBMC3InTT8
         sZx+IzDHt8Rg5tY9qR3LlnqgTvGAd8bnwPSencux/gOiM33rU5vrlrUpewPV/rBDzxjH
         KrxKyQ5vajDlnbqPVPhzSQaWIGPAabMTrx6oVmjUVQZKktH/i8C0h3D2RCKm5HmBfbRt
         rS3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sByt28GX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Zwcr0dRb+pIIAahR7XMnpXUIv3mmeRVmRUJJxgFSjo=;
        b=ieBtYiyeaIZHORZrN//hZV8lKVwTaWKOgwJGCumdfVQjAaYO7e/xlPC2qVG4rAvMpz
         p14EVoAmSzdAxtvhFmyxa9Et0/70XL6cUH0bpbFrmbldIVxBBDJR7vCiisycT7qefJ5i
         6k9QV8JHWWP9DKrozjpbUeHZZWpOT25CKmEpj6XmXqDhKSbKzxm15okE5aUchPCUIOcg
         81MuyKs1BdEbjKBhT1s9Ixj5VwTdZAZ3pl23q0eh3JgNxRqOYUk0XFhkHl4wT5z4mYNb
         NLFOurqkRulsnvnqOef9TZquwaGK2y/IuJuYkaZkDPX4ux5WjwuZLH8VmPY09u0ACPLq
         O9rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Zwcr0dRb+pIIAahR7XMnpXUIv3mmeRVmRUJJxgFSjo=;
        b=cGjXrX3PR3c5Mfrk0BZfYZfVOFk/HsqWcunxrz0sa8ovvaExJleIpzAG7RORfLQcUj
         i0itH181QRMpaYh2ME7IkddQAryZ1ydqPJTh9oO2fuS6SyQWUj9f0eaGurObvFE4ykfT
         4RyEK3b/BT9I7PHvUZbaxWrZLv16+xeLhfEX3nnq6UD7uEmAZQ/S1QL9AL7n9OGeKmkY
         arwkj+TnRb0TaL6x8ETF/cvmKq4yd12oXBzmT+NvIQKjkGCV9/cOWnixpWIqitpdJ8CF
         l9Cj9PMrYQhN2xBuvRB1+w5P0I4/vwpijUuJMPFNPaNpW8a6oNIcXH86XZlIyE1nSCsw
         JPhA==
X-Gm-Message-State: AOAM533Z5dssra23VsHM3RMVXVFU1Y9aSDUfcbbn/OdEhq9FkJM+VQq6
	qfBiYq2GHApiKc8cvnFaQZg=
X-Google-Smtp-Source: ABdhPJxoMat41/FQrpqorkc3Ik0PdAyTY2VQ5PWynR9citwkTglSivN3QoDCm5a3mroOt87uKOFTtg==
X-Received: by 2002:ab0:7841:: with SMTP id y1mr7565659uaq.102.1596740585871;
        Thu, 06 Aug 2020 12:03:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f28f:: with SMTP id m15ls615950vsk.0.gmail; Thu, 06 Aug
 2020 12:03:05 -0700 (PDT)
X-Received: by 2002:a67:87d0:: with SMTP id j199mr8315770vsd.190.1596740585511;
        Thu, 06 Aug 2020 12:03:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596740585; cv=none;
        d=google.com; s=arc-20160816;
        b=h2grhsLnwXeDSS5MwHdAOTEpAHuvJF0qOAzu7jMkUmVRnV0XcHV3abRrQpuHv+zkcH
         Agz70QFyeiK5u/Xx8YnJRot0g0vQjajoiTpZhwdgVfqdWqzNsaSSlborjrqMhVYd4hub
         HVfeo28A5Hh8FCN34liEFsTH5IZm5l/RJRXd4VaWPEkdVaVfMcoz9r8zPj18mpQEEdcK
         aOBEEXt9lY0HCx7SRexAWH+wF1KrNtLNrqH6yhO9LHUCrIfgeNUwZ4lhYa2f141dBB67
         dGwvbU8KxRPx6+Hz3P6ALfonb+UiAPSHmk6Hp9kz/pQZ1eiWNokGavkOO99AWKxb4LSu
         ppPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qhR0m982Es3MI21ruXSJXbz1Iy4lmeilbsfCyAfMJxo=;
        b=SdShJysJhZc+V2MqmtPVW8tRt9mgx2c2fi14iJCPgEtlpx/kMETcedFO7+mjElSEwg
         irFZDq2HwWVzSOW1SdsGB/cMjkrscfu4gf7yrJqtwJaexegHRiaP2M2mD9FkoWNh7FJb
         /kGmyDIZpcC2oVF/+9mcVlT9UGAVD+k+qW/zcHNgoEn4cuWOZwcD2gNarDGtam6vfQC4
         kwY9nm+R7EW35lwBwiGsj+RGH1qfpvB0to/UBjBlqsAiIw1o4J+03KrV3iDvXUk7QHiM
         UShHERRTAqqBXiUpctBAaCTeKQJxK84gjC0PLFeNJFnqNTNRUo5lz6wWO3ZRuaQgMDRP
         cJdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sByt28GX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id p19si444503vsn.2.2020.08.06.12.03.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2020 12:03:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id f193so15208196pfa.12
        for <clang-built-linux@googlegroups.com>; Thu, 06 Aug 2020 12:03:05 -0700 (PDT)
X-Received: by 2002:aa7:96e5:: with SMTP id i5mr9578554pfq.108.1596740584269;
 Thu, 06 Aug 2020 12:03:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdn-2E=v_7Uie71pz2jjYCKnk98K1Ly8EkpxzvC6M5pXFA@mail.gmail.com>
 <20200716112840.GC8484@osiris> <your-ad-here.call-01596030682-ext-1369@work.hours>
In-Reply-To: <your-ad-here.call-01596030682-ext-1369@work.hours>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 Aug 2020 12:02:52 -0700
Message-ID: <CAKwvOd=1E+90VHwzh9cYGz9YKy_ECMJuK6gZhzLqBFw9kS4Cww@mail.gmail.com>
Subject: Re: linux plumbers + clang + s390 virtualized testing
To: Vasily Gorbik <gor@linux.ibm.com>
Cc: Heiko Carstens <hca@linux.ibm.com>, linux-s390 <linux-s390@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sByt28GX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Jul 29, 2020 at 6:51 AM Vasily Gorbik <gor@linux.ibm.com> wrote:
>
> > > We were very excited to see your patches going by for enabling Clang
> > > support for s390.  Since then, we've added s390 builds to our
> > > continuous integration setup.
> > >
> > > We've been running into a few issues with doing virtualized boot tests
> > > of our kernels on s390.
> > >
> > > I was curious if you'll both be attending Linux plumbers conf?  If we
> > > carve out time for an s390+clang talk, would this be of interest to
> > > you to attend?
> I will attend and it would surely be interesting to me and other
> s390 folks. Your efforts are greatly appreciated!

Cool, so our MC has been approved:
https://www.linuxplumbersconf.org/event/7/page/80-accepted-microconferences#llvm-cr

But we're super tight on time and probably won't be able to do a
session on s390 at the MC.  That said, I have just submitted a BoF
proposal since we have more topics internal to our group we'd like to
have more time to discuss.  I've added s390 testing to the list of
potential topics, too.  I'll re-ping this thread once I hear back
about whether it gets approved or not.

That said, we do meet once every other week virtually online, see
links: https://clangbuiltlinux.github.io/.

>
> BTW I believe basic Clang support for s390 came earlier in 5.2 with
> a lot of efforts from Arnd Bergmann.
>
> My part was fixing recent breakages and bugging our s390 clang team
> (which did all the great work) to get kernel specific features support
> in clang 10 and 11 to reach features parity with gcc. And eventually
> doing few adjustments so that features which came with clang 10 and
> 11 are working smoothly. That is s390 "asm goto" support and specific
> compiler flags for ftrace support and stack packing.

That's awesome; I'd love to get the chance to meet your s390 LLVM
team; in general it can take a while to get bugs routed to folks most
empowered to fix them until you know who they are.

Would you, any fellow s390 kernel and LLVM folks be interested in
attending one of our virtual meetings, even if it's just to say "hi"
quickly? Next one is next Wednesday.

Usually we go over whatever firedrills we've been running the past two
weeks, but sometimes have presentations of folks projects and
research.  I think it would be cool to get more background on s390 and
work out the issues we're running into with testing.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D1E%2B90VHwzh9cYGz9YKy_ECMJuK6gZhzLqBFw9kS4Cww%40mail.gmail.com.
