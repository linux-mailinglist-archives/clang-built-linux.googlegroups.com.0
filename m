Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRMP433QKGQE66ZY25Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1426520CCAC
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:47 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id h15sf10384320ioj.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411525; cv=pass;
        d=google.com; s=arc-20160816;
        b=R25/y99tKBlgnQZDIt3FnGSuU0A49/9Se/Czv4oNv7XeT1Zf01mhNkGINkQXzvfr29
         9r6S097QqSxVenG0Pb4gcvf9vsWQ7U5v6DALqLOTCCbkx7+O9ZSOb4NjuXsfVyXfezWp
         NU17RZ7Nv0O0whBPZmZhD/awQCRWz1ZDDi77SVzwli6pFvTjtMDf8fq2xLHUdOpvUV4v
         tE9uPkxRO9R+SXN8b99e+jNwPgKewYZ+qj7iBhC/aif5Qy0C0lezRmuoTFbRo9CvKcPD
         ldKKHdydLE3G6ZYUIq2ghCtSwrlJaSa2w8MUnkd1yZOzNOSw4xlrYgvWKGg7J+a6FKnw
         7uWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8dKNpIB1kONcDhoTUESZ/LRoILrSBhPAB45XdUxl7fE=;
        b=Eg1Wz7Lsgv8i7Xds4gAblYAV1u+d52hTONqzPmeQNYNNQCAcxAMQDd6q2Y17R2wef3
         0DBYk/tZzb9kt54lSwjAQDBB1gD8Mr6bdmhtKIiuIntK2UgHa8wWAe1VqNCviuTK9ufk
         0DFKcKb0gbtGNTpWjdo8UI9FvsVKa3F0q1ovMq8NWWDfuNeEShSPpmrkHMAA8H4ww5lE
         A4HcXQ/qINHeZC8CJRVXTygQ6pMSgWIV5tWHsfhxUGvUrvCPVuipksV4mkmUCTaJgFdN
         qLoGL34eFjqfXu6gvYZTDV8KpbC6J9mok62zpQ9yx1z8d8xEMOW8YhU80dctRtkRKa9R
         8SBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="UGuj7q/W";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8dKNpIB1kONcDhoTUESZ/LRoILrSBhPAB45XdUxl7fE=;
        b=WURTZYkNFXgO7RjGgT7D7BubmriZ+EMdCRl+GK2NY0yuAYl2+uJl8agVTa+KMHC1kR
         RdJ0AzTs1NpIMrrqe8RthvH6/5s4QjSy1lUzKMwlGymfTsBFkpyaIs/pQPk/R7et8ojn
         c8+ZehdWZA5ghIIIUK2l+5eHLsZ4V60fJwspBE6ZrWdCHPwbMLa4/6LlAOI8GMm+mo0+
         RH+bNL1as1FsUKwJgLoxHkVplHGE1LuTWDZ7X0DoC5H+n9qfKFwqzrJwrSDTUvJ5+C5f
         P2lEamAWMj+485PBVPN7IBug2bKnOIvXI4vtH2z9UMkruUmKUJ0JgMu2Lje/8SCPX8nK
         q6UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8dKNpIB1kONcDhoTUESZ/LRoILrSBhPAB45XdUxl7fE=;
        b=dt+ZLZWrU6HiBfJq5B+79uYVk0Tgrep/956YDNDVYYDD+Y+BoC0N4AtXLAR49bhF3q
         6e4xmAEwlvhLDip+94lmfk5hsVWeU6NU3o2kgqrPw+RvxvYeVmnZkjEPmUmKVVyTgFuO
         DZf2sbI9l6jfg8soL8aLSEuQ9MJgODMrpr3gOiHYMnSZ9LB8/6CIWYpgbV0oGlXpeg3J
         gIvlgzVuPe8hKcooomFQ9C1xZOMZWc+Ks3UqmG182Ak10ggItkKD+G8+ZLBG7ckSQUEc
         HhHBHIllMUKzukmwK27Cn3ay9YotIcwhI8xxU/nvwZ/8N9vgVwnGZbFw8Xq5g9+KRnVN
         kWXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JT5SiftEVoFwZd64sEsd/HlZQ+KkEDsiVGenCTnS4SzBy9JDX
	y3KRUkjELuTh2nLUE5NOM7I=
