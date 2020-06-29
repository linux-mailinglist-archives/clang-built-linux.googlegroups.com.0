Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTMP433QKGQEXEDMZSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B8620CCB7
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:54 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id bk16sf11138737qvb.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411533; cv=pass;
        d=google.com; s=arc-20160816;
        b=PC5TA2A3hngpN8DmplUZ1Aenk5csUM1LEDxj3Q2IdsDPKXkSxkyo5XSK0xSUOww+BN
         R+qRcifeLrrOFYmlVb6IAHg324KJ2xeHybgqUiYoIrM7QTW5e+z7N/lKN40LE76WNxWP
         NUoBZhwrZoYdK2btabiSNZENyomnyqbksZgfwWPQJRm1j508GDFhV/pT9yHyFM+f+apV
         yHb9sVWj7693zF9sOrOaeakU/vlR+xWqOe2h5N1sZtSxrog3d8ipkjGadA/OG7u/PQiS
         EAnqWJIB1/hWoqKK/mBoWEpxW+9AuMV+FpZ88fUpjyvkm1nfGdAlSO1MOabcttREQFCA
         Cb1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zs7HfYc17IiR+Zv1FP6Zb7ATWQlWwS3pMBAPK5UkU70=;
        b=MVMw2N3fVi4RtxCOQAP7IcWEnvam2IVvSLoIw36hym/YTBy/eMsva9AV0cHmyJRUa6
         iwPm1EyYJjwQ4rUkj2Le87unw9QVnCFJLls9a++lrhAW+VOjpLBFCVN4G6wCQMZ6XjQr
         scyh2e2SQVa7+AMzDUyNkAsrCm68bFRdMTI3GnDqq+TfUPOOn+N7oZiefpvYWhaCKK+8
         3x+WOyvvAvFBwxuAHobtCh+0ebTggHKvkNH1T3E+FcdAAQ3pudbVx+XR7wEJRi66IJaF
         RKGa8eD2+pTrdX6IJhZHmIVByU/BQeT7XrDWrcDDlgCMizu6zxIOM1rjnTot+gvzzOns
         eSlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eIyxYRft;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zs7HfYc17IiR+Zv1FP6Zb7ATWQlWwS3pMBAPK5UkU70=;
        b=gKPpRB3I2cn/8/rKCQOiCB9qA6eQ1Hf8GR5WZzVAq3ABGgHGg1w1fJTwQUow1tGKXB
         BJPFvrdwvgjsDF43+ajWc+CxVjE4684AcIIrol5O063wfzCMzrCADe2zEVCDxa1l8an0
         350gMDmm7HrL0QyMFnyhgs0CnbZp19R6r0oQLmX4MfOKuQDpE9wT6eYjQISxUx0lsxjo
         9lyShRvUFlUrXQkAMIeeJkY1w+ctlTdEz/ZZptNds50ZPhL4Wss8Tg9T/pEIDWBFZdv2
         nO77qwjgTvApBDh+lvy6UdI0CPdfyoomss4Yyi4+a9u7Vt1m2m6rXaMCMh6F6W5k8ISX
         Xwlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zs7HfYc17IiR+Zv1FP6Zb7ATWQlWwS3pMBAPK5UkU70=;
        b=I7aMlgfEt3JfX9dgx7wROjY/Aa5sArPYpBrEPKlBH7V0iNxUrBNvlF9PffJXlqYnle
         uI3mNYp0FASYYxoEEHlyJlswP7/IMECBz0ZA4QTGnSiOCw+j26Xmu1CiESojWpD/aayj
         dwUOcwYfuQ0MgU0Pa0XTrqAK7GLwrVE7yc5mnbo506Y2WXLbVyCqUAtuB3s4+jq9aAVE
         +EDiWHL8vW/gZsfDho7c9OZVvTaCAy1beYa1OU2b6BflzOsJV0NwfiULxtUEr0D/2cfa
         n6TDG2p4S9/NqOOiyvhohFDmzlnQ3D0mGINLX8k+jdPuoTi4eYJdvykPf+i778LBw09r
         wp1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eeP/SoL8awxwC/e8oCu29bk0X8hrqPBl5vtyP+Ssc1325eLe7
	7/PTIpucFWpXQuU9mD87WxU=
X-Google-Smtp-Source: ABdhPJz14Ilzabr8nNsgDmgyysvdvSLVY+15cfY7z3ipuYV/clKfiE09NRZ5uHMFerJWXHDAp3K5/g==
X-Received: by 2002:ae9:e8c7:: with SMTP id a190mr13643454qkg.94.1593411533733;
        Sun, 28 Jun 2020 23:18:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3287:: with SMTP id z7ls6355668qtd.0.gmail; Sun, 28 Jun
 2020 23:18:53 -0700 (PDT)
