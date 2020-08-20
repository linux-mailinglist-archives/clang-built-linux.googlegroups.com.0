Return-Path: <clang-built-linux+bncBDJJN2O66QEBB3627L4QKGQE6NKUZ2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA8124C40D
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 19:05:53 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id bc7sf1910723plb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 10:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597943151; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ho5Jn9YKTQv6zVYXma6ogbAvUJpu660HXV7UvFyC5T0qospEHoPgSOVdwwWKA01gJ3
         EkNziLaYi+7pHeH9KXJcHUvLY13Qb0occC2n/CForTzjc5OR9qkwfhdUTHMjnLNjixU3
         DjWLquNHNkilML4LfuPWLpwgzQNUVog9uPeb09ltcPkGoFepeDpSAa3+y+2oC/vzzXBo
         rXogT2thjCmoMLmfQy8gawFnW9k+R6vsZoxEg9Av2xLlBSH3wi2Ab6O2QG8RLrPmc3W8
         Qx9TYoMD+SFKEtEVbJ11KRXFUEn89nySeAKHfyua6Zu748g+avLyGRCgzYJChYpE1cuC
         bA0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=Mc1Z72Qr57u68JTrhOTvTVP5WTW1Mb+G4fpM3GEk4hQ=;
        b=rwET/+sRJYG7ouJ/aBKCkzbDslaEbKL67WL3gMADuG6Xk2fbE9fI+vVle81pcixuA3
         hLga7WPPScoSdapekCYNPOg3a0h4bdrB+6lqQzgn/M2nZ9acXCEfGj4l0roojWd24DbF
         SEm/hh+W4a0KZVz2IkWh8FZzTcvBN5SXfmVLdHHhKIXEZjLiWEz0YyyCQg5rxtUHYr3g
         h0b6GLJcqMteKZ7AHwx4cGJtijVnuX4kiQozphk6AG6wu2rRhUJfGs3udw0QlUW71d1T
         80p/+Tryrq3xXQtITARQ5RJGhLJW6RdRXvkekoO4FFdAYtxNqe9GmBJzuSeBH2oDs+uc
         bAeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G6qFHzRx;
       spf=pass (google.com: domain of 3ba0-xwkkamiksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ba0-XwkKAMIksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mc1Z72Qr57u68JTrhOTvTVP5WTW1Mb+G4fpM3GEk4hQ=;
        b=fgMybMRuQC6ZShOpVdqJb/nUQlIk6RHfkZYfT3hIIaB1IRl919CfDw6/WfsTUaqmhV
         iCfm1WjB4SSDRoUglKBv/mcA4lISsryt8Kby9e6YuAn5KWoCN6P8UYaKBUiJ8nCco02X
         wIDblzKa1Y5QVPZNXtbUN7KBIZ3J40loEQs27JIQ3NvEbWKBn7I4gqEKRujkvhI8Kbo/
         g2XPhhPiToV5s7hCpAaCJu4RUOR3EPWprsiKiPvjzciMyv41KVrdFD7GobtfDr4UANl4
         JI8vnlL+ZkuOT/hy6DNIUfmOyP7Kr4EZxbRXzlZA65nhdHSeUAqmUgLrJLVArDx4b95k
         IwKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mc1Z72Qr57u68JTrhOTvTVP5WTW1Mb+G4fpM3GEk4hQ=;
        b=LTv13mnxQc551kXyN9T7kKDFBD85p4ArOu4CQToPbKPVrW8STykCvBVbsCuUxgcSgh
         fcfWU2F2P6Q8I3kqnG42kY51V2LpIiVyouI2TtgXuCvvrFVHoAy7PdHEm2F0UHmpFrye
         h04bu6RlbUpCGtyTWVXj1hFQ52eEjd2avwM7+J8Z1UeYfR24wKPanr6q7SMkLunEDh8H
         0B+WYHvgjBAz9jS2nGveKriK75m3cYyeGnMwYBY/OJRZG13qffuZvVXuK2r6Gt8CdEQ6
         L177tEQr7R2FVHt0zaKOa0g1Ze0iB0sv4mJgkuEqsadtdbyMcpjns9UgU/cV9etjo78t
         Bd0A==
X-Gm-Message-State: AOAM530ANxVDKmp9SLRMutf2wuNSPKfzP/SjZCfuBeVkpKnXVuYaybaM
	yOdA1E6FrjrYg1WWPWZgaIs=
X-Google-Smtp-Source: ABdhPJyiuqgC2vPEU2yLir/B50FhJbMenVxPcH/St3fYU6zVRp8r7RFNuwpBqg+hncqSiA4hdG0+UA==
X-Received: by 2002:a63:742:: with SMTP id 63mr2989751pgh.295.1597943151339;
        Thu, 20 Aug 2020 10:05:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:19d4:: with SMTP id 203ls183345pfz.4.gmail; Thu, 20 Aug
 2020 10:05:50 -0700 (PDT)
X-Received: by 2002:a63:9556:: with SMTP id t22mr3104004pgn.121.1597943150789;
        Thu, 20 Aug 2020 10:05:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597943150; cv=none;
        d=google.com; s=arc-20160816;
        b=P3GvHzZKnilZSN95MsjaQVCrcLOnlz/cNY9y49pYEiK5BbbuOhLxQGnh/lud9Zsxyh
         dqzRJYTPiv8RaafKofqfP+LzmpMU2ct0ReLuYzr9J0tfZjGsfEAAGk3SCc4zUL6hLx8X
         wARl4HsBqtBISiyvICyEtsNtXV//nJzeNCSjCP/6kr/2sduAna85PKVNJFKm/YFyFk6z
         /ANdFWe1+X7W+M9i9PM2pLDnFbLx6amiaZ/RoWsOhaaZqQBhWzK2uTlexS1kwWxQ6g06
         SCrx31K5+4YdhBVt/1+QJVisJtDRhkPEdY4UIDK2MMqoRCmTZyuhxDLnvTm1BGKuUqJl
         aMbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=b7DoUVnpxFkIRzDbY79jsojJy3aTV9fDe4Ip8iAfTxQ=;
        b=Fm8AyGFVyp6D+a1uJwPIzWc6PI54n3/q9pDnH2/uisvY3LWJsEdphcQObIzvbCUhU5
         YcZSnhy1dBFgV0Jn64XM1asMUZ6SmFjgq7UdNNPk61mHQvgWXKN40k91uZhmy9MLYu6t
         HzW1Gd62dsYFnGXhg6on273v/13gX/V513Dn/eCsun3JzjTcyoN0OYmLtqj6wgc7s7XM
         WWq5fAhQHUZMztBQ5dJP4wQVQkmCzE117ch1Ah2LWio/kqgewweIvt86idEos0baaj9H
         qIfvJoC6kMpw3ZAFJ8wKA8Uc5j/hhYVNY3Adgxplgzqe1D+H5d+prne0WDr45qN7ycxe
         dolg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G6qFHzRx;
       spf=pass (google.com: domain of 3ba0-xwkkamiksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ba0-XwkKAMIksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id kr1si177208pjb.2.2020.08.20.10.05.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Aug 2020 10:05:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ba0-xwkkamiksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id r12so1790972qvx.20
        for <clang-built-linux@googlegroups.com>; Thu, 20 Aug 2020 10:05:50 -0700 (PDT)
Sender: "ckennelly via sendgmr" <ckennelly@ckennelly28.nyc.corp.google.com>
X-Received: from ckennelly28.nyc.corp.google.com ([2620:0:1003:1003:3e52:82ff:fe5a:a91a])
 (user=ckennelly job=sendgmr) by 2002:ad4:51c8:: with SMTP id
 p8mr3882955qvq.31.1597943149942; Thu, 20 Aug 2020 10:05:49 -0700 (PDT)
Date: Thu, 20 Aug 2020 13:05:39 -0400
Message-Id: <20200820170541.1132271-1-ckennelly@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH v3 0/2] Selecting Load Addresses According to p_align
From: "'Chris Kennelly' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Alexey Dobriyan <adobriyan@gmail.com>, 
	Song Liu <songliubraving@fb.com>
Cc: David Rientjes <rientjes@google.com>, Ian Rogers <irogers@google.com>, 
	Hugh Dickens <hughd@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Suren Baghdasaryan <surenb@google.com>, Sandeep Patil <sspatil@google.com>, 
	Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Chris Kennelly <ckennelly@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ckennelly@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G6qFHzRx;       spf=pass
 (google.com: domain of 3ba0-xwkkamiksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3ba0-XwkKAMIksmvvmtt6owwotm.kwu@flex--ckennelly.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Chris Kennelly <ckennelly@google.com>
Reply-To: Chris Kennelly <ckennelly@google.com>
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

The current ELF loading mechancism provides page-aligned mappings.  This
can lead to the program being loaded in a way unsuitable for
file-backed, transparent huge pages when handling PIE executables.

While specifying -z,max-page-size=0x200000 to the linker will generate
suitably aligned segments for huge pages on x86_64, the executable needs
to be loaded at a suitably aligned address as well.  This alignment
requires the binary's cooperation, as distinct segments need to be
appropriately paddded to be eligible for THP.

For binaries built with increased alignment, this limits the number of
bits usable for ASLR, but provides some randomization over using fixed
load addresses/non-PIE binaries.

Changes V2 -> V3:
* Minor code tweaks based on off-thread feedback

Changes V1 -> V2:
* Added test

Chris Kennelly (2):
  fs/binfmt_elf: Use PT_LOAD p_align values for suitable start address.
  Add self-test for verifying load alignment.

 fs/binfmt_elf.c                             | 23 +++++++
 tools/testing/selftests/exec/.gitignore     |  1 +
 tools/testing/selftests/exec/Makefile       |  9 ++-
 tools/testing/selftests/exec/load_address.c | 68 +++++++++++++++++++++
 4 files changed, 99 insertions(+), 2 deletions(-)
 create mode 100644 tools/testing/selftests/exec/load_address.c

-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200820170541.1132271-1-ckennelly%40google.com.
