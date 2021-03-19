Return-Path: <clang-built-linux+bncBDNZNK75ZIKRBF5O2OBAMGQEG3DA5XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 2231834227B
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 17:53:45 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id t3sf6368693uaj.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 09:53:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616172824; cv=pass;
        d=google.com; s=arc-20160816;
        b=HuPC+bNdnFmn19QMotzcpweR9AEfp7moAVZPfH3vamlGbjOzfFN2zrSnNn8CJz6CbU
         nw5FLMz+qtIfinQGJ4YdSuWBObiH/xMahiy77BNiY1Eucb/pCR3PtHiIVArVNYTDxFnv
         zwMLNTbmDQEcgDPZYx98DyaIZSvMfXvld4N1uZAlftHxqVa05q323psJWefF/MpOtp/p
         t3Inpx0ooPqDiSX9sxp1Oafd54Wzuen3DIk98svQ307vCpYfDgI7hevD55QGs/AUmyf+
         hF42RpMUtYZ9LQwB8gXIg5SmTXg1pNUWr1j2mghDyMzjdEu9ZGZQWQn98b10xt4peHjC
         xdUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=q1o3bTBP75j2dDSKDTBLUdabvUD/T4y+BX73abETEls=;
        b=YaBAelLtW1DIuMvWQZ5fT0CqKuyp7LdSsiZHgItzv8R0nU9Tg+PPnQ82qHV3D/ZETP
         zn3/4iU3PNfo5RD2vDtHfJDZoXMhzT9vQEJkvDZ1fE6jKU0hLGk6Sl7fdQN4ABV3tayJ
         YwFxr2ITAYhE/g4ZKgG0lHroFQmAJuINt2W7RoxICWVi1+jYZl7mBF0N/nbaaN96JvMM
         t7xzlThHPQtzKLRgYL3C4/5JYwG68vwuxskd0tNQvx3Zty1CeE5NT7XDNq/wsC2WBbZE
         uQHNNbA6h1WYoiP4R/B8jP9jI6q91yOdNWhJJiO/9IN8IYkU3NAznCHTojI01+RjxBAf
         +5og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andre.przywara@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q1o3bTBP75j2dDSKDTBLUdabvUD/T4y+BX73abETEls=;
        b=qiuznEXGxGUs/6jMs0hid5thFKOJKxnhUXYbCYYmTtKJ16OZzTmmY0eJ/gwdn7HiXr
         eUf493X35NS87Xp1FGf/F69PnDx0qxv27hsCEaj6vYu0xmKORywAZ36MiRTgQTqFhuMP
         NGWLw8DVP4/6oZNEEGLbHbDAG1Z2Y9BP36bzfP3GHEg08g0pmq8ZoRD66n2E3OniQ/WN
         SsjHPPxu3YHcMj4sTpy55sqJU/XdjLP4umbNxWv7F2aKFPsAaudxRZQFdOBaoUOhaTR7
         5GfhaCBacCrNz4ldy4k2qRwb5amBdndKK/A036znYIbhkCsSygiad8YZz0kn7H4e+0p3
         IilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q1o3bTBP75j2dDSKDTBLUdabvUD/T4y+BX73abETEls=;
        b=VU8HcHn6TapqsK63Tq0AH1SkuzWLY183BDcP9rEHq1yRjQ7hXmk7fEMczkYpyfDs7Y
         2EeFz59RzfNWiRdRWA7Ym7bDddW8v2CHz9OAdlMznq+pJ6qYEmQEO/myf1K3NVNJHStp
         zPpx5xxUXB6T1G1HiJfzewxoeV+nrmcl1VG7iy+lO4Cn93Di/acfsHlQxgoz28+buVKA
         eGADP2H2ewrO7hbqu0llcKSEFJVXMQJDlPnxJuhL6YwBgd1g/Ynf5WLhtF0AUwvvxf1a
         gSRBGBp9epn8/CoW/U5uPauQcBM00CuYqOfSceqxK2vgRyzVTYN+yNDOqSTiOgN9fcrI
         01cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UYcAKk17jDt1ps4h6Zx9SoH/rnqlENoHbGa6DIAjTVdmbLvjr
	326vGIlzGkcJmZoU/QZCcsU=
X-Google-Smtp-Source: ABdhPJxerRAXB/hVzlhqFN+FGboM1f9c54S2VcigoeEjKQvtysct7lmknm50+L7GP5ixUiijhJcfMg==
X-Received: by 2002:a1f:9ed8:: with SMTP id h207mr3330232vke.13.1616172823907;
        Fri, 19 Mar 2021 09:53:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:30ab:: with SMTP id b11ls462616uam.3.gmail; Fri, 19 Mar
 2021 09:53:43 -0700 (PDT)