X-Google-Smtp-Source: ABdhPJzDbdKjT+FD8rLx6MAb3jPjZiYc0fanQ+VkcRe1iqoOOYgRlDDBMi/oPW8y/G+lHuinlDJMuw==
X-Received: by 2002:a92:7b0b:: with SMTP id w11mr14436822ilc.116.1593411525642;
        Sun, 28 Jun 2020 23:18:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:89d8:: with SMTP id w85ls4141181ilk.9.gmail; Sun, 28 Jun
 2020 23:18:45 -0700 (PDT)
X-Received: by 2002:a92:96c7:: with SMTP id g190mr6609643ilh.252.1593411525390;
        Sun, 28 Jun 2020 23:18:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411525; cv=none;
        d=google.com; s=arc-20160816;
        b=Dn2j7iqqmbE6tucd0jT3ig0KRdRaJkS7Bo7Co7DOC65Z59L9E/IV0AnBzbbZvmbUsO
         jF7IaU7ytIlKiJ7qWeI3YvrfCYdn2xJNeU4iOBfG9sjlA1wgNXqQDF5OykrpMOsgx88M
         rIJrMXCjtNXedZmbYvd+FPl5sS0EtJvcVMDarHt4NRD10xReGJpV/D8xIyFHimVNp3lJ
         DzNkfKih0fftiYj5nswFa3eiV3EALCrF/OTO9duTYuqq1rE76AIxmX7RdookGHkh7p93
         x12/4AZOKdAJSKW6bctSVQjg7gr28vykmiKA3c5oI0XI7y8Wa8BpeaYxOtREk1N8VCc1
         I87g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JYEfxa7OKW4v9GzIhRwTOUIFBqV9srsfVDhYF/BxOH4=;
        b=k9FR7I9MbPsfCj4yIlS6FiMCz8stb/G/I5tDud0EqfaxXsbuWmxPXbMx1Mo3n5fA6u
         o1Q6qSpgl1UOhkOvvjLvYaMG1F+0TSz32r2UR6Z78ofaKyNHb0/mMc7YwpTNDGPILzFk
         hXAI/P11syxxE9OQeaW1SiS9I3QZxExooYtWocybSZBHY7mIJdBWt/kSdVqYvAAq+U1t
         hyx184r2r5uWOK4VlUc7jgrEsewcz/J5zPtphXl26KsHKsnSWrtf2DAGoK1GqGDSaQjg
         N+rRJ+/TNxR0WQS6Gu76rFtEA/P9AxSlsl28NtnbijThFQkiM8Q2ZzjJi9dkZiCDbbH1
         LPtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="UGuj7q/W";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id f15si1290201ilr.0.2020.06.28.23.18.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id q17so7445705pfu.8
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:45 -0700 (PDT)
X-Received: by 2002:a05:6a00:148c:: with SMTP id v12mr12987122pfu.171.1593411524779;
        Sun, 28 Jun 2020 23:18:44 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o207sm33243245pfd.56.2020.06.28.23.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:43 -0700 (PDT)
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
Subject: [PATCH v4 02/17] vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted sections
Date: Sun, 28 Jun 2020 23:18:25 -0700
Message-Id: <20200629061840.4065483-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="UGuj7q/W";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441
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

KASAN (-fsanitize=kernel-address) and KCSAN (-fsanitize=thread) produce
unwanted[1] .eh_frame and .init_array.* sections. Add them to DISCARDS,
except with CONFIG_CONSTRUCTORS, which wants to keep .init_array.*
sections.

[1] https://bugs.llvm.org/show_bug.cgi?id=46478

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 1248a206be8d..e53a2d4f47f6 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -927,10 +927,30 @@
 	EXIT_DATA
 #endif
 
+/*
+ * Clang's -fsanitize=kernel-address and -fsanitize=thread produce
+ * unwanted sections (.eh_frame and .init_array.*), but
+ * CONFIG_CONSTRUCTORS wants to keep any .init_array.* sections.
+ * https://bugs.llvm.org/show_bug.cgi?id=46478
+ */
+#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
+# ifdef CONFIG_CONSTRUCTORS
+#  define KASAN_DISCARDS						\
+	*(.eh_frame)
+# else
+#  define KASAN_DISCARDS						\
+	*(.init_array) *(.init_array.*)					\
+	*(.eh_frame)
+# endif
+#else
+# define KASAN_DISCARDS
+#endif
+
 #define DISCARDS							\
 	/DISCARD/ : {							\
 	EXIT_DISCARDS							\
 	EXIT_CALL							\
+	KASAN_DISCARDS							\
 	*(.discard)							\
 	*(.discard.*)							\
 	*(.modinfo)							\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-3-keescook%40chromium.org.
