Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYPGU76QKGQE4IDJ5JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6582ACAC8
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 02:56:50 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id o17sf6811473ioo.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 17:56:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604973409; cv=pass;
        d=google.com; s=arc-20160816;
        b=PDBedjRksJosARGrgIlBOnGNoTPdcamMjLQnW6pwo83+p9Fexvae3Ad9fit+rmx/LU
         ViuZF0vM8ZwFqhgntQZheQhJ8ElaDXhlt+zds7tiC1OjpHm4HJokZoDnja/fN+8AX4WG
         qUIq77MoU05erhC9cBnUZ4XW4eN+cWuhkw6SU16T2bwpksc2B+/X4oeUjOyl2CE6LWvj
         Dg11lMzaUoGzeJy6SNa6dMfhPFlU6gRNtfBqdculcVcPlNkuk6EJhuQsz6gWr4D9WswD
         UZSjIxeHt5ilFSdy9GxIHDjqqOruYE2At7ylYgQz8r+CL3K0/I4w+FFlQH6jR5V7cXR7
         FpoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=BWwbEAAanqJx2lZdWpF+2CblP7pNrb1oTt5AE6alOtI=;
        b=RI0pY6C+E/zFgmrTMpWjns1paTNzWu9BtE7bRxcQ/8MrKR8qvtzU2eBTFKkop8lKLX
         q1paT1tyynDomCDpwD276kqvcwzaDC9PPEYu1oAYzrPdD/0E/okgn++Ibez+oPK508Sl
         ugy6nvAWsXW/5ssvEOLZXKDVOTmxHBYS7X9zlDLZEYxOapOsHVVVoXIyppvzZxx5Mfkg
         v1N47eVevjqA/uDs+zqFvfwtDATTtrPX6CPQSRFPHJXpp2zrOOKSVoFOQasC+KZFGhWz
         eXFcp3uByhED2nchNeIkw4dselyuBrnfAVE43y86WcrtEE7OTPT7uCe9+B6kDGLJ3/nq
         nsXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U9R6tKTe;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BWwbEAAanqJx2lZdWpF+2CblP7pNrb1oTt5AE6alOtI=;
        b=Ga2+FqH5k9xhVzSFXz6TtG3r0gqMZGBJvnd+jO//Q6npTLn+1XLeQYHbXoy4ue8Ick
         YEp/ERV71024afBdWgLy+7EmyiAFz2zcyHjFtbrt6iuJTquzbH75geYs340GM4ZDXYsP
         E7u4VSVanQbm8l4iG+s3Yy7w/WvK4k3WB49nuppU0lJ5ItnyiIZbCJvE0NeD9s8MWWc5
         vJ1Oh1rctGIwcTQm9dRhHMUcxyjPsdZcXSwKXc+iekOQav2a5I8ytuvN4KBv3CL0zDix
         2ibkb8xIfzKeOzUNnMQyGHoYYsnklHwr7MevaZ5eKmCUTUEfBCXfFJKV75PQdc6jsz5w
         tIBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BWwbEAAanqJx2lZdWpF+2CblP7pNrb1oTt5AE6alOtI=;
        b=ZfVa/fsaZpsL9Xcx4FoXozq5UT1ltbfS3Q7jxVRivKNB/gM+pEmM2pD7mY/mncy79R
         Xw6qLDVjWGhBKHzhoS370RqCS6Z1uj29g76GKqdNvciGumaXVPEPWNMjASKZ90etfMbj
         6cij90Rwbis9+Ktdpp7Y7uTNXTr7rd/XQytwsu6jgQs0xYsPAnWQG+8LAu9DUK/astPv
         JpaDoXn8wZD3h8MI9Nea6ilG5aIy3eQHTOgq091t2gZDNiRrF/HEzp5s5uCyOIwuGg4/
         V0jTzJun4R59/MvLL+9E4wbzZ7sHBvsjwPwLvylORMFkDmMJ2Kv4hKicXAQYNG2I4f+J
         7DHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BWwbEAAanqJx2lZdWpF+2CblP7pNrb1oTt5AE6alOtI=;
        b=fmuzoIK0sr6XrfWaeItU6Gbo2y9jR7NshFv0jvIyRuZ7CvrQBsDdi2XDztP+q00TaP
         d8Adn13F/iIZixUCv3MU2IL5OIbtn12pdaXxTEK83DoRqSHVp35n8oBWdqrxiGZ1E6qj
         J4Q9KvNlyc620odwPchKiSfMyUPwih/cGKpGsSvcVkXs28lqYKPL8SWI4IaokFUT/9FV
         R9PaWog1GhjbDvHqo2Og2Sjh08yEh/KE9b8pVY8EhVW3O+eiIWOYP8Y8mIW3Itd4R4GJ
         UZGSwtajbk3RCIMmmTN9jSM8C1a1DhShBBXLuP7dgYiCWWmje0DdQP9v7pOYnqaVaCvC
         A7fA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iWauXnQ28Y6dH0OxlAZJNLrVfcL2ny3V3+beM4SQ8WINGM7/d
	xdiu8Xt6QOW4mDT88uAoNXc=
