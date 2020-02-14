Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBJMOTPZAKGQETX4DVRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FF715E03F
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:13:27 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id i1sf3482945vkn.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:13:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696806; cv=pass;
        d=google.com; s=arc-20160816;
        b=UVhyEbatm0s4vVFVLg6yEcZP3jKtv4JXCAy+W7OBi+twvmT4wBUotoR7ojNue8QSBk
         aB3SVtZLVIeGTx8980OdFj6bH/l6COqrYlzjo5C0YqZr9RYFW68XJNYbhSdx76TKNmJd
         eMyw0fU/igzA+EiiN+gBb6VLrcqKaltTe8NamTJLn8ogrbBKH7WmlXNWhGRj8W3rnUk9
         8giZ5G/B/rXZUkkR+A4dUdFRGdqXlkDXut/CWlfAMbPg1H1ZaEt9bU/YSGG7/yfQ3dya
         iusMAXxioIXvNW1kv5bjGjBsMxkhmblOyA3uAHFISFGD5Ed6F0XHr7XGn34sWamQchkb
         bx3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BSrYODUk4z5quZVTMnZ8Se7kTRkU+Hl5W4MAb+4sKco=;
        b=CnBGHMUPqK879XLGYsP1qjJ/IXytdFebkYltU2lyhDXQ5mVllfu+hyBzb7cwNerVkI
         9GMF2vpX+67TKu5eRAbqsAyylMnUfuJqmTj9mMwqd1NKeIbe/61NvuOCBH/N50+SfI4y
         LVmWBC4vhzrhrZhxdPJZdQYaEqlFUTZSKs0JfD8QQ6A7l5MiE0+CkUeMGr6LXGLGaCee
         xTGqCGWDl7HyYS/ON2NF/HByaCSzWZVwMCuqbjuk8Chgh1KOTDG14eRGMDurHFAPPsvm
         01RHeDnE6c3PKzQLv9xvx6tHH7TMAYfiROdHkL0kGPHUq9RdtiRgNrfcoGVaiXvifzof
         hJ1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ptHKenli;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BSrYODUk4z5quZVTMnZ8Se7kTRkU+Hl5W4MAb+4sKco=;
        b=Y6SRexX/yTDiciSKkLbWst9SxKBWNkC7QxqVAjbD7/r0NptP0bPlicXjwhBJ5imlci
         frmoEBMsN0PULjKoWkgUozoE/KsbkLFKhJmdI283+qWnmGza1N5iNmCvJlxvoO5t0a74
         QjiQnOty1VXdP8KB6kCbDip6PARFyMCvRTVGcjIXrsArjn/i7UuirtLI+g2HhqnDU193
         ZgdIlZZJ5u3kTjFVxIo0Aef5J2BW+xUgSAE9FZAf4uefmukBknP/4kMT8k62/NP5WVqG
         KRmk8yI9Tl0KTNDSxn3ErV5A76IDzDmPjeaRW1QdA27eH46aptyWSCySdW0FiPUHINyK
         Nrqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BSrYODUk4z5quZVTMnZ8Se7kTRkU+Hl5W4MAb+4sKco=;
        b=aLkQduoW2aDcQa0ciQULtAmU8RXey/tvwjnmPpemky2K7KAi3wDDn4liCkmzg/zCw8
         DBQsyBcysdF/NYhoy/xeWQti1XxQQn76QfSyTMHkDI+HK4gN+fZnM9MpHXGqlsvZtgOn
         TuO+aStgJjZY0ZgOOll2Gd31YYG5RIjZB1CUFWshXsDIz5xwzTQCm9Aj0AC57pchcUHA
         pa9nX7rQ55C5rDKC6UADDiH6G74SMecOARGI3Gt7YEbOWOe+YK71je9MOwL37txVonLR
         SiUiG/NwczpvlVZR8pQRjUFl5bHfTkHb8LdJ5oZ0hGO9evCxzJABS1/mzplGqNelOkV0
         Vdlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVNAPWpVwj46+bhKiubKG27bZUHpX8CGxajyUW6B/YLgvYaB8jz
	QiAkOjnx9tfZujOA6SgIFa0=
