Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLN5TH6QKGQEPUW5FKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A782AA3EE
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 09:45:34 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id g8sf1122205otg.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 00:45:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604738733; cv=pass;
        d=google.com; s=arc-20160816;
        b=XtADZCrNm2iTSiMRbIfZAsDj0hf/PCDM7tg0+b4FW1EhW/tO9RgYMinoJuZnwL6dCB
         9MykLwMY0WHwkev36P84nrWaXYl6pT1S/y1H0tyzM8FaP9dPw5Lu0xlJ3pRGC4TwCV7/
         SRXW4o+a6NR/FG8dR5loQzMA7BmeaJ4jiakSGEdLaYGaZ/uYs1oIN7lb3Q89RpxYnwwE
         Zn8xJSl6n72gVvvIDTPTPPdMEbg+zFxVSmvJp229APiT5PwePJm0Dkuyl1h7pH4ALYrV
         txFeXrR5URcpPskuw82bkNP1RQebcfhmJy0cGS3WeYSorYW/ePg+p78T4bkUNrdZyD37
         UvIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=Cxrt1NOt99A3FJwgJBqZvlcxyMDt3LbaI1Cq4RxdXMA=;
        b=kpoMyoi5haUbOhVD3FmvvIbep6LcR8LXy8El5QujjQADDSSgjv9DYDSlL1VoIyHYZe
         JoGPzdJrszCxEvLMIqi84+HueP7nSfr/ERUbKyBJpG7hA1fqk3otTQskNlkT6TOTC2fW
         XvmIm3UZC7vq+fx54ISGQTxGQTrQXwCJ/9e+CSgsyA+sr+PEMHrviTxEBRFaD+RXDcPu
         SUylc1QiNbEUoRynFf45faB1ozs9jevOhwF1HcL/tLSNmIkTWvYLH+41GooxPHBsEwUs
         wGEnStOsQ2HoEgvVsz+ULYB0AQ+ZDj0Z6NstU00Xb1vph29moX8Eex/IxaZuneC9RZpf
         UWhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LVnfVfNr;
       spf=pass (google.com: domain of 3rv6mxwwkaagvlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rV6mXwwKAAgvlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Cxrt1NOt99A3FJwgJBqZvlcxyMDt3LbaI1Cq4RxdXMA=;
        b=FsxcEkKZwljExOodI+MlRlhNI+rwDZHmPm3vAMe6rZi8TTHvqyinb8URU8Dwnm1JOT
         83jOQuLdYhmYmNaXLt22QCf4PO+Y1kk5YhkwpyePMv1mpXW92y6818iU2lp9QI1GvPqd
         HkE5auQHkS3RA+yKIsDEWlx3lG6tYHZhgKpYe+OGoEV887Cg5V0HeR++eJm4XbK4djg/
         Fzl5155Q0Oi9qY2Z0m7ezJ3HgeFfXdOnl3OM/JYfQHfpZ85JeQ+34V3i/jyzOl5jCwpt
         nRNMPpNma8KMEBNAkokNKekW3CnRf4+HxUmnrxyOcxHMzwJ16h9VtKhvSEbt9QVZcfwD
         rzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cxrt1NOt99A3FJwgJBqZvlcxyMDt3LbaI1Cq4RxdXMA=;
        b=D1y2xs5egeQEDLJlYXICuWyW6EYEC3MevxYKy69l98A06KmbLRjNhdbIpIWqp+DZFL
         FhwluYjRfWkn05ZsoJ298OuA3Kgk2UQrAa1utBuZ7TZ7SE8kvdLD4oF8txEbI7wvuBl9
         C5W/i/W+hRQWqRnUttq+lIHcl5zFFbPSfB059z5/T0V1ZJdWf8AN4MsT0U1FQc57+Rh/
         VvAJtRHbw1v8vEfAD53UhDoKz1mjWnygb7smyQAEyztCy1ve10GAGx9pGkyXds4HMEIq
         2+eFdxio+2rRCpqhO5uGR9xwtmy60LZ0CuVbsefJF+9DLL9xcH5Hx1YeCCMbjQ95Zzjs
         J+BQ==
X-Gm-Message-State: AOAM533qic67jzP+4K98kz5qBS8HdQIWXS57uXIpbD5Yjn3yaNwAruOy
	CMpbbpuSzmJ7VaYNMePCZS8=
X-Google-Smtp-Source: ABdhPJxwMpDdnQu+/GVRwAw2vVZ/04E7SubEC9H/6Ea9UkEfeAWw61Ff8HbRlOAa/JFwjzpTs5dO0w==
X-Received: by 2002:aca:b744:: with SMTP id h65mr3673292oif.149.1604738733772;
        Sat, 07 Nov 2020 00:45:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e856:: with SMTP id j22ls44007ooj.0.gmail; Sat, 07 Nov
 2020 00:45:33 -0800 (PST)
X-Received: by 2002:a4a:821a:: with SMTP id d26mr3790301oog.90.1604738733472;
        Sat, 07 Nov 2020 00:45:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604738733; cv=none;
        d=google.com; s=arc-20160816;
        b=Jr0UGWmCdSMVXdh5I7Rm/2B3/oTvt4M1CLKzHsLOSKTbo30BNnmfqUKOeUXyq0YNHu
         YSpcYxADS9Q4d28JefouxCGZpqfV/oimSmFfo2jTIKUY+HLPiYmHPvQwqpE3TgjxZdmk
         3L2Nu16xDIOz1k1yPBczjY5odNwRXawH767WbTKe/nvomShbTZXTMMQCrQ3U6MK3ptT6
         oiJSyjj4KUBbqP+Q4Qik03GcuwFBQij6v82GKhXKCzhYTc/fjv+AgVB60PH4ue6oRC6/
         15nTzGm+TNAnPmNu5ORRuybl5miGgwJRGOMJeGLXMXP6zHvAvwdbWexVsD/UO0hw78fN
         RRuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=fzwLmUg9BrArXqj3uzgLmgiDgNrjU7jE+CGMP35Ad9Y=;
        b=X7VIv5zftxt3Ux33p85aWNpQuz9qQT1tVPMMm4egc0czOUbLp1UhFAey5MpQVfZsMv
         vGSBpKc7la/PYTVrcxkZ+EiudVauDRV0qAH7bq1bCw4xakyWlRksQhqFAzozgpLxXaiV
         g73BiYBqBKm0XdncxLdpMY7NFaGWnh5EbtK9gnCLZ8FnRp6+3YLeDUKtFC8hhy4weAnP
         0Ecu6T+OVCYGtGzrkins4RBxubSDyysj9p2VMU/M5wQbx7XoOPxsKtrT9GIHACqaWOfT
         Ll3BgIYKZWeXMu4rDXNxR1IWxAqiHXmvvDX4MmOirS6iE0MphF8Q8nliPOGz175/F77V
         VTDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LVnfVfNr;
       spf=pass (google.com: domain of 3rv6mxwwkaagvlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rV6mXwwKAAgvlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id e22si351298oti.2.2020.11.07.00.45.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Nov 2020 00:45:33 -0800 (PST)
Received-SPF: pass (google.com: domain of 3rv6mxwwkaagvlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id h64so4594575ybc.1
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 00:45:33 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:420b:: with SMTP id
 p11mr8784954yba.100.1604738733025; Sat, 07 Nov 2020 00:45:33 -0800 (PST)
Date: Sat,  7 Nov 2020 00:45:24 -0800
In-Reply-To: <20201107070744.1133811-1-ndesaulniers@google.com>
Message-Id: <20201107084525.3417278-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20201107070744.1133811-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH v2] Revert "kbuild: Do not enable -Wimplicit-fallthrough for
 clang for now"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: "Gustavo A . R . Silva" <gustavoars@kernel.org>, Joe Perches <joe@perches.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LVnfVfNr;       spf=pass
 (google.com: domain of 3rv6mxwwkaagvlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3rV6mXwwKAAgvlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com;
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

This reverts commit e2079e93f562c7f7a030eb7642017ee5eabaaa10.

This has been fixed up over time thanks to the addition of "fallthrough"
pseudo-keyword in
commit 294f69e662d1 ("compiler_attributes.h: Add 'fallthrough' pseudo
keyword for switch/case use")

Link: https://github.com/ClangBuiltLinux/linux/issues/236
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* We actually want a revert, not a partial revert. v1 removed
  -Wimplicit-fallthrough outright, which we don't want. We still need
  cc-option for GCC < 7.

 Makefile | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index f353886dbf44..3edce16daede 100644
--- a/Makefile
+++ b/Makefile
@@ -777,11 +777,6 @@ else
 # These warnings generated too much noise in a regular build.
 # Use make W=1 to enable them (see scripts/Makefile.extrawarn)
 KBUILD_CFLAGS += -Wno-unused-but-set-variable
-
-# Warn about unmarked fall-throughs in switch statement.
-# Disabled for clang while comment to attribute conversion happens and
-# https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
-KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
 endif
 
 KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
@@ -905,6 +900,9 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 # warn about C99 declaration after statement
 KBUILD_CFLAGS += -Wdeclaration-after-statement
 
+# Warn about unmarked fall-throughs in switch statement.
+KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
+
 # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
 KBUILD_CFLAGS += -Wvla
 
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201107084525.3417278-1-ndesaulniers%40google.com.
