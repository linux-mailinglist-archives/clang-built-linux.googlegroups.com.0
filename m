Return-Path: <clang-built-linux+bncBCQPNZEG7UCBBV6M26DQMGQE5QUGYBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3243CEDEB
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 22:53:45 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id x9-20020a6541490000b0290222fe6234d6sf15880785pgp.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 13:53:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626728024; cv=pass;
        d=google.com; s=arc-20160816;
        b=dJDEE01wqlgHl64CeQqc9kfxzB0IfeHVTMVty0jgher5n3B/z5ISG+MgwuX3ISE6zg
         4P9MxFDZgdwuWLGdSFPOlUadrn9+631mxu3Kh/8wjctF+yRJAoeBLVaYuiPlGErhtt6s
         MqoG/LSKOxVKsRL3bIyG5ILxq0cptBWAxP42KnnfhCDoKQAGnZuP2+AIReOILh75Y82f
         HzwASaWPzrcH6aysd2uq/huRwkvP7am2oG1/yKm6lWBnwr5WAYQFgFSb1CCntGVg9jao
         u6lc7TJfHkFKSiWgcrWYefcvD9KZekyDzt/PR63/Hq6dyrI5HYvzrnjSn1KQK2bxOjkA
         l+zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=b/zg14ydyjgpakVFPYsUIZx0FzrxpMHEoQfuJYmpYkk=;
        b=UgPIC8bVfq0HiVIPF4ksxjHZ9koOQizeQ3lM3m7gLXWpmnvt0p1PbNWg2xmo8mHEs2
         piX7cxAP1y81A2yffjxWLpoSU+3UjXfMFVVjzkmp9IImgv+ihos3quIkHUE//M8QpF0T
         dhnyysBq5XG8yRmLxDcdr0mYD1EPfcj1dKvgV6OdsV1ksiqrPjWiv6LCzGjBBSjD/1PT
         p/3dPsvdBU1HR3OVr1dOgQJ0MmTYkipjBD/YDnO5og6x8ro3cBD2sHYCT5qSjk7VjUnT
         wux9PE59/K9E9/QEDkh5G4VKGPt3HMS94u/ZAa4UCWkHZdcqxCCiqXi4wUPzclj/o1t5
         NrBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lNhr3LLs;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b/zg14ydyjgpakVFPYsUIZx0FzrxpMHEoQfuJYmpYkk=;
        b=Mvp/SpY0iFhvipb+E6UBEaxJID5Rzv9inRjMvgWpKxPRtwHAadnCv+tT/M20Gcm+nc
         EQ4h+9dEpgP+gRHNyrd4n7EKbljc/phV+x7Dr9EwV+04U+UhS+JoBUCg0VaMKiKBtcyY
         fH/QDpHOiiHUAWEm/+GuEGfhLdcZrhxBl0xcJfrjbGyzuY693IfJ20yNwZuij1uIL2yG
         kuwHDO3wmImOgp0xjd7a/HGs9cXi/wzl7hKOFo8zmXKTnNK94iHaCBoEFRAsJWpDhxNp
         h+tmHTuqKGhFWZPgqOagjdbNrX4XFT2yOtfYbUDD1h8gNEXJA8VhJMb346MfnTz/jOtk
         mAoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b/zg14ydyjgpakVFPYsUIZx0FzrxpMHEoQfuJYmpYkk=;
        b=NVt2vFA+gaKf7L4cglowiCrgqK6TlqTo9MKEdPVVdtm4Ml1qfFALq+uHCX6YlmYLig
         16YSubqOykmU1XHRBDxqkCUP1NY3vb3UEAsCiyqekV0lvruKYryKc0uu44/tpaj+GUzr
         JxO95s5byw/El4odE3jms9C1Shj6vbIosivXNL6C8/qgACdkbqXyeFjOLJnU4SAtGWFt
         pnp7cC1Lr2OXvjeEyBbbjITniOcMoA1VA/Pia2qtKY9N1/R4lKyrMVakZLNWx0t/4YSa
         VS392Jh3u8ai448bNXBdqwzwupIx/XO8T1/48ahZrFerP6064qfTJSWicDTzT0+4Y+ns
         jQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b/zg14ydyjgpakVFPYsUIZx0FzrxpMHEoQfuJYmpYkk=;
        b=r7PhBvKxpkudcz7zdctyQNJtwcWnCNXd9UAgDq0eeafpX3cYtjesm5VKhdL9bFH7hH
         MhtNLaC4MpC4qxsbav5F0Fn+Qyhc+PT/zzntwyQH4bPry4tzPQJiOJhASlUYtvDp2+b2
         ROJBcSS9bVnH9kOxciK39/4ynMq5UjkiIxa2WkkcpjtT7TkoHXXoIqU9jjMJ/ON6Mw+V
         IwZ6Fuidx7W2xl0z369d7b0D1vBhdzZ88+nvCAfjhtoe115gdBBpj2QI4KtpEFFM1OQZ
         MC5YSK0sNFeBwu0Zee13cnyes4+Z5Qqh0QpMPlELgPdZ6uk3GPwgoHf1C7rjaemdxFmg
         VQJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530u2U3gk9LC6rdMi6GrgUN/ELbodiAPyNjkgtIZOGsHMU2N0xrF
	UnXfrtqFsQC68RxrmU0V5+U=
