Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHEL6TZQKGQE5FXZ3FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 862BC1947A3
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 20:42:22 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id w1sf6070671qte.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 12:42:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585251741; cv=pass;
        d=google.com; s=arc-20160816;
        b=HIWjvKcchHNVx3iMii0brikHma5Ni1bSybA7S22S/PRm/RRz7NbI54NKg5b2mRtupY
         hIX23N1p8s9G3dL5IKG/jrPgjSltcVO6YmlNGogS91/r8dYKoVGOpJRyZlfQBPzWi/Ub
         tlkP737w78eJT+HlLowl6o7ccHIQqgujTB/NyEvC9t4D3qkFCItJII1HEjn4XKl7n82f
         dtN3jaRCZz6ZodqH1SMNKWmmaqPskQ2L5N0v4ryCJ/xmjtO6E0Y0MsNjFgzV9TXwfYE4
         TQ6kCgxQlyx/6nP2/YAVlkzPLHb2U78TPMIwmgb/fnlNq5hqLUO+cakQQRG1y8D/S5pT
         Rrsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=sM5PZkkwzXNdhPFX2K4hPumEn9dIx7FeQNG3QjdAwLU=;
        b=i5bBNSMSwXRXrnPzP4WVmkbpPL/yQwuI9kuxvAPnDTBF5X0cinGFO9U01KqL5u2eBk
         ZxhxgMYluCs480b99u0D0158US8sYvrPNqDfidt29tzVpWo7gb1wOPg3PRegnwU+HaSO
         ziqcm32M+w6TGfRaWSCkAsXt765kzlulix/sir89H2mZS7M7xcpFD/CzBAduW5AzoRX1
         ROLLi7EHXuIzN4CMs9UfXFdII6/EpjkWXIXmZa87lPseKUzzp+nP+iboiGfvvNGmv3uz
         YJlxAcGIQ9pzk9tWBJ5CH8GQIOVFQIfYz64F0MxGXLvi/dN+0A20kVLeJJU99Bu2mW4p
         gGMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YJyeQZuE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sM5PZkkwzXNdhPFX2K4hPumEn9dIx7FeQNG3QjdAwLU=;
        b=H04aiNznvljNcpD7gkaax0TtqFzX8cP8jNXlwpZSCfaWobx2e8LKZ685aNM7936n3P
         OqvYauggffmu6QekllU2cb3U+PbpsSR+/FF+7m0dppd8wsf/VqPDUO+89aodx1a1FJmN
         siIE4RsA+1pXSTsU7pnyihU8eQiAktkwMZmFBkMRjyxdkUauE1QLkHOvFcWRHbXrxtlb
         CG/uE2OIUa/ycoUrkMXpKlyOHNmb5OrQGC/h0OTWmUDPv4UWGSH0DWxsLXR0u62Y+j2p
         n5lnAQwQ7LS1i+qtIE74xRonu9qdk8wMLvLQmaWc6loGRQi8pyAT5BvIUXMxq34GMpBk
         mfbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sM5PZkkwzXNdhPFX2K4hPumEn9dIx7FeQNG3QjdAwLU=;
        b=Vabq8Ecw+sIZSseR1jDnPXPeS8z4lbql+0Wfj4cxaYfp66Lj7CJ3FX2L7UGcPaCOYd
         7A0pRKmEYHM5qs6KkRz8IyxD8U9fZlS/SroLzvOLVm65D6sW6oRUOK3hLYJ5Fj6OOYxb
         5vSzwFYViFQmu6XBRFIReTkLgGhGcDtlqfhOP2zHHKO25J7D4YawDqqPAh6BH63Cy87X
         8NflpBhjNcRq4+n0HlDhfVZtD/rpgPBDCyV4Iza7cO3m1hdTCZv0dAmodHkIyaWqemWj
         ZFYmAEiTibfsDQKdkk0qaQMZS64vS7mo/S9+JoeBaPly2PnIdnt4FAc3NYqmMS6+ZLpy
         g84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sM5PZkkwzXNdhPFX2K4hPumEn9dIx7FeQNG3QjdAwLU=;
        b=Za4u/+PiWHatnfttzJWK51T9IpjAqa8BRjSNfcNRpudED4BcmT9IeXNNOvrVD2LUp4
         nnQGSxmsTROcrI5Q5AYl5RrpvdmslSURIEU+6ljPktQUb1uZke2K9Q/z0B+3KoYJ7lSv
         Dttr7zp/UQVkHxV4XUbaADy5FSHmlOit298KCVeaVbZq3OQYZPf2QclH2vLIHi8bqoZ9
         Kq3h+EV5+ynq3dOqBeSVY44fx1rEDyi+yrxSdFsZrdWCwGTfVksrNBVHP/c18f3m+YFa
         ZDjAV5d5sOtPq+bGbiAdPBWjW6JnYIeQDHERuSXT9Qofd4GM0MBUJdzBFIDxFa3wYSys
         G5Cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0jyBpkUlp7OE1yHalX+GcoKpnsCZgAnCZxCPKkC2VouwvSVsUr
	nntJ8ObqzpmeqctYQPgVo6A=
X-Google-Smtp-Source: ADFU+vsT4ikHSHhgEDc/tY8WApXA0yp+UkLBujX6xO5aga38X4yrgWwlbHmsLPfCELvFUqspVYiZ8Q==
X-Received: by 2002:ad4:47cd:: with SMTP id p13mr3819864qvw.123.1585251741162;
        Thu, 26 Mar 2020 12:42:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c542:: with SMTP id y2ls1641383qvi.1.gmail; Thu, 26 Mar
 2020 12:42:20 -0700 (PDT)
