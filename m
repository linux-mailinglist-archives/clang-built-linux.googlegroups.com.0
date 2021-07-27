Return-Path: <clang-built-linux+bncBDG5FNNX5ECBBW5IQCEAMGQE324P7KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB313D7836
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 16:12:44 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id bi11-20020a0565120e8bb029037d602924c2sf5666073lfb.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 07:12:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627395164; cv=pass;
        d=google.com; s=arc-20160816;
        b=DV6/FGJfctZBZWiGu3hnlEd5UHkhtBOBtbQTwwe8k1zfi8J6IX8PAiRIpuByDnbbRA
         MtR9CHEg4UP+5nONktYoqrLgoMZb1t+zT+YEZ+vz1NwcgOZJ+ptLcPUD/Y6u3XkPvCbu
         +Tv7OUjsTny9/zFwSGzSp6EHk1eRFA6jsOHNmDNSO/aovuqUtn6IjiWOsLNyKGZeFKI/
         j1z+gf7KmXAkY6PJJlwiIFfXc3kNjl2GTbjZoIZyrev3xTX6Yl5pUrnH+CjOY7uYmDQx
         NzYce/2ORQMvOYwmGg+mv9qK4/tXdfJulTGs4bj+XVAMRkiFJF6b+Wpl1XwNdJr7o5tT
         ZT5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:sender:dkim-signature;
        bh=NEHDNIyfpaHVfzU5EcDJlSQ/n5PBEhkRj3u7Y5fBk1I=;
        b=mNDjJDLeTrDWapA9wPgN2AtfOnr9+zbgcENw4YpA/lF9SffCJdKlCKEh/hXfqdn11M
         JEuv+hrE4Xuev+V6Gq/k7RpQ/LhqlziVfWm2A/UdOtuEItK2abwDErQY5mBhoBEZxn/c
         IVPpXRWvB0Bz8xaIxt2Y0jtgbqKVhAWkXbcv8jJtr7T6PP84M74HmOdBn+BY+ywOwlbj
         lsMBYKgESE8OL3rRZYrngVKPGMg2h0tVyRHahkyRPgwrk1Nfg8kCOn4vwGEJYv6EWNAj
         BBe4wv0qLQB0LBJFsKgc3VnHi2w2jiBwhYBg01zSO3/b4CXKH+3QV4OaDdoxN+5wiIch
         2rYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b=dZJmp177;
       spf=pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=pavo.banicevic@sartura.hr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NEHDNIyfpaHVfzU5EcDJlSQ/n5PBEhkRj3u7Y5fBk1I=;
        b=IhTY8C8Lm+uKMmeP+v1xuLaTj6ec/8iEpCHqrxQaZKdQ9T0ekf1WWGt4UqHzmzHqRh
         Av6D9A1I7PlV9vYbRnlLDTAt6NRCm6NPvt7tg8gUpn5kR+cOvlALj/4O7fnv/14a6BZl
         beigZC0KiW5z6ywYiqAWsAT196J/DIvN17200SxlBGDJRcGRU3IO8JmHERk/jQ81R8hM
         31BuVSMy4+KqjzNPJQuPnbxl198KNTdikgfvVEp8lpDRW01ato3/trzXbLY+lbW9ZIP7
         0FsvCBGbXOjApWECYILOjp8DfGbeuc+esq3cWmek9qxPRNyHTrVN8tUfcUNx5vt5P4Ew
         obpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NEHDNIyfpaHVfzU5EcDJlSQ/n5PBEhkRj3u7Y5fBk1I=;
        b=UTpkQ2sGV1b7Ye4M6GD6jY27hZg7gZ5k2AfHTbF/ykJa7pOusoi2sBCm4a9CfC2b2x
         pXPdBQ2d4H3+9x5dOdBiPSPqwzI9zzvcn+vi0jOZQHYQEHJ9NnUBSKMMwf/7R3aR+hFF
         xyqqohWDQFGJHaAkU8udGmdRRLTFnM5WVhKIjqo7k8h3pSQJjh91hfOe1HdqEg5E/ong
         6IM5r1Deu06U5PxeG3t9I0QjmQwg1DwqZtV4cwDMMP3Gvm4A+9rb5tnFbZ7hNyQY7kXC
         dFYy/A8ztEVJQHdEDwJwB8cjj4Dbu+ea3A6bZk3pFRXxRWXavMbaq7NKt3obm2fp0Wkp
         KdKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531YSAOqjTJFwSYgVvztQaPRMpjv4ffPveBPTNvZcvIAtZlflXni
	WCr7VEH039+VEQyxZeW1Gh0=
