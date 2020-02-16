Return-Path: <clang-built-linux+bncBAABBK53UXZAKGQEOTURL6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 20987160476
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 16:20:13 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id a31sf9318661pje.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Feb 2020 07:20:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581866411; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nc9jSsk8zHe01EV9oeoUudPt4HWFMrFS8Ox+DzNRfVEAcn0hCZUfT5+aQTP90thjd3
         YbQZNrqWSVHT2tOPfyJRzFtOTdoyA3kqiPyUCslPJWpELLMCQ2jORDtXa0y3UQ/9bhXc
         q8F7tayg//J9OSZQ2oRlSkAYMZK9wmnISX+hGWmP9roz0NRSPT+aAPz1iZ/pcJz0LEsR
         lqohj+sMimqwg05UzpJc4T8775n/V9jL7VldaB93ceaOfXl0+AAQxKKAsDPFq5GMJE9G
         qhjlzRZeMk/WF7wtyiSA6Vprxa72MFQgs+faQfj3HVbexZ11boNOj5VqvdWfYVhxI/5A
         BMSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=F6IMN6lQVYt/JuRuojswhQqOYp6oQZcSqIATjyctP3Q=;
        b=bEdy+KJQWEUQFxUmn4Yd2Lrm8rLwMS6v7dPj7kHJvj1oHhKqB+Evve92oEVDixYCOo
         R11RPpiuDVel5cMGekID+avbUgi6ido07IEMMvl3eUIoY12PMHM3SgjB45DGZqNUyRN1
         HLR+zsXNVemjbqXMX4cBbpS8A6xmZQfHCZVb4TS2RsNqJJFjSVy0LHpE2F/0vxPY3reD
         SDtKzW5/o/w6oF9wQEi5xaeQoVzv1XTzF34/g9GdV98iVqPFVZI07A/DPmRPklYg9h5s
         TRpMTh0c4ifLLSOlBkyLJv8GOQ6qOJLypjZ1s1nbFhwzUOlHbS2Fse63wfTrIhVcVLc4
         kKAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=VSSaRQQn;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F6IMN6lQVYt/JuRuojswhQqOYp6oQZcSqIATjyctP3Q=;
        b=oheQpKLbBWcaurO9xuypngESuy/OWIEzsGpDK1Dyt9OUlluFRXv7bHopSB9lOHT2Nx
         gzumR0clW7h6d5jZBpFKGYDeBC4ocJ/fOJALE3wsxPXLnuW1a/kJX7aatqnKkokPX5zt
         onluTG2UXda5Exy6V1c07l3NeFIBOKj94/X0vQEzRA5h0qWHitUNaYwvNTsfUmkv7AqO
         POMfD6a2th0nzCNV2Sz0LGOLlx66nbDxKz+FMyOmwpNmYyWKi+SpHtGC2LuoVAZYTR5k
         ZPKRgn5UZz/2OQQMJsYwV4yygiU7/ibzdcc2+I4FpLanDz9AYwhKw2XW2g4s2S5k/ZQC
         GeGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F6IMN6lQVYt/JuRuojswhQqOYp6oQZcSqIATjyctP3Q=;
        b=a3dTB1oCCGLc0Pt94BlVK/5xRcA6fwMemWe4ck1x+99+fXAXb18satjdUARfgWpghR
         ig9OXLRQqKQT9VupyCbEZnOp8JPRh1OD9m5e54udhPHMNnPhRdim5lID0qy7v0YSxsO/
         IsnmjFN/30qBvo0xlJD9mgUV585PZkCjhKJg8cP00eeHKHlMRz9IDlBqs6wgW/vDIvP6
         5okwZBtQJXw8OkF8BqbsspGoOmL27s8KcrQh/9iJoyQKQ8XHGFDr6Xh2OJODT50+A2S+
         WLQITRRxZNPJIfLlA3cLXj0AIhCnXEB5bN/licBrBtnk6FNbNnfHn4RR1kWQrkeQgzvx
         lXPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXyTDJIDbG86Aa4cWlbczaPBSN3jnp2RUDKDOPEK3T0jwdw4/aZ
	F5Nd8a138lnNDNx/3k5O52w=
X-Google-Smtp-Source: APXvYqw57lh4dohcl3kYfpD9Rna5w0E1ZncZBlNAOWvD1POk60qo09jfWniPbNpCCGZLlKRJYMKwVg==
X-Received: by 2002:a17:90a:2486:: with SMTP id i6mr15628596pje.9.1581866411217;
        Sun, 16 Feb 2020 07:20:11 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b789:: with SMTP id e9ls3892650pls.4.gmail; Sun, 16
 Feb 2020 07:20:10 -0800 (PST)
