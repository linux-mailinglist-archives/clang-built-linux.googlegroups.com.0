Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLVF77VQKGQE4OUU3WY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D74B403A
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 20:21:36 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id m17sf259991pgh.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 11:21:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568658095; cv=pass;
        d=google.com; s=arc-20160816;
        b=0nkc1vJ7sjL2BlcrtwUHIDPwak+9MrQmZhvD377DL7JZOW3X22K9Wf5GVt47bzbCst
         +HWy3QJL8Lu5HDX0/7A93xx9Fik6gfV/e3nQvVoVIGee6I4VBYLgsh+9+8xVY5JvM8Dq
         afbJO/iXruAQ/M5a1THyoDMU/4kJA/Sh04dGu/LOWY3GNcUIDLUQeviVffHGPOGKLgJC
         UTovAxET+PLbrHqlhCPEUX5wcbEsm5+uyBWIfQhhfdAy+coQEHuuOhUgg1+H3Ogo/600
         SdG8Tonjsy4EfRenLXTmSZBITI1mQxujzjqf2eJaNfJjO5MH7e/1PDSpEbDlhLt/fTQi
         1u0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2JPfEGxATezyQBFbjMgBfqyBUMb8DLt50TSYe4HwBy0=;
        b=PW7oU1GCPxoo9nCRDNlPhV2nBXf8//aBxrLBIBULEf8kh0sKVs6bhIGWrG+WvOFYLS
         B1lX2rtLWVU3UrUBf67/hZlZ4b4LM85p9aNIas5fJ19cI8bqcDTlzzbMHp6TJFQRk0Zc
         +GXf+2qyIkw4Fg1bi6rKKWGQHoW/wVOG7qR5qJc9BeLIYqaM8Cw0gDD21HuMOAWdkvOB
         /0tLLQOFhMC1kCotn+35yGimSeHnqlPDRRfjv0RZ4gyh9YQnrGPrwS01kx+WftgrE4n1
         owBcRWF/9xQqTSLOOSMLhlA2x0zA7dmzERodiD789tDl1HwlI88p/FcchmWMVmYZ06K0
         j8kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UMYbR6jb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2JPfEGxATezyQBFbjMgBfqyBUMb8DLt50TSYe4HwBy0=;
        b=Yr9tVPN7n4EcI9wcNt8YfeZDPUXWMaDOAiiriwzutXrjIOqXOPfpsl2zL+aHJjAoeD
         jO9X0qO+AZSdXl2mI7LHzCXJZKGyVB3r9wUD2BxiSNLiYdihBev/E32KieQS41gLn+Ge
         iCxpJPSLsImgqxrnnfAYBLIWLj5ym3TjKg3cjxchUI0/zc782RmxJ4jP0eVZP6G+wvVJ
         Wj8H13Duuhw+Ksd2lYiqXGmFwnVWeJOfywwGFjOrfVvPWUnzxFFj4lHrkuHqdum0tEhb
         Tp8rKuG5fLe6ttGFAbqYb1pbRQpM+EuLZoF7PCWzKziaUvrkuN9We7SFvqfCqEe1ythm
         KH6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2JPfEGxATezyQBFbjMgBfqyBUMb8DLt50TSYe4HwBy0=;
        b=ojm6dNYkQnIX9PrbnTNZaLItvAyUMdK+X4kIa3hsPHb2BJJ5/PsBvtNwMfNtvxdUSq
         OwO31+Y0/opRIDkN0BLltX5MmyP1rqD1vy+A1bmamSQSXI3cU/ayfDcTWvMd8tyxzB/D
         sIwNUkq85rWEeYOrxkdbX10yqphGJRUI+iuog/fF2KCpMlEOqzp40Fg+gZj2ZiHOOycY
         hMKqWjarxVDu3rs2N8jg36ks6uDqAMjrDMCYS/D9RDH2ffv5Fj8jFzf/6I0YQMbUwPI/
         bV5ofZTq3fpuWn7yMb0WeNkIcMYG7NdyJDVBv+rQwI0F568Ton3vd/2tV1500cC0xYFB
         7Lfw==
X-Gm-Message-State: APjAAAXeJAw+6iBC3a4oKllkBvXBKDv8bQFJXp/u2AvC1vgnJSQwy5Up
	scw5PZatjlsR10xewzXILv8=
X-Google-Smtp-Source: APXvYqwnVE5jpfAppZMiG3wfeb7WmACpOIRAVxFO9mE/4XFac+ZLYIsfJ4sWF/Dp+sZsONTj7qvlSA==
X-Received: by 2002:a17:90a:5d16:: with SMTP id s22mr526338pji.97.1568658094769;
        Mon, 16 Sep 2019 11:21:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:644a:: with SMTP id y71ls86356pfb.9.gmail; Mon, 16 Sep
 2019 11:21:34 -0700 (PDT)
