Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHXSTXXAKGQE3SQ6AOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D92F625A
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Nov 2019 03:42:39 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id r187sf9113827pfc.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Nov 2019 18:42:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573353758; cv=pass;
        d=google.com; s=arc-20160816;
        b=xhdOyRI++y1UDsUxwceaNLc4jQ5IDV6t7z1KZWU9mMdI2alsz8BlVH0/5rhilXt02P
         8jHrmxP7SrG2sLXPjlZjUOzhoqS5rrfohGB7djoN6pZdYNJe/5w9nEmLjJskQ8vgfDHH
         MYtvnoh6v2vggl7AnLbMMCcTdRlHQnS2VzxNIRUBD26woTduxypxGDHDcWS/D53+Kk3P
         336ajqQ4EhjnaxUTSsu+FGYPvxmJWUTZUotewra5/J6rjAaEB7jLv3B1GRN+ChqwyvbH
         JxdtGsxzO3M+FJfSveW9T0ed/aPTmqr2j2RZW8ny5/Fr35crTw+ppN7z2OUB74OHpcj8
         +Nrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=VoeOdJ9M1mF9PLK2W4rgLX5LTLxOKgb35swcyqc57ks=;
        b=rDHoWbtU7mLkmEzg10l8SZ01ANvE5SVKFJuk/HDeQnWmfWL1PnCoq7iKl3DjAAMkf9
         t71m/7vVwfShBEUAHwGPYfUhcPm2hNpMXULvNz+MBZMlyaqt0qRlqKvSt9OgYgbdZTFw
         4cF0WynecBEaYUpR5W3atOBMRqTdj7x+9NJHlQTKfi+Ls9VKNJh9rIjaudcwLoPSVrA7
         No3e5kGJxAVy8mSG+3JijLJgSXC/U/QJozTi4GCoG6k64mCzk/tJnBJo7EwL+DxaEZgD
         jWPxY4CBVJeadenDvbDFR0o+haQuXcSfS9AlTgcys1k1w/fGq07E451MJjwuJjJR+PZA
         BgNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EK7OGkIa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VoeOdJ9M1mF9PLK2W4rgLX5LTLxOKgb35swcyqc57ks=;
        b=hGjgoM7NDvo6zLrPQ0ZNWnjjIubq7ZmeS2Q7woX0lnwgWapTdQrvA21Lim9TNHyZab
         hbYjEI7R/HmDNEumchkZoReyIIb4pO9NYljugQSnseIwY3EfR5BlIhEhw5iXucGEW+1W
         FA8qJYCbpvuQ4WjV4nCiSbGZjVduztYQwThCCX2Sxe+YfNmPiIJiOFySjGeUfem2x33P
         WA2E7sy5pWWujTGGymjzvUbhvRXUd2fShRj69S9+E8Y8XQDSwf7/+AhC+ud8zBEli5nD
         k987z/f3wOAcs019RJXR0EDA1t9P8jVoD9FVfeWs8S4CRWj+yaqm+1ATxJmMHzaTdhIG
         FjQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VoeOdJ9M1mF9PLK2W4rgLX5LTLxOKgb35swcyqc57ks=;
        b=WvwX3TZ5pmXzNf7IQ6Sh1gDIdLXDs4Ap5bpWsXKWT6xc81Fj+J7bXfax701S9dzWTt
         j//SiL0qjL6aV7aWody+7mgD1/p0aGwIDbV+e6z2ezWVNRri5MYC/bu+JMd9JpvWoj0b
         WCWR18H4n8BFNtDfqqOhmzgef8F/kB81n41VRWniJKKzrYxuF8IUNhjSS1XJ0FtDzAeJ
         jdGrVbQT/Oo3+vh8DGtWpbVZz8dAzF8U/C1amA+Y8XPfLCmUJlMtBHQ76XWkmUd9HreL
         fq8FV/vbhSmSOZY7cwDQsDX9h3HNdK78hjFZrXOlWS5TDI/aCzPcRxR3qW0jM7UFKBLh
         IAZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXfbUvFjjAhuh313RWVETIow/TgaCiNHjQr+xJhkefyvIUSq4DX
	XfY1Bl90SsT77WKwUj0Qe8E=
X-Google-Smtp-Source: APXvYqzFLHIbzkGLDWXEWKJ7aFablRqSlShotWTKt38hi4WIJaS5G4vhlnymvYDeVDYEkK848r/NfQ==
X-Received: by 2002:aa7:9192:: with SMTP id x18mr22260136pfa.229.1573353758507;
        Sat, 09 Nov 2019 18:42:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a616:: with SMTP id u22ls484963plq.2.gmail; Sat, 09
 Nov 2019 18:42:38 -0800 (PST)
