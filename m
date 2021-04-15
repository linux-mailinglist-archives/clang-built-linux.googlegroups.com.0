Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2NX4GBQMGQEMWTQRXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FFB360EFE
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 17:29:46 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id d5-20020a0566022d45b02903b65d48c98asf1988110iow.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 08:29:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618500585; cv=pass;
        d=google.com; s=arc-20160816;
        b=hyozBKqogPjDb8dltZvMyK0/z8VB32CQiiTjGZ//mrxHYp+2MrDBxAvaZ7Ra/sOvtB
         y34a5z6lV1YoqphmMAi/dA2aGVH96tspyNjsw/CCmUPepY3Toqy/aKCD21zqBvx0Pa7x
         Pbg1s89Nstio+N4Gj3yEFaEtnJn2UNdKF6xcBBoGgD/mhnIv0BbbwAAhPP4UOG1Jjmby
         UVbJenNPLVTkNvra+04HM5WCHnmdJVPbL1B4s+M/Z4Z40s2xGdbXumV3swZLPH7dfKV1
         lSJpjCU0XgThyF4LYNDEtRgBXMJkSHYe1DlWD8cQRbsvSWahH2k0S/lefXJ0rs/UpYik
         MZEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=WxJMu1qbGzb4N9uzmj+lmM20Vp9EQutpbVUEN744gw8=;
        b=v7Re+XCEw6TdBtTCGgHgGWNjKnxJ7p0ZUiCKCvGN0qK5ynGaHJ7GASDzbs1UOBY1kB
         Sfqn2t2cjqZQyBPg8aqMer9MHlQZVRolweBiyHTCFHxBE15AdyxAwPzIRrnsVxhvoTZI
         5RY/M/8zFal358DKHpHA4kptoENSry7krw5g5rrQJPLRgudZI8RdjB5gzUtIfI1xpWEy
         FSLJvq6dEuYIZDGQB+KhrMArNTtm4Ktk6k7uIWWAB15dQ+IDnSoTl3LYE1GHrtj0dPB2
         Q/uZn9d8uclSPIDja7mSdKBjNwKSnGhgihoxas8Zw4yuQBiAqoDAKvAlMRpWklWOt38K
         AhNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GV94Cr4V;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WxJMu1qbGzb4N9uzmj+lmM20Vp9EQutpbVUEN744gw8=;
        b=PaKmUPvoY3zo9ft7VbNNNxOQLe19wPTQJxJJAgqNY5ftfLBqQDDSH0YRUvM5pShMTH
         y0vE/zSOKWjo9YeurI1+dmK4Bj507AdLINb8BAg+7COBEFoNRPrAQlKpovzliWUUp+Q9
         4kaQ1j9r5mXN+y265ZasfSjh1vDn1Tou0zdgxrUiUK6PIXCiRADgTA4svaB08niKdBAH
         MhJ+GBD+Mmtx0KbmU2gUbliY/fF5RZMC98fsQ12NWmXgXsPWxWGagkClSyXWHj/33GC2
         qdgjSe1TMoPK3vWHbCo4X+0sMu97KMchbonmvpKwGYmIpwfC/hnqKt8ktgUbnxW0KeNI
         Knxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WxJMu1qbGzb4N9uzmj+lmM20Vp9EQutpbVUEN744gw8=;
        b=omQQnuECzo9CmSsJm4g5Q2iMmT2+B162WkOytqZDORU6I9+POsujASvwabAl5ZHCqq
         MRK57hhGap9UIveyBQS1J97QW9/WlhTPfB1Q1TjopKOSlw3NggHAFbJF4jytdC6hTsdZ
         fYvwsVaBXqDBRUGQr7G3RBPwYJRKvcPm/a3Mup5botTeypAFBaTSSl12/zvhUr0IAWjt
         9pT/9UR+INL5jV760DZCkpljgpdRGWfryCbZ4YDsdI77wyL3SeVxXXc2X/OXSp7IgjEM
         J2xwsXRPIbHyW2RWbBAiuoBPlGJSfWj3VDunvynYI4uFpW/v2tJkfVnrbq+wQAh0/DNy
         lK3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eFCiou5fYIYmV1WOQE0rOizJ91lGQIkBalMXBFinC9bsRj5A2
	7/fXHzuAH38hvRPZCHsDir4=
