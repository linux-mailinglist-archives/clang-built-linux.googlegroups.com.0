Return-Path: <clang-built-linux+bncBAABBC4F7KCAMGQE5MO326A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id A2EC9380AF2
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 16:00:45 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id x2-20020a9d62820000b02902e4ff743c4csf13991974otk.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 07:00:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621000843; cv=pass;
        d=google.com; s=arc-20160816;
        b=RHH6K0NL5LjBITMw/YkKXY4zaAnJD4zt4GUR+HkES03P6pwrntiQqbTqk3KCf4BtYJ
         RgfctXOC9eKd4j3mpBVp8ldsn7jdnu0gENeVrEhWMZ3Y9LSFkMZIgXuUXK1AC+AuY3eu
         849D1deIfrV2OOc3GBpA+baXMEot86bXRfF+6mVcZ59ws5vTwY1BgyFCD37/pBSD1gtB
         UtynFPz7dMuCjCZ6ukrgZm4GoIJaY063pABJB1WTYEirClNJ10ajxa964RU1R5Zmpy46
         m9T8Bqoihl8A4wrgQ/OhQFXEnjhWFtQojhsxFT4kt7xcKZe3QtW0PkleA8ILDAuPV3RV
         CnVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=yluIyBl3qWoRZ2nVECB4hG7ZLLcA6+dCkNsT9hahDvo=;
        b=ie/SLdumHTujFJckYOvUIEqrUMM0p04tIh0RPbmUEdjck55V+zQ/dshRWmmbinZRsJ
         pc4WNmYGTSINi4CNIJvgN58jthQAR7/i1qsaphRXJH2Tu0/LLyHaBGY3sjkREqv8Zag4
         B+OXVRfPahsSfFIwRuJJ2UUEIqqTOQ5PSaZuH49A4Xl+GXFIKmwWFbjPUxwuZZ5jWjSK
         5/436yiYj1PN9KOXCC0W3bH5sHoI5tr10ciGs2DbtST7Fba4jGWHjoDbS7VxBs/YMXI8
         Ptdtkf+0t9G9L10vMRrsOaX6fqWReR6y8X+sEVhvnZgK0Ie1J9P/FYPw4iMe0UtwRhxR
         iwbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TrZQ1cvC;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yluIyBl3qWoRZ2nVECB4hG7ZLLcA6+dCkNsT9hahDvo=;
        b=NbS5tTbhz2KCSqdowRA/epIts9kmZCCt/SxUF6GPAoXGynZbfWfcLNMXK6BYLroOay
         kJAg3n8MvzMwDYEMzyeiX8rb7ERUp0ohc1E/dSOLF1B3ymgW2G1gwD5MBOgvbav7q3xC
         tNo1/U7R/PrKMyY+r+CxEHCS68UL2qZL4+pTBgn3F4o/YJUR+iJvgeJAAt+R010vc2cg
         dM2ARVGM4lUKWEhf5dHS724MlgqRHHP3s/mG12P0G7rdtTQahEQOXVmbp20c/K24FzAd
         75DcoZV6avwpZy6FPUkRYrkFgpqXlenQ43iGmXNlT2/4Annt3RTx98d4HNmmXd2EsrPK
         Rlvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yluIyBl3qWoRZ2nVECB4hG7ZLLcA6+dCkNsT9hahDvo=;
        b=Mbk8Z4Rk8QhhIW8vE1GRqrFP5GV5bFS0X/daF/roUxA6J8BkI176Cpy4TG+tUJ+f2c
         aGFhh0Yp9ybG9Bwv/mTWgo7Vj3xFbiTM7X43QloDd12rbo3cJ6vSUzpLy1OrOViQ9KTr
         4ocVqR7B+VcdKT1imHTvvlFd420TMqvFn1fhd9jJq9fx5haOubVLqGhOvms5nH7KBjQ7
         z4Z4/FiO03YPv5jMdGNX2fOQLPQ//h5PM/BxykJLn0DexMWCMKWcaXY8M1J6pFuDzLHM
         cKBqY8Qcs6Lb98bFOsmAsQul5SyThWi6WG2Wi8Nh46dP4dShmt4FX9UUO+VeJ4366MJP
         8htA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530F/YcuiDefKdCCdTtVIr2fmAUXjsi9nqVa7iRFSy2w+LUsqpWP
	8VPHIDya/E6mdTdJ+jqvqd0=
