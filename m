Return-Path: <clang-built-linux+bncBAABB7MTWP2AKGQEHPOTIRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 324261A1524
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 20:44:14 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id k19sf3434032otl.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 11:44:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586285053; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hy7a0vPGLESXqHMm+oiq7YySSzbCqaK1Em6x3dTzSA/thL9LXchcouKVry4nlyE/SC
         R4hEHQg6D7ubadw/m03U+HRk7dqvTvb1On3F+iYKk6KPrHSoH7pl0LT0doCNabJ7qR8a
         1lbXYQYpJZPn3rEP7KJmztkr60awSW7BcAm8VX3e9s04NU8eK71sUgEe215ri/+S/vSS
         ix202A+HYL33jxOKgkxGXlxCZFe7w4ypCLSX6RncVRWtsaC0B2hRDUduxQuhXTc3dX0Z
         0uG+gNkcC7hG2vULsrS4AWkgUsTIBgrukEq8JfjgFA8zK91yQ7tQjFXE0DWVBdeDSvm4
         B7OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=yG+ByNcTafLWcg1oxM8I9yAlThrH0DJUE1AV6+kATbU=;
        b=jne6c6u5CDIPRm09fXP/FgVjv82NBw6YJwynFZ6x+E4uRuwWQJlBNyDPoV9PGb1Xvv
         1YraJasPSSHauTQ19ePgfuhKPTIBOJ7PHhzvclROkJx6Gb0hYMSRnJN3ZNeF82WUmV22
         QhhHugGLbVj5M+vTpcb4b/wUtKjD3XRDO1CrTOeASpMpdoFXXpgLNxZsoj0Ewbe0fjpY
         3dkQO00Uyr1wSBE7Nygp/ODe5hmNDRcT7hA6eODPgidnlVp6U/HHCBJXKuk9ZOdSH2tL
         oMlPmNYJ1LTD/+sI6FhuVljTdjtTYt3V87eFM/1eZ9+/OUwquxGSRf7TaUU6eejt/iaF
         baFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vslyEss3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yG+ByNcTafLWcg1oxM8I9yAlThrH0DJUE1AV6+kATbU=;
        b=r3gpZ3hAgsTlvXv6IzY3IGRT1YRc5PQPAeoWIBHh5+IJ+VJX/AMSRIvdigtppGrnsz
         dr86Xju34G7OffOiJ95HQQ1W0MAnHafT230QWhbd9wjWf1xdi7sVBkAnez/M+DHoTLfj
         8BR95ZJV68Dz/5NE8Q+zMO54ExJovfxCdY00U4CR2+VYs//YEdbMHAYo6AFfn4O+1Wco
         anR39Ox2663axa964PhJMWieDwwVIRmbfU1bnoIDFepiGQeIhVbhKkXPTBjskRKCPY0H
         CSZBJP5FAqo2Djr0s4nvb9zHiruCxkzr51I/XI7VGWQqL+0r/2KCP7aGUtVKZgln1GZt
         oO5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yG+ByNcTafLWcg1oxM8I9yAlThrH0DJUE1AV6+kATbU=;
        b=lwG1mgFMSzNL5YBMCbeYYCNF1NSKA4NaCeNHl3AC4FTGaUXFgZZXGK3jxAiw2Ye8RL
         +kpMEboslVbu2admkOVEqz1FO1QAGUaQr60MvPOQomCh0/+GW7Yv9g9X3V6BpE+IQ3DW
         JzZMERfQX6q5pK9DL3E9j/8SGqs9xaiS5cOhe9GsJufjPhaVTxfkDbNL85SiHG5f09rv
         GmgNJ34mJfpKG63Nwx4TffsdbfoI54d8yoGm0zlTYu+IGIcD6vz0DcZmF3CYCNp9YfsP
         IqvI1ox43VlD6FphqlUqXPiYmdMrv/OFy3TxAhoBkiqm47UT4TE9cTI0pvgc2wBJ6Ypl
         wI5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaHrm+Keh/YqJzlYj5+PymxwZjG6Lgd7STk4dII5s84szEa1qHI
	pg5zXtp5nn4iykc+PU1+RG0=
X-Google-Smtp-Source: APiQypLK3G5h7nOeZrh0CjYhlAKg9hFc9e/3KVxuJnyJ6XIDUaj/hjsfbDzfAIZCvnEc2V+EGCaeFg==
X-Received: by 2002:a05:6808:8db:: with SMTP id k27mr169083oij.175.1586285053135;
        Tue, 07 Apr 2020 11:44:13 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3b23:: with SMTP id z32ls1804559otb.1.gmail; Tue, 07 Apr
 2020 11:44:12 -0700 (PDT)
