Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIWIQD5AKGQEDDALSTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D7524E0DE
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:36 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id a20sf1677470pls.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039074; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZKZaubtwn6AYv6ByIgGM+Vmh60/J5x8izMxXgqEuZ+MpSIEWkBP5wyoMTsKMLPZ6es
         VHSUvwsX8OJta7sAK5P8KQyXtDEFc6xvFijrARgsxVJ7psesBpkngh3L4pU3gADpp+u6
         XIFQvYhRKJyQ4kYfd64l24esSyHLi06blq1sbBeYdytkCS+mKPmQpb4gazs+REFYrlHa
         u+KrCCjl6cXQtH4K082o7xGYCOCWVBbXMZfLNgISILCMwvDeqABM6Us9mBl/1nQPNCs6
         nYUb3O+WdS3PA8PMO0kzvMnOhwWsSvz3ri543cJdqHDBZwdGmVt2x5d6JU6vyi8EVsIo
         q4RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=t5XQX03VlN633FSjlUUtir72HTdAdlT2hHgFzsZjW/I=;
        b=Lka8nkEk8ayfi1eGqU5lPgGC/B35SgAY9w4IkKTvNdLyMqUZbQaX94/wKtLBDt07AH
         CHOfOGdtHVTQJvJRuXEtsLmPGw7i054AsrsTs5FRxqynlizte06D9M2LkUSjoKnjtFIF
         1XSACKWkV4stIaBy2LAS67qddj3rdA+rzKINXdALtJqA/5qdNuoExec2/toz4YxE7V9m
         Mn587cJZMzQvSAOaCYoikzV7IsvbZ5qKyC6smn1DfBNOF/W9Ioh8nI8Q/jvZFLmNFQVr
         5wucaA4ogenaUtl6tkeIpt7r91q56N7ozNGBV+W5QavCq03Lu3L/20BK5S0lfodYX70n
         S4WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nMHBYCD9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t5XQX03VlN633FSjlUUtir72HTdAdlT2hHgFzsZjW/I=;
        b=P+zGo8CTaP2W3k8Z6ZtwEoaGAHP+mJxU6RlRJHy6FXZDfLdLPyXP6AkKF4vvoZ7JIg
         3lkFo3w/HaRCkx7LTXrJgZrRPTw2BiYe5JLb3eXWswjd3DCvTYU+i2eMj1PQAiSAsJIR
         STeLuBbaOpwaw9OeYO+5xgwSuYaRFGoXK/6aAHdcKgg5LKjpCfDguWOSiWraiCTGrBRW
         PJJKoejQJR/i5u+I7Ball1Esxz4331Khw8q/NXyV2MfF2QO2ZnQyqzjX6jLgwGBZCfYV
         f3MXVhfUGffcnQBxv7JpL2ZCktGv9/M/i9unbzPhTfTa+419QywH5mh1/gu7WAn0kAke
         z/KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t5XQX03VlN633FSjlUUtir72HTdAdlT2hHgFzsZjW/I=;
        b=rdjgCCBsDDIDoxwKcnJ13gDobx9YU6ftN8JkehDQWBjJ6IwwgdUnEYpWd5qTa5XatS
         SzdXvCky+1Bmu2BzuP4vlyUmmHn/F0YT9i4RtCxETmdpW+SVreAJVGkiaARhzZ1XgHb1
         eWAGbaspEqJyLuxlo//TZVvx9dJg5VDQMlMc2mZCnP/a16Lg0MG1FLKwbWhwhKsbSiMm
         8gSe+88yi+dwYZZllDLjVrGQg6viZy6Q/wKMxnJIIqgJ5/qpF6iQeR2FsI0sRn5+hwiN
         6dBKFejwBe52SuoeiWnaP1AIOf9+8v2MDlQXS9y7He+Y02ZQTLluz8uWlGGILZiTjd6v
         aMlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gZ5cKTxdsyHD0RQatdCX6TLoKlp9PXY0bXnFAA2l5I3ZWXWpJ
	tgU7mmp/DFnMFKwRB4YMHZY=
