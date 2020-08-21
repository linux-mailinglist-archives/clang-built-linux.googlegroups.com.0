Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHOIQD5AKGQEJZGQEMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B78324E0D6
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:30 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id z68sf1542349iof.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039069; cv=pass;
        d=google.com; s=arc-20160816;
        b=PYHQjCgaJ0toVm5D8MKHfiyGirzVMDh15d5mQSFBUoOjys3sZS5//WjGpVLgDrIm80
         s4LdYldOITgwQTlgeUNemW08/XtsTeIq49+VbvgOawFORkjkOOyaoh1An5pzvbXvt5F2
         kKV0DjbPkc9d6z29hNZy4Ecjw3CP37ur4gRKSv7Xcnv7SRB+udjxMVb0ungwTTkDYeSD
         r8X2/0kLcaF6FhATBXZJaWyboKN0wsFKybcwor3h77V77PB5Zvo2JJfWPy6CFjuKRvtt
         9cma/KShoIay5+GdseW+XDqN1q+YKjKY08QIMvd+ln2kJ3i31aO8n8HfqP9tq48d8UYD
         z34g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tbPwLWL+p34LTw39y01aBDqlgS5UJAxwmvvX6kEfvbM=;
        b=zmtNUzoj0QbJGsUn8Q2uJCzrTJO6ML4kYMNeHlueE67RCDJY2u3Kfd395u+wgZqamL
         +s6JRfcgTPNQjkqERQnGBtDn1CM/UaafjF40yhsBysrGVxb0JS0yu8PEtjmgGdr+iL1L
         cYsqSV1Rt6GmtDUTJMzrMP1QXoEZA5DZfWb4Rd1k6E01fF5WLwDxP9ovg3uK0BvotYQk
         UJCh+qCdwEyCqfzNqgnnRrbKHFpmL55BCRHUxQlc87dhTfTjWv3Igv+zcwsX/Q0WV2ZN
         oaEebWNdVf6dM3zVJSQTvD1w9IAHkgyYKtd3VMxN1/ZuOLPaFhUq3yrbSTtUJuC9jO7P
         s1sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JT4pVb10;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tbPwLWL+p34LTw39y01aBDqlgS5UJAxwmvvX6kEfvbM=;
        b=bHzeIPmEMVJVcRuiZMml66oYg9pIR3bNLwSvywffyBMT0tNI0YgdqwSVmT3qxyL4ew
         GXTkNpAGIcoPn5l2CpX6FYt9xP9mCjbGtbbB3Aeqp1PkrZzoMS+XgyWmQBRHKgnUGyjT
         G2cKzN2tq7kuK/qcD1OGnlufDE7LQXNgLKvl2glJ8SpAbMwmve3OUYJ0DiAjvf+c6aI1
         yO1u/E6xZzkJtVFKidwJuo2chRkwCNVbopA0syGNSx1cGxp8So+I8lkDg01FaM4oSiDl
         DSwMLR6VIChsAcHEWfI4aMjuFG3Rjsda0Eg38uIC/jYbwhtIbQVeYF7jGkQKvfgQygts
         FpYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tbPwLWL+p34LTw39y01aBDqlgS5UJAxwmvvX6kEfvbM=;
        b=Rr0BPEDSjD5ncE4/wgdkvmrF9N484PzvmMHk0ITmxK9Sxrhk3uTPpkNuCiLLRv5a6K
         tAKn8FS+gOpyjoAHNQ2tCeH9DwQLV9cC0zHTo4EnMb/c7+fNSHyN5ga2ViFZyXAl4Nbp
         jwNcZHiNHrJ5obVMZ64JpMOHYhy1sMJf56/EM+h9iOeASOiQJKI6c9FRm4G5iUDjwD0z
         8mRWxmvl6MoEteH8W1cEJpsADwQTD85SG9bcIBnxu+pVz3CwQ8P/ZX7pYr514pOvjEHF
         3lmuAFwtHJmiKOpZ4iOdcoSkSUr3QXEtN0/6JCGmhspZxqNxaMRoqgOHsfLg1jysaP6j
         4/pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sSib+ySFJrMsgvmRu8o3l1wiCe7IdtZQ9aDeW4GrwBs8GPlz+
	wGrUQfrpBhaK3mp8EoCknC4=
X-Google-Smtp-Source: ABdhPJylhkAEgNqV427W1qX6wV5Xv+9F8A2a3XGK+nD5OGa0udnoxii6MfINAv0Xn1LPr3tEO2nxhQ==
X-Received: by 2002:a05:6602:58:: with SMTP id z24mr3642244ioz.76.1598039069547;
        Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5210:: with SMTP id g16ls240564ilb.9.gmail; Fri, 21 Aug
 2020 12:44:29 -0700 (PDT)
