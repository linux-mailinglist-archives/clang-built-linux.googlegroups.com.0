Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBP6YQP2AKGQEF3QIGYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F9C196F51
	for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 20:43:11 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id i13sf1870788wml.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 11:43:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585507391; cv=pass;
        d=google.com; s=arc-20160816;
        b=NYFAedI1XDocaH1E2h1YAjMYxw2gSWvIipVX+5YpOGRsTb3uk00JXwsETGfh4W1JHT
         d8zmIzqJ1CWqUsQ6ajcTx5obn7rdl+0/52PVUviBbTFZhxIYltkz6n7PNsYVNoei3P+F
         w63PaKDDdo8wmQQTE639vePFVbBjuFk5f+JXjqi+HIZvwdPTftjlEBsnjdBZYRaU+7T2
         OVwdki+9PPh4GdhEUPrsV5//U8KpY1iIPZizYF/82OVXSJSIz9M9dqvxRw8yCZ2FQpYD
         +Xaahoc+hilWmaNMUl1u7/wdmEqq+8O40WK2q+8hp+IudbBSXPprFYHMHfE7j9yy596x
         xr8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=OPjO7V7E2gJjUOSUOZBvOR9YVoNCSqs7f2vyHXuMuLo=;
        b=xHOseF0MR5HY1p1NPqewPZzH6Mk66HRFx+ZtR3XFs3TrRCs+EoTJLg1c8kt3eDIR1z
         UKA3glFhL++yYoI4iTc6nRnwdpQaLfArxtuNaVkSwE2yjxtBXIy4zzsu47Zs/zucTjab
         p/VEXmiSc24k8AROPPCv1NlHQknnuRgzjHpNpV8Xg8a+sMiSics5Fh1O24+ncbYZDO4Q
         JIJuwT8ieNTu4XrMrGEvCwSOcq1fkJkHR9vYUkzHN7gX7K7L7BXwYKgXRa7Wdq3FU/gP
         4mDjRF3DZ4ROKzF+J5VGN+o0ScvY1leyPHXJDhGjwlJ3/7aXarwo1dZkYlNhaEbfxsjj
         G4ow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=foiZtoQO;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OPjO7V7E2gJjUOSUOZBvOR9YVoNCSqs7f2vyHXuMuLo=;
        b=PHRxdi+odAhImsf9Wp8D0iWZyMuid3L2yvhKWuuBbnl8WbWe10IMkvTQYKnBLjod//
         ivYdkqaYAAiC2oV6Pz96NeoqENt3C+dKF9SnZgd/0nD9SOtHHyDGWWA0uTEGhWAjO1nF
         ulrce6z09IBVHHJFSQn4VATZxV+lLVP+URKAW2izhRalkNYLhsMOV6VWtpLFHjOjjpeL
         +3nQ65mVIEdEzm+b7fxLqsNUKIYE8OVWtdL/zAFJqt1X+DJNHPVypkl14BAC4Rz61+3x
         dvr8PSTpNqSKfwyw1s0AkoxifqpFT7mr4I+VS/oMetGbZeNa2RL1txt/ou0Yl6tZxFSy
         96pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OPjO7V7E2gJjUOSUOZBvOR9YVoNCSqs7f2vyHXuMuLo=;
        b=VKlYkH3tRaIc3K0hsy6K1QYcG5UAGs9l0YMQ8epEMW9Xc5DS3nu7itosrKq9UwHqAi
         8DYZGcRBufGXg8td52fQ9GPViMEGg6hQR/+Iu/64YO/QLkngiuUJCS4ADqeEE4X4WGpk
         znzyKgYigUEemYNtXaVi775mEvup+rlsIcAcIcTpwvRJfDCFBom8cBlXqpj3I7A8ggKT
         V95cV1w42aF74qt59YjZWfsa2gVmcAz8W7zuxDifbo00Vf6Csfon1h7jLeo9riAwwDJj
         HOkvCWGz2e1diFubdA2CGFynsV914CaZQN9EWY/6RHeENkI42XLRy92lHrWPTh+Bt0DN
         uz5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Wy+Qu4NT/W4sL5eG1Tz+CtYPIpS5fMxVozaFQf9VqpxnQ8WIN
	/N6gs/4M5osJ93GmJu6Eizo=
X-Google-Smtp-Source: ADFU+vuL4U6GizRyiVEqYk7Pxa9miMnr+UAT+qfV/KYkDZFnjv0wwPk3v4jAdewTNaVnRAV73OWm8Q==
X-Received: by 2002:a05:6000:105:: with SMTP id o5mr10880732wrx.395.1585507391421;
        Sun, 29 Mar 2020 11:43:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f5cc:: with SMTP id k12ls7200791wrp.6.gmail; Sun, 29 Mar
 2020 11:43:10 -0700 (PDT)
