Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUUSYKAAMGQEMDGXV2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC09304B32
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 22:27:47 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id u8sf12393654qvm.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 13:27:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611696466; cv=pass;
        d=google.com; s=arc-20160816;
        b=XPB+9NYXdjePIo/4vV55ml+dm6m81jgmcHRqkWMiarhrCT6adi0AmbTOy3SS8/IpBN
         fxmo0cPZ2QJq5V5prUXw65P3pqtuKaoYzH0/Ymy2wUSsuec1rZ8fMUmO+p2EHWZlnXbo
         voQkvlFs5GGVtcvuedemL00CLOk2iYjl6OdM0bZF5xLeumowQ/IoGfE1S2gRYsGKn1iR
         SW8asHw1PkWo2QfJjxVhXJrb7Vg3LoFFowABviSMC/1So1nRTgY3Jz06mJ9eqnS1felN
         x98OachkQ+rxBPzm/Aht4TfZmkXIUzRh71hgNLOW2v0Wk9qNT84bo3HBdBkPWO4LZhUR
         RoWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=bB6ZRZfRJIP2SoRU4EHuKJq0QfAPJjfHfv1bui9uZSI=;
        b=xH9dSxT4qe+KSRzqB+fcJ5hfn3pvbWK2M3bApBprHW66PIiGaSPm/cq7HGYIajPPPE
         7+YPLFzp0vqNs3TGYP9KcSWmE/BzbRWnUUiN0MVMTKhnVI94VgQ6ZlJVfnsfcOGCocTw
         R08ZEjFUP9uAbmYTXuQ2zeHMGtbRDu7wHdJoIcPjk7CeOu9hFncCnfhewmvsE9gUvOCz
         DYCdeRrVaZTbkD6cH3MWxJDNJ9cWqwfUZh8LHTOhHC2D9SuhRxGJl9Fv8svO+iG6FIyp
         QkFBTpW8raTvYMN+0KchDVG/Ro/GhDimVxQ9QPUk83eUX68ZA1Zcy4NwmPV8weDPqgJx
         pAOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TOjwruSn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bB6ZRZfRJIP2SoRU4EHuKJq0QfAPJjfHfv1bui9uZSI=;
        b=B6cxihj08UKKwsOqYwKlqd9SjYuqIkrJOhZDodNBQZvnnF42Qm95Tb+U5JoP9tSQWD
         dw0K3aP4YxT2V9medPOOzDXXJxoEkBbCoIfmhwvikdJt0SRdAWI4X1iln3x7sd8XEg6J
         +dW233X8/ZO4aDRUawKXI+5/0lQHXfGPT7QzBgJAzkh2+JDRwsMmWxkUN00eFkLX3o02
         +5H4z2rYokLwKBZx+z7qVVUXEkCrQZB+ut/AnWjTipc6VMw6qHko+Ln7+1SlVUE03eJ3
         p7zWZSkgAmGWcJ20AGC/u+pol1VRYKgsbDgng12EglplyBjVZys+/d7GffEsAnl8MVSL
         uyKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bB6ZRZfRJIP2SoRU4EHuKJq0QfAPJjfHfv1bui9uZSI=;
        b=DtKbPk7khVsAhjdfLCm9ftKIJRce/72qxXAxEapwzfrJUtDmmaGmc9PwaGWwhfeZqe
         1YUUktLeqcqjirmeX7/OZ/M1e7L2UWfpXbA/OFP/F8THWRhR/cRyBhI7PmXDdKQtc8JT
         hTSQiTR58QtafPiOy88surqIzsVXNKIH9aO6VpL9BFPLNYZDxMswLmDbysn6BOHCi072
         RYs1nLQ+LWTTpOe2gCSMLcD8RW/kHCtEIMGAaxz0+M5O49IKpKtWOMZ6QvWwAUtu2B+q
         6/bQZi5prqZh3B474BumWIUg9/dbI/D2rKaR/Zpt+R4evOTbfYniOBZJaCetaPD0Nted
         ZDOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Tu/fpMh91MemHXIu/WmPpCDRlD23F8Lvwoba0Z/mUX4bxKQyK
	T9Num3ySUJfzB/dlox04YVE=
