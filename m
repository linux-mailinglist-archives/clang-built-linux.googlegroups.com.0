Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB66ISL4QKGQEMOXA54I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 92712234DF3
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:44 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id 41sf17529062plb.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236923; cv=pass;
        d=google.com; s=arc-20160816;
        b=pshSi1MOG/eeBd96mDCAsphaAqGAIwl6Y+fmgRqbYWwJwTrgbEW3mNL2X+88IjjmJj
         oTfIK361HqIOF1gPayyI/IlBpYQW6Sv2dhSja9bKB47wQ6DDzU/FIm5csQoCmmFqHvSq
         Mwv/hCWj6D39a+KHAElV4u6AL7Ao+ZOz8HuDuv3HvUp3cwB17BCuFW48jUcFYgd9u7PF
         kebBYp2TSrkJnKTdqgc2YcErrhGA5xf1nSX1TEhlhvJ6UHQiqoulwlM8YQPFdm0yrKnp
         4DVMA9vv3ftt3JsoiOPWhcnysVQZjWbpoxx/QYDrm7kiy59PlcArEdacUanfaUazXPuP
         iXuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qln/7n5lTkUPDFh8ylXmFmq+7Z5fe7eIVboXMTrFWh0=;
        b=D3iVvRrvgVPRTNcvi3Qa3NlNnduAoaAb/Yxi9yFbd0UvAYfan0eAZBizAFfzx5qXkU
         GfDe7u5PTkqVro6dB1MMZYoLymkXBQTBLNFcgHG6kt+dmeFGKtik17rPL9tpndk8vVnr
         JbValRamIMKlra4WaCSjGaLzfzeI5m4LvliDinIuOG7hVxlSAtmb7dD5ts7XcFZsinIh
         PIqBGFJitMXTuemERIOGZF1quJBp4VTnuRaFKmA/jsXivNrBG67U7jyCi50dDbn9BuR7
         ycFdUBbliDou/WwYI+jTslRPU5lhB38W8W/o/qw+nssXERkurwPfZDcTIuBuLdMz9WN7
         91Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=klOQguEy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qln/7n5lTkUPDFh8ylXmFmq+7Z5fe7eIVboXMTrFWh0=;
        b=Mlmm/CU7pxRvuCOlca4n+8bYEBXqVcqs1FHBXs5vgyF3LWA3CcStPReQSpfI6Kvqnc
         uq/k73/EOFyjiso8eFGlYEPwqKXS8vPCxNbzNoAGot4EPaCl6ffOfKjsTG0h5Yy7UMUm
         jgbnucspYlFmR/vBZMo3A8x3gVxOkuRLfq1u101BuspMOZrmL6pg3M2EZHG81TT9kj0C
         2+fQbgMO4A8tH/WgItbHlkI4kOykV5IuKOkC3bQzJG6eKlHT9ovU14hJBh1zCEf4cAA+
         EdL+sX5gxImjPXTn5NrWQm9MM3PWlG0bQTZy/tzFhTlZ4qFWzN7PeHnpW688kBcLJ9WF
         vUmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qln/7n5lTkUPDFh8ylXmFmq+7Z5fe7eIVboXMTrFWh0=;
        b=U4KSpCCsvF1okKau/8K3aADRrxc3FO4GUCdC0evcRy0W4q9So1seO1q+Sra1GMayhr
         aUyMKeFUqeVjWbYcjHgl71zygakbPsr/k41YfrrmLT60MsQgw5tzlqGxFezR3ysPFP8e
         2PQ2chz/FYoH7480g7N4avV5LOzLFGyNHLVSuXDMjfe/7rHCd1ZuyDK7S/Ma1ekX7p0x
         /T9YnuSGU1zYyE9s0NkjmKWDavWwEFonxeXMODq3xQ6aS9L4Fx2M48m1J+/bDQ/6qC6r
         yXvVBPSN8ViksniXUB9o1cMp9fmRJmlL0sJQgqXdaPy5Pe4oTp4h+wpiDrs3IgCsWP24
         VSpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532c/rklIY8K4TKu8tubydvN3hU79jZvS6GSIEPrZucgZrrAf0Jz
	STKHVm8hSMS3Ch/LAMrNG9s=