X-Google-Smtp-Source: APXvYqyzKbk+1a9pp0XztgNwew6ovq0JZyJtBjhYzWWI5RSOuazopIibQ3Fk1MDEkpUmujKBgZqGsg==
X-Received: by 2002:ab0:2ea6:: with SMTP id y6mr1979879uay.25.1581696805536;
        Fri, 14 Feb 2020 08:13:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:804:: with SMTP id g4ls319572vsb.11.gmail; Fri, 14
 Feb 2020 08:13:25 -0800 (PST)
X-Received: by 2002:a67:fd56:: with SMTP id g22mr1843452vsr.67.1581696805165;
        Fri, 14 Feb 2020 08:13:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696805; cv=none;
        d=google.com; s=arc-20160816;
        b=ZuDkvz4uW32oK9X4fgK8anasYAWe8ycnHCJ+XEduPWbRU8/zRebNwsvUo/8l3Gr4DC
         xhebci00LE3NsCCRdqmtJ9FxbtkP3WX+EbZLkpI5w4fOoR3a78fSUFvAZXOlJnr0ZElg
         mDpxqisCDLARExBhH0gI522jxG4oQ0lTZZF5Kfno7wxSzEWJ2YY+A64g2jJ3eLwifOWZ
         amx+7qt/VM0jRed0gTVuXN1THRam97GiiHeCE8O/whHTjmVQeRd22xzGQXk1AZ02vPry
         OvygitqxM/FUOJ/V8pw7NU12s+2Ofdw44/WrDVTKKLyKC5kIsFjsiSPQDOygyMQPb1pN
         D4VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Mqtyek8JqC908m32njpNUnSpSld4wPHBam3cPhf6c0k=;
        b=e9xTzuo9n3wohDIP2l5c1NB1pY51fphUsWKZuCrO2LXQGypQDcb66aHQgIOwti2ctx
         HXZLb3/KOWcDFwSBAG1lfR8qSWhtlfqQ0LUxrmDlfbZFUCydugdi56L1g9MjRfHJ3OVb
         cX2LXqyqkpW7BgslRAb6DbtbAluM+j7DOJwpAf0F9cn87wJyMo3TRoXk1zjkeIB//ald
         DRET6HrjTcZuLdm94O63e6Y2pkhvvSWUiOgIicEWrvsir1iOEz3+mzWTGfS06zYutCMe
         sADrDoI0D/sUFOp4XxCaJt5Sgub6GVTH5JUQs+1h+uDOphPZDvxHUGevtoCUmrgcEFPe
         GyoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ptHKenli;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n5si221794vsm.0.2020.02.14.08.13.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:13:25 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4485524696;
	Fri, 14 Feb 2020 16:13:23 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Sasha Levin <sashal@kernel.org>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 075/252] drm/amdgpu: Ensure ret is always initialized when using SOC15_WAIT_ON_RREG
Date: Fri, 14 Feb 2020 11:08:50 -0500
Message-Id: <20200214161147.15842-75-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ptHKenli;       spf=pass
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
index 0942f492d2e19..9d444f7fdfcdd 100644
--- a/drivers/gpu/drm/amd/amdgpu/soc15_common.h
+++ b/drivers/gpu/drm/amd/amdgpu/soc15_common.h
@@ -51,6 +51,7 @@
 	do {							\
 		uint32_t tmp_ = RREG32(adev->reg_offset[ip##_HWIP][inst][reg##_BASE_IDX] + reg); \
 		uint32_t loop = adev->usec_timeout;		\
+		ret = 0;					\
 		while ((tmp_ & (mask)) != (expected_value)) {	\
 			udelay(2);				\
 			tmp_ = RREG32(adev->reg_offset[ip##_HWIP][inst][reg##_BASE_IDX] + reg); \
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161147.15842-75-sashal%40kernel.org.
