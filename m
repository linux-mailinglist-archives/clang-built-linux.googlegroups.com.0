Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAOJSL4QKGQEIY77SOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C71234DFD
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:50 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id m26sf20866589ioc.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236929; cv=pass;
        d=google.com; s=arc-20160816;
        b=OJdyuTKW2RDSVt5FlQI7zqFXfRZVJkzcPypTiZysWLDg2hG+hx2oN1rftl+X5M5zWK
         OqsL4U2YI/TxqQ0fJJr1FUFKelvu6/ix1Ln+6SYy+smH6qkXlhBBHbm0v+8FP4biuET3
         duXE7CAtDY3141XAUMv746td8Qe+F4JkG/C33Syk3KSpN1Tky8+81KP2mKnaRBac107+
         9sylUsJPvvmYYVjII/7ufFERIIBfBiaH7PnV0Cwz1QdViKylonG02UVkHIL498IPzJLQ
         M7lc7CVNieX+L9Uw/4tw9egSzGTYbmt0tKb5g3S4FDKaB3kx1hhxPODQSSC6BplGMJIR
         +5Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ooQa7FR5M3Jr/eYhcsnKFh1d3i5f619R8xW5zelat5Q=;
        b=G3oQwfGdoa+rpDZcI2y1C5iGukDVLnyNoQvisDXBlx64vwDmjaVnN7Gdn7+XvVNOSO
         gv2VwoyX7zI6OAufAVqqOmvHx68y3whdtncQ53xXzjCH22oQAjeNiyteGDm7K80N0cNO
         toorv1oNQHCHLnWQ7JdAz1o4gotd8OVJazWKvyKKqqILBTOrGoGOg41rZtGutdDg4HCB
         gSdfj9u4Co+MZw/DrgOmm2xP7/cn1WF4e6uiMjzaREQnvZ+FJgJrPdCbgvrs3jFdXV58
         mrVFo7j/rJZ0m2jSsZQj7RAxICZmlaiJ97GhjfQx7M+zjWxS760ZnXKQ6K15onmjSAhC
         2UMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="erx5/Jpq";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ooQa7FR5M3Jr/eYhcsnKFh1d3i5f619R8xW5zelat5Q=;
        b=eBDUTu4rgg0mAczaRsqOxjWiGQz6b7E2XlS404pLhIyef1piuEUcMryxFqobTYWGsp
         Y7rTyOoydDriwQPzbKNigP5dyZwbFFbTX3wxMLUhYE9EM/c7cWwbOWmHwf4d/aGmdmAN
         Ay2fK4sFR4A2y3hrfzP1GkYlI0jYjyawKtwx9Q0DykQ4+GQ4YRKybAZrz0LCdT69VWsi
         OqqGOaTy4URtFYJCX9EeCBlJWA2PTIfUu+asUiRZWN1ffScj+HmtizeiEuIZkhAxDweE
         r2MYe7ithTWpd/4go+b0O/o82i6KoQBBQzjP0PSS0EQVHUKIJ7GzMLZUdUX5LzXBo2EP
         2HvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ooQa7FR5M3Jr/eYhcsnKFh1d3i5f619R8xW5zelat5Q=;
        b=XPwsC4qj/ixHDRw/4/45YYJkSMyOo3apBPCgGjMRURKdAnwS7CaJzTbbywZBOfE9rX
         EYPcgRevV0gH0IQToduIPKI+PxOMeQ0/HGFY7NBPnVnx5AG7I7Ufnwh0jwgPrCUX37s0
         7fv/O96xMKQ/jqaF0rMoYm3N2bLCGOBos0z8iek826ZSZ3wKcFVbsYdQtV5I43DWAgrc
         sawnW8fwnexAAiYwcI1uHCEP3tX0oVzGjpQpZoWJ5G6+hEy0lCbg/07/F4zUjPwDWWqL
         s2wtWIaVUxPxwnwlFVNpddoDRQqvKrECLAZ/KEcLkof3LfaufAb4DlxYbLCR8dV9xxrN
         NjHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313onDx4qaS3ysZfxPBVSdIrwlwvhXUPtFLoAy3zBxiiCDDbQkk
	6l2mok/begOo27FcKuCrTOA=
