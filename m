Return-Path: <clang-built-linux+bncBDSIZNM7U4BRB3PFUHVQKGQEEPBIRKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B868A2BBB
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:50:54 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id w193sf1122433lff.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 17:50:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567126253; cv=pass;
        d=google.com; s=arc-20160816;
        b=qVpPYQDozBeDv1wFiEB5uFIONh7Ejx0eEYGZd/rtAIKvO8vQFrkx+qx4YxXvYnmw8B
         PlrGxMqcSgeLD54irU/3+BYKsFlZqpismdkwzNRxO6023pC5LZoIsMpjGNhc0tEcB/Nj
         2uINCywHxKhfVZ4DjdfKsrIuH9Gi8ebqKOI9ynvXj0ghy41tqTFj+vEecf/j0H5O468t
         lMQAYNsvYCjyuJNU5NYXuwB6L4rv09MlwJ024I8zOxWdHEAI8ShfI/NFcPZ8AP5KRyRU
         lySLRHH/wlTb3RE/qIWvWbauWSRQnO64+Phmi1OVOFtxgsW1JmSHeihOscTyK1Jsdqpn
         vDrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=jEkqH7tyDmd1tkX50AHXW5yhwTy3v0ENwibSgsks+WA=;
        b=fuboRuE2sCSV82+BU2RYCpMTH1Vz0B3AXvlqKKfZtpFWAV3ntzrkHqTAHQDixshWkr
         P/9Hh2AoeeWJ9//35/Rv4myDEokNlsnhTi9oyVtFE1XrALiTiOdY6FVkEqDbmTh00CzM
         nqAKWD2cfLO+RwCvEVNx+aeEiilj91Jtl3X9uwlcjNEJeKKkALUqjKWV8NjbCJ3rie7i
         TePtxy9o2+opazZwRJBnD8wx5StMEWhF1NFwXDMM3UI75EkLx31LV3SgdhYkx/VRSpg0
         Nr9CQPIOEMT2kPfhGJXzi0bnUdiDlv2s2O7s5kgaCFh8oLiiDus5oYyXcDpDv7dCONOi
         nQ2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=p+c78cGO;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jEkqH7tyDmd1tkX50AHXW5yhwTy3v0ENwibSgsks+WA=;
        b=llhdnWMa3ktHIEMx8RAkhkS1wl6W2rGVqoYDpDmHQlwLBZ1YnXn3ZkHavBmB/576AL
         zXAUWlo23oDiacjLU1BMwxPXczsx+k7xWjsRB+4k3Xo/KfHL5B43bHxi4Rqr8w/kS4dF
         up07438w+rojzdXqIafT2av79RNMZyP4hxdlnoMhVGk3EmG0XwBkPINuyIVarzqcM+ll
         3kXNbcetl6m+RdcgBzs4DQUPWcJ3Otw75w4Xp8Oja6hX1ieBsJvvRf6RY36efkyAximc
         0LPzqAIpCqFnGKbsCtdhV7SX1+ddHkaTlmwkuBVpA88DnYwOBIMYGOjuKCwnD3w4H3Q8
         th4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jEkqH7tyDmd1tkX50AHXW5yhwTy3v0ENwibSgsks+WA=;
        b=fo2Ug7m+Ao3ISbXe8JhQWfeCEkkMha9MPOCXyu7PYMPsnA3Ypf9Ghx8MsgskTQ0byO
         qqMGLmbmhvL0m3/aeT4zMi0yKxP3M2zvM018H3Fs6fovWSx8ZqML3cpwzNwbOs16SKsA
         abNM2L9A9987lVo6wLWQxSIN8xIigHezWOeLa9zHjDasTU8rbTSgxFQJxlLR1x8aHRK/
         p6/fyPbi2ZcaywjNgrzGWtGNXPxZGE5jc14bEufoi1FoyX1UZexCijtFBxEMdFhutdKD
         tuupTdWjhiuiE2JBYqysNb/rUQGwfWfD/norzyd1ntIxlZNHS8V2VAEltcIOLf3QH8qC
         eNqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUg7mtCgCndIhweR3pYWG7yjt9pAn/exNHn1ONiCuEsr+DDDBtM
	G4FeRypn+cqBn6oWDlknfFk=
