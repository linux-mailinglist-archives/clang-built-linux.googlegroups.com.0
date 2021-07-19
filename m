Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQO226DQMGQE2KJ6UUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 312F53CEE12
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 23:23:14 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id c20-20020a2ea7940000b029013767626146sf10197537ljf.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 14:23:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626729793; cv=pass;
        d=google.com; s=arc-20160816;
        b=wlYOQTvA4blxnABsD06zoTzwwe8z+W7U53HZwq90AUISGbJmSwW/0p6TgP1OOe2MlH
         3y+2aDLMD8uJmhy3Z9vQMXwndiMB9x42UcC0deUyIGLg8AdZKppen5ScBUtMrlQ75CSg
         61JjU+weLFfgJ+I301HjSxx0OVMLpdRdmevd7FBF6Muzsok0RvuEvjQklD6ZkKZ3Bm5A
         /dWx5y3SZmIK5wCnIAHC3QvDqetp4ttLS/E+TOFBNeCW2y5aqUXsNpBl5c77n+Vr/Eok
         AslI0wML51jizYAji7Y9p8x+2BbF3XfG1AbOCSU/yb/686JaM0sl7EjifBBHFMAaaOVN
         ICzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=99X/jurmm/9GY4A6nAivhTuyFmOptwkeAleDIdHsxL8=;
        b=vH3/MDp0BX01+PoOAnk9jX1OxbaaFin9X7OokGMNoaFyGUN+vtlNk0BfhqDIq++d3O
         OAbbziRCubjrzNb45xHay8RBE+c84Z3qimGmeEPy0fPTzgWv5jYsswU9Mk0aKZAOLMyq
         MAK5BZy/MtJq0pJ87pFHqRQvbVX0I+MAVzLvBzhfY4XClKJg81SvtznhWajTgOy/vJ5/
         /9i/ESoZfJOwNeSifCFGRZzAv3ZVb5VMqrsV2OmCvQkqIIte4OR5nXjw5cX37v7goFxn
         9yTB8oqRsBrVTs9PDZujn7WubGkq0pkLDxvWhkb/dRXhsusHxzJ0jL2HLOicV07qnCHE
         NdEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bIWoZCkW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=99X/jurmm/9GY4A6nAivhTuyFmOptwkeAleDIdHsxL8=;
        b=PGnYgRoKgmUp+CL4bvOEyURxmT+w9LDPBDGYp+qEDjlFXgTe2OETEvawr8Ocps/GWF
         ofXiRhr/txIQRJIKsbcctcDbU/+fjILIJG90P/nx4SXbHDWsbNZy+9w6qq/eQeygJonA
         9qewttrwD5cnX8v0Jhv1eCBurl2eR3K+5z2hZEADXCSCyGfTVR4Q6FTLNgdqr3OWybEq
         LixSKD9YFUCJpEri8jZlAXp/ZpEFJCAXTlbgPflvebXTWD2BUJdHHi08vxV+XV5iPKnN
         +g80PMV+Up8ZfcGsGmvEcZH/d+lHF46eKuwsVDGBQO2aFcKvYtQEvdt8R3mLFDONqLp1
         GtuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=99X/jurmm/9GY4A6nAivhTuyFmOptwkeAleDIdHsxL8=;
        b=qYaCNixBKAQT9dbL/6OfpgtxCHfbGsdclWZFlJa38THoV7hfHn3l7GwDzJhMqSFP8T
         Niqj7HCZY6ttgxhEzqDvCE3rPzFvRlDQ8OEHcbKcPXnrbPHW4w+1zYAwdYh4Z6hwPUKB
         nmsGKuD0gbYqhrz3Wa23BFkHsy9YLwIWLgRvzPBeQoUmFao9gZEvJZ8SNs97SpsW68QX
         wKQswMLa7Tuh52eenE+uudDvk3heBoBR8vSe0Zaxcl0E0ZiBRnqqi6KUW8NhD4XCfeZA
         e/H8E7oRZcOfGoaaNfLftcqVIv1oWArcLgeY0Eu5br1lvZyXBMwG/zboZupC3MRV6zJr
         SnUQ==
X-Gm-Message-State: AOAM5329/shRtZrn26VNiAxuDaMhRe5hR5XpIfNZAPMKAriNpLsPblP+
	3qQwdo2yDrTq+4NgeBCx0WY=
