Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHGIQD5AKGQETBKUUSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A7A24E0D5
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:29 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id w20sf1688458plp.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039068; cv=pass;
        d=google.com; s=arc-20160816;
        b=ruDoRkHgOIoo1wa77FmI6DAnn8pEdyzuZeRs9gcFGNtJoeZYHJZ51ygOunfOKFWs42
         KlMb0O5wIPBU/pDwf8QNjIi3gOM2+DdqMjm6Pd/GRt1ui0ESa3Tha7Ku5FIPTXfF9fju
         oAl+nLVdPBG2Ixfm1OCQ9JOCPiUvkF8PVeViPjYaUNCm1KakN7pUyEEAptGjwQ4GgzMl
         DeVHu+vonV0P9oEt+4AQHNHgIrIXTGdjENz4xXUjzJbo2J4r/B4DswFlnKLXREC5fM5z
         1maNct8mxy6gJeRqETc5nqQkBSP5vbApSu9wxFoEI7GyKMQNhttIMlR0PMOB6wQu3aJ8
         6soA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WUvYa2Lc0u5FEWv6uS2bikQ1w/61Woljh7ky/Yu5ThU=;
        b=f2xDWMfXGFvN0aq11Ys9lY7Ma1m44HKOQpLZ5u/k1SamSv8eik4Snmwfgpfx4Flsg2
         /isdBTxCp73D/n5ocGBrx3xdrWh6Nc+ESKEKPikQf4b522HxtvnWV9fczQuzyu/0PiB0
         VED094nieeeGiX+fmdgLbLoZ94dYWqBR5wAhEoQSa259LbPLuYYcxIA2Sn2GvR8i0UMi
         5VaLpCQsA5OWGEi0FeyTnSDmtKqUAyI1zR6tDKMcMUD8iIG8vCcKIz3lkojp+lSZWe4Z
         NkPIn3Esdt9Nl7dB/JnAdk0zSMojlDnU8YITOm4r9zH9yIP99N1X9jDFXeYQru85TALv
         8RVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j1sa53Se;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WUvYa2Lc0u5FEWv6uS2bikQ1w/61Woljh7ky/Yu5ThU=;
        b=JN4Z5JtCD13NMH9saHHo+Rs3anDQEwkkdlkXv8TPdeVahqmYdfxrh4c2lQtF9hjX9l
         qHu4vFSTCjYAPinAaWpC0YPgwhj/qCKNROn5jICxciOOyYQj9AagONHxTZclpDj2Evsc
         FUj7iu5pZZT1QrRCXhVo+fnpGxqvnN2zWVsePlTFuLf0uzktW18zlK4NjkCOfaDdNb0V
         5BTkhuVq4Kt9Q0DpGVC73whWHBEUaHpM75nyeVa81PBAN6oL0LPci1jnFPpqBLk2AS9A
         1gGe3UALONWd8loZjrs8kClUDV9UDsJ1D1IeemjJ8uZAjGkVy0GgUM9Qk14K7uARFEXr
         Ki2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WUvYa2Lc0u5FEWv6uS2bikQ1w/61Woljh7ky/Yu5ThU=;
        b=FT1LxYCal69wvSeb0hfl9YMnC3HbbSozvG+VrxC1bmB0Ne7T3uEeM8e6+ztUJuawFf
         Ww1qYxPAOr9BhroEDPQYclGhhgMz11LxNN6PkZKaaiB3WnopnePv6ZqZULrSTIFbuuNx
         EHdNcQLqEUnZa66r3uxrXxj7cpddC+stFe9ZExcOqN5H684Xmd9B2JR8P1+gPFkN+pUe
         SAp2ToHFntkYWf7LNpxfOekX2Ugzf7S4hL/LO+U1ghDbiA0wYIouOTion8gCUPC7/rUk
         W/AATPlMcXZd5VEa12SWjH0S8nYw9eRC1IClVPv/OP0FXPDY/T7BYoKNX7eXOCVNEPVj
         7+hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oOKNSILfrPW1WFBb0AWDEIMyDYW4CgH5Kdrc+oPJhQGZ8Vzft
	gjc/U+N+i9U20puTJcoGRTk=
X-Google-Smtp-Source: ABdhPJxz6PdX9VmFaDKHcwdtb2Ijaww3H4fFAfFjV5FWtUchA+Jt7G1+8eyDK9d5eEBbs45n2OLROQ==
X-Received: by 2002:a62:aa07:: with SMTP id e7mr3610599pff.71.1598039068655;
        Fri, 21 Aug 2020 12:44:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls813868pgg.9.gmail; Fri, 21 Aug
 2020 12:44:28 -0700 (PDT)
