Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPFJ43XQKGQEW7SC6RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id D2005123D85
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Dec 2019 03:53:49 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id z24sf399468vkn.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 18:53:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576637629; cv=pass;
        d=google.com; s=arc-20160816;
        b=SzPiLtnGLE2UcAxpo4pk4Kb1Q1YWXsE0GGd7sTmNGgf1MKjW7bVW0IyUqzQY2eYTRe
         PD8eMfxlx+K0erRW4fLYITvt77y82xbKcR7Z56EQj2Z0NuleNkz43nHXYhQFG7mDwf0v
         jxUh8m5AyM8awecWbZ0RE1O0ef9/lYZaSxlH+lTxbO8RgEeIrBonTdcONtkC71QyJjcC
         zjK5J9jWy0MdyOnRYC0jqNyamOrOxHw4fi50qT/SEArxYlUt7Ey9WOUMNLVJUZgFdFb2
         I/IFbwI59FJxWCuqywV/rQ7J+LFwog8V7+kHnKW0GoMEFGptbyQVEgnbKF7mRD1GsNu8
         dSZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=g5FoJ6Br48NQ1JWiGmoFRt+dzwVTmGDj8UcVsFRY9oQ=;
        b=Ek15u3mro819g5ngtYEbPs3QQ1tPYMXG8aK5pM6X3YeTGwmtptyiUHZlBN8kMOmXou
         FX96wH3u74ON65VerlJ9bw+nimWqh0i2HcXLP6oeCe/QqNUqVsMHutgLzLNRXDLpBHre
         AQGRVAAgIhPIThu1Nu2VzrWUQvElZm+8mjdGMtzny5SI30r79j7STWNh8XYQc5nth/rQ
         6Ix0qJUSfgqqKwJfCSwjtsbVqcFL6E2XfVdSC4d8Kn2WSqf3x9END+pKCRaZ4gGdxvqN
         dyELgU6YL/uF0cmNs4xbE66CgmFxe5tTHcHAkZ3chYNTxvRix59/9nx9fX70seRkxGSH
         UZBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hs0MAylM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g5FoJ6Br48NQ1JWiGmoFRt+dzwVTmGDj8UcVsFRY9oQ=;
        b=sNc56tKk0yZyQK2WBWefzz2k0ASNpCeqvEwrkU1RcIldeOhz7c07oESXfeCBxjhdX7
         s0jXJIGF5An8ZcLf9o3PESzjv7uZzz4GCivkNX48Nhv4qPavyQvc1ChPwXltjokmTba8
         YKUhkFuoGVMR58Dyc03EDxizX+K7AP/WIpJqS+jJk47ebbNmFAGBD7SukQEPH6CRYTjk
         KtJ+O6sdgHHEsgU/Uxchppwf7n7jQY8UOiOjx5ehWuq8jF40rmoRwVif6Oqfr8VY+kpz
         kxJC+nJEUsyIrOK3+E72cMzI/3xj952cjWuX22fjTVlg444f4K++8zfhNYdY43/EuaeM
         T9HQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g5FoJ6Br48NQ1JWiGmoFRt+dzwVTmGDj8UcVsFRY9oQ=;
        b=HjPRCp/cLCtSY9pESjaHqtMrEfKY8tjMya36n7EOrMeQtvXMESNcsuBtIl4GjRwu+7
         ruDEM6OWaGkPLXTH11tzRn4y5+RZ/9YDKOZxSzt1xAciS2SGZ/Hy2/+zD0FgWHSneC0c
         YknVZS/SRIOMBhg9XzxkglYAfWgqlOz9WLErf9QxelolIOyMS+NfF4rfQPa+981nl6nm
         qLLwDMHxOlGOOhwTScj7F+29SeSMZj0DlEBdQYxDwLF6CgjBS8uXoV45iPxUpqztDj2L
         7Kwn4cklqI8zybEWWQWvT9+cib7466Z3Ozb/0rJ5F7hLbIlTt/aCNWqOfMqRKfOnrJ9F
         ZDqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g5FoJ6Br48NQ1JWiGmoFRt+dzwVTmGDj8UcVsFRY9oQ=;
        b=QSpex5NuWTn7fVGqebOu29tXrgB+mfpMuvdnyXZSVk26P2xA46pS27EysPu+iUfz0U
         hIVyCdRr9kLamYvGHMg4oJBDCFJU1z3qUKsVtTxVl+ELU6/YLZt8l0KMi7GS7EdXu/ym
         QeYMjaeNiLVdOZu2PMVQPnYUd+M3uJuGRsOVhu4kfDLKx/lmRgaxylwWOsl7ge+i5wHl
         ltoCuiHR5tzGBeylwhzkljH8OaxJ2S6hNguToE40sMDnHkNdJz6R444hA41dZH4JmuzL
         b9KT/4UI9LAVoFj2htzZqhvsvRCxB1U6dFSSVzEEJF1OrEyZ3reFnpYLN0YEpd0p3sff
         QcVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWz0SgOuuG+hij30/I/tXm/tss3Ixspi2BDYSHBv9xdoD91raxa
	52PpGefWarrH0rQgkq7w3rE=
X-Google-Smtp-Source: APXvYqzVfecSJnfpHKyfpbnnx2OcG0p2yQUzIAwLANLFutqTsr4x9BAHiAY9wgcNiMv8xOJsqczeLQ==
X-Received: by 2002:a67:fb58:: with SMTP id e24mr1452vsr.55.1576637628854;
        Tue, 17 Dec 2019 18:53:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:517:: with SMTP id l23ls45746vsa.11.gmail; Tue, 17
 Dec 2019 18:53:48 -0800 (PST)
