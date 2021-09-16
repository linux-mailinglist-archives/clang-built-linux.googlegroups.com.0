Return-Path: <clang-built-linux+bncBCT6537ZTEKRB3UURWFAMGQEAAPXJYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AEA40DB98
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 15:45:19 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id p3-20020a0565121383b0290384997a48fcsf3949596lfa.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 06:45:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631799919; cv=pass;
        d=google.com; s=arc-20160816;
        b=BKHtefVLI4pEFGp0yC3nFgsJPz54w9o0J8eyPvhkzYw4QD/HnuG1qWsCJn1vKr1cmr
         Dv6NUP6BhNHmV/Eg/0smBNAGHd9iAlzX5DnjKNmUKTzrwviJ+OTuyJD+HGKItwPKmQZQ
         5hk4XDVhcQH0LGAI3/R67xANIAbIEFimj70/3MV18bPXdWUKDb8yBjgUsB2IgFSgXW3t
         4gXVCHn8o72vq7FWX72XitSdnxgDgtmB/1ti09J9FugF1dn0UPrtAqH7zJoYQPv2rX+y
         uKipWR7bpss2pf+yw1RHIT4nbLtnPtuWICe1JaWPv6cloE0JhfXXYw1Y4NXbe8r5nv6C
         Cqwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=JaxgJ3uqNlMJR+HheatkvA5pcgGc4lX5mMnDBINsfL8=;
        b=sxWtz1/rhXQZs7AfYUh04C7ceQ2oH8GvzJIGVv5MinBXNh6Yo7+8xEuP4Is+gH2M4w
         J+jRpchrS2484kRmIWRhF5c6DcQOJtA1LDTXlT/mVC0+vxUkXUfphPbuNArUlHm0Cee7
         Mdx/XgaZZcztq8bhznlo6WtUMK+HiCc2HPn3W30QchcSUhniSh6ozG9NBW9zM8RkxC8g
         kMiO0No3r0/iTMqMh4mqfYocerhelgq9n75PcwjAdhQc/bpBRhdgB9vrHCafZjwGoBO1
         tfhxgBYVSUW7mHHs9kSt0c3DgW0nYQ41YJcsl6+2iV999cbzs1SqRQNb5pKemW0rBT7i
         HABw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ADlDcoNU;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JaxgJ3uqNlMJR+HheatkvA5pcgGc4lX5mMnDBINsfL8=;
        b=GEeHFNyOUzOiahab5fFldoDHULtl8owVk0da+9qPkAlNmQvZAEtPbx7rusLLx3X1Bg
         ORVRYFFjRfEJIZTYR6WA20lH6ZO9EZQXw+c1dC2c5dGsFL4zog1pIYCDxCb5R0w7FUKF
         r7ZNnUgTMxhw/W1qatFbwe7Yuq+t0GgIrK0IbJhBgNqPL/SPOhH2aC2iaB3jHEodnzjG
         FKtl5fmxZ5hopxZ+l2FsPzs8nI28+tk1Sxk7JdC+YLUVicDb6dpCJn4kninTLFPE6sB5
         EDcPrjT9ZSQnMr6AvZr7ZFF2H/ytQk6naMGe1ixulBZND++MPUOXRyeYQARqUUu4SLp4
         WDaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JaxgJ3uqNlMJR+HheatkvA5pcgGc4lX5mMnDBINsfL8=;
        b=sZLBNcTHOOT0KvgUVWsxcOQRILK0WFUFLWs0heR2wlwDmaRvTBHGMRq9gVi1A8dpLv
         CMqgGcTZqys92nFbysnFw6jO+jB2KykO9DaFR+S4sQcntAQen4HPHm3T3zL2lI5tyXfS
         xo+MDdh3JTuoCrq35a2HGvvXkhjl122iP4QlD3K4xtHAw/KwR78VcxN5kt4h+BdqOF+6
         yoxRfwAQVvjz6HDINEsIBoRDXEb22ddExFCnzqBjvqsdykk9t+UEHvn5u5LxKajJ6ULS
         W0238WEBvnQSdpgeMiF5CVKsd4MLSp4kvfpjFpIBGi6IkpWeofbIGNj8I0qy4Eol3Q9q
         vTxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533g2GR5KjTPDjpbdjRnYSTP2k21lvG/2BeQpD/lKu5qw4G32iLb
	YAZaxL8r1dAO+WgY36/x6bQ=
X-Google-Smtp-Source: ABdhPJz4UxfV75xIZjzqD4FW4748WG3ysOIb6Nt5Sp5MuwHtUaqC10JI1OkMqg56YvMFFT8alNBBIA==
X-Received: by 2002:a2e:3912:: with SMTP id g18mr4499803lja.146.1631799918894;
        Thu, 16 Sep 2021 06:45:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8652:: with SMTP id i18ls795710ljj.1.gmail; Thu, 16 Sep
 2021 06:45:17 -0700 (PDT)
