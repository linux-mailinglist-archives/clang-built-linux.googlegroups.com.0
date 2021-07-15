Return-Path: <clang-built-linux+bncBCT6537ZTEKRBKMAYKDQMGQEIGNWSCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 039ED3CA592
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 20:36:26 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id b17-20020a05651c0991b029019189dff65esf2268045ljq.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Jul 2021 11:36:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626374186; cv=pass;
        d=google.com; s=arc-20160816;
        b=lCU+hF8O1HOfxaEMKhzCpXYEDGSSKC6gOBuLtq1eQJZz/z4ZNCcwXWQ4MlySQudvoT
         6fWW/KmrHIIRQ/ThPdhEMrIda2ycCaD7+o1/Jy83vTgPQ6TrTeKnG9NFM9KyGnLXtSa7
         VzdjDx+gfOXJ3Dfxg9Co2BusGg++A+llk71b9iX0hkWrOQEKbDit5CIpkQyYZFhWWEBr
         suNWiVZ22Q8qzz3mK15EwC7sR7WWxbc4ZPuy4I6Ri4R5cpWOJwb/5xDJQiloagAi6rBO
         rMbspS4VHHWK9NE2DDep/XREeTDNt9MA3opIy0UOLUdJekmK5xbB6X2b0lQfShvtsKSr
         igKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=ugNX9iwM41gkCid2c0iR+ZrUVqXNDjijPma8nJTcDtc=;
        b=nWcjeeW2fKcK3tomM04WRRDQ2A8kMUvqR3tL2/SWo8glLIGUnrr2HhB4swYdY8akcn
         YpU9cPF9aFpRV0TUAt1P4Bw9GHAkYmHvX3mBvSAQm56jvvJnuUr6TKTEcPPv7k5NvxLZ
         qAEoJ3685fuqOlW/3/OiiiAVsLkZSVn6pqpDqrJG88poPbGPAk6pfqC1KRPEGo9MWg3F
         Ra/FddsKw/tJxmQR+ETe2xX14etSuo5k1pqPXNifL0FGEWn2P+suaxBYuyqoAbau7NRA
         PrEjsDlG1axI7+mAmWpg2wnCAHUKXHxdTiKOTSx5J7TIdjJYX5fcx3r+/QpF2zvVtDwZ
         duLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GPcikvq6;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ugNX9iwM41gkCid2c0iR+ZrUVqXNDjijPma8nJTcDtc=;
        b=nxwPitDg6p36cixH4kVhYx+VEc2rU0DH7tbXoDqWDS9reFRtPABC9NuuhKYOFoUvSn
         Q1viW/FPKzC2frWT+aZZuU0IToMYde+15pwWIjQzxaaHG+FCaFKK4krNoTRC6kE7yyp/
         o9LJa93O/bdZGnB6JDKmkpvvsV9U0U50SK06YWwK6KvsLTd5mtZ5FjAyqK2dvsE0sTKl
         Q18U/pz6laTTeiTGCCrkVFFLZvmN9DgMWev7Yo02/EFtx9KaQceXRQmF5ExsLWCIp4Ci
         9iR+ogo3R9drnAKcv7bh/YvnluqtM0yP1fH674Wtawp1DW9xQknmpFO/COFwRUijkCPK
         KMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ugNX9iwM41gkCid2c0iR+ZrUVqXNDjijPma8nJTcDtc=;
        b=XvvbxkDfm/MR2tHNQb6zmRkWvnq2r2yA7TK+INknikAqXku5S06I9f2YhChIt/UpXT
         h64tsr9u2/ApuReLGkkgcHbB1gLApmYvjVafqY+GeZoOxUZH6ENdkOQL6HMqpsXD7r6C
         umrqjYrFsz1eJ53idUdBXSA73xr4hEU3FlrYR3dlADsIxB3iUWqzVs0Ncb6f98i+zqmi
         NNMu3EHaYGrNgZfdCDGSG4ydhr4l330S5fzwM3r63NUFVY0zMsiP6YC2rG4rz8rdxxpx
         UItlGA35KhBH6i1AIacy9WgJB3azZwDnG1B32p6dYxwCUfqLfmPvLr15D4XSMnixDc0E
         fDXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qwaVBM4a1hASQQj/sEzm0Zrw+yuZ2M4HvaAKPI3cXIc5/iAaP
	kuQVIAG0ldDT5QsyL/hEwFc=
X-Google-Smtp-Source: ABdhPJwJNB0K3pDYRj5yAerzl+9Nz3lDhZ4bDYEU71ylwjyv7BoCmczcTloTaP0c6EQYuTDCpiBujg==
X-Received: by 2002:a05:6512:3385:: with SMTP id h5mr4263156lfg.610.1626374185680;
        Thu, 15 Jul 2021 11:36:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc02:: with SMTP id b2ls1790314ljf.4.gmail; Thu, 15 Jul
 2021 11:36:24 -0700 (PDT)
