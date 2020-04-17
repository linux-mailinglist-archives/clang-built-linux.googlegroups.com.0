Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP4S5D2AKGQE6QJFAYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EEE1AE653
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 21:53:37 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id y4sf3129123ioy.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Apr 2020 12:53:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587153216; cv=pass;
        d=google.com; s=arc-20160816;
        b=zyByVdmq0D53xqVqDtGyyQGkoZMQ7hQffTtWnGs3l8M2YFpoLpwiYNjPR+yoX7t9nn
         p1/dW9S18U37jCJoZ6yzz1Tp0lT3lYgqMuilOQK3Fk6rRI+tLX5HbFnn2ZgVT6UqDEmc
         gmdL4Hzf0u8aurJtnpZOovgmgjUHZZVODMHW28pFmyKlFjeFHiykv25m78AOD1cg6146
         OVqNz9AnnSonBXbvickihLvvF3Dkae3egKfbFWwyq77cP/EU/eczBIU8FFwFX5ywMMpP
         OQJQXIiDwCzju1bHrR+b0OVyQU4q/MA+aMBbICLtoQi349UHn4C7hR2gyhfH2lez4wMs
         /xFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EEWo82TkMo5odOvXyijr6ASV5GcaP29SpHsv+TMaX5Y=;
        b=N4ExlN3uw7x7McWVefpPFhKdNL8Vao64QBvWJKlbY4Y5rmlHMmJii1lDld+i40CFfH
         3Xrc1M94Z4t/3b328Gw9ZOQYRPerPf1ElbrpLZ90pg25oEzJL9w0SqQjbADbNhOWY74W
         ifYgPKfCMumJY+FQN5BI0k6VCk+O6kWryt9WdM1BTc6RfGyxQNlGXyhXu5rjc8ZLLBZj
         gJ0I0H2bHPHQC8+R+JohL0WqSeKEXL9Rn96xydlEh6Vjx6p0LpWq018qGe81wkd4PnXL
         XR5ijHMCiEfNeEHrLKUmVemq9pbix6t+lLqjca2AvLRqF3p/Kg8vkglTDeGaFu7N959i
         FJdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cI0+m7FY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EEWo82TkMo5odOvXyijr6ASV5GcaP29SpHsv+TMaX5Y=;
        b=JsvzudJwafCpAj3ows3HiQIQFGaG18IbDtgSJH3BvQXQ8A3VMoorlaMQOHXO+vUxqh
         b4t8vCAyVyYJH0NAtrJEaCCGS5U6htBF9CsgOYRFfanaTBzyvkoQzQRKfXJ5mUmpO1kx
         QADb1c4sWM1lefw0RVAiiGN6+g9II22rbbYG5WGazcolfdZkeypS1zTVxkGfQVwPAu1c
         mXQQv3Zs+LFWSk6ZzTMG6YkaoBcao1+3TSyr1klIL0CJm/EEfruYwEiTHX50Rcg/TXnt
         hQfmqLOzrmgZAliBNtFMZmRmtzsbH3uvx6fft6Q9uEEuvcWd6OV22zFhUfF/uMVVjSut
         +cvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EEWo82TkMo5odOvXyijr6ASV5GcaP29SpHsv+TMaX5Y=;
        b=HATLvEFYZ0AnS5nX3rFi6i62dFNW1mH98iN3m1y0T8DbNnXQ4YhHVrHRFZc7b0U7d5
         Z+x341pcISUGqAQkDTv3WCtJcNhZ+ML0SsXdFOGJ8f8hlj3MAYDiAcOGiC6Ru+kuU/IX
         iO1FObTS8HVX8ZYeZwD7BVFU7jG5EdKC6DDGhQ31AeLIdNnDl7gsdemWtG2zQ6ndGMKQ
         S7JP0b+5GVBrinUTEoPgjQsHEOV8/oOCNSHquD3swuKf8fQNyK1bazK0irtcsQCiYWqm
         eAxPK+fQKdEk0Llfasz6zVLb9daBs63nzRMLo527SmexcHWGJ5XCXRK3io09yih5LgwS
         a4uQ==
X-Gm-Message-State: AGi0Pubuqyanqw+lsZIRNOrkldnRUUiKw6bfBtTAXSavUSjBxYr+kTCy
	7Hds8whfO6lhLTWdqJL7BGM=
