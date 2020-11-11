Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMNDVX6QKGQECISG3IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C092AE691
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 03:51:31 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id 144sf671851pfv.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 18:51:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605063089; cv=pass;
        d=google.com; s=arc-20160816;
        b=sFATrTq4a1i9qTgNIXdvceDAUH1IGO5kUa4N3bgB9iZC/b6XaE9FoCnibjOQhvdl/6
         M+05/pPHb6qM1CCU7ud3+XjCrqZHHAl4YOcIck5TDbDZ0XzvFPwZT3WJd8z8KcnO4G7H
         pN3nG2VrZsW5CUUW1kdTrlTsohJk9WzFZLiChm1TKbV1kEld5XDr5aIE/VfIYJvD1jB+
         CSD/6cpSP64a3B3OuRUDrfqk90TB4hMxYJYuN6vCil+Wh2JOoVtxc/ohDbozEb7FRXK4
         piA1CKqV2BeR4UiaBywnOdUVdH9bVxU8pFhlI4reEcWREhfHA24VuBzrT3R/iXF3K/Om
         InTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=MVSRFtEZD73DkX4FwbLHP7R/WVJI3F9n0R5Rsds+ymw=;
        b=CAnueZ91j90cLO0RkPlZ6a2/9IjU4Og1cipuuxFvtcXWiH72xmPmCIOEyEt9UyFVor
         K8XGjViPvDQ+Ii0bK8Lhdowk0kNAIM8/moNoQ8Mb+ZcuzK9XXDHCIA21mlu/qoEiQ5dC
         mXxBAX/CR1Vnh5OV8jItTy4prbaAhgdPTLV4B85sY2MBVbuSqWM4i6+3M97UbejmVFHk
         1ZPBvnrkTgxrqTCPlzLS+ffE+eFBwIyg0mYJpnifswl9pNYnqhcZNqq03Omh71Fm3YYa
         ZnAYxrBrT85VDw6b1OR3C2HGAoy3gpDYt7lALwe1JmX0OaRl3mDjNrqmsW9qhWVStPry
         7OEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VkSMAoES;
       spf=pass (google.com: domain of 3sfgrxwwkaausijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3sFGrXwwKAAUsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MVSRFtEZD73DkX4FwbLHP7R/WVJI3F9n0R5Rsds+ymw=;
        b=VFyf1st8qOp2ViUyFb4CX53EXNB1uBi4NmcML8l8JmGHaQ5XdSBXU6zlaNPhuAPmrz
         A2EjJdFmdW1se5ZoWkT1ro2s9Vgg8JDlW0/VwtdCr29LSU2LEpmP+PRJQXoPZgUy6WbX
         yHS3QHYJP+GfHNG/8McTKOzLEJKhokZjhNlAKT4aFtjFb+OFlaZN/XK9XnNXSSZvA7L8
         1K2sWhSQxnTw9SKmgkyYZmFPV/wrVJaESw2JCxV9ND+mVhuGNMutlsJVCAvmraBiBqtS
         Ct4guXqEme+VVyY6EMrDUhRAS8I/5ECgPX0TkLCUqa2TodJSMCs5ehI+Vfn04iC7feRp
         75JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MVSRFtEZD73DkX4FwbLHP7R/WVJI3F9n0R5Rsds+ymw=;
        b=kkcilKTA6InI1W3F5HhbjUKU5bH7gCD06/tXqzvAu4ESw5hefBTG9630jMYjs5+5Mh
         F6YUxhW4M+aJW5dnUioYwpw1Adv4q20MfpGWPYrtNsVA3EIdHTT7xVZVWj0ferG2AakW
         wIx9+80owkjYDNe8t7gG3Q9+m0uc0B4cqWXRyMwApjTpYkBj6DDkdEdM+lIcjD0LD9Ky
         isJtMzIcv2ngO/1x0BxCTDxuW6OcYmo6Xuxn76qSkKTwqtJc2Tpv60Pa9+KjBh9TBxmj
         S8eLlCc0Ko/vTSkPfqmENOncGAmlWQeEduowHQm3KX5CPEoZAA0RgK4UEoeMIqbQRglH
         XMvQ==
X-Gm-Message-State: AOAM530z/OFIxlsFIuYp0HbUc2M76xQR1cPfwcFUUuQk3YgGjx4r7D5V
	13Oj9mN5iLBrgS0eiry70Sw=
X-Google-Smtp-Source: ABdhPJwhLyg+c/iXBDVCWJVMShSnhFWFTcVD4kN9pqoQsFUBP6H5BnayyyqDauHpIt+lEJsBqLID3Q==
X-Received: by 2002:a63:2c84:: with SMTP id s126mr11211214pgs.123.1605063089693;
        Tue, 10 Nov 2020 18:51:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b82:: with SMTP id y2ls6176544plp.5.gmail; Tue, 10
 Nov 2020 18:51:29 -0800 (PST)
X-Received: by 2002:a17:90b:3314:: with SMTP id kf20mr1645501pjb.156.1605063089138;
        Tue, 10 Nov 2020 18:51:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605063089; cv=none;
        d=google.com; s=arc-20160816;
        b=zHI4HZVayh2o253DCw51fGACc7jOtTiVEJ5oiOT0MXzWtzRHB01oKKEtFRU8SLXT/u
         2NSGIdGLAbjXuhs8UGaoKpVp/45OscPFH19WufE1ayrK3RQ3X5mQVTHbsYkDlVYujL5M
         C474/CAcYmLvE9MRCPxWCj9ktiRjP5OaDgEyD5BjqWVzmxGgsTO1d1ELVdGZ5cVsdgr/
         sjlogHFsbSx4sw5/HOVsWAYwdgOD79afVzRR2joJXlTEqIGfZDzYyi8b0vCni7wAcJ/1
         bvLNMNlASCFUvTgf9jPtbPckyZ+UcCS5QM24TNKQ4bX/D+DUOgDlt0ClNoG4blprFViS
         bQcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=bulE7KzGYIStw+Zl8IeHnyGg4JJF3dfqfcXDUty9Kvs=;
        b=zjdE3au1pl7dBXBPiaG59iW4wDVKwNX2MAaAZxCLozvCh6saaiCrI+lq2C7rS64NnG
         Zkt5B2GOSubwLy1py4ypJx9vtbYiwVyKVS8OsHVvtUVzzrKayuCmKH5frYT2eHEXgOgi
         zXhwZtBtjQm/hkxPQlqQj2ZkKBjaN37i837OlywZRaYZa1oG/5BM+aOCik4V6haok3sK
         A/TcmDrSU95vGNEMH+xoeoHrysKNn555/KMEqzO0DCSARCI4lcApRngbCfXK/jwNMTU1
         685oY5nu0Dva/Cqju72uX0Uc33fmgAx774oMV4zzBbEw57lfGOdD5Ju4Sis8bF8Fk/tF
         AOtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VkSMAoES;
       spf=pass (google.com: domain of 3sfgrxwwkaausijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3sFGrXwwKAAUsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id ne10si473156pjb.0.2020.11.10.18.51.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 18:51:29 -0800 (PST)
Received-SPF: pass (google.com: domain of 3sfgrxwwkaausijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id w4so667506qki.20
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 18:51:29 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:4105:: with SMTP id
 i5mr22618577qvp.47.1605063088245; Tue, 10 Nov 2020 18:51:28 -0800 (PST)
Date: Tue, 10 Nov 2020 18:51:20 -0800
Message-Id: <20201111025120.1694158-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH] ARM: unwind: remove old check for GCC <= 4.2
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Russell King <linux@armlinux.org.uk>
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Dmitry Safonov <0x7f454c46@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VkSMAoES;       spf=pass
 (google.com: domain of 3sfgrxwwkaausijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3sFGrXwwKAAUsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Since
commit 0bddd227f3dc ("Documentation: update for gcc 4.9 requirement")
the minimum supported version of GCC is gcc-4.9. It's now safe to remove
this code.

Link: https://github.com/ClangBuiltLinux/linux/issues/427
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm/kernel/unwind.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
index f35eb584a18a..59fdf257bf8b 100644
--- a/arch/arm/kernel/unwind.c
+++ b/arch/arm/kernel/unwind.c
@@ -18,9 +18,6 @@
 #warning Your compiler does not have EABI support.
 #warning    ARM unwind is known to compile only with EABI compilers.
 #warning    Change compiler or disable ARM_UNWIND option.
-#elif (__GNUC__ == 4 && __GNUC_MINOR__ <= 2) && !defined(__clang__)
-#warning Your compiler is too buggy; it is known to not compile ARM unwind support.
-#warning    Change compiler or disable ARM_UNWIND option.
 #endif
 #endif /* __CHECKER__ */
 
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201111025120.1694158-1-ndesaulniers%40google.com.