X-Google-Smtp-Source: ABdhPJzhzXs2OTPu/KyNI+sgeffrplUUfQiM2ry02OozwrK1cy8kLbZM353oi4izz8TIcuDYEE+K/w==
X-Received: by 2002:a92:db06:: with SMTP id b6mr6422340iln.228.1596236929054;
        Fri, 31 Jul 2020 16:08:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:974:: with SMTP id q20ls1742389ilt.1.gmail; Fri, 31
 Jul 2020 16:08:48 -0700 (PDT)
X-Received: by 2002:a92:cac5:: with SMTP id m5mr5786806ilq.91.1596236928744;
        Fri, 31 Jul 2020 16:08:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236928; cv=none;
        d=google.com; s=arc-20160816;
        b=rO5TvGZo7PcRB/CLtICH3Br5lfIWPYFx6Kq5fd38ApgEFL+fcH0C7P0j4W0DwkOu5Y
         6YNMXV+WcOgZHwTmh3jlqjoh28FxdmRSkrt1+EwEiNaaZ7lqIqWTYndoRqRYxepPlEap
         6cJ63w7qW04geDugsWThADUcg37KQ9cjq9J8ZgEjQ5bzLxNlDRfrIndjM4Ku3Jr0TEU8
         0I22r87LkR7RiRlt5KchxhLFXDbeiyDA/62Yw0jQt3Qn/3s3RFXu5M65D9e5/M5etiV3
         qrB1KO+QukQH80iHrps4xFR6idKOa4/X/Bf7M3u6lGYiyOoPX6tYAcDIRCaGMgEt+wM+
         sRsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8vhxEY/3GLUdito3wLDKhA5WtBC+SXdkXa/hytPCigE=;
        b=zKvbTPg+/t7nLoZhLXVVVnGqixSPaipUNP6mQpMLlsAJnAQg4/S/ZGKWKRkt2Kbp6o
         Zf6jA/74FG0naFVPWV1y2nZ8e+FIiZ22R1QCqYYmBQGsrP66hB4G0eVGJ8I++MLD2bBe
         0QAJq5kk54nbHyokgdO4j7HDoExw8STyoeIgGhBWfnBoLhZVhyjSReKB0XOlBxzkGB0M
         9hjAwuIp8LqYTtFz9FZDxaLWrFkcoVsd/6Y14E+5wh1gductqzKKu2IdQlSFLYLJy3bz
         UE+9Rda82/IgjoYKdCoN/8juDFwBqe27hGUgcqKBjJ5RtG0nOdUmBbaO0svJdayZ9/zi
         yImQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="erx5/Jpq";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id k8si601733ios.2.2020.07.31.16.08.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id j19so16773525pgm.11
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:48 -0700 (PDT)
X-Received: by 2002:a65:6644:: with SMTP id z4mr5848694pgv.391.1596236928153;
        Fri, 31 Jul 2020 16:08:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k21sm8098390pgl.0.2020.07.31.16.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
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
Subject: [PATCH v5 33/36] x86/boot/compressed: Remove, discard, or assert for unwanted sections
Date: Fri, 31 Jul 2020 16:08:17 -0700
Message-Id: <20200731230820.1742553-34-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="erx5/Jpq";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52e
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
index 96d53e300ab6..43b49e1f5b6d 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -49,6 +49,7 @@ GCOV_PROFILE := n
 UBSAN_SANITIZE :=n
 
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
+KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
 LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 42dea70a5091..1fb9809a9e61 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -83,6 +83,11 @@ SECTIONS
 	ELF_DETAILS
 
 	DISCARDS
+	/DISCARD/ : {
+		*(.dynamic) *(.dynsym) *(.dynstr) *(.dynbss)
+		*(.hash) *(.gnu.hash)
+		*(.note.*)
+	}
 
 	/*
 	 * Sections that should stay zero sized, which is safer to
@@ -93,13 +98,18 @@ SECTIONS
 	}
 	ASSERT(SIZEOF(.got) == 0, "Unexpected GOT entries detected!")
 
+	.plt (NOLOAD) : {
+		*(.plt) *(.plt.*)
+	}
+	ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
+
 	/* ld.lld does not like .rel* sections being made "NOLOAD". */
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-34-keescook%40chromium.org.