X-Received: by 2002:a05:6830:1556:: with SMTP id l22mr2904938otp.61.1586285052779;
        Tue, 07 Apr 2020 11:44:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586285052; cv=none;
        d=google.com; s=arc-20160816;
        b=LuxzQuXwB4MM66vIX0muiRQr/FwMTQqzVLm9Ul/QisBHC59bi8pDvqxGqXx3dGkV7N
         whbHWCWXb5WSnT4Md3H8n+3wt7V336F3MetFIASEFMBNurowOK3KP871J9LDYyuo/eO5
         +DptwHUBEStpSiJxKhdIFU/Yafhkmh8WMlef/dLJQSHQkldSPx6cWTUVHEXIzqTKk8mO
         c38UHyC0NcXgN3xhHLgINoQQazLyJ6Niyxe6bAY0ZrDZOSrZkXg5kvSorZ+N16w4j1RJ
         2XDdy7qwMFd+3fAFg3pbmexybX3iPlVXaN1PV5Kc8cqV54QV9cspdA6kHxsNsJF2uSUS
         LuRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=/yE3LtMyJqmOAt80CTdVzlZEIo8PmfJ0HPkqvDRfiHw=;
        b=NVK3XafCkob6BloJqHAqS2KmxDPv25HNgMnmo51wEThlha2G7EKkeErOUI/b2WbsLa
         lPUlFmD85QCfqCSyoJAFnnrW3r/whspqxeJFijuVAVcQ1I0Z3r4X02aHpIh0fgCVPTnm
         NjFzZtmY++Brmr54p9mbMnc1TTenEDf17miu9egMYHI7UTLqLpXhHLT8HeejSC1pgDDi
         u1wDRAeM1FHRvb9knvuUNqGt+3YogCHUtTsuudK2K4lHWAyq0Qi54vIHk77jnJsRlcDC
         WUxH98jIKJwDFLAVyUa3XyOtTmoqjN8vRSXg6+dPzvaoMNs1d/Amj98Kup++hXoXbUuV
         vvWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vslyEss3;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id a3si216713otf.2.2020.04.07.11.44.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Apr 2020 11:44:12 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from grover.flets-west.jp (softbank126125134031.bbtec.net [126.125.134.31]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id 037IhjLN002999;
	Wed, 8 Apr 2020 03:43:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 037IhjLN002999
X-Nifty-SrcIP: [126.125.134.31]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, Masahiro Yamada <masahiroy@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Michal Marek <michal.lkml@markovi.net>, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] kbuild: replace AS=clang with LLVM_IA=1
Date: Wed,  8 Apr 2020 03:43:35 +0900
Message-Id: <20200407184336.14612-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vslyEss3;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The 'AS' variable is unused for building the kernel. Only the remaining
usage is to turn on the integrated assembler. A boolean flag is a better
fit for this purpose.

AS=clang was added for experts. So, I replaced it with LLVM_IA=1,
breaking the backward compatibility.

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - new patch

 Documentation/kbuild/llvm.rst | 5 ++++-
 Makefile                      | 2 +-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index eefbdfa3e4d9..2b40afa58049 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -50,11 +50,14 @@ LLVM Utilities
 LLVM has substitutes for GNU binutils utilities. These can be invoked as
 additional parameters to `make`.
 
-	make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
+	make CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
 	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \\
 	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
 	  HOSTLD=ld.lld
 
+Currently, the integrated assembler is disabled by default. You can pass
+LLVM_IA=1 to enable it.
+
 Getting Help
 ------------
 
diff --git a/Makefile b/Makefile
index 1b2691057cb5..f9beb696d6d3 100644
--- a/Makefile
+++ b/Makefile
@@ -538,7 +538,7 @@ endif
 ifneq ($(GCC_TOOLCHAIN),)
 CLANG_FLAGS	+= --gcc-toolchain=$(GCC_TOOLCHAIN)
 endif
-ifeq ($(if $(AS),$(shell $(AS) --version 2>&1 | head -n 1 | grep clang)),)
+ifneq ($(LLVM_IA),1)
 CLANG_FLAGS	+= -no-integrated-as
 endif
 CLANG_FLAGS	+= -Werror=unknown-warning-option
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200407184336.14612-1-masahiroy%40kernel.org.