X-Received: by 2002:adf:a54a:: with SMTP id j10mr11301760wrb.188.1585507390949;
        Sun, 29 Mar 2020 11:43:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585507390; cv=none;
        d=google.com; s=arc-20160816;
        b=MGoxajo1XogKRBVx7RKFsH4+l+y56v2qkiqXV6aL3LufSWbjctceyxykmCm46eZrCx
         EZp2gOwvvCPVmFQXlhDleZIqjrgElkQ9lD5Rl6c+J3KNLZjby6aLQ5Njq9yhGoo7pCQR
         IYXJ+vcrguan0Fp0oxwdfBwOvut4brp7bGsAu5ruTegWy3/YXOySdz3Vi7KXbySdahe1
         JiWQvT7iX9VwIkbOiMdoXDM4j5jX3dTFQbxUbDSByQvquWwYdn1vf4m+0DSWKq/4yZhc
         Mw6FhQV3kYw/oSfkhGIovlvkA3tWSlkm50DYIQ/OHYfqP0Ml2Y/MvBs1zpSWsbNblz16
         NfkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=lnu+KMdllhKFSlzHplG4kJn5iW0F84lGeX1xzZIYAts=;
        b=X7/OvFsmH7Feyu7oS+R9ju2wSvbr+KdOBXLroxphoB9mxK6J0npfg22NoJmotsDyfp
         44Txz8t7g8TBg+GMVn7LSCgHaO5lzwm9pUSBbbMzwTVll+ExVY0oN2QM8ESu3j0c3yYl
         6MjctQkGV7+0XdEHzSxFXU3Vo4odV39fokYc0vL1hLmX6feHY2Bkp0WUJ8pyjINpXMZl
         UDL7D3Z0u5s/m2ANKTmOIfaq9ZWFcteDKJdzP7aVuFu9AjtLHTrh+DMx9oHzUFZw5mM0
         r5ZzjUCVlsb5NMcDlnoIOK1tVbprLq+/tWqghzwFKNZdLl3XMZ5DyOikmPQ6kPNeqEQB
         KD5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=foiZtoQO;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id g78si449729wmg.0.2020.03.29.11.43.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2020 11:43:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from zyt.lan (unknown [IPv6:2a02:169:3df5::564])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 3EF795C0870;
	Sun, 29 Mar 2020 20:43:08 +0200 (CEST)
From: Stefan Agner <stefan@agner.ch>
To: linux@armlinux.org.uk
Cc: arnd@arndb.de,
	ard.biesheuvel@linaro.org,
	robin.murphy@arm.com,
	yamada.masahiro@socionext.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	jiancai@google.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stefan Agner <stefan@agner.ch>
Subject: [PATCH v2] ARM: warn if pre-UAL assembler syntax is used
Date: Sun, 29 Mar 2020 20:43:04 +0200
Message-Id: <a651d5eaf312c771c9d2e0160ddd905550bbd4e3.1585507235.git.stefan@agner.ch>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=foiZtoQO;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

Remove the -mno-warn-deprecated assembler flag to make sure the GNU
assembler warns in case non-unified syntax is used.

This also prevents a warning when building with Clang and enabling its
integrated assembler:
clang-10: error: unsupported argument '-mno-warn-deprecated' to option 'Wa,'

GCC before 5.1 emits pre-UAL assembler. This can lead to warnings if
inline assembler explicitly switches to unified syntax by using the
".syntax unified" directive (e.g. arch/arm/include/asm/unified.h).
Hence keep the flag for GCC versions before 5.1.

This is a second attempt of commit e8c24bbda7d5 ("ARM: 8846/1: warn if
divided syntax assembler is used") which has subsequently been reverted
with commit b752bb405a13 ("Revert "ARM: 8846/1: warn if divided syntax
assembler is used"").

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
Changes in v2:
- Reference revert commit b752bb405a13 ("Revert "ARM: 8846/1: warn if
  divided syntax assembler is used"")
- Reword commit message

 arch/arm/Makefile | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1fc32b611f8a..b37bb985a3c2 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -119,21 +119,25 @@ ifeq ($(CONFIG_CC_IS_CLANG),y)
 CFLAGS_ABI	+= -meabi gnu
 endif
 
-# Accept old syntax despite ".syntax unified"
-AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
-
 ifeq ($(CONFIG_THUMB2_KERNEL),y)
-CFLAGS_ISA	:=-mthumb -Wa,-mimplicit-it=always $(AFLAGS_NOWARN)
+CFLAGS_ISA	:=-mthumb -Wa,-mimplicit-it=always
 AFLAGS_ISA	:=$(CFLAGS_ISA) -Wa$(comma)-mthumb
 # Work around buggy relocation from gas if requested:
 ifeq ($(CONFIG_THUMB2_AVOID_R_ARM_THM_JUMP11),y)
 KBUILD_CFLAGS_MODULE	+=-fno-optimize-sibling-calls
 endif
 else
-CFLAGS_ISA	:=$(call cc-option,-marm,) $(AFLAGS_NOWARN)
+CFLAGS_ISA	:=$(call cc-option,-marm,)
 AFLAGS_ISA	:=$(CFLAGS_ISA)
 endif
 
+ifeq ($(CONFIG_CC_IS_GCC),y)
+ifeq ($(call cc-ifversion, -lt, 0501, y), y)
+# GCC <5.1 emits pre-UAL code and causes assembler warnings, suppress them
+CFLAGS_ISA	+=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
+endif
+endif
+
 # Need -Uarm for gcc < 3.x
 KBUILD_CFLAGS	+=$(CFLAGS_ABI) $(CFLAGS_ISA) $(arch-y) $(tune-y) $(call cc-option,-mshort-load-bytes,$(call cc-option,-malignment-traps,)) -msoft-float -Uarm
 KBUILD_AFLAGS	+=$(CFLAGS_ABI) $(AFLAGS_ISA) $(arch-y) $(tune-y) -include asm/unified.h -msoft-float
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a651d5eaf312c771c9d2e0160ddd905550bbd4e3.1585507235.git.stefan%40agner.ch.
