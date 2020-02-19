Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDH7WLZAKGQEQJOE7ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 030D6163C31
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 05:54:38 +0100 (CET)
Received: by mail-yw1-xc40.google.com with SMTP id m3sf11147541ywe.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 20:54:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582088077; cv=pass;
        d=google.com; s=arc-20160816;
        b=pF+BpglAWgFsMubQNeWyta57yRfzAisc81viM4TcPmW+gtA9MqupUz+tcdpYKUWcwJ
         C8tWgebMbn1jfHZ+RCf8cAVRYHYG794WRPwLQ0rtRKDSzNO5zfURnbMJQcgbCEfN1hGU
         0uyUnL/FSJtrhMsdK5jZqo872j3iaDh5YICNzTR6TFJQbTlFcvxyl6w+WzoJLRClJJ01
         nTws6vCmG5UU2OT102kRQt2Zc0f1/9J/1X4UF79uTKfQ5JdA4mI1Hwm3ICpdLylUsN1t
         pXhPlYfY2NklBiu5tl7bpnbZ5KL+sYDZaSkxmY2tkLPzPUENCAKcxCvJvnYaXPFY4R+r
         JhBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=37sBr7ssVhYeuR0tvnO8wpmZSNq9lO7lzRErZxv7MD0=;
        b=K/gHKwchL2xoG1CVuFpk/yF8fol0qVzq2Ec8GRutVzbrXnjRwCPREsoEW8TjwsN7yT
         iDq4Ds4QHWseBWKDmZh/xb9C1JRRdENTrMpJpUqH8GjC3WbYUGMCKdxLiMzQ5GT2gtWe
         JN4AZ6nbL/T++t6e8xjFIGUzb5qotGLaSdyHvmGLDNKCD5PtBMHWz+aHKDe8Xrm16HPS
         r4EYWdCN5AM+xt7eO7WQA1hJMFvDfgD5nLvjuYMRb/9Ll2Z1XLmeYHDkLeHyFvNeoipR
         t9bSsxj4VgpK2KxU0do89QBExP8awO8DG2kSfa15UOyS30kFUY9DZ3OImvSenYBi0wi7
         3PJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J/JOa0IR";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=37sBr7ssVhYeuR0tvnO8wpmZSNq9lO7lzRErZxv7MD0=;
        b=JyU5ov8elm506vo7aL/x8Rzu+ktaPN0fCP5KMHq0l0vgC8SNhRSNR96QfFI7nCWwiE
         UM2wIR9iN3RBmwirOyk/Sqiu4h5YbvdzHYIRqUjS6ew2wRnxKPE03pjg1E17XiWAr9hu
         Hn255iuXHBZNTg+nl5MfnI8bWwHNzbmfzK6+8sf9At5brN/vzJ4/X2eR1jVn2QebYhPm
         xY4TKANEyTcKSBtDMAgzqiPEvCbqguxH6L7vW2rwwqJDpNbjv6iuTNx6t/YjBZ+f9oKu
         edohoTuLAjzhuVVCcintcGi0xpT+BCCB3XaW8PMx/AFSz/Iks8e1dQseOe9wbWPi8I8E
         K01Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=37sBr7ssVhYeuR0tvnO8wpmZSNq9lO7lzRErZxv7MD0=;
        b=ClSLwlPeYhub9S5wuQnemrr3TSuaj4hH942Jwr/Whc0WQE5X7BHWL8If5R9H6xUDNn
         pMa4RddE9ioZbkFdEfnTE8ZCBdSZRVyBd/IBtmjfQgo52hQqabZ85+9b9wV4IkwC32gb
         ZoxrgSmTHD1P697WBi957xHz6thbqpEenabCnx/O+/82a3ohpOoES949nQNfa4PF8nYP
         IPadkD5Dq63mmKWPXCEj3xR44GaE9uWGwM/mvyerdeCftiq06a7YXnQEUGq4HrYlqnqD
         7mVkKvj7EAypOeV10+dazhQklrZgAyd+aab1xO1l478WSfLY/e9i0ROo6P0EJKGidt/x
         zB2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=37sBr7ssVhYeuR0tvnO8wpmZSNq9lO7lzRErZxv7MD0=;
        b=EsC4odS45M8ejz5a4EvwP+KLqgKqzPqGjzYblCLgcTbOTJwNxXqf2xXPqiwFzh3cRD
         i0aLnCcVv2QbeBX1ErvaXMP5NkuUOONbGBu+vDlw+297PbmLg9JuS2CnDFdbsZRC9C7A
         T7NEaZbPeNRlbEFaDqsJN/gP6IqWHTGj9X8L5owu2lgcAJoJPY2DrBtXUz6uUn8UyrTM
         wnvvislMijwmZCinApMUZwWrO4I5UDCiqPvFO6PcWOMDRwlgfaAKEMjZWP0VxMZRPLj0
         uPqw+tV5rl1XoQ8ormKzmntkemq+CC2obXk6BZgEN01ep4H424B0DQRyF7WaoX43njLS
         Or5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXCIaTqEotq6Va5BL4S+QMeITLUnmzEoDzqyA0w0c/Bx8zUzV0K
	SkkHCyNTbRAuLRNB2ItzDLs=
