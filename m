Return-Path: <clang-built-linux+bncBAABB6EI677QKGQEEHRIH5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D122F3483
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 16:47:06 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id x21sf1609757pff.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 07:47:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610466424; cv=pass;
        d=google.com; s=arc-20160816;
        b=xZ+nzJ0BCKxV++mYZ3fs2RiB3t8E3QSpwR4lwArO0392TrRaHy+pOjP/EAUH/3667K
         6gp02vPrxV4D5jmmpWZXih8sJ2NAKRTDjp/iz9NHeuLgwWzO1DuJCaYqDO05+/wV6bXs
         PouunmsXYVNIU/tyWzrTOvgGCfp4ixjLoQmdT0aXwC8TCms1Ni8cdn2FR6XHH0y0MndJ
         o2JoJ9+dcUXPoPgjFyAE5M/y0lOw/d/8tSaQ6Vfvkz1+rxrcW6mU4yX6UE7uH2PEKe+i
         kWuFChbR/iIP3Kb4MgMOtsJu6iZ52mH5KnAATJrl4cMHqPAlMarMFu6DHWJ+U6jk7CT6
         6A4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=stlI9x0HUjdhqBsraO08yJOpg4yf3uZwdGtXKIeoe7w=;
        b=UDdgZSr6CgQStwyDpCeSTxuPYl6/623EudnyvAjwXbYd6gmzjn0lVPIn555VKvv7Qm
         2oMthUKD3JG++rzCtczP7meyhViEWthVPLGqhAgGTYcYqKFTGnZZKW0yX6pB4kPBuhyY
         2TRxjP4thR/RyDcKrwA5wsKbElc4WM9HlvIjzaoxAgiXjKWolyIauZB7/xaK7a6428a3
         liOf6tTBbZ0s/oEWDQj3NWECneJrvDO+6GV9yOwSKiURd0LGUoByHOnFsYxRTtg0ZDMU
         cj54AUD0DRspxvKDkg1tbGcEZ4eU76UPWRHgGXCd53V2GNhBCxr7PtNXLBxSLA9zuOSw
         47jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="nB+GV/Ao";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=stlI9x0HUjdhqBsraO08yJOpg4yf3uZwdGtXKIeoe7w=;
        b=XQWAW2QHBTzIvsUHvk+36sWSXlfQPhX7UICT3hMOYZ1Z/oEmDDZeESparyIfbYqdxG
         VWZcFic61ADq9aXkvbWVfL7ZXLBmXH4RJmrQEcDZSNRS+2/wZHKSZpXuPZQk7FKjYHsg
         vmr6JXWj1jgZee/EuwQ/ExVP/vRhMMPuqWUCnjFTxwcpeihGjEqZNKFdOBRfyks30G3o
         MfH1c0AqAX0d4Imw/kXFqYXuTXVREL160/Iupb5pO8NsSLp+xgE5jNDHqfYqwXxBGtXQ
         B2KXotJdxyTe7IkT1Mfunr06Hdx83REfCHYJanMI/RbzAPrzi8ASF37N2wY9sv7aAtp8
         4kXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=stlI9x0HUjdhqBsraO08yJOpg4yf3uZwdGtXKIeoe7w=;
        b=bfm+4Q052znjiDcKeNABEofJjERUBSpwKr3cg7tIORFmZjrTNXH4vUZeyBLKgn7noO
         HuHEFKXQ5L483U0COc5Qxb8upnDGRZLWTSdbGZW6tuS6iRRXKxxyHg3rVYr6uHutI0fG
         IQxLXcbKEBnDhhdRZm8oS05Gvk93wI0ZXQ3tt1xE+qgLbAVGerC45ue82xU5Wlg/WyKC
         /9stFwDdYvaC3/s2sDVD2dcubzp7nTbJyELR2jlHboC1kLD8qRpuxrsgI4xq5ir1peH8
         PowdvRmy1w1DJBKZawuzuU8uKAElM5ATasdS+eoi8GRa7buc4rRNx2nvf8vF1HVmMg9Q
         qv4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lju7rurTf6ywjaazY8p7eWQ/z898euCwQaoJSN202AVKWzpiN
	dawipT91MHg6NCcFzOZ8VPI=
