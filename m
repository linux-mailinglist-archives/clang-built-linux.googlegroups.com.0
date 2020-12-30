Return-Path: <clang-built-linux+bncBAABBKWCWL7QKGQE7H7SA7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBCD2E7A9F
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 16:47:55 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id gj22sf3952477pjb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Dec 2020 07:47:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609343274; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fkz+QsZmkpYU7zFMPjk+RD+OqlnPV93UXrxSnOSDxL1ubT17qcmAZbDTCI1ocbQULo
         0k5Ta+1KqIfyVzwfF12zjSgRpsjgLEv+GhOo5z5rtcJ28F+1f7waI+BZQkTETgEKFz0h
         bOnaLKSyVnMEG9cnd+Er9nSTJYoLkpY//oGg+NR+vga03OqUDsqqeJidDTxJGBpUn+Yv
         /4LWzxd823iS3TxKbeC6bJDRCSKCVD8poBtIZ4JKQy42VEEf5muyllleO+MSlDFw8lf4
         NIzQr8iIDgWHG0tHg9NWnBlrkRCQLWlGcogaPvAALiOY4jMLEdc3/yomnovdtAQqXDf0
         NmXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=QGP/wW19/Dv3I9iVTEHF3g5grLR7NDhEVlBL4Xhiono=;
        b=s61POoHxMz7S+3JnPr3/IHS7S6nC1vilCFIoEbZpqQ9kluWXfXuuwAjQRjSGdBucXS
         rhOdKjyt83Jj4nzTf2An5rK/PPDpoDJty3+VWL0AytIDI1GDyaSeGOZTSO+fQBGuGDM7
         Kl60NYmSD015c63XR4yPW/nV+cCHggLHHdVgMeZTWzklaX6GrRe1GVGchcQdG4RaqWtn
         e0ibLyFfCGXMVmOEcfRrkVkxvWeuMqP1kHzIThKLEwcQjViFJ5FGwbOiLdaT5rsvP3Kn
         Gk+uo110hzcYPq/+ZMYa6EKkkpf2njTzkq/pCqVHRajbZlJf+8baNJ4GDW2SMYLP4jLF
         TENg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QXphXNuQ;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QGP/wW19/Dv3I9iVTEHF3g5grLR7NDhEVlBL4Xhiono=;
        b=S5ev6LT2SJUdnXtduLP4b4+3X1ReQCdO4Rj3qTz9HFuv4364fTWC07EoT7F5Py1aZ+
         d3LX/nwcN2MVtpTZZSp5plFlSH0x+gw1u0vONvHq3el8TKLojxsdXxC9yn68j4BoInmI
         734rn/HPU95+24AEAwuMME+08613rpHbc6L6VaHPU4VMZk3C2BgUTRWjeu+8HE8KUy+e
         FDtCVkoWS0NHU6W5L7A6nTDSEjdgNSZZzuCXXf1bDUd3zHwfXOhQgDyyURdy73hcVIcX
         OaJnhvSXa/ThD0snPxuaSG0tf2K4I4ywqaBzCSy66gE8Z16LeROTUlR30KdhWfp5BFin
         3Ntg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QGP/wW19/Dv3I9iVTEHF3g5grLR7NDhEVlBL4Xhiono=;
        b=hRyi90mWLLimbodmmR7y1ciZYoMOsQSzFLawfEqflHpw56Gjo7Lo6S/qTkId/ha/nE
         OzmKYK9Kta7QLbXxqpJeoctVL1dnpFMm4h/B7tAhLoCJUMofV8Y65/ClfSsKrkWiZpN1
         owOfAdCT5OsIStDkzwfImZS5n2XIlXIDVD1THa7e0YSJsSMLc2p+i9eKyhhgiqXK0e21
         GkSjy6Wf6T++IfO/ohle1u5YAnZWh1CN/qpI8ks9IRxBVnfrY4jIOD2bJ2HJtgdOL0cy
         ipOYARV9OnpqZkS2ys49SlQc2bO8dP4woWOWQJ2dMJTMM94hblegmqkc1XBQHTzaSsqQ
         9d+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hEWm5sebj1Xu6WJkQojQlsa0GyfKd2qUjy7yBNo7gRZI2dCGk
	QYX3+H9jGUyp5+yibYaN7M8=
