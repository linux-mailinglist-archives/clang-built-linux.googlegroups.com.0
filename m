Return-Path: <clang-built-linux+bncBC2ORX645YPRBNXLSP6AKGQEVYVOGEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8A428C5F8
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:55 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id x11sf7511763plo.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549174; cv=pass;
        d=google.com; s=arc-20160816;
        b=H6y0XZTJ1wE1RXLnvVpoosLYQOlVlmb8YQqL3nFvRZkCjlnKJZ+4+EG9nQxryRc+M7
         u2jCtf44jx9VK3Qc8bJCXOvanZUAEysf4HSv5bfj+RBAauqIfQmEr1NdfkR/BLio6Jug
         Yl7qRd0dkSJxGc+n4CynK3VltxUVylTjrNOAyp++xJWfHGhxYcJhYwlmbLJxByo0T6Y6
         xQgZ4KTabaikmPzg6ei+bfp4BigaC7E3a5oSaYEmPH/LS1YUIyaesaqV+yTbwB9JjVwf
         0HKpjUI7PLBEqbNdLZz2C5vblr9/qR+ze9zLf1ZjdjdCra6N8z7/e25rCvbs4eGbdYDP
         hYmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=KwFBQ88A/8FnPm4t17ozB60UB4TOJcAPAxX0mr3tMl4=;
        b=OQd2ubPUaXzkVCIKl0ZEKp7uPE4Afp6YQ5oJN0dOY7p9acsShtgKQIGyGk7RA7kmoc
         bfJ+7z41tyyRFbJYtNgoo3bZOy2RSU8PLBsASpkzIAsQ5dF12y5cfKjOyT0hzLdwaHJC
         fk5rIyq2sInESgVLKhHiP9UDQOpoo6Z7rjT45YFiDl9OXe4HBb/TIbmyL6Y6yo5nu3AI
         P9e8gmI8a2Z2WRg9OSO8PYIXH1BqIZmT36HtCY/sqtf455zlRg7q0f1qoTEYALyNx4kI
         QKg2IMvU5X/bnshfEHgKq7wyUYlJNP0dmz0i457o0Qz7Co7qst5z+pvYoLbpGhIU7Pna
         piWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XNjBIDIN;
       spf=pass (google.com: domain of 3tpwexwwkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3tPWEXwwKALUnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KwFBQ88A/8FnPm4t17ozB60UB4TOJcAPAxX0mr3tMl4=;
        b=bUZPBJZQWJXBmW77QfXytHUyQrJc7N4DwO+TsxbqxsegvKPoE9Hb03+m+o1MaCGMfx
         GVjljyJ27NSOqLVUr35OSBUWDmRh47dvFPBzKfr7f2AVIFbOPcBqH8pT+w+moqOQ3rzY
         pIQkD1CaqEcYI2eCOieJOLXekG8vPu8cPi/9tXWnxKrQySE53GQjkVMT6A72R2eugsC7
         V/vat/c7tMlIcA3WNJeyWqjb1MmZshqRuQ/BFh69GSA47SVJsY3dZf3ak2mG8Ptas0rG
         AcJgG7oKfG+yffkGfREub+cCOIDp3XEj+UfiCua+2VM2ZQgNZkZ5jTLg4XGjeIsIvHoB
         wy+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KwFBQ88A/8FnPm4t17ozB60UB4TOJcAPAxX0mr3tMl4=;
        b=QbGbezBuBdg9Yy3Pb82XKjM+0OYUHa/fclDgH6UTF7BIrLI/LyUXi03VJZZeyczcZV
         7qGQyoWxD1MZ5+Yz+ISW4+UQioAh1meJj5Gc6D5CWJusbfWO3w/SdDoMf0LbIf5pc2tD
         xo178Z977yBU82Bv2Ue9IAXlXZdN7TlJTrARd+nX/SBrrgUXAnWz3ADO9X5C4mFgMp1w
         oeCApjI5ejiosyL0bUY2d3lXgdJv6TNFN/OdaX9Osg9fkJbmBjbJkXBXXMcHx5JO34wp
         GrhRuGXdigXSwr32gD2UaC4uxAFZLkOvSJcAv8KvSb6T06sahwOCfceHSm/HDwTlCpqt
         Mjtg==
X-Gm-Message-State: AOAM532Qm/dx6rPmGnCnQQ/G4Tm158rWFMiTz9yRAgnTQsYL8tx0a0Yr
	7SPKe29RiJJsUDPN07XKFC4=
X-Google-Smtp-Source: ABdhPJzQTFCX67sbxhaj1D37jM9e1PlErjIhYF6jpzCQ/nKyUxBg6nqhwVbPGq7PwgfpfvU6N+aFHg==
X-Received: by 2002:aa7:8588:0:b029:155:7861:4c47 with SMTP id w8-20020aa785880000b029015578614c47mr19049977pfn.14.1602549174166;
        Mon, 12 Oct 2020 17:32:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:714a:: with SMTP id g10ls1848927pjs.2.canary-gmail;
 Mon, 12 Oct 2020 17:32:53 -0700 (PDT)
X-Received: by 2002:a17:90a:f187:: with SMTP id bv7mr23240504pjb.198.1602549173646;
        Mon, 12 Oct 2020 17:32:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549173; cv=none;
        d=google.com; s=arc-20160816;
        b=aK6lRQsbuZyVzXJlli5WPD/SiHEVI64pApv+IRB/KX6fAQt7UAqwPa80w66cAM/3su
         AABeIviILhf4sDkk9sEqqPzC/gSbhGqFWucMReji1yYjMPDrpdjleOjPkqFy0dZXsPuQ
         yS3Z61/rlNqWZVm04kKegsKRmu6FqKnJR+l21h/G5FhFTv2hL5Zdmln4p0mGyEnNG8f0
         AEhif6nxiVR74YPb40w1Lf/+OARyDXAMWtWUT+edrVX/NPxWieNQu+5xye8eu2oYZaSu
         5SMj3uROT0EoJO2bbXjtR2jP12BynBcE7eWbNto0LoYGThBhikK4wAboh0MB5+yM2M61
         C2/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=BiHYmAAiH626N89XqxkZXfyE7gUyoYuU5gV65m3nGjQ=;
        b=Adl9A6zG+3tazw3IXUluF6zKrvchk2TVhWX3V0R1OvCIfZX09Sp1oiA884cUZ1FbLe
         f7mFnloVv5BcGNPR8syBMFtXVAal1yyCeLfZgmPP6Dz7pk9xl6CntNNAzisNI+ZC6Kmx
         nZ62laEJn2pUaAbJyH9vf2DRnoxW4jI/lHtI/Y/C/FXyCwakrrB/RgGqlTtRWmihqiOE
         VNrZAU+zM+ZFrDV3/s12D5SuSCh2FMq5IbXLe0gZyh1bWjAzcmKFUxUVvkQnnbpkYsHY
         4sWyXvmdGV0NL/r1NMMe+tB0h7tDcITzRJAyi8nANrjAHORNncFPdHTG3A91qmB1BbiR
         FcJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XNjBIDIN;
       spf=pass (google.com: domain of 3tpwexwwkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3tPWEXwwKALUnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id np11si754601pjb.1.2020.10.12.17.32.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tpwexwwkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id c4so8013246qtx.20
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:53 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:5747:: with SMTP id
 q7mr15646088qvx.0.1602549172707; Mon, 12 Oct 2020 17:32:52 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:59 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-22-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 21/25] drivers/misc/lkdtm: disable LTO for rodata.o
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XNjBIDIN;       spf=pass
 (google.com: domain of 3tpwexwwkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3tPWEXwwKALUnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Disable LTO for rodata.o to allow objcopy to be used to
manipulate sections.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/lkdtm/Makefile b/drivers/misc/lkdtm/Makefile
index c70b3822013f..dd4c936d4d73 100644
--- a/drivers/misc/lkdtm/Makefile
+++ b/drivers/misc/lkdtm/Makefile
@@ -13,6 +13,7 @@ lkdtm-$(CONFIG_LKDTM)		+= cfi.o
 
 KASAN_SANITIZE_stackleak.o	:= n
 KCOV_INSTRUMENT_rodata.o	:= n
+CFLAGS_REMOVE_rodata.o		+= $(CC_FLAGS_LTO)
 
 OBJCOPYFLAGS :=
 OBJCOPYFLAGS_rodata_objcopy.o	:= \
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-22-samitolvanen%40google.com.
