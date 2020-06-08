Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB3MK7P3AKGQETJBNG4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6F91F22A3
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:10:38 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id s90sf23045991ybi.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:10:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591657837; cv=pass;
        d=google.com; s=arc-20160816;
        b=pLuQx7eV21q6q4NKDuF9TanhJGtGGPiVo1D3pc2VS7IoXMf9O3iM4zq94poLIGQ2in
         8CjjS4wCcy10PLTVvqMBgz5uit8ok2sCTeOtki+xexi/l624MXyQSgL3TvW38t9rs9AM
         O1Jgh7jYa9IdMH9FVSVGTEtH//tYcZuAjAyYPhGBk/236dsymRZPi5b44sx/Ahx+6zzP
         f52nL7QJrMjYs+Qgr6OGC1F/dNXIdXU4EpMUdR3iZs89INNXCBfZr9hUvVYS38T5bzri
         /6u6idVwdSIDJ/hH/v7+qhg+Gh1a/x7KANA2Y7PAnhbdux6WkFNwFYWm4ZxCz35iUFyI
         bNcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4w4tNbrR0rvNXhHKCR/MogyYQIb7pKUH+orJvXBxzLA=;
        b=bisE6+Kakp78WZF+0gOsc0g2YuONwXA2hCJeXDIv1gRB6pufnqXNv+EAIKyRZAT5bw
         iCfxmI4j97FSjLnHUsKEcofilLt3Et/vcp/hrlnewIGSI/EFmzYWKtNV9FFOnB65Ju5K
         26lsaumd5SEfFRPOpGaHfGQgODpxHqH7/v2eF3uz0NvmI2p8XTSVDJ/LmC7OB6Q9rCta
         QYy0INpS6cnBF0M4On39WF2Hy67ohlI0T3jDzwRd9P+8FiQQIXyYK6g2IWlMZ1E6EBJQ
         7jJJT6szhNdjSLX9HrMpBgIWmKQoRLSEcUkJh5fO6KffsElCuyh/DrOm8PziWHqWMI0p
         mH/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K0KciWcB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4w4tNbrR0rvNXhHKCR/MogyYQIb7pKUH+orJvXBxzLA=;
        b=c4CHTzp8xnI+jqZj8xOA+sz3RmYtJMstkJ9leNVUzfr75nNNWOUzu5p5oQujllrR5s
         oDPMWiI/TLUj8/10y8CuZdG1aH/DOplGX35kUb4KTXT4PyxIjBwz4l4KA6xZXyYwVoJw
         L0PlzauAgb39iXVMi2Xx1e5S1hayasFnNJlnRIzoS3zS1J+gaJ/xCNs1JZD2EiYSepKg
         +5r5D4BN8W7UEnQE8MIMrCXcVH5EXlvw3WR58CvYQz5EvuWa44wfupo+QoGQpoG88myi
         RuGI+qU/bsQeOFXj//niSoUkXUq5jDMuENF4u+CL8kIMx8dQJrATqBZ0IkHZq4kEuxQu
         DsPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4w4tNbrR0rvNXhHKCR/MogyYQIb7pKUH+orJvXBxzLA=;
        b=AhPJqmUXgfA2XBjkceqHRJgGKCJ/mofXNjER483wFsVbmGaH3XFQeFBAuq5lpF186x
         RsNooxWruXp6HyTjbFKUZk66DxUx+vvtdTRAwb6ZrLF0woZjNJnjA8xjbJapgVAeE5l2
         aX2VajXNf923lQwe2m2Qb7HiIf6R+PmWR/XyGwEXHhnU8FNUDlv4yT0T7l74C7xCLqAw
         lmy3KMp+0IP5yUENBeOReWqSr6z0T9IDuX5sM2cV5nqyTehOHli1E4txALriWU5/64Du
         TFP2UjhassonYkSpuuoKRGZgy4ZQYbZSpMQFJ76RTTIKQKvWvbwHDzJ5EZKfMNF5Qbql
         JMEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336ZNPy3Rup4AQKhhXeJVee0/hO+r0pJblKrjF8wWNmJvK5xgqW
	J8alS+ODKuy2gSWFCb67/BU=