X-Google-Smtp-Source: ABdhPJyDbKIgs1QWfqTfoI0HiaMQfmgX5Zi4a9f5YgdJoPXr3vQI24UniY7zOLbHzCDyqJfpaxbXxg==
X-Received: by 2002:a17:90a:9304:: with SMTP id p4mr5207058pjo.220.1610466424379;
        Tue, 12 Jan 2021 07:47:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9550:: with SMTP id w16ls1353937pfq.0.gmail; Tue, 12 Jan
 2021 07:47:03 -0800 (PST)
X-Received: by 2002:aa7:9f09:0:b029:19e:cb56:e124 with SMTP id g9-20020aa79f090000b029019ecb56e124mr5151707pfr.38.1610466423814;
        Tue, 12 Jan 2021 07:47:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610466423; cv=none;
        d=google.com; s=arc-20160816;
        b=dCFPDjQjJe2wHSSA7ZdCyo/LY1kDgvk0x37Ys++HANJhJPH8CabtTk3oG8TZlAJmk+
         uSGERGzGPS41ZtpIDn2QH7hS/S1Hp0tCSVw3+/tfFRmW7Mpu8tvqIRSIdZTrEWds+sC4
         dd+RHZmiBRYPGAEB5fDbMZqsIZSpmA3GNcmzjDlrb1KYm0lQ3QveTsStAX7CDP0PAMln
         IoXtjMKS0mH+QkTz7twmAAGoi2/5iVjo0c/LhQ9uxKOZvyn9xJg0ejEmB5RZNTiK8ZoB
         dG1lLuc7/oZWDAB5c5oc/xyVAl5glIAS9bBx0swdsVO2Hpj7Cfy5VBFd8XRhMZ9cQI6D
         pV3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=eYOzZNhzpiBd42+jhcDJ6zUjMhpte827aBAt4rwZeK8=;
        b=RfK18NnurYteagCqHK9sl40llhXPh0HKWDyDZHk0kONDP9kDVKPtTaL+iP6LZuGNso
         tpu8W6NPodjIdkF2AMACyqdhXtjLYtSEp9L1kpGtGyqNdM24ChjO76tcqMeDe/3heQdL
         9T7IT/su0cKvzgWNZPf/oKN2cUEQoMIipexI2Kl14OniVZ3TV5wn35paJW6lK+aaB9Xl
         n36H0YMropp4uXBvW1Z7PzZiTGoHtpmf4sOuPdhbZkSqqgWVfIlo2P6yg0phwwJxQ3Qc
         UeSi4rkLEbZN24ChNo/yshd007aTAQ0oZ0xLx/frFI1qTeJ2KzXeCt/nn9Epq7ZpnPxK
         2/uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="nB+GV/Ao";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id kr15si260592pjb.2.2021.01.12.07.47.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 07:47:03 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 50F622312F;
	Tue, 12 Jan 2021 15:47:01 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Russell King <linux@armlinux.org.uk>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Vladimir Murzin <vladimir.murzin@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ARM: fix link warning with XIP + frame-pointer
Date: Tue, 12 Jan 2021 16:46:40 +0100
Message-Id: <20210112154658.850192-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="nB+GV/Ao";       spf=pass
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

When frame pointers are used instead of the ARM unwinder,
and the kernel is built using clang with an external assembler
and CONFIG_XIP_KERNEL, every file produces two warnings
like:

arm-linux-gnueabi-ld: warning: orphan section `.ARM.extab' from `net/mac802154/util.o' being placed in section `.ARM.extab'
arm-linux-gnueabi-ld: warning: orphan section `.ARM.exidx' from `net/mac802154/util.o' being placed in section `.ARM.exidx'

The same fix was already merged for the normal (non-XIP)
linker script, with a longer description.

Fixes: c39866f268f8 ("arm/build: Always handle .ARM.exidx and .ARM.extab sections")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/kernel/vmlinux-xip.lds.S | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 4d0b0cd9222e..ddb70c65d525 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -43,6 +43,10 @@ SECTIONS
 		ARM_DISCARD
 		*(.alt.smp.init)
 		*(.pv_table)
+#ifndef CONFIG_ARM_UNWIND
+		*(.ARM.exidx) *(.ARM.exidx.*)
+		*(.ARM.extab) *(.ARM.extab.*)
+#endif
 	}
 
 	. = XIP_VIRT_ADDR(CONFIG_XIP_PHYS_ADDR);
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112154658.850192-1-arnd%40kernel.org.
