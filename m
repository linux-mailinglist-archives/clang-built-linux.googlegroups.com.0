Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBROAQLYQKGQE7YINVSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3F013E9F7
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:41:26 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id m72sf8558280vka.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:41:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196485; cv=pass;
        d=google.com; s=arc-20160816;
        b=oNo0akRbq7ExpWngPHt66ng0HxAux0icRutyT1WNdhr/kgW620gwB2NCpcaYV2jZeD
         nxq/TiT6w17IZxn4SZuH5hkey3w553g/8y1myclN68eLOGmWJTVV+xOYdzwMwclEC/Fj
         BuYex05ZuDNRlEuQ5itQ9QeuwsdeYvAOvIDjiUU/MDzdhFkhDk/SYw42g+xXNPqoHd9R
         HTNx+uBPVxa/uS2i6eCk8NEblJc1v1JjIDU8sop8+6hihSKYTWO8xKpC8SCPWPtlH4my
         Qk2Q+e3zjbgK/KAoE778jPdfi4g7LV9wOr2kGMKO56YKSBR0IwljPIBLGgj6wKwZ7872
         K7Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4F/b/RX/Dv0BOhqzN2XywcSC5FSyEMK/z0OF/WUXMbo=;
        b=REUNf0qfV07Bz45H/Q4slMSzM3BLdaLPd4fG6+ympOL6cx2IIk3FB0RAfSLhY+ronM
         1+koyKF7a5OEXAYltlBbBbqS2pheN5q3cYwxX/bb9iZnVSzt+GoI2sDVWpLd9F3fnmS3
         Kpn/NYPuJ/G0eQqI5AjRjzaxTs8XU0OiTZ7N8cK1v5LpAjwTuCIeHjAwky4qisxyCUke
         s+cKR62X5tTkqc+ceyobpg4hjoXAfUptVVeuTOskyI1HEsDN3Sz4QXuVQrHU3PXD9lzo
         ftXoAAMfhvxc/r8NUu0AbPz+wzZSVVynjGt5agtlVEN7HeV5EMkSNioyVPopVUaS+QKW
         sE1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=A5i47zp4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4F/b/RX/Dv0BOhqzN2XywcSC5FSyEMK/z0OF/WUXMbo=;
        b=sukc2AICZPPGDWFivgiQQaYub3FsrRl4pwBbivFBqzZlwWoI6+82fcwuSWpiqSmDfq
         e3GhAS0JYxees0HxhAuhiaUgrZUs5LVfedI4iBQXGCaVA+buc+DwXE/3ummDcNaNtyOG
         waSZ/He4pQ8dMJ1dK+rjE7Iw/mg6IvXTkeSu9GEGVtrZi6/sunLZE96C4pdxSwWJU3su
         MM/+gsCG1mGiegf9XcWHo4RRE4oegSx3cFCYY9GYKrZiKXC40TGynqfgUZcnw4flTZfp
         QdyjJi2fWWK/g0JKGINEAB5lc56pWBQjP22APVMxyQyCUdBWHGVKWcGYDpf7eSRAWjv8
         9Aeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4F/b/RX/Dv0BOhqzN2XywcSC5FSyEMK/z0OF/WUXMbo=;
        b=hzwWw9kAZiShZeGf83sxmt+K19K7exdMgbzYYPFYk5XwjTtX9NFtbJEVLPBh2JOOVL
         s612Afg+Z0oGFo1OZJ18QbpnK6gF1UGPWR/bljJHrbORl1FVXpkaE41LTQNMOHBa2MQr
         +jKyK5RvUF8L1h8y3ty/zWwS9l0brzt5Z05xdNE18HMZ6FlQIv7vvP6+xg/yvRwFJFUZ
         IKB+Hkd7E/3hUVHn25zKLPVG2YESIm343ABSPTup2fM7CbiAfvuA/uWWM4+Ay1dD03aJ
         iGvSbx+3jiuekUbJPbhHPFGBRpdGkkx+xoS9hCgJXBtvLAFJZESD4qakWf8g3CmLDF7z
         c9+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUQ5wZhDqsdu81UbTAgMfOr6SkfnTDFcDrAbqs6HTHj6Ta7Hg0j
	SMye3noG4D0RjR2mbS9GZhU=
X-Google-Smtp-Source: APXvYqyKUJwEPcVKOvwEQqul371H1T3O/AbGLAhwdlwO5pFgl82iuzXfG1tvderZQ7AlBu0b4yhgxA==
X-Received: by 2002:ab0:6493:: with SMTP id p19mr18196835uam.96.1579196485702;
        Thu, 16 Jan 2020 09:41:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:c92b:: with SMTP id u11ls976647vkl.2.gmail; Thu, 16 Jan
 2020 09:41:25 -0800 (PST)
