Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6F75H5AKGQEZ6EUCDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B37D264AED
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 19:18:49 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id q131sf4014679qke.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 10:18:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599758328; cv=pass;
        d=google.com; s=arc-20160816;
        b=fJ2YGuoie0qtkTbKi4YeaE2/JjjmIqgfP1+ed/2yDB8VL7sfggGKS44PoQrxXYwLHp
         PuxmJ3spsdW3JQyIkJ0ap0NHFfzu2WiG4nkFMjBzq21s4uTTM5xpjLs1JmFDa5+XKYea
         1C9DX4XYa/KoMc69rQ0o+s1JW63Jrp+FwA2F8P0XjiFMlC2WlHlKGS9l/sIZMotP97ww
         8G9s9h18MrqwTwBdcNcGeav9dSM+n+5czG5kJ9+iDtMZ5QYOIoN4K6efOckmSVdzFcrf
         aBinw0AlK0yZBK+caYY7xQJtWz8iKBEYskZ8Y0hS0mhIDvnoL259q/Wo8MAGYmvWnwOR
         EQWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=323Brc39aADhuVzVFrPC0deUmwnjOny9gCJllOt2+hg=;
        b=uBtoakuvzOyBz2bhSmOsE/aL1OR7yGFu+7Eea7kaXrZ6Xd1g1b2tTjPLuQLf4Svsvm
         dbsdMi2+4RCCQZSD5VARfLbdWzmYoCpMBAbrytrK5e8YesmyEJSRP/El1UXzUOoajfwy
         G2kFdiJy7ZkBOvIfarykBtROA6wESzIDA0ADcU506sAN5yDWFHVK4ijxoyYaJ66WhBqV
         Dcf83iu/WZbS5tH95Z/QqUUlCt4Nm1RWMX6Leb+2pSzp4iTmYJkig+gVTHKrHcIZ1EDo
         4YoMrQviei1+jSkEx2XnvceIkfyxjwoc+jIB7uPS3IscU/r1j//3BzoZQ5j5EzMFOLUU
         2uhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gNcWA/DM";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=323Brc39aADhuVzVFrPC0deUmwnjOny9gCJllOt2+hg=;
        b=GxYapZOpFdyIMVK6sumU6LxOt5R0JG/d14ewXJvB8v17o/tuK/hxRMGiiDrjJVTrHQ
         qkBUJMEWxYml2x4ZLsYOie5BbzNXlXULMLL6M7pCv+mIRZOldmL+V69Q68KmD7KYDhJz
         IU7Kd6QkMODcMIMCrRRcyIFxXsFjI/9XJqlcmASkiHOjglzB2TW1wzsljoo7DeP6ygU/
         LBrv/dDDoGaCNHedOYp1wOVkEA/lyiJZNmIXwNH5iCSiFc52Jcf9INT5xLVy9/Hciui3
         DeBO0h4bnEP7Zxuaw0uNnDXF01yz0M6CEvhOd3wf5upHWTzxGnvV9PSNHWHTDtc94Z5f
         wNSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=323Brc39aADhuVzVFrPC0deUmwnjOny9gCJllOt2+hg=;
        b=imsC3Ih7UkLIN5nBEK2l+G6RZPGedId7trO4CWLN0z1voigiiiip1dqF3OhBcLUSO3
         HJ2eliFr49UV+qae+B43jV4IiaZgBo6zh1YMoqI4jV2YdF1+F8+WT2Sfzplvr+DpqKG3
         HuDZq4mgWJm0LXj1m7aARmUJHo2byYyTAdyFShYnTmdwBg0OY65+6M/mz4WHLJqFUZqb
         dORZ8EHHYI+wE8oIxzNsgAwrIcIYdAqng2T4TLGMrp2nDW+R8b1YHpnUM9P71FuXpiuJ
         YuICL8GgewjnqlPxK+HBmZi+Y2G8Fkzmn5jqWhRN/LfpE/TPjlTIoQHw8VtMGkEYbiqx
         zaBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=323Brc39aADhuVzVFrPC0deUmwnjOny9gCJllOt2+hg=;
        b=I1U1PY3UkSvLtvW1IPw/Oj7oOmPXvGQnGEObSzTIyhWBsRPEL+jXmjhdHplvIBMa9T
         Nl/aW8tm2DVG0Rko/I31f82eteGz9JEFDRJIjnhu11dRhU1IPKnGMZRUxRD21oVbBb09
         lW9Aciuhah10st4pQeJMZ4cDP8o4+4Z+47AAqAcZLMOlTSrTm3BvTxqJHkf4dwCxXXjG
         kzBEv6ITwBWxApguITdzQOGQPd9ELMdTQi4D5j3RgQeSF2dqlRk/zqrKpCIjktp40EY2
         V8NQPMVwYo+BeldiZgARq7bGIvgJjjxL+BuknJKgE2Y8ldlY5fYFnVMqybvfI5fWRS7R
         BBFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mD+uYIavqkqqdOAN4fZ7X7kWT3nCoizLzYv/1CFPfYuOFjNXS
	LjwEcsLXfeSq9QscxPpG25Y=