X-Google-Smtp-Source: ABdhPJyZbo7e4UebDQSEIW5QnJTz90vWLDyTwhMfnXN0eyIr2XaG9KWuDCGXuhL8IMB7mgiCbKDOCQ==
X-Received: by 2002:a2e:8110:: with SMTP id d16mr15808601ljg.42.1627395164112;
        Tue, 27 Jul 2021 07:12:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a7c4:: with SMTP id x4ls3364873ljp.8.gmail; Tue, 27 Jul
 2021 07:12:43 -0700 (PDT)
X-Received: by 2002:a2e:9e53:: with SMTP id g19mr16115400ljk.58.1627395162981;
        Tue, 27 Jul 2021 07:12:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627395162; cv=none;
        d=google.com; s=arc-20160816;
        b=H8y8ztjWVw4PWRWxke2LnyueRHobIrhRZbhVsNBcdZFFTst/CISk58QvUIfJ4rhV+y
         UmnDeT4m/KyNZassYLjf0SFSQMwiTZMXcx3ZTp46uuQKnix5Kdzsb54+NGaj/MBfMIPj
         Mhr7KXoFtgxfqimH1qJFbq3sKk05R2uqo8Ys03q4ZTQ9h5X5UBQHmTLXcWL+1iqBjgy+
         xy4AUPHScBgm+ojjwfaCWWGblnkAfyhkxwNCL73g260ejHaTFrhegFN1djGEkALvrwp5
         9N2RhJ/KXS6Y1ZDhtLwprdrLp6uxa5tekAu7r7H9SqkQH6059lB9oNXzep9+GOSzMi8p
         /G7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=qh2D1P9GbylvB9WoMcMMTns7dk4r496odHfS4e44Lvg=;
        b=ZTQgk8H4eW87tmJu5o5QQnEtbaYK9jBUmVy/q7aoBmULZGtFHqugA9uHNAs3B+09W4
         Mg2UGKtr33IGY6U2ba6u0onXzLdQ5aYNU8ea7Hb7lzPEJJLUe2Gx1QQ4dVf1VuCOEx6M
         zgiCucA9ZEXSHhQBLYdAyPs1mxieUWtzGMAfPXUdJ26wZIUrrY0vuz93nrhalBcP00sp
         JDfeOcHn9YHDaEmwex9JaAh3eh3TIH9SX1xLD+gFnGvj1MQO6t4nmc/C4mflYnjGY3hS
         5hz+Wppb9kjZ3xqFnavPjH7N/19iwE7zAxrvhpTv5K+FUWzz9AWOP+1lX66cW8BLSYMn
         UMjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b=dZJmp177;
       spf=pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=pavo.banicevic@sartura.hr
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com. [2a00:1450:4864:20::329])
        by gmr-mx.google.com with ESMTPS id d9si138150lji.3.2021.07.27.07.12.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 07:12:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of pavo.banicevic@sartura.hr designates 2a00:1450:4864:20::329 as permitted sender) client-ip=2a00:1450:4864:20::329;
Received: by mail-wm1-x329.google.com with SMTP id a192-20020a1c7fc90000b0290253b32e8796so1506954wmd.0
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 07:12:42 -0700 (PDT)
X-Received: by 2002:a05:600c:2907:: with SMTP id i7mr4369027wmd.184.1627395162452;
        Tue, 27 Jul 2021 07:12:42 -0700 (PDT)
Received: from localhost.localdomain ([89.18.44.40])
        by smtp.gmail.com with ESMTPSA id t1sm3403912wrm.42.2021.07.27.07.12.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 07:12:42 -0700 (PDT)
From: Pavo Banicevic <pavo.banicevic@sartura.hr>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	andrii@kernel.org,
	kafai@fb.com,
	songliubraving@fb.com,
	yhs@fb.com,
	john.fastabend@gmail.com,
	kpsingh@kernel.org,
	nathan@kernel.org,
	ndesaulniers@google.com,
	ivan.khoronzhuk@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	matt.redfearn@mips.com,
	mingo@kernel.org,
	dvlasenk@redhat.com,
	juraj.vijtiuk@sartura.hr,
	robert.marko@sartura.hr,
	luka.perkov@sartura.hr,
	jakov.petrina@sartura.hr
Subject: [PATCH 1/3] arm: include: asm: swab: mask rev16 instruction for clang
Date: Tue, 27 Jul 2021 16:11:17 +0200
Message-Id: <20210727141119.19812-2-pavo.banicevic@sartura.hr>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210727141119.19812-1-pavo.banicevic@sartura.hr>
References: <20210727141119.19812-1-pavo.banicevic@sartura.hr>
MIME-Version: 1.0
X-Original-Sender: pavo.banicevic@sartura.hr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623
 header.b=dZJmp177;       spf=pass (google.com: domain of pavo.banicevic@sartura.hr
 designates 2a00:1450:4864:20::329 as permitted sender) smtp.mailfrom=pavo.banicevic@sartura.hr
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

From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>

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
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727141119.19812-2-pavo.banicevic%40sartura.hr.
