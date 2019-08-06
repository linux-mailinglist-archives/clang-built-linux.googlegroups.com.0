Return-Path: <clang-built-linux+bncBDS6DTHSSUKBBBGOU7VAKGQEPFLEZWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id BD2FC83A97
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 22:45:57 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id a198sf35984642oii.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 13:45:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565124356; cv=pass;
        d=google.com; s=arc-20160816;
        b=lLjt9zsoCRpO5N/2zpsL0fJS+kKtOoeGZQLSOjtNqMMYlGMq9q0tnnXp5PZuIddKT5
         HP9d23ZOg96VPsFpFUBDDDEuaOe92QJPLILZntTpK/VpgK3UHdVsDiC80Gk4JdFtnDqd
         jWYKN03/onaJG6stvLm2EwwUKXbrCvkkYi1xGywIJCIVIwCQZv9IyUwGtQic9WDpfJWu
         1UFfZffajEFTpiDXdjr6p3AzIL6K7rZ2IqXfoiHRbtQz5JT+vvNPiBkYkWp06gDKhTHh
         O4HchZ4DUR78pBs7Y2SbFESlk57GE4N6WcsbFwa5ezwcdpKJ/uP/xkr+SGOA7gNFZ1T9
         V/9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CgChwMHFjAHZxqvbbaASWkFfY4gRjuyOXulQhl61rIY=;
        b=eewJcULmHMJP+BiD1X7d9VSkJnQ05QArukoBlqEEiDhVB+ccMIT2to4IBKpo5Yjlx8
         KSwarR6UdHnnw0nenNG3CKlrsEyF+DOJCxu7VWXdg4fvRgnjM9WO3RhAxY0GWi1vbKqL
         klvOcjUs/pvkb9940ItpT6hNIo1/DOK6GlcJqU7uwj/XoJ51mRikog0Lcgru1SWpOtpu
         rDqKrl/oLsOW1DOWKP3ZgDLlQ+DMvhsO5DG1umlaB2R32ghkelwwTcV7YtM84wgiEByz
         Y3J0XLlLMf0uvXZsLSiBO4yv3dtQc67c3DRkSeSjg5rfL/EflTCaWU4z+Wf6OZpn1LXX
         SINQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u18KEiYU;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CgChwMHFjAHZxqvbbaASWkFfY4gRjuyOXulQhl61rIY=;
        b=b9LcNQAcNn4tj+0R3iySzMxLBIml1OnhNvDB4JjMjYSRarRHvYpoi+I/A3NM4/QjQH
         AYS+k8gHdsi9/7psrwEje8LmvLP02skMGOVipjIZ9zL4W74Iw0LVdu/qfCE5VcLC13hz
         AETCzVBRGpm0wgHOfi3XdPn7xJki5cEc7B3xav9V7aOm1CH8E0cboBeMSoJmTbsXRgbF
         +QOruEdxhbWNh1WbgE9p/Jxp6fZA7f0Cp+RIX8H9YlLfSpUg7hI6YCHEGQDJgTP+UPZE
         ruS2MlQNaWNSZ+X9OnplFhd8QI0SmcWUQzOGHktV3hZ+D1iOm3ppyj3JF2aTJMfG3Sq2
         LPPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CgChwMHFjAHZxqvbbaASWkFfY4gRjuyOXulQhl61rIY=;
        b=FmUdla/nlDR4plVgSOJYjVOYcKIMoNzFRkkwH3GUk3qjeDGiNORgcW2Rx/1ccJA+82
         FxMqLHgEuUw0pzPZIiYRGoF9zzyl38ASVE1cf1/fkPhMLkbc8N9EAmOm4Tbds7JbZWy5
         Pb0bAqpsV01EVsSWoi/oYpqMVi8RVREi1YoL8r2I+8aAPy96/tTwHyH+aruV8bewcvkA
         6NKWLjZwplBM/5U6gi9vAEmGRbZuhvCdRH5DOIYdBM1oPfADjQ3jdsUatAbAAsMyms0H
         rtwf1mSpfBYV6j2c5r5hts5qrdbzWMNT45+5wpeQjVJTTo56wRhISmrkFhBLC/0LJvSO
         JCJQ==
X-Gm-Message-State: APjAAAWwflcgv6SGVnu6FWHFeQFK1Hrp/IkgrPlSQWm/MLBDXeD/M86F
	7UW5AuFz0/wMCdqJf+z4jOw=
X-Google-Smtp-Source: APXvYqxb4ckScngDmbwZWo0RaZi/QjQcb5BZW5gLvyQYJ2T8Bi/qc1deLRD9IkS/A1jMznmHu0UcQw==
X-Received: by 2002:a6b:f910:: with SMTP id j16mr5719315iog.256.1565124356648;
        Tue, 06 Aug 2019 13:45:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:1482:: with SMTP id 124ls362887iou.5.gmail; Tue, 06 Aug
 2019 13:45:56 -0700 (PDT)
