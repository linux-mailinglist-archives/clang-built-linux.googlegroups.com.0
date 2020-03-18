Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHE2ZLZQKGQEUZ26RWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C49718A60B
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 22:05:34 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id n16sf141891pgl.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 14:05:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584565533; cv=pass;
        d=google.com; s=arc-20160816;
        b=csbdnJk0EAkOrcKZpoztjaPgqNeiKsLA/56YzOXR2excdDynGjXvEfZseO3HrR39Q7
         6zOgxBNBHmVaASzDlDNhTYulwQBPMSicbckSBUfoxn8JzZhdyJaYAVHQDfep/vvsE78t
         dIcyehnK2wmp4D0GLkNlyAwD9ap4MfmgX5wJhXDOgjgp8vz9gBNDnJRmHrz31OlJJgvm
         bJZ9lWSWTID6fWVJuf5nzfkdh28DiWGGexoLqC2r6ZYnfZbL/6t489kKYnqz//PSTURG
         t0gVfPpK8B6zg42bfXnnzUpxEh6Vc3m3s2rd9D8Mpk7YkhoSGuXZxNlevbZYDYbcjlTl
         AFJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=PSkgq0JDGuNdmOGe4+jAPTtPh93wtK3zxPf4Q2YVcCI=;
        b=PTOYlFoUcyQSiYFJL72x0pMafKlcpgX3vaGLOg2fOzXP+xPFosGlByMHJ8oeeakvNF
         IsYQUKdRPP9PJZq0a6hO4yF52/k7vB0ldtdlJ2hs6arUKRpEuWLx1w2fgI4aPqiuE1Dv
         YGPBW0kIPs4uVR3x/RsOLF47w8ITL+bnHZFBnrXLQXl0skPGBfM+rjbWc+o+riA9GGdc
         nYknYNRidzbobx/3Cq3vVoDRRZHylGTVZs5ZH5IuryZqwOx2wRylITHr2CKiFQHzcyEB
         atnyhTpjgVdrFwHBWLOOhk7+2LcmcMa7iFQXJFnM0dG6ri5j10hOG1jxrIQ6vTG5xYso
         Xxog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OxWGX5hB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PSkgq0JDGuNdmOGe4+jAPTtPh93wtK3zxPf4Q2YVcCI=;
        b=hjTriILnt/cwNotfObRmnQ4deAiOWDtmjofLvY17dLCLTCYBu2eaNIGc3XU7VYKZ66
         vhRkFF3muKXCIX8pxfnBZHQONfxrrEhMaX10uOrjiiIo5LxmpAoE4HkBKEcwE64kiYFt
         kaMWaxKHSJpOFbYa0Cq2LPQHfP81LIASkozUnvQwz4nbQ/BNrhmRmLmCD7F/DFRsA+0q
         4tq9lcIQuvGx6Zzg6jBOPvDbVXvJTvbts3AtBk2QbLsXsFdNo7sdEuX1BVDHl8nVrQ6+
         2e25KinRLCFLhzI0wtS+HDQx1Shdum6BxlXMEy4T5xvWaMQBWbwZq9+M7qsy/2NErb8m
         Xj2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PSkgq0JDGuNdmOGe4+jAPTtPh93wtK3zxPf4Q2YVcCI=;
        b=LgAM9bjoZUxnOYDA/WblNxwWaOXaPcfx8dyZU2vU0NAluhsddhsh2eu0ZCkLtf6rid
         iWu450runT3c09IRi3X9Qly0WmbvqBV0bCwXQsfoj6aadjNw4PFcdtwJHk9eQYkItMo6
         sp87op0c3yQcPd6KL8iY9qDbL/P3grUu0cEXPTmX3owrkIRIuQqKlua+JkbhOiKFENgz
         2tcoRZWRj83OAua7Ze97C5ck+mqVeqGeyxumQi2NQNfBK0c+RXV1cxHTwE0PfQ2cHZEL
         RlIpXBxE1bCVdm4TAchH17a+sNObAtMTpG3ALTTtjuXolnoQIZFTAW//BJvHDodJbVy7
         +elA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PSkgq0JDGuNdmOGe4+jAPTtPh93wtK3zxPf4Q2YVcCI=;
        b=ptSD6SvEtIyaGXFfe1EJhSmoXhRWIXaXq1+v0YPbiXDukglfn94fxTlOD5s95KhINn
         HT+y4f5BaY0DtTdrxPMM1aHhyxq4qhosOTdkZqt2tyjLR05EU5gVILKzsMwUmWczURTu
         DFKvTZ/8Rq9KofrCnuP6qBrupeRhVVrQaG8k5uwtgdwp68BJH8oGfztjrTnv6mq4PUR/
         gyC/Snx+pbbbF/QWXsAakRBIQkeVivX678bWCcAyZsQTS9JPBz/XfTOsAPNaMC+Zouty
         w3wpEuuybNFYjhCT+Ne2h2EFJwy0TmkT2FbIqbMHj1Xv9fvwUeHqEZK3csovVEoRajiL
         4vTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0zSRYp70nSRd53a1WupviGs0rlGGxNOm2Z2NjeShDqgk8Diu8e
	HzBH4z6wzlBoTMW6EWGPsmY=
