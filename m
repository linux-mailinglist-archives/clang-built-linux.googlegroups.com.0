Return-Path: <clang-built-linux+bncBDS6DTHSSUKBB7VXU7VAKGQEQDP6DNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA17839F1
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 21:58:56 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id j81sf76571592qke.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 12:58:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565121535; cv=pass;
        d=google.com; s=arc-20160816;
        b=ui7+FCCK5w+BvP6SfUhJIajySawyF4j5SbXbyQ3wBa9daqGE222265AABQUH+L4wol
         U4CUCXKjmf6xxwYP2vV5Ozdw54wG1ikOS3awrs5Xy01T84GdtH2GYHd57uccElbF+Swj
         2lvWxzJOVzttj3fhsL3g9r3mbFIzCOJ8b+Q9osyOsS3DjaAQ9J+RnHRFc2SXqlXvixos
         TsUzsnA/2X1ZRLK83eSzDeTq3b98WnKj/hIOigsMPjmh4CRAX2nh8mQlMq9KzfRGTPIn
         j7oJAbiMcwnjFMQ9guI+US8WeC3i58+vq1CuTrUiAFeukUmAgp7Jf1DyPgyJ5IRnCikC
         ewYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8pdsMiYVnRElwUWHU0ctn5akXw2jQ5Zi27gb7XGQH5k=;
        b=vP1y6Bwvd/0HJuMgFNdt2LuU1GLDXsnALNnBxNK1zZmU7OAoQkAD95b3v4rc8QdvBr
         zLGwJ7aLjynVZ0V8QtoxiKrk7JxclnNGtd7Fl8YM8047Nt+TmA3vArp1UJFCa84DNpiz
         baymd0eyOiQj83QEse98C6sNZdT/iY1iLyOnkpW4RJGo18BfsGWNfv8SG4BSWD4PCpBh
         5L2asSfCHFfQ01JeMaJPLSP4z6xcFjVz14HlrLwLDBJfaYYDyfQFhsPlWg8jjrsW/ZRB
         7mHB6GqZT1n+A38HwjEoI//YbbCMGVRpJlvGBQX1Zhk3Z57pMppqO43BIQwh/Dtl2cmw
         3cEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T5clgOWW;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8pdsMiYVnRElwUWHU0ctn5akXw2jQ5Zi27gb7XGQH5k=;
        b=XrziHNtJ+dCNlXMPBjwMEhNSq8ZsBd0Op6xYFh+MOZE15H7WPv2gjosYLsgfJGmcgz
         phIkS62FhkSenXlvxA83+86+gIHc9LRoOpV2nJTLAKjWsYYR9QJRA3OIiHx2TwGoD3WA
         lvyRemdSshCG0Mc14rFWnKkpwE31Bo6NRXRuSmE/QW52h+IH6MyA9MTv3ZpQpPnHoU4u
         GNOBXv8Kvpwo9G04/vrtD0DPJ0L0hDBhfKGLmFRavm1v20zJETKxGRaf1/nIZNEHu8wU
         0SZkAs0M/J7djkgiHz042vQLsCN1tVU10A4pxKsHZu0BrRBkfNh/ly6AvumHq0+NrWhb
         cyJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8pdsMiYVnRElwUWHU0ctn5akXw2jQ5Zi27gb7XGQH5k=;
        b=m/FUyMGBn8Pk2YPNUBqqFQGjZu+yAyWXg5wLnSBqQus/Y/uP8zexpz6gE4AcErhNRM
         vgMykXLK6BJjKlahEsJs3MgYhPVm+mGg4d8eb/c4P4U0rqkhsGFBdYGqh+NlhP0ygUqz
         PkhnZrRoR4053DqR5kC4FwxvEsJGKg7rZICbq+hpxS0Bo+3FR3e9s54EjWIj5k54F9sL
         yLft8DQ1o9l9w/uCx6muLNjEaL1yEf639MHbBcfzZZjQg19rPRS3vCXA6tVPAMA9OieH
         LHqJm9MTv653q8K51QUcXUnkhpX8y9kndmpBRfBhk2bAtX6b+/Kq8HskcNCsUCcqMQMw
         5lKg==
X-Gm-Message-State: APjAAAU6e5XTsx3Lzf70nxR2t/Cc6uve8i60wE+M9KUAISwOPQYCLy9u
	N3iWBeqrFT9gDLzPm8iU2cA=
X-Google-Smtp-Source: APXvYqyEahhJ6HZmcAGOx+tvYELZiDLezyC0mqn9jjiiQ3Zb8zpZT/sJAdn4JM9n5nkoJs83Z8Nz6Q==
X-Received: by 2002:a0c:8321:: with SMTP id j30mr4711943qva.171.1565121534996;
        Tue, 06 Aug 2019 12:58:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a297:: with SMTP id l145ls176300qke.12.gmail; Tue, 06
 Aug 2019 12:58:54 -0700 (PDT)
