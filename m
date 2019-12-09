Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNWRXLXQKGQEQHVFEWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 359E41176F7
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 21:04:08 +0100 (CET)
Received: by mail-pj1-x103e.google.com with SMTP id n89sf8508169pji.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 12:04:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575921846; cv=pass;
        d=google.com; s=arc-20160816;
        b=z2Di+VoyY3nu6lfg1mebOH3cFfaWcDIW32PQRlIQAGahhHBkLm3oXkMWxrnbbJ5WlL
         QSvtaLlcS6xbGA4Gi5PTCiuCM8+q7i/pW2BMoRZfuMc9umrsmBPzS+6WDSByGg6hDGBi
         zlzYiuzzQRlUeD0aR4JmPZCK3cGZXWlH8qD33fTv/HJxohtkz/eTT7wzzWS5I3wWX6ge
         DgZRyjutwTppGwz9t9UbBxQMVxOPYLH61LXgaazEPFmn7C+Qpt/b+riAjOmUJiv87mrz
         3ipUMVM4KgPhAB0061nCw+JxmhPnimYv5ckXUyThwoehjoLnUqZiQAxUwCRXEl5+JDD6
         00pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=nLl7AVRTDKqgIeAZcUhL9xMoF7Dr/RHa1Z0V/4pmOGU=;
        b=YCRkLTxphF4GSBR/rrZeSdScnsuqm0rK5xnLJWoO14HUIdCJtRjD7tv+lUV+JeBm6z
         gJen6aUXTLc/nrTq90F28jRAgPV75wuRT94NmH6bxOuKG1OWOIy8PPj0vUZH+Zwx1lsO
         LTK/j0p6rEINrWnEks/nv5pyIIYZqg/N04A9ZWKCfdvMuP5BBInLPD0K3bC1UmPrWils
         Y/4ug5EFJsbVjElMqtjiy6zTNMwIROB5IliglJGagK8Fm5eA2FFyfprU9RHIJBEn6Uac
         wUl/EEkDbyvC0ZG9qMsg5lhAZwdGcSAOiBY0yABV0tCuBHk8yfpYO157/MnT+XYpcisi
         hWJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T0jaTOd4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nLl7AVRTDKqgIeAZcUhL9xMoF7Dr/RHa1Z0V/4pmOGU=;
        b=BughgT75bnX6BEvU3MVaxCm30F49g45tp4oraNIvE2E4dPKM5s0JJtRIJno0kAMrc4
         xo82rGpkwgc6hu6xnUE0+xtOhev78QepBl7XnpWO4DrHU2GsBjIkb8tHGcLWWXwviFoH
         c/onUCil7g9bYNNCh5ID0Ety9GHpXJyswYBMq1M+/41LeOJIEMDUyVHptgmH5phuiAjR
         yFnrfHUxinCsYFXJVYrNUJR+UfYDB/lGCV4vrLZoyBGUaX1AutA+R8fcmiXUTaOJ8UZZ
         APBipNLxVbMmSs94mhAwlz/Ql5y+uHgn3vxXqdi2faD2YztIRdjRR5gRDcIM1fgb6hSS
         drwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nLl7AVRTDKqgIeAZcUhL9xMoF7Dr/RHa1Z0V/4pmOGU=;
        b=jeg/IMg9RIvrTbh4u7vg8JWVwMOZ/oCc9auNXgAXXP4eALFEIelgrgg5Xlube8s40v
         yCflhal0moK3Z2bP77rvB6/iH/2sEovGwG+k7kwNU5/3H7dVirzEcx2TYLlMpYVJiRKh
         8FoOh5sQvXCf30HrUBb3VbpMpMbL2l0ENg5HeHzPMSI+14JKsA1nd0uXvYd+7/jat/x+
         GXpH+d6A3MKuh8W3MDK1jXVwgZnG/HaJb046sWrO29h0nelVYj8EUpf9/UUNta/gf/0W
         otvnScl4/95wPNJq5wCv6YLE6HB95ThS+K5CI3t4ZRqQVeIduy/WKeICO+dFlO5gQiCd
         kBBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nLl7AVRTDKqgIeAZcUhL9xMoF7Dr/RHa1Z0V/4pmOGU=;
        b=XvqK+MT7GuFShaqxfv5hFPJ76lQBtVIdtuflUPwoiTGfSBbRwYEuYqGv0EI1dC7oIJ
         0VEyGm/qL7a6zzaxx98vtLQOpBRvUzi96ugF0dVB5VsVu3BS0CcgxL8lHirgbLVMR8O5
         80POsmF/CVE0S7L1b1buyNpnW+5ihgCgVpjWaY6WqHhnhyxyJCzzfQmvfmvGhWR4Xl3w
         8l93eydLMJyFvE8zsy+gxaVBg526IlE5ac6SpJ/vmjsCnbHcYlgBQjto5BEgyASIAqni
         qjUcDVzMezoay8+DyoE1uBlUKxmWIxruVCXALL68eMhXNe+zigrfDhHkrbVfBEUeJMtM
         mr6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXrcuvwP/ttlVOlW0VwX+CtJ6skhMOycX91RRhwK4GxCwD2zOGg
	p91xSR4UMVslS2UGobUnN1w=