X-Google-Smtp-Source: ABdhPJxOPts8WZb9Te+1uYQq4ED66nPxggbRI2k8F2+RKD4aoFftCATA44urprYSe5Pm9t2uNj+qQw==
X-Received: by 2002:a17:902:ab96:: with SMTP id f22mr3781862plr.155.1596236923264;
        Fri, 31 Jul 2020 16:08:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:80d:: with SMTP id m13ls3460210pfk.2.gmail; Fri, 31
 Jul 2020 16:08:42 -0700 (PDT)
X-Received: by 2002:a63:7d8:: with SMTP id 207mr5888049pgh.263.1596236922901;
        Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236922; cv=none;
        d=google.com; s=arc-20160816;
        b=V1RLv/QTGzMDC5enWavZpdT5bCI036FFM4RbdrzbyZthmg4hDdMLUODgrlXFReA06N
         9JKzCOJMV08hosfFQLnGbLJrT73jAUVM0zvsEOAtIxbP7alogFJEh8EepagPRQyiCqt3
         6P7jr3U9zbUPJzDP7W2f9q7NFrhvcOJsTl+1vSSECPv4NMuTa3tvWll/dAXO3BICCcnX
         M4eShcYI9c8CWmC8cv7EbB2ppYz6tV2jc87/Wwcv2ZBc5ezXry6yhlYA6OLx5zxSjhoX
         Mbeny1hX5JhGzR7GSd/kf4C9T6mTQMWj0Ko7KkWOK8EldcyU9BLV/+ck9FfZgVjt5Ujt
         hOhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y6H7F3yYvyF+nG4ZythWO1q4A4EGexkc0hsQxsFmb9Y=;
        b=SPiABdbDtFTdbq+f1vaRhE7Vtz9UltaF5ry8LqQ0lqnCsTQOcxbHBf5EYFTScj5ntE
         f0MRT1QZF4bgBlVuqKC4iz5WmaWqnrkgI9yRZZCs5G6nHWu6oUA7RHY/DTJlpwmHOnut
         sv/RVi6wXNU8oVzon0NUnjmd3dfcEuuNEKDseXl09HlFCtUCnU6fgp5Ev35e07jHNaE3
         6CadFUU735E6xVrIXEyro9PUSrJ24j/LHEWTKFfGmsBqCul8oGgKhGuu6nI0rYgz4/Kj
         g0SMwM5qbn/cDHd+PVCDUWOyjvilv6CvxXxNEbWEbyscQHe/nuo2ea4IXIqGjKDqE3dp
         sRyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=klOQguEy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id a6si544219pgw.3.2020.07.31.16.08.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id r11so7278812pfl.11
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
X-Received: by 2002:a65:408b:: with SMTP id t11mr5660099pgp.407.1596236922651;
        Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m31sm10905376pjb.52.2020.07.31.16.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:08:42 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
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
Subject: [PATCH v5 16/36] arm64/kernel: Remove needless Call Frame Information annotations
Date: Fri, 31 Jul 2020 16:08:00 -0700
Message-Id: <20200731230820.1742553-17-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=klOQguEy;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::444
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

Remove last instance of an .eh_frame section by removing the needless Call
Frame Information annotations which were likely leftovers from 32-bit arm.

Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Will Deacon <will@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/smccc-call.S | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
index 1f93809528a4..d62447964ed9 100644
--- a/arch/arm64/kernel/smccc-call.S
+++ b/arch/arm64/kernel/smccc-call.S
@@ -9,7 +9,6 @@
 #include <asm/assembler.h>
 
 	.macro SMCCC instr
-	.cfi_startproc
 	\instr	#0
 	ldr	x4, [sp]
 	stp	x0, x1, [x4, #ARM_SMCCC_RES_X0_OFFS]
@@ -21,7 +20,6 @@
 	b.ne	1f
 	str	x6, [x4, ARM_SMCCC_QUIRK_STATE_OFFS]
 1:	ret
-	.cfi_endproc
 	.endm
 
 /*
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-17-keescook%40chromium.org.
