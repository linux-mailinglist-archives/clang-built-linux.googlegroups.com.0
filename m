Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBUPVHWAKGQEASROKLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D58BCCBD
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 18:42:47 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id y18sf1995609ybr.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 09:42:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569343366; cv=pass;
        d=google.com; s=arc-20160816;
        b=HWtVonGudPiebr9n8N5GeyfAzXLW9l6DFNHgr7TQASWWlUauI4wkoD5MI2wNDR4GdO
         XcrbrErVH2QugzxxLMQarVc4XWNfYF/6CqCv5iMDP/dEexPU6s57/zz5QICXuIsIH192
         eMrY8iFQ/lmojswNfcwnbz5QLxzgJX85QUHs84XZXsD7jXn/eAAJZT5nC1C5UNaAkM+N
         ibouRjIdExKwvljKurhg4rE+PbQTDHJNrbdnqhexUtrzcj1zu/rNaneKhhch57i2X/EJ
         VMcmWfnCiDffqk5AlgRnLrU688SWry9/6E9qi96OMFQtNOZ36bEV3AjaKFwGVoLgL4yq
         uafQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=leIGLU+20BdG16JwL92+HItOt4y0u0scb46oQJNb1zM=;
        b=xvgh7Ymv7BnBCMazXxkLnMEp8QNLMXgpqIKuCpRfzbixm7+oLQ+ibwTswQpZCeWL16
         Z5UVj0Bz4pPpHOCZeF8v54DzQV77eW6CB5J5P8FTJ5HK6Bh7xPAoFQyGlLiR3pzP29Hh
         uZ06Mm51UYWSXNyJODQ1SgByySMmFce04I2xyPbOTVg46V6Y5GWIkZWfVzO+a3uRs1Ss
         KsWriUTtVpWtz/GXln/9FdORPMlfdTkeDNCz6mhbC9bKwSiX95wE86nqtF3y7RvdXTjy
         oEG1yIACn4n7xWNHjyR9gSAHeUDYsLZ5LeIlpU4TMssXqekUSzhistkDzYCrfT7G+hgU
         KMJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iw9cy7al;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=leIGLU+20BdG16JwL92+HItOt4y0u0scb46oQJNb1zM=;
        b=brauzy34H6bpK5KWAVn1Z6M+7akdd8gFjYfJJwt4BX/lytkqXEMAT7DaXqzm8KmGMW
         eqooNJuU/aCf8z5o7pkPrLZqV0PBwzUbEVzUYeHl+zbSZ8vq6UgOwTAnsbAlg60mYqEw
         Xpn75a+KXvG0ADYgq63wt8nTWOK2xm9h1PzXRF455vqPLcjUsOlaMKuXBSGmh29yx35C
         ZBRKrc5QpLhZ3JYrZCKP0XO681ySBHhsJ59CiczgphsjSJ+lR4LK7d+36O3Ii+QJ42/d
         bzWWKplRTXxL9WUW04xECRR0yupYLyY2zKnunC/bDrceHFgYK1/NLaMoyYQYyye6PhY3
         GZyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=leIGLU+20BdG16JwL92+HItOt4y0u0scb46oQJNb1zM=;
        b=kTG427pTwFJYMkLA7OY7JPglGxG2Td9VVmPjM2S9DL1Ns55xbroJnPtJmzV/4kLrhS
         /elQWyJb2TAj4/9f0DWn4+Hp9CHp1BQP2K1ZqtZ4gWf1TrBUWwAiAu7yXlPKekjE9gLp
         5x/7cl2YL+7oZTx/Z6A4I9RKEqXnqnmiNGsSfVU22REQ1t+F8uTazz2QQTv9PfgQEZrk
         IEwqBwiw1YBFYFu+4mCHl7oZ01qeo29huyluFSDWmWMEkczshSSSH3VJez5JmY2CbqvZ
         d077E0xwToOnYDeR3RPnYhEaudV+Wnah9+xIw2yXZAfpdlYcX4nrEmfhX5w+hd/dBSZr
         PBUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUay3NzLWz52/KVY/BVr833H9F7SpqLcgNWHDzW8euWV0L+IidV
	x7WUcdLOr18BKmhOdhuDZG0=
X-Google-Smtp-Source: APXvYqxxT2loQcjtqpclPYGQDpRLbPhIAYJnT9zDUYWnexaVBgdCQMYAtxQ7qSbTBL8EAYQcO6pfcQ==
X-Received: by 2002:a5b:c01:: with SMTP id f1mr2798077ybq.30.1569343366467;
        Tue, 24 Sep 2019 09:42:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d690:: with SMTP id n138ls439533ybg.10.gmail; Tue, 24
 Sep 2019 09:42:46 -0700 (PDT)
