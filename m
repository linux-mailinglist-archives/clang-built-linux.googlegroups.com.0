Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBUUT433QKGQEB6LGBGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F6720CCC4
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:27:31 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id t16sf9409525plr.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:27:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593412050; cv=pass;
        d=google.com; s=arc-20160816;
        b=GCtFiu4xxG3aE0tr7dlrxbhclwnyv4JgCjAm4gbVNEkwlaBa2ziv7N56x3ddVrVnrM
         s4OAABsZP1FTRcE7BDQoWRHMjtxj7yI/6xhoQ5VcaeyBgmQD2yd+WIstCCXxNKYrvWWI
         OqrWxcWq6S/pBGjJ5NshxiF0s6kH/Nf1AMnBP6RhcS9djlLpr9UTFH/xVQ1oSaUEA+Ty
         z3tg5rqjCwih0QTGSahkW69NHxDIJD5mqhCXqgPvph2qbJetTHXsP6ZXvuzJhqaad+n6
         zpuaI70HS2G0K+9OyDekiYeM2OaqB1xfJlXK7Wn6vOQZ5XHthh2n1nnLwb5Qw9EIUaM+
         0UFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NT3p2pAKyLLnRoOv78zg3XEpHYZDiOmxSHHU9z9yJag=;
        b=lPtEfOOX4cJ23Y+cFDhO9GI77FQyWXdUIVrm7qP1NAszvmddCG/QnAyt2v3DGa90Z6
         kQ5/JCQvbzZYf/2xAUc4KZYSOA4Ru1z5iOuP6vak6lzBNVAugYPh7PhFdFwqvUyzqUtg
         COmsuTR3O70G8mK47Ytyz0ErAwvdnig62HfRM54h7LnTV7SuiwSKZFOBC9z/UHt8JhQR
         j0GGet8dXRfDsGHH5CEn7JcTj0AIFnAv46sxBbSyvVbSdD740gh2u4oDkKgu3eO52lcQ
         /Ow0WCuE/kihqsdSdNQDhvunLOwHzdSccJ3sEnB8cVsDCB+o27oAPDXlvQkfr5JFzD7g
         tZ7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jRyLPLKJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NT3p2pAKyLLnRoOv78zg3XEpHYZDiOmxSHHU9z9yJag=;
        b=CHjOfOlpagyw9GLklXLeMSUcT3FRAAz12U47hjPUhVQ3SeQyp7nxMuTrbdW4DiDzUu
         7Ukbzbpven5kJn6667RbWoi7wej0kWkPjbZgyp2G7GBCMKCqJxFNXsr8YE2kbDrENNPG
         1l1eh9A3cdB0u9ZYYWGdv9Ki0g0ZeqXDzjjwqHtObvUW/RH34ib4h3vbDC9RAgmrPjU+
         LhnrU51PkIY0Od3VWr/BcC5Nx7UJPLrqIVSXfwDFAk7Ps/aO+SiRfGehvRL+sST1fbXE
         jyqWyPb6/EYNfdMM9vcBHU7OA1pI60Y+ZryRk35p4AoykS2tqnTg1Su6fur4cHwmyQ4W
         dm2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NT3p2pAKyLLnRoOv78zg3XEpHYZDiOmxSHHU9z9yJag=;
        b=HDZbxeEjluZzgE/wvptuYJ9i0bV6asa1+S+2dRgfOyIqZ3yGzfYXqlRuFcMRG/aZjc
         l6NJ1J6PTaFYjyHuvEbYiUVEc81rFc1RMN9SUYhmHTz5sUlFOsisJlnLNLbZIijqZrry
         B3sSF8YTJyQ/NQFpcrwYodeQswybWVLhZKx2/QU5AT3O1WIvfa8irwitnvbC40skieJV
         mx836vWQyrCglXQWhV8cPrUefw2IgMPRW+kL6r65bNv8j906o0Qj/A5VJcOcktoNyVSY
         NGQKX8nwHQwIOFnIOvvZKNadBpFNid5gNNAucqeSDQG7EUvKMN97b4Q97/mJqCtGJ9mJ
         3aVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305J7sqgZLnYnSmWL0+lapTe/GKm5uFogeCGu0pdHoN3H3j+bFt
	vwOyLOTHCm7Xs2TpxXmXmjE=
X-Google-Smtp-Source: ABdhPJzxxrrKZNl784Np2e+y3rftn7bFrXJoJpbmnAuiDsWcHsI6LiR4MtITNIgW3rDcq9KJEqyQEg==
X-Received: by 2002:a17:90a:9606:: with SMTP id v6mr13522792pjo.110.1593412050283;
        Sun, 28 Jun 2020 23:27:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:52ca:: with SMTP id z10ls2490175pgp.10.gmail; Sun, 28
 Jun 2020 23:27:29 -0700 (PDT)
X-Received: by 2002:a63:b915:: with SMTP id z21mr9443469pge.145.1593412049849;
        Sun, 28 Jun 2020 23:27:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593412049; cv=none;
        d=google.com; s=arc-20160816;
        b=ikJYsT4EenhBgbyQkCX904wJcRynHBfqPFGBCQyGeniZKzlKFLTvLP2YFle2ZYItFh
         sMwa+4HCTXMfgxNbBahR5/OQ19CFB1VrLP7Wthid482TC+lW4iPIkJgDY4UrlZ4Hmyu4
         N74Ya4j0d1rrbAhpZ1n6QOYqNv5S+icPdyiBk4ZMr8K8TYXz/B1zPi/kiDomXwv4YqDw
         11XcMrC6SXyl222gY+SCsa5UD4BG/0rDmWtjPWtoAs9pLsCXx9qR3L2jNIuSABoiZhyb
         yMEV2WcvvjpgJweOfo1fHhhUJ+cUE52bjgaXfKNgKEhZ/zn/f2MPfpy+XmnB60ZTi5u+
         MK9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OcuGTfSUXtPYMFfpENNYu5S2NR6isuQ9uC03+go4k80=;
        b=zKDTs9KujLDY8wqbHrA6ysYYqsU4OmxGjgc5gGJkA4Y29rrMPa222H3snE+zbHFmAt
         juA8avj3dKa06jroBawO1rlwQ+4PesRjZ/3enNMfKuSxk0CC7O62QaEgaFPC8yovipyK
         of56s9jRtg2tdq9VYxraSj4MfyrM0SiEG3Iltn1T7SxjMylhmBMichvGE1DFtn84VN71
         +i478V66afHKH88yths7z9Cdk50gONLU3JCqOZJr7kY9TNrDs+d8PkupJ3uNwBvG74dY
         QvXXjAtu/Jus1q4Nf0Fo7hIc/rCEAzZJAELQppn2+mqEHHnJOpVlVZaOjvHLKV4/1qke
         ordw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jRyLPLKJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id 1si491880pjs.0.2020.06.28.23.27.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:27:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id g67so6937976pgc.8
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:27:29 -0700 (PDT)
X-Received: by 2002:a62:1646:: with SMTP id 67mr13176339pfw.281.1593412049613;
        Sun, 28 Jun 2020 23:27:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 27sm18066808pjg.19.2020.06.28.23.27.28
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
Subject: [PATCH v4 16/17] x86/build: Warn on orphan section placement
Date: Sun, 28 Jun 2020 23:18:39 -0700
Message-Id: <20200629061840.4065483-17-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jRyLPLKJ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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
index 504d16968ed8..52e2b4952a0b 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -413,6 +413,12 @@ SECTIONS
 	ELF_DETAILS
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-17-keescook%40chromium.org.
