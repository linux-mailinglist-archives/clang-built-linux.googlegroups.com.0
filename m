Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBU4T433QKGQEHCCXKQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9F320CCC5
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:27:32 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id c82sf11320557pfb.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:27:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593412051; cv=pass;
        d=google.com; s=arc-20160816;
        b=zpkS4V/Kr0FtZ9OckHaq9MTLnPbfV1f2f7sIYZGgaX7oGqQr4z/jj2ITxIPyX3+Eff
         H4uLzyg7t/s4suNVETvJd3JzNJHQBaUOB3tkI7t6oXLuTklrj0U4TpaV+bEglBP8wIoc
         qX7ELwc8QIfEqJLZyeBhbykexxsiolVp389LFRtGVAf7Oukz7gV+jkHu9lbo0Yng8c+v
         AMefujUX+j3/rYqsbt00QEH3VL2RUSNQU9nEpUiXdh0VQ33w76CUjmr1mpDsUe1oPs/F
         GE9iTgeqfZHPlXM1hUYXwFa+BsT5B/j7Oc5tOuNYLAeB7Qs5QlFkL64Q1VZMzKb1aP9B
         naOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0uNpR9Hme2lrT/L3UUt4LYxpCQGGpshchJiHP8AHDDI=;
        b=LgdSTzWQhwXpDp+2QXSS98L7uix8tGMJqA+GpRuH+p5i1D7rK5Z9wnmrci2Hdtk3C8
         G7lH+r+84Wy8tSyrA2U4qT2yPMhT/uNawNMFD0extPSXku/jaFBjHS3iemEz6NPICW8X
         SmDjUunYPtWj27Sot3nM9zAa6VxCg8r+LpW8Aj4uv/KeejbVzSJK4VMTIOTEiWV5OEdP
         TbQpBUuFANy16h98Hm2nPW5KlEpuimIVNPycLmW743JKDKlXBk3VfwgDwWOB7iZyZ7T9
         fISZbXDvtnWG2PLMNb8CgjWFXY/l7JfuGu4TeH+8ROQx+r3qj+MrkhvSiheS2EF2NoMZ
         otAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KCQ5YzkO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0uNpR9Hme2lrT/L3UUt4LYxpCQGGpshchJiHP8AHDDI=;
        b=gjFLyEtgWWetEhvqWrxLDAVf7tXlGwv9gRiWSF6gLK8B+LX1bXfvsOX9c6Tj67QbQH
         7H0UTJl7VVq2653FoReR4VztawKUsj4/7gO0FGLzwEKuf2gLapc1iVVy9yR71eVRxO+C
         Sswdj/JIOVEKxCI1Gv0kP57QpVypwxr0zc4yUcM9SFcxnWuIpCb+75GzSD6AGElF6+Zy
         oh6MdK7d7Kqhayxb7k80G1cyAf7QqqzbGwhkIcZwgwwsmY4Wi/yyGkPjbsLbeD/zZjYr
         q8CiOxXzNBIbB85En/NXiUX6URP6xeQIgO71aKrHENlDbciQ15ndwn2P8zUDNibdFIB9
         0XTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0uNpR9Hme2lrT/L3UUt4LYxpCQGGpshchJiHP8AHDDI=;
        b=CmzjN8u5zXJkPgPquOAEolGFOwgtt8WD1VG5t9koH8yXtBpAPASeIiIK7uAODXIfB/
         qSkugGGf2I66IJQRioVOM5OYwUCRkOjlAZkb0dsCz8HrqXHzI9o7ArgaXcOTPSPBU484
         L7MjQX44mhps+QNno1LpNQ4aV9DxnZ/mLwKBtvM164tffALLs8lN24IfDDC1VcDDmx87
         kYy5zLmDTL+a+sG0mSywk3gH3CzkotqzOMpp9BXqb3fzG/Y/6sL+XHlcNWOKQFosTISQ
         kOjzSoh5tdwSXBix6y6TFdw00ImqYORifBD7agHYg5PIJ7o2mLCfPQ2f8RJd/szZI3KZ
         aMwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AVhPG8+6gYzTeIL4T/zlmYZF8d0rdoMi/qMS13sJILojosLz5
	NzNCvdO8IwbfR+6ezCtx+Ac=
