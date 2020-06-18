Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBB4FVP3QKGQEKOJX7KA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 744DD1FDD3C
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:25:28 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id s4sf1864707oth.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:25:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443527; cv=pass;
        d=google.com; s=arc-20160816;
        b=u0tLHDOCcMIbTmVMLs8aQ5ucDwjUlmSNQ4fYewkM/ca/uixZN1tj+219ny3QITkVbT
         eonswCy/ZODdovhu323V0vdTRuTuGSHfeC7fpn4h0dyae3/RXDVy95QFf+QgD8ihwY6R
         nuEKILLU7eSFjeprLrIt9W1GQjgoz18KCdcpOlW1bUUUX8+rOzB6SYKgieluEpofKxO1
         cpDauopTiqDf3s2tOBr5dJIx4oI/1ufD5n9X13Pi67DnTK8E2qFCa4d0hSBVHnecfmLY
         zPBM/1hYhLrJeVOSo31CgQrQym6XvaMPNdXT4BRTSDNAKoV9/8o5tzCQOQ+w0nQY3YLd
         LciA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qZujgAGBbPir6aoHtnDtBg3T6De5d58lI2T7hREhsyw=;
        b=vkdKZ0LuYIFvQlI5Gq2FRCb2eBhWIn54MDBYT69cegfmt3jwvcTKjJG9e0ASGNkbR6
         1rn8xb+aFNEPx5Zwu0lBlEYlz9mDCEV6Td0EQPM5WJFk8/XRQ01aw+5hvVfzlAZgay0v
         lYZzfARfIYOwLaOAfdsQ0xEd7dQhePCPFXnimB8W1tMCMlYhESCyIog/Is0L9SO26/cH
         p+qiSaRYQIcMD1AjFuovY+SitoEOCHl+hiZsFJIgt9VaApvFmPDFMpsD8zJDXjJbDDwq
         l3XGNpg7TdL0Gcq5+qd1nt23casTecFtVRMv+WvN7q+e5yKGsbrDq7QIGS+y3xVsFg9d
         RKCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KjK2k22e;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qZujgAGBbPir6aoHtnDtBg3T6De5d58lI2T7hREhsyw=;
        b=hvSYpJMyu963ALbC35JMl07J/Hs+/sFR4rHK9Ztv78iQ9Zw8jQ0plTI4WD8lbcbqRg
         /+OhiNEZ/7SS/t9fbRUOn0tDupmWShzXHO1Zc+xCUzmZshjaBI6K4l2zPzlefeOpy+yO
         trjYTBhkAIrQOYNk9Lluet79EKopD8F7gdEFoyi0U4DIC/wpjPYlBq60InZz+4mVF4QF
         JHZzS5Uz/dPV8vC0W/G2nSHuGLg0I0mVZX4nTtR7qVHIA97IJMjr/Nb7ya7M/xA+8Gnu
         +0yvijHqhMLxEQ9Qc/HnJBHZ7tpOXjyJBKlMPkPSkMWp839zeZAtNUx7YGMKNyqeRp0y
         WXHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qZujgAGBbPir6aoHtnDtBg3T6De5d58lI2T7hREhsyw=;
        b=g1lB8CE2ytE42w/8LESRxHFmADtkLh7LqXsYsZ/qGZf9/4exMpeY1SSJO/Fvai5/Ud
         fE0CDG44Zh1POa9ukaQH32N1RkUmTRpE+dYKG+vnc8zblNHgTmy9e7itWICnyiazuvp4
         v9tjzD2Rwnroe2PjNFyaw9lM392nDOkptPwu3m19CJeTKxr4e15k/YX58FK/ObeljeU2
         vSuD1O62fCbXJmQYptWVR/n+h9FyoNTE5ke1C4PpY9ltZ3GkqbB2bvqwjNsCtw5irM1Q
         4GgaWrW/kKu+iCigXS0TK3C+IDtqGQo4TSB5b7uqZNLQHRDsDs24cFVh5gFuTD0ELeXQ
         jWyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328AEqFQlDlly/0IOmbQx9634yvu90n9+CDD5DkhM7XaOkpigkR
	cSkeQ5Mp1ZkVyLkNgc9tccg=
X-Google-Smtp-Source: ABdhPJz5/hLMkTjCQSoSOX6fOiMJUih9Pfbt/tujRKkYB7eiEurVoh1JbHBjsRNdrBU033PZOYsGcw==
X-Received: by 2002:aca:a9c8:: with SMTP id s191mr1176345oie.15.1592443527463;
        Wed, 17 Jun 2020 18:25:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:dbd7:: with SMTP id s206ls817722oig.6.gmail; Wed, 17 Jun
 2020 18:25:27 -0700 (PDT)
