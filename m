Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6OISL4QKGQERZKPXKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A57E4234DEF
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:42 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id j13sf12403301qvi.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236921; cv=pass;
        d=google.com; s=arc-20160816;
        b=z7uC6TOof/RxeEakI0Xaj35/fHExeelRawh1PodIvwikFcC3/mSqN/eeZqKzurNmhA
         LdIgB5g58YAaMbAhg7qHRQT+4kY0a4C+F+thL7wdVMYAQDev58zzPQduKfI9kgQGJ5or
         BshbK5kPiLBZcKbsgsWAHBY3CA3Q7nn1/2ROXA5hwIXKZVGzG15xB6s0Wt3zqsrMNbw2
         pek7ZwQDHUUYlBVlRaWng0cTRxi/mf2SraBwMQ6M0tbVoZ1B21BlKH7KL0C1KyAs4JRf
         okRmr1LxLlq08KBo+LWXm/otkFFN3jpvcheJ41WfVs73izH9BN09uVYitRuxV08P3RSy
         bb3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=D953k9mkBmuVvxN7rJExBbT7Mh1oZBtdSEmvnOKeKEM=;
        b=GDO3UPf8GrSMQ1C5r9EyIOQh6NX6/GaUStqT8Ixfj4kJ2esJtn4quL1zY1yvBKhClY
         gWyob/d9yoBr7FK0yReCZnR5kB4E8GdnidhjUSgXKAxLgsDIlbBeL51sO58pp3DfUyi6
         rmW8iwy1y0QSZPdm5B/crkFoeAe2VliIQowg2DqiKhnwZzW9vKVuaL/ClHNy/9ppzFH/
         0TDhkBLbtHSMsY/MoiQeuj5XjcynAWi/Dq+8kUNEo2EgPe1g2zRQRKU6vu4xgWvG2ox/
         V03d+P9fWrtONs0ctlYYtcDsjBFHUV7jfzJvGBshdaAOFi15XVrM3FTmsG1DKhfN054U
         AJMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QTiM18PS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D953k9mkBmuVvxN7rJExBbT7Mh1oZBtdSEmvnOKeKEM=;
        b=es4lQhTLHS58XqkwnKcLtH2Vj0R4sbblPfn797KCE/ZRJfcE0Jd+Laj0IJG9yOuzxg
         5Tk1h6Vxtt69zZf+yb13AjPMvXy+u7RNRZ5P7jJY3xftkQB/HVwKIhSYPvJx7XMKDEUx
         rAaraXkzoaDaUWsY1fQ7wQNRCb5ukVdK+98q0BB+WWzMgQxN8wmXnXEELSnZBD/UdvUF
         frjJoxfMmVj8/qdUav3sARvzVFwzOddF02zlkTRSaMGF1jSwDNybEg1okw3nsZ0Nm4xa
         fT30Npe6rKCbLI2UslJWiV04UIKkeMBPDoR/RSIH6RONyH4Vu8/GIQJuXDJOFCje0RdZ
         Ofnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D953k9mkBmuVvxN7rJExBbT7Mh1oZBtdSEmvnOKeKEM=;
        b=TJ8T3bTjVEje/BzBJ1t6R3Mu7iPCilHfHrL+pS/a5OcGFkWXCC7eaUcX3RBJIy9b4M
         34gCOY+i7bAADR/cLrFKY+Fu5PZXqm0o0HIU9UJfsF28PS1oATtMho37Eh/+aa3ZuB+u
         c48CY3dFud1kitaKfbMNp+Jh7g0jpbTbXKVQ/SThG/n4fEGtfdh/Umtpzk9+w4Se1VeW
         xAVSZo47+/zUQgI4hzwZpqIQKb0KMGlCNJp353msxPBiVpCRKQB6y7yZ5USeBkip2nkh
         VKE+B8lwUtHYbVDAOWDa08YnbqHMQ1f/IeYaWPYpikhYyj6kv6baaxzOkb6jg1LZZx4k
         yE0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NX7uSFkMf+DSrBz3Be2dIshCEvyAXvNzug+hFm90T4VNP6D17
	DMMWShizBU/sYSGpVQIeJiA=