X-Google-Smtp-Source: APiQypIEpQPjqfXI3+j93jNif+gfAoZjpndlWTDZtgToyyKShLxweTeVMHn4dBZw+ptQb23S/XY4Eg==
X-Received: by 2002:a92:c14f:: with SMTP id b15mr5012778ilh.134.1587153215892;
        Fri, 17 Apr 2020 12:53:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1e6:: with SMTP id t6ls639675jaq.2.gmail; Fri, 17
 Apr 2020 12:53:35 -0700 (PDT)
X-Received: by 2002:a05:6638:c45:: with SMTP id g5mr5037872jal.33.1587153215577;
        Fri, 17 Apr 2020 12:53:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587153215; cv=none;
        d=google.com; s=arc-20160816;
        b=bAysTkBIfHURv0Nzpwh4X+8fiySpfngucd8dIhZAosjo4UZ4KDuXtPLU0Rf9jrLOTE
         N9nFOlG9KBtVrbIr6sqkvOXPmXsq+3NwvJmeAttjFa5dZqCzrGVP/vTaW0gKwhbaeRsR
         TQMnRNBteqI8M/LFfjeeJsSXK5PbrtNDjER7TptpVxpUnneD2X8OpvQnjpPDTwW/DanU
         2VPLQ4L322sNkvR266Bd/MA48m0B+4GoiMHuptOCiJYhXDbmOr9akJhCBIVWCeom5mAN
         WEBdWijGI32lG6UTtjOg/gs23mZ6E3bswyizJqvyxxVcLL/DGOGJ9ZXYOrj5HiL3ObLm
         Q+ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LsrPPfYxwItsmip54/tCqhEs0XC/U9zLPh4nWIbHOOU=;
        b=tiSIHxYVQP/B/5znVxSoSQszCGK9g0h73/PwIi+5lgXPETxUgyRSnlEmzsLVIgH3b9
         RwVJAly64NORQ74vfFO/Zpe6Go7PfRxcmsL6V/YtXnjjQLNMwZRg2nn49d9llJQbhQVa
         VVgZ7cyfQVxeFH8MNNUZThgyS7s6iuDD1xj1tiod53a4XvWVy2Z+QafnKZie1Ek8DHPq
         Hkr/UdwE5MWzPS/fSW9++md8Pk6aezFN3Z4LQTO6Efo6kFaKhIO2VQcoloQfM3IvtkZj
         Yyx8LQ1z8FR6jAz90wt/lxAbHWzuv/V1zgXq4tOCeK3oSP57i2gB46OTGzjq4xra9cmi
         tkGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cI0+m7FY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id z2si1768169ilm.4.2020.04.17.12.53.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Apr 2020 12:53:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id o185so1065512pgo.3
        for <clang-built-linux@googlegroups.com>; Fri, 17 Apr 2020 12:53:35 -0700 (PDT)
X-Received: by 2002:a63:6604:: with SMTP id a4mr4415486pgc.381.1587153214766;
 Fri, 17 Apr 2020 12:53:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200415074842.GA31016@zn.tnic> <alpine.LSU.2.21.2004151445520.11688@wotan.suse.de>
 <20200415231930.19755bc7@sf> <20200417075739.GA7322@zn.tnic>
 <20200417080726.GS2424@tucnak> <20200417084224.GB7322@zn.tnic>
 <20200417085859.GU2424@tucnak> <20200417090909.GC7322@zn.tnic>
 <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak> <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
In-Reply-To: <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 17 Apr 2020 12:53:22 -0700
Message-ID: <CAKwvOdnpZuNG66gR0kqeG3v2x3rQSV+bZU8NK+vRcQ9FS9pNbw@mail.gmail.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
To: Jakub Jelinek <jakub@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>, Sergei Trofimovich <slyfox@gentoo.org>, Michael Matz <matz@suse.de>, 
	LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cI0+m7FY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Fri, Apr 17, 2020 at 12:49 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Ah seems we do have __attribute__((no_selector))

Sigh, can't type today.  __attribute__((no_stack_protector)).  I'll
send a patch along for that.

> (https://reviews.llvm.org/D46300,
> https://releases.llvm.org/7.0.0/tools/clang/docs/AttributeReference.html#no-stack-protector-clang-no-stack-protector-clang-no-stack-protector)
> which differs from GCC attribute name.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnpZuNG66gR0kqeG3v2x3rQSV%2BbZU8NK%2BvRcQ9FS9pNbw%40mail.gmail.com.
