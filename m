Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBH463D4AKGQEV5G4WWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CA22270D1
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 23:39:44 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id i6sf12318579qkn.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 14:39:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595281183; cv=pass;
        d=google.com; s=arc-20160816;
        b=J79udqn3KzLCc2Qei1f/W5eHcDtcxGbyrPzci5akT4hHnPLwbHnKbc4SZ8h3PA8sLe
         Vgqx+7/HWl3anrGSgIAutpjX1Ffk8MHQWTTvI/Aww/AgKlCcV17UAGp3chw0Il3bqPnX
         VPXfUZbFpv9m7wbfNUXNNSl3W/4ktyCGuHaKOW6JC9PgsaERiCPSCxz3QQCJI0y00YSa
         5Vnkgo2JUdmtshTh/UqWefPiRtAjDxOvE/pIOZQHnzlw7lyOrS7UPhk9zWZ/XxyJzNQB
         x8hwm6GHwM5nWLZeZCLeolV7XFcjqHJrW3wh6/fVBWCDfGL2TWv6IU+bYsEqSP2eO1Zo
         iAeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FwQx/soeFurf74a5VpPGTqvlV/3roDgKVAn6x85KMMQ=;
        b=PlrqYy3uwSoKCXBTIFJWd3UmkO5Fhau9SnbIlCXVxNGxrD/wF/7bJz3q1RLL5VT7Aq
         LWFCwSZsc1jHIJgtbib80pFDfOrPTnLV38+oGj1V9JW3SKqKM1+zJnZGD64Fm/wMo9JK
         p4OOs5MffmCDsppmzxqzcSIcTmKAvqXhAv0z9m+ZnGSiLcRhpG6SXJ6ziIpSURYj98oP
         ycf4W+bamc//2R2ueV2Mw5JtK5plCChnWAQCWtHoxTlHtgZuFP0ygBw3j1qc2jEXNS7a
         C9fNHTym4ZL/mZMD93B2PhfsmhRMqL672rn/mRhUGtyOo9N9ZEd17pKa6dwgBWD1cetR
         IOjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FyiL24pV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FwQx/soeFurf74a5VpPGTqvlV/3roDgKVAn6x85KMMQ=;
        b=lKeZ4yvPSPNhXrIlYh5n0him+rHWWny1RFcgD0iT19oeHTWn3D1jhdRrxuwEnH8AOQ
         sHMhrC9snyrXyXHoIjXDkcZMrTC3rdqVYlh3KrNmKCRQLvFH9oNCJ//p13OBaqvrHEcc
         C9ss/JY3wO9wTeiuHno7VckPrfCdxdF0P49oo3R+E3InOToi0W4tuBzp1XaY/Ui4iLwp
         +ajol6Sf1zl1TQXn6azgD8eyVrLYSZtsliUvCPseF02wxhqw7V712C9r/Du/qabinjsy
         PY5d0u5Dl9AqLE9WujO4/+8bA9K/A1Rsy7GR7SE/Wlnzm7y2B5yeApWHOg5+CzETQVog
         Dcmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FwQx/soeFurf74a5VpPGTqvlV/3roDgKVAn6x85KMMQ=;
        b=ZpDpiib+Eh+htS9BATwP+JNiBCteP+S9rJGLWuLvaBJ+CqPKovSIBjlDZjt0W2zNFI
         zx/2yGgwlXIDXUzGiZ+bH0j87Qz4FuEMI83XF8NPTrlJatnXfARbUAuNt/wLfhErDRl6
         vCSzWjjLd85FJnfBEDZqwaB7ICvVJpDsBoGVWfdHfGa2lRaHjqdwT9Ux3O1IIs9gm8jp
         5nkoP8lD7hDtZIOAClCHcuN6+tXnDifU15+CkUNIwm0C67ji6VrtWN+c/AX2RMUKYYGX
         6ORxMNDKyBuE3dBa+g6pTOPhXon/MsIEY7NL8yWstBM6PZyFp2ZbFBDcFdjTG4Jg0Dwc
         btrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pPTOgmgKvSuV+7Ro7R3sD998c+bn5E/qZlsmwckLZsqmEzvn4
	d+ivumoOgMy3W0nzVJ5OuC8=
