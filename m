Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBKOZ62EAMGQEYZTQQPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDFC3F0FAC
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 02:58:18 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id e187-20020a6bb5c4000000b005b5fe391cf9sf2303262iof.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 17:58:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629334697; cv=pass;
        d=google.com; s=arc-20160816;
        b=euYG7v3WL9tW+4nLYunYRerCWqMx+33ObPsaBQ/ks94KnmKvAsqBOCG2j2iPG3eE0s
         2ReL/OUDCN4jp6D7WT8rOeNymZXk2274YG/SdPUIbHMqqEsuFBs/UFrwIv2rl/6tDFfq
         zrkEZwIF0CASIoYYk5VkNYpMdj4qkU0CDVUppVemMTxweYOd6PT1PpNDF6aRxTqNwhHn
         5czv8/GsCCCDolxrDr4JhQ93KncusJCUV5jJCfXQ4mr9EkwPwX4uEVtu5BwaYHR4pkGn
         4xyitRtEmoacaQ21x407y/1kTQkIY2dpQe6nIKnfLcvgziorWT7qYBeAhCxsnGPGwgVF
         dVww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=c4WyNmBBy8Hy5yFQ83pplZO5j8BJMOH5XIlZuEPCnNE=;
        b=G5of+ssH7mOol3LFMZNnFNt9U/x9Rex2O3H1aCp0UujgJWITCH5wTdSLiZb/2FrO0R
         wKn2ooGzBH4MOsERbOGTrR/nOMk02KNQNbM5bEyrI7BqNVFmWRH925Cgx0apEhzC4Jnc
         Fl3ChlJ1GswCnWeLlFMIjwUf1XjdfxV4EJ7xRPFEkAQ+8VhE8WyNdpdtru4sWs+WTgFo
         F59uFNpobDbZLRZXg4RySulBurZogWEyIaZi10VvJ6OTTVKnwC+YRCydgsV+W5GdQuUZ
         hxXL/COEOdZdrqd0OvFx/JrvEKwO77JnHUD++TRSiz5h5RGg8ngFUzK3y+AublZ+gMPb
         +MAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=x1vPPvzy;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c4WyNmBBy8Hy5yFQ83pplZO5j8BJMOH5XIlZuEPCnNE=;
        b=ZHiwX7ap8AybLQMznAJH3hNvz03gE1/Mmoee7eEvicMAUC9IyPI9QZQKmQDw0T5pkG
         PsFuQjus21v7ENPPsOBGZ2XU5dgk7A64xA2wnbP1s/iLmqZAd7VdMkwG7+SyHwaDmW83
         PWm4ooS73tjNXHWnqUt2Svh6DRuie1BDJvRZoRbgY2abLcefP2lcFvrOBtMODknD1xve
         W/Ma/p86rhMR73FugVVm8CbdTA/t1dDq0NBuYSlNS+66+4Ssso1iQfGNw/RQtZkMED7C
         BbJQ0rNp/kHg1Z7uAdEJxE61uoLIWimISbRjlt9ikBtVq0Y/bn0FHx2XGVoioc54lh53
         yaaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c4WyNmBBy8Hy5yFQ83pplZO5j8BJMOH5XIlZuEPCnNE=;
        b=UfKBs3YB4y//bSxxRh2we+w8iOuBp+H/G254YtUsSSP8jFBXIFDaALpYn9NBLKvzcw
         8OqOEZEEU0llA7VB36ceBk45QHx6mkEgXnemmI0InTbq2bL7iRVTh0pgdftyeBgbeYsd
         PIMzZifB2JpsS94BRv6fVqJh5ZzJKYEe8orho39mMvWEydrMONV3AkXuexrRnPZyKKs3
         fr5Qfi7pIfq22fTLjXqb2uIz8RxN1hEj3nWX1R4AQFfND/6W4NELZ0lNBcwYluUf26g1
         O+BeVXRxEf4ld4XU91bYGhIYw/W07bk7A5K/OAWzYSzvph6mOeefJ4ZPfdsdyMK7TCRn
         TAOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531eDIyNlMs83vcH5BUVSfOez8j0s0LHgMHtUUXMAM3c3uNbFgGt
	mPBCsKUBrmGPFk/ubv/fItk=
