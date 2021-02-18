Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY65XOAQMGQE3TI5IYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA8531F27E
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Feb 2021 23:49:08 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id k10sf1578402uag.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Feb 2021 14:49:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613688547; cv=pass;
        d=google.com; s=arc-20160816;
        b=zXONCyiiyp4X/KQ7TYvC+dFjFo+KT7zH4I0QyC598FfJ0FIivHH+mTvuslaqUvaGEM
         njeM6OD/LWM8W77ws/8KW1Dgb6EIjUyFM2TdKb7HEeot6qXiGb7HjM7/WaaIXQ/sMBEC
         zRqCxf+pmBlK6hJ9A6N9soOCqS2oYc2HH3kxnBd28wic0bpwPvBdB0QdhRRFYc6RzteN
         31z8w5PRKE39aB7zWeXU3ITAlJtogabQGEtCz8fidI2t6+9BpelUfWndgtR6voj0Wr2c
         a6TTw/esyu4wLUoRf3lEeGWLUtgD1woaScgYVYMghBPdRtGftBvEcd+Q+vpTar13Spo3
         ALqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=LxkUccr0HEYkhwYKCBB9R+qn9FKf8LDZmvSdPtizjXc=;
        b=sJ0vF0BJ8Q/ZVv7gtGBlp3IefeamaQowCAldhoyzvAid8dHb2BTprsB+yAOEyelIQd
         3JYkv82o2EElP1D68lFqdM4Zodzp0WpFcYFqxkQzoEbxX86AUzxCF1bL+0Mhae3FVSWA
         8kpvkFs3wtVeAMX4UDPq9jWKW08QYg8d5d2INbM0xnsREpWoUECVNcVqGZ7DiJHJ7eBn
         rM1RmIc2e/b73oeIoUd1748c5I0DFXPZ+4cQQ2o5LMvEzaG7Yoog9jOcMYyHu1hUL0mR
         9PZPYJ3Brwf5FnhRQIl5StQJ7Z3XRGJo2iQoXKRAIHwMJDzH3WNz6qLbeAo8MqGoHNoX
         4cSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qf72mZ0i;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LxkUccr0HEYkhwYKCBB9R+qn9FKf8LDZmvSdPtizjXc=;
        b=YzA6pwm8x+42uLcqxjcwjJjRhEiVbI8ZqYFH1YJHRqCXDdb7yQ0jPV6iymZHlTIKWI
         x7CtREBbFg2xTNmGlAHJvMjg86ry7BTT2PcSaub7ziyERVhRbknU4rL5aXHSO97qDtzB
         SUT6Y8u/1lx15H/iukvuRFPuE467wwhmmsf2On1RAMjegUSUOh2u9D+0jz1EZVQX8qzd
         RWQv/had6/V/7dgX+oEXB2iIzbD6QvcZt7pYNc5iyt3XO9coSBcgaPbWVaDjrdoUSrrF
         NG5jSQINN02v0tXxf0pOzMbauV1Hp8zMPwaAqRJ0lwv42HOmCLsxUATmAO9RvsN++5et
         HZ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LxkUccr0HEYkhwYKCBB9R+qn9FKf8LDZmvSdPtizjXc=;
        b=Elwsu3ZcrTmTQHblwgQo4Vp3/3baYjMWFkBhUCmwHZNRODqrxaw0z6h0yhFMjxULst
         o1I+/UNDadLcUWXrVFW201Bwt8468qNHfpFlnzyPKvSs3sltpNRVpkr0QYhFrBMseFin
         PRcf6wooT4C1slsWIMkgsj5AnxTW4OsAy0+90Z+YB4ImDchjJuGS5xd+pC03oChuoh5X
         kTgOxF4T9d/YhSH3iRTyIS2iGtGhHNzi11z5JZOet45y3I4QO+TLL52Y+mysSi2Uiz46
         QmRk3ClbmqIndUdhadLzGdzkNbK8/sKoDJOK5db/CWx3nX6HU6XAvb1SNzK10PJXY2VB
         ogwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EWi6yALOIguKyATpoN34f02pm8dCKpaLSBTQgQzz/NyP06cl3
	R2CvWTMWFo0sr39pzWScM0g=