X-Received: by 2002:a63:5a0a:: with SMTP id o10mr459495pgb.282.1568658094358;
        Mon, 16 Sep 2019 11:21:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568658094; cv=none;
        d=google.com; s=arc-20160816;
        b=M/pNnQtImeC8G1xYULPgkqvT9N+W6TEVBCXBt3b/HMEJ6KOQ3/A4mMcvFb096XUN/5
         rM9xOpMnQCEz0V3d4D855Q3tZZiqyl/YCsgpjHe8yWBl04NMYftkxCc+8/iSolOtMwbl
         zrdIs6+b0pf9t9tZ3CKRuVg7vCcQufqg01dmhSrK8zylfrEaQPX6A6g3SfsGeoAevxCc
         ia1jqnFq1cMO0O8+S9lxsMc6/d4qjsE1kkIu3FG+xxP7lSKIE1K9IHUJW/WZq/coqcgq
         GWK0xCvF+jGzmIplGh+4ptMBOfpj1c6xncgfcWK030F/ceqMOVo1YJ0Y6ducbES/TOuo
         dpLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VSq3M9FVzgPcwWfFHOFZ8E+qUNarRcZhtbVH3WR3MIo=;
        b=CG9eYjxixgl3TRdx7Dz+VLMfk7VQard6srgDta7TE8OB46QI0mTXpwgWOe3/01+scN
         TedPSmtFfiHbjbmViTA/97WDYIfHCUIjvvFNJYDfm/oeIEAVc8XqCtX3xDmAPocRO47n
         sQFmze43v1HYue3FWIn9Gg6s53X+oZdKyJPe+pwGqmzDed/4JWxCQkwAbN57sdTpF2ns
         2qBD9WK83AuSzc32iYsrHT4M4uhN9YNmT2WpQET80r6ukOwlrl8dZNhq0n7BmNKQcpcR
         YzMDTa09etTyjHeW3g8nb3vQL9D7dQ13Y+F1vJutRiolfvuC0tfw1heq9sZf7svSPS4E
         0Vgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UMYbR6jb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id n11si79605pjp.0.2019.09.16.11.21.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 11:21:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id x127so408977pfb.7
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 11:21:34 -0700 (PDT)
X-Received: by 2002:a63:d909:: with SMTP id r9mr396940pgg.381.1568658093528;
 Mon, 16 Sep 2019 11:21:33 -0700 (PDT)
MIME-Version: 1.0
References: <1498562082.1354.1568656718163.JavaMail.javamailuser@localhost>
In-Reply-To: <1498562082.1354.1568656718163.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Sep 2019 11:21:22 -0700
Message-ID: <CAKwvOdmeQ=2Jr+bCMsV4vK=oHeJqB6JcVc_1cs1+JCpw2U3+xw@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-aarch64-lts-allmodconfig
 - Build # 16 - Successful!
To: CI Notify <ci_notify@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	Mark Brown <mark.brown@linaro.org>, Tri Vo <trong@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UMYbR6jb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42c
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

On Mon, Sep 16, 2019 at 10:58 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in linux for CI configuration llvm-release-aarch64-lts-allmodconfig.
>
> Culprit:
> <cut>
> commit 6e087eae89df5f9904fe07e5bb31d33ae3140fb2
> Author: Hans Verkuil <hans.verkuil@cisco.com>
> Date:   Thu Sep 13 08:00:39 2018 -0400
>
>     media: cec: remove cec-edid.c
>
>     [ Upstream commit f94d463f1b7f83d465ed77521821583dbcdaa3c5 ]
>
>     Move cec_get_edid_phys_addr() to cec-adap.c. It's not worth keeping
>     a separate source for this.
>
>     Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
>     Cc: <stable@vger.kernel.org>      # for v4.17 and up
>     Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
>     Signed-off-by: Sasha Levin <sashal@kernel.org>
> </cut>
>
> First few errors in logs of first_bad:
> 00:02:56 trace_selftest_dynamic.c:(.text+0x88): undefined reference to `llvm_gcda_start_file'
> 00:02:56 trace_selftest_dynamic.c:(.text+0xac): undefined reference to `llvm_gcda_emit_function'
> 00:02:56 trace_selftest_dynamic.c:(.text+0xbc): undefined reference to `llvm_gcda_emit_arcs'
> 00:02:56 trace_selftest_dynamic.c:(.text+0xe0): undefined reference to `llvm_gcda_emit_function'
> 00:02:56 trace_selftest_dynamic.c:(.text+0xf0): undefined reference to `llvm_gcda_emit_arcs'
> 00:02:56 trace_selftest_dynamic.c:(.text+0xf4): undefined reference to `llvm_gcda_summary_info'
> 00:02:56 trace_selftest_dynamic.c:(.text+0xfc): undefined reference to `llvm_gcda_end_file'
> 00:02:56 trace_selftest_dynamic.c:(.text+0x148): undefined reference to `llvm_gcov_init'
> 00:02:56 trace_kprobe_selftest.c:(.text+0x94): undefined reference to `llvm_gcda_start_file'
> 00:02:56 trace_kprobe_selftest.c:(.text+0xb8): undefined reference to `llvm_gcda_emit_function'

This has been a known issue for arm32.  Looks like arm64 is starting
to hit it now.
https://github.com/ClangBuiltLinux/linux/issues/468

