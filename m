Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXNUYT3QKGQE3AEOZYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B096204233
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 22:53:50 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id s14sf5376241vkl.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 13:53:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592859229; cv=pass;
        d=google.com; s=arc-20160816;
        b=OL9m0mfFxvj54QC1rKCouQI2bV1iw3BV57wJ4gYBB6NeB1Olp7DW8Cvd7b6fGFbiOo
         nmNIOL0HKlGC2w06GmDXAlbGYO/KxjLJTC7dgPq12r6Hk4Y8CQZeLq3sU5yBoStk7y6A
         Pd8cQbBy69IGAs7Q2aGuYZJlg3W494ZGOAAkSPzUvrb4S3xBF44jM9y8S8tiFUK4jP6i
         JMZ+f0FFg8a+SvOxDsNFg/rkZpvQGRRvdNzqphDx9YtXVJN0feuB2fL9A/SNCZriHVW1
         RaMBYBUUjZTH2H9Xw1KHmQdaPnKiSmhgPwLgC0WM8leY5XUyy0+HL6FbCx4fsF/D/05g
         qYyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vDjzjsm1UwXwPY21Z7r6bY12uKBm5tFEl5k1O+pQfr8=;
        b=zaNGzjRJYEdiWNj/+XWyXJazSlrplK+Es8Um2YfJn2+yNRPKg/z3W5SqueaqNn3xyb
         Te/oqP9naDB8Tapsycs0QCM5vA+2s3WOlSNXKE2dxmGHZS5o83q6d9hU49Z9lRd8RJUk
         dBn8eldYe8APuhQLb47I/0xD8tmbY3fTVoBpDk6ybDSxoVM6yW8t3hUQB8cImcBpkM8y
         gN7re7eYLRQSENWgEmk8TqBdtj7tvxdaMtZmKMODfNhwNeXb2uku+nMEcbJTv5tYK77J
         ENHJA3r4qv2sUZmpX6Tre8hy7Rj8H4bjfWPvI3SPiEbTHpTAv5UfAdg6jfcMeYXCyDp+
         AF5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=esMzQ+n+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vDjzjsm1UwXwPY21Z7r6bY12uKBm5tFEl5k1O+pQfr8=;
        b=TqlDtSXxQdjy6Yk6DlqSOkppKh3Ynduh+G1vvQcnIpmq3wntHh3Z/IFn/9pBpSfdEe
         /ggHX3rg/kR5C+A0bwRn5BZjmQMNKvhXp21fI0PNWcNYOz/PeoSGl/qgbSxHROQYWidZ
         aWxCCPebHAPxbuFxJGfZFzgljG7sxmJkkbP+IGEFPsXHdU8qQvoPWA3My6UcX4Mk7mY/
         F4UKc/vB2Lttijcc+am05HU4LXi4vyWgDa7WpAxe1U2JjQET+HJaZDGuDw/SIfDT4X+r
         M1P/2XIJLquhSR3EJqQa4I8iw80Wlkno+BIs4bS0VmNSe2hSQa8vnCf/WWpmHF04bZLH
         4cAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vDjzjsm1UwXwPY21Z7r6bY12uKBm5tFEl5k1O+pQfr8=;
        b=UWZEQnjVrN9enOCj2Y9dt9C+6V+WWVXFe+WYMCp/QtCn4uTqugXH89orWnmkzeCpFY
         abqbWr4Etw1g92Q7ii9ZYhVxavqAH9RUJm9QTxsjVPKD9F89zZ2hziR7TWI6qA9dhHQN
         jdaI1rNEUPAjjwzrNgRCb9iF2n2T+fXrBg65ie732pGz1mDSUxewOQL0LcEEeBuYrwOH
         TYS9UhgnJm+OUp825DzpfIar/AwhVuEfVFNIj9ZC2PKd3AIcb4csBlwuR5K/wBDhFTMA
         pk32DABXxGJt/GhMJ1JOPLH6cp4zZR7Hldt84zIcJjcbqdmSBuRUGPrsCHgAHH42TBsh
         HFGQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AydEaf9mdW7WYNmoKUYC4gfl/qWCQDdQ7pl0QaYy4ey+KDdsT
	32Qg6BFXdx5rLy07ZkDvluM=
