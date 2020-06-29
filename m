Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSUP433QKGQEL3R4L4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2630120CCB1
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:51 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id o71sf4634870vsd.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411530; cv=pass;
        d=google.com; s=arc-20160816;
        b=mVtJ3KSF0pCySFt6aDcSjiK8mB7D0TAjEcPW9j8bJRWv7fkTHFPypgy4SGcYM9l6ll
         /x8hyDNrZxmedilwD5md69w5wPdrKaCCOYE+qHrC92TDsWcZRKKScRQpzLuGB0jdErju
         1sJyMZo0/Y5OpNSbgTlKgW667d4i5fi/hL3Edm/x0dT0atsKSKyWE3lSDOAyJ8T2L3G0
         jkXFUAX7d8/jdFCOMERiSyfntbaLl/6HFsqH0q4pyWM8maQ8ONPHWiNdBx+cdVnseber
         QbYyC30YYP+HZ5xtl6q/KCW7mybo9PRtseXkATOgSN3Jj6YqXURndSE9XjC5lBNujUz0
         bKiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Zg1HUWCB4LdTBPBfoqpHDhNOU0NyLkguSaPvR+KWNlU=;
        b=ng/+cAAIYMX/79OppBXEfGP8AuHLsXKHHQjJGC4sZC2T2adQeMXAjsdUFC98qWBHT8
         hxwMs8EmTaMPvXp9NRnRJrx/rjJMYZYHgVJXrz+EV1REVWOCQCnCqG9gsWUoE7OVBotb
         HDqjJC59tb2PRxxZKUGNy0hIRMN1WICppKlvHIikLLMlnufwsCCnrf9FzvnXzincf+Sy
         j1P2W3wMa3vl0dYsZunELgGHwDo3luX6/4KRKMp31cXCyxymss3Ovu2QU+cyH38raJwx
         Y0aRSQm6womGtxM1eiN2usPDW1RSfmtKEa7AAYxx+TKqaQ/gRDXxNIK0PSSjxYxYibL1
         URaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gkyZjcRb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zg1HUWCB4LdTBPBfoqpHDhNOU0NyLkguSaPvR+KWNlU=;
        b=LXyBF52dhNIUWD0RDJkikd/tHVC7zMGx0uYLjKysb5dcmkDIJYDv0fNIIWw42m0biy
         vMZOcu5PrGYA9caIyYMdXV7T4BSf0TRayNJqvb/OZ91fZ2HTxikviJTcRcLur/FCG9ox
         /KbENapAOmSUSVkDnd8gHUAOAcvd/Udnt8sze4T3gOovBvxOC1Hw1ob9L28n+3kXDHiF
         R/xeSC4ea+PX6B+RcsmjGPG54AAc251LJRZ1M7427ctdcNojmc+J4FtZr33WrM3xQyET
         0To7sOH3nXA3f/RlDwH8OXrjJ7EX+SoGue6ySdlAH3TdmCccJ7jF+LGD8AQcmTzGjzeI
         tSJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zg1HUWCB4LdTBPBfoqpHDhNOU0NyLkguSaPvR+KWNlU=;
        b=XN4UNvBi4OrxjwR0h//jSsz4d3jMOEHJP3IUOtl0tOPi5vwewpkiNrRcOenIBp76xS
         mpA20TsuLE64oS1otB34+fPBX7eIERHN8WGOJ8EzA1q5JKeFoeb4pk0Veis8xC+WNC7R
         rrFIeRF/NRj9okgnCgQpDpW7+f6lsWcCwBKJSSf4rYuMP1R9twsfUbnr5xVKuqIRe7tQ
         aREc7jsiZWOWxfSBXZ7VGXMUSYKy6XJiVl6b1TT/nNWlINGZi0GnGyVvRO2n/pl0GZcx
         PNWcbAykLxIFE2JhrRfHI/r8mf3og55KuwuxuoKWn0ZVHcIsp0zIKP78lBD9b5Ucq4RE
         w+Bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PQiBWdU+zavs/yU83dHhOkwRBLmquc+Uushk/ifFxDSQAk/Ig
	izMIuyRww8fRkJSFP2jHK9A=
X-Google-Smtp-Source: ABdhPJzyBXXvlFA2LTqIO+dfHMDzW48Qqj+XpsoS/aXkAidEeFz5nsRmHa4/iIggBWz7grr4Da6SLw==
X-Received: by 2002:a67:f444:: with SMTP id r4mr10318779vsn.6.1593411530216;
        Sun, 28 Jun 2020 23:18:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a04a:: with SMTP id j71ls712975vke.3.gmail; Sun, 28 Jun
 2020 23:18:49 -0700 (PDT)
