Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4FZ5H5AKGQEDOB34LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F50264AA2
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 19:05:53 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id z85sf1718184vkd.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 10:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599757553; cv=pass;
        d=google.com; s=arc-20160816;
        b=D4OoGdonKXFHwd570hwNKxdOGLx02VAipYineQS/ZCSTtVmDotjc64C8CHDkeG0Zrk
         kvZmTSnb6xfwNbUsZNyr6cybRLju59cfMMha99xOWDLw71CIIofnJKECl7NX3gJekB/O
         82XJHste+DPCF0+i0r2REj0s0cmdBllO1Zyi1j43xnM5Ctx10yEApGhDrcSroHuNlkBT
         xNIbyhNf6lQg3qCWQK3HJRs5wwXdlFmJEnrLZ6nnuEwBD7khzTH+xOsDlYxZBPOatw87
         AUyuO3JQ/I0GNqaISzhmdFEdMa6U8/DbcYh4A+u864k3IUPGJOKMK7TYkHsj47wqdkIA
         jbuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=c43jfVJHYBZjdYZirz5neV0+ANx/tuVHT8gT9yLjHNU=;
        b=y/QREUMe6cV2QKxNZ4OrJC/Z0Zjk2exjriTXQDKouvxCXM8VqPYonAQ1Js8XpYHiru
         UFrvPe3haLUAz2yRJv2UDNLrmWbPmk2egxcxoFQkbXOSjVHTOa5rvLzngd50Zcn3VV0n
         M7zJlbCxBGA7fVK5oj45f0SKwKv3gbPgBoutrPSZb++BnLut5fcM8/rMBH8YI3ye2xI4
         Z1FV/ttu/HrpTE0P7RvHZrIekGnPVZSxy42YmajU5zO5wattuge9MSFBeBrJ4+uAml1a
         BDkoFTdVR2JWWeYNYA1mceMrZZZ+Z5UH5yMbhM56m1vExIzaLG02FPWJBvOAozPTwzHo
         uPRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KFEjsz6d;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c43jfVJHYBZjdYZirz5neV0+ANx/tuVHT8gT9yLjHNU=;
        b=ARR4gM6jL4mKrYZt8MPoRRgwU9n4U/7nV1YzHbomBPxURw+Fdjdcmgsqc47fFiW0sZ
         wFMj0UHF75h/w1/KSbYmizqGdqSEUJGcR/pxMJLh6XHpEAljKMQHrG8CiQtY6ckenaUQ
         S2JUKbGfNdhEsg4VGBshIunX46c+9FLAiYR7No1rtezSOi4h2Hw9890UwNnN1S3a4y8z
         kw1/R3Gx7Bmsi5TTYi296WCT49gWwrTCg8vvocZ6DYfEyInNM/izD7gYP2lCJ5LBsduO
         0cUubLO7r5idcyTzaF6SqN6XO/Fg2eJUZ34OCsvmYojbYnRCftV7JfsuEMInQv7iKge1
         YoMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c43jfVJHYBZjdYZirz5neV0+ANx/tuVHT8gT9yLjHNU=;
        b=XKa9ys6Q+0RhIt3MjzVM8O2ja6zk15knMHT6hSqVzdzAvFokR84MJT2HCY1C39fQJO
         ql2CIXvNEiogoHeb6ff1XCf0reqJgxeqVidoo3W+9yJL+L5/U8TByCNSqZj4AQ4YiiAU
         /59nY6keLkB42ADPAlNO3IjlJW5tnEKH3XmInJsO8mOJi3r/rHLcv+n8KzbuQr1qkWDv
         WgdSXfqJdRIGDdY5jiIf+tvfxjxXNYXNtG9jCa3MV4OF+jQm4LFW7+/2PmNb+MFSejkt
         +5bUURvx/GP+R5d45pWepJycoZ0XnzR6xSNx/ubeHmCEkBv6nVyybxCvYzbj5pZcZxBE
         VhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c43jfVJHYBZjdYZirz5neV0+ANx/tuVHT8gT9yLjHNU=;
        b=UMv/JXK6YsVJbrbBLUGGIq/KVnz3taDCWse8Sc04Eg6gifqGp6KW/5VijMjC+aXSDN
         HsrywqqhurYkFNHRcPwbVAJ5Y6akuMR4+hVpMcGIZXFwhjOJ0jqCaViqt8iJaNJqGlhm
         0D+rxyZqvd+DPGvllF6fpf/vx8oErhEdplTLcrcZCuv9Z9hScWXLF4pSjlrQc3uSNfdT
         UNR9azayglqcagCTSrqwJ36ixfEUylx6BG00nClAklVnm701rDObNYXmNip/sGysqFMw
         S/HMJ3cCXHT5LJlHpr3UJg/xOa/yAczaWks06BSBrlPk9CM1kjsmozfj/Zww4U8ESsK7
         wbkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533g56DoIe/mn29eFnKI+Wq7tCeXL6Ny9SikQlpXL7smGdehczjJ
	25wBWv7OvNgChDO59AX0KZc=
X-Google-Smtp-Source: ABdhPJxFi+HrBH9GDavaEccLospRIMyOWFJBLG9fMKADRAMy6SCmnL4Sfc6M+th199OEuAcvfSq6ig==
X-Received: by 2002:a67:89c5:: with SMTP id l188mr4638058vsd.26.1599757552885;
        Thu, 10 Sep 2020 10:05:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:40a2:: with SMTP id i31ls530477uad.9.gmail; Thu, 10 Sep
 2020 10:05:52 -0700 (PDT)
