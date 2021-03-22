Return-Path: <clang-built-linux+bncBAABBGML4KBAMGQEVQTNQQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BEE344032
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 12:55:07 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id m5sf20533003pgp.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 04:55:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616414105; cv=pass;
        d=google.com; s=arc-20160816;
        b=r2CsFYU3zmiaQf/FHFUVOww7P+/qxLNparZmv/oCwDk3om/Oo6maXi38EEdo0wXCUX
         ziM5ivDfWHcjuLxutDMbMPHdDQ7ZyotzuLNILiB7rggYIhFJLtYnZ5F8dBXYqCgPhAxV
         kp6B7MYOBcwepUf+JENQpWV0rYQOpPCVbZoJlOQuv8aGEUU86ZjlqJrsrszIvnA874sv
         7LiL2MeustFOUF2tZoJ+xPJEK2BTlDOUQWaxpR61agrmt8pr9PdKggWm4PpqWA3Xnh2A
         OpQjeUjeLGGXDMRqySM0VfuSU5jxnwUwuGQ9tPq3Sb0Sy47jBfoOzcYo05E8Zw5MVuBA
         cUTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=TkkrTaeE28XZDrsmh0sQ9yEOoJsoaJzVUalViGE9CcA=;
        b=hwZPjDrB2ykTGiPhJRVC1tZBn9SmZroAlsQcBkRxfJkYdkFGqtktu540t/NY9spSPm
         rH2Bc68GM5DadlHRZwuvGAgeUSANpvvp1OON/V94hpZEI9nfLsCd9Y9uxDlOep8fB4G9
         l6K5pwz9tCDP2NidGhgrPz7QBS0DBrK5THrVgifj+9Fzkl7xilZSu64Ll+x/t3LWDwfz
         1ljcIXhH7+ZyqKhj+CukMeky4E1BkbC3b5vJn53R2TRSx6/fy7yKn8wbbOp2Q4GNZPdT
         YMpINRkKv8JOJGMfhVxS4YgyLm8+9CY24ut2FiQXY4K/+dRlhU5rGGlZyKjY6PQudcI1
         gt/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=e1myS2ra;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TkkrTaeE28XZDrsmh0sQ9yEOoJsoaJzVUalViGE9CcA=;
        b=QMNabgnuTYDI8UM8YXOf+QdP3zilZibp86MAqyTmhQuPeB3R1Q90oV88R3ujBSMdz6
         IMZCwK1+uDh3+vhrpuIsNmdhzRheLBoCtBDvnraEsc0Z0UcMtkWYCplQNIn8PVDOJQ1p
         FxGyXsVfaLpXzM23FA13fH3bbKCv3lncO8mawmr2d4MHtlbAD+owrcBFjV8BFoltGSmu
         s6yg+DjluFmEHUMk5DKVIJl3d3cprc6ZO32yqKxqWVOwaxIUEQExb3n+zIln9eozQWHy
         h+XA6boNiu62bndTj0p/Krs4WNm4vcNKL9BqiOLJM+kGbGxDMGuENym9+xSHV/7niDf/
         nCMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TkkrTaeE28XZDrsmh0sQ9yEOoJsoaJzVUalViGE9CcA=;
        b=HuLO5j6xvQiBIhkTSjDBIfaJhhUkeYq1NpPeXZoD2eltY2Q35IiglXT7gjelGG+oNl
         cSRtZzta/nAg0cKVo66Q9q3NUQfCOVVOG8KofhDw7iIeqZGNmOSugNOQeJrH4tnsJtu4
         Mjh1yhizRLHYejVi1IiOnoVn6mH9KmHTLLrCxRQVeV+3GICzMdztIQzutC+jo41W8Wkd
         Dej3Qn6Pi5f0Zi5ONnNYVdhZ5WxgJkemoAmuj9vJfUCW5JWYOWWxTdqTw6eRmA2nJjS+
         7qnXJ9LsJ4ToIVaLwoMwSq+buIwDmhlFPNN8tsQTt49S8nEieVyBZF2xcvPrVC1TEmhK
         a5sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iBbKV4rhgsILBIkTjjqfwGGRHycAll5qw+ghHjqxDIjqq2yJ4
	AOC78+MBp6gn8FZaAvP1OtU=
