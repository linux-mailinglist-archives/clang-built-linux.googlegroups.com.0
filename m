Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCX7WLZAKGQENKFVF4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C881163C2D
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 05:54:36 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id ca1sf466311pjb.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 20:54:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582088074; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ryh3kQsfmlv9vCPQsN+AG0CN9wbIz4S7a81I1dHlDt4t1ZT8mvzPPDWAfnDY2tmxJo
         U17r7lDLx6fMYvCcmSGlZDC5xvJIXDxJ4mmQ3oSOazGsU+mGffFE6Gt/AAyln6ppK1Si
         eelHwrhsJok9SQHC9IuMCMwgRAeCphVFKBAyyQeUSLaZZl3St4Zv5p5HOVT6DwYKKs1S
         NNxLjd3nu/MHjnOOTCT8JlMdW7Yo+ma1yGakoLANH2ryVeH2xgBKBWafwZJrFhezOlHp
         42vEMAfIZDcffXaK2/Mo+WE7sFgdmk0VDGcJygihuDuOoIhStUSds6Jpl6uLvcID4Lzl
         qx0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=lsTIJ9TE0MREi9wTpg6E9+a0sjcd9G2FuVumPDA38HE=;
        b=gPxG//Tc5q9zxBfbTrRKDTgA0ElOQdYGDnwF4dqMm0ZuMGpXClaIzSGrrvjZtS/FRY
         eujPgaowIFW2I0DJz8vu8eIUYJmFreBmfNAP0++051jWReDk4q0ilBx75j4XOP+bQCQ4
         LofL9pkRcfHcQJBI5QK463wyO0vZZZGcg1xyM5yySX2TynXmDeotlGdBew6f2j6vUNeQ
         Rb9bMtM6B6gypUe+c2L3U4aSXNBhoUHvy+NRt20XaPLEEItlmX8llUxvbm6nnAZsjvrL
         WPTfsMlU9rmxg0VViUZsiqpCGO4tvi5CYC7Nhqnk7/59iRfTo27IOy3juVjSCo3Y5U13
         4mqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oJcPu03T;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lsTIJ9TE0MREi9wTpg6E9+a0sjcd9G2FuVumPDA38HE=;
        b=dpOApptEySOgGJ8XkjzLjECsC8nMbRZEdqXtx6wiskkqoqrM13LxMCD/8c3s2HaTuk
         MlggO8rrtuBxPeClsoTQ/00wtlj9cG0Vsn/AKoCDTclapI9rg2AIi8od4+bewbDNtFZb
         QcZTOIZOgTsCSG+YfwhkLTaoytZXgjyJnZ2AtLpH0nNtFpmCgnUiHvFvvLb7qLiGb8dN
         iTn4BjC0Gx1bvJyePeFTSkeaFbygfzOc2We0SHnAnKRVdW70u+jKzLZl5FicVwoOzYT9
         vWw7jHmKtZJxdQwl/LLBTLsTfd3mZ0tVU+ZEDhvvnUXmNrrNxJ1aTfqhK4QqfpyJbNZh
         A2IQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lsTIJ9TE0MREi9wTpg6E9+a0sjcd9G2FuVumPDA38HE=;
        b=ELltqu17JQWuGJtscOaq9TF/mj4G8rwO6YteOjAq5kpr3K9ej8Zjarr7vuLCc3HK3g
         4vvMmVanFZxrz1Liu4naoCouep/Z6reN0Q/Av8iQuu0QZ4I9gaoDL8NBceGkab32XTzq
         98Je8E/t/Q+Nzsz/Ba35yIbbtuxAiPN/8r7fV46ZT+bD0pXJKRp25LGCRBQKIwiQYauN
         DxmFEJEay02eae9kbXrBfc8SMbxUqpGs1gBksz6byBIlBcENummDvlpWn3NPdmVtDP8D
         VpIF6emV4RztlAbeVkblYgEVsS2I07d/n/86gyd0qF2mnHzNVdq8w34QbUjI29f9YJ8J
         Fjzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lsTIJ9TE0MREi9wTpg6E9+a0sjcd9G2FuVumPDA38HE=;
        b=g1lP3XKBvONLtgD8QHP4MzS6n+ob5hkeaIoukflGHTBqfvzZu4iIvt4M/JDwtZVsh5
         WbxNyaSXJD/y2vKqvhhpJ9LSD0VXLUMIrw+6PK9sjIdl5qBISLZ7J0tB1vXZ0MWeIQdu
         uxV1GtQwXZ3n68Go8bGkx0VQAv/2GuacbtNe+NpHZ2iK+zSbzGDt2BPnrFdJN5uzxSSm
         sSy3+Km5rZaY2N30r/6PLtX3f9sMaIm6XmN2g4+BJrYEu0HraKyolstqCzOfNwIfgUw4
         KjOKXnxu0WyfPwFBEuEh9VBYcIm29g1bBtdtAfvP9U4+Qhuc/LfFLcyOolbkfbfhsPUw
         n+NA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWmZNijZXF+ew96mreWfqGu4CH0OCSxzw4kTDTtkgAOvyqBOnsb
	l0++96W6ywxo4sw8N9QQjfw=
