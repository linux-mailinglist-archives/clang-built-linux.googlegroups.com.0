Return-Path: <clang-built-linux+bncBCKIT2MIT4IBBONZ677QKGQEKWVRJ2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF072F3720
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 18:30:34 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id w26sf4123353iox.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 09:30:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610472634; cv=pass;
        d=google.com; s=arc-20160816;
        b=xuPHhnL0hEAj2SIinLrwj+JtJeECLDBIDCXoHRnJ6yAFqYkq+4P4LVJKaHPkvU4dI4
         Z58FV+2tpJG1Z2QBjejq26iuHqierYJ9MDvG1p6BLsmfTyE/vtN3q8+Hs3NayQ+jhec5
         iLaWxBJaz7rWhLnzlYP3Kk3wTUIrfIdURy4+e7KrB0exM9KQX+eW5cDRZd4Hm+OPJ+J6
         sE780WcuJcjbHQIlKM5uEhkn321Q1isTQJZSY30Gom43+sihmInnA4shc37Pq7x0pejs
         m+nPcBLXMogxRfTbEXGDtQ2kBlCAw2DBJgBBFL43emR5MMhQf8n1z/TT0lIvucJVy7gU
         dHWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=drFpT23qe2+eCJNimPEACf8vCbipr1sn9qfBgr0KKbg=;
        b=yudgRSWDfWmBMX1BTN7qNS01dPQ2UgCFShISsVmQr+jHKChpMC4aUwBGM3X/g1u66/
         QbIfHMW7GHRJmbIMFGkS1tXWZyfP0wPREVT+E4PqkA72DdRVgaLgIXPoHhG4qmVH6IZR
         MRU7rJ5If8cEEALkTJRKgWMsJxi2DRTutXKJHNELKq5VHewktvSGuBUfkDSwBtz+GohO
         x7cE4YG2pvQ2eWPoexz9KZcVSnpGhMaWO8aa5RHZU0or5WHVWqLwSY5aGqIhbMl7t5Hj
         pe79Xx4h6Hn3l0qGbjNls90B9WBlOTElZ/2LJ2zj02eufyfyEEFrPceRjJ2JJX3fiWlp
         ZjRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ULLmfmco;
       spf=pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=dan.rue@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=drFpT23qe2+eCJNimPEACf8vCbipr1sn9qfBgr0KKbg=;
        b=hKnmnwwY3FL9fQNsUHVM45CxghqYwR12pScC41k8EVbX1oGqladzE/KO8h95YSSuS3
         hdBHcP/aE/sxtof0sDeauEZMhkemV4s32oq7uoVQ9jNso6M06RD9eFEW8UoXwTb3wY2m
         cWI1oedFOFAWFeaAR1uT9IaMY36zzORMJDK1m+3byCzmiejxMcCLglVU01z+22wD3Zfe
         +XzUrJvQBC5oD2f0inUKrLsYpvxQpM7kdlzACprs4KIZH23p+hUCCiTooQ60p9blZHDn
         E04Jfwowee/NmvdNazT0yLRl0n50gecBhzcLajxkFf4QUx4BabkV+K5KauQZrLolngLX
         EOnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=drFpT23qe2+eCJNimPEACf8vCbipr1sn9qfBgr0KKbg=;
        b=a56L17xoA8Xag8Ya6OTdDsWelyQcDhvuNqmh110oNAhgXSXdQTmlgubCDRgJ9rZp5K
         VDYV4SnosTo8uwBH/+TEvJgu9sRmYPDSwvfhQqyk24/zDrwqrmNYSsLoUZ3CP+nxjAV8
         eQDMp7B451GKaYF0yd0dGL3Z46piVVSiznolSOrfX+5nH2nh2wjUGDuKy2yyHebl93wr
         LeBPxBuBWzlJaBSbG3A2caTkgeLVByWQ76TFIPWjf6DK803nH8RATy2U1cMCAI5Q/bv9
         O6eEbXOLcSA0v7/dsYQeAsiPvRp1EE7MEO/gDE66quawHgJ/rvwr2oMfjtka7vB4bfjJ
         5fJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RWWsQp7488q23Sc3yLvEGsL3v/MlFG/U2UFHRHw63FgpMbXMz
	y9sflbnj1KeM+sQm6hp2yGo=
X-Google-Smtp-Source: ABdhPJwFVYYTot3+uZm5sUTfPtZ/TtfOsxkQ+EVKbYKsRbdgNSTLPFLoDZxDGvIxmhnogphkfRDYWg==
X-Received: by 2002:a6b:d21a:: with SMTP id q26mr4096268iob.128.1610472633936;
        Tue, 12 Jan 2021 09:30:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9ed0:: with SMTP id a16ls707786ioe.5.gmail; Tue, 12 Jan
 2021 09:30:33 -0800 (PST)
