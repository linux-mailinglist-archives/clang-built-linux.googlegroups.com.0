Return-Path: <clang-built-linux+bncBCS7XUWOUULBB5OZ3H4AKGQERGSNUMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0903F22775E
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 06:20:07 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id ba2sf1222573plb.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 21:20:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595305205; cv=pass;
        d=google.com; s=arc-20160816;
        b=XshFzICtA73I2AspSGvjf1NRs2JJ0S3R2yeVSSKIWx2L+EoH9OeamxauVvyAa9PHtp
         UHTDhE55dHrURx13BJfyKCF1Ekos2nZC0ioV/ZZVgUZAuxts+zxpxc4fvmTOmeba6Hxw
         BT0Ogq0fP04a/rZ5EhRa72WsJ92u7Rb8HmGOtcg+DSgDPjTn0f2pbN//vqTLopiQAyYv
         80e/zNYJ6zr9d8wPzYH+sjdeczJTFZyzphMXi2+iS13JdWKHtxgFKTi7ym04cpQhi0LL
         6Zw10OOZkMoQmNOKqZDA3d/5V5n2lCD+YBOsFyyJjVvwbyvbhLjVmBtj3F5FB5749OZ3
         bvJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=ypzdNAQxM7FjRVsxu+MHf9t9qA9CMNNB57baLYDC7Pw=;
        b=Jr0Jj36SmYTmhqI9bWtHPwJWcMsP5/fpE4ewxl35jj0/0sgw23H53eU+ncTWlIkm16
         SAAoavV7mdQCEogTktRdSdNTzROMs6Mf6O+XFEGiUjnLxFExJTwXBqourGCdK9afGekt
         kyU+DuqXYohrFVCMSifMkXX1cGZ4qrkHVXLCXdy9OW1oiubkRDbn+D7qDL5npAIn/UW/
         Q/tiJFkViFvf0vQFreul8IqqYYlpdkfmlt5rPmk58Rx+62kf3U2O7IsZo8AzEmnc+v3T
         ug+Z+sdiyLJJZ/E1Kci4OcBn+9dgTDMxi4Fdm4MG3wJLO4GVAnWR1BKt133Shgq0XYKL
         XReQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Gkxs/4L9";
       spf=pass (google.com: domain of 39gwwxwckescpdvnudbjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=39GwWXwcKEScPDVNUDbJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ypzdNAQxM7FjRVsxu+MHf9t9qA9CMNNB57baLYDC7Pw=;
        b=fmO2Enqne+fVupQFythUSOxnU3H3Jf0VbEQ6olQ5J8t61gD9H2zLQzhH52qYLEA2fP
         O3Bs5Sz1iD7rabKwhx8FecSxQlZYZV4D+jeGfioSESqh4VcMfGfPqdRfB86QlLLAQT/1
         kRrlYi+F/QGUWeWDR4G2+Fq+0n1/u5/ctk4mBVXe7pV4ghyVkf6Vam/k7o3BNTJl2xQk
         RFNUJ2tcdicceGlVHiTKWour5OxoHfslJSQk89KohUgClDAx/lqDcSmG20T85LCtpN5d
         uJVsEJF2Mi75hJQON/qBWLzyTja/Z971/fOgMQN5vvjs1v0UBBc7vxGH/UgPgZz3hA6f
         /HQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ypzdNAQxM7FjRVsxu+MHf9t9qA9CMNNB57baLYDC7Pw=;
        b=HwHPsmsHPScmgSWlBBP5DI6G1dfyoBcgPu1QSTGHJkE0SdIpG4Bdzjx+B3JIJokZPI
         fmdTOmsqhl4ybPGXKLVUONzeb/kB9rsKaq6mcGdknAKP9+vc2GlZ412batNV0TU7pi4I
         d/j7EU04WXLK353QbD/n1iLrA73Pu3A2A+lBaviBWBrnPXmKi0EHfWSOSyfhNMn0eXAK
         VAcdU7FNi7MHQ+FnugiHW6w3+RgzQO6eiumkOG+pRSUifwN/F8lXLNfp7nukFVJv3IBQ
         1pu2s/9CMSvg81wj6BMuTEnyvEOWUV2cIkCGllvFuqm+q6zMh0qMk8yg+Sa2J5i/0AlZ
         lIhg==
X-Gm-Message-State: AOAM530GJUKhZkEMzS8RZTUGEfuZyF5amzDLvxVZ2E9euAiGlcAZvNtG
	pKOKpJ/NyvmuU2EGPJt3gWw=
X-Google-Smtp-Source: ABdhPJwASJ9vx0oxhaVFXCDA8k81k1xFmP56VItQ8Yq8gM5aAMGSUxBEXyZRtPKe3ekQyrMCwuaLjw==
X-Received: by 2002:a17:902:d352:: with SMTP id l18mr21192545plk.267.1595305205521;
        Mon, 20 Jul 2020 21:20:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ff08:: with SMTP id f8ls3539017plj.1.gmail; Mon, 20
 Jul 2020 21:20:05 -0700 (PDT)
X-Received: by 2002:a17:90a:21ef:: with SMTP id q102mr2814505pjc.101.1595305205144;
        Mon, 20 Jul 2020 21:20:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595305205; cv=none;
        d=google.com; s=arc-20160816;
        b=DtOCMHOFd2gd44CMnLCoyx8i1A63QqmymnLAFPDqEc5qlhtGXW2Hj9iz1rpxgO4Ca2
         wF4ctcERabWzbmBi2HiPQTSeD1LgjSAUdbh70cwyvvhN8IDqYX3LWtUwWDXSeNyHGuEI
         5PZXvyoxYX1XGRISYJYL82k2XV0bn7DodgZFZjCoPixegy8+NviRnkzgcVhLFhjegQbA
         po1XQ6W3mjQJS61XO1ygaEDllgk9y9VGAmxj509I3vEDIVLYJ85GhZHL1xbl0Qe69FnG
         j8tDE+VmVn+wKl9pYUA4XAXqoY9HyjWf+HFNTpfAk+Jc/yTQoApi127Q2bDR7sfrmaMj
         XDiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=BihrwH3YWr7bTCjry1NXThJajsBWv/A/wcqD0l396O4=;
        b=oA/XCTIK9HymDmFgD2/nGQtLhgOgvi6G8a3ZhuScHk+mpIVrzYd1quKa1UBCy6QgqA
         GANG0ftIJvoMk6ZaZgYsIxk1/WQScRy4hPRwbAe4qXO9zosIfAxze6ZIwYQZ9anSGz/p
         gO3VHpBwekNcUxLqucPB0wTeDXxvgKRg6QblKSsO4dXp0k9LvWBaq4LmDlsWWFlxERi8
         CvjH35Wbe/W3rDiiAJYRO59GLUvzSZUCmzx8dlj2qTpwj5QrfYyPBGTl0lBozEPV8UjO
         vhhiXrTrYtQXte86J+U4A0hGVeQkduttmI9XIoRQWv8ZmF0FsS4AQc3j+hFlILxptEHJ
         fzJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Gkxs/4L9";
       spf=pass (google.com: domain of 39gwwxwckescpdvnudbjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=39GwWXwcKEScPDVNUDbJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id d12si124452pgm.4.2020.07.20.21.20.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 21:20:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 39gwwxwckescpdvnudbjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id dl10so2574997qvb.20
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 21:20:05 -0700 (PDT)
X-Received: by 2002:a05:6214:927:: with SMTP id dk7mr24912062qvb.26.1595305204150;
 Mon, 20 Jul 2020 21:20:04 -0700 (PDT)
Date: Mon, 20 Jul 2020 21:19:38 -0700
Message-Id: <20200721041940.4029552-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.rc0.105.gf9edc3c819-goog
Subject: [PATCH v2] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Cc: stable@vger.kernel.org, Jian Cai <jiancai@google.com>, 
	Bill Wendling <morbo@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Fangrui Song <maskray@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Gkxs/4L9";       spf=pass
 (google.com: domain of 39gwwxwckescpdvnudbjrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=39GwWXwcKEScPDVNUDbJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
$(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
/usr/bin/ and Clang as of 11 will search for both
$(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.

GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
$(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
$(prefix)aarch64-linux-gnu/$needle rarely contains executables.

To better model how GCC's -B/--prefix takes in effect in practice, newer
Clang (since
https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90)
only searches for $(prefix)$needle. Currently it will find /usr/bin/as
instead of /usr/bin/aarch64-linux-gnu-as.

Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
(/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
appropriate cross compiling GNU as (when -no-integrated-as is in
effect).

Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1099
---
Changes in v2:
* Updated description to add tags and the llvm-project commit link.
* Fixed a typo.
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 0b5f8538bde5..3ac83e375b61 100644
--- a/Makefile
+++ b/Makefile
@@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
 ifneq ($(CROSS_COMPILE),)
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
-CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)
+CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
 GCC_TOOLCHAIN	:= $(realpath $(GCC_TOOLCHAIN_DIR)/..)
 endif
 ifneq ($(GCC_TOOLCHAIN),)
-- 
2.28.0.rc0.105.gf9edc3c819-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200721041940.4029552-1-maskray%40google.com.
