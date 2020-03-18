Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2GUYXZQKGQEPUGSJJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0180F1892D4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 01:25:14 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id c123sf14410321oig.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 17:25:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584491113; cv=pass;
        d=google.com; s=arc-20160816;
        b=jqiKwXlCUZ6DVu8yKm/jB1mu0C0O8vk6X7HuL+ln840RWG0VXzUh4HW+syQ0z2TFOX
         xX29ihQGseWhde6LU6IMsRQGNv4/qpEQ/9jbkdfRIe/ZCQ/SolOTbaaUAg0yw4BJFVsE
         sfWFK41PheRQGU7r84ponkHQumCu1FZWj1ROMHjwJGNiScmLdOP356i1bBHy8RtjxQ/I
         XQcoGhmeoZAdg4dw1b/16UVsBgtN0rP8qrU4F19+Uhij3BGQ/PA/ll2hlYznGlZfxlu+
         gNIIbhHtlbdu9UJUMxUR32z1T/Yz6bWOlmPUHO4jt+y9i0sqxAHGxbINJb/I5pvTvI81
         B2Xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=FisMQsbrsHUsTAUg0iJOyGKEqE7gXo13rcCckTiP01g=;
        b=yelpv0PUiV9nxSiG1+lO4M692zbl9v6+gjxWZb9FFnvoLHo6rIpTAXgH9e2+8rl+zw
         mTGZIGMVL1TJ7Fi1JV3YYr2GNUynzltJbrVJKp/g3odYU88Myie7DSQEsE/yAmOC7nyw
         7YnIwzkcxkIsNaBgt8KX189HvOQz+3IpP7siMf+vnrXLtzD9kNJz3a4/MyONcWdB+T4J
         glV787PMdEjHNOvQSAlaamY80l3h4h6zHVgVOpYzpIIZYReeIMuEBTog+r3ibrMZy2MM
         k0SHT4WS/lANziDuYMhTRkuaul/yAL6M66ZkPjjR0s1cgZF21y2EFwdyMDkKVK3Mi9vZ
         Gkmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nYKHpY6n;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FisMQsbrsHUsTAUg0iJOyGKEqE7gXo13rcCckTiP01g=;
        b=feNOExpnBS52JKsWVyntqtCb4/D43EK8jWmzALyFY/JVAci9LjP1Nfn4ZXPs2GvKON
         aBumqmVHPBeJCiWEgNXYgKhGNXBh4TKXnOsLhx7wDGgqjym1pSL87h4wic2XBYEIwhra
         oGdO500pjY5pCWGygdvifoB5uooNc0WPcvY9YMKpTT+7m39UyG+rz6/UPpoJWfcyS3dV
         7k1WkBcfxOdLz5FphFLhpwQ+NJgI4QJfFLxLC8+0B7JZa7Nx2cEpRzboylxVikGstrHe
         6JD7gaj6VDPyzdm4Uc5jgGetPraVtHBEOugAPxKYbp3yyHEkFCufjJ/N5iO7GXHfwJ+4
         ZMfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FisMQsbrsHUsTAUg0iJOyGKEqE7gXo13rcCckTiP01g=;
        b=GHfc7M1X+OsnsM5EALmR12PsrVffYH/3NEqoJKMWkgOn2ff4/WoeI+9IubWwvHEMp4
         2RMTUPl8/O7/2wS/6cwJ9u6RJsLjOx0N6Vi7FrrwYjiCUJUBBMVZ6O6sUvE1FJ7cgbiB
         JEyPJn5KKxrGNwXwC7H8Oll0Vh4bShR6GYzZIt3I/vfH3QSIUjEWFJpLe13hqI7WBa4u
         8tmgk037TJYvl7VvkH/DzfJwK1SvMMrYk2bo3ciefSngNXBXI3GDKoaataUynxJhSjhn
         ZI1jhYNZre0HnTyASflwwRr9xnXrWHiC+oMdrF+VdJVRlwEwclNnHEp1eLDvUE1O/t4e
         RfZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FisMQsbrsHUsTAUg0iJOyGKEqE7gXo13rcCckTiP01g=;
        b=Ila5X8gQJ/vYkfiFUnuV6ZII3e1UH5KMK8j1lzn/eJPayB3JI2YR0FOn7/I3fJy8gX
         QZGIRbzHCq9tUiUwPwvbOpvK5TUJTM0fCJVnoy5uLYyA1C/n8R+rSYrqucMepPo5U616
         ttqpXscv375JJKDDvcVxkPgOlZ9AD9buIKdKOPg9J4dMzJA7tTgVqfKKA3NFoXIvFV3x
         cmeQtUTopQKFjuEAVzlRdvJEtUV+Ez90krnlZo4sMJoqWkHUxd683JRjYRx4WuRyhOHb
         xOaIr9pQcW/eVz7+BAHj6pGZJpiQs4p4GuJBVIewx13vCvTuMi8ZtgLFummoQFCqzO/U
         m6gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Z59qKcdAywRcuibX70lXew1aaaF6Yfxk8KLHG8i+V9UwU8ge/
	Gj7iekM9D/XWgcDSb0/cEhI=