X-Google-Smtp-Source: ABdhPJwCWYgSvF4oF2WViukafSr6r0wANeyt924Bkk7Z5uleJBIPNoUwDUqxMkKjnPNO7DUOBw3e1g==
X-Received: by 2002:a63:d143:: with SMTP id c3mr3355039pgj.306.1598039074753;
        Fri, 21 Aug 2020 12:44:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b602:: with SMTP id b2ls1487049pls.11.gmail; Fri, 21
 Aug 2020 12:44:34 -0700 (PDT)
X-Received: by 2002:a17:90a:1b0c:: with SMTP id q12mr3848134pjq.72.1598039074379;
        Fri, 21 Aug 2020 12:44:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039074; cv=none;
        d=google.com; s=arc-20160816;
        b=hH/oO+YoiTKk9GY3k2jtTgMgsO8wCFvHx0y3ij/RxTNfdgXQSsXp/3MHMF9xZY2Dlx
         +SQMS72KWjB5O9ktHSZUkGJH5TgpLsZuKJVw1lxLnYftpUzyetKj7s9lQBq20nQsLPaJ
         QqSOSncMFvE7JviP7z8InqbAO4zzH4NOTr2rohBz/niijbFWNQDNDR+1/AAFB4up8woL
         CFD0w+Ceiol+6LgsSREN2JhsmYanO6zqwMGnJvpVWPDgO0kpaebqTZ2Jn9csXou1JzHR
         cKXtJXgjvW0BvL8Zsr4OY7fGPcK2Vimqvdbj285cxwbyKtX0rQyG/Jt0QFcnWRjkj7cJ
         t61w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Bq/BqxHywJ//unZ/FFsOI/I3RLFn1Ht881hz0pa/nMs=;
        b=wV2xXu+PbfUmhvpGMKd76iiaf2m3cFiv0Sj8jbq9WW/wEVCFJaOolTAVBMK8GwVYWR
         3aijpuHKGnwOmsaG6aHzJBcmLCN8MDmi8lYjMyIHPRxXPKOt0+HijmpViYGLhqP1TeaR
         SAU9fjZ46nuwVqJFacUg1YClmOPorV/iyogo9xfnEHWgJo5o888qLjyclIrCwnoIp/ya
         nhUBP58giYJe7ell7L6ySsj5uC9uJkaCA4icYz71fAvdjyiXO4y7Hg83NqwXr6oChh5H
         c5nW6OTpBv27fMA1tDKcDYUhAydF2zoibuP6bS8J/VY505cOllvCSHV8//YWmxGHLYh5
         O2yA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=nMHBYCD9;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id b21si62614plz.2.2020.08.21.12.44.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id r11so1551881pfl.11
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:34 -0700 (PDT)
X-Received: by 2002:a63:2324:: with SMTP id j36mr3471607pgj.221.1598039074103;
        Fri, 21 Aug 2020 12:44:34 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 132sm3025142pgg.83.2020.08.21.12.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:32 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
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
Subject: [PATCH v6 23/29] x86/build: Enforce an empty .got.plt section
Date: Fri, 21 Aug 2020 12:43:04 -0700
Message-Id: <20200821194310.3089815-24-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200821194310.3089815-1-keescook@chromium.org>
References: <20200821194310.3089815-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=nMHBYCD9;       spf=pass
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

The .got.plt section should always be zero (or filled only with the
linker-generated lazy dispatch entry). Enforce this with an assert and
mark the section as INFO. This is more sensitive than just blindly
discarding the section.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/kernel/vmlinux.lds.S | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 0cc035cb15f1..4b1b936a6e7d 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -414,8 +414,20 @@ SECTIONS
 	ELF_DETAILS
 
 	DISCARDS
-}
 
+	/*
+	 * Make sure that the .got.plt is either completely empty or it
+	 * contains only the lazy dispatch entries.
+	 */
+	.got.plt (INFO) : { *(.got.plt) }
+	ASSERT(SIZEOF(.got.plt) == 0 ||
+#ifdef CONFIG_X86_64
+	       SIZEOF(.got.plt) == 0x18,
+#else
+	       SIZEOF(.got.plt) == 0xc,
+#endif
+	       "Unexpected GOT/PLT entries detected!")
+}
 
 #ifdef CONFIG_X86_32
 /*
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-24-keescook%40chromium.org.
