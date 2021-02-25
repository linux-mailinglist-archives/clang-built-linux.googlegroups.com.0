Return-Path: <clang-built-linux+bncBAABBDUR32AQMGQERUZ4DTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id EB373324F10
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 12:22:55 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id y127sf932413vkc.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 03:22:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614252175; cv=pass;
        d=google.com; s=arc-20160816;
        b=mu6zjbY7gohQ2BhkfvtEwMUBrstsH6Tr7dB0a6eMONcstOUjvP4BQl4bCxY9mX07D3
         jN40/7TUCfdB50J6RPID0R+Sbnqm4+xga7ZcETIFg6ThtwXiaUYWeYMJDfD8pJT/IFH3
         gFs22Xdmw1i8T6JpblmS/w76Fqks8jBJFZpaeWi0fQy//uPc7hfZIBUM6zsInFxW46VZ
         nj5GV30qtOJX2rdI6oTYAkp1ohGsBU3oFK52wh5AcQp7Wd92djLKqNkFQ9NVjO8eCqM0
         7nc75l0N1UbagJAqqP+yFYUScG6AR1luf4JlB2TB/WSv8bvu8qLpCZHkbMQp/AJKWo8M
         eM/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=3L5uJ5Wbezz0mcDZgxIWgv/ZH1FE8779M88kvWpFa7M=;
        b=xwmdhjRGTo75DrOWk+2Fncoi1esofXoR5jkwfMZfR6vBy5YxHpdSMDEC2PGAmkFQy1
         eTpp+uAElx6tFJTS+dmPxxo1jieleWg5G0mja2BF5/Lv41jlZq/9AbjeO51XO4dWW7jZ
         gHaJKBId8WPUnO6/B4U9pL1uybhsEqDe/exNL8WinR72TRYPPMa11YU7Ku/3Kfk0o4xx
         Kf0kq7qGVuuwFVrhisuFp2ZsfgzAxVLc2rnDzeyrCI02kgvVfzQS9iV0rmSMHqsKJI4A
         qBQuyIxWTdsaRa9FaP0Q+yp3gI0RvZxc/GysQCh8buPcA7+MCWZVLgQwx25pBwqaMWR3
         3JNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i00dPO7Y;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3L5uJ5Wbezz0mcDZgxIWgv/ZH1FE8779M88kvWpFa7M=;
        b=TKiXVHqJKLQUkFOhL0tAr4s8QelynWLAHdcgQyyLHryE2cXrWtpHyzuLkiVTWNZELQ
         V4uPcUllbs1l5/aMSXS2BQdiBFhCwUpKHUK610sOpQ+Uyd7zasB0ThzXsh++ob9ozmUj
         7aNa67o7Ns4seltZJk4Cj75CG0B6wvE1MAiLotF0WpvmUkZRTHYa9QKXAyODqdWJoDvW
         LBSK7imxQlOnrfhOCUlVWvG+ADMzWlUsQPFbAzLyMsPHXU5iIz5uOn1H8g1nktwtwD52
         eDbg2vSpdb/pMiHTwDPu4wyBiSR/VFxyNmFkgHt2aaujOX1RZ1TQCAeZxpgbxg3ugE5a
         SVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3L5uJ5Wbezz0mcDZgxIWgv/ZH1FE8779M88kvWpFa7M=;
        b=igCdkw66ephsXSMuPN3BS5b2ycNkHUqh60oF49aT3/19+3buyn9y/1h+PGx+Juogg+
         lzZPR++KLWaK62KtA9ZcMZcbkbRHEvAeL4UDdMV15+rMF2YSG56JFYBBrZCd/yxlFGn1
         4NS32rTyZ6vpGsAdV8VMlTS5euwyzGjelicJW72Mh8OKAZGp0cQ0btBoTYbKfJoDM2Fh
         2YTq/XaK10VPOyWouWALA/xb1YIEzYaBcTCxGgOGOSz3OvqlFVMH1fXnur1JrK4qrcDG
         iRBxsRBOPMDrJHJMtLooop8++Ybvty4kB33quZHKUaXVe1mdKmJggvwVLsmtOwUihanp
         AnMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326tMIOxIdT8jBCMk9P+OTeJQ9agu5XFXrPpB4SLHudqj+2tBqs
	5FrYoQ5CfSg7BccvDWyH6Ws=