>
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
> rr[linux_branch]="ee809c7e08956d737cb66454f5b6ca32cc0d9f26"
>
> Results regressed to (for first_bad == 6e087eae89df5f9904fe07e5bb31d33ae3140fb2)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 17559
>
> from (for last_good == 851308450a8f38f9f9b0b6591edd4ae286d4442f)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 17560
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-lts-allmodconfig/16/artifact/artifacts/build-6e087eae89df5f9904fe07e5bb31d33ae3140fb2/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-lts-allmodconfig/16/artifact/artifacts/build-851308450a8f38f9f9b0b6591edd4ae286d4442f/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-lts-allmodconfig/16/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-6e087eae89df5f9904fe07e5bb31d33ae3140fb2
> cd investigate-linux-6e087eae89df5f9904fe07e5bb31d33ae3140fb2
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-lts-allmodconfig/16/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-lts-allmodconfig/16/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-lts-allmodconfig/16/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce first_bad build
> git checkout --detach 6e087eae89df5f9904fe07e5bb31d33ae3140fb2
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach 851308450a8f38f9f9b0b6591edd4ae286d4442f
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-lts-allmodconfig
>
> Bisect log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-lts-allmodconfig/16/artifact/artifacts/bisect.log/*view*/
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-lts-allmodconfig/16/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-lts-allmodconfig/16/consoleText
>
> Full commit:
> <cut>
> commit 6e087eae89df5f9904fe07e5bb31d33ae3140fb2
> Author: Hans Verkuil <hans.verkuil@cisco.com>
> Date:   Thu Sep 13 08:00:39 2018 -0400
>
>     media: cec: remove cec-edid.c
>
>     [ Upstream commit f94d463f1b7f83d465ed77521821583dbcdaa3c5 ]
>
>     Move cec_get_edid_phys_addr() to cec-adap.c. It's not worth keeping
>     a separate source for this.
>
>     Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
>     Cc: <stable@vger.kernel.org>      # for v4.17 and up
>     Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
>     Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/media/cec/Makefile   |  2 +-
>  drivers/media/cec/cec-adap.c | 13 +++++++++++++
>  drivers/media/cec/cec-edid.c | 24 ------------------------
>  3 files changed, 14 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/media/cec/Makefile b/drivers/media/cec/Makefile
> index 29a2ab9e77c5..ad8677d8c896 100644
> --- a/drivers/media/cec/Makefile
> +++ b/drivers/media/cec/Makefile
> @@ -1,5 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
> -cec-objs := cec-core.o cec-adap.o cec-api.o cec-edid.o
> +cec-objs := cec-core.o cec-adap.o cec-api.o
>
>  ifeq ($(CONFIG_CEC_NOTIFIER),y)
>    cec-objs += cec-notifier.o
> diff --git a/drivers/media/cec/cec-adap.c b/drivers/media/cec/cec-adap.c
> index a7ea27d2aa8e..4a15d53f659e 100644
> --- a/drivers/media/cec/cec-adap.c
> +++ b/drivers/media/cec/cec-adap.c
> @@ -62,6 +62,19 @@ static unsigned int cec_log_addr2dev(const struct cec_adapter *adap, u8 log_addr
>         return adap->log_addrs.primary_device_type[i < 0 ? 0 : i];
>  }
>
> +u16 cec_get_edid_phys_addr(const u8 *edid, unsigned int size,
> +                          unsigned int *offset)
> +{
> +       unsigned int loc = cec_get_edid_spa_location(edid, size);
> +
> +       if (offset)
> +               *offset = loc;
> +       if (loc == 0)
> +               return CEC_PHYS_ADDR_INVALID;
> +       return (edid[loc] << 8) | edid[loc + 1];
> +}
> +EXPORT_SYMBOL_GPL(cec_get_edid_phys_addr);
> +
>  /*
>   * Queue a new event for this filehandle. If ts == 0, then set it
>   * to the current time.
> diff --git a/drivers/media/cec/cec-edid.c b/drivers/media/cec/cec-edid.c
> deleted file mode 100644
> index e2f54eec0829..000000000000
> --- a/drivers/media/cec/cec-edid.c
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> -/*
> - * cec-edid - HDMI Consumer Electronics Control EDID & CEC helper functions
> - *
> - * Copyright 2016 Cisco Systems, Inc. and/or its affiliates. All rights reserved.
> - */
> -
> -#include <linux/module.h>
> -#include <linux/kernel.h>
> -#include <linux/types.h>
> -#include <media/cec.h>
> -
> -u16 cec_get_edid_phys_addr(const u8 *edid, unsigned int size,
> -                          unsigned int *offset)
> -{
> -       unsigned int loc = cec_get_edid_spa_location(edid, size);
> -
> -       if (offset)
> -               *offset = loc;
> -       if (loc == 0)
> -               return CEC_PHYS_ADDR_INVALID;
> -       return (edid[loc] << 8) | edid[loc + 1];
> -}
> -EXPORT_SYMBOL_GPL(cec_get_edid_phys_addr);
> </cut>



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmeQ%3D2Jr%2BbCMsV4vK%3DoHeJqB6JcVc_1cs1%2BJCpw2U3%2Bxw%40mail.gmail.com.