X-Google-Smtp-Source: ABdhPJxma8uaAsrHQ16Uv7+xhEJkDK8rXi4RJJAcLThIE+oSZBmhG9lEvneEtEa+ZA3baPufpBwC5g==
X-Received: by 2002:a37:79c1:: with SMTP id u184mr7667772qkc.313.1611696466230;
        Tue, 26 Jan 2021 13:27:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3e81:: with SMTP id y1ls442397qtf.10.gmail; Tue, 26 Jan
 2021 13:27:45 -0800 (PST)
X-Received: by 2002:aed:2821:: with SMTP id r30mr7016639qtd.364.1611696465769;
        Tue, 26 Jan 2021 13:27:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611696465; cv=none;
        d=google.com; s=arc-20160816;
        b=uLm5f8Le/LQ5mAtNup4k7/LS8XX4SHJzAo5SV+HDlO/V8cl0iaYdTSiBJfdW3ij1io
         4Pwu40f3TZHBAK8TD5b4qVPe/vtNDIEW3rvv6RUIZGW8moU+k8s058pQlnOTTPsYBBKs
         GreC1y5gVgDFOxKbuZEj7U0bZ2gLwWb3rKQT/nDO39Z1RXg8FFiCT5hV9PPtcu1P+xm7
         1i300vw4QW8/Wj68yrm8QNar5kohpp7j9PVtBQQxA8+Iqzl7+7RZlazrd+wkDafYbkAA
         byA2Y/0j9c3kJhXO/D+Sf7wDmHZtXwH0yNz3qi1tOHke/TdWz5ybMGZSk+05clXJ6yZY
         PdoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=25rQX/rE7KuC0rJrJyEH8cZ6CyvJxDcSd4iDhFuV22o=;
        b=qS3qdhAcMRt59ZEPUKIln4sdY08rMboEF9zUnO0sSTRGaPZ6QWoddDzB3A0el9MmDi
         6FcIJOOca0Fc/vibEYk5+la7em0Ocln4H7QN+GMBBdm1hDzSAVGWhzAkUQvJoDeeIbfH
         ymTXRqyDCyGm1Vm51rI8pQGAr5nlm9SHulq1qufdaAPodS0ORwIt3qJf5FOHtnByQTmw
         LdnWy3pnSxhk2xG5qJfLIO4gMYMEB6OAi8Peo40xqhM8kUjoq0H4sX1Pfh8qmvkR5tLz
         dZa2j6VhucOQXHUJmQyEU1/s7eBwXDCA16OXgJGjHpsXMn5ahj3cBZbHBcA6arbj9EsG
         uoqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TOjwruSn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j40si4584qtk.2.2021.01.26.13.27.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Jan 2021 13:27:45 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 25982204EF;
	Tue, 26 Jan 2021 21:27:44 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] MAINTAINERS/.mailmap: Use my @kernel.org address
Date: Tue, 26 Jan 2021 14:27:30 -0700
Message-Id: <20210126212730.2097108-1-nathan@kernel.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TOjwruSn;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Use my @kernel.org for all points of contact so that I am always
accessible.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 .mailmap    | 1 +
 MAINTAINERS | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/.mailmap b/.mailmap
index b1ab0129c7d6..b25a44ab5ba6 100644
--- a/.mailmap
+++ b/.mailmap
@@ -247,6 +247,7 @@ Morten Welinder <welinder@anemone.rentec.com>
 Morten Welinder <welinder@darter.rentec.com>
 Morten Welinder <welinder@troll.com>
 Mythri P K <mythripk@ti.com>
+Nathan Chancellor <nathan@kernel.org> <natechancellor@gmail.com>
 Nguyen Anh Quynh <aquynh@gmail.com>
 Nicolas Ferre <nicolas.ferre@microchip.com> <nicolas.ferre@atmel.com>
 Nicolas Pitre <nico@fluxnic.net> <nicolas.pitre@linaro.org>
diff --git a/MAINTAINERS b/MAINTAINERS
index 992fe3b0900a..f9a360103daa 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4303,7 +4303,7 @@ S:	Maintained
 F:	.clang-format
 
 CLANG/LLVM BUILD SUPPORT
-M:	Nathan Chancellor <natechancellor@gmail.com>
+M:	Nathan Chancellor <nathan@kernel.org>
 M:	Nick Desaulniers <ndesaulniers@google.com>
 L:	clang-built-linux@googlegroups.com
 S:	Supported

base-commit: f8ad8187c3b536ee2b10502a8340c014204a1af0
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210126212730.2097108-1-nathan%40kernel.org.