X-Google-Smtp-Source: ABdhPJw8+vj7BOw2kinFn9NVnFA1nyYSubmWOit6yDh2tj4jC1Zxx7kRP9p4Qi8yJkPDVM4N5NGE5A==
X-Received: by 2002:a9d:4115:: with SMTP id o21mr40177791ote.52.1621000843477;
        Fri, 14 May 2021 07:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7b46:: with SMTP id f6ls2610100oto.2.gmail; Fri, 14 May
 2021 07:00:42 -0700 (PDT)
X-Received: by 2002:a9d:c64:: with SMTP id 91mr15852604otr.130.1621000842839;
        Fri, 14 May 2021 07:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621000842; cv=none;
        d=google.com; s=arc-20160816;
        b=xt2mFEBpcATUn+G4ExdZrw2lCylNTfq8eOmZ+DVQDDwFnvw+XVlqMrYhaWxuHPLi+G
         Re52Ho+p8J5LZ3m3Z3rOULHVIkShXA6NrL/le4StcghGJLKxOogNpDTdrH/SH7CstaUV
         4EjMIUA3iZUk4+H1jka9aU0zltiYfu1ZXt4EX4qNvXovlws/q6sTHITVoHeK+TM6vzBO
         25B03lK6UjhggCp91hxn4SbwV1fkeb/Jcw7Q8dEeAuSsFKm5cU8yyf5pF5yuYveIyU2I
         LEE6NzMm0n/BIAuW6wYWKdEu//Ztpw4v9G7Y5xWH2ogtZ72e53A90qARVJPWYN3oIIXj
         jALw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=CTnTBqRuc3lyLGEf5emBKvPR1WhrNPfm7mAqvVaf7UM=;
        b=C9xKB+hhcSHWfhqEjD2vcVxqZzLMCuPc2qRPUQphdkfKSY5HnFbYVY642j4B8Jlcmb
         rhRUmV/bFR8Ez1+niwOlwBe038OEApy2g6vbjv2c9qEG572Cd2ckmtNOJnDFIhoY87/F
         p3EI05RKZMYAW856PqQ+9o7Ez1YfFiFLCkpQVQieWyVEdHqvn8EIyzz3Or7WaLgBbsoA
         HU4CfjoEDYIaGg11XdoAXI9DmiGrYrHQm5WSSLnoNHsFNk96NpRq0SVf6R4NGDrpMoIu
         HfVF9FkxfrTWlGEwLZ4Rmg4Gwb5iLwPcLBvvvOIX2NXOhXv/EjB1aKf2i+LWDRcX/+j1
         oM9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TrZQ1cvC;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x16si583679otr.5.2021.05.14.07.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 07:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3380D6101A;
	Fri, 14 May 2021 14:00:40 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	David Hildenbrand <david@redhat.com>,
	Wei Yang <richard.weiyang@linux.alibaba.com>,
	Dan Williams <dan.j.williams@intel.com>,
	linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] mm/shuffle: fix section mismatch warning
Date: Fri, 14 May 2021 15:59:48 +0200
Message-Id: <20210514135952.2928094-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TrZQ1cvC;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

clang sometimes decides not to inline shuffle_zone(), but it calls
a __meminit function. Without the extra __meminit annotation we get
this warning:

WARNING: modpost: vmlinux.o(.text+0x2a86d4): Section mismatch in reference from the function shuffle_zone() to the function .meminit.text:__shuffle_zone()
The function shuffle_zone() references
the function __meminit __shuffle_zone().
This is often because shuffle_zone lacks a __meminit
annotation or the annotation of __shuffle_zone is wrong.

shuffle_free_memory() did not show the same problem in my tests, but
it could happen in theory as well, so mark both as __meminit.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 mm/shuffle.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/mm/shuffle.h b/mm/shuffle.h
index 71b784f0b7c3..cec62984f7d3 100644
--- a/mm/shuffle.h
+++ b/mm/shuffle.h
@@ -10,7 +10,7 @@
 DECLARE_STATIC_KEY_FALSE(page_alloc_shuffle_key);
 extern void __shuffle_free_memory(pg_data_t *pgdat);
 extern bool shuffle_pick_tail(void);
-static inline void shuffle_free_memory(pg_data_t *pgdat)
+static inline void __meminit shuffle_free_memory(pg_data_t *pgdat)
 {
 	if (!static_branch_unlikely(&page_alloc_shuffle_key))
 		return;
@@ -18,7 +18,7 @@ static inline void shuffle_free_memory(pg_data_t *pgdat)
 }
 
 extern void __shuffle_zone(struct zone *z);
-static inline void shuffle_zone(struct zone *z)
+static inline void __meminit shuffle_zone(struct zone *z)
 {
 	if (!static_branch_unlikely(&page_alloc_shuffle_key))
 		return;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514135952.2928094-1-arnd%40kernel.org.