X-Google-Smtp-Source: ABdhPJwwCIR5c3E3BOIgvtLyfiRKZZ5hTwG5Xzege8v3yqLEgpdL6fraVH/ROS+bk4MU1DumIc/98A==
X-Received: by 2002:a67:330c:: with SMTP id z12mr4970397vsz.17.1613688547641;
        Thu, 18 Feb 2021 14:49:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fa8a:: with SMTP id f10ls891596vsq.0.gmail; Thu, 18 Feb
 2021 14:49:07 -0800 (PST)
X-Received: by 2002:a05:6102:7b1:: with SMTP id x17mr4999963vsg.41.1613688547185;
        Thu, 18 Feb 2021 14:49:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613688547; cv=none;
        d=google.com; s=arc-20160816;
        b=ZPiH5KZ+811+xEboDvBJ18Kgy6y13362JPGbUEPbj0Gl+CwPZTtyiSN4H6FhYx2e1B
         tIr1+NJq1ZWgjf+q1fYYi8+HBQWCLxT7ZP1loB+bxcaluJI0FqRMO0KzvFqrWbuF8QRD
         Z7DuMYhta9Uu1Jy0bidBXBCncS9sD7LVmjOWk5Yp3EmHYYlJk1sq8oB7qjKD+KsOOvkg
         pD3m7/XwRq0ssc8UdyQnLkQjZjurReQUHxSOZOslzV9a6kJeutaew7FoTjXF1YXQ24IO
         4HGIMp/r3rFVDFrtbTgcUfhegKV9wCDU9gPIs53Fmw/99OR1nvcDmhPbISl8075tu0xa
         x4cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=mInzlqT7o9Jafk7KqwZ362owPxYNfNT21t3JuVV4T+E=;
        b=sSYz+kUPc/kRgdQHMD86Jyj/OT6entSmx3OsvJ0bh5lH/wJ5/eVbB7uJyjifl6SUJe
         Ik50j3VhhG2LBWiHHOD+aLD+uSIuHUzsDJEfafT4JveWWC+iutbB8Dq50p+tirF4glKS
         GJt8vSOpk8rVbovBxMF1tT0A1OrKIQhFFxJTaoh9S/ejpmHKxH/sp6upyOuf/AcdMhPL
         LpDoKkJasv9naUrhWkH2rawrA9uXzM+0skzK0LOe0jKImWHqRdArqDpW5zQCTc/vwo67
         RPG7JYX1aVbYifaF8b8yrpK5tXRU3hiblVnKlWlJxwozIx5BeOEosOkXLE6PBUnW1YZ9
         pIHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qf72mZ0i;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y127si314108vsc.0.2021.02.18.14.49.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2021 14:49:07 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 82CD164DFD;
	Thu, 18 Feb 2021 22:49:05 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Kevin Wang <kevin1.wang@amd.com>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] drm/amd/pm/swsmu: Avoid using structure_size uninitialized in smu_cmn_init_soft_gpu_metrics
Date: Thu, 18 Feb 2021 15:48:50 -0700
Message-Id: <20210218224849.5591-1-nathan@kernel.org>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qf72mZ0i;       spf=pass
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

drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:764:2: warning:
variable 'structure_size' is used uninitialized whenever switch default
is taken [-Wsometimes-uninitialized]
        default:
        ^~~~~~~
drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:770:23: note:
uninitialized use occurs here
        memset(header, 0xFF, structure_size);
                             ^~~~~~~~~~~~~~
drivers/gpu/drm/amd/amdgpu/../pm/swsmu/smu_cmn.c:753:25: note:
initialize the variable 'structure_size' to silence this warning
        uint16_t structure_size;
                               ^
                                = 0
1 warning generated.

Return in the default case, as the size of the header will not be known.

Fixes: de4b7cd8cb87 ("drm/amd/pm/swsmu: unify the init soft gpu metrics function")
Link: https://github.com/ClangBuiltLinux/linux/issues/1304
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c b/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c
index bb620fdd4cd2..bcedd4d92e35 100644
--- a/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c
+++ b/drivers/gpu/drm/amd/pm/swsmu/smu_cmn.c
@@ -762,7 +762,7 @@ void smu_cmn_init_soft_gpu_metrics(void *table, uint8_t frev, uint8_t crev)
 		structure_size = sizeof(struct gpu_metrics_v2_0);
 		break;
 	default:
-		break;
+		return;
 	}
 
 #undef METRICS_VERSION
-- 
2.30.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210218224849.5591-1-nathan%40kernel.org.