X-Google-Smtp-Source: ABdhPJwDWt4xFcYEcYgy76ZK/SgsSc07ZL+W4hozsEsYCxr3VDkSyAxDlANQb9qkclFGXNqjuG2r0A==
X-Received: by 2002:a5d:8b51:: with SMTP id c17mr9320765iot.119.1629334697187;
        Wed, 18 Aug 2021 17:58:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c7d1:: with SMTP id g17ls810072ilk.3.gmail; Wed, 18 Aug
 2021 17:58:16 -0700 (PDT)
X-Received: by 2002:a05:6e02:5c8:: with SMTP id l8mr8097377ils.282.1629334696741;
        Wed, 18 Aug 2021 17:58:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629334696; cv=none;
        d=google.com; s=arc-20160816;
        b=Qj9FOrtzUYKjg2I2v90vzgKePi6GkaQ92WrvM/pyY9x+KtWPatsmD2CSObcSF2YGtJ
         ex5tiAA3i/KKrTnEbq/z35dFjdBXViZk73LHcnunjiVzOv6vncmST6hiORQcNfnhrL5V
         +Tjo3/lRevjNYS9JahJxWwRCp0tnfmJjU3NoglNWwsueLLbU1oBzdK2NISLoY+573FvW
         biOkrqLrNP4wyuKnZacZJkrjevmrBvHt0zVZ6E1iH2kaFg0BGDjmkNSRxWUw7RsJtrUB
         gnaymg24o8DasDLk3oG6pnfNM/pNmzWYvONpYdeQA3Rsp2HO2/n4OufnU3w/ujZV4PFH
         5BXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=XX9owLp8zLvczu8bj8Khsy0Z+vUSEE7gymjlq/whycU=;
        b=gy9mWXD53ixw4+DOSRIGOFb1g03fu+thgnxN9OFOsCPuNfOCUARZiedgKA0JK7JzDE
         pUNtocYZi6MVQ3nCscKCPYEKYxpR1cBQRR/obSBP/x3DX0CSkV7z4Kza/2HRHcaKmRAk
         Fvfr1gU4+aIn3Dk0X/P9uQaNyJQ8f+8f/4TZ8s9ouHkFnN1HQTlePOrpSQiEg291HKwF
         YfW96F7JOiEWBqbfNtGRZYAL3TrsSdQMthOJCZDgaGVk8o4JXZ0DzWxH6XyW47aM5XkV
         eno/SIzz6BPvdkGccCskB8TnlZVHVEulay06psRS+/MI/CqDfymv3B82DQ2A35eFtJra
         yzYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=x1vPPvzy;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id z12si138334iox.0.2021.08.18.17.58.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 17:58:16 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from localhost.localdomain (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 17J0vl4j017219;
	Thu, 19 Aug 2021 09:57:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 17J0vl4j017219
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org,
        Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 00/13] kbuild: refactoring after Clang LTO
Date: Thu, 19 Aug 2021 09:57:31 +0900
Message-Id: <20210819005744.644908-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=x1vPPvzy;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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


The introduction of Clang LTO, the kbuild code became much
uglier due to CONFIG_LTO_CLANG conditionals.

It is painful to maintain the messed-up code, and to review
code changed on top of that.



Masahiro Yamada (13):
  kbuild: move objtool_args back to scripts/Makefile.build
  gen_compile_commands: extract compiler command from a series of
    commands
  kbuild: detect objtool changes correctly and remove .SECONDEXPANSION
  kbuild: remove unused quiet_cmd_update_lto_symversions
  kbuild: remove stale *.symversions
  kbuild: merge vmlinux_link() between the ordinary link and Clang LTO
  kbuild: do not remove 'linux' link in scripts/link-vmlinux.sh
  kbuild: merge vmlinux_link() between ARCH=um and other architectures
  kbuild: do not create built-in.a.symversions or lib.a.symversions
  kbuild: build modules in the same way with/without Clang LTO
  kbuild: always postpone CRC links for module versioning
  kbuild: merge cmd_modversions_c and cmd_modversions_S
  kbuild: merge cmd_ar_builtin and cmd_ar_module

 scripts/Makefile.build                      | 196 ++++++++------------
 scripts/Makefile.lib                        |  28 +--
 scripts/Makefile.modfinal                   |   4 +-
 scripts/Makefile.modpost                    |   7 +-
 scripts/clang-tools/gen_compile_commands.py |   2 +-
 scripts/link-vmlinux.sh                     | 125 +++++++------
 scripts/mod/modpost.c                       |   6 +-
 scripts/mod/sumversion.c                    |   6 +-
 8 files changed, 164 insertions(+), 210 deletions(-)

-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210819005744.644908-1-masahiroy%40kernel.org.
