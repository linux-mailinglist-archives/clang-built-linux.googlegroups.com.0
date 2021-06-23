Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBM5BZKDAMGQE4LNYY2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8B63B1167
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 03:39:00 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id n84-20020acaef570000b029022053bcedd7sf742451oih.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 18:39:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624412339; cv=pass;
        d=google.com; s=arc-20160816;
        b=K0omtuy/1oh6OOyS+5MODph+XEKfASONDTS595f55fasJauvZODqoABM3oYRXpGAnm
         INYZQGeM/I5UwTlOWCeWSxCL5OmQcYRZlnNE81gteizmYXehb/RTN2JSlbd1wiZaAO2M
         uaQ/G2nODqhHiPJgWJiVOSQR3LJhsAerxfntLd0+ByyvP5pVpnIuy4prtWitwcZp1b3x
         ToYOt8vTgRMljX/WBrzbQ6XvzxRDD8U5eSEvL0wqUkX1qFR4rKCgALr1LUXe9eTyHZlf
         KL7ZIXA2Dgz7HgQmKOAZcz6qtfsYmPLm/nYswL0K2Rszv9vpzL+tDRaJv9hDamHwZkY5
         EQ7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=obuTyRcIlWK5GdIa2P6Y6ICfRw/0u9KUp5Mrd1/FGFs=;
        b=l4xOoNFOFmGPpFqQ91Kc3AYaz+2p5KjjtSGvOkEFWj4VvZKYXJfR1TCmyVc8ztUCXM
         FBGnwCh1c5RT00+5HlNWlZQrtFgT0oGYOz/32Gh0cHcWa71qk3poIuiE5Jv88lMqAsD/
         ZhcQmht2Cnd2vizAXVOTvs21NDl71EFcBezBiEjcnYsDLvvSHcD7Fj7JsSgapVKhf5wO
         UOQ8M7hcf0ak6DXA4OPKoOVLTILJgssCdppUVvrPMQlb1Sl0rsgWiRMotGuGfa6iIEZL
         sGYU/Ywu7CboXRtwtYEw3OkhEKB5s6co4fAUn4redS3cgIkk9zVhSKxfQW3hmdTuV91M
         o6hg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A1YI5HnY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=obuTyRcIlWK5GdIa2P6Y6ICfRw/0u9KUp5Mrd1/FGFs=;
        b=kJ08RKnx31hMboInIEImnUXDN/0jLw3lANvRxQeNmQiAP8KJxqcJT6aSVjfJB/jF7Z
         PC0f40tyE+rdx+l/2yDNEkA2DPIp//D+fVX6+dAHB3oYszF9TIkVTQLmTTRjFu4/WW9c
         QzjYYQpHn8PInsZ42cJkR7dZInh3I93LIv1yhu53lrNM1coRFETOlp5nQrgEqgrktAB3
         RO3ihIZ2d1FUYB1aCeZG2y+fn+4QXllFsz7jKF2LKT06+/wS8xIQ3wRkGr/I9Xt6Kc1U
         KXBcXhntv+XqI1S2imOoweLoxIr3OIWOTbcLlErpZqJzA7o/mmU/BmS4p/mMDfXJvQD7
         3IfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=obuTyRcIlWK5GdIa2P6Y6ICfRw/0u9KUp5Mrd1/FGFs=;
        b=X+6LH7PRnFEBdqeWYwt458WJV4983xe3dVgXAVgalonuBagAYrlCUmYn95cx+Vw/po
         RNoqtExOI/qZ20i9T06IwE8UkXlgM5B/Sej2XiThAwzshvzgPYZdC1g31KBXNLPsnFIb
         KHeu8iLVIz2M840ajIG3jmdxOR8t1j2p8Qq6GnfQxFG7XkSEu2t10Dn3lkgcrU7FxBCk
         hCf6zV6+uhMQwPu15a5ycciBa4vULNEKCB8aeXQf0KIqIi4ywXNUPvKFQmNU6SmLmrAk
         w4yI9GaF7lca2MsCZJ1YBUtfJC+iBCP8Q+MCtM1QyOcPvVqh+ES21UJi6Cj9R27NYcbr
         QUww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LgsKROyILY7AROvw5vVxFySf0Ki9bqoR0fkGFLqpQH5qNUj6t
	X9pmsbwxWg1BYOpYIhcTd7g=