X-Google-Smtp-Source: APXvYqxpdG3wg7nvbNa6QdjyNGu95yQF8mnnOJjIiPrwxtQk6KyqPwyzoQvOWUmmxwORp6U7+UxcbQ==
X-Received: by 2002:aa7:8753:: with SMTP id g19mr31638655pfo.40.1575921846272;
        Mon, 09 Dec 2019 12:04:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7b8e:: with SMTP id w136ls3105778pfc.11.gmail; Mon, 09
 Dec 2019 12:04:05 -0800 (PST)
X-Received: by 2002:a63:e4b:: with SMTP id 11mr13281681pgo.5.1575921845843;
        Mon, 09 Dec 2019 12:04:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575921845; cv=none;
        d=google.com; s=arc-20160816;
        b=b6WJngriqK1NYwFgVUKV3F1TNvoYTXdSavd+UqmPCGU+xBgSkSdNSNVOV05FrcCQcm
         dy2LF4Hwelmk2OQPuX65h7VD+v+tK8wzfyD0cGc6P2GbACFknQ6XGkzn16qbuANoe8fm
         VdjjEGa2fKc+4f2ZyXRdEbeFX4Yj56FyD7Vjq4+f0D97SHQRQxZJpZekXDqxgQnlbC8O
         IvgjBHwG9SVTSz0pTnb7Le+RZzNKdfMkiUpFBa5OC8bNrdHRznL9aK7DOpuwKgRn4DwN
         AI9C+kJBKMvQ+U1DwrIZLi+vh4CuMKzeUSnh/78kASaORk+0gldM0EKm6CsXuI+SySwK
         BzCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=G4lX5eJKbIc8x2MqyvzE/E7t4HYCVGzR2AGVHkKedOc=;
        b=zH+J08JdWZ/a7pdJ32788lDCCbnxkr5h1CHJlL4qkkT6MeGaF9do9K43AKcPP6AVjG
         6v4s6yUvV5eyIVdmqPORMmNYOvOjMO3/uy+1zW1wnwV9cqIZxmBfbIv6b/QMhIZoHCMS
         l639wt6BaCK74DAa9Gx78oy5MIRMUF2/J8LJtsTwKej3QKGfvphlNBgsfZQm6KWTTSIW
         H4YeXUmayAoRHK5npalman/Os5OGrRrut3F1IUjOJu5JamJKcP2jsldaEGPhHI6gfs0B
         VvX/EJfRrVditQzQC1QPib8u+oSZd+zqFeWNdSFwfAFcw0BkdcSEWXFb7Z8wPVrHpBfv
         qnrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T0jaTOd4;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id h18si43114plr.4.2019.12.09.12.04.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 12:04:05 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id b8so7545218oiy.5
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 12:04:05 -0800 (PST)
X-Received: by 2002:a05:6808:1c6:: with SMTP id x6mr789282oic.49.1575921844942;
        Mon, 09 Dec 2019 12:04:04 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m19sm326478otn.47.2019.12.09.12.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2019 12:04:04 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] powerpc/44x: Adjust indentation in ibm4xx_denali_fixup_memsize
Date: Mon,  9 Dec 2019 13:03:38 -0700
Message-Id: <20191209200338.12546-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=T0jaTOd4;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../arch/powerpc/boot/4xx.c:231:3: warning: misleading indentation;
statement is not part of the previous 'else' [-Wmisleading-indentation]
        val = SDRAM0_READ(DDR0_42);
        ^
../arch/powerpc/boot/4xx.c:227:2: note: previous statement is here
        else
        ^

This is because there is a space at the beginning of this line; remove
it so that the indentation is consistent according to the Linux kernel
coding style and clang no longer warns.

Fixes: d23f5099297c ("[POWERPC] 4xx: Adds decoding of 440SPE memory size to boot wrapper library")
Link: https://github.com/ClangBuiltLinux/linux/issues/780
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/powerpc/boot/4xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/boot/4xx.c b/arch/powerpc/boot/4xx.c
index 1699e9531552..00c4d843a023 100644
--- a/arch/powerpc/boot/4xx.c
+++ b/arch/powerpc/boot/4xx.c
@@ -228,7 +228,7 @@ void ibm4xx_denali_fixup_memsize(void)
 		dpath = 8; /* 64 bits */
 
 	/* get address pins (rows) */
- 	val = SDRAM0_READ(DDR0_42);
+	val = SDRAM0_READ(DDR0_42);
 
 	row = DDR_GET_VAL(val, DDR_APIN, DDR_APIN_SHIFT);
 	if (row > max_row)
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209200338.12546-1-natechancellor%40gmail.com.
