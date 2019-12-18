Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBT5M43XQKGQE6KZLOXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAF9123D9E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 04:00:32 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id l4sf404862vkn.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 19:00:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576638031; cv=pass;
        d=google.com; s=arc-20160816;
        b=tjSErXiKAzZiqrHD7fzXdYaDi+sew0/TzkVV5PQtydFpFbqUrOnnjRGdhOHiUTECER
         Virxjnwo835b9zcKX6vUTvGP9N3CA+KJZPj8cns/0v9EN7N+5V38BF9W656McaplhPJT
         YsYNN0zId7usQVkcRJ4RZmcPzsOMXz37ROv1DkNbUZ+9ku0wDtcT22YcVEsCEKY+zbkU
         PDMLzA3SO9xd/GSy/MnVyeT4hM2ZdLS5o5ioP/gKfQpXCKN4bbdV0wD1wQO5e4PA9OeN
         GfFBqhq+etRagDL4exq31fH7YHRaZt7FJgHl34gF/Ep2HGbZ6lIboETKOFCroxeoCcj3
         dLXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=sgrB27RAIzBgIhMfjSgBZV90Ei7k1kcVb7mCIzFm7MM=;
        b=dfWEYPDmKue28xwZlBjS09XNkddyC8A6BIm6h6Ug2DEmstQHYE7S9giiwXygZBN5kx
         +1Spwij/Y8Ld2mQQHNL3fuM2MimWvauoWv8EeDtE+hMlYVw4OzAMi6vwpF/MGXVVVM75
         ju6icZqX7nS1hQ5c3ttCLFGOgTz456wxYID3fv17/zLRgIZLZVMwt9ZmYJxEWjJzPkpf
         S2EnJlFyXAkTdUD0PYSgkuo9JNU4y2KkJ2VxS69R/zA7CBhZyWofWx8d8o/7iLYp74+i
         7l3gMxnlVBENd0cuT67SyHZoeS6kkBK19tR40is6JhZ7pnQF5RldzFJYrgiJiSvcepHb
         +IvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="M/qv0ZCZ";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sgrB27RAIzBgIhMfjSgBZV90Ei7k1kcVb7mCIzFm7MM=;
        b=p5bmRSZozZKDuwS9cG+aEJecopuaY4BROy/PCU2evXHfFjTCZ7iIIIDRBwv52eJadT
         qvoiOxoiIFeWcqsbAf5MBo2nvN3l9iH7oI3cPk5Ym9sa1ZPq5kugldQOZtcQnLhJzj3J
         iE0eqvWwcMD9vc9UP3i2I9whzCbLwKo5+eoaJSZDes0Vk7yWOxhYw6iOr7sENG/bnUWO
         NXx3N5b9SVUrjm1EtJlDO7Jl5Bpav15g65nWGPnGbxAoGuwpymrrL9mKvK74BrTY2PrI
         ZPR4znKTXMyvfrYq5G3Nnh/ApDwNYtdZDTlEyowyq/oSpZZjfnB9qezuYYWf1hxiVFkV
         4GqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sgrB27RAIzBgIhMfjSgBZV90Ei7k1kcVb7mCIzFm7MM=;
        b=p1x3ch48H4zuzXiyg2h6ObWXHKMSyPz54pihC2fWTiSR3xI1xA4BcZ+ukz4E8sDrWT
         Uzu0hgZYRff70ZruFln5Auf523C4Unl201x2ROMuWiPWHB87cS+/Stbv8C7Ut9rUE54y
         4S+asO3eIJ/IHcYE/+dXYdxGpk1ypPVoSswaDqeVw83Tgg7VIQXMnKb/hlX0WLluXmOy
         +hManYufu7VMwxoYO6fw2RuxaljVClODqj5dT6lYTFKVHMXp/7kvICf3i0s1GGn8jOGu
         Arx9rLmdiiYmd3Dv9jeQWKY3k0bGBei+hjADZ2zRXbILJI6tFlvTjA8dZZUlqSWylJYD
         dMkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sgrB27RAIzBgIhMfjSgBZV90Ei7k1kcVb7mCIzFm7MM=;
        b=XAYckrGhoRwg7WiGsKj1avNzuH008kmDG3Lk0HVcJhBg/g6LmGt0rgGPtW4s+KzN2Q
         Y3QgdMNZzsSbmzGuftXdPMJvxMXczjJ1fdQkgJwPGiXcOswLQayPAYLlKGBcHnwZc2EX
         IW2e4SEiKZ3EBXYX7CdBSNFMhoZSvKiK8WBDo1SIn3BUx4wKhuNELAvIsVgnrr4XTCeN
         1x7J5DbJDSKa84EeHDmAssjYDFn4T9YptJI9bW1t7+F1xZDr51Rx8TO0eGsq7KfsSyWw
         NBG806ex4f3UpxOkVNYi2ZPS4RsCZzzhF7CN2FYdTx30Vqgrlp5W9eZSm3fKHHBj2Iwm
         qPtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUcZIwTNM2d8oU+RM1Kg1hwP+hD6gp62qLOg0NCEi8EzF3TXybl
	7rJzmbgTGJ7GbEdeX0OT0u4=
