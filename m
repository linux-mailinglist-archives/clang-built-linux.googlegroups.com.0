Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCH7WLZAKGQEMJAUZDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D962163C2A
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 05:54:34 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id i3sf1440749pjx.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 20:54:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582088073; cv=pass;
        d=google.com; s=arc-20160816;
        b=AdNUKOD2z0boP2zasIqiKrCUFyt7OrkoGtAHcXnJOqbKZzbHuThQ5bjIzFADHtGfJr
         hfPWRyngDwxoMjkTjLT6bPKzvBBpubII2fm1gwqB69+Vp7yWaDxsKsblnTeVgbmzrIZQ
         nYLisjPUeJEdm0akGl2R2oHlNMvl3rm+4EilL+DFXZq4TrIz9vbGZGii9T1wBabKJwK9
         PxrNxHpaO3rAg9xsL+gqf6RiDydPkxT88s2Q/dDU49dvYx8f0gYrVoQQgHdljQFwZTsS
         W4lz6uxYZoTpPU8qCjnW/y8klr3hMiDw01GrOPzWFIxhDQRP2FdJXpGkrVG7F9Jws+Vp
         2WAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=i/ZifBNbzmU97wYpDd4TSSMbr6LJhcS/3/AOHqCo49g=;
        b=KVs9VU/JAWWk4w4Xrhwf8ddDPIiGKhnFP8n4SGIxxPx5kXCV5nOyu5/Vr5Fw2gh635
         nVn/ARHtWKHkaQ4yiggwtk2tiVg9vEDyps3O6HViPc6+V2isvy6IDxlG06J71pimNYjE
         xmu9QEGJ7mUeWIWes12Lsli7mYFoJfR3++gFHCXn8BqMxi2nS+i6Hc4uutP1vagi5LhV
         lTNqXFyZhoCFg26C2UY1m95/JuON8k1KNePYeT6OCysSxVELIoCJbBJCbNnO650dA3bt
         5TNywOwCdE0J3zraVp7aRvkiMUDTDiE6szzfpRl7l+tA5dk5PAN0pH/7CuCFLt56Damq
         OOug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WlD3m2Xz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i/ZifBNbzmU97wYpDd4TSSMbr6LJhcS/3/AOHqCo49g=;
        b=i+y6n1L5tLWmp6Us1z0u/jDyeWs14Ng3juFZdKOSj7pdvwkS3iclKfiIcB3AQgAVvR
         g6bCdGVDWn8bdvoXHkpL8zN++thHeTFdr/4rMnu6bTC7fOz8kCUFH5R7lB2VfPI0tB9B
         BqtABjQFnh00DGd6W0ppEJ5sLdWmxfExNs8SSgaMWZxUs9G5RwLcxx1Fy4+STqsAMS7A
         X3vjzaJNdS7C1BjA4cfrhizuaKn8F5rN04ZfccYTqOQs00dWNZUlSpiOOOh+so2dw4zv
         qTFIOASjbZR5sBgp4T9QXgRGZDCKx35OKJGQUCYlpFVhZmuefn3ZMocxIYS/b6u0JNKr
         AOkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i/ZifBNbzmU97wYpDd4TSSMbr6LJhcS/3/AOHqCo49g=;
        b=baZ4ZuQx6Lh27XhiOInd+uIJlZZaP1IeNwqyn3cmafIobBALWdifkC2cEPNiubHUJb
         8oZKau1FsWBRv9iKI2ZKhnaXbyCimOAn+9y86YYd6uIyPInH7fx59+x37Eg6wwdwUogG
         XzYEiWsGnU88062itn+/iQtUUB7wp6xRfMA1BmXK9lcOajEDDN6Uwab1SlIne35BNSAL
         pn99Drx5kAyNPUZUM0ZXtgBQWkgut5DwBQHpjrJ1z6xaI8vLPIVrEhwI+ZvE5UQyQVu5
         NN7O8JXV6QWMxMAVqso6eHUMGyz5Fcpc1esyJu6g8dzSdpHsPQXc1OyfdB+4Bw5/GNa4
         RKsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i/ZifBNbzmU97wYpDd4TSSMbr6LJhcS/3/AOHqCo49g=;
        b=VFrYxjsc+nxwqfyHVX8/s1lmsmm9gyDO5wtzBAabUyibZJSOb5+Iczd7ROFEMkS0lg
         TCnsFdTGZWbKMUTw5qQqfByH/afENYB1DQYmnin6VBEtVEMvvFIxXPiuASi+FUNMMTcT
         2HX/fxGJg0aNwaye4Meokd5+3JK9uIMxRSyZywypC+vRLfYo6o1U98sAyr+qknZ4wgZX
         hd8chPi395b56DkDubAx+b3oZImCM7erPtsaK1aafbBwFyWr+1Q6g/fmVB9uNcZQ6ADx
         EJWxoSDjGwtOG/KpHu0sgwRyneFEilqMbdOtUNxtFg8XMXd+BSq7uaZX6jBOXH5C0jrJ
         vYQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU9s6uSUXHcc+JSsDBgt8YeYoUUla6rq6b7iLY8JopZ024pYTQD
	xGHZRfKryl1vl6L6AXL7Rbs=