X-Received: by 2002:a05:6102:2337:: with SMTP id b23mr21860vsa.48.1576637628570;
        Tue, 17 Dec 2019 18:53:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576637628; cv=none;
        d=google.com; s=arc-20160816;
        b=m5HkZtOrE9ki9i/QVy24pr936oEqVrRE9e5DZyg3uDcJSxwNuxn8g05dYrOpXKpM4d
         RgUBcqfJ25D+df9sieazmY08oc+eXU5gJyOMv/2Ol2q0/+2G4WbgJyCbWPWO2pj3PAET
         hwcPKNZjwoJYy9hPRxO3/CnJO6KY//r2LHohYRwXQmexSOmi5KgIjp58w+bK+Yim1hNE
         n82GNTwXXgE+ogK7IJac4Zbu3pfaVzBaV8FE9eH6u8bH9mi7bWppfThZ5iuUfRuLLbT1
         VdWHs6Td8eWdbAdbdHV2nbk8WS4ChbKPmchpAAgXQnedmQ1kA7p+Z8MHxmShIXKirkL7
         Y6xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=napGSWjNbtalCcb/TGth7a+gCE4XiYyJESJ2KzfJmU8=;
        b=sm4bmxhXZQngr/ZHFLBBPTOEX0IKJQkt6TLTfOKs6rXIpTBQmWaAjW45WDMSilOjni
         yOyvY0Pm28gwlrLWFFNoiBFBw2f+lO0tcZvnNrjz2srzwi89F5ki4IZPzD/fLHTczYAp
         MLU2Hn7YdCw2LHOVi/Qw2hfqDFf5bo6qjE4sL3XzusfdANa9OCmB41kVWuzpZ5rX0bBk
         u4RTXzPjEgPbvnRxVX8Gu3QZc5hP7ZTM8Jb4YIPbSbwP44HT/xEbJ4dUWw69djACqkPp
         iMEu8yZZHKtS9Kkqy04nx3hs3Ioqf0EliPs3DIKGSaNU5NRlTMHsKJDjjC1XVbrqyQ0C
         MA4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hs0MAylM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id o19si31007vka.4.2019.12.17.18.53.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 18:53:48 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id h20so503416otn.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 18:53:48 -0800 (PST)
X-Received: by 2002:a05:6830:2361:: with SMTP id r1mr51151oth.88.1576637627813;
        Tue, 17 Dec 2019 18:53:47 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id q16sm279817otl.74.2019.12.17.18.53.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 18:53:47 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] fbcon: Adjust indentation in set_con2fb_map
Date: Tue, 17 Dec 2019 19:53:37 -0700
Message-Id: <20191218025337.35044-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hs0MAylM;       spf=pass
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

Clang warns:

../drivers/video/fbdev/core/fbcon.c:915:3: warning: misleading
indentation; statement is not part of the previous 'if'
[-Wmisleading-indentation]
        return err;
        ^
../drivers/video/fbdev/core/fbcon.c:912:2: note: previous statement is
here
        if (!search_fb_in_map(info_idx))
        ^
1 warning generated.

This warning occurs because there is a space before the tab on this
line. This happens on several lines in this function; normalize them
so that the indentation is consistent with the Linux kernel coding
style and clang no longer warns.

This warning was introduced before the beginning of git history so no
fixes tab.

Link: https://github.com/ClangBuiltLinux/linux/issues/824
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/video/fbdev/core/fbcon.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index c9235a2f42f8..9d2c43e345a4 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -866,7 +866,7 @@ static int set_con2fb_map(int unit, int newidx, int user)
 	int oldidx = con2fb_map[unit];
 	struct fb_info *info = registered_fb[newidx];
 	struct fb_info *oldinfo = NULL;
- 	int found, err = 0;
+	int found, err = 0;
 
 	WARN_CONSOLE_UNLOCKED();
 
@@ -888,31 +888,30 @@ static int set_con2fb_map(int unit, int newidx, int user)
 
 	con2fb_map[unit] = newidx;
 	if (!err && !found)
- 		err = con2fb_acquire_newinfo(vc, info, unit, oldidx);
-
+		err = con2fb_acquire_newinfo(vc, info, unit, oldidx);
 
 	/*
 	 * If old fb is not mapped to any of the consoles,
 	 * fbcon should release it.
 	 */
- 	if (!err && oldinfo && !search_fb_in_map(oldidx))
- 		err = con2fb_release_oldinfo(vc, oldinfo, info, unit, oldidx,
- 					     found);
+	if (!err && oldinfo && !search_fb_in_map(oldidx))
+		err = con2fb_release_oldinfo(vc, oldinfo, info, unit, oldidx,
+					     found);
 
- 	if (!err) {
- 		int show_logo = (fg_console == 0 && !user &&
- 				 logo_shown != FBCON_LOGO_DONTSHOW);
+	if (!err) {
+		int show_logo = (fg_console == 0 && !user &&
+				 logo_shown != FBCON_LOGO_DONTSHOW);
 
- 		if (!found)
- 			fbcon_add_cursor_timer(info);
- 		con2fb_map_boot[unit] = newidx;
- 		con2fb_init_display(vc, info, unit, show_logo);
+		if (!found)
+			fbcon_add_cursor_timer(info);
+		con2fb_map_boot[unit] = newidx;
+		con2fb_init_display(vc, info, unit, show_logo);
 	}
 
 	if (!search_fb_in_map(info_idx))
 		info_idx = newidx;
 
- 	return err;
+	return err;
 }
 
 /*
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218025337.35044-1-natechancellor%40gmail.com.
