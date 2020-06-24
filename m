Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBPXCZL3QKGQEY7AOVGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E332069B4
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:49:51 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id q5sf616347qvq.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 18:49:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592963391; cv=pass;
        d=google.com; s=arc-20160816;
        b=vUfXPUiQ7gvedT8vrzCVMjDDz/eyn4hPzuAnDVOxiI20TNY2VUpC5i/UVAYLEiWia8
         PiflKRGRzVGa+BBUufjAkk7LJWNf4mzY9WHwJTq5fHZt8Fmn+S5eWCGTJzBJjvA0PWWx
         x+oeE9/kUFXnAw2CZ0QRESYTzvmg2bPxj5rV+GxM2aBIpHmrdjPILPGPPs1xfb76TuJ8
         4mgw07ajiBWojPDF4jjpo9U0VvUh4n8q18Zawar5x3Yx6Ry7DLgTFCrct71emApDcKB+
         ODD8UEh03GDXLSOBLv8how9jXWcx14Pkl29W2O4jJ/uowKpjL52+OG1xtYBH5HdqIsTD
         TEzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=d3XHDzAWLI8xQ4+oQeVf4Pm220EI9jB3LCJ1xua8ULQ=;
        b=IBPUGmfDKrN1dJ1fK3r3oUp6rTWv+M9zMCw1FF5tNTfCi/Uzte6F/04KCjjNi56DWq
         VVbfqMMjtFZCcPBBIaTfMB8G7+/fZy92NQfEwjOzMc+fWtIz+CYfSPsDJ7Z+9VqeJrTb
         r/b3+pQednRHTgkyBVYVfMh+P66H9kc42TRZn/z1RiXMJBhhD5uOxHUjBVOu4M2UdJeF
         jdJsW57LGj6GKWTr/1/L8EC61dKXfkVEjMj3flEf6koCAvLRPKkfZB/NILIN+BmHjEV5
         KsTBPGsy4CZKBQBtJMQDzsoySDcUrV0yvFyqmidfUs6v5X2cnrOEb6wh8jiCfubD4+TM
         yLig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TdJYKQfK;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d3XHDzAWLI8xQ4+oQeVf4Pm220EI9jB3LCJ1xua8ULQ=;
        b=DJJ05//W+dbviiVEUtyz/f7ulZNz6iKYZt1xiAIInez1ISabRUwu+EYETKzzmf1Zcm
         PIzPNxcIekAyVlGBWSneUWLfELaOIMRbm87dvYXme0S/VUrvgDkaQ6XaT/SqIIfnnTWS
         jJ9MLLtvu0QgCnt2h0V5zuNAI3TI5niktNP9uy/pn+6plClv/5kZCg1cAvrTvJaqMOep
         6JyfeSuJhmDPIgX9B/6sjP+QBVI4xr0zSP8WypNhz1ZFQdbTu2Cu6d9Km1Ek4H7T/lBn
         kRb5NizKDtSoBH85CJsu4H3K0+pv8BGQ+NwnwyjPGMiT04guKQsahhVygMIteWGQzuxE
         ZTkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d3XHDzAWLI8xQ4+oQeVf4Pm220EI9jB3LCJ1xua8ULQ=;
        b=V+/d0/ujo7CKtX6/uU06mzZGqIqX/oDzXnVtn2QMuoSiddeIpWdOnKnIcbWPmk7RXQ
         7YKWmax81oItkRA23hnNAd0GUb/vuIyFjawtwrHxkhJEpBpI1XY6lzHjncNQ8x0Old3A
         6s69oisdV7yQpHgpjnPoCdjiceLu9Aa1UekhztIeAaI30RqyPf0gZ6r7jaFScerudG98
         h15pDBvv6OqrhWLtxfMMVDBNk5+neMpJMep3hwhVTbtBtOKRhweuq5EyuCRT+zu4bRBZ
         C1qKrSuiz27qyljCXEB9q2ZdDUBivOBVJtBgrBccMArJdJdZL0Umlho8rcaYDz5/iBTr
         aZ0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530t0MqKmdFboKyvAsvvqQWl3Lp5Zht+MeSkELHEwfpEvT0TvvK7
	XYLbqmOlic5Wz16p7H5DcxI=