X-Received: by 2002:a17:90a:25aa:: with SMTP id k39mr25010151pje.123.1573353758171;
        Sat, 09 Nov 2019 18:42:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573353758; cv=none;
        d=google.com; s=arc-20160816;
        b=ufFGdTdHKy/LEmnlHWUVO/FfskxG9r/dDqXseRU1COv3XtmpwZgYMmnDkbYH4o/k3K
         j5yPpNhHAhjoBC7SVPuvk0kuXAkNQj50kILmOmgr9aU+JdSS433h/e/Bsuxxkln5Xp7a
         UlsAmwC2P3RGt/QjbXt7HSZWS+GVDM5eo/knnejKT1e8q3a5GXBfTcc4AdTyG5JX6HNt
         APBiJCjU+HV2WBWh3R7Fj8JHBm1MbYRlMoxiV32lVY60cApqhXkTdObjLYm+q3HmSwTI
         0XPyCaJ+yQgxMyz4MP7vQt6juicC6MNWHlMfr68rqN+THqcRa5G5648cg0mSqAB8/Wtr
         Nu1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=tqWIn7RXaSlu9+6S1R9/7J2bVRPemwhikP9i/YGrsoY=;
        b=ZA63rRUPIKTqoFGiOKKLjvTdwTCI03OFZo3OC038b2ymbFpg6AdDspRvMCib1tPInn
         dV2X7qySXLKlos/DhEWmW9xhT/v76xzPMisgYLHCqGTPGwdpGEAcHp176seuE6iN7EEh
         vVxD+kgZ1no9y8BcK2BxnZPXdqemEEj6HrcMWJAs9rFDjgcE4Y9ST52jV2pqyaydoSGk
         HAw/2CaxnibdMLozSdH+/I1V7YAD3qYCxrN3AVx0ZWZc7mHP+qKj0kQJS+iRVV8H+zcx
         nncjXnWqByo8dBuLIN/SQlS4rUeyfbQ18ZUZiRhiFp13dgo/ZPrOQmikBL6mZyAYjkUl
         Vvpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=EK7OGkIa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g15si591696plq.0.2019.11.09.18.42.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Nov 2019 18:42:38 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A2CA21850;
	Sun, 10 Nov 2019 02:42:37 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Stefan Agner <stefan@agner.ch>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 071/191] cpufeature: avoid warning when compiling with clang
Date: Sat,  9 Nov 2019 21:38:13 -0500
Message-Id: <20191110024013.29782-71-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191110024013.29782-1-sashal@kernel.org>
References: <20191110024013.29782-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=EK7OGkIa;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
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

From: Stefan Agner <stefan@agner.ch>

[ Upstream commit c785896b21dd8e156326ff660050b0074d3431df ]

The table id (second) argument to MODULE_DEVICE_TABLE is often
referenced otherwise. This is not the case for CPU features. This
leads to warnings when building the kernel with Clang:
  arch/arm/crypto/aes-ce-glue.c:450:1: warning: variable
    'cpu_feature_match_AES' is not needed and will not be emitted
    [-Wunneeded-internal-declaration]
  module_cpu_feature_match(AES, aes_init);
  ^

Avoid warnings by using __maybe_unused, similar to commit 1f318a8bafcf
("modules: mark __inittest/__exittest as __maybe_unused").

Fixes: 67bad2fdb754 ("cpu: add generic support for CPU feature based module autoloading")
Signed-off-by: Stefan Agner <stefan@agner.ch>
Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/cpufeature.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/cpufeature.h b/include/linux/cpufeature.h
index 986c06c88d814..84d3c81b59781 100644
--- a/include/linux/cpufeature.h
+++ b/include/linux/cpufeature.h
@@ -45,7 +45,7 @@
  * 'asm/cpufeature.h' of your favorite architecture.
  */
 #define module_cpu_feature_match(x, __initfunc)			\
-static struct cpu_feature const cpu_feature_match_ ## x[] =	\
+static struct cpu_feature const __maybe_unused cpu_feature_match_ ## x[] = \
 	{ { .feature = cpu_feature(x) }, { } };			\
 MODULE_DEVICE_TABLE(cpu, cpu_feature_match_ ## x);		\
 								\
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191110024013.29782-71-sashal%40kernel.org.