X-Google-Smtp-Source: ABdhPJxoKor2x/pCNOtAeC6sRoJA1GB97WOINclTS0kEcyR31frjdBla1MuofJIR6zb16yM0nthWXA==
X-Received: by 2002:a25:3302:: with SMTP id z2mr1870770ybz.352.1591657837632;
        Mon, 08 Jun 2020 16:10:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b18b:: with SMTP id h11ls2968033ybj.4.gmail; Mon, 08 Jun
 2020 16:10:37 -0700 (PDT)
X-Received: by 2002:a25:cb45:: with SMTP id b66mr1737236ybg.397.1591657837288;
        Mon, 08 Jun 2020 16:10:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591657837; cv=none;
        d=google.com; s=arc-20160816;
        b=oAKqH4RLfIikEFV2BBYcSLn3KGOQTffcP5+G6FJMZXcssBjF49nFlS0fbx3Zy0ITum
         GjsXSQZBPRDF+eBH6lE4xtQ+CxNML1pp0OXZ1R3E1ErsgdZDbshOxFk6bOlxwkKSq49D
         G61Ef6x1BjzERmdwR4/0KayPO+82GR0VvRrL7L4bKP9cDB5/SmebdSW4i5BzsixsSKie
         m2x+3pcKvqgwakI1eylZndbYy4xE1DHsNfm/ZKAmaXqbcQIBGh3V8iB5TlQ3XyRoAOwN
         Wpt57cqPDD67Hbnq0tkuad3YJfukM7tWWF5xgHOo9vnC1IGbYEd8Wqu9dDDzRIc+Z2Sd
         VcVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kHGYrHd92nuK5oed9uJ8xYTYFrHqF69mhr+lS1jTiaQ=;
        b=bjTvErXlYd1TI+7YEzjsv+oqZT1pS4EZlPwOxboXBQTmsxK9aPm1O4it36TiB4V8WA
         vbKsmQH/0wROeUwGc7FnI7aOp2C1z31jOFso91z4n6Kwq44s7NvRauaikvHtfLDiqRag
         ngzGL7qePeVu2sdfj3skZko6Kk7Ujxsmd2gAZJL4KKeuiAqOTcWBtWLlWMAFzgwbhZhI
         W/u+NdsajCAQ9xS5c0TSEV+hIi3O3CeTqLBeHiTgpnvwi5bG+CQ2HRNJXofrWni1/INW
         ha1wrpE1fSj4xMDGErc8STZ0e03ZcUlJ0AKM0p/1wczV54z3S8B9yXh1lH8tMLKt5yr0
         /ltg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K0KciWcB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v16si49609ybe.2.2020.06.08.16.10.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:10:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 89C4F20890;
	Mon,  8 Jun 2020 23:10:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 205/274] crypto: blake2b - Fix clang optimization for ARMv7-M
Date: Mon,  8 Jun 2020 19:04:58 -0400
Message-Id: <20200608230607.3361041-205-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=K0KciWcB;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 0c0408e86dbe8f44d4b27bf42130e8ac905361d6 ]

When building for ARMv7-M, clang-9 or higher tries to unroll some loops,
which ends up confusing the register allocator to the point of generating
rather bad code and using more than the warning limit for stack frames:

warning: stack frame size of 1200 bytes in function 'blake2b_compress' [-Wframe-larger-than=]

Forcing it to not unroll the final loop avoids this problem.

Fixes: 91d689337fe8 ("crypto: blake2b - add blake2b generic implementation")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 crypto/blake2b_generic.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/crypto/blake2b_generic.c b/crypto/blake2b_generic.c
index 1d262374fa4e..0ffd8d92e308 100644
--- a/crypto/blake2b_generic.c
+++ b/crypto/blake2b_generic.c
@@ -129,7 +129,9 @@ static void blake2b_compress(struct blake2b_state *S,
 	ROUND(9);
 	ROUND(10);
 	ROUND(11);
-
+#ifdef CONFIG_CC_IS_CLANG
+#pragma nounroll /* https://bugs.llvm.org/show_bug.cgi?id=45803 */
+#endif
 	for (i = 0; i < 8; ++i)
 		S->h[i] = S->h[i] ^ v[i] ^ v[i + 8];
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608230607.3361041-205-sashal%40kernel.org.
