Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBBWEUDZQKGQELIX3KJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 581DF180C4A
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 00:26:00 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id t4sf151466plz.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 16:26:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583882759; cv=pass;
        d=google.com; s=arc-20160816;
        b=K3uhv5T+Ik67Zhu+xOh/5TrqbwETg4mPkDHyJK5rA/RriN0a+Bm/k0KvDQNv4v2PvT
         /IAA9yGq8bcZ9uU2HSlxp42TCSg/3ibS14YBRaf9/p47LzuzwI+NmAgBGZfLQ9hiDzGR
         imyOvEkIBrxfoI9hptdN8sQJAycI6tYhQmU9o4kgnXzWbIHqyv6FpscH53qPzUj4eq+O
         htWFiKXXJkqrXmIaR7E7023M3HV6w01dklzlODpnbgXzj38AMkHo/1lgLbto6cC8ndFX
         Pqos4sn6ud+rYDc8HbMNOKoWz4nCF8C3F1P4+yKD6bU3pncpvK7cNcSNHIiJ5VdDRkhC
         Avbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=jW6VjKMMkp7GHtCgxNcggyyyX1FHkSGmRit6KBRPj3s=;
        b=PcCIQbkgxkyOKY94kOjNx7q15C45vvMtlbpIRAbT8ilR52Hom37YVqRAmL1BD5fX5k
         Ot6hX54NqOb9Q8XicHW0/4Y8Hpwa2FpRdlJjJzd5ez05X+ArVnepv+CZGZLJjLXtjCyF
         VjdMvqVLpJoCwuZVh1YX8D9fq9HBUBx45vL+SlLNFMHKQ8cWraA86j9n1kSRWM1gRdKo
         czcJJd8k2Z+pvF+8o1oA4aE6dH0WZJrq0rM2ZJv7DjOxNFRZgNqg8nJaFpsFh1/kHT4m
         25cyCq9zI/hVx4opDzIEJ5QvCOMbLyobTmYYgH8XKAZ1yIv6uXEAr+pT+eQrHsWIKKuB
         IEXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KWoXpiIn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jW6VjKMMkp7GHtCgxNcggyyyX1FHkSGmRit6KBRPj3s=;
        b=SwwaHcYBV1un96LQnrPOO4shDVaU6nBZeAQtTa7Qnq0iNS/TNEsJra0BsHE7KmemiL
         PI3E4vp6fcmc1mdt1KkbDXVeigVAkUf+6QEbQGjWk4kdEIBYM6pnU2v/1G6LvB6I5ddW
         1U9mU9pcHr5BJqWPy/5+BYhA5szKR/PeEVEC6XLL2Wds8GwERLV7eVvMH4AhzHVU3lX7
         MKYF5M/SfR8XXx/PeqY/H5795ZoN1UcGXZrZvtx5RCO7sAaBcsyI5cDt+4nkYiSJ02ba
         rNRIl/sDKik6mhPr/j15gH895YpboL0okasm1IKXdR/Z5rFfc45DRPxCke2N/85N4LJG
         0XNg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jW6VjKMMkp7GHtCgxNcggyyyX1FHkSGmRit6KBRPj3s=;
        b=UqUYzba+4GeGDmUaI/tn/wXiGrZb/dOqmYoFa/OsYpWKk4pxi1iQCc+xW3h/yoG5Cv
         iEBfdflE6k48z5iO8yVmLa7EP3dkZgGKcHerS/c4Kk2DPLzlo8K+O2k6nzaaA0f/A25G
         0x937WfBVvFnkPbgOO/UW8VkVeyZmN7AoZfqeLThhRKbir1ZkiSm5Nfzl7m874C7Mmqc
         3oS54p2AONLjjT4xq2mJF7c7Dvv1N1ZNd+FEt/VQ7D1NKPm/IUh5QdT7YrRmZRlTkFUF
         0m31G4lWrbnPGC7hjvvmM/nBx8xS7zslgCY5rnx9jvceqJH0QIwdr4dghugEVakMToTz
         2u0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jW6VjKMMkp7GHtCgxNcggyyyX1FHkSGmRit6KBRPj3s=;
        b=Ss2WxT6w2zj4i38R979ZSvtodXSeqRqduiNdgMgoOPqropoSH7xKU9Grqw+n/4xGV9
         Ytl6k55jno1ktQBMLVRAYhtdW8sKb8sDT/77+LXrbkbcviptYaoU3lv1IceMj9e+xa+i
         glB2d+tuo0q8XoheyYWwuk2CV/nYXvXgklwOrxlGqYG0zDbDAu+L46fphVdQ7a+z/wyA
         8y7yxYn/YEWgtfJSYoDwA1yv3HJfPx7PeXxDq8S5p33XmhZeFOKTASsMnGtXMUBSVqBj
         Z/mxYZDorpXRJg0BUMCYfuk5qpZR7HXFl7QkOvQZrZxEEb1sM8519VmXUfJw/ybbSuXm
         ai1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3VD5rAKpvC0vaflsmDwdR3MqJnU7LEFJvO5sPvAEH2nHep/B0o
	PEFVbnZjFOwlMk3ZYlOFU+M=