X-Google-Smtp-Source: ABdhPJwLRlN2vEGW8tYLa6GVWfKnLmvwe5KkEW5nmURApClM9E+gkGsbu24n/Rq4MAMNs1PCiz1yGQ==
X-Received: by 2002:ae9:f80f:: with SMTP id x15mr9052843qkh.341.1599758328231;
        Thu, 10 Sep 2020 10:18:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4c91:: with SMTP id bs17ls1704669qvb.3.gmail; Thu, 10
 Sep 2020 10:18:47 -0700 (PDT)
X-Received: by 2002:a0c:b203:: with SMTP id x3mr9719301qvd.97.1599758327801;
        Thu, 10 Sep 2020 10:18:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599758327; cv=none;
        d=google.com; s=arc-20160816;
        b=PMnIxzKtr5ZpdYHVAdcy+caSvI4hbuADvdjxiF69wa048K4lWzm/hbAas+Nwb9v6fN
         LWLI2i1/zI3/TPx7vZ4Kw924t4eUsDyRomjnIBuqWF1LYWvqAhs9FCIFWRo7s+92b8qQ
         vDWMMo1DCWG5d4MIeoGyOOB0yi7qB7W6ylS/hpu5tOHl0D5eBnoJlAuxD1py9CbWDcgO
         tJ145u/Ep2MeKaX8bOQfCAz7U19ULyTznvNBDiW3hwuvGCSwKZ3P6j6tHstNHZ/6piLw
         Vggb4GvwmidSPDJbxaTh4t+R2t60wABvyl8QovrUjBvkUUZIJk1hgU9RGHo6xw53xYlI
         on2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KOPXfJ4o+30xKb8orSC8RLivwhkM6sb3eQ91eOmY0Vo=;
        b=TYvzB13N4OyHALoIirZRkdykMUEBA0thsflwQg3ZWf5jQeenI8pWWvfRPkUJ0il4U6
         c1DHyuvny00n25V82q8RMdJRDaiq16DYvwcouE5YNlYNcYmrtH24xrr0N5dnPPD4s8Dd
         KzidHX2z28429Ey2GRU/4bunzFTyFtqPlXKSaTTXpE+FOJy4tWQVP7xHfBnV/2V46fIB
         55Dx+TeVTmCXgqoZkf6y2weMEMyaJBxiwoLCeCKDDzK/6+0sQccrt8b3BaqKhx/rvoGF
         K0a9FEgGkrTsQZ4fAOnPtIQMNA2ju20e9qMOzPE3JldCZy6nW/0n2/4ZQ6ieS/AqJWsO
         3THw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gNcWA/DM";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id k6si461174qkg.1.2020.09.10.10.18.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 10:18:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id o16so6825813qkj.10
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 10:18:47 -0700 (PDT)
X-Received: by 2002:a37:b347:: with SMTP id c68mr8956861qkf.430.1599758327484;
        Thu, 10 Sep 2020 10:18:47 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id a25sm7370452qtd.8.2020.09.10.10.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 10:18:46 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Eric Anholt <eric@anholt.net>,
	Maxime Ripard <maxime@cerno.tech>
Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/vc4: Fix bitwise OR versus ternary operator in vc4_plane_mode_set
Date: Thu, 10 Sep 2020 10:18:32 -0700
Message-Id: <20200910171831.4112580-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="gNcWA/DM";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

drivers/gpu/drm/vc4/vc4_plane.c:901:27: warning: operator '?:' has lower
precedence than '|'; '|' will be evaluated first
[-Wbitwise-conditional-parentheses]
                                fb->format->has_alpha ?
                                ~~~~~~~~~~~~~~~~~~~~~ ^
drivers/gpu/drm/vc4/vc4_plane.c:901:27: note: place parentheses around
the '|' expression to silence this warning
                                fb->format->has_alpha ?
                                ~~~~~~~~~~~~~~~~~~~~~ ^
drivers/gpu/drm/vc4/vc4_plane.c:901:27: note: place parentheses around
the '?:' expression to evaluate it first
                                fb->format->has_alpha ?
                                ~~~~~~~~~~~~~~~~~~~~~~^
1 warning generated.

Add the parentheses as that was clearly intended, otherwise
SCALER5_CTL2_ALPHA_PREMULT won't be added to the list.

Fixes: c54619b0bfb3 ("drm/vc4: Add support for the BCM2711 HVS5")
Link: https://github.com/ClangBuiltLinux/linux/issues/1150
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/vc4/vc4_plane.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
index 24d7e6db6fdd..89543fa8ca4d 100644
--- a/drivers/gpu/drm/vc4/vc4_plane.c
+++ b/drivers/gpu/drm/vc4/vc4_plane.c
@@ -898,8 +898,8 @@ static int vc4_plane_mode_set(struct drm_plane *plane,
 		vc4_dlist_write(vc4_state,
 				VC4_SET_FIELD(state->alpha >> 4,
 					      SCALER5_CTL2_ALPHA) |
-				fb->format->has_alpha ?
-					SCALER5_CTL2_ALPHA_PREMULT : 0 |
+				(fb->format->has_alpha ?
+					SCALER5_CTL2_ALPHA_PREMULT : 0) |
 				(mix_plane_alpha ?
 					SCALER5_CTL2_ALPHA_MIX : 0) |
 				VC4_SET_FIELD(fb->format->has_alpha ?

base-commit: 8c3c818c23a5bbce6ff180dd2ee04415241df77c
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910171831.4112580-1-natechancellor%40gmail.com.