X-Google-Smtp-Source: ADFU+vuWfb5rrqFdveBifLUdJEJyll4KszrzUHtTt5fqPJQARbjNNki3jSTTcNQnA9UEWEVFohS0/A==
X-Received: by 2002:a17:90a:5d85:: with SMTP id t5mr112848pji.126.1584565532838;
        Wed, 18 Mar 2020 14:05:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8a89:: with SMTP id a9ls12988943pfc.10.gmail; Wed, 18
 Mar 2020 14:05:32 -0700 (PDT)
X-Received: by 2002:a62:1a50:: with SMTP id a77mr182459pfa.289.1584565532263;
        Wed, 18 Mar 2020 14:05:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584565532; cv=none;
        d=google.com; s=arc-20160816;
        b=cHkK1aoqJ+xN3ugyRHOrqwjdOsy2av1T35NDlGpRCBkues/OzHmrF55ZlJOkd0LzHI
         T8fUhwIETufHfGVboVVMeGMttfzQt9tjGK4g1KnNsrTjktEJq8OEuEBlUlUXGqza5fPU
         VwQ/r9+EMmElNWgF01fl8MB9jjmRNM5qoCaKjKbe1GP+hxCjQ+OnO8gv4hFwJRnbfNfD
         cy+C/4+BubEBH/JsVnMhSmW9aird71oEp7ta7tSXMl6CWHDHAz/cFUyiFJG7KFuY4aXa
         vRNtRalQGAQbcn4fygCgPDGxpfgR1HGbA1HBcRiGycTL61ch/LSyJgt47kx77tAySwF4
         yVUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9HrxoukmfoCKdd5cM13ef2cbkm6CijqM+A0vCb8JlpY=;
        b=zqKg08n5yR1LjbhyrNW+2VGtca93QACamOd7+0iy1NUXQo2omeYB3i2aG8zUQMfAri
         wXWXWCAhPUzJuV54sQh/wHFq57W7n7y7HDxeIXyNubySGLA8hmJr4Ldz5JT+POg3Tf6d
         6zc50uEvOZoxh1WHoakCAw5CpTkvWM95XIuMHX5Zv+9GQsitcR+h6eaOrSaoiZoUZRES
         wnFOIHjxnGIW+EfpouxkyEiTRTNHEc38hXBhH8CZZOFawoWCzRnYUqQoR1d43aSq6ngS
         /XOUMsYse2/pxCuxJifYY17MYvyksyo8aqDd6roiQBu5EmO6tHArEuMGbiFBLgpTriVt
         K0sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OxWGX5hB;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id r11si4377pjq.0.2020.03.18.14.05.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 14:05:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 111so82632oth.13
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 14:05:32 -0700 (PDT)
X-Received: by 2002:a05:6830:1410:: with SMTP id v16mr5818832otp.315.1584565531513;
        Wed, 18 Mar 2020 14:05:31 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 69sm40109otm.60.2020.03.18.14.05.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 14:05:31 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Alex Deucher <alexander.deucher@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Cc: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Joe Perches <joe@perches.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2] drm/amdgpu: Remove unnecessary variable shadow in gfx_v9_0_rlcg_wreg
Date: Wed, 18 Mar 2020 14:04:09 -0700
Message-Id: <20200318210408.4113-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0.rc1
In-Reply-To: <20200318002500.52471-1-natechancellor@gmail.com>
References: <20200318002500.52471-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OxWGX5hB;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

shadow is only assigned in one condition and used as the condition for
another if statement; combine the two if statements and remove shadow
to make the code cleaner and resolve this warning.

Fixes: 2e0cc4d48b91 ("drm/amdgpu: revise RLCG access path")
Link: https://github.com/ClangBuiltLinux/linux/issues/936
Suggested-by: Joe Perches <joe@perches.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Remove shadow altogether, as suggested by Joe Perches.
* Add Nick's Reviewed-by, as I assume it still stands.

 drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
index 7bc2486167e7..496b9edca3c3 100644
--- a/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/gfx_v9_0.c
@@ -735,7 +735,6 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
 	static void *spare_int;
 	static uint32_t grbm_cntl;
 	static uint32_t grbm_idx;
-	bool shadow;
 
 	scratch_reg0 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG0_BASE_IDX] + mmSCRATCH_REG0)*4;
 	scratch_reg1 = adev->rmmio + (adev->reg_offset[GC_HWIP][0][mmSCRATCH_REG1_BASE_IDX] + mmSCRATCH_REG1)*4;
@@ -751,10 +750,7 @@ void gfx_v9_0_rlcg_wreg(struct amdgpu_device *adev, u32 offset, u32 v)
 		return;
 	}
 
-	if (offset == grbm_cntl || offset == grbm_idx)
-		shadow = true;
-
-	if (shadow) {
+	if (offset == grbm_cntl || offset == grbm_idx) {
 		if (offset  == grbm_cntl)
 			writel(v, scratch_reg2);
 		else if (offset == grbm_idx)
-- 
2.26.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200318210408.4113-1-natechancellor%40gmail.com.
