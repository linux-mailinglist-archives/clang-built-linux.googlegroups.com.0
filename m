Return-Path: <clang-built-linux+bncBAABBO6LYSCAMGQEFMJUFHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id F05CE372928
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 12:45:16 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id o6-20020a0ccb060000b02901c0933b76e1sf7255918qvk.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 03:45:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620125115; cv=pass;
        d=google.com; s=arc-20160816;
        b=R+PTCl3N0WjpoijdsvJPPA3btiv96qhrGgBOsCsfw+IRvbE023ijbRfTjwvGMhvOoS
         Mtsl6Amc/ajKAEi9yX5JePys55C/g0oqzFtNriFigkhyJ6e+89lcpzj2qSh22u83BqoZ
         ItIjDdbxqtzl0qO5io/KaDrbijq3UBN2fd4uNh4FWMZuWRsp+EjMgFYaY6l7NLros6Fk
         VaNQ9vgODI5sXix7s67BFNLNlL1Z0w8ZpI37nlvQ7nPyN28bKTg2AkvFSVwIeTzX8mK/
         7KQo8JeSg84fR+Fyd160XErG41D5vh8fdDr9PvurHB16fj9WsXTW6nemNChuYgY/SJnI
         LO9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=smvxmIEU5VFyCywxpmZtDxsv4tWJW4vfCaUzR40OHGM=;
        b=kOarcvPn0nBCSlLoLsrmb+V19aspNEBaB1lP6LapWcBPaH666Yj5HtlqNfYTNE4ZvC
         TGTIkV4lqKkLBwSjB7141pNY3FKjIufQDqdd2PqudZgRB3BNLcgQr0LzgA/JBPTEhvJw
         k2RVMCaX55bsYdlrPcXbvDXEqMadmUBNTsbDLcz5Bh69Ulg4U2dLd/fLwB+f7rwcesU1
         Igj7YhN7KFjSfs6R317lZMmY66h3g9rRaBLi60bwgscwGciICjQg1bsjHycHVug55uv+
         aAVIFuLdiepLqnt/Ys8Zs3UcSUOTUtuDFb0Jd8vgMjlYM+6DrbOZ5J/LD3nBYJ77HcT5
         T6kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="OCUS/xwU";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=smvxmIEU5VFyCywxpmZtDxsv4tWJW4vfCaUzR40OHGM=;
        b=CS9K0JqLmYVCHTPwTprKeo9r7u4qJwI7OWnmERJM4WcZhP64zS+sctoY/cFXWQRXTc
         6HCyU8SLfwBYCravTxfGbIMx2zKgIcQt+is67F9ENUpdGGYNHN10/haJZLa0EDk+vhJQ
         YcTEnqwsv8GxDiKA+koKW/nkS84gcraMHRTZXVcApWUSpILVAHKuAvxPFIVkmkLe+GyN
         duh/rgc8GhddKw4XEqIuKRXgoqDlB+J44xeWletge29uW+ytk1gnyaLejA9IMGkblgB9
         tzUnnWWHVS58WcIXbXEF/PqKYyuziOvJkXNCqPJ0+gRg7hNmvm0zEZVEjmDighYPw1g3
         GfHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=smvxmIEU5VFyCywxpmZtDxsv4tWJW4vfCaUzR40OHGM=;
        b=aWIqNTKj+3HFi1GYLrVqp9FVJoD/3HldAt1DQQOm5TovmqwHJL41jKameqthDpCoN5
         XISwuuOrxxM1j7oXU4NZ+egUKABxCsHdiwMrZ7j0gmkW69/X7xiFifVkUGGr+S3FjuLK
         T3o9MUQTSgOF9Mzw1jO6GPctdut91EtZZFpY9cX9Qa9gKZ6xQPVWLY43Cb3R56Cj5qum
         hmsNieBgfBOVWtUbvXjn6GD4R9ryA5MxE7V5OwlTWzn7UjA/qr14VwAjkDpZpfx1RW+y
         3KFVovRjVL8x2H1kSDEaK0zd5JstrhmGA1UaCab5HwNJ4R/BYkdbZ+5EE0RI1049sl5N
         V2pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YOkLswlHfI/TWIF8nhHcFD7Nkqd1Z250hE0nBuTppq30CRJO0
	27tpS9+9JlFgeOLDMnVc5tg=
X-Google-Smtp-Source: ABdhPJxPc5L+9AL2UQeK2l9RZUZEzoA82ljYC8blqG9JER8VzTaHHqEeya6sq11WCA3627YvddixOw==
X-Received: by 2002:a05:622a:507:: with SMTP id l7mr22407622qtx.362.1620125115735;
        Tue, 04 May 2021 03:45:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ec17:: with SMTP id h23ls10085721qkg.2.gmail; Tue, 04
 May 2021 03:45:15 -0700 (PDT)
