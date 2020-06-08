Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB5EO7P3AKGQE4Z6EFNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B671F2409
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 01:19:17 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id w11sf13280385pll.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 16:19:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591658356; cv=pass;
        d=google.com; s=arc-20160816;
        b=QxAUiuwE0MdWK7KnFN/FSDhkNFBF+vVPqZ4G29C11EDRqe6ojlJDDX74Q1XNV19/Yl
         SVZaO/NtEBn0WRTscL7qK9us7mWv6yDA4rcs/qXC7Lgu2LXhJD4lpmzEsmJEFwJikn1q
         My6cLxQKxUHMk6rPScCkHuNaHyM/ogmlNRQn3/eeHdCkGPYhFqJ7lFdHef398i4YvZuL
         D5Mvyfa4ju4J2dI1j5bn0YJvvLfYXJsl72TFjnxXBzWNiQgLKzd6NKJrVDL28bSPof+J
         NSMlmOV8symGjQj1Ycl/SRAkPYA4XEaODksK61N/156Aitmg3Ekj5xcPHJS+m+fGt5o+
         I3RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8po7JkGRWs1TvXNBH66caRCi948kRbEac5TUeH5hW5I=;
        b=ehdplNuen2DhjMlretyx7UY8SV3Fe99LqiM4DJMRIo7EJJqnt7MxRUJgb5SsOEVsN8
         q6Ekox77mXFt8Zc7v2+7uSwP8h6F7QGOW41FUvxiVs6Aw2xROVTPslpR9klNKOrLlZg5
         2Hk4/b6qClZ07Fu6/NoOoY1UrgXv7J4mocHZp49h3rnRtV3iIH5XjwYp8H5flfMrhglb
         MYpA75p779e7IptABLLxDTmfNRMOMjy/ccaN10fWB7IwVow9aOJYHJL6HoZFcP4e0I/y
         FjdIic+krgWRo6vlD9kwF4N+PL6SgW4gJBv2DrCNxLj5fqtpMjCXlWFHRGanmP4LOccP
         Uarg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zoj8hBIc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8po7JkGRWs1TvXNBH66caRCi948kRbEac5TUeH5hW5I=;
        b=Cz3fA6Ir+vye71dBAAajsv7CsiHnaT6tO8bbMY88PlLbgkFmcC2heraOzlv9HDidta
         9pHx9QUPBn93bW8IwRMAuUnzRpHDzWBCycPQY335hAIUnH4pVyy/56xboX2KAMa2J4kQ
         d4QiKFMwDKx98Zukqh6GQmXkyXoZ92SCPajd+zCxO1BMzCEP1Eo+30oSUIlnxjYEI5S6
         Fg6r1Jz7Ey3wijD7OeNnNX6TaM125hoyUJtnbZ1rizn0AGXLtLcom2lBqGpYwcJrKp6K
         F3DOF/Op0kHCOM94cpzNnOks5SHLBbOrGwKeyJQUByGJYqN1HLbzKMUi4INbgBZzo/4U
         MXHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8po7JkGRWs1TvXNBH66caRCi948kRbEac5TUeH5hW5I=;
        b=d0moCQ8L0Eu7dUFS8H57lbdSCV0PIAOiVaNAEFwH/+WgKbxE4iash8URPz92iS0hpj
         lE1g1cvoQt8dymDnX0NOHrfxKWEVydT2mTFEkX5yNGYLlnRhfdbnjglyMr9nO2BwiE9l
         92olsdM57UOwCKlvym7Pv91Yak3j+6LP+7rbLsUqRBUjN+qwiagAHsNELcFf8Ct3+ZxA
         FMJ3yhgE9EcTAZPkJQRDuwmt9pGafEwe7OhTmmD88utl0vCzVp1VLvcrhovW4EKL7NZD
         V3G2PRRMuJBMafEWZV5aZSWBnusJFowv+/4qgIOSprHuDXOz/iRojZUk84pbl8tal5mr
         Z+qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316WiAewrFOfiS8cjNIxIQrWbOxaQdhsjjiXEexzoDQOAMwItgJ
	GGAwK5bvYAmDfDqCXqEmJhc=
