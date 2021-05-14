Return-Path: <clang-built-linux+bncBAABB54H7KCAMGQELOTTRVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B043380B11
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 16:06:48 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id a18-20020a0cca920000b02901d3c6996bb7sf23908033qvk.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 07:06:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621001207; cv=pass;
        d=google.com; s=arc-20160816;
        b=QCU4EN1GLJ5gkIdcj74X6TVXzpmDeUCLmtlgv441qHfvoZFOj1LFTjZea5Zr+FZVN0
         aDd8SiIL3aXcOYGy7aWa+FO/4UcR7aVfVLA1eyTEbcjNksJlfayvLRE0ZYokbLKpMeqz
         UTd2tqNzsJStbkNPe7n9dbi2NJBLQGIx+OdjCT0iMd95CYUHmBF9Cd8CJQOZQMYNWjBU
         7fl+AhJx5SRbEttpTnW7lPQXKS/kka/9MkFTK/TY9L1aGtnrLMnOMSjWmlFmr2a9jCls
         FyCLRFhtG7ZCUxN7ponn4TNGmnbAzr02dfCBTQpn08LOYY7fnVJ14TuGVLDLajU57H1R
         BNBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=jNb+HlYgSoRx3t9i+clTaw/giypwKMEmPoulGSUHXX8=;
        b=kqt5XVAJ2zeweg3sKY06q68ROtUUjKFH6bT2mW74YgM1OPDA/ZfipJD7ZjYgCNXM7Q
         KOb1PXVDKiF1vkGf2v224qRRVdBgkaMPQEyPt4PTQPagPJygpAsmUMSjP1rGN+U0JM+h
         0BRU2icEYOR+MXoi2eYoF3HBFeUF6QxsLTkgl/MtHWfeT0TQZcK0hq5SwQJxZaOkIqUG
         05ZvLL0pW7X6ZKc09pIBtDduWVFe9ildk7uQ+iIq0HmTyHxwn65gVOX53w5E+8ei5ZXX
         cPub4xi2OnyevIcDFBUXvryiClRowBkAVncGvwa5cuAOAS+5h0XnSeqbvS+1lq8FZ2Sg
         89VA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Pf/86j8a";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jNb+HlYgSoRx3t9i+clTaw/giypwKMEmPoulGSUHXX8=;
        b=BekAPnDBuMzJxskaTRFpf16oQNyZ+EbH1QENsl6mMUcXmSg5zD2YNcNwFmZcewM2Gf
         HJ+rixpsZOOmQZsdDpzygFKNi7+KEnfHe/qr+D24FJ+1hd+Y4dUvsvTsamDxMtttkFiF
         KFC4J+7xEIbllhcTRwMTo0v7YtrDM2pSL5Hkcvwem/DlOr6WDtKUcHwrEKrO8aIA1zJh
         gDxY8FFzPdrBiYwEz11W323n0JVfmWjaLe3sibFferfJMDm26sdRi8rTgNUFC4EkFnWd
         v9xp8Nep5j1bfrKHC4B7e2FxFxAP26GD4iG2qHlvUM4T85Yf4sX2yV2zJ+zSr9upBHIZ
         7exQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jNb+HlYgSoRx3t9i+clTaw/giypwKMEmPoulGSUHXX8=;
        b=DdicmOIQ7WiErmLaf9W7Q16q1Gk7oYoPhLdbuIov4H31crOiO0tryNME+aqg4RmoeY
         ewPoCoOCZOVKQK6gIElLTScauFFmu+f+1ZxxRz5kVZ1IYYbzC4LeoXUXd5dB8K0S8JSt
         wIvTJ0dPPjid7Y+lmMpR5vVo2/1+tuUq6qkT3heMS8rQkIZXfh7tZtj4k+4/aIfhM1z8
         tiMIsS5l++zR4sqtooWflnU9ctEG6Kz3FM+XRTNUbCpPTVdyZou4QwQJ0EwSYU586mqm
         uTX39nNX8vVsYNTlylf8bT5kghsklqaFpKvkdNMpBgw3rmwWpg7qQJXDELLifbOVz47K
         nehA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kBDEutAOSrUKADdyOsWL9Qh22usWscS6ngn4rVPclitZqogej
	DIladE9fDnP3nfnapFPdGOI=
X-Google-Smtp-Source: ABdhPJwjL1n5KEveAQ9rCR9LGRzX7an8h1ppX8E2l9skcsdX6GAWUi8dsBv+LE4ZRP6y5Bha65t7GQ==
X-Received: by 2002:ac8:13ca:: with SMTP id i10mr8857107qtj.255.1621001207612;
        Fri, 14 May 2021 07:06:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5f44:: with SMTP id t65ls6026053qkb.0.gmail; Fri, 14 May
 2021 07:06:47 -0700 (PDT)
