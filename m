Return-Path: <clang-built-linux+bncBCJP7WOE5UIBB65DWSCQMGQE5RVX7TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A04B7390489
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 17:04:28 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id c9-20020a2580c90000b02904f86395a96dsf42613570ybm.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 08:04:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621955067; cv=pass;
        d=google.com; s=arc-20160816;
        b=bm1lLVG+11645yY7Ckzq94g5eBRWJHPIRA0hHhsBrtqXprEivu+f6SmNuNPLnG2nPg
         5OZRgJD/8swDRhcMSWDUuxDSCLHCUxBYy4eCg9QsPOIDRmhyn2PUiCaFP5pm0q9w0Xr2
         ewEeIRQe+UQ2unYPXNfB9M2/FCrkUPpZOzphQEGC+Z+cpeZuk3FiY5v+zBG5rtKewXj9
         YbmMzz00dRl6IcVquEHYtcL1le+TrWbZxc3jOEvmFImpv8epD2At1ldWAMAHRS6J9Hl7
         7sCvpjtrSjAI3VRw0fZgQZ+5MuaDZYRHo56GrhqYIuP9tD4u513glYFPdfqaE9DZjSCO
         zKqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=b0pE8WBzufEPpFcXTEFmpK6wi2KKU4XrWw/ReImYQIs=;
        b=P/GRhTksXK8V64wdZyMaPMf4NEOnbwaNiJ6gg4MVqOeeuwJiR4JPb9bf1kiirJBO1I
         8uj7SQP70u7qyQdT2/liCjmYyLBJDZjTXpIM4qj90El21O80r1DXwrlIrzIn7iuXIT8B
         l/fhnBHJO77yWd8jIBFULyDbQ/Zj7wqw3KMw2bILNK/n54+CDyxzdcF8cn03yZj50NO6
         3SACmVz03dOxTlgIHv422MURByJIvyJR26BxDfCao3WWZwcGZj9CDIKd77RGnNQevLpy
         dNvWTHFzx9ccZgvB2sKlLmJlgpr6b5PEtGwSqCoDbhc6hI8doamkp70BIR3xAJpmLQTr
         Fj4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OqdPD+NJ;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b0pE8WBzufEPpFcXTEFmpK6wi2KKU4XrWw/ReImYQIs=;
        b=siGjwbiJ8N3Z5ImBPde6iYfmhz8fCwXnss0Zuvau/3HcKtexX6J2Z3zBRro94fE1vp
         qX2WY+K3ulkQa4tgV05TuKmwzCO1j1NKwLsUdKnjATuiKDqr9bH4Sc/QR67GhFu8jm3S
         r2nqJCJtRnf53osASbDeHUWc+omViCBeDp1qn2rl3/dJzY6q0X7QpcMXAkj4KUbwbRia
         6Kq0KbFBfTEoimlG4zev4xt2uUbz/GWDsdUQJjluEgw5uU4q/OUQDRNCboQOwYwOLUZv
         Gpip0qkzcM0WB8WGj487crncIck+vkMvO8kBwWdfui3JyJKnikFvAi5SpwD6hUf6uWj0
         t47Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b0pE8WBzufEPpFcXTEFmpK6wi2KKU4XrWw/ReImYQIs=;
        b=Uk5DLm3Na6PTZcYk7B0+P3stbMqVzP26bPcntg997cCrv7J2scFevF5RXoJlobfKNN
         5nlcRvO3lzQtAumluupSa7r+Ap+Ft/6CIotA+AzdxKwyFiKUsViK+moVsOaScISWXDkW
         2OGYyTmbkIBoxWAVZZ0CnSNiWJKHNbBvMvgmHeLeIBsmjIBKlyPGcmbk67NbIbSS0a/n
         ojcr3F6fh7xoHwWgWK10pgQCO3mJmeD3QPQMFkH3ltxKBU+nLGeiY+jInwu636GsSqN7
         dfAYGLLRsoXcn+QKUXUN4cb9tjLCPlvMqOSPoiRB31mC3YpdaxBUnyOvrLxPkC1xFBZA
         rVIA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BuN9rpcaRMXfVhAi9BwbFCWcHDQqqfEdwOQskpMYSkh6WqoU1
	31ODQb1UUifro0twIQvGVE8=
X-Google-Smtp-Source: ABdhPJyROi9Frk3XIHSUPtIIrilgoxVY6SWIoQezUpPf2SuRkEIZ5aeh91mHzIlTyvMvtpY1GYfh8w==
X-Received: by 2002:a25:b8c8:: with SMTP id g8mr44252650ybm.166.1621955067761;
        Tue, 25 May 2021 08:04:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2bc2:: with SMTP id r185ls6521715ybr.5.gmail; Tue, 25
 May 2021 08:04:27 -0700 (PDT)