X-Received: by 2002:a9f:24d4:: with SMTP id 78mr4619762uar.47.1599757552052;
        Thu, 10 Sep 2020 10:05:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599757552; cv=none;
        d=google.com; s=arc-20160816;
        b=Af3Mph/JdK8Sh9aso+mEoKIOzBohN+lFePXDRdsz2aIw0dYN9iYBC++XAb3EgdVm9F
         kttICIxhK4+ZZBDBxxFtwWzsvdBwU2XT70+A3YNIvDnI8iYFH/Pqm9e1AqSzez/wE55v
         WpLQFt12+IGaX/DJSNYFSmghlbiS8gFqrlXLnlfD+N43mGKFgw7hVsGypdBpvMDihTBd
         n1XqCLKswx8tsh2ThoIMF97wDHbsPvd47htzputwhRhenrrMdg3QOrD5BgUJ7ASW3OeM
         88Asoq6433gcjkx/46cnHBeaWaFj0pE0WqhDORW25mJh/CJn6cowVXuu32JKFsDFfVfw
         RH9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=kX63D1UHED1kS8hbCxUzu+mEWg7ZHS1VFvzltaxjL10=;
        b=sCYSxKuMpTvDPGXP2R+E+6+6LDv5C23Ro6MlMdEwH/CwsipiRmgWe5zezuKfTw+gE8
         qKJ68Op0qAtqc1e4aY8/TlqeQlDe+mChtmkKgTrB4k3ziAGB9+NkORQc1ZT8ASYD9TPK
         jB/s9gU8njzySpzAYDqBnJI7NekY/Fxi4RlEL9osswkwx/5c2KLqz15a3Z+HsY8XPPvK
         JCmMttRc2CRnUSuV4IwbCfn6f+I/TYhGUVoP2CBrcEf5dGTZeMHsrtJDAt7Aye1PDOax
         Mj/tH5nbteb6HjFCSV5Stn6ueAYNT+DkV7FeLddasNZ3DXsJd4HpMuzSoZjpo0oB01Ty
         dlDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KFEjsz6d;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id 134si472435vkx.0.2020.09.10.10.05.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 10:05:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id w186so6827968qkd.1
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 10:05:52 -0700 (PDT)
X-Received: by 2002:a05:620a:8c8:: with SMTP id z8mr8748406qkz.63.1599757551410;
        Thu, 10 Sep 2020 10:05:51 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id j11sm6924193qko.111.2020.09.10.10.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 10:05:50 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Eric Anholt <eric@anholt.net>,
	Maxime Ripard <maxime@cerno.tech>
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/vc4: Update type of reg parameter in vc4_hdmi_{read,write}
Date: Thu, 10 Sep 2020 10:04:02 -0700
Message-Id: <20200910170401.3857250-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KFEjsz6d;       spf=pass
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

Clang warns 100+ times in the vc4 driver along the lines of:

drivers/gpu/drm/vc4/vc4_hdmi_phy.c:518:13: warning: implicit conversion
from enumeration type 'enum vc4_hdmi_field' to different enumeration
type 'enum vc4_hdmi_regs' [-Wenum-conversion]
        HDMI_WRITE(HDMI_TX_PHY_POWERDOWN_CTL,
        ~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~

The HDMI_READ and HDMI_WRITE macros pass in enumerators of type
vc4_hdmi_field but vc4_hdmi_write and vc4_hdmi_read expect a enumerator
of type vc4_hdmi_regs, causing a warning for every instance of this.
Update the parameter type so there is no more mismatch.

Fixes: 311e305fdb4e ("drm/vc4: hdmi: Implement a register layout abstraction")
Link: https://github.com/ClangBuiltLinux/linux/issues/1149
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

Note, the variable names in these functions do not really make much
sense after this patch but attempting to flip the variable names made
everything feel even weirder. Feel free to rewrite this in whatever way
you prefer, I just don't want my builds to be chalk full of warnings :)

 drivers/gpu/drm/vc4/vc4_hdmi_regs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi_regs.h b/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
index 47364bd3960d..7c6b4818f245 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi_regs.h
@@ -392,7 +392,7 @@ void __iomem *__vc4_hdmi_get_field_base(struct vc4_hdmi *hdmi,
 }
 
 static inline u32 vc4_hdmi_read(struct vc4_hdmi *hdmi,
-				enum vc4_hdmi_regs reg)
+				enum vc4_hdmi_field reg)
 {
 	const struct vc4_hdmi_register *field;
 	const struct vc4_hdmi_variant *variant = hdmi->variant;
@@ -417,7 +417,7 @@ static inline u32 vc4_hdmi_read(struct vc4_hdmi *hdmi,
 #define HDMI_READ(reg)		vc4_hdmi_read(vc4_hdmi, reg)
 
 static inline void vc4_hdmi_write(struct vc4_hdmi *hdmi,
-				  enum vc4_hdmi_regs reg,
+				  enum vc4_hdmi_field reg,
 				  u32 value)
 {
 	const struct vc4_hdmi_register *field;

base-commit: 8c3c818c23a5bbce6ff180dd2ee04415241df77c
-- 
2.28.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910170401.3857250-1-natechancellor%40gmail.com.