X-Received: by 2002:a37:65ca:: with SMTP id z193mr9081472qkb.409.1620125115367;
        Tue, 04 May 2021 03:45:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620125115; cv=none;
        d=google.com; s=arc-20160816;
        b=x0Vt7lzvNZ6MTiYiCpnZqFjiFkXdJxQkFAkgO5KRouvyRm1CR6eQm/E888F6mSi290
         xC0t4RbcUft/YRN39H2aGD0ibXFod4rTMVs7Qf0fBLkLb+IlEL52CjIDe0bjxc7quRzk
         ZksR1eInF0JRIMepYHVwIc4WdK2sIysIMohMbztwEI1sJARZTWct3d180snwUCiE6g7V
         2CmgerSOXCVL790YHkajNEfJBAv6/sVNsQMc881c7ib60UzHiPBb31s3WOqpl365hOgA
         RGw1cESwMNYBidQXwcE4VtPeVWtW6Vteni7dez+wReN4vhsQvTmfzCkQoyue19EtFFGL
         fuTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gQfLOvBSvMCEkLrVDOnkD6ER89C2WK3eKlGbJlDYAkg=;
        b=lqbLyI/s40n9qv+9Ni51JIPzgaGIAmy/TIN2kk/92Qk6XN/vrhcjues1BWMVc5SX/h
         wSztDdgs5hXbAMf2oL1mwiXoy2xgSSlwy/S+pRNa5PwJNBy0oepIIrgTlz1OvYNCYNwy
         ehMP80ylEeNaEwg5sxnKsyJc3mKjGKTgYsB0jO+xG0sAb++BeXg7wD8OaMWLoYU7rHg0
         Z6AJDainNCbDMrpCi9idIOn5AFTtAhI8N/ne/RBB39nsUFBbSEbGHM6HomTPiH6Mml7c
         YizCByRmG4SjyecmnmeQVRYOdtpqtXJHj9nWwGp36C0Zuhf9coX65nUdfiq4CQkW/M9K
         0dkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="OCUS/xwU";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t4si222284qkf.1.2021.05.04.03.45.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 03:45:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 198BC611AB;
	Tue,  4 May 2021 10:45:12 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	kernel test robot <lkp@intel.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [stable v5.4] avoid __memcat_p link failure
Date: Tue,  4 May 2021 12:44:33 +0200
Message-Id: <20210504104441.1317138-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="OCUS/xwU";       spf=pass
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

The kernel test robot reports a link error when the stm driver is a
loadable module on any v5.4 kernel:

> ERROR: "__memcat_p" [drivers/hwtracing/stm/stm_core.ko] undefined!

This was fixed in mainline with commit 7273ad2b08f8 ("kbuild: link
lib-y objects to vmlinux forcibly when CONFIG_MODULES=y"), which
is fairly intrusive.

Fix the v5.4 specific issue with a minimal subset of that patch,
linking only the failing object into the kernel. Kernels before v4.20
are not affected.

Reported-by: kernel test robot <lkp@intel.com>
Link: https://groups.google.com/g/clang-built-linux/c/H-PrABqYShg
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 lib/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/Makefile b/lib/Makefile
index c5892807e06f..3b8977aed1b4 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -31,7 +31,7 @@ lib-y := ctype.o string.o vsprintf.o cmdline.o \
 	 flex_proportions.o ratelimit.o show_mem.o \
 	 is_single_threaded.o plist.o decompress.o kobject_uevent.o \
 	 earlycpio.o seq_buf.o siphash.o dec_and_lock.o \
-	 nmi_backtrace.o nodemask.o win_minmax.o memcat_p.o
+	 nmi_backtrace.o nodemask.o win_minmax.o
 
 lib-$(CONFIG_PRINTK) += dump_stack.o
 lib-$(CONFIG_MMU) += ioremap.o
@@ -46,7 +46,7 @@ obj-y += bcd.o sort.o parser.o debug_locks.o random32.o \
 	 bsearch.o find_bit.o llist.o memweight.o kfifo.o \
 	 percpu-refcount.o rhashtable.o \
 	 once.o refcount.o usercopy.o errseq.o bucket_locks.o \
-	 generic-radix-tree.o
+	 generic-radix-tree.o memcat_p.o
 obj-$(CONFIG_STRING_SELFTEST) += test_string.o
 obj-y += string_helpers.o
 obj-$(CONFIG_TEST_STRING_HELPERS) += test-string_helpers.o
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210504104441.1317138-1-arnd%40kernel.org.