X-Received: by 2002:a1f:ab96:: with SMTP id u144mr8713744vke.76.1593411529872;
        Sun, 28 Jun 2020 23:18:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411529; cv=none;
        d=google.com; s=arc-20160816;
        b=XuFV7JKiaRqdwXN9mQMRUMT3tP64KNEKeuT1o1pS7y3vad97Muj1hkfPxrZC4wNyq5
         NtaLoHKqrIYSPd1GdGgkLlCL3c2jKD9hUNnbnU3O+Da2Lk/k2FJ0hAoObkoUw+QIzHVq
         EBVkLoZpdcVIvzL/KDeHH4YlNnsBlc3wvGgHeMaI2yF6s9pkjDDUeq8NviHNLuSAczF6
         lsjJ7VL6RiCp+Sn+oGLgDmvNMyjUuUIeUoYISwaN9ETU9r9Y0JcuwLSI8fNUlQT6DWCa
         1PTGmGQQbKiPE+WKdp0fid792PUe2qv9/anpS2N+flCwP/seC78YqespagX5yTuMRQPT
         67Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6elEkxiTC64v4srgfUTdZozPZdv37lYm4BTjSvBzmZk=;
        b=HifvnoaV1pLH8whnfjbwer7JC7TCDIjqm2oDeVC6m7qmV6yoDLjHm0ngAXq2H/zJkO
         29D9MGE/JJgGbVUFd2gJXDImfCwmhw8evP3VZ3oNETwHseEbZiJDsgivki79ukcRGshj
         yddMAswYmISvAR552AekFMfVB+n/sN+SpFgFAVvZ8zoBsTu+IfBrIZDMd4KWRT8Sykc0
         5g31Af8CqXO15dLDaqfTaZkaPKvzYdyDA+Pno5CWq/UMtSmWWooRuy7/E5zHTDld+zMt
         gEdQR3Vu9tlaQxmBCLeZVtM1BMGPuT2XuIJ69S2xhGSxuJXXZMpIbnilbDTRb06oO0po
         E73A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gkyZjcRb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t24si2019544uaq.0.2020.06.28.23.18.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id g67so6928718pgc.8
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:49 -0700 (PDT)
X-Received: by 2002:a62:f24b:: with SMTP id y11mr12809730pfl.85.1593411528989;
        Sun, 28 Jun 2020 23:18:48 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f18sm15312315pgv.84.2020.06.28.23.18.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Dave Martin <Dave.Martin@arm.com>,
	clang-built-linux@googlegroups.com,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
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
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 05/17] ctype: Work around Clang -mbranch-protection=none bug
Date: Sun, 28 Jun 2020 23:18:28 -0700
Message-Id: <20200629061840.4065483-6-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gkyZjcRb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

In preparation for building efi/libstub with -mbranch-protection=none
(EFI does not support branch protection features[1]), add no-op code
to work around a Clang bug that emits an unwanted .note.gnu.property
section for object files without code[2].

[1] https://lore.kernel.org/lkml/CAMj1kXHck12juGi=E=P4hWP_8vQhQ+-x3vBMc3TGeRWdQ-XkxQ@mail.gmail.com
[2] https://bugs.llvm.org/show_bug.cgi?id=46480

Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Will Deacon <will@kernel.org>
Cc: Dave Martin <Dave.Martin@arm.com>
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/ctype.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/lib/ctype.c b/lib/ctype.c
index c819fe269eb2..21245ed57d90 100644
--- a/lib/ctype.c
+++ b/lib/ctype.c
@@ -36,3 +36,13 @@ _L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,_L,	/* 224-239 */
 _L,_L,_L,_L,_L,_L,_L,_P,_L,_L,_L,_L,_L,_L,_L,_L};	/* 240-255 */
 
 EXPORT_SYMBOL(_ctype);
+
+/*
+ * Clang will generate .note.gnu.property sections for object files
+ * without code, even in the presence of -mbranch-protection=none.
+ * To work around this, define an unused static function.
+ * https://bugs.llvm.org/show_bug.cgi?id=46480
+ */
+#ifdef CONFIG_CC_IS_CLANG
+void __maybe_unused __clang_needs_code_here(void) { }
+#endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-6-keescook%40chromium.org.
