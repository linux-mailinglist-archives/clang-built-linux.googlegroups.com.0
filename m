Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSUP433QKGQEL3R4L4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC2320CCB3
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:52 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id n32sf11650163pgb.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411530; cv=pass;
        d=google.com; s=arc-20160816;
        b=VvQr2xJfF64Ne7C/3zd1OgFKKM2lVDx7+/q/zwC5zFSn4AO8+5jhpunK+YmpS3C6FP
         9ubqsNlvb3/b13xytdxRffiOF7MV21dqEbBis0cKLo0ak3xDEBpSYEOUD3nGY7qOM00p
         4jDB0h3UrmxAnureT/cOz1veQ7vEL+bBmf7g3m/H+nElLHRfy5kC+omaEQ3E+yQ8BApe
         g3dHhClEW4nu2CkMqcFr72CY1yHUKh92x0SQbhWZ8CZ7bYRMzsMqDNP71Jk2/y33ajgu
         q2Pmq+SLRoA+llDE0XjwMVTP3LVJYuQEJGDid60Si4VhfYEbRKFinZXB4Rwy929Dc2pj
         KJ7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=XiyyaBhgFP3FlFH9rKIzOglmJhKPNXwAZGUjU1cdHqc=;
        b=ukYps8MR+eH6uBwuP07q8s1P1x9UYguzCcN+lhUUstc8C0yTKDokoo3Jxn8bNrIhr6
         pA7LmAkLh7KQuow52Gm4cICYECRJrh+OHevlvSLa58Trkbq0dxZnPZcjFBuSnH0wBvI1
         clAyrSHfbMC3DbVdcz5JL5VRIUOyRKsFU73MhqdrlTR2oMv8CAARPGnGGfifsYIETBNZ
         lz9DFNRqjLhIndVyFOKo0K/1unTXC75W+NKeJ85EuKBGEJqsVraM4muPS8VqqCdQ02Dp
         bq3xhKYrzGoMm8H+a6pNDRcX72vM55hVHCM/wXUzRdTClthJOF/eLpf6jhU+nooJS3gQ
         nZOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=M9ZSb4qo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XiyyaBhgFP3FlFH9rKIzOglmJhKPNXwAZGUjU1cdHqc=;
        b=qqU1yUykOoDe25t7x52hHLAe/rmUSlAbghN/CYTh9JzBbSTqE8SWvUQ9prV2RIerXt
         v0l/Gi9+sQEgLekF0wwzJ+FP8IDnJwyEexnSwLGHmlr5RnF5rrcH7t3VcJy/LjQCvCFa
         OPyj/4Y5COQG3z6fopkNbxasLgaO1E7lcSemzPTfzmgAlyXFxLX8h0oY7Zefw+ZBWZK9
         HzxdVYC+Y9NGdyFFvEvHzjnLxq6rxQ8O+AL4lbCehm9SH5UUav7SMIT25I8DJBpubiPv
         I0aGr+fezrvscA1VztSiXBVmPk1qLeY76ZFI2Yiv05suLgnMjEy0ul5r4e8WG5poC716
         AXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XiyyaBhgFP3FlFH9rKIzOglmJhKPNXwAZGUjU1cdHqc=;
        b=pIDlMYGSANLdXJrAezjYUCpeyzM6KKS1PxMxnWZObR9WFowpQPKeRU8nMOS0Zfik9i
         NfEac5Ph64Py6X5iuEkcdrHpjPXIByLS06xfD7nTq45Ts4cMfTRPyk9biUEjekHQfglq
         PaamfzAgYTD2oIKK/hkMT4VEP+nAM1R6dYe+H5DFwMmmmjEMc+abR/pz2xMjANqlgd5O
         qPyqXynsDjMmEm5TZtfHWl+NXjkQC723XFkzTtWFfA/yPCD79uFGL+9LJXLkCw60hg7c
         mBo8VSpSDK8CnONerki1DY4Gt7vTxZI5rCraQF/7oAGjmttpYh/6HeessFr5M0wtBr4C
         7Cqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XblMMkdZdlrrsIPPNG7oFgkVdJprN+zmYvzR+JbdvaGKSj2B3
	bz2VILK/wYsiARfYkz4Ljhs=
