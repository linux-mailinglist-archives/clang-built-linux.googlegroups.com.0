Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSODT6BAMGQESLDXKDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 68568333061
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 21:59:54 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id l17sf2817237pjt.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 12:59:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615323593; cv=pass;
        d=google.com; s=arc-20160816;
        b=lHNa4arskmD/V4OA8PSfuiXm9BxuavEJ0uLupt0p5na/ZqXwiE2JEswk/hxDzOW0WC
         s9ztbWUJue0DlH6G6kouGtnyfxmey73+BD/pWzRFjoY45TfNvBh0J4+n4Oq15Ktxywuh
         ftbALxfsRWBMh9wYVcDUroZBdo1vCEGfdGnR+AJgnq60U8uTWCOfyJMEAgMwNc1+aN2G
         DawuiKiRhBccIWOb8SiefXvxWBebp3NPpUKy0OhCMohL0U6y4uGCkd5gV1t/IwTFNGot
         nF3gEP2Uvvx9+IX2BIcv/hNHQy1AQfFyAonxfk7bSVnHrVDaxu8R3My5iqvssw69H+80
         zA2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1u21hCXa4IVEX+IMcS4dEPCAodFf3NTO2fRLhxcwznQ=;
        b=WB4KEW/SICk3El5MlSH2Pl8DFWRMr7DeRNMBKO9L86tIebYbPl2Mv9F9lWfZHfd6K2
         HuEZwViIJQk9HfybNlnm9lZhM9oVPIlrOzc4ylkObnpnjgUL0ABnNcDNluORGAlhPP2e
         B0FEKcyAPnN5ytzhQksCQUYQseupzGnbOzpy0lPbSQP3vjZddr9JfJGmFOkkKt42sfkM
         iPAChqISbzO3y8a9U7NqYWzytNPTj39YfOfrx5hD3C0rL13/474HmfLmhd74qbQZAlKn
         v5p58rVbJSIRUdQubp3sJlZTGGyvqIfhy7Ge6KVdQs5uNbDdpyFZgQ5rStC5sFXD4UfM
         +tQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nXv9MXb0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1u21hCXa4IVEX+IMcS4dEPCAodFf3NTO2fRLhxcwznQ=;
        b=osOsxzDWwMhVNwkxIws4BMZ6mCOqFjeX35IQH+qetkKL8i1KZNCzWbqh8gYmjqtcMc
         yIBqJNk6apTLd154pT/KGYJ7guNVE6VFbo2XZ36EH6XM7CLHtfS3GxlQOm3g8IaXQZl+
         NLOZ/uFf7leLc0nZhGO2KXszBt3ntRRHFDS4E+TKykcsGFTPxhDLyWTOj7YwmPzBO49A
         14Rql36BwchVVsnUcwT/hjorEqCVGVtJ/5Clk6J6eSMWz5uwgPnddz6PsV7i6HzLctE3
         f7GlaKidgFS9raKLnLMpc1Dsn6xU1FYnoNh0YytOrBcBMP+qE0XH6MG/1xNNPse0oeSD
         eXSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1u21hCXa4IVEX+IMcS4dEPCAodFf3NTO2fRLhxcwznQ=;
        b=DgtC2PHaJH0ik/sY6j4Wxx55t4NLptbpdkITM32tOTbWs21mdFnPgyPlmlrt/SHC9X
         SkEImShg+O1pFrTG8RHefir9rsrhb14AG4oeuCMGmdiktd6vFgIIWzGrzJ/5LfEYLt2L
         ugzCcdO2/FSfrR+dPKcm9dv0ZE4uG5O/EMzwh24uR2PZGE0UFPklm35zBM6e9P4L7oWx
         IYfBWCix3s93sOz9RbSpskfVTTcSkW82ubjQRLE5DozB3zzU7gWcQD3V3PPZw7NMc5Di
         hjsvnZR8g8sLl38vl48FbG2OvGCixGAP7eDKtaB0GmZKOt7Ft/MxzmeF2qg3ybdj3YJm
         /bJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Vyb6YO/my/mt99ABhvEsPZ4MpUTpE2utdOO8JGE5MtDqakFEB
	eJaQXypeEPO5Puavc5Vqu5M=
X-Google-Smtp-Source: ABdhPJzjZlVBDph3cbjf9imR625Klw6ToY5HTqeRjOlovRsqsRzV1/A3ij5JwAN4MUaFvLhwXXas5Q==
X-Received: by 2002:a17:90b:691:: with SMTP id m17mr6867103pjz.191.1615323593185;
        Tue, 09 Mar 2021 12:59:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:31cc:: with SMTP id v12ls3734427ple.9.gmail; Tue, 09
 Mar 2021 12:59:51 -0800 (PST)