X-Received: by 2002:ab0:2e91:: with SMTP id f17mr6154935uaa.74.1616172823358;
        Fri, 19 Mar 2021 09:53:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616172823; cv=none;
        d=google.com; s=arc-20160816;
        b=yQoXtfXIVhttJr+pZv0byGHm/PI8dRSyVPYAL0luUjSTbawjK88VmynQpPjEUlbI5p
         gm1Y2g5/Q4wuETcOUj2dIUY00xSIRbG8ODYfVgh2vd88F0pKc1wkgruzYMWb8To+Smtj
         jae1jW2UEiG9tI1oQY4XSqZV7SWbsL78RYIFWBehauhai5Mf1bTDgS92jolbL07mdIvv
         +MYUhgN71q4+TmY12c+C1SlSd4rDgS3iymf1rvFcfTP9j6Vf6Iiu+nLJ2YFcsVP8tg9g
         N28tYVkhKfCMQc+bTRRHj/kJyKhRt+gvCDlvci8302OVh5iaxfheNA8RzGsDi1Ivn1hW
         qt0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=30b4R0F63thRk275fen2RkKPY2dMkyrPjH6fdBc4oqw=;
        b=tM2yDP3JOKasidHvn+SshZ+6dw8xqQm+louNu+yR+zavdXS6TRVpJ6T+StRBoy+kip
         Se7sIGJaNr986V3qcg2Dhhpiy7X+aTQs0SYZvGfZWNYKSVxyjub65l0YK0QFCf1aVtOq
         hRrIlIE0V9z2uQI2hIEYWRhNX/OzNc3WAOP9iwqjJ7w/pnwcMNaQcgUAVXHhZPVwYEn0
         LhDh0bqr/hoAHZnqwmM8AADUsXc4m9YOzEm9jg94NieIp8BfNm5wgNrL5Jmluo5y73m7
         ljztafM7QvWCFUXhmNP3RsCXOiLDUY+PUTcel5F40tuMr0iHPU0/5ZmOJMHgPXVCswMA
         ZlMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andre.przywara@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id u21si249301vkn.2.2021.03.19.09.53.43
        for <clang-built-linux@googlegroups.com>;
        Fri, 19 Mar 2021 09:53:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8522B101E;
	Fri, 19 Mar 2021 09:53:42 -0700 (PDT)
Received: from e104803-lin.cambridge.arm.com (e104803-lin.cambridge.arm.com [10.1.197.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F1FFA3F70D;
	Fri, 19 Mar 2021 09:53:40 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Shuah Khan <shuah@kernel.org>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Mark Brown <broonie@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 00/11] kselftest/arm64: mte: Fix feature detection and compilation
Date: Fri, 19 Mar 2021 16:53:23 +0000
Message-Id: <20210319165334.29213-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.5
X-Original-Sender: andre.przywara@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=andre.przywara@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
Content-Type: text/plain; charset="UTF-8"
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

When trying to run the arm64 MTE (Memory Tagging Extension) selftests
on a model with the new FEAT_MTE3 capability, the MTE feature detection
failed, because it was overzealously checking for one exact feature
version only (0b0010). Trying to fix that (patch 06/11) led me into the
rabbit hole of userland tool compilation, which triggered patches
01-05/11, to let me actually compile the selftests on an arm64
machine running Ubuntu 20.04. Before I actually fixed that, I tried some
other compiler and distro; patches 07 and 08 are my witnesses.
Then I got brave and tried clang: entering patches 09/11 and 10/11.
Eventually I tried to run the whole thing on that model again, and,
you guessed it, patch 11/11 concludes this apparent "2 minute job".

Eventually I can now compile the mte selftests on Ubuntu 20.04 with both
the native gcc and clang without warnings, also with some custom made
cross compiler. And they even run now!

Please have a look, also you may try to compile it on your setup, if you
feel adventurous:
$ make -C tools/testing/selftests TARGETS=arm64 ARM64_SUBTARGETS=mte

Cheers,
Andre

Andre Przywara (11):
  kselftest/arm64: mte: Fix compilation with native compiler
  kselftest/arm64: mte: Fix pthread linking
  kselftest/arm64: mte: ksm_options: Fix fscanf warning
  kselftest/arm64: mte: user_mem: Fix write() warning
  kselftest/arm64: mte: common: Fix write() warnings
  kselftest/arm64: mte: Fix MTE feature detection
  kselftest/arm64: mte: Use cross-compiler if specified
  kselftest/arm64: mte: Output warning about failing compiler
  kselftest/arm64: mte: Makefile: Fix clang compilation
  kselftest/arm64: mte: Fix clang warning
  kselftest/arm64: mte: Report filename on failing temp file creation

 tools/testing/selftests/arm64/mte/Makefile    | 15 +++++--
 .../selftests/arm64/mte/check_ksm_options.c   |  5 ++-
 .../selftests/arm64/mte/check_user_mem.c      |  3 +-
 .../selftests/arm64/mte/mte_common_util.c     | 39 +++++++++++--------
 4 files changed, 39 insertions(+), 23 deletions(-)

-- 
2.17.5

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319165334.29213-1-andre.przywara%40arm.com.