X-Google-Smtp-Source: ABdhPJy9FE/waxJY9dP6EnjET8FncHufPGaILW9NTom2eYd0bTbMWQ25suU5KLljR7WuJ6AXTVVkAA==
X-Received: by 2002:aa7:8d84:0:b029:1f8:3449:1bc6 with SMTP id i4-20020aa78d840000b02901f834491bc6mr20907662pfr.76.1616414105583;
        Mon, 22 Mar 2021 04:55:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7f10:: with SMTP id a16ls5367375pfd.7.gmail; Mon, 22 Mar
 2021 04:55:05 -0700 (PDT)
X-Received: by 2002:a63:eb50:: with SMTP id b16mr12899936pgk.270.1616414105134;
        Mon, 22 Mar 2021 04:55:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616414105; cv=none;
        d=google.com; s=arc-20160816;
        b=JwBFKcVdRysfrjW1FyZbAz5Iy0itWKGvT+eLop5N/cnZQBLmlDV3rDzuPn46DQTnY/
         IoM+I2IDVxAnnVCgz+1OyCQi0LUbx0NKgZcf3JcDX5wpEOR2qsAIukzbBEGzR2wUTr3c
         kRUZmvOQyZivAOnT3fEKp96kJcWL+X/Ld8Qpvx0QYCpgMQmt9FFOyv85OVU59LhDSG5B
         QXk/1idAVkJ3J4eOB4+ExuEojrH1elZpEVGAxQlQYJQ1HJcGlzbatXY5MPxt4aYFCvFk
         Hg95mPJvLlPUOMKaOiG4gahrPyd1fK8A4tYOMHLuD9yiPZd0bcZIVfpUq7NjV2j3xfaq
         qMog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Sof77bKVE4TGYcPTj/98bPIUnZaj4Q0920jtL7B++kM=;
        b=Ojw+ReUCsoShdFuh6aKk51pdm/YmGIM9IuVb/nANdceHzDwaJ7vGeoW2Cgtusv/WmS
         +SynhiCMVqTnu/yHbAfyA3CBP7EH6TQmHxTmO7w+cfH0rnNdD/slTiL5F7r0dyVdAhTi
         Mfl2qFowa0yVjbxUceeh0X61sP/lvqjt4lJERUW+DH0rMctC4SMgxuOr2E2zdzWIjckp
         d4N8w1UUBs+HDK5Noz3TmeIndQZKd7iIWG5oiBSzryQPn1I5PECiDLcM9wtUWPfyBKJE
         hrUf6lmb680xr/rqfjZi4r4n7kST9X/U6NsR9ZDStdAnXvdyb+BYF44ZDSdQHN0chask
         TgiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=e1myS2ra;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n10si733501pgq.2.2021.03.22.04.55.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Mar 2021 04:55:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B672C6198B;
	Mon, 22 Mar 2021 11:55:01 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Lee Jones <lee.jones@linaro.org>,
	Chen Li <chenli@uniontech.com>,
	Tom Rix <trix@redhat.com>,
	Sonny Jiang <sonny.jiang@amd.com>,
	xinhui pan <xinhui.pan@amd.com>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] amdgpu: avoid incorrect %hu format string
Date: Mon, 22 Mar 2021 12:54:42 +0100
Message-Id: <20210322115458.3961825-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=e1myS2ra;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

clang points out that the %hu format string does not match the type
of the variables here:

drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c:263:7: warning: format specifies type 'unsigned short' but the argument has type 'unsigned int' [-Wformat]
                                  version_major, version_minor);
                                  ^~~~~~~~~~~~~
include/drm/drm_print.h:498:19: note: expanded from macro 'DRM_ERROR'
        __drm_err(fmt, ##__VA_ARGS__)
                  ~~~    ^~~~~~~~~~~

Change it to a regular %u, the same way a previous patch did for
another instance of the same warning.

Fixes: 0b437e64e0af ("drm/amdgpu: remove h from printk format specifier")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
index e2ed4689118a..c6dbc0801604 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_uvd.c
@@ -259,7 +259,7 @@ int amdgpu_uvd_sw_init(struct amdgpu_device *adev)
 		if ((adev->asic_type == CHIP_POLARIS10 ||
 		     adev->asic_type == CHIP_POLARIS11) &&
 		    (adev->uvd.fw_version < FW_1_66_16))
-			DRM_ERROR("POLARIS10/11 UVD firmware version %hu.%hu is too old.\n",
+			DRM_ERROR("POLARIS10/11 UVD firmware version %u.%u is too old.\n",
 				  version_major, version_minor);
 	} else {
 		unsigned int enc_major, enc_minor, dec_minor;
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210322115458.3961825-1-arnd%40kernel.org.