X-Received: by 2002:a37:b846:: with SMTP id i67mr2506181qkf.94.1621001207208;
        Fri, 14 May 2021 07:06:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621001207; cv=none;
        d=google.com; s=arc-20160816;
        b=coFYa6sjFaDWWaG51wy45qb6NABGhZAJwTns5H4N7Yb41vPqMhaMbTMZdckyp9L6+I
         Uvpn86xxj3Bz1iUc1iSCoKS/O7BiWbsx9Dqb0Ub2FGTt23fEAeXb6Os4SNdWV7u1yMUs
         6QoVtqZzZyHJhTSBFpXbDAgKKGrnBf6U4+lq1eWKd4axazHJTyicjLb0WuvuBfqjhTcv
         A0WEJj5S07J5pN9wqhaOmggjmEmgUDgKYSFALCXfEZEuhpBxlWrQjQt9BJAtFYO4yFjN
         67PdWvhdAAmkDI9SQSOOAAvMX0sf5Uo/ye9fW7vxGQcEHCtol1LqwV7VVZ19+qlmi4vB
         JDvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=GDMTumD2lGpXyDVe2Snw4kxciXIlkXG3tl8N9gyL01k=;
        b=r/IJVxiUfXqprnSXhl1jKgy6L00qiVnTyc8f328VObBT6s7EIaW+6SPKOpqBFc05K6
         x57DIabyPgjxYhDfBe92wFp2GX58JHOM/1bxy1KZnLU7KuHF9Z/Pu+t9b97EUtDFmT7y
         pvtxxqKGg2/ZF5FrHUs4HmYqaDN00ife8Pa8QO8C8X9eTA1YPG7YEvgnZVeFwdmluHFG
         xpp1B8KlnpJC72R9CgFX/b+1M8r4H+q2DU+srlgP8ixSWOaRTLVQ+H/+zUgRSsYYoZA4
         DkkcoNKW/OI86Ebh9OezQK0x6YBCFyOVOPzLP6i12B/e/rhcmxE27wDa3X/QEWeiPojd
         97Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Pf/86j8a";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p5si183033qkj.2.2021.05.14.07.06.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 07:06:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B931B613AA;
	Fri, 14 May 2021 14:06:44 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Maximilian Luz <luzmaximilian@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Hans de Goede <hdegoede@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] platform/surface: aggregator: shut up clang -Wconstantn-conversion warning
Date: Fri, 14 May 2021 16:05:46 +0200
Message-Id: <20210514140556.3492544-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Pf/86j8a";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

Clang complains about the assignment of SSAM_ANY_IID to
ssam_device_uid->instance:

drivers/platform/surface/surface_aggregator_registry.c:478:25: error: implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to 255 [-Werror,-Wconstant-conversion]
        { SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
        ~                      ^~~~~~~~~~~~
include/linux/surface_aggregator/device.h:71:23: note: expanded from macro 'SSAM_ANY_IID'
 #define SSAM_ANY_IID            0xffff
                                ^~~~~~
include/linux/surface_aggregator/device.h:126:63: note: expanded from macro 'SSAM_VDEV'
        SSAM_DEVICE(SSAM_DOMAIN_VIRTUAL, SSAM_VIRTUAL_TC_##cat, tid, iid, fun)
                                                                     ^~~
include/linux/surface_aggregator/device.h:102:41: note: expanded from macro 'SSAM_DEVICE'
        .instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,                        \
                                               ^~~

The assignment doesn't actually happen, but clang checks the type limits
before checking whether this assignment is reached. Shut up the warning
using an explicit type cast.

Fixes: eb0e90a82098 ("platform/surface: aggregator: Add dedicated bus and device type")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 include/linux/surface_aggregator/device.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/linux/surface_aggregator/device.h b/include/linux/surface_aggregator/device.h
index 4441ad667c3f..90df092ed565 100644
--- a/include/linux/surface_aggregator/device.h
+++ b/include/linux/surface_aggregator/device.h
@@ -98,9 +98,9 @@ struct ssam_device_uid {
 		     | (((fun) != SSAM_ANY_FUN) ? SSAM_MATCH_FUNCTION : 0),	\
 	.domain   = d,								\
 	.category = cat,							\
-	.target   = ((tid) != SSAM_ANY_TID) ? (tid) : 0,			\
-	.instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,			\
-	.function = ((fun) != SSAM_ANY_FUN) ? (fun) : 0				\
+	.target   = ((tid) != SSAM_ANY_TID) ? (u8)(tid) : 0,			\
+	.instance = ((iid) != SSAM_ANY_IID) ? (u8)(iid) : 0,			\
+	.function = ((fun) != SSAM_ANY_FUN) ? (u8)(fun) : 0			\
 
 /**
  * SSAM_VDEV() - Initialize a &struct ssam_device_id as virtual device with
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514140556.3492544-1-arnd%40kernel.org.