X-Received: by 2002:a54:4897:: with SMTP id r23mr1242958oic.103.1592443527194;
        Wed, 17 Jun 2020 18:25:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443527; cv=none;
        d=google.com; s=arc-20160816;
        b=VrZgEzwox3sc1tRuumP9Bd3QTeHcKsKVNJVDFUdA18xBf6Lmys+OTA4qOrbhfzvbfJ
         PDQwMqT2EOV/3VAF4jBBniUyCWywJpryooUEW5fPpL+eyRz7sfUM9Xkw2Bx4tBUo5Q3j
         rT0lQ7pIKGWZsL8WLMmAHqWGD1qMQZim1+U+v8R+Zw1UTNa7fgVqM/xfLVy0NXDSYvtp
         rD53uGpq1+bX89ht/QmiI4hRMFT8eMqBqS6OhIBgktjBSMYPbH6QsF0IT3qYGlUL60DG
         NnBh4MlZWV+RFdCxU4RyMb2JclYEbyNEzDPmnEeCrHxytRst0jNa4Cov1RGnP5dMaaX/
         9Y5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8IV6p6PVuf8E4T19ymC9XaV2MP24jAMTzmCh9aKUVIA=;
        b=pxjHhZB3x0XoQAYxN/3JVTRQkWkhI7y5AVjVwF5GFsoFSLYZxT0iUpCX50mD0phqcI
         9g3G8fMZOWg9JNH8v7Q2lPJdGQKOOKL/kuBEx1Owqcc4p4HRfTJ7tybYxlUVz+KHI+4t
         xbqUYZj4iDxUEUXACxIjM633zWWSx953P7WIcSfBZYIMZa9VgGcucU4PlBWPxU77pLsq
         5fyoQwruFj0HJNUSj0Cf+P7YbCqaDkhoirFIR9VwEh5sz5H0XDJn2FgHPUqebg4qxFcd
         3Xw+mPNXVBoS7H6ZD3n5pGZ/KbsvLo/+H0v9uvEZ0tYmpDpNuJGNl+B3o68kcmjQrEPF
         fuNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KjK2k22e;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l9si67769oig.0.2020.06.17.18.25.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:25:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4081A21D80;
	Thu, 18 Jun 2020 01:25:25 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Fangrui Song <maskray@google.com>,
	Jeremy Fitzhardinge <jeremy@goop.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 147/172] elfnote: mark all .note sections SHF_ALLOC
Date: Wed, 17 Jun 2020 21:21:53 -0400
Message-Id: <20200618012218.607130-147-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KjK2k22e;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nick Desaulniers <ndesaulniers@google.com>

[ Upstream commit 51da9dfb7f20911ae4e79e9b412a9c2d4c373d4b ]

ELFNOTE_START allows callers to specify flags for .pushsection assembler
directives.  All callsites but ELF_NOTE use "a" for SHF_ALLOC.  For vdso's
that explicitly use ELF_NOTE_START and BUILD_SALT, the same section is
specified twice after preprocessing, once with "a" flag, once without.
Example:

.pushsection .note.Linux, "a", @note ;
.pushsection .note.Linux, "", @note ;

While GNU as allows this ordering, it warns for the opposite ordering,
making these directives position dependent.  We'd prefer not to precisely
match this behavior in Clang's integrated assembler.  Instead, the non
__ASSEMBLY__ definition of ELF_NOTE uses
__attribute__((section(".note.Linux"))) which is created with SHF_ALLOC,
so let's make the __ASSEMBLY__ definition of ELF_NOTE consistent with C
and just always use "a" flag.

This allows Clang to assemble a working mainline (5.6) kernel via:
$ make CC=clang AS=clang

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Cc: Jeremy Fitzhardinge <jeremy@goop.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/913
Link: http://lkml.kernel.org/r/20200325231250.99205-1-ndesaulniers@google.com
Debugged-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 include/linux/elfnote.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
index f236f5b931b2..7fdd7f355b52 100644
--- a/include/linux/elfnote.h
+++ b/include/linux/elfnote.h
@@ -54,7 +54,7 @@
 .popsection				;
 
 #define ELFNOTE(name, type, desc)		\
-	ELFNOTE_START(name, type, "")		\
+	ELFNOTE_START(name, type, "a")		\
 		desc			;	\
 	ELFNOTE_END
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012218.607130-147-sashal%40kernel.org.
