Return-Path: <clang-built-linux+bncBAABBKEN7D7QKGQE27C5UHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC9F2F3B7E
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 21:29:29 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id x17sf3620311ybs.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 12:29:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610483368; cv=pass;
        d=google.com; s=arc-20160816;
        b=MicdUOTU6nQimsfbHiVZ0fENLi06pmuj4SbDE47u/KhKOKnpO9pRPkcXU/l76cNsYo
         7B4Zj+aTeAEt9fn9VBlxWDENgi33aOhmyAjpLNa7OPr5w7XdPOvrWT9S6WS8ocDyyNev
         G+X8aQW4JFRguOQP6nGS20dw/e5agDEpw0bIVqGpeGBsBTZf+iOp7dBtCX0zweg3cITS
         keaJD2k4qIckRxSzghmNyCJNzV4xMSIAW67qHRC74v2NDkItTXoDXFuConKoyIvIlMax
         qR6MoL561wvsSJyVitbyiuFDXslUjpE9xVl0TPR5wRhrpX6T/XUZ1QzVTMRUCnnJBnpq
         LJfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=h0D8B+0f6fK8J+iRDAZBiGXWbujhhFSQncSNfQ3pt8c=;
        b=e2WEH6HCy2XP+StDxdRDx6X10yoSe1BICasg1xtab2N3qjBnJKjcOanO+7jYp1ptLG
         LBtqkmCsovlwJLcoTzKgjX2LPwPFr2kynmJvg+rRqkvML8YdOItbM35gYSPHOhURiceW
         qOBWiskLCvV4F0H46YS5HRRQjsD17422GoCeyfb8eLTE2hY7srwA9M1bxCA3DzpRdNnY
         DhT4N7s7GV0jdkbbL1fazuGF2HhfsfyrWEXnNo+vp6s84MlJcu0A9GUZ+LXs4MFJQcJB
         nQmdESGSqEtY7rIbmOK2vnzQlbpC+ONvJW1q/iC/slEYfm30YnlufdCeUS4dYXB2gdpI
         9rVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uuYnMGWD;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h0D8B+0f6fK8J+iRDAZBiGXWbujhhFSQncSNfQ3pt8c=;
        b=g4kT5zbVkizueL5MFvxYx8I+W12gPePYX1MjPOm4Gxkx6zujbj4/P0PGQk+U0UtK1z
         VlIlhMV2f3EkTQ/O+5r9OtXP5DPlq//zfzloGJZmme6nDKAxvvSF40Y9A/U0bjQdMDGF
         JB9vHGM+9Od2eyGH5GHl2esM9ZMRMYpOFw+qVL/vJC8ofFVTSvwLgSa5j+QiEp49AWIh
         jceWpAX/G1Di85h97j8EGYOXzSHsFNkQVxG8LikXbKyTbg5kSSJc4NQA5tESHpB7viFf
         eKgUtDv+cC3GsOuPFCwOslO8qGZnU87yXxLkBAdYPc76mJCc8i1d/FbE4s13FPtWeOHM
         nUHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h0D8B+0f6fK8J+iRDAZBiGXWbujhhFSQncSNfQ3pt8c=;
        b=p6CQSeCURlAhbiQIzzuiAsHd3zhm0bFNACNN2SkyjasFmD//yCU+YdLra4N+GtxYDj
         zLvenH2z8k/sBTnyxsU7smbecjtQDNThkSCktsTKOsmRKQwYXjoRxr9Qz8yQlWZNVg3D
         3ibzX8PT/S+l990l0xTAyeN+OClqYyvldkHplyhsffActKPdKhT6GZU0DJ2GQPAc7N65
         D5QBkNOxvMjwhBKej2FBMaJNNpO3vMCje9OTXT/DDyR0tEH8PdaAB+fRqcvB0L1z6bD1
         ZThVxYe5zfNyneMUZLyB8Kg3jP6LtFm+iTDE2JlOcbY5Pq9J+vR7Da4VTYIQtId4k6bm
         0Png==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oFqiJlIvLjVO3sgH8/NuQ4AHSvyQQq89ClLivUEytIaPZ1Fgl
	HHgKkbx16MsXvHXx+QWAqIk=