X-Google-Smtp-Source: APXvYqwZDl2x0cSCVigbTYD5Xd2gUBOv4JgIuaGPp2QZpKTmtk+QqK7T+/DazQvcIDrHqqdATulVVA==
X-Received: by 2002:a19:ed17:: with SMTP id y23mr6371349lfy.175.1567126253799;
        Thu, 29 Aug 2019 17:50:53 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:860d:: with SMTP id a13ls517934lji.4.gmail; Thu, 29 Aug
 2019 17:50:53 -0700 (PDT)
X-Received: by 2002:a2e:9f02:: with SMTP id u2mr7121093ljk.4.1567126253377;
        Thu, 29 Aug 2019 17:50:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567126253; cv=none;
        d=google.com; s=arc-20160816;
        b=g3Zmdh0wHp6Ek6IsXy3cVJDcQ4xlZukUJYNGYBtZ9BPJ1nV3u6w7ybEkRlSKA8Lveu
         E9BJdQnBVErTR4kck8F/JhSb+Ae/3nFpMksy2sNsGLtnci8Xy3n273kQYbTJv2oI1p37
         SyeI4YLC8MbjsP943F0cVpXBj3ykqRzXg0vboGWgWoWlz/AehAQRUh1Aqv1w7RKytsQF
         oav5QfwMAGbeMr7O5hrbie/vTDBHDMf41O1gLfiDyW4/xPeqmbymmYD0VlTXstoLgUjS
         LioGxkYpdfUiPBtALPOHI971sI1iLR66bmST0WtU/bVDZ0rjZBRwv1dWqcxCf/QEZu2j
         0btg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=rseUd9y/GnXjRY8PsudxS8BEzI5o7BH/gE6GzGNAkz0=;
        b=SPPZ/f1GZ41Ru93hXUe21KaAn8MRdSehC2pHFDviJDs3h509Ma0rqwB2Lr3Of1CKiK
         5xXfufKKlP3YlcyhlKIwrwXFb+T6Q3DXLFjgUk6lgDm2SlDF5KUJDe/sQxMsPy0OT1sa
         Y57K1unhiItt+uLgMgOTzNIeStjvF81gbQ4LlVCo5AAFYs5/hkGH4BhKrtnFwGYsDv0H
         nv9YjxESvNBgGUmE6J0FaU9DEVUMivEzy7J5e3TN77+Div+bDHKr7K6GykCgHwtbfrMH
         0P5SAwVcA1jQZiX96N/xbzXnICH5s2U5JNE/xVdM6eP6EXd/qGeljYe5cmtzF6eOqXH7
         /q6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=p+c78cGO;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id m20si196465lfh.1.2019.08.29.17.50.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 17:50:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id g9so4001739lfb.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 17:50:53 -0700 (PDT)
X-Received: by 2002:a19:e04f:: with SMTP id g15mr7384740lfj.46.1567126253185;
        Thu, 29 Aug 2019 17:50:53 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 17:50:52 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH RFC bpf-next 09/10] arm: include: asm: swab: mask rev16 instruction for clang
Date: Fri, 30 Aug 2019 03:50:36 +0300
Message-Id: <20190830005037.24004-10-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=p+c78cGO;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

The samples/bpf with clang -emit-llvm reuses linux headers to build
bpf samples, and this w/a only for samples (samples/bpf/Makefile
CLANG-bpf).

It allows to build samples/bpf for arm bpf using clang.
In another way clang -emit-llvm generates errors like:

CLANG-bpf  samples/bpf/tc_l2_redirect_kern.o
<inline asm>:1:2: error: invalid register/token name
rev16 r3, r0

This decision is arguable, probably there is another way, but
it doesn't have impact on samples/bpf, so it's easier just ignore
it for clang, at least for now.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 arch/arm/include/asm/swab.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/include/asm/swab.h b/arch/arm/include/asm/swab.h
index c6051823048b..a9fd9cd33d5e 100644
--- a/arch/arm/include/asm/swab.h
+++ b/arch/arm/include/asm/swab.h
@@ -25,8 +25,11 @@ static inline __attribute_const__ __u32 __arch_swahb32(__u32 x)
 	__asm__ ("rev16 %0, %1" : "=r" (x) : "r" (x));
 	return x;
 }
+
+#ifndef __clang__
 #define __arch_swahb32 __arch_swahb32
 #define __arch_swab16(x) ((__u16)__arch_swahb32(x))
+#endif
 
 static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
 {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830005037.24004-10-ivan.khoronzhuk%40linaro.org.