X-Received: by 2002:a17:90a:b10a:: with SMTP id z10mr15443161pjq.115.1581866410765;
        Sun, 16 Feb 2020 07:20:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581866410; cv=none;
        d=google.com; s=arc-20160816;
        b=exdShQUOtlp2FhSMKPYBIz/Nz/IBGv3+9eW+56lUkKIdyUJtiivLSnfKeustKkMtmf
         TgwX/AG4vS9bAQyzowu/Pfqc6+0RRKx+XitstgIwJYqq2yZNwIE6gnu/8WmFQWzPC3aT
         dViHqjjryJouLI9SMULwpsROWmbJZitlDq4dN7azMfagim1XQnfAJoPR7ORiHQLciEu5
         mWGmHMeiNDFL2pVymecQKgtSV9B/wTXaS89PRrstYlMehgVRmwcGi9X/OKMyxUwFR2de
         kiSY8lyTMLlZ08qLCp1PuLDHASZRvmBuP2VtQlAWgeGK3Ti6lDNeIRGQbvOjSGNqbR3y
         Zdlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=KnP9tgxSHUQAMQklRwAiuVTY8xsRWN3iDCIditBPlOM=;
        b=FaD2j2lUerwUzMDOFaDZkeBxhEBm1MxwRwXUWdQNZ9gAHVYtRCTf7HZm7RQ3dXVvsH
         IOP6pB5vbRQONihSiVP5FSKlA2q2j4OHi3hiWpEaLIvb/M+dKkNe+Il3WIfHkw/zTFPB
         gXrazoF+bETnxbJnQC6UTKf6J+SrTAWt0sPRB111B4YTp1upvp+bx/vNVeKEeRJkZPU9
         /xv2PrVzGzJaY+8f7H/YsVcvJB+54AA2/LXS7DdP3F4U432NYJB1KiVpFzhCT53We1QB
         P7rsS6x23mWR+uPdbUZlCb+VP5M8XWZGxwdtzHGkivgDq9oYnfpXKkjvDAGRl2aGP2z6
         G0eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=VSSaRQQn;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id x12si540046plv.3.2020.02.16.07.20.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Feb 2020 07:20:10 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 01GFJfJi012792;
	Mon, 17 Feb 2020 00:19:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 01GFJfJi012792
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        clang-built-linux@googlegroups.com
Subject: [PATCH] kbuild: remove cc-option switch from -Wframe-larger-than=
Date: Mon, 17 Feb 2020 00:19:36 +0900
Message-Id: <20200216151936.23778-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=VSSaRQQn;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

This CONFIG option was added by commit 35bb5b1e0e84 ("Add option to
enable -Wframe-larger-than= on gcc 4.4"). At that time, the cc-option
check was needed.

According to Documentation/process/changes.rst, the current minimal
supported version of GCC is 4.6, so you can assume GCC supports it.
Clang supports it as well.

Remove the cc-option switch and redundant comments.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile          | 2 +-
 lib/Kconfig.debug | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 84b71845c43f..8f15926b83bb 100644
--- a/Makefile
+++ b/Makefile
@@ -728,7 +728,7 @@ KBUILD_CFLAGS += $(call cc-option,-fno-reorder-blocks,) \
 endif
 
 ifneq ($(CONFIG_FRAME_WARN),0)
-KBUILD_CFLAGS += $(call cc-option,-Wframe-larger-than=${CONFIG_FRAME_WARN})
+KBUILD_CFLAGS += -Wframe-larger-than=$(CONFIG_FRAME_WARN)
 endif
 
 stackp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 69def4a9df00..fb6b93ffdf77 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -266,7 +266,7 @@ config ENABLE_MUST_CHECK
 	  attribute warn_unused_result" messages.
 
 config FRAME_WARN
-	int "Warn for stack frames larger than (needs gcc 4.4)"
+	int "Warn for stack frames larger than"
 	range 0 8192
 	default 2048 if GCC_PLUGIN_LATENT_ENTROPY
 	default 1280 if (!64BIT && PARISC)
@@ -276,7 +276,6 @@ config FRAME_WARN
 	  Tell gcc to warn at build time for stack frames larger than this.
 	  Setting this too low will cause a lot of warnings.
 	  Setting it to 0 disables the warning.
-	  Requires gcc 4.4
 
 config STRIP_ASM_SYMS
 	bool "Strip assembler-generated symbols during link"
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200216151936.23778-1-masahiroy%40kernel.org.