X-Received: by 2002:aa7:9096:: with SMTP id i22mr3777604pfa.310.1598039068231;
        Fri, 21 Aug 2020 12:44:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039068; cv=none;
        d=google.com; s=arc-20160816;
        b=U5EV+ExQ2yWeoRfO9O6KyS2cQZRDTw685w4PkaKu+16dRy/3tksVODj8uz14NOKzYV
         OFdmZi808vqPD0TCiBQUzoRppn70DHg8cvU+1naQFQJWTQiCIgMmzCN6sLZhenxxc84Y
         5GkD+rV97nTwMEkkBEk3GOIBDFF9iIrNXioJKDp26gXYVVbtNuMLGbCiwyBgNHG4DOzH
         Jlg//JCSDLGfBTuIVvUUoYn/LFTsgtIZWKn0tzRJzrLI/4+uKlYF48AcipNu7xCQiG8q
         eYLr/2GNDoofpSP20o1E6I6+PBaLY7m9uoIc+If0wLiP1FQyti7I5cIBpQcgPjlsB/uG
         iF3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XUX2/F199MEO0A5MxoqXk+lRBktQIKiWBEBF3o8wM8g=;
        b=ZjqAWbt4aJanjikYYW6kSg6IjlY/Bc/n5pamS3oktYHhiTHrRhC2s+wGOBjNKx7yp0
         8S2m/6o9MzbVX+61UqSdKByUxi36wKEa5jJE6ZKOQ/ASk+0gzjvi0qZjmfXP3fCtB5ei
         mZLbuziszT3lC0b7nKHQdDs28She6wPhYBnuBtHA113ZIvIWje8b21TOo6CHkJqY63Vj
         20pqWIFdHBqdpMvxb7y3hpDLPK474uAmDBQbMH7iESaspSOAsdmHkv+KyADQIw8wEmGw
         4CrX/6JP6ym5nVTW8V8wU41a6q+Njq2uKnex6CdOCqed3xwXqfAUxzXgq3pY57M3qwMF
         XdqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=j1sa53Se;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id s14si155894pgj.1.2020.08.21.12.44.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id d19so1461891pgl.10
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:28 -0700 (PDT)
X-Received: by 2002:a65:679a:: with SMTP id e26mr3467507pgr.167.1598039067977;
        Fri, 21 Aug 2020 12:44:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p20sm2611002pjz.49.2020.08.21.12.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
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
Subject: [PATCH v6 10/29] arm64/build: Remove .eh_frame* sections due to unwind tables
Date: Fri, 21 Aug 2020 12:42:51 -0700
Message-Id: <20200821194310.3089815-11-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=j1sa53Se;       spf=pass
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

Avoid .eh_frame* section generation by making sure both CFLAGS and AFLAGS
contain -fno-asychronous-unwind-tables and -fno-unwind-tables.

With all sources of .eh_frame now removed from the build, drop this
DISCARD so we can be alerted in the future if it returns unexpectedly
once orphan section warnings have been enabled.

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile             | 5 ++++-
 arch/arm64/kernel/vmlinux.lds.S | 1 -
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 55bc8546d9c7..6de7f551b821 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -47,13 +47,16 @@ endif
 
 KBUILD_CFLAGS	+= -mgeneral-regs-only	\
 		   $(compat_vdso) $(cc_has_k_constraint)
-KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
 KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
 KBUILD_AFLAGS	+= $(compat_vdso)
 
 KBUILD_CFLAGS	+= $(call cc-option,-mabi=lp64)
 KBUILD_AFLAGS	+= $(call cc-option,-mabi=lp64)
 
+# Avoid generating .eh_frame* sections.
+KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables -fno-unwind-tables
+KBUILD_AFLAGS	+= -fno-asynchronous-unwind-tables -fno-unwind-tables
+
 ifeq ($(CONFIG_STACKPROTECTOR_PER_TASK),y)
 prepare: stack_protector_prepare
 stack_protector_prepare: prepare0
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 13fc2ec46aae..c2b8426bf4bd 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -94,7 +94,6 @@ SECTIONS
 		*(.discard.*)
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
-		*(.eh_frame)
 	}
 
 	. = KIMAGE_VADDR + TEXT_OFFSET;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-11-keescook%40chromium.org.
