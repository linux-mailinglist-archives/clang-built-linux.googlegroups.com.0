Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBX6MQD5AKGQEBJA64DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B315C24E139
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:54:08 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id n5sf1965731qvx.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:54:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039647; cv=pass;
        d=google.com; s=arc-20160816;
        b=ahUlKHgOr++2D3raYj8NyOCqOFEAV8yiZuBxHcNPml9KvJrvZG1I4tumSVyY0Fsg73
         38GeeVQPfe4Hhi1K9/lwxBndcHpTrtl3RrykDPx+BilyVOSxa2WJPA1GHrjzqhJavQ4K
         VYk+K9fox866pRYqtTS+Khgo6FMYfUWfS55EDvlju4p1O3IM4lHZ/SDtNmKKBqOxJtEd
         JLrkNYjSLR+2COd/nUsS69+6Ic/OhDi6h66+xuC7pvroHb57kFNkagLyvyscPPBdzbaq
         z6VviTdz1NShbpeBV3X+DxsTA45/FG1qWQ6X4L2ziC2KwmUCvg6URLc6BwLm2l6L1ImW
         18/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=y4RggUcfdxdTIrO7jy8NKdIlzME4nUrVs3lkIEDji7Y=;
        b=hkE6UzgBRgjMBcPs6HI6efpHlk088+c65Nc5Kz4Y0GRnMQPJqwVzWe78hKVHrfOlqV
         XgPHurA4kzojZ+/rele1HlXkvBvN7CWKJi5lkd8lQOxu1/gFgZDVKyQcn5nU/HYPU+cD
         nVuQ3pVuCkWWjpZ6sMalBv605RqTzSPyvLiKozjoVQ4PzL7otMxqYesGKoK9CLc1+kUY
         P19x+0M+NxFp3cJSkDMGWrJPB/vpGokf9vINfzzlgZRBACoDWKGiWh8pAxm+8gqj6PCd
         C3WcdMqp/DW08rLrhRYDjgNdSL8TYGDz2iU8/uQ13zAwRmVyiLx+PvH0M7JkKIpH6yE9
         /mfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UXMo0g81;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y4RggUcfdxdTIrO7jy8NKdIlzME4nUrVs3lkIEDji7Y=;
        b=HaR68mZotjXI45N/SeXa/ZbrmS18MVUfvnqddc20uTg5aMuF28z9dLfh8V89W9osWm
         MQ6M6/8hIjcFQs46ZD9ZOf3sfOa/GoGpIaHaafHTk68+3bwS8p2X3/+rlv31v436wp/I
         FpcLvctx+Uj0vlhHPQtGMXztn5Wpzn9lQW1Hk5UPrCbFOJCDdAmKL6pOcshI7Oe6shEE
         wiL1T16wEpUZYA9fYXL3F2IO1gJs/joQppT4SttmRgY2bsVsKRoSnnSdUxdajVOKOaHK
         V9fdHNiVfuaP+HYUDe7ZYIiOISIT7bTzBq1AGpzBS7CdJIo4IEQC4RdHAwagYQI3E98L
         5CjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y4RggUcfdxdTIrO7jy8NKdIlzME4nUrVs3lkIEDji7Y=;
        b=TUFX1F57xTqAPQzkOF3rpOyFbTK5Zgfj4I1OcRe67CIxk3Tj2MfEviN7Vay5rDFL1U
         yD6aTqDunveDB9EmGF9AuXBCzr2UA+aMBoE5K8WkP4SjjNd3ciM2HLhf8lSlCFJY3C6Y
         Pxyz4xgDW4RL9BC+gDAg6crNR2Bm/hN9wGRYOLwgEUi53UaYOmIyoqPQhaXnnVtygVJ6
         oDa7uMw6dG+Y78wknF+9ORYswVydq1Q00CT68NC5wVihYyqw4NwUoBghh3rEOmu8X+Uq
         37Verc+RoM1bdMJpD0wRY0lQUVpo/eaDzHg0l92nDriltgn7b01XFYJcry9x7DL2vXRU
         x45A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53017YNzNFT8697H+IK695FDbZbC1p/e8DH9MBF7MAbuI49bwX9E
	aAyruqZOnxvhbs6wfZWD2HA=
X-Google-Smtp-Source: ABdhPJzZwv7XvLaLGpJX17dLuP6MZ48lQ8XUVAX+E4vdXJEoG1KuLNd3ZL1CfXr+BWLI28C/6RDfQQ==
X-Received: by 2002:a37:9945:: with SMTP id b66mr4336920qke.51.1598039647825;
        Fri, 21 Aug 2020 12:54:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a408:: with SMTP id n8ls719679qke.5.gmail; Fri, 21 Aug
 2020 12:54:07 -0700 (PDT)
