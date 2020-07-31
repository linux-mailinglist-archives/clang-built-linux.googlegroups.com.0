Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBA6JSL4QKGQEEMY7SVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E02F234E01
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:53 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id l13sf14064153otf.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236932; cv=pass;
        d=google.com; s=arc-20160816;
        b=cLb2cuTW96/k7vHZwVZWy1CUkBWT2EnMStPxg2GTMkMg+IsToCy6J4FD58Xq4gSb2G
         8Zw7brOeQ4hyvUd3cBeFikfZ+TyxU9f/nGhsPNjnXPmZ36uEN4wp2LoHzjnLD0LR6NsH
         2194emkZ7ku4/36iLwJ2uXa9JW++5+/3sWtm/MNzgNUwbjO6SbkmNCPgfYTTaafK5Bq2
         1WRCLFzdsrtzINlMhyNl6tO/N3iLv865ODqxqo72AIFLbKXX77GI13cM9OLRCkYiBmfL
         SRlWFZvGTIvt+ygutLeeuQYAY4bKL+E9FnW+X/85yCLRlBqMQQOoPBjlh3nRDsblCBz4
         ZxUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QSv3XpwEuuFSOT9tnnTfv1z9BQ+JScUnptk3cMh6l3Q=;
        b=x8IOtNjj57fgAkguOrXvr7wZCVmhtIyBLfR1o20/yfUj/gxnTw+x/NrRWiWdlvKXsn
         Kq/++b5YsQnWYGT4LkjFH7qMrxTDEZUAVib+3OsmBdwY4nZ3DqoMlRDp6JJ41FzewBp5
         DV6Hecd422W9QeBTasFihyXcTAZS0RQEXiLeyosaEuBLiWej3l8CAzV/byWKlTB9mt78
         HuPYzmLkv0E0kG6a/eyjFqy4xV6N7rLw1LfeHJSysySPjEIIsZ83JBmfr3Gy73TN8ES9
         nvKIRKLkFjPZ8oeTp6Dt1wuJTnamiJvbI/v6MqKzmm/oLs59q7i1ESnDrJ69jUBipPMu
         0EUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Lr9or3Hp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSv3XpwEuuFSOT9tnnTfv1z9BQ+JScUnptk3cMh6l3Q=;
        b=FpVrhNIOIZUxZcUEVCMe0/H7l8ysUrwVrXqUah09wfDWkBio/IDdR2SvyEDAjDYOno
         50DSVAzb+bhFu7gp1uN5w0Gi5TIiPV7dEyT4F5lQA97Xlleiwp1Od9MsaMq7TuD/6X+0
         yRH/QcvpTlUvFUmtAWKyasFEvHBq0UZGTTGDEibSepOlbdbvXkSsId0JlOIMvTGHqT3m
         IQAPQ49VwMor4E91xnyCGbFZxvhEGKq99YEz4upNknD3Yv2zB+TXVzghZaHrKdJv1ZKA
         krK3t6kwvuUwo5eW7I5M4t6JTiuFbGYWsdCy2qAcl2C6YN5FkQ0eq0sa//NIjFUxSys5
         AHcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSv3XpwEuuFSOT9tnnTfv1z9BQ+JScUnptk3cMh6l3Q=;
        b=ZCRvObIi9bmF59e5SnVohAWWxws4Z90pEQ1yUl60WRXeJgFASxqc9tRTokRVx33Nwc
         +h29xaL2eDH745D+HpK1vyG0ZvOog17NAS10q0EFrTK5IcR+ZB0k8VH6LsVdY1jWRllF
         UoYrQIrziR8vG/3+jb1MU7hf+Cu1823aZqk+bpUYwnKJEcYYpOfVNbyR8YXjz9QfyLRs
         rE2MVMsPNzFlZPh8yp6hzcVdYefcdicNUJnY8FfZvA3IKEr8ofvIJEZ8AKVZrHy31DL/
         VvDdtHmgES7Bz/2oZY3nmDG3NJaXFBpA0RFbKggXrBPV47ut5rD7RSGFW8KPfHCC3zbQ
         /XqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TzMp2Lj9CtXG74TdHnWAZ+qluaU1YzIqymZQmvxj+BBJMsJga
	aQmonDeMZ6WQSRYIQKVHMmQ=