X-Received: by 2002:a37:5e04:: with SMTP id s4mr800544qkb.268.1565121534746;
        Tue, 06 Aug 2019 12:58:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565121534; cv=none;
        d=google.com; s=arc-20160816;
        b=HpF5faCM5qlJ0cqEUgp339wA/3Jra3gGSqWot3cYqWqJi+5qq+iWDqC2CODQpRkVtj
         p6jdcZW3LUD1tcCH0I1RBF8PfiTtGk9zSFv2NdOWAycK0syGlVljaLgY9jGapOLDIYSc
         P/a7AKK2f6x2IuYlbmgQIr/x/zzEkaO8l9vioBnO6JWcz19bcBhMTKS/UCou1Ox64oUg
         HqIw8b5dHNShQeg/ssW6Ms4P0jxAUjY1UcWraIaB+tRo+t/uBoDCcEivCv6GpytHQ9Fj
         L8WJQV6N4Fg3f/s2MtTwUcMNQjuygLSYFAfGquU/0nU5CFTgfGtMVueNupN1VOjWp4+5
         mY/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dxbbGVbdfLAjplIi6klvP2k3uEzOYV86xUSvKUx/4Ak=;
        b=tdZk39qZF0Ke+JRxdLRHRDyFy2lzRj6oEkZ6B2qRIhm3+G0Ro/E4P7fwtW8CMrrab3
         Hb7HQk9pXyJB+cXBJjHvQmOILQSwOskd+cHhxqiJBPDLKQtlwib9hxR3LKbcE1lujree
         FfcgOHVocHhaHZKqL9fOqiHpwg4fQzJQPY7mR+LwCKtVXSoXUHOFuQzUU0Tsk/i3pRyj
         qQtc5TRqFN69DqV2l1l8oM6qH9Js0k3k4Y4Q5E7B6Ht3LqXzJtlQb22NB4z3kYoBm9j1
         qIGxa6O+jzLanety/Kbmjj6n5l04IaHXwgFHoyhJ2UFzX1KaXoorOYuU7/82lh/20a4h
         Ylww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T5clgOWW;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com. [2607:f8b0:4864:20::c42])
        by gmr-mx.google.com with ESMTPS id c23si3152600qkl.5.2019.08.06.12.58.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 12:58:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c42 as permitted sender) client-ip=2607:f8b0:4864:20::c42;
Received: by mail-yw1-xc42.google.com with SMTP id u141so31240502ywe.4
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 12:58:54 -0700 (PDT)
X-Received: by 2002:a81:3803:: with SMTP id f3mr3471363ywa.337.1565121534037;
 Tue, 06 Aug 2019 12:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdn0kv+N5raBDE_aPv637ROHmu7C1_C9F3PXNnAYSMTOYQ@mail.gmail.com>
 <20190806190254.GH4527@sirena.org.uk>
In-Reply-To: <20190806190254.GH4527@sirena.org.uk>
From: "'Guenter Roeck' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Aug 2019 12:58:43 -0700
Message-ID: <CABXOdTckrMfM_-5+pJ37KHveLE8oRDvFAzPftnp_5--fYJVuXQ@mail.gmail.com>
Subject: Re: aarch64 Big Endian
To: kernelci@groups.io, Mark Brown <broonie@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: groeck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T5clgOWW;       spf=pass
 (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c42 as
 permitted sender) smtp.mailfrom=groeck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Guenter Roeck <groeck@google.com>
Reply-To: Guenter Roeck <groeck@google.com>
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

On Tue, Aug 6, 2019 at 12:03 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, Aug 06, 2019 at 11:45:25AM -0700, Nick Desaulniers via Groups.Io wrote:
>
> > I was able to "boot" a aarch64 kernel with CONFIG_CPU_BIG_ENDIAN=y,
> > but without a userspace image... the kernel seems to get stuck in a
> > loop somewhere.  I would have expected it to panic somewhere since no
> > rootfs was provided.
>
> > Is the boot failures KernelCI's reporting a boot timeout or no output at all?
>
> As I said in my previous reports and the linked logs I gave show it gets
> to userspace but can't figure out how to interpret init, there's plenty
> of output.  You can see this in any arm64 big endian job in -next.
>
> > [    0.351576] Unpacking initramfs...
> > [    0.451870] Freeing initrd memory: 14796K
> > [    0.454334] hw perfevents: enabled with armv8_pmuv3 PMU driver, 1
> > counters available
> > [    0.454815] kvm [1]: HYP mode not available
> > [    0.732776] request_module: kmod_concurrent_max (0) close to 0
> > (max_modprobes: 50), for module binfmt-4c46, throttling...
> > [    5.882267] request_module: modprobe binfmt-4c46 cannot be
> > processed, kmod busy with 50 threads for more than 5 seconds now
>
> This is the same symptoms, it will eventually time out trying to run
> init and generate a panic.  Those request_module messages are it trying
> to load binfmt_misc which is how the kernel handles unknown binaries,
> it's trying to run userspace but can't work out how to do that.
>

Correct. Also, while there is no root file system, there is an initrd
(or at least the log says so), and there is most likely a little
endian binary (init ?) in that initrd.

Guenter

> -=-=-=-=-=-=-=-=-=-=-=-
> Groups.io Links: You receive all messages sent to this group.
>
> View/Reply Online (#485): https://groups.io/g/kernelci/message/485
> Mute This Topic: https://groups.io/mt/32746667/955378
> Group Owner: kernelci+owner@groups.io
> Unsubscribe: https://groups.io/g/kernelci/unsub  [groeck@google.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABXOdTckrMfM_-5%2BpJ37KHveLE8oRDvFAzPftnp_5--fYJVuXQ%40mail.gmail.com.