X-Received: by 2002:a37:9cd:: with SMTP id 196mr4493619qkj.234.1598039647497;
        Fri, 21 Aug 2020 12:54:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039647; cv=none;
        d=google.com; s=arc-20160816;
        b=buRjIipo3CEHIeZ5Jl3Et876tlt7uX9oLd6lRKFfG3hGEm+fuvjcCkxRCPtql9I+9u
         SC9O8gyQWQlT9LJ1I/96PAfvNeweB2W7pj3Uj+DLa5Ry2KPlEp+uM3tpdBRJvxqNmJko
         YpEUPgqhodJNda/IO99D1nSxZkF3MAi1HQlwFTUs3sZMBTBgqthDa6kz6XmKm4ZSl9fS
         mvnnVY8wzr9HmP7TR5yvyAGHTzYO0cEP23cpLMkt4Fl4BQEqBrMWYuq/wVcc5T1tamD8
         of9IwmXPBkPP/wBa7FioAEfS+fjplWdXZzbptvVkl9LXH/4fy+cLL36AwG0EFH3wN0Er
         F/ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qYY4BGMZpEUoUw6pwB0rAYIo+TQmYGtCQDuwjk0rFfA=;
        b=bkLr3BrjTiY3kBwMkatY9sdeBvq/aZrRqJBp3aI3u/sdqSnZF/MwSo54L+YRnFZfCc
         UagUZfShjGWQIEGjYTue5tUH17KuEAQsTb3V6UFwAStmVD2DMzDi9EpUMRCdR0egVc0C
         NHUHErOvcccbntS96GPfVHE1xR6Jd/gfO4XSc070xcCyb7JWZvNB1QU3ZQCKaQC0I7W8
         n/UsyZRf323B0YWQMA0DxX2dwEUtOpa8iHyjzho0r7HN2FV6ewYDVO7TDDwqWR62FyNL
         v0oStIvDbEMofejDyqPfM9+3zmX1ZDeRBzixmQWIWfft6l2Lmv9Cl/eztZxApYqGRKAg
         /R7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UXMo0g81;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id n26si156513qkg.5.2020.08.21.12.54.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:54:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id z23so1348012plo.8
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:54:07 -0700 (PDT)
X-Received: by 2002:a17:902:b402:: with SMTP id x2mr88446plr.97.1598039646692;
        Fri, 21 Aug 2020 12:54:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x28sm3555441pfq.141.2020.08.21.12.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:54:03 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
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
Subject: [PATCH v6 27/29] x86/boot/compressed: Remove, discard, or assert for unwanted sections
Date: Fri, 21 Aug 2020 12:43:08 -0700
Message-Id: <20200821194310.3089815-28-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UXMo0g81;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
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

In preparation for warning on orphan sections, stop the linker from
generating the .eh_frame* sections, discard unwanted non-zero-sized
generated sections, and enforce other expected-to-be-zero-sized sections
(since discarding them might hide problems with them suddenly gaining
unexpected entries).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/Makefile      |  1 +
 arch/x86/boot/compressed/vmlinux.lds.S | 14 ++++++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 753d57266757..5b7f6e175b03 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -50,6 +50,7 @@ GCOV_PROFILE := n
 UBSAN_SANITIZE :=n
 
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
+KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
 LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index ca544a16724b..02f6feb0e55b 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -72,6 +72,11 @@ SECTIONS
 	ELF_DETAILS
 
 	DISCARDS
+	/DISCARD/ : {
+		*(.dynamic) *(.dynsym) *(.dynstr) *(.dynbss)
+		*(.hash) *(.gnu.hash)
+		*(.note.*)
+	}
 
 	.got.plt (INFO) : {
 		*(.got.plt)
@@ -93,13 +98,18 @@ SECTIONS
 	}
 	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
 
+	.plt : {
+		*(.plt) *(.plt.*)
+	}
+	ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
+
 	.rel.dyn : {
-		*(.rel.*)
+		*(.rel.*) *(.rel_*)
 	}
 	ASSERT(SIZEOF(.rel.dyn) == 0, "Unexpected run-time relocations (.rel) detected!")
 
 	.rela.dyn : {
-		*(.rela.*)
+		*(.rela.*) *(.rela_*)
 	}
 	ASSERT(SIZEOF(.rela.dyn) == 0, "Unexpected run-time relocations (.rela) detected!")
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-28-keescook%40chromium.org.