X-Received: by 2002:aed:2569:: with SMTP id w38mr14034863qtc.3.1593411533476;
        Sun, 28 Jun 2020 23:18:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411533; cv=none;
        d=google.com; s=arc-20160816;
        b=OrG1L+PFGVpj/2UUA0i/RiOD7J1fiYGGR4lU3/mWD7TSwFLiXjct7ZTqOnQNo4/qtq
         Nmz9htQ/8j+2hLG+tlMcObEXciuLdd3O00qyyu/Y7AiURJU5MI8npyf8tAYTnnQ8vHt1
         2QwF4Zd1v9VEYRDPbDxv4e62jW6w/Q4SNHWTZ4zZO0TIqwITq6ZMjhjyziarjxFJRzkk
         IVEqe79hhqj/BeXBFkCid7iFneUDyJFzDTHn5lFkZyxKvUwDOY1NKqGrwoFeE9t2tKgj
         1caCn5lnSoltYG74cmfNdFaIW1zPBUtmgGK+4UG5B22B0KXVwjEPHlPJ/V37+cjb6qJS
         DohA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UIGzgreIfTFOxxrVnfdOtVBSBIsQ6xr6g7mQ/APcJYs=;
        b=rfPkN3ZqynPL/26gKCnr7z1ysnWZeAUvC+k+jETKtKXJ6eKr6v0+yuPxw2Z9oOiG7J
         04HFmNNo+5LM77SEegCpLXl08pwSWVI9+LW8JVsmqxITml5yEIlL+yYjRHZUk1grUaPo
         OBaC7824UIdHl62ptCCQZ9jGrK7s61tWhkRYu789PeFsXnljNTAnXp9jhrqIt769Z+Q8
         iGSEfuO/cQyRVrfGTy6xot6U9uQV1i0xBYxOsVpNna6eOFTyt8xgJ1HUzI/Y6TuDGyjd
         WfCSaEb8JRvlz9hJnxoWu8paM0Eyb6y8zLpiH3jntHvaYthQrewsghUn353t8dmMKINz
         osEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=eIyxYRft;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id c67si1838709qkb.7.2020.06.28.23.18.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id b92so7565316pjc.4
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:53 -0700 (PDT)
X-Received: by 2002:a17:90a:1781:: with SMTP id q1mr15164767pja.24.1593411532684;
        Sun, 28 Jun 2020 23:18:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d18sm7737172pjv.25.2020.06.28.23.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:48 -0700 (PDT)
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
Subject: [PATCH v4 11/17] arm64/build: Warn on orphan section placement
Date: Sun, 28 Jun 2020 23:18:34 -0700
Message-Id: <20200629061840.4065483-12-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=eIyxYRft;       spf=pass
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

Remove .eh_frame, since there are none left.

Add .plt, .data.rel.ro, .igot.*, and .iplt to discards as they are not
actually used. While .got.plt is also not used, it must be included
otherwise ld.bfd will fail to link with the error:

    aarch64-linux-gnu-ld: discarded output section: `.got.plt'

However, as it'd be better to validate that it stays effectively empty,
add an assert, as suggested by Ard Biesheuvel.

Explicitly include debug sections when they're present.

Finally, enable orphan section warnings.

Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile             |  4 ++++
 arch/arm64/kernel/vmlinux.lds.S | 11 ++++++++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 895486606f74..fb3aa2d7de4d 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -29,6 +29,10 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
   endif
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 ifeq ($(CONFIG_ARM64_USE_LSE_ATOMICS), y)
   ifneq ($(CONFIG_ARM64_LSE_ATOMICS), y)
 $(warning LSE atomics not supported by binutils)
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index b5a94ec1eada..320ba5ec2adc 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -94,7 +94,8 @@ SECTIONS
 	/DISCARD/ : {
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
-		*(.eh_frame)
+		*(.plt) *(.data.rel.ro)
+		*(.igot.*) *(.iplt)
 	}
 
 	. = KIMAGE_VADDR + TEXT_OFFSET;
@@ -244,9 +245,17 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 	ELF_DETAILS
 
 	HEAD_SYMBOLS
+
+	/*
+	 * Make sure that the .got.plt is either completely empty or it
+	 * contains only the lazy dispatch entries.
+	 */
+	.got.plt (INFO) : { *(.got.plt) }
+	ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, ".got.plt not empty")
 }
 
 #include "image-vars.h"
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-12-keescook%40chromium.org.
