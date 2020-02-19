Return-Path: <clang-built-linux+bncBCU73AEHRQBBB2M7W3ZAKGQEW5UIIIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4CF164F1D
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 20:43:38 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id c206sf1018358qkg.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 11:43:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582141418; cv=pass;
        d=google.com; s=arc-20160816;
        b=XjKvdci4GyAwBaiC6i16T5VQOXgUyDLBIUHYtHPQorBMEt4xTuHOPGkcFXTegpDm//
         T4181D0PDVptD6OOT7ISJ9Sgex+rm4wriVJE4vJIp2S0af2oO+Scg9V+MTwFPjnKUmNg
         N/wLU5DTSZoXUdjdQ6St5ESgnOEyNJuH/CcNf7uD0qqOQRAsvlGskZdiyuJm8qP2F2qo
         m/Y0v2qhLo5lgG+mAllUs/dOIYO5fVirqzFga0pMFhdh1YrmQOpyYCNypzMQuyw7H5l7
         FSPAcdIhwZRJNznEc0ivmahkpfsaXaBImua4kjE2cCSMpVjRCvErCAObsq7XQrbg+dMJ
         rtPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=vfejjlhcJfhUkhX4OB72sT0KiO9IFw0dUUIlYFWvOVg=;
        b=mbtaO4ptjI8bjoXOXZxMjKsoqGlRn9Lw7oSLPGQpHajGmnhevsh25MDJXq/dAbzfQz
         Ic+yGRCbUy8Dv6/MrYD3JhlWwQbcGQZJnpm8v3Skh4JwA3DgmyXzlWiTu69u9M07j0Mu
         /8CDiEycsONQ/v32yEFs/tmJWIU+52ldzuaW/QVsMO12NPI2ZFkBBXuqNsojJNAZDPoF
         zjKZEzifvan3LE1I1BnZcDGmD+YmaN+WBwtGvy0k8wM3Z+PTFhQhxdUO8ifWcmB08Srv
         CEHfY6zDOyS6I2Wk0Uds0fFTHCR0Sf3OocFp9+VAC0HCRS+cxrCzlqjCb4J6a/Z+shp9
         2vwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=S/OJ=4H=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vfejjlhcJfhUkhX4OB72sT0KiO9IFw0dUUIlYFWvOVg=;
        b=hRDTwjrMtnZp8eP3UnnLUnpg4PxQG58QFU8HivbmJIkKSdqpMEIU/vTJP9bYSecYwA
         jL05tjABb5GWngpr02B/s8OHu2ahRHmHMnUz1WU2VkcyLXZ0inzdc04qSkMw7jJKk67d
         NJOhktNcX9oeuYqZ3xC4p5Yj1FjJf1P7BuPrMsqGz2th4agECM+wbzqAGAnEO2wyohhI
         zAnLMgeMT33wuKg9XUMKkw1n18MQl8gAPxbN24kY5zemjV+4BgpQlC1cR7tTOFsdaq8Z
         1GnMUXzGC0Esxlpl0M/b6s1K7nPkzjwfe+iDsyJxoJ6aPbbUzM812Ko1iqlNDjtk7MTD
         OKSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vfejjlhcJfhUkhX4OB72sT0KiO9IFw0dUUIlYFWvOVg=;
        b=Aq7rqxeOKDUpXPQmmla5UBPoqXDIc3JwWBd+t473OCPececqEn8c/TIj94ZSf75izm
         WtcykZLUdlf8z3h7ZA5ub1WDPacDTT7OCWCat81pnW19FSzJmI5VbOyHgx1V0jmuKjsG
         z4iI4kM7l0pHYHuBQW4Q0KOAazy5EnEm+MqW8uCQ79Fd8hDZflZuLvjvr8VDbug528VT
         FWA1pKozxVI1R5w3j+yEy+CmUivTGyIbk6QjTJpj9sE0OUIQuemeTd45I9dyF8jJu2WW
         ESgjnob1wg0dyBlABTqrZQcIo0RPXgKCELIn73M/ivdVlZb6HfwtV4tkw2GJsW2N42V+
         dF2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVfWPtvk9LTAn/xVJd5prOjb8megXmyuaoIFwk86Xl1NAMyRunN
	ibkmx+YWn8w+qqLfiAeRFcI=
X-Google-Smtp-Source: APXvYqwwoPJ7ZK8SaiauX0K+MnNWUVHoiL7yWa+pFv3EWV2BGnpOdhAjUZBfdIfTJCvl6KBwrwgaXQ==
X-Received: by 2002:a0c:c310:: with SMTP id f16mr22756321qvi.65.1582141418017;
        Wed, 19 Feb 2020 11:43:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6116:: with SMTP id v22ls299986qkb.8.gmail; Wed, 19 Feb
 2020 11:43:37 -0800 (PST)