X-Google-Smtp-Source: ABdhPJzqUk3h3DmeYAAAw7iqDqHII+hCQFyTtRy+awQWsHrMBAweWZWTjrEPqAKN3XWTji6yrPdJSQ==
X-Received: by 2002:a2e:b890:: with SMTP id r16mr6329357ljp.184.1626729793766;
        Mon, 19 Jul 2021 14:23:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:508b:: with SMTP id f11ls1038757lfm.2.gmail; Mon, 19 Jul
 2021 14:23:12 -0700 (PDT)
X-Received: by 2002:a19:dc57:: with SMTP id f23mr19541064lfj.294.1626729792798;
        Mon, 19 Jul 2021 14:23:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626729792; cv=none;
        d=google.com; s=arc-20160816;
        b=HojGXw6+LZPOHNIQz6Ilo+cY6/8VARxWV6wJuAgMrmqEggaAeEOj2Bx7gXxN1l4OIR
         /dAaasf2rDVLvWRDBk5uFpsI+2dyaZA2mgtpRU/CjUxGkbuRRIA3jxh2Pyr/T3zlQVVc
         bsg4JdcP78/AmXHUiBJz55DV90rdnZZ9Ixa1AHpoSGzYnuvMBMfIxDX4sTdBZ5u7WmJT
         6UGoClfkUPnd4w3AliGaZTsALPAiy26+ujO7TELj5Bxh+oMNk+66YjozT96ApmkgGnd5
         hNGBmLdH9sp7aO8uA82ifLhf/0MhFZPltb9WWBK0ohGja+P7xKJuk3vny0XynZdNQPWA
         uAHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jZcZUjf3tmEhyauXe1rgMd6qpf0c12SROnc8Sngydds=;
        b=bwgOhPMGnGBoXDSreZscmsI5hNWSizOZWFjd8Luy/v5pVfDCCsVIPRXldsG78lVynH
         oUKYUoSwNLcgXLS9rIXzV1o2dNelE3LayDa+ktdM0VQVlzfPrHkADEQVZ3kmjAeZxaIQ
         wmN0MSfF1QPZRbqpWHeP8yBkvLDp7IdOrYLvDEKtoexpZdthZZyFAgr+906YpRTrCwv6
         yN5bIuKBmH/7PDW6ObJQXSell2pvDJz6BXM2Yk//T6wQRiSKbhI66cW/X0K4UHAsrbaV
         mDjWmqHoemVEmcBSLzIwJuQYCuQWaeXyEK2fUy5lj4Cc+oOK2BAeYLqE2p3UNNRgRHgJ
         IItw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bIWoZCkW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com. [2a00:1450:4864:20::235])
        by gmr-mx.google.com with ESMTPS id 206si702514lfa.8.2021.07.19.14.23.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 14:23:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235 as permitted sender) client-ip=2a00:1450:4864:20::235;
Received: by mail-lj1-x235.google.com with SMTP id a6so28329495ljq.3
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 14:23:12 -0700 (PDT)
X-Received: by 2002:a2e:8247:: with SMTP id j7mr23659305ljh.495.1626729792388;
 Mon, 19 Jul 2021 14:23:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210719205208.1023221-1-twd2.me@gmail.com>
In-Reply-To: <20210719205208.1023221-1-twd2.me@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Jul 2021 14:23:02 -0700
Message-ID: <CAKwvOdmy_YEdXhqa0qNGZSo+acm97QL3v6fkwmpibgim=6jOxg@mail.gmail.com>
Subject: Re: [PATCH 0/3] RISC-V: build: Allow LTO to be selected
To: Wende Tan <twd2.me@gmail.com>
Cc: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu, 
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com, 
	Saleem Abdulrasool <compnerd@compnerd.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bIWoZCkW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::235
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

On Mon, Jul 19, 2021 at 1:52 PM Wende Tan <twd2.me@gmail.com> wrote:
>
> This patch series first fixes some build issues, and then allows LTO to
> be selected.
>
> Wende Tan (3):
>   RISC-V: build: Pass `-mattr` to `lld`
>   RISC-V: build: Disable LTO for the vDSO
>   RISC-V: build: Allow LTO to be selected
>
>  arch/riscv/Kconfig              | 2 ++
>  arch/riscv/Makefile             | 7 +++++++
>  arch/riscv/kernel/vdso/Makefile | 2 +-
>  3 files changed, 10 insertions(+), 1 deletion(-)

Thanks for the series! It's definitely interesting to see this!  The
thread isn't showing properly on lore, if you're using git send-email,
you should put all 4 files in the single command line invocation to
get these to show up together in lore.kernel.org.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmy_YEdXhqa0qNGZSo%2Bacm97QL3v6fkwmpibgim%3D6jOxg%40mail.gmail.com.