X-Google-Smtp-Source: APXvYqx51qvRou2GDYilE9S+r+9YloLK56eJC6q8S+cuBaZC19Q4wQFsI8P++03F5uRZVQusUffeDg==
X-Received: by 2002:a17:90a:8a08:: with SMTP id w8mr6901189pjn.125.1582088073034;
        Tue, 18 Feb 2020 20:54:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4d5:: with SMTP id 204ls7419450pge.9.gmail; Tue, 18 Feb
 2020 20:54:32 -0800 (PST)
X-Received: by 2002:a05:6a00:5b:: with SMTP id i27mr25442165pfk.112.1582088072578;
        Tue, 18 Feb 2020 20:54:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582088072; cv=none;
        d=google.com; s=arc-20160816;
        b=ZqUN/CWhzIPZwVdV2DYy9CpEg6S0RtIOCvA+OUMl9y3GPmzaBzqu8s8y1cNGwgRvA0
         l4YAvglSpm/8oTsVb5/xqr6wYlkDA6S7hW6Xpl1iQ7x2uwd0j/xXc3CsC9Avr9rdut3c
         wzQnJckDPn78j49P+pi3gGbTrAq0h+kfcaKrxRllv7Gb8dXDpwrIWkD5/Ag3/rudZ67E
         nr+ngiFLWjLooYQuxLipL7zHVL/1dYNVPSRkFctNUpUWXWPOHuW3cwIQ7AR4hPBMvL68
         wH6PA5nI6JVhQgOmC7iktd37V4fohx8qiZ8ueIUJZckWwcr06+nS9yWh9sztgCn2HX9R
         pijA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Os68XGDBUjifyLXJ9YoVcjf5m29kyGwpnUt6cu21Uo4=;
        b=0eCwQI5JHaXpGdwcz2bEAyWWD6TWu+oqttkuGHqQOAyD50SuJroc+0YBVRnWfpTbEB
         +eSQ3bSCX7vOaKntLRaf4Yac92Ya30njGbWOIE0iCqafK5z5qeF8WhTt7bSfALzbvIDe
         o/H00vIoJwkxCOp7mX+yYId3W5lIjOHrqedMLehsFZzfE5O0zgZFaab7VYyTqbNgo/hC
         p8/DLjReTvuECQ2UrMoIzHcupqmeykeuQyPsdWjS5C2trsbBijFJzaHPOXOSB//7ID8s
         LiKoZlMc0GgjqFEmJhcdwCqLp71mxTxlA0kBk3PUOUtbktghEQSOpClKyOoRhq0t4HlA
         rOxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WlD3m2Xz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id a4si181602pje.1.2020.02.18.20.54.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 20:54:32 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id v19so22562045oic.12
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 20:54:32 -0800 (PST)
X-Received: by 2002:aca:1204:: with SMTP id 4mr3613290ois.143.1582088071777;
        Tue, 18 Feb 2020 20:54:31 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c7sm288894otn.81.2020.02.18.20.54.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 20:54:31 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 0/6] Silence some instances of -Wtautological-compare and enable globally
Date: Tue, 18 Feb 2020 21:54:17 -0700
Message-Id: <20200219045423.54190-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WlD3m2Xz;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi everyone,

This patch series aims to silence some instances of clang's
-Wtautological-compare that are not problematic and enable it globally
for the kernel because it has a bunch of subwarnings that can find real
bugs in the kernel such as
https://lore.kernel.org/lkml/20200116222658.5285-1-natechancellor@gmail.com/
and https://bugs.llvm.org/show_bug.cgi?id=42666, which was specifically
requested by Dmitry.

The first patch adds a macro that casts the section variables to
unsigned long (uintptr_t), which silences the warning and adds
documentation.

Patches two through four silence the warning in the places I have
noticed it across all of my builds with -Werror, including arm, arm64,
and x86_64 defconfig/allmodconfig/allyesconfig. There might still be
more lurking but those will have to be teased out over time.

Patch six finally enables the warning, while leaving one of the
subwarnings disabled because it is rather noisy and somewhat pointless
for the kernel, where core kernel code is expected to build and run with
many different configurations where variable types can be different
sizes.

A slight meta comment: This is the first treewide patchset that I have
sent. I pray I did everything right but please let me know if I did not.
I assume someone like Andrew will pick this up with acks from everyone
but let me know if there is someone better.

Cheers,
Nathan

Nathan Chancellor (6):
  asm/sections: Add COMPARE_SECTIONS macro
  kernel/extable: Wrap section comparison in sort_main_extable with
    COMPARE_SECTIONS
  tracing: Wrap section comparison in tracer_alloc_buffers with
    COMPARE_SECTIONS
  dynamic_debug: Wrap section comparison in dynamic_debug_init with
    COMPARE_SECTIONS
  mm: kmemleak: Wrap section comparison in kmemleak_init with
    COMPARE_SECTIONS
  kbuild: Enable -Wtautological-compare

 Makefile                       | 3 +--
 include/asm-generic/sections.h | 7 +++++++
 kernel/extable.c               | 3 ++-
 kernel/trace/trace.c           | 2 +-
 lib/dynamic_debug.c            | 2 +-
 mm/kmemleak.c                  | 3 ++-
 6 files changed, 14 insertions(+), 6 deletions(-)


base-commit: 02815e777db630e3c183718cab73752b48a5053e
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219045423.54190-1-natechancellor%40gmail.com.