X-Google-Smtp-Source: ADFU+vvJTnCyMpkMcdChJtpIvpAIfXImurXqMflG5XA6leb6gJYr0nMhCMXE3JjHFbtAQCRtFJv9yQ==
X-Received: by 2002:a9d:7359:: with SMTP id l25mr1775225otk.18.1584491112949;
        Tue, 17 Mar 2020 17:25:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fd02:: with SMTP id b2ls5198840oii.2.gmail; Tue, 17 Mar
 2020 17:25:12 -0700 (PDT)
X-Received: by 2002:aca:47c8:: with SMTP id u191mr1236357oia.17.1584491112610;
        Tue, 17 Mar 2020 17:25:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584491112; cv=none;
        d=google.com; s=arc-20160816;
        b=vg0JnhZ99x4FzoBGSLKJS4IxQltjXkxiPc0e5IvoYQI29viTsHa2//6Ru6kLNrVHrs
         EiL1qWU08tMZVVDPcNQyZLKD8QW/OW5B7zxW3AGyeWrDh5KZlTIkPqYz6g7Y6s2ygqmN
         0tc2yP6uo1FckPryfF4cEfkhNeGz21kxrtPb10mQhfal5CHKX6yTgxjc/JTtbSXFrAJC
         1wWPCulLoqlTi7ZbXkFCONoRPF/r9YFqVRTR543TdvjNc/X7HRmDzDfCnwL8pOLxI2nE
         H6WLk/q8OcuLGVbAzDYz8aLpxr29lPQzw3aGAQ4Yns4E5xGhnDiu2Ew2HLSNyY7PUtGX
         reig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=RthWSSAwfQ1m/fIyaMgHoqmV5M148uMDMgR2Z75pZn8=;
        b=nYR8QcsABdf6wsN+0wl4W/J3vp3Wt9Omjg+POdjij3wVmEZRNG2c9CDRNj9OAIZgqk
         KvWuLQwkk3RkQe/Yo8KUYAg/KHyj1ni+fDORZ0xz9siuHDA/VeWNHdVMk68wPRE0XKTc
         k1EzvwqXEl/FaDaCOXlnAKdHX8bC2ZdGGs2fURW28J/bbn5LPFQF0sQiRFeAcx5QpOU4
         GF2avDk7E5VMSsLftrvcqaJBu0OzxqN99ZI54NxQkmab3QNxrdR5jK4Hf9/iMoK7Y6uD
         4yifW7UPZEvROAZrrCGumGyoazJXADOWEDTve6lbg01QG8iz11pRktfIuOBjj7v/ukJC
         MGkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nYKHpY6n;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id m132si406476oig.3.2020.03.17.17.25.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 17:25:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id k26so23843619otr.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Mar 2020 17:25:12 -0700 (PDT)
X-Received: by 2002:a9d:53c2:: with SMTP id i2mr1714115oth.11.1584491112227;
        Tue, 17 Mar 2020 17:25:12 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b26sm1569129oti.3.2020.03.17.17.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2020 17:25:11 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>
Cc: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/amdgpu: Initialize shadow to false in gfx_v9_0_rlcg_wreg
Date: Tue, 17 Mar 2020 17:25:00 -0700
Message-Id: <20200318002500.52471-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nYKHpY6n;       spf=pass
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

clang warns:

drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:6: warning: variable 'shadow'
is used uninitialized whenever 'if' condition is
false [-Wsometimes-uninitialized]
        if (offset == grbm_cntl || offset == grbm_idx)
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:757:6: note: uninitialized use
occurs here
        if (shadow) {
            ^~~~~~
drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:754:2: note: remove the 'if' if
its condition is always true
        if (offset == grbm_cntl || offset == grbm_idx)
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c:738:13: note: initialize the
variable 'shadow' to silence this warning
        bool shadow;
                   ^
                    = 0
1 warning generated.

It is not wrong so initialize shadow to false to ensure shadow is always
used initialized.

Fixes: 2e0cc4d48b91 ("drm/amdgpu: revise RLCG access path")
Link: https://github.com/ClangBuiltLinux/linux/issues/936
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
index 7bc2486167e7..affbff76758c 100644
--- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
@@ -735,7 +735,7 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
 	static void *spare_int;
 	static uint32_t grbm_cntl;
 	static uint32_t grbm_idx;
-	bool shadow;
+	bool shadow = false;
 
 	scratch_reg0 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG0_BASE_IDX] + mmSCRATCH_REG0)*4;
 	scratch_reg1 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG1_BASE_IDX] + mmSCRATCH_REG1)*4;
-- 
2.26.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318002500.52471-1-natechancellor%40gmail.com.