X-Google-Smtp-Source: APXvYqyuIP4wwVKljvqzAQHX3Uh2kqVsVpwJkERL49kekNGDhja4Xwn+wF6pdjsgFtbw0EdDTMzIUg==
X-Received: by 2002:ab0:5512:: with SMTP id t18mr304940uaa.128.1576638031674;
        Tue, 17 Dec 2019 19:00:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:20a9:: with SMTP id y9ls44077ual.9.gmail; Tue, 17 Dec
 2019 19:00:31 -0800 (PST)
X-Received: by 2002:ab0:4ac6:: with SMTP id t6mr355130uae.0.1576638031302;
        Tue, 17 Dec 2019 19:00:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576638031; cv=none;
        d=google.com; s=arc-20160816;
        b=zmr8XTFzURNFtfnjsR08vs1S5YgjH2P9jXJbbvnoHf8rnxJnfunTz79/jM1JK+bF38
         4gQphKjhUkWjB5ZmWCIsIPw2+iah8j0RU6DzWw6nKxBJ8nC0YYwIrlYd/NFgVf0nxPWQ
         zkD2qtMMfDPZa59idlGJJAzn7n0QP/UkCSIzZ8Z29JyL3cO6wrPbaCdsgnI+XILfkiBb
         rG8Z0agSYVeuaERCy9OmZL7t/MMt/Z7p5OjQKzKYZxe0k5skqMuAkv/bCfzjibJZck3o
         gJ2IwlCuocd8nea1oDFFJTFkZl6KgySz1gisYSpdsmjhKtA9Z9cIp8OvyX30bCQQVyPX
         791w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=kwTUvw7XaRz2SlqwuKp+LVG2T88wKaGXcyDmN7449mo=;
        b=k8d5tmTBOlp2J265lBbgkaLGPZb3ZWmFIUkZyedVX7hg2CFYjjGZeN51S93UgzTzE9
         03mHFXzXC0S4cawMSJf+zGONckGXHqodnuwZ42suY5zwE3yKKsNTpjZxCW1zspGOPgq2
         bdNEaTy0lzPtsY8LoGzNweb/0BdkDv4YGicmFr+ly/gU71riOf0s9GZrzYDHi/N7m5kh
         8lzoEYT4xxEPJHtsvtVn7ln/rhhEpPeo6prG+pOoDzCcvGB3Q/wiIgJqugPwBIJCZLd3
         Gd54zhTLRR5dCIvYF96HSW0YT3ToAGRtHUMNc/JGb2t43QHk7uzAjg8Yw6yl9lLUGc4d
         GU6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="M/qv0ZCZ";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id c124si25357vkb.2.2019.12.17.19.00.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 19:00:31 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id i15so512584oto.7
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 19:00:31 -0800 (PST)
X-Received: by 2002:a05:6830:1442:: with SMTP id w2mr29328otp.143.1576638030607;
        Tue, 17 Dec 2019 19:00:30 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id b3sm327530oie.25.2019.12.17.19.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 19:00:30 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] fbmem: Adjust indentation in fb_prepare_logo and fb_blank