X-Received: by 2002:a5d:860e:: with SMTP id f14mr5649840iol.242.1565124356209;
        Tue, 06 Aug 2019 13:45:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565124356; cv=none;
        d=google.com; s=arc-20160816;
        b=msqWdX2erAA451qDamrfqYUGN4sBDScgFMHYfhhROFZKFGFO437MXm5/MLjXZMvY9B
         VuXlmG2W9AhRkGH2lULuypQXIaOl0tDI4jTq91Nl9A1gvHl3GCwoSHX6g/7MeG9YIb2E
         BLAdZHJG1PoFh01ryuYj3W/52uuxGpi34JUGjXfZQZJbwjYqX5BniZytV8UrRWCgG4wY
         XdXRp76Z+y0Nj/EVEzkHBX/EEh/RGgtwhBST1/i9T2nirgjGKiSVL9njdQH/VtxImHDe
         odN35YBwg5cPBMvfexvZYh6QLvtD7uG6pXBk726s/Bm3o+JXrpcvhgHNo3fJr4rp74nJ
         aRYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UUkE6l18qbeXz2AUywPRLPJ2eXH7SFO7n3Vm6ahBYCA=;
        b=wKkRh6dkduUwBnjzU0xhYj/5Ick/9Y3mYpLOBz0AE6+d+vK0Xr/xcZzizx2j6Qnjwt
         um7Ulhic8m+PSlpk84GNUQXkYVnFQuHS24Tf0zWkcY//+refi48mUGM22btbWWESqFtU
         JDaRnDCO7m5umoaTn+gzDGL/SrbmOvAYnUY/CQ5pT+0wIMuNvX/EGqZa3to9ktwi/NaK
         evw2qzQujxIt4bL7HYm9lbkh7mRK6peviYh2sZcMP6lwF606fPiNzh7L1xbFc/kMkmWe
         Ml9u/Galnkydux2NtFN5SGdKjL1hWtelwafx6iRaoZLQRt4FgjRd707+eYuyOnJB0y6f
         9R6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=u18KEiYU;
       spf=pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) smtp.mailfrom=groeck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yw1-xc43.google.com (mail-yw1-xc43.google.com. [2607:f8b0:4864:20::c43])
        by gmr-mx.google.com with ESMTPS id n7si3092770iog.1.2019.08.06.13.45.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 13:45:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c43 as permitted sender) client-ip=2607:f8b0:4864:20::c43;
Received: by mail-yw1-xc43.google.com with SMTP id u141so31301409ywe.4
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 13:45:56 -0700 (PDT)
X-Received: by 2002:a81:30c9:: with SMTP id w192mr3596358yww.371.1565124355380;
 Tue, 06 Aug 2019 13:45:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdn0kv+N5raBDE_aPv637ROHmu7C1_C9F3PXNnAYSMTOYQ@mail.gmail.com>
 <20190806190254.GH4527@sirena.org.uk> <CABXOdTckrMfM_-5+pJ37KHveLE8oRDvFAzPftnp_5--fYJVuXQ@mail.gmail.com>
 <20190806200809.GI4527@sirena.org.uk>
In-Reply-To: <20190806200809.GI4527@sirena.org.uk>
From: "'Guenter Roeck' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Aug 2019 13:45:44 -0700
Message-ID: <CABXOdTcWG-wh9ZHMVmON+B4cxV64-8HDkTvpG61eTNAOYbs-jw@mail.gmail.com>
Subject: Re: aarch64 Big Endian
To: Mark Brown <broonie@kernel.org>
Cc: kernelci@groups.io, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: groeck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=u18KEiYU;       spf=pass
 (google.com: domain of groeck@google.com designates 2607:f8b0:4864:20::c43 as
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

On Tue, Aug 6, 2019 at 1:08 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, Aug 06, 2019 at 12:58:43PM -0700, Guenter Roeck wrote:
> > On Tue, Aug 6, 2019 at 12:03 PM Mark Brown <broonie@kernel.org> wrote:
>
> > > This is the same symptoms, it will eventually time out trying to run
> > > init and generate a panic.  Those request_module messages are it trying
> > > to load binfmt_misc which is how the kernel handles unknown binaries,
> > > it's trying to run userspace but can't work out how to do that.
>
> > Correct. Also, while there is no root file system, there is an initrd
> > (or at least the log says so), and there is most likely a little
> > endian binary (init ?) in that initrd.
>
> Right, sorry - should've mentioned.  You need a big endian root
> filesystem (or init) to go with a big endian kernel.  The kernelci one
> should be:
>
>         http://storage.kernelci.org/images/rootfs/buildroot/arm64be/

FWIW, I generated a big endian aarch64 root file system with buildroot
and gave it a try with gcc 8.3.0. Works fine for me, at least with "-M
virt" in qemu. I have not yet tried any other machines.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABXOdTcWG-wh9ZHMVmON%2BB4cxV64-8HDkTvpG61eTNAOYbs-jw%40mail.gmail.com.