X-Received: by 2002:a37:e55:: with SMTP id 82mr25640369qko.370.1582141417709;
        Wed, 19 Feb 2020 11:43:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582141417; cv=none;
        d=google.com; s=arc-20160816;
        b=OUsfFd0MTYrI5dJJuCcnjn0dJVWZ9hxh0sKu1N7GXpFPPjzp2+7Y35D0eY6WHRPrQp
         6wvAi1cDe0lGd9k7dEtURxjBmDuMKHvzh/b0RWfnpTplQ8LsPHcIHcigs9z86lzApY2g
         Refcno4f3Yk9dxWoeUlnoY6fdfzqfnbGQi7IYAWjf3TwRy3+n9QvfYQGLsIYY4t4PyqZ
         f/r7oSyRVD/QWSegMAieMZggzj6iC/l16Kpk/+M7KnJwedyy73SIISnGnORC0+IURuq5
         MLOBH+/8tQU+WPHSX0xlu2o6iAG4nSnc7ZT8j/SACIP08MnJKPQrjBlZ42nkNfh2RfEY
         Z67A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=8J02EHKPBOSM5E062cVTt6zQksblZqT8c6frLPfUjaA=;
        b=BDEu73F82SNc52h+36YnYR6BscIxQ35HRUKt+YNIl2I6mxVTJ1Elg7zvYpEEPMmthB
         kmfB37EtT9BA4fy16wOt1R/Bv4rDf3+kxt7NiuAQn9Jc22UT1OmoR00SCWBAggUR2E5i
         f3FyhnwlEjVbgt8MEk+IIXGAh7OkO5XJzfJCVqYj1DryKTDju0UP8L5x8iaJU3nUdIeJ
         LLAKanBn5N6twM15P98yeiI+KUTBFMshr4e9VzKrdBJKGqvbytx1yHjiAydI3sHxGky3
         oatFJwwBrYvSSaWu2G1ZF8kRH2kMY7HtaIPOFXUxETU3qc8z5kG3iPWOFbzNTHgcvm5D
         4hbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=S/OJ=4H=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 76si77010qki.1.2020.02.19.11.43.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 11:43:37 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 42C84207FD;
	Wed, 19 Feb 2020 19:43:35 +0000 (UTC)
Date: Wed, 19 Feb 2020 14:43:33 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jason Gunthorpe
 <jgg@ziepe.ca>, Masahiro Yamada <masahiroy@kernel.org>, Michal Marek
 <michal.lkml@markovi.net>, Arnd Bergmann <arnd@arndb.de>, Ingo Molnar
 <mingo@redhat.com>, Jason Baron <jbaron@akamai.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Andrew Morton <akpm@linux-foundation.org>, LKML
 <linux-kernel@vger.kernel.org>, Linux Kbuild mailing list
 <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>,
 Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 3/6] tracing: Wrap section comparison in
 tracer_alloc_buffers with COMPARE_SECTIONS
Message-ID: <20200219144333.1ce3f9ea@gandalf.local.home>
In-Reply-To: <20200219192249.GA8840@ubuntu-m2-xlarge-x86>
References: <20200219045423.54190-1-natechancellor@gmail.com>
	<20200219045423.54190-4-natechancellor@gmail.com>
	<20200219093445.386f1c09@gandalf.local.home>
	<CAKwvOdm-N1iX0SMxGDV5Vf=qS5uHPdH3S-TRs-065BuSOdKt1w@mail.gmail.com>
	<20200219181619.GV31668@ziepe.ca>
	<CAKwvOd=8vb5eOjiLg96zr25Xsq_Xge_Ym7RsNqKK8g+ZR9KWzA@mail.gmail.com>
	<20200219192249.GA8840@ubuntu-m2-xlarge-x86>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=s/oj=4h=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=S/OJ=4H=goodmis.org=rostedt@kernel.org"
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

On Wed, 19 Feb 2020 12:22:49 -0700
Nathan Chancellor <natechancellor@gmail.com> wrote:

> Yes, thank you for the analysis and further discussion! I have done some
> rudimentary printk debugging in QEMU and it looks like these are produce
> the same value:
> 
> __stop___trace_bprintk_fmt
> &__stop___trace_bprintk_fmt
> &__start___trace_bprintk_fmt[0]
> 
> as well as
> 
> __stop___trace_bprintk_fmt != __start___trace_bprintk_fmt
> &__stop___trace_bprintk_fmt != &__start___trace_bprintk_fmt
> &__stop___trace_bprintk_fmt[0] != &__start___trace_bprintk_fmt[0]
> 
> I'll use the second one once I confirm this is true in all callspots
> with both Clang and GCC, since it looks cleaner. Let me know if there
> are any objections to that.

Myself and I'm sure others would be fine with this approach as it is
still readable. I was just against the encapsulating the logic in a
strange macro that killed readability.

I haven't looked at the resulting assembly from these, and will
currently take your word for it ;-)  Of course, I will thoroughly test
any patches to this code to make sure it does not hurt functionality.

-- Steve

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219144333.1ce3f9ea%40gandalf.local.home.