Date: Tue, 17 Dec 2019 20:00:25 -0700
Message-Id: <20191218030025.10064-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="M/qv0ZCZ";       spf=pass
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

Clang warns:

../drivers/video/fbdev/core/fbmem.c:665:3: warning: misleading
indentation; statement is not part of the previous 'else'
[-Wmisleading-indentation]
        if (fb_logo.depth > 4 && depth > 4) {
        ^
../drivers/video/fbdev/core/fbmem.c:661:2: note: previous statement is
here
        else
        ^
../drivers/video/fbdev/core/fbmem.c:1075:3: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
        return ret;
        ^
../drivers/video/fbdev/core/fbmem.c:1072:2: note: previous statement is
here
        if (!ret)
        ^
2 warnings generated.

This warning occurs because there are spaces before the tabs on these
lines. Normalize the indentation in these functions so that it is
consistent with the Linux kernel coding style and clang no longer warns.

Fixes: 1692b37c99d5 ("fbdev: Fix logo if logo depth is less than framebuffer depth")
Link: https://github.com/ClangBuiltLinux/linux/issues/825
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/video/fbdev/core/fbmem.c | 36 ++++++++++++++++----------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
index 0662b61fdb50..bf63cc0e6b65 100644
--- a/drivers/video/fbdev/core/fbmem.c
+++ b/drivers/video/fbdev/core/fbmem.c
@@ -662,20 +662,20 @@ int fb_prepare_logo(struct fb_info *info, int rotate)
 		fb_logo.depth = 1;
 
 
- 	if (fb_logo.depth > 4 && depth > 4) {
- 		switch (info->fix.visual) {
- 		case FB_VISUAL_TRUECOLOR:
- 			fb_logo.needs_truepalette = 1;
- 			break;
- 		case FB_VISUAL_DIRECTCOLOR:
- 			fb_logo.needs_directpalette = 1;
- 			fb_logo.needs_cmapreset = 1;
- 			break;
- 		case FB_VISUAL_PSEUDOCOLOR:
- 			fb_logo.needs_cmapreset = 1;
- 			break;
- 		}
- 	}
+	if (fb_logo.depth > 4 && depth > 4) {
+		switch (info->fix.visual) {
+		case FB_VISUAL_TRUECOLOR:
+			fb_logo.needs_truepalette = 1;
+			break;
+		case FB_VISUAL_DIRECTCOLOR:
+			fb_logo.needs_directpalette = 1;
+			fb_logo.needs_cmapreset = 1;
+			break;
+		case FB_VISUAL_PSEUDOCOLOR:
+			fb_logo.needs_cmapreset = 1;
+			break;
+		}
+	}
 
 	height = fb_logo.logo->height;
 	if (fb_center_logo)
@@ -1060,19 +1060,19 @@ fb_blank(struct fb_info *info, int blank)
 	struct fb_event event;
 	int ret = -EINVAL;
 
- 	if (blank > FB_BLANK_POWERDOWN)
- 		blank = FB_BLANK_POWERDOWN;
+	if (blank > FB_BLANK_POWERDOWN)
+		blank = FB_BLANK_POWERDOWN;
 
 	event.info = info;
 	event.data = &blank;
 
 	if (info->fbops->fb_blank)
- 		ret = info->fbops->fb_blank(blank, info);
+		ret = info->fbops->fb_blank(blank, info);
 
 	if (!ret)
 		fb_notifier_call_chain(FB_EVENT_BLANK, &event);
 
- 	return ret;
+	return ret;
 }
 EXPORT_SYMBOL(fb_blank);
 
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218030025.10064-1-natechancellor%40gmail.com.
