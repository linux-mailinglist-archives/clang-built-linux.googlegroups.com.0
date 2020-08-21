Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHWIQD5AKGQEYLIKPYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A76724E0D7
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:31 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id l63sf1035656oib.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039070; cv=pass;
        d=google.com; s=arc-20160816;
        b=EexAcxen3z4mIx8blpgF564ANE3No4WXFGy1LZGPhhx6IcQhzGLhVMPOLoi7+3rcCS
         6SbkdSjzKfIRLYqxQR5hAqleQIrQJRZGZcREmjNZCxg1PDsfATpTGyY1o3whIxuE8c/F
         AetVtj9Nzg6nzbI8rY7lIE9pXnG9Z+2NnXDBr1vHCucGGgaXhpbVy44otGZPW8c1TXvg
         F91f4jkDlvFe4Kx3VGyneoJbXAtBTPZfhXCisMgGMwW9oigH5p2KL1we2H2BXSqIyrW0
         Mc7YipmoWzr1cj0orjFoqeKlcrAAYW/sMgAQno2ezfAvISrRI5ai2TGq1Vax0dEkkKLH
         eYUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=irGMQfR7jKim+mUSjMgTyWNU7na3mBnUzfII3n2STfw=;
        b=K0l/HOVwo2opC8pfN5f5xfVr3IGophItqMzqpTxL6fzasRa6gDoZ2Hhdvc1mwHnIji
         PkvFJx8uhliA4IEPYbzZRP5YgCLiV/nRcMdxCZ4cDDd4MWhefOxHA3euLY2iWP2alApd
         LhQr91infAF2b4h72hypaRXGKJ54huaLziz5tP1HuQMbag2cB8CwilAWMzb6nRd3lMf+
         wBFIhlF8MUAIfPWIv6TPv04wjZ2R7cG7lr3UtfPdjcl0ACfsukpg/x2327X8Z7gwkjAa
         OUlCoXujtBKhi7CRynXw1ui9i8YIkl8IVUYNWz4WPZ03ZRdMfjIQXZIboOdj3uk+VHo8
         9bzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GlR5zQFU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=irGMQfR7jKim+mUSjMgTyWNU7na3mBnUzfII3n2STfw=;
        b=EmupLqIFfAE2rpV56lyztCVbwdngTaEbbVgX7KbbIcuJVRl4uCABtepC1BiaiUhc29
         cfwvq6ajplonLaUH65BFrX1j7z2pMEbxrBF/yR7FnsssjdVxqK8wOxUrAGs24vyph6jb
         M98HDKJwJARugBy5ZcAlicSYRSZL8VlaiJbj75f7t7g9Ex/27SnuTrsq8iTBA30Chzb/
         EI7t7H3skUGMszwyur6ijHU7YmD+wo89Zn5xsCB/f8sTqEborvdDR2/vh/XKrXg9zUK8
         d6Y5FlysMbcI+1x3VGoscP10aqGPt8+x3GmqPZlKI0L4yyuxj9WNozHoRPyrE/15Qqmp
         ffoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=irGMQfR7jKim+mUSjMgTyWNU7na3mBnUzfII3n2STfw=;
        b=i1qLGVjSsT/omLLIChNSWdbrNjDvma+42IZnkGd6kqQD5bH3VHarfQKBtuiapojDF6
         YZCpiUqpQlCw08lfngVVOsk5qoPPvhw6D28wVtHdInatp8C9IdvQtmwjT7yeoLoLNPtD
         Okb8nHlXKJuR/38KV5vp7myoZ36VjrwLFeMAxKCqEw2SzlJXve+ibLIoZp5/d7cyLgt6
         VFkBXmwkUAzzowWRy0SlhicIuJbNLMbUCEMtHeeB033mTdf0uSDNnAfhtIUmtQhIkMjb
         qzRsoOMN28dwmcLZnQKShqqY2jXUA4D3vqiB06AU67pS7BSKVsnWjmTSwH8rq8ChqE+5
         Y3XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/Z1Ax8etZ6VPPRNH1ai1J8Ze3jMuKvvGMN8UHyi9RhLWx6cPi
	jF4Ha8OJ/4IdygIOMR63AD0=