X-Google-Smtp-Source: ABdhPJxjL7grHvpMAowAaNPigHTiVXBZIDofIqe4oPAIVJ0L1OCpz3V3/PRMmt09QusqhY18wukvMw==
X-Received: by 2002:a63:ed0a:: with SMTP id d10mr27473383pgi.82.1626728023793;
        Mon, 19 Jul 2021 13:53:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:139e:: with SMTP id t30ls9376995pfg.6.gmail; Mon,
 19 Jul 2021 13:53:43 -0700 (PDT)
X-Received: by 2002:a63:5442:: with SMTP id e2mr27475891pgm.365.1626728023184;
        Mon, 19 Jul 2021 13:53:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626728023; cv=none;
        d=google.com; s=arc-20160816;
        b=RDcFxPEMrxLueshUZwMelZNwSnoGDeop5HjAGqU56b44+r2p8JnqKuhpW5uQEbA2SZ
         sbLAtskzbXHpa4xothi5uoK4kO/Mn/jsZCTzZxr1QDDadEVHhnxytLSbVbqU45m82QuR
         Ec1PxpvcEK9glkFgABB67aJ/LRECHmDsN2OUJmCU5ZG9KrUTwb2he5haPqQZ6GXKY/m2
         EHNz+/ec3Ui6Ul9qtlIaDkvzkCdSxG4t1xi3/Po+udfwGm7Zohed6iurb3EYZN/ToL+3
         BXbP4pO8CesVXTHmQ5HvUE1ZYYieV4to3BVuv2Xo07839ybsUINIMAqTQ+iHm6qknI+K
         wtZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=To1VQqsP4sYw5X8oyJk6rrmdug4zweFow7cNnsopET8=;
        b=hqWjw5BD8JWM4MEvbCnAl21QSUdHaC5U7MIn8JFu9slpO38bIfbx0/g2+1lsHOEYq+
         9JYNdMg8ZJ3jOt0CJhcW4u1Z/OuKqYakww0j1L2awL9bhTpkQ1+3ehiqttfcQUa4c6Zv
         Pc86ruSAkeRJroL+x6Udb3OUziHzJbFJNicUQZtzBc+Pd9k2zaPZKaj+jTzZq1pBvkvL
         7JhgRnfnTcAaWHqztWLxm6iG0GltpZNqiWLCcjbW3i39SRMkf5Oq4ckBzm3Sft04/5V6
         V4pD8YdNn8I3svQtUgJuVNyeYOj8h8QPwh46OuuaJGeW0Bkby8Vbenxwg22pE2EpkH9A
         Twpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lNhr3LLs;
       spf=pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=twd2.me@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id a22si1643391pjo.2.2021.07.19.13.53.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 13:53:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id n11so10299838plc.2
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 13:53:43 -0700 (PDT)
X-Received: by 2002:a17:90a:8c93:: with SMTP id b19mr13591410pjo.107.1626728022956;
        Mon, 19 Jul 2021 13:53:42 -0700 (PDT)
Received: from localhost.localdomain ([2604:a880:1:20::1f:7001])
        by smtp.gmail.com with ESMTPSA id x3sm397267pjq.6.2021.07.19.13.53.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 13:53:42 -0700 (PDT)
From: Wende Tan <twd2.me@gmail.com>
To: palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	linux-riscv@lists.infradead.org
Cc: Wende Tan <twd2.me@gmail.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 3/3] RISC-V: build: Allow LTO to be selected
Date: Mon, 19 Jul 2021 20:53:39 +0000
Message-Id: <20210719205339.1023572-1-twd2.me@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: twd2.me@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lNhr3LLs;       spf=pass
 (google.com: domain of twd2.me@gmail.com designates 2607:f8b0:4864:20::62e as
 permitted sender) smtp.mailfrom=twd2.me@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Signed-off-by: Wende Tan <twd2.me@gmail.com>
---
 arch/riscv/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 8fcceb8eda07..b593e5031c79 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -34,6 +34,8 @@ config RISCV
 	select ARCH_OPTIONAL_KERNEL_RWX if ARCH_HAS_STRICT_KERNEL_RWX
 	select ARCH_OPTIONAL_KERNEL_RWX_DEFAULT
 	select ARCH_SUPPORTS_HUGETLBFS if MMU
+	select ARCH_SUPPORTS_LTO_CLANG
+	select ARCH_SUPPORTS_LTO_CLANG_THIN
 	select ARCH_USE_MEMTEST
 	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
 	select ARCH_WANT_FRAME_POINTERS
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210719205339.1023572-1-twd2.me%40gmail.com.
