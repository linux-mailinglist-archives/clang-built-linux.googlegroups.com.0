Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBL4KTPZAKGQEGMP3Q2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9395615DE73
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:05:04 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id m72sf3467164vka.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:05:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696303; cv=pass;
        d=google.com; s=arc-20160816;
        b=xEnOVcT3baBls7H/1Sn98zm6gukZ+/MSpkUcN1Wi+r2NBcRtGiJPno+on+JV2Id/e4
         1f7mxESkxX9ETv4fXT/Oiinqn0P4bOhIt+ealsmihHxWSDcE1/Cw6ZQGbYdZ/1BNlEBT
         S5cxAc3qVPHhoYxbSnETj7i4XjQ4KkCU0aydlAjSQiKeXUT62PkgngLSxLtrNV5tmPNJ
         FV4e4Bb/mKo1I+wLL65Y5J+Eg21/xhNCXkA8SIzgRdfb4KSJDVriTJSE6PXUHm0Ti20K
         Bc1XZuqNt46QD1k1CTMYonApCaoiaxIRC7up4y9Jt9l9d7Ir8UMJSmjLhvNzukt5X0qB
         vylg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=h15/9+XVxBHzVTPVLgyfe1t5By0iS3pMQmvVyYkcSQg=;
        b=SCJ9SArkJOJta3h6gK1R9bw0VRoi3ef/gPuTUvXJzuF3/v73z+r71WhjiBK7F380I+
         X/8pNv2MWnimlJsESoAf96XTt6Yn504egN8OFQvxQKyleGK/LjrNAPqUllqso1tT2mqX
         ud2CqNpiFCHbZcWgbSsLeNNIimxJEzOtgtL7B8LyrOujRyF5EUHyfTd2BnpHp21bwwVy
         HkUXv7FASH/mIO6g+JoTtmhBwNoKlCG5bxG6dLJmffUTM83zgWwuBeszlFN+zemFIYkG
         7FPu3kj+aTsSf1yElADJ0Yx+AyqJKLolqjV2zdP2voI/6PbvBfCXjjfCWtdaGtBuYC4t
         B0ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="c5//FEUU";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h15/9+XVxBHzVTPVLgyfe1t5By0iS3pMQmvVyYkcSQg=;
        b=tiC3s4JH4PsJbeuw807QBS64IFY1QWLKqTB+XZ2Z3eD6Jf+6Koh2ElWC16PaKIYXOE
         SEZyCoickNSXYYKo7mqLcDnLpO1HMkXr4doaPCICo4jGv46MQKDbkZpuh49Yt7LPpAYA
         6TBIA8bYWESgJWoaK/6GxdHD4+5fovmwfR2t+oYFAHPUr7/5ZlHCrBgL4OJ1D80IEIiB
         LtWmZs6dsBicPmt0En7KnTCKxGJRcF4ATcIgnQhDXixRaHSC+UxtdtrnxmgHrzZKEKgL
         YYietVQ42DW7F/s+JTwFvcpwReT9BxkI6oWO2mvdisz+O5gy0pJF7DXSCwtYzAFcylJg
         Vl1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h15/9+XVxBHzVTPVLgyfe1t5By0iS3pMQmvVyYkcSQg=;
        b=rakbf8mh8mgvQF6GTVewKYVSj6mqvcZlYm/1u99es7CAiyS2q7VU8kGBKwG4DGaJUr
         w3P8rwjS0UTcPnskOU7OX/E12Svu68GZp+wPQLmwB+rb+JvsA3FwzYpVB7pCRoa8X6qo
         xyvCgwdwCaV+6mY7+gqEyURfroQFlP5Fi80zEc1t+3p1jKMNaERCvNyBaRzHyiqNGxBN
         eN45NVXOIVZ2JmjLUT1qNYlPX/FeTAWmP3JYSKwF+WFvTQ7TQkDiPca4orBMNdhgKz+V
         /Ud54rFJO3Fastimnu8FcnIWIMQry73c5Nw6mElEn4aq7rylUV0E+LVuqqw2hsmXNcnl
         8Z3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUIcir334zATvnEnF1U4Ao1BpMEtDhnFA/X7qFnXVkYhrMcgKzw
	J3IAwe75IiAV+X5mSYWL6Z8=
X-Google-Smtp-Source: APXvYqzV1H+T6Hf/sM8JKPXUNO93roxwQlZf81R3ygE+LeVAanQAeUFUXbdFeOcGllFO6iNV1nygKA==
X-Received: by 2002:a1f:d583:: with SMTP id m125mr2082730vkg.17.1581696303614;
        Fri, 14 Feb 2020 08:05:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2b51:: with SMTP id r78ls139224vkr.6.gmail; Fri, 14 Feb
 2020 08:05:03 -0800 (PST)