X-Google-Smtp-Source: ABdhPJxZ14jbxL7QVGHkuh1iA7rzjQJr5xD8iljwCpRN+KW3uV+Z3AHLn89qvD2FCSV7ELr56qng3Q==
X-Received: by 2002:a9d:53c1:: with SMTP id i1mr5118893oth.161.1596236931883;
        Fri, 31 Jul 2020 16:08:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2408:: with SMTP id n8ls2102315oic.3.gmail; Fri, 31 Jul
 2020 16:08:51 -0700 (PDT)
X-Received: by 2002:a05:6808:b03:: with SMTP id s3mr4838578oij.154.1596236931630;
        Fri, 31 Jul 2020 16:08:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236931; cv=none;
        d=google.com; s=arc-20160816;
        b=xfLPPSygwIj8+BF8E+JQVmQaploCRRUZ9Xd0jZz2Gcja9sOGNnDhwG9GJ0WRnilA9S
         bc34KfSfBEcdkhZ9xW8Q12kulf3l8M23YWg/AZlRclSiuqDhRLtVzB+rm5aXTvKH+HpD
         PyAZJZXFVQSeY/0YmsiA7vrqu7bEYfcdGC6fu5s/o3gM0oqtdyKiCdYpL17kdGHPjDIP
         ohXr5CmyHBjsrkQj0NJSncrqOTAi3uQcas/xLdEwOQvm+4KKWhqvbJcr09qW5AvZnEsK
         H/Aa20aRdm45cIzd23YiYGme7wDn8RzYJpvyTTvlAR7Ok0R55FGzT/p4G1L5WOQCc3aZ
         Sy1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=84268jPgmFqAzbh6kvNmngGGyveZ3rMo3Gva+KPIY/c=;
        b=fm60YwaUqsHjD0r/tE9hIiT7ZSgvgeU00cu1dlNlQwXi9sOuqJjgmTVX5cH9mxYH0f
         t8NzUD0KJvGJwlTAXVa5YoIT+AItlWUUbSPKwGwy+rdKy3ZA8s6ZOO7Gq1XW8p/I7/RK
         L4Fdkr1GW3wTA+newd/uiLtYPZ3K+cdVRvtmDJLHUOdlKbcJrOlgwv/efhZuCdM5nQo2
         HUPHaoA9f8j4sIZvMhRKc4EEFIkYeMSOElVk9+zu4U9iCUJclAl7SOToYhaPuSSIxI09
         e20rdWP48xMZt2meBl9+6WixDl56Ii9bO4OHhqI7jNqYkUYEPC3yzn9iw2Tg+ZZknbxZ
         SI6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Lr9or3Hp;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id x2si357813oto.3.2020.07.31.16.08.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id o1so18116848plk.1
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:51 -0700 (PDT)
X-Received: by 2002:a17:90a:d252:: with SMTP id o18mr3631713pjw.146.1596236931297;
        Fri, 31 Jul 2020 16:08:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y18sm11218113pff.10.2020.07.31.16.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:49 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
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
Subject: [PATCH v5 35/36] x86/boot/compressed: Warn on orphan section placement
Date: Fri, 31 Jul 2020 16:08:19 -0700
Message-Id: <20200731230820.1742553-36-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Lr9or3Hp;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
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
versions. All sections need to be explicitly handled in the linker
script.

Now that all sections are explicitly handled, enable orphan section
warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/boot/compressed/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 43b49e1f5b6d..f8270d924858 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -53,6 +53,7 @@ KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
 # Compressed kernel should be built as PIE since it may be loaded at any
 # address by the bootloader.
 LDFLAGS_vmlinux := -pie $(call ld-option, --no-dynamic-linker)
+LDFLAGS_vmlinux += --orphan-handling=warn
 LDFLAGS_vmlinux += -T
 
 hostprogs	:= mkpiggy
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-36-keescook%40chromium.org.