X-Received: by 2002:ad4:5349:: with SMTP id v9mr10294986qvs.177.1585251740571;
        Thu, 26 Mar 2020 12:42:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585251740; cv=none;
        d=google.com; s=arc-20160816;
        b=bbmNN0KmpCoU/dZCyKSg7BJYXQD0MamSe7BUJwKYjGSuvDVxUEhX9DQOzBHzoxxJOB
         ybf1fKEhr6uIujBnkECE834c9NpojI7sJ86J4IdyGth/Dt0pvtHR1N3cxD2LBVRk98Nu
         q8wej0pXFGea3gys1jIvAW0qopcltW+JgMMmjlHDyUp1R0IQSO/siEXF49iPXsapD5Ft
         7Qobkgih0C8/G179iSN4C/iNILiz2r+7AMyGj1+ZQlPTJRVI4shWD2MSyiXdG1rGTata
         sPnI6YAyaIBZXPtDlWOsJCEjvhinTrHZZ+KwYvtHxnh0XoIDxO7rYZMhrxlypwazUKFf
         SzZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=NAO+A7y/DjbsbhI8P0r25mk2n531NNa6uqK4EPh5TpQ=;
        b=g98GU1VsU5jmpdVf0vJjz6ij7yNPFhyY8CQg+9XLlupIqIu70q9GXq2cNW8TVJoFeH
         DHOe5ZX2+bjt5Vi68B30NSFNCzoPed6BS3rSfgiUC3vNazBRq8gXy7uVVwcvc60qZllX
         771aO0fOUeCx4A1wUibcd0OusLThfIZ3JiLh6RKws4Rhq+g2Dy+pz3UvKuZVpbYspzZq
         AaXUUbd7sjlYU9thXrl9I9q/jo6thf16Tf21ENz0W+DsxXm8cmIHJ3IXkoTuoqfWmpL4
         dzOcJY91M2TMsSCBN8YsxGMOIhU1LMZiwIlDwu1+bApVem8xwC6JKhtcC0vRhNF0fZtr
         1H8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YJyeQZuE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id z126si193091qkd.2.2020.03.26.12.42.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 12:42:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 22so7273295otf.0
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 12:42:20 -0700 (PDT)
X-Received: by 2002:a05:6830:91:: with SMTP id a17mr102414oto.240.1585251740119;
        Thu, 26 Mar 2020 12:42:20 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id l1sm851058otd.35.2020.03.26.12.42.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 12:42:19 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v2] kbuild: Enable -Wtautological-compare
Date: Thu, 26 Mar 2020 12:41:55 -0700
Message-Id: <20200326194155.29107-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YJyeQZuE;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Currently, we disable -Wtautological-compare, which in turn disables a
bunch of more specific tautological comparison warnings that are useful
for the kernel such as -Wtautological-bitwise-compare. See clang's
documentation below for the other warnings that are suppressed by
-Wtautological-compare. Now that all of the major/noisy warnings have
been fixed, enable -Wtautological-compare so that more issues can be
caught at build time by various continuous integration setups.

-Wtautological-constant-out-of-range-compare is kept disabled under a
normal build but visible at W=1 because there are places in the kernel
where a constant or variable size can change based on the kernel
configuration. These are not fixed in a clean/concise way and the ones
I have audited so far appear to be harmless. It is not a subgroup but
rather just one warning so we do not lose out on much coverage by
default.

Link: https://github.com/ClangBuiltLinux/linux/issues/488
Link: http://releases.llvm.org/10.0.0/tools/clang/docs/DiagnosticsReference.html#wtautological-compare
Link: https://bugs.llvm.org/show_bug.cgi?id=42666
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-7-natechancellor@gmail.com/

* Expand commit message a bit by adding more reasoning behind change.
* Disable -Wtautological-constant-out-of-range-compare under a normal
  build but allow it to show up at W=1 for easy auditing.

I hope this can be accepted for 5.7. There are two warnings that I see
still across a bunch of allyesconfig/allmodconfig builds that have
patches sent but not accepted. I will ping them today.

* https://lore.kernel.org/lkml/20191023002014.22571-1-natechancellor@gmail.com/
* https://lore.kernel.org/lkml/20200220051011.26113-1-natechancellor@gmail.com/

 Makefile                   | 2 --
 scripts/Makefile.extrawarn | 1 +
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index db442a9ee6b2..05f9f50dda3e 100644
--- a/Makefile
+++ b/Makefile
@@ -746,8 +746,6 @@ ifdef CONFIG_CC_IS_CLANG
 KBUILD_CPPFLAGS += -Qunused-arguments
 KBUILD_CFLAGS += -Wno-format-invalid-specifier
 KBUILD_CFLAGS += -Wno-gnu
-# Quiet clang warning: comparison of unsigned expression < 0 is always false
-KBUILD_CFLAGS += -Wno-tautological-compare
 # CLANG uses a _MergedGlobals as optimization, but this breaks modpost, as the
 # source of a reference will be _MergedGlobals and not on of the whitelisted names.
 # See modpost pattern 2
diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index ca08f2fe7c34..4aea7cf71d11 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -49,6 +49,7 @@ KBUILD_CFLAGS += -Wno-format
 KBUILD_CFLAGS += -Wno-sign-compare
 KBUILD_CFLAGS += -Wno-format-zero-length
 KBUILD_CFLAGS += $(call cc-disable-warning, pointer-to-enum-cast)
+KBUILD_CFLAGS += -Wno-tautological-constant-out-of-range-compare
 endif
 
 endif
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326194155.29107-1-natechancellor%40gmail.com.
