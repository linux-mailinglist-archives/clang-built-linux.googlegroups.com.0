Return-Path: <clang-built-linux+bncBD4PP5X5UEBRB54HXP6QKGQEQ7P5JVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id F38DF2B2296
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 18:35:51 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id n207sf3920005lfa.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 09:35:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605288951; cv=pass;
        d=google.com; s=arc-20160816;
        b=g+CC5zCVjZVaN8Ae3KGRUjlFRMZ2piS0XncVQ+XoPRkHg/aKIpb1Bre4kegb4lTPhp
         Z2kbbxa8WIIpRSTeBVpoMEH9YG/1fPFR6fXDij+1BPBweQE3sGiOsTWOosLCAzm8iJIX
         rzu1FgpaAGeRPDM/XRtO4Bm1gPoXWQ1b+HltJ9hKnzFkaNqqP//88tUuiXdPL26uSyBN
         RybCvu8cTDJn5M+z+oCZOHzZzV0MRAQ+7LeujX4IHT/GNvnpegiCpt/Ux4jvbSFu+q+B
         gV5R4+kQE9gSH3vZh4bvaCE9LNsMFJt9ItHeWuanpXF9hbmEQ91QwJyhh+BXmbhvjXsj
         9OOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5NrViLr0hQnxkBqRPgjzQNtQad/Du1x+27QmItAUFv8=;
        b=czASE1eSNm0OoRSdQLoiRGenz8XwEwQRaMiefWWdpmrNpIO0uI6r1hzvC781T1XjE2
         4Op2ccOj1DvjneJrgQvF8jAW9stW5UzQm+lp+IpA4DzYcnWl035QxJQrfuaFhzaM/mCd
         HFtNpOuwQ/1uGTgVhiV5co9ufYeRCt5CiG0cKwSvTCFSZEY1RSXLWv+SWnv0Q83agtjJ
         5Kj54ziaWHiAIH/GtFBDN/8gTRgYEoVw9YNeDXlps187KL7kd2ABNxrn57mPykSFY760
         964AoNg4E5Jss1cCy+iC976KpPOoAphdOR14zJuoQxr41W8najJshB2JqmQ/2uROMMqT
         qkKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5NrViLr0hQnxkBqRPgjzQNtQad/Du1x+27QmItAUFv8=;
        b=el9GuYjGBvCFatpE9cVmIpgkn1jveehxjLgKb7SX7wQ1z3/XSyfkxif8cTNk8PvKNu
         4094Wse/s0ABzLEHXPjaldOVBJ/Yr2c8YBcm/dntztZL3PT18/+6CE6UXC5jyw1BsBkw
         bl2Tw7pRADYJsFcRRDSDaXUrxr9HKKvqpNx/hcl+f4K66eBjdc9ZjlfCLC75RZ0oiAlg
         u3nYkLGBQ4dRqcgc4lMxbG0M1evLenVeL2HimdMAu232La/NsBhXabgydIv2taNE2xIa
         SjaVNoYfkAj+prin2PnWIF91DjefBcuCBlzSkbV6SheZCO3aLxsyAsyehTupLQ0KBLyp
         1asg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5NrViLr0hQnxkBqRPgjzQNtQad/Du1x+27QmItAUFv8=;
        b=f6GQQaSMHNg1qYUfiHiJR/vulRKXGZ9qd5F7dO2rUrb9AzX2Cap9inIxzLaw9Z2l14
         MzkJBf3m6EDbu+JlZsBniPP4Nh09HhuJ+N0q65n7InohnCJQ5ZPHAhpDrCYmyH6tuHXP
         Vu4ZPKPIp53OWSMudErojWAFOGDNn6L9o8bE8RqpZGDJGqHMxP/8i72A0BnGMT1q3a8p
         QzKs2s9qYpOaeCAc9sQLMUaHGKvzMSpVtcUXmzMoGizt/XRx6lE0WiUWwn8fN/cJYGNi
         huSHD57y8HmbbDRT2DXyGoqNYyv3SQ2kCIbkQrJUzQDInHGKVoMchLh/vexG7iUsGVUu
         qqcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530SDvBkMo75LGx0ZAJbUSI5/YkGPIX9SXOrrqkm7tPhC2ZVUkWE
	IONWjCne5hThh4C16gOZfBg=