X-Google-Smtp-Source: ADFU+vtTM2qUP2GYU7YZYYyPGW9sl4IJ/FZsRuk6nJGT0znlK4zyPculyS124o4OGjIC0xkj82W0DQ==
X-Received: by 2002:a17:902:768b:: with SMTP id m11mr345881pll.118.1583882758811;
        Tue, 10 Mar 2020 16:25:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b114:: with SMTP id z20ls83026pjq.0.canary-gmail;
 Tue, 10 Mar 2020 16:25:58 -0700 (PDT)
X-Received: by 2002:a17:90a:f211:: with SMTP id bs17mr335436pjb.167.1583882758360;
        Tue, 10 Mar 2020 16:25:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583882758; cv=none;
        d=google.com; s=arc-20160816;
        b=TIO7wVycNbGybnWtUuFnVfjquKAXatf7jhEkzmwb/Yib9WZKKk7UtQz1x9QVWNbNOh
         w6AewdPsBl69kXnto1s3KyPw2SDd1KUuepY8D4QYPTB6CEFw8EGUabr78eXqBjqfryZ/
         Aw/BuYy4zTcJQLxHNSO3s4f2vvQut+KGvRAI7XOBifM12M0LPkS3aIcb+Yq+6XYYEG4S
         J5gA02wVjWo3fYhYtTShqXq+KLGkucJYjG0OcFkyoTASjPwHNUI91pF/zx+MZkQk1uS+
         PlShzZo9HEBrtczap2jpiy6Gp8zy7Ic0hq+crIIopNJHA7WvcVl0SsG2xLiQiXS2osz/
         3jFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=iFjDio0RBC9Ro+1dWHvbTXYCexYzMv87LgebC+GcvxM=;
        b=JgfUu/wa0egA/di7zLG2gl1kFnFwsuEQv4ZikVn9HOjiKepTEcOlWnbMDsciaP8iFh
         E+0QNZePpeAZFqiD+bItsVHGu2kuCqP4Fy0NG544n7nZw6EzDYTJP7M6ggneVqGISvqK
         QOldDuQHR2upKoiSAPgp1bB5Xg1OaJGXKuMTSmTyxN0La5yDb21F9DHkbM3uFg9KwvOB
         delz/bfwlcAtLAqqRHnIZPzHMYkEwtGlOpT4e2sTWfo2C11itDu7sspVfg3NFrqpJNEx
         ZHObUmEUV7IVjjZy433a7yx+x0e3sfvIAwrPVTMOzST9G7AyUZ/1gB5KETyLKsDSECJR
         p0WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KWoXpiIn;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id j12si34828pfr.2.2020.03.10.16.25.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 16:25:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id j16so87947otl.1
        for <clang-built-linux@googlegroups.com>; Tue, 10 Mar 2020 16:25:58 -0700 (PDT)
X-Received: by 2002:a9d:5e82:: with SMTP id f2mr146921otl.240.1583882757608;
        Tue, 10 Mar 2020 16:25:57 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s2sm9187966otp.35.2020.03.10.16.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 16:25:57 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] arm64: Mark call_smc_arch_workaround_1 as __maybe_unused
Date: Tue, 10 Mar 2020 16:25:44 -0700
Message-Id: <20200310232544.8792-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KWoXpiIn;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building allnoconfig:

arch/arm64/kernel/cpu_errata.c:174:13: warning: unused function
'call_smc_arch_workaround_1' [-Wunused-function]
static void call_smc_arch_workaround_1(void)
            ^
1 warning generated.

Follow arch/arm and mark this function as __maybe_unused.

Fixes: 4db61fef16a1 ("arm64: kvm: Modernize __smccc_workaround_1_smc_start annotations")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/arm64/kernel/cpu_errata.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 6a2ca339741c..df56d2295d16 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -171,7 +171,7 @@ static void install_bp_hardening_cb(bp_hardening_cb_t fn,
 
 #include <linux/arm-smccc.h>
 
-static void call_smc_arch_workaround_1(void)
+static void __maybe_unused call_smc_arch_workaround_1(void)
 {
 	arm_smccc_1_1_smc(ARM_SMCCC_ARCH_WORKAROUND_1, NULL);
 }
-- 
2.26.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310232544.8792-1-natechancellor%40gmail.com.