X-Google-Smtp-Source: ABdhPJzzNI5qY9G1f5XBsNrQL8R8CHw8B1btPZg787Dt7pSMixLQHEoX4l3UUTGFOJMl0Z4lqMv3vQ==
X-Received: by 2002:ac8:7181:: with SMTP id w1mr6095790qto.172.1596236921597;
        Fri, 31 Jul 2020 16:08:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:7d2:: with SMTP id bb18ls2532378qvb.6.gmail; Fri,
 31 Jul 2020 16:08:41 -0700 (PDT)
X-Received: by 2002:ad4:44f2:: with SMTP id p18mr6332626qvt.137.1596236921259;
        Fri, 31 Jul 2020 16:08:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236921; cv=none;
        d=google.com; s=arc-20160816;
        b=KGt+AXq9pdyL/eCGKOD8d08+h7ImDHUQi3S0AjxRM9Fn5uDqQ8b2TAXFEGCUY1ZAHv
         EKbHO/WRZCQnTfpawv/tqeW5442z4DHgXSoNYUTmdUik16KiOzh9IvZP3FdOhu3SVtaz
         FOTiUsYTooe3IP5KkHQvB0bfubQnp1jEmQgxCg1NGf4/XIfGMizVCaVhXGeEJ14qwz4+
         bZRGOVf28+HhHb34XSU396saZbEE9EqQcvMkx3mmade/4JMx6WMTNvYkz4NNw95Wh7Qa
         Cqv0ejlp1JaTFsF2e9wCGCV3sUaWXxxc2lyT0eC3IdyMekQG/etAyLYgJmiPMNMeBvJu
         50oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=p43AFz9HRqud3tDDBCvs6KJ6+7J0/pvbtdYqvC8Rrnc=;
        b=cF4sjn28LUeNC0pB3zjYpbJEo/4lzddaV7RKrj+dr23oxg0Ik4sWoC4b2zGm75tf5x
         jA7oR5ZlyEdQQ/VNy6EBjy6jUGcd7jLR0OUdUR5M9DJ5d2+HMXGvhgNZxB4EjMZlMolp
         tg8m6CK+vTzpzSfZC7G8ACdT9H1sV5zrSVvp7YhgYRcsEpz+QLXDNZcfK2mK/3Fx2XaT
         3p6yvleDfhzZWkOkI5BUGzCG1/19frqa8AcXdN5YViNzCZAiVmqYtaHPwgsDWWs56ShW
         G9nYyGSAKg7c7FwC+S9HbQZ5WuFGLIA3ClTqzsKEH2t2v8OsqiKkW5245tup1j6ECuhx
         5qQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QTiM18PS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id w195si483133qka.7.2020.07.31.16.08.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id e4so4840654pjd.0
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:41 -0700 (PDT)
X-Received: by 2002:a17:902:8a85:: with SMTP id p5mr5440472plo.89.1596236920452;
        Fri, 31 Jul 2020 16:08:40 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e26sm7106873pfj.197.2020.07.31.16.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:36 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
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
Subject: [PATCH v5 09/36] vmlinux.lds.h: Add .gnu.version* to COMMON_DISCARDS
Date: Fri, 31 Jul 2020 16:07:53 -0700
Message-Id: <20200731230820.1742553-10-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QTiM18PS;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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

For vmlinux linking, no architecture uses the .gnu.version* sections,
so remove it via the COMMON_DISCARDS macro in preparation for adding
--orphan-handling=warn more widely. This is a work-around for what
appears to be a bug[1] in ld.bfd which warns for this synthetic section
even when none is found in input objects, and even when no section is
emitted for an output object[2].

[1] https://sourceware.org/bugzilla/show_bug.cgi?id=26153
[2] https://lore.kernel.org/lkml/202006221524.CEB86E036B@keescook/

Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index ff65a20faf4c..22985cf02130 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -933,7 +933,9 @@
 #define COMMON_DISCARDS							\
 	*(.discard)							\
 	*(.discard.*)							\
-	*(.modinfo)
+	*(.modinfo)							\
+	/* ld.bfd warns about .gnu.version* even when not emitted */	\
+	*(.gnu.version*)						\
 
 #define DISCARDS							\
 	/DISCARD/ : {							\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-10-keescook%40chromium.org.
