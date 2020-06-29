Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTMP433QKGQEXEDMZSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4205E20CCB6
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:54 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id p124sf770729vsp.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411533; cv=pass;
        d=google.com; s=arc-20160816;
        b=kPJ7W3FLhYTTGah/ST90BAKWGpJ8VJCVHZxhKIAj3OMxpWwgAF2DYClFJxJMFQW5eT
         Bc4mD5LR1pVZpz3vvuwS3C04FXmjfQ8A6PCfG5C17A5AUt8reQbWGe43GiQA4D+JMLg0
         pBWUIrIoLVYVVPgowEpklanIMptIQZuJy7M8dkhua3iuVGpsiidXpp5W0HFVoC7qHEaP
         1Ldz9vdhGZ09+hcA1ZleckJiqLlJdF5kq4Qbh74ARbVN7NETnaUW2HKjAQoTtWwuf033
         z3lLX6frmO+Htw9hwjuJoZyt45tEewQ/GPQu2DDvEcXQklsHcDH4r9i29d3x1nze5L8d
         5+Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=70NYrG2Sm3SEo7h8RimVqsIDUqH0mnN9WuFsCi3n39c=;
        b=fls1criWTXL8JPZKW7ggFMcVLU0MWLbog0VHgC4wwDqyXg/lkm1jd+bHn/9BTL+PVN
         UZ8YL+jwwtropSUoctsuqfii/HKtNCvct1sT87wZzCz3eaRQmgwnZSiylqjnVzPt0osX
         kzgxWS8u+uKLOl8rQsVai9NGlDF+3yvAsTiAAh6vlwgOp6CVSBjzdIekJ+2XqDqfYhw4
         omJBENCXKxKjTafN1GlKcz4I+g0totFcjUnOSoKeRVzD5EyuotWChtd71m2GppZEKQP/
         pqZQBSsOaB6f7oO9IvsEikgidi1092wHgq2JBmcRgUrE63FIpytAAlS0gAXztd1FiDJt
         3YIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EwIeltjG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=70NYrG2Sm3SEo7h8RimVqsIDUqH0mnN9WuFsCi3n39c=;
        b=UYGKTV5vcbmvvkHbvinso7TlqWilKmF4XSiL1nmMkmooGw2znv1hfSFJxWWJMGU1Gi
         E6pU3MksproJZTC9obrZr31LaUk9VOM46kmx3JL21eEuGvPzBQcd3IneuxAJe732rkUC
         0u0jxNIeNHkda3lvd1uRXZZASu51FeVdGPjtra9Uh5MlTSIDtoEgfNsonVDKYoGaLPKg
         gQvolT+caZiUDD+X8ikd6VyduSzIwdLbrYyuyHfAAGRvaZqgNOWA5VoqBfFNjujzx0uD
         aO3lpQT/QE/xyTpl/eaYMIOisBUUdb2QbEBKEv4KAtCh2zQhDoOJ7amB7lKbSIZXAsQZ
         8IsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=70NYrG2Sm3SEo7h8RimVqsIDUqH0mnN9WuFsCi3n39c=;
        b=KTv44jpeieaN40kwBoz+mUWplwoE/jEg+ge+BmjFnkawMjYsFuJNCERj9jVeEfZsp9
         qQk9FhGboSaxTGyplxpo1p8edYrf5AryMm+PhrHLkSQiEFr0mICaumRFKKKMzhNDOhxX
         GLskTV1HtSbOKQBaq5IKtOSaxl6sUPfx13CRgPi+3AK4qV3U2T5vS6iIrbPzYp7JadMO
         prjH01LZsl8RC9CoIugLAq5426VaU0ForBBxsgYyqqsw0acDkF7f6EIHZjw3mrh27MKV
         wBZbln0dRm3fG5OHrbTQYnB0hGMUyxQZmAYxksy5CbWDyEIDtBnEWfh+lDLvscYDG9YZ
         agsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wMkoURFejgtNR+jocCGeQqC+4Lir4EIzheoxvdbKkopgFEqhS
	T9EGI5VhDz2Mqwk+CA997LI=
X-Google-Smtp-Source: ABdhPJws4zBaggJNWJJa/BF7qNWnij60e9WA6K+7bZuSKP7AqZNDtJbpdpzadnHJrhwwHdjCH8G8og==
X-Received: by 2002:a67:8c09:: with SMTP id o9mr10360375vsd.23.1593411533283;
        Sun, 28 Jun 2020 23:18:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2787:: with SMTP id t7ls246238uap.11.gmail; Sun, 28 Jun
 2020 23:18:53 -0700 (PDT)
X-Received: by 2002:a9f:3184:: with SMTP id v4mr392500uad.68.1593411532956;
        Sun, 28 Jun 2020 23:18:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411532; cv=none;
        d=google.com; s=arc-20160816;
        b=KQnYySh+tE82XHzJlBZADKtmpzhd7YfcbZnpKPab63V07KBz/Cpp2VNLC7T/8dtiIF
         AvmzPZQVaPP98KvMEfATGekp6Bh9vPhfCRXk/K6CsElLp9fAnme9+kkV1BwBUk/Ky/kR
         GdkQ6ELtswghHG5WhbNPyasThdt14v5dChUP62wWbQ/V8UpQoFofsp10aZdUeRaTH7M2
         KvrXpJwOWOggO/5sYsIAGAXFXQeHpU9m+h4RSU1Oq2sUSbjIKHFhq8V3h5tMRQr70qu6
         VKg0VNVxj/NeW1IDAAak4hYHYzq+oKQkgqEeqGoMG71E+h73OHc2YancfYadvcvDvz0H
         09SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=l2gkWNX3d66L/hKh2STsGvUucTtZJRcz4r/ewyLA14w=;
        b=mf2JHpSaiOz2W6BmW8dhC9rmWCZVlBgSLrDWuSrkLb2wqWORqGnPxFoK91LzGPKl/M
         E9JIp2NSnyeU3eDZ9yVVRrY04DJqvX8+nCs3jGGGZGbDZB6z424ORWfE9LapTqREOQsG
         Hw4qTjirdUPL17TFw/zx1IX9AFPC+0g7cdH+gSRPBHGP+QYMGiHmc84CYnQ4rVhxYnR4
         L7DlvJ+aVCPus+HxElnbUNrZ0gj0KhdzoroPyi6V775nk3VP2ciyJQVaF86MRMJlbPMe
         UVlv0O3CgAXQJSpGJdyiUL1YCDk0Jh306hSJjl2cz3+6s5H6D8i8dsyShkE1WoP5q7MB
         emAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EwIeltjG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id y197si1022224vky.3.2020.06.28.23.18.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id e9so7813527pgo.9
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:52 -0700 (PDT)
X-Received: by 2002:a63:7802:: with SMTP id t2mr9139650pgc.421.1593411532102;
        Sun, 28 Jun 2020 23:18:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d25sm28162513pgn.2.2020.06.28.23.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:48 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
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
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 09/17] arm64/build: Remove .eh_frame* sections due to unwind tables
Date: Sun, 28 Jun 2020 23:18:32 -0700
Message-Id: <20200629061840.4065483-10-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=EwIeltjG;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
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

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Makefile | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index a0d94d063fa8..895486606f74 100644
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
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-10-keescook%40chromium.org.