X-Google-Smtp-Source: ABdhPJwc9LEDlYfUfg977mS/3/HGhxpMGlWshs04zChl5oE9I6tbwlDtMEmoYycJxyJ5DYAnmYjHbA==
X-Received: by 2002:a05:6830:10b:: with SMTP id i11mr2122060otp.276.1624412339192;
        Tue, 22 Jun 2021 18:38:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls169366oth.4.gmail; Tue, 22
 Jun 2021 18:38:58 -0700 (PDT)
X-Received: by 2002:a9d:1b4f:: with SMTP id l73mr5630541otl.21.1624412338825;
        Tue, 22 Jun 2021 18:38:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624412338; cv=none;
        d=google.com; s=arc-20160816;
        b=wRzIDUOcFflFgl0MtWON95CuLePzJlodOlz1Id/Gx+5mVrNXZHw7YC0CJnVHGcADbZ
         GyMQmUD32H8eue34ueQQuLVfcH13FsjEYMyphRyciBXJWTTGkw8BEbAB14Uqf/uGJ1N+
         bP4VVbnXB5NvTeItE2hgAm2RFXJiBIm8xTJloZ3I2rhdiOrGnNuzmiKH40nEuieqAU8F
         FdjN1kV5gxWGl0s+f20u6q5dVgtCKi7v2Dafj240zpqlIbr7eF3j1wdJWmrp9IRwaTQw
         UToD6l7/dUGXHPKVLFvfx4Em070RmpsqqAG3zWsXwRRNA7v8mk3jyxYsazqcC5O1ISPq
         AHJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bfjkp5ShLuoFOwjezRGIbyqBO/KabYztRoctZASysGI=;
        b=oEFNjIwCe8W0rnNITNDVUwHTO73GAnnJ0owBsS5BTU/F6sC6VAmWOLZ/rm4GCBI7xl
         L/euGZV7BOIx2dkqRTZzYcLtvrNq8vn10g+T7iCy21kvm9ABMKuWUz/llL476kjGPUm+
         qG/vPt7spa84JtSEMIi4ACXbrshtHpMvkzQ0THc4JwXHwGpVEWxBJqHELvuUAW7zWlC0
         +5bBWsSAtTdjXDBwrWUKsLRhhNPRO27uhV4ToK8CSTu8pK/bhziMfTXwxvkQJGnGw7C6
         9ip/cGL5dSfUYBOOVELT3TYs2XUGrUDkY7pTrSje7ckvUjaHQgw6x53h637jyaLJ0jRk
         5Ksg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=A1YI5HnY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x195si316377oia.0.2021.06.22.18.38.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 18:38:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4A7D76137D;
	Wed, 23 Jun 2021 01:38:56 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Len Brown <lenb@kernel.org>
Cc: linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 2/2] ACPI: bgrt: Use sysfs_emit
Date: Tue, 22 Jun 2021 18:38:02 -0700
Message-Id: <20210623013802.1904951-2-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
In-Reply-To: <20210623013802.1904951-1-nathan@kernel.org>
References: <20210623013802.1904951-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=A1YI5HnY;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

sysfs_emit is preferred to snprintf for emitting values after
commit 2efc459d06f1 ("sysfs: Add sysfs_emit and sysfs_emit_at to format
sysfs output").

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/acpi/bgrt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/acpi/bgrt.c b/drivers/acpi/bgrt.c
index e0d14017706e..02d208732f9a 100644
--- a/drivers/acpi/bgrt.c
+++ b/drivers/acpi/bgrt.c
@@ -19,7 +19,7 @@ static struct kobject *bgrt_kobj;
 	static ssize_t _name##_show(struct kobject *kobj,			\
 				    struct kobj_attribute *attr, char *buf)	\
 	{									\
-		return snprintf(buf, PAGE_SIZE, "%d\n", bgrt_tab._member);	\
+		return sysfs_emit(buf, "%d\n", bgrt_tab._member);		\
 	}									\
 	struct kobj_attribute bgrt_attr_##_name = __ATTR_RO(_name)
 
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210623013802.1904951-2-nathan%40kernel.org.