X-Google-Smtp-Source: ABdhPJzuP7Qe6ece1TSbnpOosiInX6KAz2FgoUrJoGstE3k5XHVBZ1s+wzE7oVHc2T2of0N32UWczg==
X-Received: by 2002:a25:ad93:: with SMTP id z19mr1733270ybi.486.1610483368214;
        Tue, 12 Jan 2021 12:29:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:6af:: with SMTP id j15ls2113577ybt.3.gmail; Tue, 12
 Jan 2021 12:29:27 -0800 (PST)
X-Received: by 2002:a25:4207:: with SMTP id p7mr1729072yba.367.1610483367860;
        Tue, 12 Jan 2021 12:29:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610483367; cv=none;
        d=google.com; s=arc-20160816;
        b=KsS1AVAaMqBEMYAdKdpKerC1O9HDwJN9ERDp20SnK20b8ZBLHPCDnWbVLwMKtLrV62
         Rt3EkXQzcCXD1mAv1kB3Vk/oQVwfPLNqOuf6hjr3zirrIGM5K9G7kFhvqm3AgQFQZAwW
         EFdMCWOE6tILu66FByRhtA36wlAPJzLuq3KnBe98TAnP/ae9F2xZ/tJ3UQnVGBwn/CnS
         hVE+rnUdDQW3yYHhpE087weSEs+wmjEuRpS62PsxZd2S6eSqgWi0NjrF1/o8ArimTuFj
         S1odhTdGsj41WdTLYN6uAk/KJqob/h9n505pMAa2mfoCcFE43ImFTreBA1fk9+L00eud
         VHoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=nJHVxh98z/61u+uZajNLAsyeT5oeYFoC6irn1KOB2DI=;
        b=lbY5lg2MqMPfzl8CfxasC3uBmikVAaUFt68OgtOkj6Ph8ntfBOO33pTZ/kXnRhZEog
         6H79x+mbpG5N8nNnUM0jXZ0it3L59VIORs2jtHW1ijM6sAv7drQv15d/6BQT38mr75P0
         e7XW9YAhlzz3biVxiFrBHUcbmhJqc/3wDk1msvqCXgP4EXoa68obBd3neLui16AYPIjs
         gwvXsUyP9s0sGXz5WNWitCiwVevqDLboEkoLP7HOroxOPOOjKOeXIL9dya9zKgmS/uou
         a+yzWAhUrgWAyXsYnAaWb7uqE/e19ZJjG4cYpFAMqRZ92BZqJrEDvGnaT49yDIV4xrFi
         21Jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uuYnMGWD;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s187si439190ybc.2.2021.01.12.12.29.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Jan 2021 12:29:27 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BEF462311F;
	Tue, 12 Jan 2021 20:29:24 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Marco Elver <elver@google.com>,
	George Popescu <georgepope@android.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] [v2] ubsan: disable unsigned-overflow check for i386
Date: Tue, 12 Jan 2021 21:29:15 +0100
Message-Id: <20210112202922.2454435-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uuYnMGWD;       spf=pass
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

Building ubsan kernels even for compile-testing introduced these
warnings in my randconfig environment:

crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
static void blake2b_compress(struct blake2b_state *S,
crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180 bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
static noinline void fe_mul_impl(u32 out[10], const u32 in1[10], const u32 in2[10])
lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588 bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
static noinline void fe_sqr_impl(u32 out[10], const u32 in1[10])

Further testing showed that this is caused by
-fsanitize=unsigned-integer-overflow, but is isolated to the 32-bit
x86 architecture.

The one in blake2b immediately overflows the 8KB stack area architectures,
so better ensure this never happens by disabling the option for 32-bit
x86.

Fixes: d0a3ac549f38 ("ubsan: enable for all*config builds")
Link: https://lore.kernel.org/lkml/20201230154749.746641-1-arnd@kernel.org/
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: only turn it off for i386 as discussed
---
 lib/Kconfig.ubsan | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 8b635fd75fe4..3a0b1c930733 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -123,6 +123,7 @@ config UBSAN_SIGNED_OVERFLOW
 config UBSAN_UNSIGNED_OVERFLOW
 	bool "Perform checking for unsigned arithmetic overflow"
 	depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
+	depends on !X86_32 # avoid excessive stack usage on x86-32/clang
 	help
 	  This option enables -fsanitize=unsigned-integer-overflow which checks
 	  for overflow of any arithmetic operations with unsigned integers. This
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112202922.2454435-1-arnd%40kernel.org.