X-Received: by 2002:a2e:a887:: with SMTP id m7mr1471012ljq.236.1626374184203;
        Thu, 15 Jul 2021 11:36:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626374184; cv=none;
        d=google.com; s=arc-20160816;
        b=rkvm5Fo3kdpcquyTbYmlVNIQ1y6pny9v68j365DaUlJNfZutI2+6/Zi7UW7AqH8EFj
         y2hTNQSlOpFIFfmihNvewoPHow2MUfMearAUlBGh2VSoSEK1qmjYHOHvJGk2LmZC7wMd
         TVhj8XRqC2dwp0KwSgfLcYznconkZLhNdIU2rVyaUZpC7tpj1VJCRyHd0tr2QzakOFlk
         jwF4FUnSqS519CYVyRgZExmc0gfPptg53x6+EMRBgFVglQWtjycD1uniNEwXUqP9rST7
         t6eNU2MGLN83vhBgvshg0lwt0ptHnq/u03UKjrQe9EcXP0z4b1CYpX80OBlWOWFo1hh3
         zjpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=py0H+k5h/ZuAsiNBGfoJ/fJ9Xrc4RVo0tGcEIp7wr58=;
        b=z0OtQ9FT/HzxhdzaW3LEx/l0tbZWntkHeO/5LMqoiofqQoD41nsdBqlldP4VoVH1SZ
         agGMC3gJr6sWaFPMulMN61XyIc/ZGHaxAJgnlP6oZENmx/NUBrjhSa2EuA3SzPQi531x
         LtPBebzUQjW596xx1hXStYNdlDjJvU66w1G/H7rs1TqwWoj7rZw4kI8unnWxchjoJNFa
         3KQcdz5L2RX432vhk7h2pdKqWYzAnyxkwzqVH5RVz7N1vcPEPd/Uv8eIRZlAK0dYfMzy
         zEsUNsiW7EnEB8VFnS50CpEV5chP14mhta679g3wRxV2OxbDRmFUtWHM498EQOmKaiKP
         AzrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=GPcikvq6;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id z4si260124lfs.0.2021.07.15.11.36.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jul 2021 11:36:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::530 as permitted sender) client-ip=2a00:1450:4864:20::530;
Received: by mail-ed1-x530.google.com with SMTP id h8so9533849eds.4
        for <clang-built-linux@googlegroups.com>; Thu, 15 Jul 2021 11:36:24 -0700 (PDT)
X-Received: by 2002:a05:6402:152:: with SMTP id s18mr8949075edu.221.1626374183845;
 Thu, 15 Jul 2021 11:36:23 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Fri, 16 Jul 2021 00:06:12 +0530
Message-ID: <CA+G9fYshrRFN=Qa62eLKPbKHpRt0L-FuRrp0ebc29gdBqFMxeA@mail.gmail.com>
Subject: submit.c:27:17: error: expected ')' before '__VA_OPT__' current->comm
 __VA_OPT__(,) __VA_ARGS__)
To: Linux-Next Mailing List <linux-next@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	lkft-triage@lists.linaro.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Mikko Perttunen <mperttunen@nvidia.com>, 
	Thierry Reding <treding@nvidia.com>, linux-tegra <linux-tegra@vger.kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=GPcikvq6;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::530 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Regression detected on  Linux next tag 20210715 for arm64 due to the
following patch with
 - gcc-7 - FAILED
 -  clang-10 - FAILED
 -  clang-11- FAILED
But PASS with gcc-11 and clang-12

drm/tegra: Implement job submission part of new UAPI
Implement the job submission IOCTL with a minimum feature set.

Signed-off-by: Mikko Perttunen <mperttunen@nvidia.com>

Build error:
------------
  CC [M]  drivers/gpu/drm/tegra/submit.o
In file included include/linux/device.h:15:0,
                 include/linux/host1x.h:9,
                 drivers/gpu/drm/tegra/submit.c:6:
drivers/gpu/drm/tegra/submit.c: In function 'submit_copy_gather_data':
drivers/gpu/drm/tegra/submit.c:27:17: error: expected ')' before '__VA_OPT__'
   current->comm __VA_OPT__(,) __VA_ARGS__)
                 ^
Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

ref:
https://gitlab.com/Linaro/lkft/mirrors/next/linux-next/-/jobs/1425953551#L197

https://ci.linaro.org/view/lkft/job/openembedded-lkft-linux-next/DISTRO=lkft,MACHINE=juno,label=docker-buster-lkft/1068/consoleText

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYshrRFN%3DQa62eLKPbKHpRt0L-FuRrp0ebc29gdBqFMxeA%40mail.gmail.com.