X-Received: by 2002:a1f:4541:: with SMTP id s62mr2068129vka.59.1581696303281;
        Fri, 14 Feb 2020 08:05:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696303; cv=none;
        d=google.com; s=arc-20160816;
        b=lfs8DNX5FvwwNgxWczzKwpFQd3aoQn+cV5Dv0A2BvpgdxPnswrjdFLY+0XwMt5Nj0j
         BuluthV7siD7OOyihama5xPnjFoG9pdJ8CvALxNFvdkYrZbhW+rMOL2zkcntLABnBAtK
         NEsL+YBEy5iB0u7n42WVuGtrI0+p6/fet2vFi95wXjjWm650ItlYrnMRM6RUAWaRTtPn
         TD4XGSCuQatLstSd+B0Ni6Ea0CA5T7Xdi2oSHkSsWdky8hijcgmoYOJonm2etQ58FT2Y
         RZER1rl5vbrvIn35Vtf3zNNUGfCCb1cca5bGwV8vPU/LIPKho9FN5YqhgBklLPKjZVvx
         PS3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wyLFvHthmbP3L6cx7Yu6kcCTofsKg3MBizphFrfuopk=;
        b=wWcApzn+zQxn0+kZQZhOWV3Rir3kGkjdeQ/Da7V8gktN26+HlSveZhcal7I9yHLrXJ
         gCQ8Z3BzQ2+tw/Km+PiKyDEmEI3uElrn2pIgyzBF6agKRQ8BY9hmNQEVBiNnGDvu0E7S
         Y+HyxmIrxXZmLusYvaUUqwKu8I6w/BO6zf/JGOPV/8N0dCk9VJ8Ol1Fck3ZG9egYLkX9
         jdVn+X8zConIrsWySxyNBq09FDzdS6uxiHJaolg7s4NhshwgYZOX8OQoSZKYjW0cVlAx
         esGYla80n27XC31eQnA5seeH2gSpb/DS7JdEaZJXp2iUc0dyACSPSgF2yWgL9J68FyP/
         X/Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="c5//FEUU";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i27si238677uat.1.2020.02.14.08.05.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:05:03 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 53E0C24676;
	Fri, 14 Feb 2020 16:05:01 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Sasha Levin <sashal@kernel.org>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 146/459] drm/amdgpu: Ensure ret is always initialized when using SOC15_WAIT_ON_RREG
Date: Fri, 14 Feb 2020 10:56:36 -0500
Message-Id: <20200214160149.11681-146-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214160149.11681-1-sashal@kernel.org>
References: <20200214160149.11681-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="c5//FEUU";       spf=pass
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

[ Upstream commit a63141e31764f8daf3f29e8e2d450dcf9199d1c8 ]

Commit b0f3cd3191cd ("drm/amdgpu: remove unnecessary JPEG2.0 code from
VCN2.0") introduced a new clang warning in the vcn_v2_0_stop function:

../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1082:2: warning: variable 'r'
is used uninitialized whenever 'while' loop exits because its condition
is false [-Wsometimes-uninitialized]
        SOC15_WAIT_ON_RREG(VCN, 0, mmUVD_STATUS, UVD_STATUS__IDLE, 0x7, r);
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/gpu/drm/amd/amdgpu/../amdgpu/soc15_common.h:55:10: note:
expanded from macro 'SOC15_WAIT_ON_RREG'
                while ((tmp_ & (mask)) != (expected_value)) {   \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1083:6: note: uninitialized use
occurs here
        if (r)
            ^
../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1082:2: note: remove the
condition if it is always true
        SOC15_WAIT_ON_RREG(VCN, 0, mmUVD_STATUS, UVD_STATUS__IDLE, 0x7, r);
        ^
../drivers/gpu/drm/amd/amdgpu/../amdgpu/soc15_common.h:55:10: note:
expanded from macro 'SOC15_WAIT_ON_RREG'
                while ((tmp_ & (mask)) != (expected_value)) {   \
                       ^
../drivers/gpu/drm/amd/amdgpu/vcn_v2_0.c:1072:7: note: initialize the
variable 'r' to silence this warning
        int r;
             ^
              = 0
1 warning generated.

To prevent warnings like this from happening in the future, make the
SOC15_WAIT_ON_RREG macro initialize its ret variable before the while
loop that can time out. This macro's return value is always checked so
it should set ret in both the success and fail path.

Link: https://github.com/ClangBuiltLinux/linux/issues/776
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/amd/amdgpu/soc15_common.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/amd/amdgpu/soc15_common.h b/drivers/gpu/drm/amd/amdgpu/soc15_common.h
index 839f186e1182a..19e870c798967 100644
--- a/drivers/gpu/drm/amd/amdgpu/soc15_common.h
+++ b/drivers/gpu/drm/amd/amdgpu/soc15_common.h
@@ -52,6 +52,7 @@
 		uint32_t old_ = 0;	\
 		uint32_t tmp_ = RREG32(adev->reg_offset[ip##_HWIP][inst][reg##_BASE_IDX] + reg); \
 		uint32_t loop = adev->usec_timeout;		\
+		ret = 0;					\
 		while ((tmp_ & (mask)) != (expected_value)) {	\
 			if (old_ != tmp_) {			\
 				loop = adev->usec_timeout;	\
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214160149.11681-146-sashal%40kernel.org.