X-Received: by 2002:a2e:7f04:: with SMTP id a4mr5228731ljd.308.1631799917856;
        Thu, 16 Sep 2021 06:45:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631799917; cv=none;
        d=google.com; s=arc-20160816;
        b=aSkJXo9E8Xk45+FCfH4083MI88mawaAnkbHM9hLGpNuyLJs0mAxOOAC0qXnmoHiqrA
         Z0AsrL7kGSDrUyXReXcQzreJ6qa/olu6Atuf2o4hYlgK38ngeEb9inqHgiHmUQAcG1MU
         aeUclGYupwYp6wgR3IDqcmvUYCx6peaulHt95SXFsJGjhvke+ImG9U2IzAdrnWjP0RF5
         IRr2/WNSaNepFgYAxV22O30MiMcS9dKMxe3u5oDVDEsDFSKOu11TmgZXXEbxNi6eaO4U
         BXH7GLFgRF5QRSstoVbAzbpBxE77/TewZ9u/+tzoq0QzdEpRkP/dOd0EcHeHxLbTMN2H
         7sbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=CuDRdf94nh8ahjQ5dmyXV/DzX/ticPqZna0IdhNsx6Q=;
        b=h0363+7Y15ZRMiT86iXJ50T0DPnQkkufZJ4mfCdzWByb4KzyUmcMKmIQfers5wFlaR
         UoMg7+yGy9adZTBodagmxtKAX17/PvJQPYB9sqCou+NVROrBw9s95u+uK+VyRUpNGzjF
         +nRCrsRkRIQWFeYDs+6gfb4EicxChHiuhnpjDQ3adS4xsVx+Pu7CEvnS620TT/gX/ocm
         RWqC1eDwLI+y7Q26uVGKrkACzd3xOb9lh1r0iOe0lu+Ck62HDBxmz+K2xRMmQU4CTJPy
         dhtBhIbikafw4CMQnWW9lWjU9888DtmjraIKK/QwCJ8CDkicvCX/Aw0fVB5+yCQbS6Fc
         YbQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ADlDcoNU;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id u22si349376lfs.12.2021.09.16.06.45.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Sep 2021 06:45:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Received: by mail-ed1-x533.google.com with SMTP id i6so17043731edu.1
        for <clang-built-linux@googlegroups.com>; Thu, 16 Sep 2021 06:45:17 -0700 (PDT)
X-Received: by 2002:aa7:dcd0:: with SMTP id w16mr6605186edu.288.1631799916008;
 Thu, 16 Sep 2021 06:45:16 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Thu, 16 Sep 2021 19:15:04 +0530
Message-ID: <CA+G9fYu0dngeohP9M39Odj5-5ax97ZgA=KqV8_g2yYLdOGMQSg@mail.gmail.com>
Subject: clang: error: unsupported argument '-mimplicit-it=always' to option 'Wa,'
To: open list <linux-kernel@vger.kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	llvm@lists.linux.dev, Linux-Next Mailing List <linux-next@vger.kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ADlDcoNU;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

Following build warnings/ errors noticed while building linux next-20210916
with clang-10, clang-11 and clang-12  for arm architecture.
      - allnoconfig
      - tinyconfig

But builds PASS with clang-13.

clang: error: unsupported argument '-mimplicit-it=always' to option 'Wa,'
make[2]: *** [/builds/linux/scripts/Makefile.build:288:
scripts/mod/empty.o] Error 1
make[2]: Target '__build' not remade because of errors.
make[1]: *** [/builds/linux/Makefile:1329: prepare0] Error 2
make[1]: Target '__all' not remade because of errors.
make: *** [Makefile:226: __sub-make] Error 2
make: Target '__all' not remade because of errors.

Build config:
https://builds.tuxbuild.com/1yDgHTBClkDVAW6MLcYwAdsXznO/config

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

meta data:
--------------
    git_describe: next-20210916
    git_ref: master
    git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
    git_sha: 368847b165bbfbdcf0bd4c96b167893dcdb13aba
    git_short_log: 368847b165bb (\"Add linux-next specific files for 20210916\")
    kconfig: [
        allnoconfig
    ],
    kernel_version: 5.14.0
    target_arch: arm
    toolchain: clang-12

Steps to reproduce:
tuxmake --runtime podman --target-arch arm --toolchain clang-12
--kconfig allnoconfig

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYu0dngeohP9M39Odj5-5ax97ZgA%3DKqV8_g2yYLdOGMQSg%40mail.gmail.com.
