Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB25WYT3QKGQEQGWUDAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id D85C6204241
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 22:58:20 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id t69sf12921738ilk.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 13:58:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592859500; cv=pass;
        d=google.com; s=arc-20160816;
        b=DvEdK2Ph/J5zsg7e44LNVdZYpkzaSO2ipJyNXJsvxb+8ty1hTt1WGqIbFUC305uW6/
         MiS+/UChi6V8UKySAaz2G1RLP+82DXaZ5iQkB0PsPx7opoZRgubBOvZJ8d200sYWDEI5
         T3v6Ph3yfXQGxeM1k3l5KOVWxeQISirOnnGh6b59TD8XX4libupo6H3NlDJ28TdioBxZ
         nKeDUFejtnpDpi7CVjYQkKriUIy8Ms9C30GvOzvTf4LxsY5zmA/RIwE/3OLmg6K0q0E2
         p2ah3OvMqmWm/1CbpZYp0tV9DQPVYB90pV+PqsCpzCBr2Bdi0P5U8h/wt25H+kkdxNs3
         WACg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Q/QPlM1kqjdcbrbVAJyGIdWbA3eQT+hkUqTtdy2SUhI=;
        b=EV4vmE9htb3Vim7jxsjmXcnEbbomgt1saOfV3nwp70u9KyOEzG5kq3PZ12RQlBf64+
         RPNm2JJ3AoHRrBZ7RtDqYwL0f/TnBDdnVGG3VOIeGSbBJGKDXeZFI1vDDYRwvTcA7WqV
         ++6GQ7ORTdOgWwxxVE2BEwhPDU+Yr0MsL+6pQPfJXaqMTvKXPM6AMTUPB+RG7gcCxZG3
         lXK4xAA+1i5czaOzV22dRTHJJsfzNAVNRa/AGlGSJWNOf2lfxgxk81GGnlFwxsGU4y/9
         HWNX+wXuiHjvGZWzB8STrMhIZ0zlCi48zOeoOQrC40qv1RmCnqoBpoYmGx5JV9Q3eWzh
         Ekfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WmM8TNdW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q/QPlM1kqjdcbrbVAJyGIdWbA3eQT+hkUqTtdy2SUhI=;
        b=GoXz6MAEOxSrN5+ZOQFnf4eYy3PHbypzttdHnOOvtEdxKT7vc/VIskSQUApk2aFfU5
         X312mXKVJzZ+K9w6zyYhIoFNGnzjJ18UfSJ4z/PFDIUJb0WPLiNFPsu+g1QoQ0hyMAHP
         aX/+8BboDZopc9g7MZYAD/tZ5vTiiyqyz31tkKae/s66ASt7qlE7rVOrGSz8W/jyBfOO
         9VPlClnysNetv9xfNAIXubMaiguHHKkT8WmPU345Qn/kY0bLHQpa9ZYqqgYoU4rzanyl
         9jVwAAxb0Z0zhKGQr47eM8UWLIRWFetVBFWVHItWaDsxAXdw4zGiNffnTCFAiycjnKd7
         /5Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q/QPlM1kqjdcbrbVAJyGIdWbA3eQT+hkUqTtdy2SUhI=;
        b=K3W5PV+GSp8vWOY6WX5ZVOTZrwfSVyxHUnQE75FyBXqvFa4E0B9j10P+CSOilwb9eq
         b5DG4R6RXewMPbJHXcrDdHtA05nZkLEhxiLhQouWzjLX9QZepORx66TjNp6tKuqmyak3
         5zSmvkMNC131hC/2snSTsUP9K4vdVzBvXwTlQ0ZhpAIrfdfHwGz/gx58DYTJAposzvVv
         aFCdC0YY03R6A82ObhjLwNKq5SoAesBxW5N2IxgbZdG9ExucoU35S0DxwBlgoP2nUeF8
         qDCkfW222AG32jIfuHDFhd5p4dp/Qdxdx/5oMi37NZmMaqrd4GBww7aG2MXqgJxo3ajQ
         9iOA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fEHf+zHhfU6BWmNoaeApXBM9alHLrzyak5/IzslFY3WbTQ3Rx
	Whd30q5UeH9KJ4GA7ajhD4o=
