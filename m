Return-Path: <clang-built-linux+bncBAABBC6VVH7AKGQEIL6XXJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 442BF2CF273
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 17:57:49 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id z3sf7810598ybc.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 08:57:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607101068; cv=pass;
        d=google.com; s=arc-20160816;
        b=L0zo3I9IBUbLEo70nIqhAFcyNj1zIQ0CoH3yWUnRfGmNJq6Ni7bmE+o9Fo1ZTAWXM/
         v7aIvliO8dj5503xOktXvjGhOLTock2TH0un7Dqh1XAb8xN6EPUooKA7MibED3ouj4yT
         D1nxTN/gCMbb8O0x7n0uPT9+6JlLDEQ7Xp/+Cfiu/U9qn9aCMcL8+JijuJgeT/atCRbp
         Flka5CFXM+co7pz1LCuP5Rm+9SlwUjbE0N9dr0DVuOKWQSSLixKMY+oYS8CaRnP3FKbA
         gEflR10SE2J3B/DxVfzAjdQpTEwqCNsZkVauCfintL5gV0kf8CDCN036gsvm0BT9aHF/
         gNjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=47h/nKOYPDSLrm/Q3IsXdNCntkO+4Dc//TYCbIldFyw=;
        b=N17cw7b+naTR7GRyaHCN+sSYeubRtrcLBpsRa6M06WZ9gkpauJwKUkxLsL6mVsXlI0
         etxTJa4PJcFZgXrZ456mxWSlEVHW9hCblHzhT62TLDAuW5SbTa0oUU/1EBYrb+b/FjAX
         AvVd+m8u9lE/U5YHoNBNMIogAOcQ7ETUqxM2T2ZE0nHBRa01Ekx9UFlD3x/jkRZllF+x
         qFJFNenrFpxpMzx7hfhOXE64VUjVydaz2UpcpE5SxQTbuzb2m8ysATcnDLpf2L08vRyL
         PW6dIMp3decbqRu1tgJ0U7oJFPMEbp9OSpBYjJkRJNYY+yuOOS0c0Qmrx3EwYFr8jMb8
         8vJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=47h/nKOYPDSLrm/Q3IsXdNCntkO+4Dc//TYCbIldFyw=;
        b=SGTgduIg+wM/nkRALNFHhcrhj75D5zuK24IIyfcXwcJ/ZCI5R6fRjq5QUvcmDm05fy
         W3V2xY9eOS6TxdmHVmnhQqnCt4kFGBwBOslEMg+77nmn9PF9QskcBfDOZ6Vhs+W91jKY
         r7SzR+2zH3MERVPOm6a7Kp09iof/7eBc8TdUFXB5US171/Hevosv0myAZtvdP2msIXsH
         F5LJuuKulUFZ8zhYJg4L1/GNrLkxjzmM/O/6AjYrOe5x8+uCu8UWBG8uEGmT4H6GIU9I
         clXE7yL82vjfHQPlqBTUnEaSEbtcIanpuuPhfhQXsApxv1fiSZEsX2regQ7vD5UhH6Ns
         XBAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=47h/nKOYPDSLrm/Q3IsXdNCntkO+4Dc//TYCbIldFyw=;
        b=DBWibD02ttwhQ7nKwNMwGUf2kvKt3lwQXH5GXST45sMZjstbz7FDHJTbFGxy3Bw5X2
         WNX9fMzb/v0ovC645rF08bmuff59maQnqQQaUXubqzovSRmp7oCSD2YgD80LnV7+lFNW
         ZOX1t2DwJNYwiJHb7C0JtD0Pm8BAsyg4DJiOOmW3Kz7hn28p8ENIUYrin/uY+gfwOoTj
         oaGqqA3HMi+p928PaAc5L6DIN1clicCNLsWY4AvTsxFgXHrL/VohKL1lOaOVd85AU6wK
         ij77bDWm1bvxQ784Tat6lmp/n0jTzYzk/BVRkSVhYZUlK9gE7X+aoBv6l/+D1xxOkWnY
         THmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aaNUpyL3EO8cblVdmse+EzOOh8Pwgt2W3jUUpC4kaPqgZXj6J
	PnU9t2PIp17Eflraz6f+QGU=