X-Google-Smtp-Source: ABdhPJySYPOfBGuwoyyqiQ8UOQ00SGcmxqKPBvGrxUYdVf8NaQuwLnNI5Jtsz0FYUq6HdDe2YBPIPA==
X-Received: by 2002:a05:6a00:807:: with SMTP id m7mr13601582pfk.246.1593412051383;
        Sun, 28 Jun 2020 23:27:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6891:: with SMTP id e17ls4248633pgt.3.gmail; Sun, 28 Jun
 2020 23:27:31 -0700 (PDT)
X-Received: by 2002:a62:fb06:: with SMTP id x6mr13317682pfm.28.1593412050855;
        Sun, 28 Jun 2020 23:27:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593412050; cv=none;
        d=google.com; s=arc-20160816;
        b=X9C+gfdI1E10SsAP6gE9Ffx+ubNzrq72SYmSrugg8C1qFANxu0wcbsVrQvD41E+Y23
         PUXtYFB0TDSoASEJQsPUI/yNRKBzlxy3PH5XtD7RP35Szz+DVx536UqxQZzzs6LYz4/I
         01m7q5e4UTW/0gIt2pll0GGlDOp0EMNen6KHC2WFCc8/l1HUBKKBEJ9gX0Pr507KcW4Y
         6zCvmIGO8BrRt++3oJo99v6MSxsW2dNaiWOObtrFMKEZ20jDlhTYU7g32F18snMf1G3y
         Q2qbiFKubnp1fzlpZ0Gr20n0Zr4yXDprNNR5Z/qObbtFUc8juw/fE9E8OQI1hqQPW5fv
         y/2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EO3sRskvzqVrSi/8WlTJ+nKIw1S19eoepjwOuVzqC+k=;
        b=Ev9SMk/iMEX5wopgZ4F5zGCAtFN7VMsiK/PirLkUHiefgbZQYykY6Gz4LSLuZhfGeo
         5Fb8s4Hi0XmxY4k7Y+fTapmHjDEzxgGwBZBI+I8wMC/SHFbaqCWxyH2AGg4EL5dVwdGG
         fmOs49aRWQKYJ7I5G6uKDBgcLhg5MHGiT67rsRQTbltj5EsIa5NKY6FSorQcuSUh6iLG
         XKuGfQryVObPBvDPGopy98gdk8ANlQDxU3XLHY3ebeGr7IA+MxwXsDJZ1BOpilvj3tls
         81Q9nUBAGkFZLPE2Vgyt0sOz15eZkShf13fs+trHoQ4CJuSXLUg5oWLDnUv73I9gqiLE
         ebVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KCQ5YzkO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id gv9si1089091pjb.3.2020.06.28.23.27.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:27:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id f6so3555323pjq.5
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:27:30 -0700 (PDT)
X-Received: by 2002:a17:90b:4d10:: with SMTP id mw16mr15789032pjb.143.1593412050567;
        Sun, 28 Jun 2020 23:27:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h3sm19838700pje.28.2020.06.28.23.27.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:27:28 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
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
Subject: [PATCH v4 17/17] x86/boot: Warn on orphan section placement
Date: Sun, 28 Jun 2020 23:18:40 -0700
Message-Id: <20200629061840.4065483-18-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KCQ5YzkO;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

Add the common debugging sections. Discard the unused note, rel, plt,
dyn, and hash sections that are not needed in the compressed vmlinux.
Disable .eh_frame generation in the linker and enable orphan section
warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/Makefile      |  3 ++-
 arch/x86/boot/compressed/vmlinux.lds.S | 10 ++++++++++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 7619742f91c9..646720a05f89 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -48,6 +48,7 @@ GCOV_PROFILE := n
 UBSAN_SANITIZE :=n
 
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
+KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
 ifeq ($(CONFIG_X86_32),y)
@@ -59,7 +60,7 @@ else
 KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
 	&& echo "-z noreloc-overflow -pie --no-dynamic-linker")
 endif
-LDFLAGS_vmlinux := -T
+LDFLAGS_vmlinux := --orphan-handling=warn -T
 
 hostprogs	:= mkpiggy
 HOST_EXTRACFLAGS += -I$(srctree)/tools/include
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index d88612e3091f..9afb8737896f 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -75,7 +75,17 @@ SECTIONS
 	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
 	_end = .;
 
+	STABS_DEBUG
+	DWARF_DEBUG
 	ELF_DETAILS
 
 	DISCARDS
+	/DISCARD/ : {
+		*(.note.*)
+		*(.rela.*) *(.rela_*)
+		*(.rel.*) *(.rel_*)
+		*(.plt) *(.plt.*)
+		*(.dyn*)
+		*(.hash) *(.gnu.hash)
+	}
 }
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-18-keescook%40chromium.org.