X-Google-Smtp-Source: ABdhPJxXz+VJtZnNi6OT9JFBYGdhzndxGE2EDml8fZBmTD7/Ke/MrAQbXCsMo5HHP+sxoYtielTZ/g==
X-Received: by 2002:a92:cc0c:: with SMTP id s12mr19756716ilp.192.1592859499848;
        Mon, 22 Jun 2020 13:58:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:6604:: with SMTP id a4ls4833905ilc.1.gmail; Mon, 22 Jun
 2020 13:58:19 -0700 (PDT)
X-Received: by 2002:a92:c9c5:: with SMTP id k5mr20650038ilq.259.1592859499570;
        Mon, 22 Jun 2020 13:58:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592859499; cv=none;
        d=google.com; s=arc-20160816;
        b=eCx7aE4r3q+J+AP69PLLHkcU6v7gSgqE0aYbQPrC62t9Ejij7DiOr0ke50m3+lm0W6
         CuHQbVFsR1BWW7MflIwHpoDFjW0ZucJRHYBwI2ju5pbczXpcJ8UZFh9jJWx2wQPQ13/A
         6teoKbhZfakRlL7Uyx/NhQdpWfFuLKDGQwqvNWLAdl/N3i4TAcfmNaBTbVjx8AUNdUSd
         ECP0aTOnofvmnDB8q+nAgCMiAAVVFERJ0mWmksPId9yTe9tMAOxxEb/9yR/6C8ba+suF
         7VMlpWmCzHVEMDP8wpVA0R6+cxYbgg7krR+EDvaMRs7gucBKIz8JVTFNuaRuupviw/vJ
         4LHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=sr/y4QHqS3xWZ21Wk9dmfyjZQ6LCrqk5iTqq4P6aiwo=;
        b=E5BDWtIPyELKCZfGL3nbVVPdg8G/d+svZXKSl8Q88EpZbV/lWLVK8Nl67NHdwYxvT6
         hVVcJ48J3YB+VCUiBXMTK3pg86/5ybykv36kuiwu2ly031b43Aqm91FN06roFyDz+Ees
         YodSwz2bfTv88k3gGIkHvMHsgmn/lqCTD7vHTKwwuISCIFLcN/LIO1bXf5QPp/D7RCr3
         CokaZgWLAQ/GNdGNQ3tYofvL5pLSFjVAdzl4JQQoWVpZjyqhcuVmntikgpRLn8nK/5iQ
         YlUeXihrAqGNdmuDnNgzMU8VeRw0OWwGW42Mtzgw6wrR0JSgqzAbNQYWaaf01PFid2MB
         AfEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=WmM8TNdW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id r8si263085ilg.1.2020.06.22.13.58.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 13:58:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id q22so5943928pgk.2
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 13:58:19 -0700 (PDT)
X-Received: by 2002:a05:6a00:1342:: with SMTP id k2mr21694841pfu.32.1592859499131;
        Mon, 22 Jun 2020 13:58:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u25sm14560176pfm.115.2020.06.22.13.58.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 13:58:17 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] arm64: Warn on orphan section placement
Date: Mon, 22 Jun 2020 13:58:13 -0700
Message-Id: <20200622205815.2988115-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=WmM8TNdW;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

v2:
- split by architecture, rebase to v5.8-rc2
v1: https://lore.kernel.org/lkml/20200228002244.15240-1-keescook@chromium.org/

A recent bug[1] was solved for builds linked with ld.lld, and tracking
it down took way longer than it needed to (a year). Ultimately, it
boiled down to differences between ld.bfd and ld.lld's handling of
orphan sections. Similarly, the recent FGKASLR series brough up orphan
section handling too[2]. In both cases, it would have been nice if the
linker was running with --orphan-handling=warn so that surprise sections
wouldn't silently get mapped into the kernel image at locations up to the
whim of the linker's orphan handling logic. Instead, all desired sections
should be explicitly identified in the linker script (to be either kept or
discarded) with any orphans throwing a warning. The powerpc architecture
actually already does this, so this series extends coverage to arm64.

This series needs one additional commit that is not yet in
any tree, but I hope to have it landed via x86 -tip shortly:
https://lore.kernel.org/lkml/20200622205341.2987797-2-keescook@chromium.org

Thanks!

-Kees

[1] https://github.com/ClangBuiltLinux/linux/issues/282
[2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/

Kees Cook (2):
  arm64/build: Use common DISCARDS in linker script
  arm64/build: Warn on orphan section placement

 arch/arm64/Makefile             |  4 ++++
 arch/arm64/kernel/vmlinux.lds.S | 10 ++++++----
 2 files changed, 10 insertions(+), 4 deletions(-)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622205815.2988115-1-keescook%40chromium.org.