X-Google-Smtp-Source: ABdhPJzlKZJxJK7KLVYxxanAer4J4MOCzW1afdyYjcXTi7ANLJGxIbpvXqtZdAU/VwXOq2Gp7xeNvw==
X-Received: by 2002:a25:7354:: with SMTP id o81mr6809564ybc.107.1607101068112;
        Fri, 04 Dec 2020 08:57:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5f42:: with SMTP id h2ls4622931ybm.11.gmail; Fri, 04 Dec
 2020 08:57:47 -0800 (PST)
X-Received: by 2002:a25:3c86:: with SMTP id j128mr6855496yba.421.1607101067767;
        Fri, 04 Dec 2020 08:57:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607101067; cv=none;
        d=google.com; s=arc-20160816;
        b=Ei9ZRzDJJ5+PD3wBaafiPQgcFcRgykS5PH/4yOlh/nbtiiqRi/08qlJfg2qrgq1275
         XNb8PH5GbxFgD4hhbHhoskaLMo4tck499szgZPkfXgeY0IAzI4rsONLa8b/bEUP3NMsl
         UqQ2u97Rq+CL1RoESM2lEEq/7vQdYjoL4fNMX+Vr8ubgO3uRryVcdFKFI6RHkxNu9f+R
         zx6n03FY4lqy1V5eknpk2JZieEUlj+KaXo18f+L4oeSt8Yrbm0HNYFGgqbYcB/JnOy8P
         zpu2r7CMNl4p0TN/rj6c8oLkqo+SF2lNSMExwl/9yG7narBcJC0t/TtWJ/67714aeGOp
         /Xcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=6JgHYQJAzbbExsxnJL2QUDkvdBxylioGCfKVxfqDP18=;
        b=biaSWa9fSIYz1NRwFhxmbJfomkbIK27cL+6HAxs+e+txo6vX9IimJX9EhoVDWKqV88
         V804qJWzjfG526ozZ8yYZnF02WTDuceJAc4RNV8jueBF5WzwBjnOMrWrWWp8UsL7hYs/
         /yiKspDv8YgGsyqAW92Jn25bhF0CYqyPWXUqkdFXBIYmV0mYWv1pFWGS+4PI3/TWLbHk
         NtBKCZ2xYnuLNeIMkkl9h7cjY9WqcXwULQp517cTgVjptmLdzb0tAgT0OF7hRzKJHPCX
         E6eOkCDhsgw5lGz1f3bgFMTlILWqd22GY75QYx5cLStKpbFXLufdBV8SuNiiNX2N1Go1
         rhuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u13si322462ybk.0.2020.12.04.08.57.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 08:57:47 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
From: Arnd Bergmann <arnd@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Barret Rhoden <brho@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 1/2] initramfs: fix clang build failure
Date: Fri,  4 Dec 2020 17:57:33 +0100
Message-Id: <20201204165742.3815221-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
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

There is only one function in init/initramfs.c that is in the .text
section, and it is marked __weak. When building with clang-12 and
the integrated assembler, this leads to a bug with recordmcount:

./scripts/recordmcount  "init/initramfs.o"
Cannot find symbol for section 2: .text.
init/initramfs.o: failed

I'm not quite sure what exactly goes wrong, but I notice that this
function is only ever called from an __init function, and normally
inlined. Marking it __init as well is clearly correct and it
leads to recordmcount no longer complaining.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 init/initramfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/init/initramfs.c b/init/initramfs.c
index 1f97c0328a7a..55b74d7e5260 100644
--- a/init/initramfs.c
+++ b/init/initramfs.c
@@ -535,7 +535,7 @@ extern unsigned long __initramfs_size;
 #include <linux/initrd.h>
 #include <linux/kexec.h>
 
-void __weak free_initrd_mem(unsigned long start, unsigned long end)
+void __weak __init free_initrd_mem(unsigned long start, unsigned long end)
 {
 #ifdef CONFIG_ARCH_KEEP_MEMBLOCK
 	unsigned long aligned_start = ALIGN_DOWN(start, PAGE_SIZE);
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201204165742.3815221-1-arnd%40kernel.org.