X-Google-Smtp-Source: ABdhPJyL8PZ/2Nv22PQEooN0FVA57nklML6hQimDT1253TLynETnKPPvWzumbli0zI+fQhAd7q6okQ==
X-Received: by 2002:a17:90a:b903:: with SMTP id p3mr16740973pjr.4.1593411530677;
        Sun, 28 Jun 2020 23:18:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6007:: with SMTP id y7ls5802723pji.2.gmail; Sun, 28
 Jun 2020 23:18:50 -0700 (PDT)
X-Received: by 2002:a17:90a:319:: with SMTP id 25mr16514703pje.77.1593411530335;
        Sun, 28 Jun 2020 23:18:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411530; cv=none;
        d=google.com; s=arc-20160816;
        b=0uEz6qhvB+y7bL/sYgZ4S3rG7oqjXOSxm3KbqOKuHJW65dg1d/1EZOsvLGOBc3boOQ
         ybSrRypN/l26OR3fIVsS/NLIeUJjHGJnHuF0NllDNXG46LtThS95t6yiKS+KUXtkiZIJ
         sJ8ruW46OgUpnKgn858JBkhhR0iH8HZPYeZbKjooYCEE9RlM4jtZfssIU1XKUY77+gKP
         KjmN25vla3WIVpypbt3+Ky7r006Fp45LLI6MOIo4Opdb/RDF0DWx6Tzj4vxXMI+4yYH3
         CqyvJ2NRFKBYlPWSOQxOR9GQfxY7kpdQvXw/6lb1K9VBJSKwK0Ftyqld0dD5YBDyRPsx
         LV9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=g0c7XOOnQF00ZfjeTQGIw9PaJthVip/aX3zS1dRtJoE=;
        b=oWuhGSF9g9rXZQZzeyo7aLzZ22/r/ylyIRAKo/O+qpBz8ywUCACGPYvL6UER3lt3+J
         t6vS9jZEaCHFZcDzNo9l9RjzgOMPNHgOgCyCqy/35PjD8ggl2T0Bz0eTU6PAOwMS70ho
         0UF5o+ffvuw0Y0+WsaZICfS92xeHDkXTBnlFxurQIiXEHKOIw+lypu7e/HxFQ1elB7hD
         iEIIFveaMoqpaDp7IYf/ArSdrxUcy7MuqAtB3WrUyCP8kloufhwfV6Nen2IGJvkYDMK3
         acKlKdB6gk6TDkPHBhWD/Vy3KKuMdTW/iBAfi7xtsPO2jBFi1t6+4Icp2xBd1Y+Hikmr
         oE4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=M9ZSb4qo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n68si1470046pgn.1.2020.06.28.23.18.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id f3so7837219pgr.2
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:50 -0700 (PDT)
X-Received: by 2002:a63:4419:: with SMTP id r25mr2949678pga.198.1593411530134;
        Sun, 28 Jun 2020 23:18:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q10sm34391423pfk.86.2020.06.28.23.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
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
Subject: [PATCH v4 07/17] arm64/build: Use common DISCARDS in linker script
Date: Sun, 28 Jun 2020 23:18:30 -0700
Message-Id: <20200629061840.4065483-8-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=M9ZSb4qo;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

Use the common DISCARDS rule for the linker script in an effort to
regularize the linker script to prepare for warning on orphaned
sections. Additionally clean up left-over no-op macros.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/vmlinux.lds.S | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 55ae731b6368..b5a94ec1eada 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -6,6 +6,7 @@
  */
 
 #define RO_EXCEPTION_TABLE_ALIGN	8
+#define RUNTIME_DISCARD_EXIT
 
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/cache.h>
@@ -89,10 +90,8 @@ SECTIONS
 	 * matching the same input section name.  There is no documented
 	 * order of matching.
 	 */
+	DISCARDS
 	/DISCARD/ : {
-		EXIT_CALL
-		*(.discard)
-		*(.discard.*)
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
 		*(.eh_frame)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-8-keescook%40chromium.org.