X-Received: by 2002:a1f:20c2:: with SMTP id g185mr18647882vkg.44.1579196485293;
        Thu, 16 Jan 2020 09:41:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196485; cv=none;
        d=google.com; s=arc-20160816;
        b=IJeHYMeZeMJibzB2a8VR7B9G58NP4CBIiCLWQb9S9AUpodS2zNb3voxJa3bFaUA3H7
         cvwYfeZgBr67BdhsLH3Ooz9ukVTSknFc8Qfe8Zd1KjS6za+VyHTrCvZm42lnsSBnchpN
         eeqS4B5HKmac3Gg4KcDokCZ9GY77GPVvs4Mza3a97hBvE2cWMp/8z853J9w9f/Po2N0D
         jBZB6tvgPMIdYKWBw3lETIOuJboiDb8Z/Al/yrIyhB7FFEGdt6MWZTfImwcP/WJNuoGF
         1gwldBojgEOrO2sRZ+nxDMcKixT7zWY+JUg7qhRzcBSWn2prykg5QbD3vdGyxPdLzVNf
         aedQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=M3kd1tF+P22E0yzF1YG6uAf0eEGmsU2dIrGYPlXkIgg=;
        b=uqPli5WL8a0qwPhvPVCs4H202/fdhFp9TUuYbZnuxDX3ydUoJZ6RxKbteIuLgmh7rF
         f9BSWXmg2ZePAbAAwCIr5LykEpl5sjhvMTdKLmS/2UCsMyXh3F5qSqxjPKZPWX1vb/+5
         9Dt+54dqAa8TBvd1SGzqwDqgllzHiM/xpudR2OzYcn8EVlLkGm6fV3RedRE+9vPtiQ1M
         0cr4IzS5tKZWemWriKue7lGnRijfFzpPDt6akFyCsQHxjyZk6e8YdvRctVCTAaShG9b1
         k/rzofj8/C+Ub913h5+Y8j6s7asyyIpJsd37OLJy8MpFJTxu/8Nq6HRtG9uIwEr50b7T
         evAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=A5i47zp4;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y126si796234vkc.5.2020.01.16.09.41.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:41:25 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5791D246E0;
	Thu, 16 Jan 2020 17:41:23 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Ping-Ke Shih <pkshih@realtek.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 230/251] rtlwifi: Remove unnecessary NULL check in rtl_regd_init
Date: Thu, 16 Jan 2020 12:36:19 -0500
Message-Id: <20200116173641.22137-190-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173641.22137-1-sashal@kernel.org>
References: <20200116173641.22137-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=A5i47zp4;       spf=pass
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

[ Upstream commit 091c6e9c083f7ebaff00b37ad13562d51464d175 ]

When building with Clang + -Wtautological-pointer-compare:

drivers/net/wireless/realtek/rtlwifi/regd.c:389:33: warning: comparison
of address of 'rtlpriv->regd' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (wiphy == NULL || &rtlpriv->regd == NULL)
                              ~~~~~~~~~^~~~    ~~~~
1 warning generated.

The address of an array member is never NULL unless it is the first
struct member so remove the unnecessary check. This was addressed in
the staging version of the driver in commit f986978b32b3 ("Staging:
rtlwifi: remove unnecessary NULL check").

While we are here, fix the following checkpatch warning:

CHECK: Comparison to NULL could be written "!wiphy"
35: FILE: drivers/net/wireless/realtek/rtlwifi/regd.c:389:
+       if (wiphy == NULL)

Fixes: 0c8173385e54 ("rtl8192ce: Add new driver")
Link:https://github.com/ClangBuiltLinux/linux/issues/750
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Ping-Ke Shih <pkshih@realtek.com>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/realtek/rtlwifi/regd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/realtek/rtlwifi/regd.c b/drivers/net/wireless/realtek/rtlwifi/regd.c
index 6ee6bf8e7eaf..ab53cf42cf42 100644
--- a/drivers/net/wireless/realtek/rtlwifi/regd.c
+++ b/drivers/net/wireless/realtek/rtlwifi/regd.c
@@ -427,7 +427,7 @@ int rtl_regd_init(struct ieee80211_hw *hw,
 	struct wiphy *wiphy = hw->wiphy;
 	struct country_code_to_enum_rd *country = NULL;
 
-	if (wiphy == NULL || &rtlpriv->regd == NULL)
+	if (!wiphy)
 		return -EINVAL;
 
 	/* init country_code from efuse channel plan */
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173641.22137-190-sashal%40kernel.org.