X-Google-Smtp-Source: APXvYqyT42u64h4UYOV9izVZIyw1i35BwRmvXRqffkS2FBJdvis7VeJRg4tX7O6EvfodeTK6LxZKNg==
X-Received: by 2002:a17:902:321:: with SMTP id 30mr25491728pld.130.1582088074678;
        Tue, 18 Feb 2020 20:54:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1bc6:: with SMTP id r6ls2382675pjr.1.canary-gmail;
 Tue, 18 Feb 2020 20:54:34 -0800 (PST)
X-Received: by 2002:a17:902:8486:: with SMTP id c6mr25100650plo.147.1582088074269;
        Tue, 18 Feb 2020 20:54:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582088074; cv=none;
        d=google.com; s=arc-20160816;
        b=yfZdxjiLPYZk/27FO1ldiW4+Nzl2g3/AtrPHOC7P5Rhwnqj3YKlm/xXn1Pl+WPM6D6
         Ddtrrn/qaZ+lHPwMv7Jv0J5pMXvMuCECOm/6lXN+aLjHjKyYdiBYq9UzcoFWD+scYiiY
         /ZCTR/Dj2MvuUR8RCeakrObmCX0u0UlpqDW+HhwoY1m9ASycfhMK/woeOiephuDGIFQC
         av9/oOki1PHz2opzNfxWCYJA7QqfNdlSACJxliBJWfppBU+EVm044xGu162JsIkWyMKp
         8i/xrk6k8dJGMTZm0q+mmi0s7hZls9tycvtWtBzs3IMfFkf+Q+G6mF1Qg0XS6gAbOrRr
         cpkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gB9HKBd9NE/ic7aLq2Zv7PAn+vedvEO6GTMd/7/cXT8=;
        b=h3jOcs/WFEqDazcBpFFEbG0vY38beVN9cV5pml19me4xPKM654699e/K2vbPqYJqdc
         hgc1B5hbiBDP/7J72bbBhZQy23VrJPZb8Y1k3OHr3f+Pg4VotuVouvAf09qha51aqjvJ
         AAn/LJU3zOWxgJ1U7ozn2CtSDwFAm7fIr3SrSOZikD9shzEmHjAJEVkm+hi7P6/B5uwO
         RgXgBCLoN+4v9sdprhq+MhWtsUoLv+zXU+8BfAS8OUFgMUpo2IFLAXkZCt7etDBGc11F
         qTMT2QbzQHFOaGrhaVY8ALas1FriylQ+ABHigfoKcW6xg/dmkgOes7Vz3/vLQoHCyI5o
         2OyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oJcPu03T;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id o9si41847pfp.0.2020.02.18.20.54.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 20:54:34 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id w6so12717912otk.0
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 20:54:34 -0800 (PST)
X-Received: by 2002:a9d:6b12:: with SMTP id g18mr17801067otp.211.1582088073480;
        Tue, 18 Feb 2020 20:54:33 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c7sm288894otn.81.2020.02.18.20.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 20:54:32 -0800 (PST)
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
Subject: [PATCH 2/6] kernel/extable: Wrap section comparison in sort_main_extable with COMPARE_SECTIONS
Date: Tue, 18 Feb 2020 21:54:19 -0700
Message-Id: <20200219045423.54190-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200219045423.54190-1-natechancellor@gmail.com>
References: <20200219045423.54190-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=oJcPu03T;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Clang warns:

../kernel/extable.c:37:52: warning: array comparison always evaluates to
a constant [-Wtautological-compare]
        if (main_extable_sort_needed && __stop___ex_table > __start___ex_table) {
                                                          ^
1 warning generated.

These are not true arrays, they are linker defined symbols, which are
just addresses so there is not a real issue here. Use the
COMPARE_SECTIONS macro to silence this warning by casting the linker
defined symbols to unsigned long, which keeps the logic the same.

Link: https://github.com/ClangBuiltLinux/linux/issues/765
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 kernel/extable.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/kernel/extable.c b/kernel/extable.c
index a0024f27d3a1..17bf4ccb9de9 100644
--- a/kernel/extable.c
+++ b/kernel/extable.c
@@ -34,7 +34,8 @@ u32 __initdata __visible main_extable_sort_needed = 1;
 /* Sort the kernel's built-in exception table */
 void __init sort_main_extable(void)
 {
-	if (main_extable_sort_needed && __stop___ex_table > __start___ex_table) {
+	if (main_extable_sort_needed &&
+	    COMPARE_SECTIONS(__stop___ex_table, >, __start___ex_table)) {
 		pr_notice("Sorting __ex_table...\n");
 		sort_extable(__start___ex_table, __stop___ex_table);
 	}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219045423.54190-3-natechancellor%40gmail.com.
