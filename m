Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBW524HZAKGQE6L6XJBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B234172D03
	for <lists+clang-built-linux@lfdr.de>; Fri, 28 Feb 2020 01:22:52 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id m20sf2343370ywa.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 16:22:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582849371; cv=pass;
        d=google.com; s=arc-20160816;
        b=uON55643dGnVlPbYtZXw3SyJxB69+Ov0oJxHNHoozJuuvx6W/lKeeK6NZBE43cFiLd
         qS5TvtSPNpdedavDVXjoQdkEnKYGNuG1gViz6HdcVwSWJDd5S6FpYt+gCCivNScKlM5m
         B0272IeWUyPJnjcXHT4JGgc1l/eyD4q0/iToY9IoKfvpZBxbW0OihrInFLK12/1tWbkK
         lYtH8I00160b6Ox27nROgyyrVl7juegyXu3xMxNwVSHAOT+JfWrNUkFG9TbHKlOgJ0DN
         2HzY8vaNXcLgY/ts8crTQJo82wJPilgGtN2dhX1x/fYpW+g1efSKLQIta+H3lG5KyHFO
         yDHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yV48W56WxWJIqMLNMS8g/pZerMOkRTbjOWd6JSVePmA=;
        b=bOWaOFhJuYf+yV73wVfvZRvbleknCv+7a4+pc4+/SZ6nQEUT0YGopVfAsVFNgC7Ioc
         mZ8dLWLPBmicnyjd7O54IjUjb1QoxwgAUOzz9rO3q13K7t2TYhfp2clq/65kiduCylF8
         E84dCfOAyqoR2SJHl2y+LYsw0idnK2+5PcpQuTldkx2mXYRtLSGZ1z9KTPGXvlfP6fEb
         BxunX6V95eJhKrOULGw7wyGiYINk2bpCHWyGHHxPUrkTIkzkSLTRfd9n8hI5QehNZtEm
         +wPxLb6Iw97d281//GwFy1CrF9eqinh5Gkj/GeNop+IoczOOfLpz25SiRn6kgI/cyPSM
         K81g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aprtzyrZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yV48W56WxWJIqMLNMS8g/pZerMOkRTbjOWd6JSVePmA=;
        b=T4iwJVUzN8qR39QJw9BAXTptnOjAbQUaJtE0HsrzQH9YCh5DE1qTmNvERwg2kgniR7
         gfViunkgH2EUkBubqM8Tbfcn7O+q0NLBUroxfrM+w8L+F0YPxEJqKotGjujS2pahQ7il
         y/25RjCS5MDPA3x5iuP9nABlxAp5p217UWZmM1oydd3ChXvZcnSIe/R0u12x/R7jXL11
         zbdgM21XEZMZIWF2C4UnN1txffW5Abde885DHfNLgBmSfkMfAJunoXsBjtfF/1E2YBVP
         ZIU8C9PbiEnEd9p9iEJNsQpTRPiaxLfIWtVKkMU/yAS6gz056XVUYF5D+cFhKnpgzXK0
         0qrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yV48W56WxWJIqMLNMS8g/pZerMOkRTbjOWd6JSVePmA=;
        b=SHpoUPupj/IYVcofAz+ze0WqnsaXKgYlWbDMZVSQjPGEc+H6wDJ/FLmXx309fYCDt8
         pR9M4guhj1lf05ow6OlOZYTeh6EW7YennK1y+T9tXQbr8mVP6vhnfAo77LfzdOqjG5TT
         qK9/zalYW1tvwOv2lYXlxwBdRsbTPw3+Gus9JefqLikTrNo/hWqYnbgcTxH+irxjhQQL
         2IPUSqRFXxdn0pDhLrdnXPDh7GK9lv8u47NqTJD8N86MxULXQhiy6Lo/kfddPzin5M1a
         hjFcL3FR4tII5JGNU6oOuhnQc7sdABmT9uEMe4RJBPZOj9EVh2YLkbCVxDqpzFmFJKAt
         WPoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVUjzrsCvAejuT11l6DiRXYHHPu5RWdTJPirFsEo/dCa94TeKDR
	DT/wavXqVHu8u32r1a7NL7k=
X-Google-Smtp-Source: APXvYqw4wW9GBxZlGZoSXW5HeOHP/VCH1eqhN3PUcsKzAfaZCUtSppKpKM8g3/2GAy8Y541StQjX7A==
X-Received: by 2002:a25:80c2:: with SMTP id c2mr1321745ybm.514.1582849371583;
        Thu, 27 Feb 2020 16:22:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ae04:: with SMTP id a4ls282541ybj.10.gmail; Thu, 27 Feb
 2020 16:22:51 -0800 (PST)
X-Received: by 2002:a25:4f86:: with SMTP id d128mr1356932ybb.118.1582849371200;
        Thu, 27 Feb 2020 16:22:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582849371; cv=none;
        d=google.com; s=arc-20160816;
        b=wXIIbHJL59ZeOa2BFjPtJbsGoFHbirqOWUBqEZBQy4gqkKRlDPXrX+4hOof5yzU22Y
         fa4UrwnX6FKdl2Lyi34Tw4MheyigwIxQA3bhZ9G3UZyStiCiOyr/yIwx5cvJxVT0Ag8e
         XyjhZhopolUnTMylYqCGTheaUxUuuBaHWDpzNWqa5YmpKgIlsxobyQzYzLF6wIJIuic4
         dtDler2fi6kUvjsUM4hKThbNCoWjyp+cKHqzWw1MeZ9UrSJzoTCKLBbr/QDFvnoWV6FJ
         8O0QdFHpxRRzb3xuu13qQhZnME7gqi/ZtUwhTfA4qu/5Srlb5jq2VLRU1QqJko4GCo8q
         msOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=uceCceIOG2DmkN987H8EhCgiSZQG4q+SFGBRris4xG0=;
        b=KhxX5Vd9G64cM6P3hGICUYWq38rSa9gW2NZ+xp2yVgq9SwghnY8LJWARNBER561IQG
         ro136QludVtoKUxCCxZnyR/VeOQPbL2XWsKjssaWCBKc1o2HhoyuFwaMqanpH3ctTgVH
         e11CCCyEpXPRac0F55RiZGF253CDxHd5q84A7xShxPY+xajxA7nc8xc+xqFmTyH8ECna
         6t9WfG6kSCfRorLte6/nS+2T8APL9xLd9vd94xJTZMWk/4JqT3Nof8obChhoQQqidZXf
         0fSO2IU/rTSqbk/j0UwwSciv5m+lRxQ4Ovw6x0YFHpJeP12Ahy+0COnYGoU56+5m8yQY
         gCSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=aprtzyrZ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id o185si57431yba.0.2020.02.27.16.22.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 16:22:51 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id u12so532256pgb.10
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 16:22:51 -0800 (PST)
X-Received: by 2002:aa7:9f90:: with SMTP id z16mr1671592pfr.161.1582849370382;
        Thu, 27 Feb 2020 16:22:50 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j12sm3646141pjd.4.2020.02.27.16.22.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 16:22:48 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Cc: Kees Cook <keescook@chromium.org>,
	"H.J. Lu" <hjl.tools@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	x86@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/9] x86/build: Warn on orphan section placement
Date: Thu, 27 Feb 2020 16:22:38 -0800
Message-Id: <20200228002244.15240-4-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=aprtzyrZ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
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
index 94df0868804b..b2c8becadce5 100644
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
index 5cab3a29adcb..1e345f302a46 100644
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
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200228002244.15240-4-keescook%40chromium.org.