X-Received: by 2002:a6b:7f0b:: with SMTP id l11mr4127958ioq.34.1610472633529;
        Tue, 12 Jan 2021 09:30:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610472633; cv=none;
        d=google.com; s=arc-20160816;
        b=WCUo+30M71OlWdxPBlyISE0cW691WcEV7sbrUBnRJaJfV9wbHq9/P5hScV1GIBWcNp
         Ro1OfGtZ4WYDLXQrkb9EUbBVAhcszk5t+I35tALOiJDsBPx3/KV63kHzI4Csig6Wga8c
         pbkm72wDs+Bozg3jWBhxbFS0p/1jaMioWvyr1iCr1xGPh2dIIJCrMKSUi3v5b18oExQo
         us0Dpak1xzLUlSTXPTbmRTLO2yzBKlK8jMU/orCQYvP70Qc4DpjhcGx4o4J4/9GeoMUw
         hMKJIOsvUlMzqyvgKmrUlAHc/4aHc4mAa4kb3jtXI402gtm+jN23VQfqGRzs7m+BzI2H
         Jing==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=hE4FMqPISm4x3fkOaCQM74XGPswtV9bzWlp8i65NhRk=;
        b=Ly05OznFGfUG4cv37eH3q9TjaYU3CMsKzNNVCxX/kWPqVkGcGmi8eEmxyvq5pLPOvg
         ZwIsUYv6tKb40zyUwT1UQ/fl/JcleP0mVxfAYvLBUyLBnlZ44KL+3xlX9PdicOt4BIPb
         t2mwc0BPve1BwWEETGm2911TaK2R6VqRrsw8BovM5OM8WL9n9jMELPu7b3TOA7WLbrSm
         D/xjPHMKB1ngxcJinDWRAiHj3Tqc1blj5aEQS8DyD47E5iImWpI2IfXyW61nNell/L4R
         aVf0y0WZoU1z24D+5GeY4exZO2ZQhRCYTInoTEObGZaCMf9aMb5PW6+Q+PuvTg0VOTL5
         Qaog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ULLmfmco;
       spf=pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d2c as permitted sender) smtp.mailfrom=dan.rue@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-io1-xd2c.google.com (mail-io1-xd2c.google.com. [2607:f8b0:4864:20::d2c])
        by gmr-mx.google.com with ESMTPS id e26si259354ios.2.2021.01.12.09.30.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 09:30:33 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d2c as permitted sender) client-ip=2607:f8b0:4864:20::d2c;
Received: by mail-io1-xd2c.google.com with SMTP id y19so5753746iov.2
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 09:30:33 -0800 (PST)
X-Received: by 2002:a92:9881:: with SMTP id a1mr31831ill.238.1610472632791;
 Tue, 12 Jan 2021 09:30:32 -0800 (PST)
MIME-Version: 1.0
From: Dan Rue <dan.rue@linaro.org>
Date: Tue, 12 Jan 2021 11:30:22 -0600
Message-ID: <CAGm4vTOdh3j7_9BPvDVLpMikktyEYY9T7P+zZP89F+eewiOeFQ@mail.gmail.com>
Subject: TuxBuild/TuxMake priorities?
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Antonio Terceiro <antonio.terceiro@linaro.org>, Vishal Bhoj <vishal.bhoj@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.rue@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ULLmfmco;       spf=pass
 (google.com: domain of dan.rue@linaro.org designates 2607:f8b0:4864:20::d2c
 as permitted sender) smtp.mailfrom=dan.rue@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hello,

I won't be able to make it to the meeting tomorrow. I've seen a lot of
activity on https://github.com/ClangBuiltLinux/continuous-integration2
and a lot of issues that are blocked on tuxmake or tuxbuild issues,
but it's hard to know which ones are blockers vs nice to have vs
something in between.

Can you help us prioritize these issues? Here's what I've found:

- Allow llvm-related make variables
https://gitlab.com/Linaro/tuxbuild/-/issues/91 (blocks
https://github.com/ClangBuiltLinux/continuous-integration2/issues/18)
- ability to specify --git-repo and --git-ref in --tux-config file
https://gitlab.com/Linaro/tuxbuild/-/issues/79 (blocks
https://github.com/ClangBuiltLinux/continuous-integration2/issues/3)
- big endian ppc builds are broken
https://gitlab.com/Linaro/tuxmake/-/issues/108 (blocks
https://github.com/ClangBuiltLinux/continuous-integration2/issues/2)
- Produce epapr images for PPC64le
https://gitlab.com/Linaro/tuxmake/-/issues/109 (blocks
https://github.com/ClangBuiltLinux/continuous-integration2/issues/2)
- uImage.gz is not a target for malta_kvm_guest_defconfig
https://gitlab.com/Linaro/tuxmake/-/issues/110 (blocks
https://github.com/ClangBuiltLinux/continuous-integration2/issues/1)

Thanks,
Dan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGm4vTOdh3j7_9BPvDVLpMikktyEYY9T7P%2BzZP89F%2BeewiOeFQ%40mail.gmail.com.