X-Google-Smtp-Source: ABdhPJyLrWyPW5MhCbogtHCfvIjdHKSuxaj2u3euPyz9vv26OV7p0eheTfHTdIYqfiyD/ziTzfRWuA==
X-Received: by 2002:a05:6638:508:: with SMTP id i8mr13515100jar.5.1604973409579;
        Mon, 09 Nov 2020 17:56:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9a07:: with SMTP id t7ls2247177ili.8.gmail; Mon, 09 Nov
 2020 17:56:49 -0800 (PST)
X-Received: by 2002:a92:a1c8:: with SMTP id b69mr10266717ill.186.1604973409205;
        Mon, 09 Nov 2020 17:56:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604973409; cv=none;
        d=google.com; s=arc-20160816;
        b=Kf6k4pLhptG8Eg7Axq3FOEAbNukt4FMa8C4hF32Ehonwg3pCj82w4fAC0s69g0ZpFA
         QgHvc3yRaEDHcCojVbyu4vbnknP/ii32CNZysf/EJ5ciCFZQMRTQ4q96EiWrpF+2/xyN
         uqMFY7EE43IYsyK3n2ZwPrc11vatCnsysCtZ2oK6bJfGO7CLTv2UilDWKzZfXCpd8sjp
         FxzAA0JADTVKcfXwrt0ofA2sbqUQrhrjrbH+T9HQ3tYizfFHOabSwXMhrxDJMgbKYX98
         MZO5+9yW3Oc2f9Vkg3Pq19cCYFUJgbkhzn+icJOPCOXT/Tj4GbXIV3adSf7dP1WgHVZq
         9BhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KmPpcrRv/rJbh6BPWnrgFrN9eKGSiLpMRuP56+Xg5V0=;
        b=hASl7FAMl8yoB2mtrkAMWi0J/XH3UP9U8MULm6qORhhs8zsQa+kEShn+9zGuStGmLI
         1xeQTYEQwZKWefs6C+OjF4dI33AOnZDMLsCjm6+4NU+jc4pOohdraIIBAVezFTIaVUEC
         hi3q7YptuOolfH6ocng3IAKV8zdnNq38DSBxmlHA3RMomSGTi+8nKWgqrtsjn2VJLsv2
         FoaK30sZZERY23iM4JX3b5nT5RTDNWRpQikHlX4iCITTPo4kKnR7TGouxRo/rpSNGtjE
         oYydkEQDpYvEBw8A5+uporKDPXsGX86IDixUTdLBYnLSSc8/WHh78WKpOXeRxgu3T4L+
         bm5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U9R6tKTe;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id n9si183456iom.3.2020.11.09.17.56.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 17:56:49 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id z17so1459239qvy.11
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 17:56:49 -0800 (PST)
X-Received: by 2002:ad4:4e84:: with SMTP id dy4mr17625319qvb.47.1604973408723;
        Mon, 09 Nov 2020 17:56:48 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id z134sm7714086qka.21.2020.11.09.17.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 17:56:47 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Cc: Abbott Liu <liuwenliang@huawei.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jian Cai <jiancai@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mike Rapoport <rppt@linux.ibm.com>,
	Will Deacon <will@kernel.org>,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] ARM: Link with '-z norelro'
Date: Mon,  9 Nov 2020 18:56:32 -0700
Message-Id: <20201110015632.2509254-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <CAKwvOdmqEmPGqbkg9KpgXh+jG7aWtFVn16SCUxqANBYQPLhoXg@mail.gmail.com>
References: <CAKwvOdmqEmPGqbkg9KpgXh+jG7aWtFVn16SCUxqANBYQPLhoXg@mail.gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=U9R6tKTe;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When linking a multi_v7_defconfig + CONFIG_KASAN=y kernel with
LD=ld.lld, the following error occurs:

$ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LLVM=1 zImage
ld.lld: error: section: .exit.data is not contiguous with other relro sections

LLD defaults to '-z relro', which is unneeded for the kernel because
program headers are not used nor is there any position independent code
generation or linking for ARM. Add '-z norelro' to LDFLAGS_vmlinux to
avoid this error.

Link: https://github.com/ClangBuiltLinux/linux/issues/1189
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4d76eab2b22d..3c0a64cefe52 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -10,7 +10,7 @@
 #
 # Copyright (C) 1995-2001 by Russell King
 
-LDFLAGS_vmlinux	:= --no-undefined -X --pic-veneer
+LDFLAGS_vmlinux	:= --no-undefined -X --pic-veneer -z norelro
 ifeq ($(CONFIG_CPU_ENDIAN_BE8),y)
 LDFLAGS_vmlinux	+= --be8
 KBUILD_LDFLAGS_MODULE	+= --be8

base-commit: a0796429c6abecf8afaeb65b1db286af1fb579d1
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201110015632.2509254-1-natechancellor%40gmail.com.