X-Received: by 2002:a17:90a:f0c9:: with SMTP id fa9mr6539711pjb.39.1615323591247;
        Tue, 09 Mar 2021 12:59:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615323591; cv=none;
        d=google.com; s=arc-20160816;
        b=oMTZJur65sSpa/4fvLp6YLtQuGGCVw+weml80PKGIVxXBQAmG/Rs56+Hn1uSkMOmHY
         OlYdg9SbeTocwr0MXA16LsF3Sx9uaCzGLk81bDJEra1z0xOKBei353vHRI57SBKJQ1pH
         cI/teIEh/U+EhcEM7+HKs1KlW0nW1P7pAvkyogFvabMY906xy2my0FluaOhSxFCWv3HC
         13ai1zLLoOTOMlV7iO5B6KfI9m3yPweCXJ1ZVaYTcWtQflkW+C81iwDpurVvgg1qXVaB
         27HNLWgfhb5WxbyYRiAGWKxP1I2V4AsmUIsr8Jb78Hlq2rOgfXhiF17ldnQggSJJESAE
         gDlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SWUMWJnKfPX/MQHLJ3oymRnlAfaQRx4qKJGtile7FUA=;
        b=wshKArvYzTYWW06y+Fva6asQZtiDYwqR7rPI5lMkGvXrsmANqT6r6ewnGoLzl7yGh3
         kCpvTANuZq2x7chea2EwkgX/l98iC4uJPgsriXSalMDJfAHjc0gvvLf/V++nu7lO5O6P
         HgYky43KAG2a6ZLQPo8FVK/d35YyDnxbbpD35X9LG9XwrvpD+Ald9vabhPjfc1+ZFSQo
         CrH++HzCwet2G2ekGsYkOkv/e4zivz2rLjaV0c5j7NUWX0xzeqL3TCO1QP8Js/4be5s1
         SybfZEs/C9suoWDYVscsYq9SoDvoxaEsl0kK9y9BEjijm8AQXjr/IDK8BOKsv12pwZJG
         2CDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nXv9MXb0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j11si1228823pgm.4.2021.03.09.12.59.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 12:59:51 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 23BB165243;
	Tue,  9 Mar 2021 20:59:48 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Fangrui Song <maskray@google.com>,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH v2 1/2] Makefile: Remove '--gcc-toolchain' flag
Date: Tue,  9 Mar 2021 13:59:14 -0700
Message-Id: <20210309205915.2340265-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0.rc1
In-Reply-To: <20210302210646.3044738-1-nathan@kernel.org>
References: <20210302210646.3044738-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nXv9MXb0;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

This flag was originally added to allow clang to find the GNU cross
tools in commit 785f11aa595b ("kbuild: Add better clang cross build
support"). This flag was not enough to find the tools at times so
'--prefix' was added to the list in commit ef8c4ed9db80 ("kbuild: allow
to use GCC toolchain not in Clang search path") and improved upon in
commit ca9b31f6bb9c ("Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang
cross compilation"). Now that '--prefix' specifies a full path and
prefix, '--gcc-toolchain' serves no purpose because the kernel builds
with '-nostdinc' and '-nostdlib'.

This has been verified with self compiled LLVM 10.0.1 and LLVM 13.0.0 as
well as a distribution version of LLVM 11.1.0 without binutils in the
LLVM toolchain locations.

Link: https://reviews.llvm.org/D97902
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v1 -> v2:

* Improve commit message (add history behind flag and link to Fangrui's
  documentation improvement).

I did not carry tags forward so that people could re-review and test.

 Makefile | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/Makefile b/Makefile
index 31dcdb3d61fa..182e93d91198 100644
--- a/Makefile
+++ b/Makefile
@@ -568,10 +568,6 @@ ifneq ($(CROSS_COMPILE),)
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
 GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
 CLANG_FLAGS	+= --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
-GCC_TOOLCHAIN	:= $(realpath $(GCC_TOOLCHAIN_DIR)/..)
-endif
-ifneq ($(GCC_TOOLCHAIN),)
-CLANG_FLAGS	+= --gcc-toolchain=$(GCC_TOOLCHAIN)
 endif
 ifneq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -no-integrated-as

base-commit: a38fd8748464831584a19438cbb3082b5a2dab15
-- 
2.31.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210309205915.2340265-1-nathan%40kernel.org.
