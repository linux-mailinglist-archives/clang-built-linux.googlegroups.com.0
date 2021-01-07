Return-Path: <clang-built-linux+bncBAABBU7M3P7QKGQEZNEX35I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id F353B2ECF22
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 12:53:55 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id m20sf2571191wrh.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 03:53:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610020435; cv=pass;
        d=google.com; s=arc-20160816;
        b=wD+JjcUmiX5Bo41+8BLT/3Zo4W+kQT72qysV3iwQ6o2yb4HXayxMkpdiylCIZGZ9MQ
         Zx1kDTPK5uw9nN/8QL6e0EPWoIyU5ToSkuG4ad+KvZOaKV9iqVLgNHwxG1aT4SjvRiB7
         YVb9vKFKU3WgFB01hi9MxliKrJPxbaSGF16AkKe6ZIVr96WcC6tcFd7zEojy1GNWEuVM
         ngWnL2vusGMcYjKX0mpXICMeECDPVJVxAciS24Q8nkXN1w/rWoAKsNz2cNkv9hUuP4qn
         zRwwZXlCxnhqA4qZ+x3veO1VopuxfK6qMw7DQTLLaygyqRhNQF4fqN2WxhrX3Mp2BWsD
         vAyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=0QEQl/23SJPpmCAzRWwYA8JHWl73bNgafoaH+okjNdo=;
        b=gvyK4HFjeHVjMoW5YkdgxaOkLvfZQaKFruPU4oxqbdIeNsIm7DqI89nGdqFCEm2l6V
         JSHON4pQCgxaP/qNTPDUus7ltZejvEBUKRGSoTuoOVrbNYjLLykRG7AUMv0zo/7gS3EA
         hv+/wiw6yo87bUT1fc6gp7WZYhIN/hCwEmje2TH08oEqEA2+2zZDsG27lDU5jWKEedIc
         fmj2QVtfMQ87FU6IRwgki4Pbnbc94Q+6hN9UIAgsNfLVGjS/KUHxERwx4MXzx0eTE1+q
         7FRni/TDZJB5+/oPbFST0FDYLBd9omlMY5xLlMuPe130s2vaBI7ld6FBCnUgkW12rhaB
         uQ4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=i5uzE6dE;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0QEQl/23SJPpmCAzRWwYA8JHWl73bNgafoaH+okjNdo=;
        b=Y6BVnriLlvx/xwov/V4rr7NLNgzht4ngiGrNmvSwtn0Pz+qCSawNMBCPkRjV6EdAdz
         HXSNW9LcVz/8jey40bXnjq8kz7caFns7kBG1tVZCxB9rLRhYc/0nolfNsnTl4rwV3j58
         xUVDsEf9hxHLXL5xvWmDZHw37G6Vke0iqTe8tdxCPJVGtMLMhtNQ8ysBy+IE7FhoMlXR
         y7xpvarNH/qgddbz7WolxUGcsstBYYn44LhPHkMhFFNCPJhkNbKUAHkJvUnielqRGsvV
         x2y5Na+hDhwwABxv+vHEMW9TB3pe4O4tag9ktIvITa1snN0uCDTFdSu3hAjNEdSbIwXZ
         qNrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0QEQl/23SJPpmCAzRWwYA8JHWl73bNgafoaH+okjNdo=;
        b=dZet8Wn0ru/San9z9x6HwbTNtqpoBhHZYEr29c1uOKKYxd1h6iCtaRLXdIpY3JsX0c
         MZVzU3IW3VzQ/UlbpqNUAaIOebbcnnDeY/EJPENxLCrTXshjYfgxdNnJac+hUNj3TTX/
         UJbLN4UMoOyqK2e8Ukjk8Xy5vEhzywCxkoQcylWG7MATE0dVTfN6daM82DsBZZfJO6hS
         ag26FF1Whkxk0DviZWCz0N367lwjTvWi9SI7EuQ4pdFNbjeAPMcwgjP9pYqFf9sidnHy
         gca9Bi2qhlyVQugQ4asUX8GsfX7H4u3t/TcbEEWuEngHCk/+/mvaChJMVjG+BXsQ9ixK
         6Irw==
X-Gm-Message-State: AOAM532FxA6btKO+WiuKuKe55Qhh6UD1nWnzuDY+D7FrLWxO0UQE/Kq5
	M8yeqTPkmFck4D8rlGIf23Y=