X-Google-Smtp-Source: ABdhPJzKZ1EaDfDdRZYo4EfiRHt6VOEdcbfeqjXNO1DZ5ym0o0/2ZcqLBwE2FcmSzQUAe1X63NiKdg==
X-Received: by 2002:a9f:2701:: with SMTP id a1mr1217978uaa.120.1614252175074;
        Thu, 25 Feb 2021 03:22:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:94c6:: with SMTP id w189ls38959vkd.0.gmail; Thu, 25 Feb
 2021 03:22:54 -0800 (PST)
X-Received: by 2002:a1f:27c1:: with SMTP id n184mr1015850vkn.9.1614252174692;
        Thu, 25 Feb 2021 03:22:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614252174; cv=none;
        d=google.com; s=arc-20160816;
        b=mWazQa+PVhqJjt8KeRdADgTgiR04gBlY0k5ADVFhIR47aS/8DHcByM/JKNqm78vrif
         kmLPou+siJ73c2bbIiTgSezEq/rlhzrdh3ktpqgj/DTBEoQAuAteEa2IOWWM4B0yjdtz
         TDZqtfxM7RXkWgfUMissb7lARghetN2+Wh01NiiM4gXjmade3nn9aWjZAQZQM4sq6X+c
         WFXTSsaIAPd4Kj+rwrgYN9qjWnEuzrxsfRKeKLO50z7cXq3bDLVO7B7fxca8z7Pzpxad
         YKSbeQssgC8vB1XuBi9ZNzKr4bbKU+UPJhhcjujMaVnckcthcSOom07J73fN6Gb5OBUS
         58Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KAInhMeE9InEy00F8vhH10dgMiL5/N0pYQnJ3KEQ6VI=;
        b=m1FXh5kH466rHqPWmodEHlZVixykN+pVHtjX7hJXGKuddLZJx5xnKQWTe6g6IPAVO6
         tZNgkU3yg8nfDfMzdDjVZSSW+k8rAa8pllSCBI6XlOrOwE88t6L1/Lliual0hthO43FB
         Rzdp5EmhmSTp7JY/qhoFjKe8mA+Bx7yHdVEvHYExBF1upO9EkqGL1xq2lkAb096kP/wq
         3+Wckh1hzkilMdCrFjxrhORdgayfJ0cRtURBv5Vbgu3XfrzzokWXa0x0RAmCZhEo0Xtn
         9+h5DRmPLtxNbKvw3V55mYzAjvcP3cFniCopcBERvOnJY2JXukTfkVP2pT4QqLHmdw9U
         Vo8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i00dPO7Y;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y127si245320vsc.0.2021.02.25.03.22.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 03:22:54 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ACF0D64EF5;
	Thu, 25 Feb 2021 11:22:50 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] x86: mark some mpspec inline functions as __init
Date: Thu, 25 Feb 2021 12:22:41 +0100
Message-Id: <20210225112247.2240389-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=i00dPO7Y;       spf=pass
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

clang-13 sometimes decides to not inline early_get_smp_config(),
which leads to a link-time warning:

WARNING: modpost: vmlinux.o(.text+0x838cc): Section mismatch in reference from the function early_get_smp_config() to the variable .init.data:x86_init
The function early_get_smp_config() references
the variable __initdata x86_init.
This is often because early_get_smp_config lacks a __initdata
annotation or the annotation of x86_init is wrong.

There are two other functions which may run into the same issue,
so mark all three as __init.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/x86/include/asm/mpspec.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/x86/include/asm/mpspec.h b/arch/x86/include/asm/mpspec.h
index e90ac7e9ae2c..b41066dbf5c2 100644
--- a/arch/x86/include/asm/mpspec.h
+++ b/arch/x86/include/asm/mpspec.h
@@ -49,17 +49,17 @@ extern int smp_found_config;
 # define smp_found_config 0
 #endif
 
-static inline void get_smp_config(void)
+static inline __init void get_smp_config(void)
 {
 	x86_init.mpparse.get_smp_config(0);
 }
 
-static inline void early_get_smp_config(void)
+static inline __init void early_get_smp_config(void)
 {
 	x86_init.mpparse.get_smp_config(1);
 }
 
-static inline void find_smp_config(void)
+static inline __init void find_smp_config(void)
 {
 	x86_init.mpparse.find_smp_config();
 }
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225112247.2240389-1-arnd%40kernel.org.