X-Google-Smtp-Source: ABdhPJzBndLGldH40zxGRvGPYHl5oB4a111peEw1VmHTDOyXYzMt62yrGl2hTM1UwQGH6oeUFCHcmw==
X-Received: by 2002:a67:e3a3:: with SMTP id j3mr17280378vsm.105.1592859229386;
        Mon, 22 Jun 2020 13:53:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3749:: with SMTP id a9ls1210892uae.11.gmail; Mon, 22 Jun
 2020 13:53:49 -0700 (PDT)
X-Received: by 2002:ab0:1eca:: with SMTP id p10mr11917226uak.94.1592859228984;
        Mon, 22 Jun 2020 13:53:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592859228; cv=none;
        d=google.com; s=arc-20160816;
        b=xIF7djmO3lO5zEdc8mU2uEQy+7QoLEFcxatJuLPwFB0RcLdIMkHCMO9sfTva3P0IEk
         AtQ8OA++hih6btJ8MkMchojM5lIqYWT2oG5reaz5xkPdM6zd3DX4Vjyxix7xRKjEZE5H
         iV+CZMSOUr8YD+mwj2uCJdGdwtkvoNVeZSKeGVq+D/s6siZoLgvTNfm+HwYPLcH/EIBY
         KwF+/zYmv++5g5r+U5ncVHNADvzcmtEbv0g1caYuCZR+5qspQALyO7UPbDIhEEQhHMup
         nhFi86FU+sqAWzZ1NLy/XV+AAg/WZjERUr44OTGPJE6l8nMyzbLew9x7OUp6JYcOCdt0
         LTKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=J12VhRTqgJpmi5aYvdeNr1OD+w8Og3rd0GL/+L6WxZo=;
        b=bq7uYvyxG/bo1GSnj3a2+lo6B/Q39ypbmtHMwv1v3vrKkBxQi7AFdNqyAFU9lwXtDK
         gEh9zcN4jxzwGnTjzc56/geYH686DLNENhN7xPoSuppjnUU/Dftn11VFPTEstC8NKJSm
         T/tVeVvINRn/9IwwL8flnxCu6XLNN3ghwcrYhihRwPJpldFlpt9b7blVHD20JCMbe1HM
         EBLucOXsczuKaMv0hA4nvSmiyCyVm5gXeklMfQ6iJaP/ZdITTnnAW2wXSjUniew602BV
         O8XUpE6supxOhYsHhZWZQt3QQfIH/8NPtzKyucJBEm7JWPBvEGa+FQXLpfD0eHwZHrnd
         qJew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=esMzQ+n+;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id t24si994910uaq.0.2020.06.22.13.53.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 13:53:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id i12so422151pju.3
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 13:53:48 -0700 (PDT)
X-Received: by 2002:a17:90a:2461:: with SMTP id h88mr20910740pje.180.1592859228184;
        Mon, 22 Jun 2020 13:53:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b1sm15052964pfr.89.2020.06.22.13.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 13:53:46 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	x86@kernel.org,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] x86/build: Warn on orphan section placement
Date: Mon, 22 Jun 2020 13:53:40 -0700
Message-Id: <20200622205341.2987797-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200622205341.2987797-1-keescook@chromium.org>
References: <20200622205341.2987797-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=esMzQ+n+;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly named in the linker
script.

Discards the unused rela, plt, and got sections that are not needed
in the final vmlinux, and enable orphan section warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Makefile             | 4 ++++
 arch/x86/kernel/vmlinux.lds.S | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 00e378de8bc0..f8a5b2333729 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -51,6 +51,10 @@ ifdef CONFIG_X86_NEED_RELOCS
         LDFLAGS_vmlinux := --emit-relocs --discard-none
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 #
 # Prevent GCC from generating any FP code by mistake.
 #
diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 3bfc8dd8a43d..bb085ceeaaad 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -412,6 +412,12 @@ SECTIONS
 	DWARF_DEBUG
 
 	DISCARDS
+	/DISCARD/ : {
+		*(.rela.*) *(.rela_*)
+		*(.rel.*) *(.rel_*)
+		*(.got) *(.got.*)
+		*(.igot.*) *(.iplt)
+	}
 }
 
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622205341.2987797-3-keescook%40chromium.org.
