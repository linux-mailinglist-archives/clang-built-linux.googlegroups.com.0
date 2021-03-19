Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNOWZ6BAMGQEWXTZSNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F69341153
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 01:07:18 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id a63sf50523962yba.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Mar 2021 17:07:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616112437; cv=pass;
        d=google.com; s=arc-20160816;
        b=EPBkSI/5f210fuNXEh7uccxIqQZahIJCLImakoM+IkYB22jgdv3C6y3vQz5QYUl0KG
         VDMYBafyyOeq7hHirgNBMaFxBneOjopSbyJA7OcRrH19Ekd46lNz9OucgLL/xQ2xaj3H
         wTE7OrSCKgIuy19R8pAiv0qwOdG/fhccLZ1bl9S9j19s2pIeFxq9KSxLgJ4GvF7wFK4K
         UYHi34VNu8kE5V3CT73bGUHjRmGXyBrK3oPI5iCI5d20J3CtgFUKTyLJ+JJjitiVKLu8
         B90wum3myDqixed0LvWiptWF5pwIJ7DrpL5fJZPSYtgL1fxZYgCmCbgwcyMUSh3pNzZk
         ltsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=lepXJDTO1obJASjRCaYz3CJI8dHYPmmhKsZDOqCrJ9I=;
        b=H8u6HFBOFdCIkTd4HlFgbJzQ+DB16HuVbzmC99QKwGIzy3uuUWiVZTKd/R8OE4RyjQ
         d6us2QyXTAzRnC4d1wOeDQBBcixGjnvI0vAfa3GDJRicm5rHIDDd50UFHz8GHVFXnd1B
         vOevPYwltqq9eYGaTFMVHUIqA0lTZErZzn8zFycUTr+iayjWeuLDxtVOtYEfjmGbOT5b
         fX+BW8mNO1sCaYWnjzZ+lzSJIpV7D49rv+fZyPEZopudxu2ZOw/+ROvSYAqcSSV6Sp8g
         Y+YA+l16RyD9jJTMSx0OX5ewT8O5SR8I2LiTC7YEPP2Vsl46Rghvs2IFkGtLLmuAk8HQ
         wMHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UJBrhn9c;
       spf=pass (google.com: domain of 3nottyawkagmoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3NOtTYAwKAGMOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lepXJDTO1obJASjRCaYz3CJI8dHYPmmhKsZDOqCrJ9I=;
        b=lqIFSNnaZCnRiM0pRYGhnaogbKOggxQx84WHtJ+QqYYrpjCWlXAYnfvaMTh+AC3CT4
         yDmZp0nR/+Uh0psOZ8aQBIgBsUhkA9vk0FuLFPgHXvYSLK7J7mdItxxWRhoGSvaePXlp
         TKdDbjTM8Bc1DG32CatjYJRlq3PTeoEVfEFlYZogr4/tGo1GMYB3G5Y6mTDz6r8uqRVX
         XFtOPfgc3wlPapBO85+eJB83ji3kW1yqqUjP+k6my0ln8gKJ1SUlUGUMyo4uluenxBqJ
         8uxsaOPoFZa3RBVkG3R2ElZvV6N85+qkPOoMAZot6tI+iSvv/v+w/ZSO1Q1fXbZuHoRF
         Wn4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lepXJDTO1obJASjRCaYz3CJI8dHYPmmhKsZDOqCrJ9I=;
        b=I9DMR1HcLYdp34Ad4BQ0LqGdsbxq7b++6eerSL1bR41ogeSBQw8BtUrTkUcWwCpHI/
         W2Hx8k/KActmBWqIZdD57+UoMp/+UyYGcvpG4JOZ/+e6sKgtUTKQYzavV9GpI967eAVx
         QrldBMS2DBIQXFgreMfteklpowxMeUWtPAk8vnEmumHezzgZsXM4kc89RWFt8p6khNRE
         AvtcjYJtveHarRgfTWZjnkrHaVz9hoR+cCODDznUWU4vDQ6LbaTuxF8G8t/XabdY511f
         1T3F7/tbVKvalEb/wERBiB+UohTveoBub536crP+RTSUsulKpOyoB5fbE7f9aNQxbb9l
         fiuA==
X-Gm-Message-State: AOAM531nMGqv9J2w5U1GvH5VOubLfMIXp81kAyDrwiWhkOB5J4xatzfh
	dtJl1BYwn4KKjGBqi5/2md8=
X-Google-Smtp-Source: ABdhPJymTGezQEbbSKSUQ6zHmO3xivAQ/EknHz+6RRnUInrcfbjvHDKF5k1oQrIPMrjd7pN3IGm8Bw==
X-Received: by 2002:a25:f50b:: with SMTP id a11mr2869848ybe.181.1616112437536;
        Thu, 18 Mar 2021 17:07:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d8c7:: with SMTP id p190ls1545700ybg.6.gmail; Thu, 18
 Mar 2021 17:07:17 -0700 (PDT)
X-Received: by 2002:a25:3ac1:: with SMTP id h184mr2656517yba.503.1616112437055;
        Thu, 18 Mar 2021 17:07:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616112437; cv=none;
        d=google.com; s=arc-20160816;
        b=Du5p8ElobuIXBp+/3VC4Ju7R1kWG8O1FyD7jmsGx7YTLDexfoKVG7NRdV2woxIk4QY
         ZM8LnCevM2cSVMdKjqYSxmfEdH2g3YOLik791OicObbNM/QLoLzzsbR2l5x0zN2eDHpY
         NA9/AV3JfIFgGHy7bqw38TScq+PGYSkHy1+sjZXlpZnwl/y3QKgLyzzmL1qUp0zcCsNB
         Y4PTpYihCVCusJCM37610H0/D/yjJQxQsvYDq9XYe3Wm8EQMxySJoh6o9UnCN1/eJvG/
         o/Ns3HHTSunSFAA+iJiouLsaA1N7AIJypJmLyzmay26VjiuagRWodatVPrPHrsnyziUU
         gYIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=5Emq+iuVQGpmMwtcy6w0xRBsVleZrZvcnaaANEk1ZJs=;
        b=m9u38NJdE7wdkX/qNqcwoJ9/fDB3rTtqVEl0pEet5YwIDOqBgyaAQH/P5BfdrRN7d6
         U1lWNc9xUlJ6zS1xJIsURX/41ym6oNVEDfgEWXDJGiUC55ECjQ+j5qul9QSJi9eKCbQz
         wH4DE0yGQ9sGeLweBQ+LN7ilg7NBlPhdOMTaa2EmcSeoquwrzlrraqglnIhdcdmdErNP
         Iwi1VMeBUrR6hMnMo0aHj7nfrErc0pyP3DM0MjdIyBE79fd6/JKZsLCHfdUqrHFsc2g1
         tBdt2AN7IG/sXAoQvFY3aSrHaMiKElXPhMjlgudGhclawNE9DNzm0daK2XiBK7rtk5CB
         om5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UJBrhn9c;
       spf=pass (google.com: domain of 3nottyawkagmoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3NOtTYAwKAGMOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id l14si233215ybp.4.2021.03.18.17.07.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 17:07:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nottyawkagmoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id t1so3342670ybq.1
        for <clang-built-linux@googlegroups.com>; Thu, 18 Mar 2021 17:07:17 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:840a:6dbd:4c5:5c01])
 (user=ndesaulniers job=sendgmr) by 2002:a25:7645:: with SMTP id
 r66mr3073115ybc.36.1616112436728; Thu, 18 Mar 2021 17:07:16 -0700 (PDT)