X-Google-Smtp-Source: ABdhPJw9pNbO5BsmgwVC/rFDlutae8IdZ8xRXbp82Hk9jOV1hlP8UEOQrpJfCzyZOAWwng5il8NKPA==
X-Received: by 2002:a17:902:ee52:b029:da:4dee:1a54 with SMTP id 18-20020a170902ee52b02900da4dee1a54mr54056719plo.29.1609343274289;
        Wed, 30 Dec 2020 07:47:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7310:: with SMTP id o16ls2709189pgc.4.gmail; Wed, 30 Dec
 2020 07:47:53 -0800 (PST)
X-Received: by 2002:a63:db57:: with SMTP id x23mr52284638pgi.131.1609343273779;
        Wed, 30 Dec 2020 07:47:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609343273; cv=none;
        d=google.com; s=arc-20160816;
        b=JGkHE8FWb9o7lUlRpFQqEJBxGuc6NlCAgc08rrCxVR5n5oNonvuwzvdsKK2Hy9d/HM
         2g8ak020YRhlJoL7ofSKyFq/RxqGDWYhS7kj69onS8vYqNQ6MlJnGNDPBjKRX2FQy2E9
         tExuQrJ6UJGtz3iOaX3lz8IbivqHSE6CUerF4yqhSuXZyxznjc7RCKT3sPVsyg0QB8xW
         HmXQrIXrcrfaa9insuv/ZyWWSiZSi/kzI7bjZoaFgc68SQC2fzX9gZ0y3EU6aXL3KWxW
         bH7KaUj7OnV3O47HAKN5/+bbE/1+2FXkVYz1uFqSdN4Y9UYM+eAd5e25Mb+8M4nrpQJc
         biEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=y+yCv1woZ+5bYgVq/N1G5C6T3WyijeMfIHRB8GVDgd0=;
        b=zGt2WaCXYLL3eqj0zFk1ukBE9QfIaMxQg2tWboxYJH1TYhEnneutnrfzOUNIsNB8an
         ygLYm/gsWapZasyYLYupJ8pCRyVPerUkCHEl3cR6x3Lc2rZgjlVDkFGVJyEWgF3l2+5O
         IUGlIYezufy3U8y57d7unkY8Km4BbnYOuvAs2l44CAgaCifaT8HQXyeXAteO0qYJ5Xkr
         /Xj5FJEf11JMvn1cqBRThHxn/OiJDeIf65WLoy6V8KDg2ZSTAoeGCqtrLjFBwnqIxZAW
         x0J9DydzE4QMCfy/KWBu3BLVGENfaMD88kdxdWaKOm8twJlQs6k/wzSrQFbtVIBrJDD2
         MQGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QXphXNuQ;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h11si464058pjv.3.2020.12.30.07.47.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Dec 2020 07:47:53 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9B291221FA;
	Wed, 30 Dec 2020 15:47:51 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marco Elver <elver@google.com>,
	George Popescu <georgepope@android.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with clang
Date: Wed, 30 Dec 2020 16:47:35 +0100
Message-Id: <20201230154749.746641-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QXphXNuQ;       spf=pass
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
-fsanitize=unsigned-integer-overflow.

The one in blake2b immediately overflows the 8KB stack area on 32-bit
architectures, so better ensure this never happens by making this
option gcc-only.

Fixes: d0a3ac549f38 ("ubsan: enable for all*config builds")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 lib/Kconfig.ubsan | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 8b635fd75fe4..e23873282ba7 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
 
 config UBSAN_UNSIGNED_OVERFLOW
 	bool "Perform checking for unsigned arithmetic overflow"
+	# clang hugely expands stack usage with -fsanitize=object-size
+	depends on !CC_IS_CLANG
 	depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
 	help
 	  This option enables -fsanitize=unsigned-integer-overflow which checks
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201230154749.746641-1-arnd%40kernel.org.
