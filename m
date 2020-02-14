Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQUETPZAKGQEZJ74T4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 042CE15DC18
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:52:36 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id b18sf2349209uaj.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:52:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695555; cv=pass;
        d=google.com; s=arc-20160816;
        b=movxgwYqrNEP+oqYYYo2xJi0frl7BoO7O0EUG7dGMZNfACTDXCE6AtpmjNW7AIMDo1
         IXUs3Neovc1ePuXY2QmHFbO12HSf0EuuSu+kPQFVC7ZKcxv+Q0lA3pLRHYbAQ9uY2FK1
         +cAinDj13HcHmT6+gkm+iqbxBJqLukL3pLoVcjHT+KOWTjKmC1OV9MrxIrZjJ4rKhPYP
         Ac8GgXWyd7hfye5SY5Sg0xA585ewIBbllgsc22hvSIW9GlD4SRdvlimO+fH7JXI5TFxB
         NIKmlPgXhQ/aLfsCkdqvmfml+xHCtiyVxGszi/bmLU7BdBttQrCrQemlO/5e2qBYcqqy
         VeZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aVvE86fElk7PKRLiavpMtTTA55hoLtS2njqU8vCy14M=;
        b=fxGHHOJq9iwsaNLNnAgAQmuV1PHQuwEPp76Eelemsq4fuN6f2/RmkKNsPxtKLz+XyT
         Tu8kH4A/t/18t7Zle8vS1tuyfxgUwJL2owFa19oee5VafFNfOzmEQnfy911FuytkXf7v
         bBWO75lKvn/0vjZkGVGK+1jEx7Et9mqV5t5rL31fCi01sgiRgiXCtFwFc+JNxXR48ICR
         ADA2EzMIFFATt0HJXaKrq4bi/BH8tAKehk0XPSTS4ckJzk+JJbvpK53IFSKZPjoYSKW7
         O5E/FySWoz6a7S+klzIPl5blJBlSeSkRCAf+Hfst/8+kYX7B4CQBykrxeS/b4+SynvOa
         nBfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hYQAZYsH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aVvE86fElk7PKRLiavpMtTTA55hoLtS2njqU8vCy14M=;
        b=ItPSMnhVHFv4TxaWLhLmuKZwgNSuO0t9EhUnn7nJW/ZFrS8fkuL+nCbNk8iW0ERQbB
         z1hhT2fTwhQSVHtX/jcajB14X7H458Z7AFOrVDOdmAItKES8rmdI/VsMZ0cS0rv7fELT
         scY/soZLjr6lNrIw+sqnU3yiE+ZJ2egZ172MYmqnu+wD/Mh2be28ja9e6X+XgytyV0CZ
         BX2blvWtaqgk7Uo8vxlToZvObJz36KNLrQOTTp8H5WgJ3ER5coujzt99HcfPDyNncQV8
         mUMrntZzp4+qrSvjhRXSrAwd9kB4H11WJFb+/HN8VBpWmFOTKNDNesDH1ycPnHWpUJrT
         NBNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aVvE86fElk7PKRLiavpMtTTA55hoLtS2njqU8vCy14M=;
        b=rQSiKAjglo8rQ+U0GdltI3SJzQ3lPetyHfb8aqnPE1B98DVXCINGmknZpXIfDisYLo
         QErZPSPyiaPwGtqFYCdPqfTYW44RY6SIQPdrDyGosF2fqT6bfaiRSHsa0iJmO971y9pT
         kET97EfdFlvhVPii0cJp6qhhhhDkkt6YMcyp+P0OxCPQUOynGQ1Rzn9AJCcn6i43Qee7
         n862jYFRODkLGguGIhBGYdVl0IqXpv/CWG5YS6Kd3DSerQUZqYEAKtmz5LNuFXsponqF
         pKyiBJRTPorqiy6XzUNWaPsZB+tQSRQiMP7vT7NhCDH5JaF5djJXZuMRxGmmfzHC73Ro
         FrgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXOuwsqbzBp6x0QLxf9Ub5HDwny5A29vt38pgPrz4ehVNUl2frK
	rC9xFxo09wbeA720wptBvd8=
X-Google-Smtp-Source: APXvYqx6WK0Ctt8jT2jCLqXYxASc/CjO2F8qRP8ExrbCfHZUDw95DQDj4tZx4tNMuB2atkdFB3ul0A==
X-Received: by 2002:ac5:cdcd:: with SMTP id u13mr2139267vkn.0.1581695554894;
        Fri, 14 Feb 2020 07:52:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc8b:: with SMTP id x11ls313133vsp.7.gmail; Fri, 14 Feb
 2020 07:52:34 -0800 (PST)
X-Received: by 2002:a67:ec41:: with SMTP id z1mr1843493vso.197.1581695554501;
        Fri, 14 Feb 2020 07:52:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695554; cv=none;
        d=google.com; s=arc-20160816;
        b=LaIC6uwKbXBb9yrLxmZjzexOUIrT3tUwLM6RADRxHb9a/RseoCIZrKGL7QfoBA5vig
         96WbIdKkKYMQOPEikd+nS1C6tcNH45k98qNZTSBL28+r5U7PUy2JohhHFM1J+PeCHuU8
         zsqoeJzLSldZsW361rK0duxRHk18fEOzSUkYZ+rVuSPwuZRWCrxtfsEOc/BrJMZ7CWiU
         Sg8gGEFqqQlKT5ufEQdEHLGpZTqhxv/fJjFDQbXdkimtN3IcSPm2ltkhnPmQhk8gxhmH
         r4gcazYf6WhktLWJsXpFJHIMgcbW/8Jf4rmrDbWtm6XHs+Y/gyaPj5Q8EHnyCu2qMbI4
         xZoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wyLFvHthmbP3L6cx7Yu6kcCTofsKg3MBizphFrfuopk=;
        b=QP9+sslaPwah9VZ9RFEURIncy2WcWlWR/WANPqd6LZRPKxsMEqbV921H/BW/MgezCP
         rMyf9bSY5e/EwIvIJZFaVNGJS/XxJlxoKHuiQ1Rr4rENHKF6BWpvfNYmKxlUsDGW6WRn
         MtohsxGMEFaFK9/AFCJiSnl5cyZ9/pVaqdjTmbDBoGiVmM+nhwPIS2ywVNIJutzQuJtJ
         vmk38iuYfG9qA1D8GaKT78YYnbIldYh1eWDgvrIO19EAkLGgrpaUwRAE6DS6KSr/Xl1n
         h9rvjfN26dkfjw7HKq5CYIqm8wsc3T+eMTA4Z98rHxcRj1nSIzgt6tHRyMm+tTB/agY0
         Wvwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=hYQAZYsH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s5si344387vka.2.2020.02.14.07.52.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:52:34 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8D9392467E;
	Fri, 14 Feb 2020 15:52:32 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Sasha Levin <sashal@kernel.org>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 168/542] drm/amdgpu: Ensure ret is always initialized when using SOC15_WAIT_ON_RREG
Date: Fri, 14 Feb 2020 10:42:40 -0500
Message-Id: <20200214154854.6746-168-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=hYQAZYsH;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-168-sashal%40kernel.org.