X-Google-Smtp-Source: ABdhPJztKAZs0Q2DLvAGSlHpSglWpsbgmCTJ3gNXjucIDXEH9O8z9grOSaj1eAvpcWkmsD9IdEL+IQ==
X-Received: by 2002:a7b:c208:: with SMTP id x8mr7609914wmi.179.1610020435729;
        Thu, 07 Jan 2021 03:53:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1f8e:: with SMTP id f136ls2948679wmf.0.canary-gmail;
 Thu, 07 Jan 2021 03:53:55 -0800 (PST)
X-Received: by 2002:a1c:e90b:: with SMTP id q11mr7785404wmc.102.1610020435119;
        Thu, 07 Jan 2021 03:53:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610020435; cv=none;
        d=google.com; s=arc-20160816;
        b=nMDK7mYdeFw98pnPYLn5a0TV3ZuMxooaS+kLNcXIZVglvIH+W7HN1WU9alMiTVyAwt
         bmr4ftvbOPX28h+obw+cK14GUoQAO7AYUesJyEQrKNGsyhJquXGmsYxNEeswyKydkvnT
         u1o89wubQw7bG51CHLgdq2i8SWjb0PRuBO4pVVIVbXffPMwFM3dMKiyXVLD2igljjNqP
         77WBu81+ausdO80kcKcxsecimm+VKT2hcK3pTw1GUtJfbohZHg9PDbkAtvpC1su7G2dA
         Q4el4oUItPAbW3wnffzCaq8aJJwQ/x2kf6XADtuGYJ5FrGtNCGW2JXUM9E3vMog3nNAB
         VhnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=012vDHOxvqVPo52Yrh8ZCe0PscXXJoRaQmC+Qol94bs=;
        b=oVr6bPKlRDaoczXCw3b3pRLgo2pYr3UrdVyrVh15MnetbMjjmSa3D+uP8pJ5AN/5QU
         IZEeKN40a+0+ckw+rjx7z1rfcwqIt7Sd2+VhC/Dv+OWF9CWNGOW4L13IkHmqyZf1DB/K
         OTatd72yxMXWxRhND3+ldlXNJ0EuudpwD7LMEmoLBv73/Ceh1XAmWXvpBtrVmlr0gHvg
         7of58ZVhG9C5zjLJxhmz8Xq2/YQH8laBEK7ssrz+o3b1OMPgNAvgTWH2Z12pGYOQnEKx
         gIsfPWB+uVMQeOtYnwqFUm2T5FIvePOC12jRGnemmUcu57B3XQECdL/HeqeE0cS/7Ije
         zKnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=i5uzE6dE;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail2.protonmail.ch (mail2.protonmail.ch. [185.70.40.22])
        by gmr-mx.google.com with ESMTPS id 18si360174wmg.2.2021.01.07.03.53.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 03:53:55 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) client-ip=185.70.40.22;
Date: Thu, 07 Jan 2021 11:53:47 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v3 mips-next 2/7] MIPS: vmlinux.lds.S: add ".gnu.attributes" to DISCARDS
Message-ID: <20210107115329.281266-2-alobakin@pm.me>
In-Reply-To: <20210107115329.281266-1-alobakin@pm.me>
References: <20210107115120.281008-1-alobakin@pm.me> <20210107115329.281266-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=i5uzE6dE;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

Discard GNU attributes (MIPS FP type, GNU Hash etc.) at link time
as kernel doesn't use it at all.
Solves a dozen of the following ld warnings (one per every file):

mips-alpine-linux-musl-ld: warning: orphan section `.gnu.attributes'
from `arch/mips/kernel/head.o' being placed in section
`.gnu.attributes'
mips-alpine-linux-musl-ld: warning: orphan section `.gnu.attributes'
from `init/main.o' being placed in section `.gnu.attributes'

Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 arch/mips/kernel/vmlinux.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 83e27a181206..16468957cba2 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -221,6 +221,7 @@ SECTIONS
 		/* ABI crap starts here */
 		*(.MIPS.abiflags)
 		*(.MIPS.options)
+		*(.gnu.attributes)
 		*(.options)
 		*(.pdr)
 		*(.reginfo)
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107115329.281266-2-alobakin%40pm.me.