Date: Thu, 18 Mar 2021 17:07:06 -0700
Message-Id: <20210319000708.1694662-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH] Makefile: fix GDB warning with CONFIG_RELR
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: clang-built-linux@googlegroups.com, Fangrui Song <maskray@google.com>, 
	Elliot Berman <eberman@quicinc.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Peter Collingbourne <pcc@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UJBrhn9c;       spf=pass
 (google.com: domain of 3nottyawkagmoeftbvmojfsthpphmf.dpn@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3NOtTYAwKAGMOEFTBVMOJFSTHPPHMF.DPN@flex--ndesaulniers.bounces.google.com;
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

GDB produces the following warning when debugging kernels built with
CONFIG_RELR:

BFD: /android0/linux-next/vmlinux: unknown type [0x13] section `.relr.dyn'

when loading a kernel built with CONFIG_RELR into GDB. It can also
prevent debugging symbols using such relocations.

Peter sugguests:
  [That flag] means that lld will use dynamic tags and section type
  numbers in the OS-specific range rather than the generic range. The
  kernel itself doesn't care about these numbers; it determines the
  location of the RELR section using symbols defined by a linker script.

Link: https://github.com/ClangBuiltLinux/linux/issues/1057
Suggested-by: Peter Collingbourne <pcc@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile                      | 2 +-
 scripts/tools-support-relr.sh | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 5160ff8903c1..47741cb60995 100644
--- a/Makefile
+++ b/Makefile
@@ -1088,7 +1088,7 @@ LDFLAGS_vmlinux	+= $(call ld-option, -X,)
 endif
 
 ifeq ($(CONFIG_RELR),y)
-LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr
+LDFLAGS_vmlinux	+= --pack-dyn-relocs=relr --use-android-relr-tags
 endif
 
 # We never want expected sections to be placed heuristically by the
diff --git a/scripts/tools-support-relr.sh b/scripts/tools-support-relr.sh
index 45e8aa360b45..cb55878bd5b8 100755
--- a/scripts/tools-support-relr.sh
+++ b/scripts/tools-support-relr.sh
@@ -7,7 +7,8 @@ trap "rm -f $tmp_file.o $tmp_file $tmp_file.bin" EXIT
 cat << "END" | $CC -c -x c - -o $tmp_file.o >/dev/null 2>&1
 void *p = &p;
 END
-$LD $tmp_file.o -shared -Bsymbolic --pack-dyn-relocs=relr -o $tmp_file
+$LD $tmp_file.o -shared -Bsymbolic --pack-dyn-relocs=relr \
+  --use-android-relr-tags -o $tmp_file
 
 # Despite printing an error message, GNU nm still exits with exit code 0 if it
 # sees a relr section. So we need to check that nothing is printed to stderr.
-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319000708.1694662-1-ndesaulniers%40google.com.