X-Received: by 2002:a25:6ed6:: with SMTP id j205mr41389011ybc.206.1621955067201;
        Tue, 25 May 2021 08:04:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621955067; cv=none;
        d=google.com; s=arc-20160816;
        b=DAEuaVO6N2ZaiIfempV5AuuHZQpVLnHel9JuiPUddm5GprwcdKjh4QD25yuJ7lkbh0
         LEamw1e0AYeZkNIUU2evH0NukVoal8ITdyTUAp7i/0co50Hr0x3nK3sK87KzPAVep4Mg
         Fn3b/euUpt+Pi+qMmWuRVrOYl7+HAHJfcTuYSDKZQjJVm8ydS0Zcv5hOgTGib9/c6v4H
         98Oq9wRf7A9u0BXrbJYNOwRXfu4Pe1ISo4gIg8f1bB1JFnweU3xmeEdPLayGcABQ9QvJ
         gx02iLn9eIGEbCJjoOgFkNLTGcrPIbav1WiNhT6B4MkVzcijQxSTTajcabhavk91MpbG
         8cZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=khU4iaS6Na4W6atMcRo3OSUoU5Ql5/4Uc8V3esaLajE=;
        b=TvEmluSDx0dJJkDrw4QM0bBMSv5yo16AO78ONIYt48uGGivqyvZwGfDEBZdKOEU2Lh
         S/p2xCq+Os+prXGM8dgcTNZm8YkKGD8fmNI9QJUizJ7inr/e+7u4n6qg1xWNiYx0fY2M
         5xGZeYOc4Neet+eaeQpJb+KiWfkuR8HABt/mEEiTFbw5LgeCKTjlY3ntb5wpJXZBcPqr
         fpln5HAvo0mb40Bbi9MoT+Lm3xPGB2g6CdqPJZGfFa62JePtVkwi1iBThU7DCBikXm0x
         u4BjVIyggvJdq6MOga13tI0n1/XEM7B5l+XY9doUfWMFz/9BODwUQA2MkVKtH8blhytY
         bIaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OqdPD+NJ;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::72d as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com. [2607:f8b0:4864:20::72d])
        by gmr-mx.google.com with ESMTPS id s18si1214492ybk.5.2021.05.25.08.04.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 08:04:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::72d as permitted sender) client-ip=2607:f8b0:4864:20::72d;
Received: by mail-qk1-x72d.google.com with SMTP id v8so30739287qkv.1
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 08:04:27 -0700 (PDT)
X-Received: by 2002:ae9:eb93:: with SMTP id b141mr36392518qkg.151.1621955066543;
        Tue, 25 May 2021 08:04:26 -0700 (PDT)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id z1sm7034110qki.47.2021.05.25.08.04.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 08:04:25 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id g38so43435864ybi.12
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 08:04:25 -0700 (PDT)
X-Received: by 2002:a5b:54a:: with SMTP id r10mr43342321ybp.476.1621955065162;
 Tue, 25 May 2021 08:04:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210507205513.640780-1-dianders@chromium.org>
In-Reply-To: <20210507205513.640780-1-dianders@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 25 May 2021 08:04:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VwhMQ3wV0AsB1cbb3j6q3WzJS=DftUc0MRbTKi8uBs6g@mail.gmail.com>
Message-ID: <CAD=FV=VwhMQ3wV0AsB1cbb3j6q3WzJS=DftUc0MRbTKi8uBs6g@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: perf: Make compat tracing better
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Seth LaForge <sethml@google.com>, 
	Ricky Liang <jcliang@chromium.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Namhyung Kim <namhyung@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-perf-users@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OqdPD+NJ;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::72d
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Catalin / Will,

On Fri, May 7, 2021 at 1:55 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> The goal for this series is to improve "perf" behavior when 32-bit
> userspace code is involved. This turns out to be fairly important for
> Chrome OS which still runs 32-bit userspace for the time being (long
> story there).
>
> I won't repeat everything said in the individual patches since since
> they are wordy enough as it is.
>
> Please enjoy and I hope this isn't too ugly/hacky for inclusion in
> mainline.
>
> Thanks to Nick Desaulniers for his early review of these patches and
> to Ricky for the super early prototype that some of this is based on.
>
>
> Douglas Anderson (3):
>   arm64: perf: perf_callchain_user() compat support for
>     clang/non-APCS-gcc-arm
>   arm64: perf: Improve compat perf_callchain_user() for clang leaf
>     functions
>   arm64: perf: Add a config option saying 32-bit thumb code uses R11 for
>     FP
>
>  arch/arm64/Kconfig                 |  12 ++
>  arch/arm64/kernel/perf_callchain.c | 329 +++++++++++++++++++++++++----
>  2 files changed, 305 insertions(+), 36 deletions(-)

While this isn't massively urgent, I'd like to confirm that this is on
your plate to eventually review and/or land. If it's not, do you have
any suggestions for how I should proceed?

Thanks!

-Doug

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DVwhMQ3wV0AsB1cbb3j6q3WzJS%3DDftUc0MRbTKi8uBs6g%40mail.gmail.com.