X-Google-Smtp-Source: ABdhPJyAkzLQgNKfByU6RpSyno0BTaOJE/DHViWFu/SJLH4aJfQsJ0IjIeJM4B4sQ97aTNNgpc8mng==
X-Received: by 2002:a05:6638:3010:: with SMTP id r16mr3486126jak.126.1618500585179;
        Thu, 15 Apr 2021 08:29:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:78d:: with SMTP id q13ls1310827ils.10.gmail; Thu,
 15 Apr 2021 08:29:44 -0700 (PDT)
X-Received: by 2002:a05:6e02:168e:: with SMTP id f14mr3286131ila.292.1618500584867;
        Thu, 15 Apr 2021 08:29:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618500584; cv=none;
        d=google.com; s=arc-20160816;
        b=bgFQgirugS0tRH4nlqMIB6BdEbR9oYn8VzItYN2fq9Fw/5FwRLcnilA+HWe5wAUFLE
         yBt+3ujjp7XggllQYt/c/JTQdJpljBzUfINY8XUjty331lTNxMmGuULLuoDJcPubAdVN
         Hz2IuFOumLRjlkMVeXysVnriWmiKUhUtAzm0suCjZgUWhFdnrJZnfQdnynTbRWQgVSpJ
         LH1YanK1Xnqx5i+B4PSRDwsCOemmGhHVZWf826zuGHLWDYWENcDiFcBa2O0MT1TPXAYv
         8GYXHz+mBCOhBe0cCPMjnflHFHmmXfsy9Ofz61VQ6I8Wv32wTAPHJDJ/sUGxBpaZhufY
         kymQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=BDj23yD1Gycoi5HMEkqYEQ4b3FNlP2YrgqgHPSrs8kI=;
        b=qrZKiF0nrNPYzsJaT0DECsj0cudlcGefKoKrj/wBr3PjBGTR7NbOIAxaK0vwKFTZq1
         sbkn9Y3MLCYZodbuzzjecuhdpNMl4LmH2iFwJT8p6mHTIh0PSl5GC4bJ/3NqGu6GmK3d
         Ul8CsaWgzxJdAUPfoH5e36qoKI2MpRNC94lzolaQbx26ZfPZ4IXgiceIT1NzXpuui5zX
         Ms1snweBeSNSAcVXzGkssf8/vbqXt01LryBw3d24U5hZErdXx82+3GLYwO2sTdL5xcV9
         QCLtvOkktapRu+XJEuB2PvSln9VLrLFlrZxa92IlKoQmb127ve+oxzLvAJZCFyKhR+hr
         1l1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GV94Cr4V;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y8si186497iom.1.2021.04.15.08.29.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 08:29:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 838E86101C;
	Thu, 15 Apr 2021 15:29:42 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Jonathan Hunter <jonathanh@nvidia.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	dri-devel@lists.freedesktop.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] drm/tegra: Fix shift overflow in tegra_shared_plane_atomic_update
Date: Thu, 15 Apr 2021 08:29:14 -0700
Message-Id: <20210415152913.1363964-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a5
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GV94Cr4V;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

Clang warns:

drivers/gpu/drm/tegra/hub.c:513:11: warning: shift count >= width of
type [-Wshift-count-overflow]
                base |= BIT(39);
                        ^~~~~~~

BIT is unsigned long, which is 32-bit on ARCH=arm, hence the overflow
warning. Switch to BIT_ULL, which is 64-bit and will not overflow.

Fixes: 7b6f846785f4 ("drm/tegra: Support sector layout on Tegra194")
Link: https://github.com/ClangBuiltLinux/linux/issues/1351
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/tegra/hub.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/tegra/hub.c b/drivers/gpu/drm/tegra/hub.c
index 79bff8b48271..bfae8a02f55b 100644
--- a/drivers/gpu/drm/tegra/hub.c
+++ b/drivers/gpu/drm/tegra/hub.c
@@ -510,7 +510,7 @@ static void tegra_shared_plane_atomic_update(struct drm_plane *plane,
 	 * dGPU sector layout.
 	 */
 	if (tegra_plane_state->tiling.sector_layout == TEGRA_BO_SECTOR_LAYOUT_GPU)
-		base |= BIT(39);
+		base |= BIT_ULL(39);
 #endif
 
 	tegra_plane_writel(p, tegra_plane_state->format, DC_WIN_COLOR_DEPTH);

base-commit: 0265531f0897f890da3f9c2958707af099c7d974
-- 
2.31.1.272.g89b43f80a5

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415152913.1363964-1-nathan%40kernel.org.