X-Received: by 2002:a25:60d4:: with SMTP id u203mr684108ybb.434.1569343366072;
        Tue, 24 Sep 2019 09:42:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569343366; cv=none;
        d=google.com; s=arc-20160816;
        b=es00aZH/32lDHxI7WqoD1a6ug/NIBXZ+GJ2SRpCSh+L619zFhOcWFxlPUSceVcunzT
         ZXdGo99krhuH3GXIe+pG1bun7XtWkDeE18GMZ9/KkvmNrhe69QtFd6Ks7AHu5J9WHucU
         kmDyHT/m4TgP82NpesLz6+hj081TdFL7K3jzxzI769KDGBjhgUbltC2pvOm6J4iFdHni
         A+mXn15Zuf5tMivXchOkRJ8KeMRQFSulMBF7JDExbA0TtZU63AA1w4o4nL0CgKAvXStH
         n+3Yz3AaPXF83wW/fotFm5d5RS6PoOLrrNKx2Rfp+xbfKfeB1Tak2kmbc3mf7Dbe9PPC
         k8PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=LkyGZLy+XZoUqPUnVL6AClTD/0ghwr1UsiDYNgFFh4M=;
        b=0Y+xoNMkcAKQmrMwX9JPhpeDGcetjo2oK0XzdctQfj9Sp3mKSofUc4yVTbqiPts3FO
         LPpbr1W1Z/D7xYyiIPnn2x99nqu9QaE3Aepg2VSv6AokDTlGSG0q/ulac6KkKGn6VMAC
         otbSUCr+5+erM/fyvl3NL93QhiHwSaJwPGUhKOhl+T38tHz+QANNler/KzgGSwvEg5Vz
         4C+EIL1fiNIOntdewZEtYeAMUAoU42bmjgz/E0ewTfCGgk9o//BZ4VOfmemF1R8A/z9q
         Ghcg8fG9wswl8k8vj0D4AvPlaJuwAA3w2I25PFW6Zv/LXrzyY5ItwuB+yX+RBwjx0aP3
         J8Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iw9cy7al;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d23si201256ybe.0.2019.09.24.09.42.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Sep 2019 09:42:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 115B4217F4;
	Tue, 24 Sep 2019 16:42:43 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Sasha Levin <sashal@kernel.org>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.3 20/87] drm/amd/display: Use proper enum conversion functions
Date: Tue, 24 Sep 2019 12:40:36 -0400
Message-Id: <20190924164144.25591-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924164144.25591-1-sashal@kernel.org>
References: <20190924164144.25591-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iw9cy7al;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit d196bbbc28fab82624f7686f8b0da8e8644b6e6a ]

clang warns:

drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:336:8:
warning: implicit conversion from enumeration type 'enum smu_clk_type'
to different enumeration type 'enum amd_pp_clock_type'
[-Wenum-conversion]
                                        dc_to_smu_clock_type(clk_type),
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm_pp_smu.c:421:14:
warning: implicit conversion from enumeration type 'enum
amd_pp_clock_type' to different enumeration type 'enum smu_clk_type'
[-Wenum-conversion]
                                        dc_to_pp_clock_type(clk_type),
                                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

There are functions to properly convert between all of these types, use
them so there are no longer any warnings.

Fixes: a43913ea50a5 ("drm/amd/powerplay: add function get_clock_by_type_with_latency for navi10")
Fixes: e5e4e22391c2 ("drm/amd/powerplay: add interface to get clock by type with latency for display (v2)")
Link: https://github.com/ClangBuiltLinux/linux/issues/586
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Leo Li <sunpeng.li@amd.com>
Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
index 592fa499c9f86..9594c154664fc 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_pp_smu.c
@@ -334,7 +334,7 @@ bool dm_pp_get_clock_levels_by_type(
 		}
 	} else if (adev->smu.funcs && adev->smu.funcs->get_clock_by_type) {
 		if (smu_get_clock_by_type(&adev->smu,
-					  dc_to_smu_clock_type(clk_type),
+					  dc_to_pp_clock_type(clk_type),
 					  &pp_clks)) {
 			get_default_clock_levels(clk_type, dc_clks);
 			return true;
@@ -419,7 +419,7 @@ bool dm_pp_get_clock_levels_by_type_with_latency(
 			return false;
 	} else if (adev->smu.ppt_funcs && adev->smu.ppt_funcs->get_clock_by_type_with_latency) {
 		if (smu_get_clock_by_type_with_latency(&adev->smu,
-						       dc_to_pp_clock_type(clk_type),
+						       dc_to_smu_clock_type(clk_type),
 						       &pp_clks))
 			return false;
 	}
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190924164144.25591-20-sashal%40kernel.org.