X-Received: by 2002:a92:a157:: with SMTP id v84mr3586444ili.189.1598039069212;
        Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039069; cv=none;
        d=google.com; s=arc-20160816;
        b=Ul3h0khM/uOuIJl4lHdGgPEihiTKetKfPfyuaAIqrQ+BXHmHlcg3ip7vntmpM1giQO
         bvWl52zmoIspkJtwYAJKPTyAlMsVhfJSU2S4Yf1fYlc+VGG+c5LPZitJdh2E4CiORcVB
         U+/nCIypxABtblPeAYAGvUwwhLtQW2tfmtrjYHkPVmji0AK00Rv93d5rNQKzgyfHV9Qz
         XSp0DU5LLSE4QQAPs+lEv+G+ICLj582DieftKCuLSDzxsR9A+USZnuLx13neayNWOBmU
         w4ijdM8bLX49i8Gvxj7TLYqpnOUBzCL3Z+dbCnSX3V9M3PS50XDnGtonUcuksFgq9GkA
         +7nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0/rE8jJuXRc1airAle0+onivAY85nE0+tqDHT+XyY88=;
        b=HQkClRkVUXgn9p8ehAUqbtFAV0IthZFVuEyFyNUirpQCgkzncpAdic972IVas8BZ03
         aNxLrG0xhtuKfhkFRo2aHPl+DV358/6eV5bIHoMBnXbV9Q+8OFvt869posCQxkJHvynl
         Xwoj2EFkF0bZNdFaP4NLgqVwDdd66gebCCpHEN2ucbvGuDORN6AWkgLrvcoVHR0YpIS0
         +5f9B1S4degSblNp8T6y58jELCiw+PpROvIFMKh9wNXek+tgBxQJj33rlCq2a2I6JLIZ
         uo2loWd0p8qwUbSvgUy6/Ktyuac9RffUMLdfy761EtHSeMu+MN2GiF/b3/YouhXI23s4
         EvEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JT4pVb10;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id z7si120788ilm.3.2020.08.21.12.44.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id y6so1344700plt.3
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:29 -0700 (PDT)
X-Received: by 2002:a17:902:ac84:: with SMTP id h4mr3560297plr.334.1598039068646;
        Fri, 21 Aug 2020 12:44:28 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e125sm3411364pfh.69.2020.08.21.12.44.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:25 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Atish Patra <atish.patra@wdc.com>,
	linux-efi@vger.kernel.org,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 07/29] efi/libstub: Disable -mbranch-protection
Date: Fri, 21 Aug 2020 12:42:48 -0700
Message-Id: <20200821194310.3089815-8-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JT4pVb10;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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

In preparation for adding --orphan-handling=warn to more architectures,
disable -mbranch-protection, as EFI does not yet support it[1].  This was
noticed due to it producing unwanted .note.gnu.property sections (prefixed
with .init due to the objcopy build step).

However, we must also work around a bug in Clang where the section is
still emitted for code-less object files[2], so also remove the section
during the objcopy.

[1] https://lore.kernel.org/lkml/CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com
[2] https://bugs.llvm.org/show_bug.cgi?id=46480

Cc: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Atish Patra <atish.patra@wdc.com>
Cc: linux-efi@vger.kernel.org
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/efi/libstub/Makefile | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 5eefd60917df..0c911e391d75 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -18,7 +18,8 @@ cflags-$(CONFIG_X86)		+= -m$(BITS) -D__KERNEL__ \
 # arm64 uses the full KBUILD_CFLAGS so it's necessary to explicitly
 # disable the stackleak plugin
 cflags-$(CONFIG_ARM64)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
-				   -fpie $(DISABLE_STACKLEAK_PLUGIN)
+				   -fpie $(DISABLE_STACKLEAK_PLUGIN) \
+				   $(call cc-option,-mbranch-protection=none)
 cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
 				   $(call cc-option,-mno-single-pic-base)
@@ -66,6 +67,12 @@ lib-$(CONFIG_X86)		+= x86-stub.o
 CFLAGS_arm32-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
 
+# Even when -mbranch-protection=none is set, Clang will generate a
+# .note.gnu.property for code-less object files (like lib/ctype.c),
+# so work around this by explicitly removing the unwanted section.
+# https://bugs.llvm.org/show_bug.cgi?id=46480
+STUBCOPY_FLAGS-y		+= --remove-section=.note.gnu.property
+
 #
 # For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
 # .bss section, so the .bss section of the EFI stub needs to be included in the
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-8-keescook%40chromium.org.