X-Google-Smtp-Source: ABdhPJxY9ROY8Tudu+VpFs/2RzT/3TWy7DRHxfXwa3laFClFyMFIMx7Zup+rUpXM0EL7i2RI7IHHkg==
X-Received: by 2002:a37:9ccf:: with SMTP id f198mr3315275qke.168.1595281183534;
        Mon, 20 Jul 2020 14:39:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3b50:: with SMTP id q16ls3531946qte.1.gmail; Mon, 20 Jul
 2020 14:39:43 -0700 (PDT)
X-Received: by 2002:aed:2a36:: with SMTP id c51mr27241718qtd.264.1595281183174;
        Mon, 20 Jul 2020 14:39:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595281183; cv=none;
        d=google.com; s=arc-20160816;
        b=Z32VkDnsKfwsU7jl5kUqdIwxdEumNZBqWbp4DYNU+X7C7F7uku9qVBcc9NQjxbKdsL
         6uDqApCP9sJqBgYr0yBuDQdTB+84HbJDhgsCAE8uTO1bGrMh9bJspiMP/0hgit67bsWD
         kJXEVaeiXcjKAeDYVgXH6ATItZwNziNbKOBnpA4z5iBON69c/01UxDkf90A591IdXkKg
         CpFKjbOhzT2Qm9xYXpT3wLYjY1ea5rHzKTicP1ZpGbPNNpj0jOFubv3v/vgcK8fVzM/y
         bkwUBiCJ+KYgZaGiBVO5L84R5U1MXjqRxMp9l/k+GeRW8WHUL8hFRNZMZ8sWq5C5rAU5
         jW0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=g45a+H7hE+PNbftSwFxhNBrlrnSBThoyaV9WOyIRrKM=;
        b=VHj02iEV1wa8uA+ce4wGRQTtfyE0Q+gVNQGzoaRFB3pX0KFLrb62AJpFf3M45WndLa
         6A10Ov8ArorCepyFJ/W3p6M+KTGwkzMZgc35oqpavE+qR8P4uUTN82q3pDdN/hOKhvDt
         4lGE5yU8n/OmX03w0hhEvQf/rP1zQr3c+vHr0Fwqxs41AhSRy4rXGN21vXqGMoZlM0kG
         JbpZGy+zJ7gZDELjJ17c/ZD6Na25W3ef+7LbDS43DKCb4aakhy9nSEP+b9GGPohDdgcr
         CDIRdfura6Pht3Pw90v99p4R9Q/ifIFB3rzJJxAiZ2uA+7WmE0q5G19Kby/0bjMV1OxU
         ogtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FyiL24pV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b26si1113262qtq.3.2020.07.20.14.39.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jul 2020 14:39:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5D6B522CAF;
	Mon, 20 Jul 2020 21:39:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 8/9] x86: math-emu: Fix up 'cmp' insn for clang ias
Date: Mon, 20 Jul 2020 17:39:31 -0400
Message-Id: <20200720213932.408089-8-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200720213932.408089-1-sashal@kernel.org>
References: <20200720213932.408089-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=FyiL24pV;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 81e96851ea32deb2c921c870eecabf335f598aeb ]

The clang integrated assembler requires the 'cmp' instruction to
have a length prefix here:

arch/x86/math-emu/wm_sqrt.S:212:2: error: ambiguous instructions require an explicit suffix (could be 'cmpb', 'cmpw', or 'cmpl')
 cmp $0xffffffff,-24(%ebp)
 ^

Make this a 32-bit comparison, which it was clearly meant to be.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://lkml.kernel.org/r/20200527135352.1198078-1-arnd@arndb.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/math-emu/wm_sqrt.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/math-emu/wm_sqrt.S b/arch/x86/math-emu/wm_sqrt.S
index d258f59564e11..3b40c98bbbd40 100644
--- a/arch/x86/math-emu/wm_sqrt.S
+++ b/arch/x86/math-emu/wm_sqrt.S
@@ -208,7 +208,7 @@ sqrt_stage_2_finish:
 
 #ifdef PARANOID
 /* It should be possible to get here only if the arg is ffff....ffff */
-	cmp	$0xffffffff,FPU_fsqrt_arg_1
+	cmpl	$0xffffffff,FPU_fsqrt_arg_1
 	jnz	sqrt_stage_2_error
 #endif /* PARANOID */
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200720213932.408089-8-sashal%40kernel.org.