X-Google-Smtp-Source: ABdhPJzKSQlRjoB/Y81AAAd786u4r5FqBRGAitP7m2vz5bVDme98YSdvquzjFJfn00DSkSQGAz3jYw==
X-Received: by 2002:aed:2aa5:: with SMTP id t34mr12884310qtd.363.1592963390628;
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a802:: with SMTP id r2ls330600qke.5.gmail; Tue, 23 Jun
 2020 18:49:50 -0700 (PDT)
X-Received: by 2002:a37:6191:: with SMTP id v139mr23141173qkb.213.1592963390320;
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592963390; cv=none;
        d=google.com; s=arc-20160816;
        b=LPSXeoFJ+R/pJYgaeEhZbl00J4d704dCgyByWQNuaZfHH26kewC0lHA7r2efhsIWkM
         hFS5KQGSQ6MuRiL9klnySe3awbbIE89oIMGMo/U8keBbgrH5PDhJHqC4CAfL5P1nWIvb
         J8rjoQQ8J1ivSla3VckLLrT+55vS35Fdo0vn+1Fb71dceK2be/56UzERsLuC3HZpKHF3
         SnlEo9nCKLnY9c8AXH0V8R8+tm1dnUJpiWAHMiTumt/CZ0fYeuYDesrWT5xpBBknj7zV
         553u6qVh1N0Zha/cTTs3h8lYdnphKZybftUiCQPOR29VU1PbTBNul5yibzBhyZrDm6Fn
         GN5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1dy932Q1L6bL01oX9ZyNGxMZGfZc9HBFmwG4K7Tai+w=;
        b=FmWmGa2pvUkgdex7cUhuwj1n37YIRgHcasqrFhdg2jI3wcvZw5PdV16FpOe8CpHE2o
         07+V533VJg1kQVPRDajCO397JQlaJBnwyjLRgttYiY84GI7mcaQgwvlJnjTpVcXPogjK
         dIZgjRI4/x4rhHVkTsuhql8iJKBi4MTtxFUZYtGFNlHrSBybkz5+UGT/J1iY+exxBTRd
         ajigMyr5GTKRT37dG8HG05WZbKKlmEB48Sd+Yj+EW51nuSaZQkEVhcQtCAVtLTuEX9S2
         Sm//Xf7lIUJJfkCdfRD/t7ZTx9t8+D3npJUsKSWXwjBmLE1fO9dGZ4plGoXOw0b2XCOs
         FDig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TdJYKQfK;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id z7si925542qta.2.2020.06.23.18.49.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id n2so316730pld.13
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
X-Received: by 2002:a17:902:9693:: with SMTP id n19mr16693200plp.253.1592963389555;
        Tue, 23 Jun 2020 18:49:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d22sm172748pfd.105.2020.06.23.18.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 18:49:46 -0700 (PDT)
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
Subject: [PATCH v3 4/9] x86/build: Warn on orphan section placement
Date: Tue, 23 Jun 2020 18:49:35 -0700
Message-Id: <20200624014940.1204448-5-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200624014940.1204448-1-keescook@chromium.org>
References: <20200624014940.1204448-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TdJYKQfK;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
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
in the final vmlinux, stop emitting kprobe sections without kprobes,
and enable orphan section warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Makefile             | 4 ++++
 arch/x86/include/asm/asm.h    | 6 +++++-
 arch/x86/kernel/vmlinux.lds.S | 6 ++++++
 3 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 00e378de8bc0..f8a5b2333729 100644
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
diff --git a/arch/x86/include/asm/asm.h b/arch/x86/include/asm/asm.h
index 0f63585edf5f..92feec0f0a12 100644
--- a/arch/x86/include/asm/asm.h
+++ b/arch/x86/include/asm/asm.h
@@ -138,11 +138,15 @@
 # define _ASM_EXTABLE_FAULT(from, to)				\
 	_ASM_EXTABLE_HANDLE(from, to, ex_handler_fault)
 
-# define _ASM_NOKPROBE(entry)					\
+# ifdef CONFIG_KPROBES
+#  define _ASM_NOKPROBE(entry)					\
 	.pushsection "_kprobe_blacklist","aw" ;			\
 	_ASM_ALIGN ;						\
 	_ASM_PTR (entry);					\
 	.popsection
+# else
+#  define _ASM_NOKPROBE(entry)
+# endif
 
 #else
 # define _EXPAND_EXTABLE_HANDLE(x) #x
diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 3bfc8dd8a43d..bb085ceeaaad 100644
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624014940.1204448-5-keescook%40chromium.org.