X-Google-Smtp-Source: ABdhPJyjq5aEev40Vp4hlbcC50/tYQRk9JOGD/xAozpr5ezA9GkGTYly2eycHhJni/Ak9DvskDKH8A==
X-Received: by 2002:a2e:8792:: with SMTP id n18mr364707lji.57.1605288951548;
        Fri, 13 Nov 2020 09:35:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6b0b:: with SMTP id d11ls5084095lfa.1.gmail; Fri, 13 Nov
 2020 09:35:50 -0800 (PST)
X-Received: by 2002:ac2:5219:: with SMTP id a25mr1265586lfl.264.1605288950510;
        Fri, 13 Nov 2020 09:35:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605288950; cv=none;
        d=google.com; s=arc-20160816;
        b=jKDE60oM0TmbDBPKYoczS8X5DR2ip+55yFl8oAeHl+wRyt8RTlzK3q9dtD7X+VOm8a
         jEz2KXxyoQWDVHoYHudfjCQSl8BUxJ74xe/WqtwRV0VzxpqyO9N59F2AOoYcOFSyMkE6
         EXRBIIwP0VJ7/t1Bm8YnM4HG4TnixoNriwTSM5lPUkzWkTXE+NerOk/eIdpFJWAoqWhL
         0b+c4eK0S/2IM3Wzib2/1+TN4JDSUeYZiQt61isvLaBMPU+5MFmvZxrKzFdSqVCuESC6
         wOIRcCuc0uzYNdBJs35hIcNRIKdZ/61oA1h9H5mbI7rqz6/QJNGFwccp7jrEHk7H+U3i
         yztg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=e2i4E8Z0lT/iHz5vnqTIuv5SmOXDmLu7araDGVZmh/c=;
        b=rozY0W6PtDXY36EJmgl5qhhOhnBmQ2vVmssbqbTYT38JOpiYa4A+SRkEU+0EH94tjX
         Z8TUKdBtnb5UGv/Sd9I5kNzi6XtETjvnUWXxL+cHlZilWAMqs+7RFoACQyjFMEGjFHaX
         uye0KjdUxF9bkXhDebyGYFtT5/9RpdPeLIpJpsExyO4yWA1LRtMmxzDintQYTub+kb02
         RIeZG/6HCFVp9dH9+kXt1EzqtUtWbA4CJS36mqCxWD5mz9IS+uR/I6OKU/e4Xuydwzdb
         97iXwDmrSc+HmKSs3E2nFoCKk3gvuaHzrWO18BeZIPyg612EMmaATli9XukX8wNcWAy+
         D83A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id o185si314623lfa.12.2020.11.13.09.35.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Nov 2020 09:35:50 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id CB0F81F46B63
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	kernel@collabora.com,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
Date: Fri, 13 Nov 2020 19:37:22 +0200
Message-Id: <20201113173723.2078845-2-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201113173723.2078845-1-adrian.ratiu@collabora.com>
References: <20201113173723.2078845-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227
 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

From: Nathan Chancellor <natechancellor@gmail.com>

Drop warning because kernel now requires GCC >= v4.9 after
commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
and clarify that -ftree-vectorize now always needs enabling
for GCC by directly testing the presence of CONFIG_CC_IS_GCC.

Another reason to remove the warning is that Clang exposes
itself as GCC < 4.6 so it triggers the warning about GCC
which doesn't make much sense and risks misleading users.

As a side-note remark, -fttree-vectorize is on by default in
Clang, but it currently does not work (see linked issues).

Link: https://github.com/ClangBuiltLinux/linux/issues/496
Link: https://github.com/ClangBuiltLinux/linux/issues/503
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 arch/arm/lib/xor-neon.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
index b99dd8e1c93f..e1e76186ec23 100644
--- a/arch/arm/lib/xor-neon.c
+++ b/arch/arm/lib/xor-neon.c
@@ -19,15 +19,8 @@ MODULE_LICENSE("GPL");
  * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
  * NEON instructions.
  */
-#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
+#ifdef CONFIG_CC_IS_GCC
 #pragma GCC optimize "tree-vectorize"
-#else
-/*
- * While older versions of GCC do not generate incorrect code, they fail to
- * recognize the parallel nature of these functions, and emit plain ARM code,
- * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
- */
-#warning This code requires at least version 4.6 of GCC
 #endif
 
 #pragma GCC diagnostic ignored "-Wunused-variable"
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113173723.2078845-2-adrian.ratiu%40collabora.com.