X-Google-Smtp-Source: APXvYqx0ZZgBCtvbotz9LWHRoBEdYv+HJendqKJy80LJGZMRvKpIvX/8dXv7soWzI6CuO10wbBM8JA==
X-Received: by 2002:a25:9d86:: with SMTP id v6mr23191284ybp.214.1582088076979;
        Tue, 18 Feb 2020 20:54:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:4ed5:: with SMTP id c204ls3345721ywb.6.gmail; Tue, 18
 Feb 2020 20:54:36 -0800 (PST)
X-Received: by 2002:a0d:df15:: with SMTP id i21mr20129940ywe.73.1582088076615;
        Tue, 18 Feb 2020 20:54:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582088076; cv=none;
        d=google.com; s=arc-20160816;
        b=bD+ZVbcxmOK2zMv0ud9bmNfkNtpF2KwYw0a5B64HI4QzK9N4nNPs/nQXg1smh1uz1I
         wPVVMVh1gPC4DPeX8VR41LwjevPHtau8kLPYtwKdElFHiO46UALFTDcu6q+unj2b5JQC
         obDUgpvWGAPwIg+3H1Fkl5CYqXyPHLXzys0eV8RGqFE8Tcef2oWvLy5GFYF5WE1DWsSx
         xA/54lWotgvmUeRSpcxDw5gDeycTPK2+j+Wrop43MfKkf/7w72qDnnRaxTkjtpLyVrCR
         HoKzBbPwcI0hnxKfDiJeT65Cpujo0SUB8mAzERT3uM8d/FqDz+BT4Ui52VQi/Dt6h8d4
         O+WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jXMSq1G5rPTXUEP5geAUCtTmXJBdNGAIZfUMzXa3xpk=;
        b=T/A7Eb+hTnqxazIVba37l+o6hHlYcl5Y0vUUBmvyo9xuFJpFkCoKo27dvz2y6QbmMd
         Ng2nWHXANlbdCrHrR42CDw4Mc1jVWhovUrNbvQlBrZQa7VrJqUxpXxU5QE7pZM+gqL/Y
         FrCFjuaASX3cr4p88PIDtkgxVD/8MHL3H1fR6PKQ+2z6mzjg1idKE+iQyS+ZAGdkF1eT
         W4m3pkKrU6m7QbXViiZxfeM6CHPHrDKQ9ZOpeoR31ldyVVU74l3PrchRt4lFJEiN3GpS
         tJBplDGKXtOCF8LikNo6L/a7y7khafz4H+aPGFBKJFzWVWWvoXPX2RUsNSk9n/1R7rkc
         0P7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J/JOa0IR";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id s2si94728ybc.0.2020.02.18.20.54.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 20:54:36 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id g64so21893002otb.13
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 20:54:36 -0800 (PST)
X-Received: by 2002:a9d:6415:: with SMTP id h21mr19176451otl.152.1582088076125;
        Tue, 18 Feb 2020 20:54:36 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c7sm288894otn.81.2020.02.18.20.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 20:54:35 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 5/6] mm: kmemleak: Wrap section comparison in kmemleak_init with COMPARE_SECTIONS
Date: Tue, 18 Feb 2020 21:54:22 -0700
Message-Id: <20200219045423.54190-6-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200219045423.54190-1-natechancellor@gmail.com>
References: <20200219045423.54190-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="J/JOa0IR";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

../mm/kmemleak.c:1950:28: warning: array comparison always evaluates to
a constant [-Wtautological-compare]
        if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
                                  ^
../mm/kmemleak.c:1950:60: warning: array comparison always evaluates to
a constant [-Wtautological-compare]
        if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
                                                                  ^
2 warnings generated.

These are not true arrays, they are linker defined symbols, which are
just addresses so there is not a real issue here. Use the
COMPARE_SECTIONS macro to silence this warning by casting the linker
defined symbols to unsigned long, which keeps the logic the same.

Link: https://github.com/ClangBuiltLinux/linux/issues/765
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 mm/kmemleak.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/mm/kmemleak.c b/mm/kmemleak.c
index aa6832432d6a..e27655526ba7 100644
--- a/mm/kmemleak.c
+++ b/mm/kmemleak.c
@@ -1952,7 +1952,8 @@ void __init kmemleak_init(void)
 	create_object((unsigned long)__bss_start, __bss_stop - __bss_start,
 		      KMEMLEAK_GREY, GFP_ATOMIC);
 	/* only register .data..ro_after_init if not within .data */
-	if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
+	if (COMPARE_SECTIONS(__start_ro_after_init, <, _sdata) ||
+	    COMPARE_SECTIONS(__end_ro_after_init, >, _edata))
 		create_object((unsigned long)__start_ro_after_init,
 			      __end_ro_after_init - __start_ro_after_init,
 			      KMEMLEAK_GREY, GFP_ATOMIC);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219045423.54190-6-natechancellor%40gmail.com.