X-Google-Smtp-Source: ABdhPJzaMaLhCElV7BnLprAnDgRjJ1M+3sW0oXG3k/3KzRDFHY50HQdz1SjK5X2RNwLo6J9LUieWXA==
X-Received: by 2002:a05:6830:1e15:: with SMTP id s21mr3145909otr.204.1598039070216;
        Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a13:: with SMTP id g19ls733707otn.6.gmail; Fri, 21 Aug
 2020 12:44:29 -0700 (PDT)
X-Received: by 2002:a9d:2968:: with SMTP id d95mr3097623otb.310.1598039069923;
        Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039069; cv=none;
        d=google.com; s=arc-20160816;
        b=BzY8FIYYrTZWQdwz0Bt7pwl3qux+ydmPAMdG3bICX93ytXkTQ8M0VZQGWka1zi2jrl
         tgLf1DzOtbpVp06yTt1TzezP3A54/pY3F2WwxPuDwrrrhv2/raiq5xoSsf0NHgmthoIE
         +sZrgWFUvNt8xqUi91Q8/+PWTRklaLULCxbjbnEyZ0XnyJaCHx9sXNAZ8LB98h217b4r
         7rDY5qCdQwQLUme223i/6JTVULvitEUhi09/1gYo3jlbx0njJVHf7vR+usMh9Lm/cSoi
         SlSwW3oD83J9kiFEL3/Tr5gpEdRsckWNVX/ptvY5Axs1TK2CwcwY3fj3kwchaoq3lMEf
         0Vaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DuU6+2YeRUFxWKjj7Z5/wAYkCT2n/Otc0iy3c5gDK6c=;
        b=kV6D5xGevv/D7HGVJFjpRqg7teQ6KuTEcIKXup0MTKJMZ13yO2IgefP3Gkt+OZLJ8H
         z347+nSnvcWYd2l7HZlZPOOGx24f1NL2hImoCvC5pRvbdgouPl6SOfuccoNJZY4BxlmJ
         Tg6ATtlWo/MvMBpFmdaAvqp5QPl5GY35sAP39jQgytlCfvC8nqmf/CeB3nzM5rAgfryZ
         x/QuPtmEOLNR+g4YCFaZAAO/9LhjXwFRwa0NnHZTyb0/UQzsosw3LeTs1vTLPWKtmCxp
         QhoBKumzyxJ8nWGhWU6XUxCJmjrRjEU4s2HD8YBwN96kkDKx4/gGFYoz8r2XbD3gR3fV
         BaTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GlR5zQFU;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id w1si168891otm.5.2020.08.21.12.44.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id mw10so1251267pjb.2
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
X-Received: by 2002:a17:902:b686:: with SMTP id c6mr3542403pls.133.1598039069315;
        Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h5sm3442830pfq.146.2020.08.21.12.44.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 11/29] arm64/build: Use common DISCARDS in linker script
Date: Fri, 21 Aug 2020 12:42:52 -0700
Message-Id: <20200821194310.3089815-12-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GlR5zQFU;       spf=pass
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

Use the common DISCARDS rule for the linker script in an effort to
regularize the linker script to prepare for warning on orphaned
sections. Additionally clean up left-over no-op macros.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vmlinux.lds.S | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index c2b8426bf4bd..082e9efa2b43 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -6,6 +6,7 @@
  */
 
 #define RO_EXCEPTION_TABLE_ALIGN	8
+#define RUNTIME_DISCARD_EXIT
 
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/cache.h>
@@ -88,10 +89,8 @@ SECTIONS
 	 * matching the same input section name.  There is no documented
 	 * order of matching.
 	 */
+	DISCARDS
 	/DISCARD/ : {
-		EXIT_CALL
-		*(.discard)
-		*(.discard.*)
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
 	}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-12-keescook%40chromium.org.