X-Google-Smtp-Source: ABdhPJxloiqdUdcEAA5oIidQR1pqy6yaxer3Ppmwtx43cEYHiHjbtFewhD7kAKl/hPbJorqOsYrIHQ==
X-Received: by 2002:a17:902:b18b:: with SMTP id s11mr886363plr.160.1591658356574;
        Mon, 08 Jun 2020 16:19:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:55c3:: with SMTP id j186ls5662390pfb.6.gmail; Mon, 08
 Jun 2020 16:19:16 -0700 (PDT)
X-Received: by 2002:a63:1149:: with SMTP id 9mr22486864pgr.236.1591658356149;
        Mon, 08 Jun 2020 16:19:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591658356; cv=none;
        d=google.com; s=arc-20160816;
        b=VpN0APHZ5+7XxpVlXbWRmP4573JeIRTO+PKD5CpDduF166dqDCy7bjE3DsALblu6NT
         wcCxGZDbpKqwTfGKkvW1+D2+lTBxN/G93cdhgmLnQWMGREfjseo9qmCYqbUg9i928Fv5
         BzwaFOLRHVBt/ZF29iZe16xF1q/cnrMtFjW7Pi5x6VkLb3enNu9H7LdIspjgNjY2yhl2
         7waAVhbOZLNrZWB8Xqqe/o6K6BODGSQq4tq41mRguKy1/LCKFlco6WLJF1Xk6k+0jSKV
         2Ut8DGfh1jQGc7/myhAPPRrHw47a2/Pw+moZrCvtCB7qlSNyds9TAlccP42URpnicS+H
         hXPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FALaqZUsMounJeTaamfD60V7Y9XcIpdfYcUy6J3ahFU=;
        b=GB1Z7mnJTQzSLUGtH83Po6fgq26qIZs4OA+QuPPJ/MU/jqXomu7IytBIKfPAbGM2ZL
         mNh7QPmCg0kUgZyU7WyZxBpWJU05c2XNPSh1fesdEXn1WgbKB3zx2whyzLZWndJOOkNX
         rfjBaYyAKfGDPPu0QvWz0pVcLWPBsIvMsL+hujuZ6cZl2wNgBBW8oZvZE0ubgMtCmbUG
         jOBen9wKZTjaFSwCQ43tueCDPjIAEzWL/eyBqmIfWzrJ1Pb668xtsWyiKwttHWojwFMz
         5EyuGdePd8dcqiTiFOZQa2LnIgIsKNUenIkL0aHsRC4cXCZwHwVXxiCx8IVejGp4LnRD
         XoDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=zoj8hBIc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l137si503093pfd.3.2020.06.08.16.19.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 16:19:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CAE8620884;
	Mon,  8 Jun 2020 23:19:14 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Collingbourne <pcc@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Fangrui Song <maskray@google.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-efi@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 022/175] efi/libstub/x86: Work around LLVM ELF quirk build regression
Date: Mon,  8 Jun 2020 19:16:15 -0400
Message-Id: <20200608231848.3366970-22-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=zoj8hBIc;       spf=pass
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

From: Ard Biesheuvel <ardb@kernel.org>

[ Upstream commit f77767ed5f4d398b29119563155e4ece2dfeee13 ]

When building the x86 EFI stub with Clang, the libstub Makefile rules
that manipulate the ELF object files may throw an error like:

    STUBCPY drivers/firmware/efi/libstub/efi-stub-helper.stub.o
  strip: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10
  objcopy: drivers/firmware/efi/libstub/efi-stub-helper.stub.o: Failed to find link section for section 10

This is the result of a LLVM feature [0] where symbol references are
stored in a LLVM specific .llvm_addrsig section in a non-transparent way,
causing generic ELF tools such as strip or objcopy to choke on them.

So force the compiler not to emit these sections, by passing the
appropriate command line option.

[0] https://sourceware.org/bugzilla/show_bug.cgi?id=23817

Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Collingbourne <pcc@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>
Reported-by: Arnd Bergmann <arnd@arndb.de>
Suggested-by: Fangrui Song <maskray@google.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/firmware/efi/libstub/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index ee0661ddb25b..8c5b5529dbc0 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -28,6 +28,7 @@ KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
 				   -D__NO_FORTIFY \
 				   $(call cc-option,-ffreestanding) \
 				   $(call cc-option,-fno-stack-protector) \
+				   $(call cc-option,-fno-addrsig) \
 				   -D__DISABLE_EXPORTS
 
 GCOV_PROFILE			:= n
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608231848.3366970-22-sashal%40kernel.org.
