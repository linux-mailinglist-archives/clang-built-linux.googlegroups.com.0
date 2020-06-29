Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS4P433QKGQEMRPDOFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CD420CCB5
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:53 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id h2sf2975646pgc.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411532; cv=pass;
        d=google.com; s=arc-20160816;
        b=ps4yNTB6YRMrm+0PfukBaLJQl8lwbh8Ru/1xLQlOXRfVWSkX+TrXVob6hGPkc4HuAR
         gj+m3QfZGMcCBjcrvCV77KgxVO94ZxFpTx86avWedqgnWtl6pOKojZu7sscrfDSMx/tj
         J+RvW4SYh1PXqujuE3tdHEQ76iTJ8B7Ds8aqEsKytud3m94Zl9ekKq/JyNA+XGrNh7x2
         LKcBx8tR2sth+gg4I7LGVwWIbmVDIBstQ+qf6j3Fp5JQCS4hjudole3HfRAKiVfNK+f7
         eQhpAlNQvuRL1umBeIpRyrxppR7okZrfVQM5upy0/bwT18rXI8rGmr0n16/g55Pb/rtL
         OHnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Zj1GmbKh6ePHKoNxkBSpHxWNeTt96rvf4rZn7A2lSRw=;
        b=L6UF3Xlj98C1P3YtOyPnK+PlPnT0H4o9qQd2M1U0VabZ4Wkhr3PNks5/JAj30Coe45
         Ylxd29tMg/OLGf2aip6sTbGNIEmYeEnE8Fv3pNgpn0j+SVIu/+Pj8aPkSsvYMOW30zBI
         Tjr4iGWGyuxDMY9HHrkVayzOA9WFVQUFm8SxgrxDGAAXLXKuq4lp49SsoRqFZVcovUia
         HdHlrH9F0EjNy/vZ5bBaeQs3DhyfvTXYnBtrohwseBJM9gMq1KmG2BveMZRTTaxJdTyZ
         Tr9UbPYh2SbBkitumHoFt5TUHykuLsYF35Z4Ka3bF0+6TEsVGm7P8SQADxynBItxyfYh
         Mk4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iVT4bBfQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zj1GmbKh6ePHKoNxkBSpHxWNeTt96rvf4rZn7A2lSRw=;
        b=Xs71u3JRo4f/C/Kl2vUxdjOn8sxuGhQRe+3DfNeRusT0BDhVaoigSGjUJa9geWkikj
         LuTqJ/jipRG+MYadCdu3uygf77TfukMdv+dFoFu7BrWjnBo2gsaQ+IKwRohI+OroqePs
         FCvUEG4ti0p0dcc2Kk0nfIEt1vCwKRXk+w5O8fBtNxG0izEIhqaW4L4F2dwvU2cr0Plm
         X8GwmhJ/75fhYiGyhNNQpJyrhtYqpgsjnNmi4nsjjnyY2xJpEjBBMy6JU55WhqFyOotH
         Jykhjx6oaluO8eSoelEx9vsZogF7Ha14d44ok6d9HMasUQ/g812FpOSe70rTe1fXxT05
         JM6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zj1GmbKh6ePHKoNxkBSpHxWNeTt96rvf4rZn7A2lSRw=;
        b=nBB4cAC/H8RNm3Ao67t7eHf3YGhRR2SxhYyiDiGVCE0JSCKD47E8hab64jVjx++0dY
         GMoSzTn2XYZc6KSvGrZpB+jrGJNRQATsspCNnsd0rv56IZghuArWCQkoNdCVLSxK6HRl
         YiW8uhzP9b4ZNTWOV/h8ThSeM4BqRbl0Px64KETR9XhnmFuYeX74CGz9s/CwSbCaeE7D
         iqQGDXujCbjsiW20mf3TScGDk81LzVgq5UdhhlXc6CiYY6E5lyPi/+JVpX7vqQIGiuXo
         ziDMaTMWE1mNmAduGVb3bbU2wmVjyvL+KQGbHH4Fm8cC79Z5V4BwDsJi0eg3FIeZBjRs
         Cb7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ti9uvNpfBXtgRnP63gb4F/cJDIWlELAz/sWFiL4J2xAqV41vG
	yRRBob51BEUZGLrcNzOJguw=
X-Google-Smtp-Source: ABdhPJx6hXYsPzHxfStn1W4Q0SuVHYwaij2PBhvSjIK+xt2UdBKLnUCUhtTS6yQAkCJeHNee5cRerw==
X-Received: by 2002:a17:90a:b891:: with SMTP id o17mr1151763pjr.202.1593411531903;
        Sun, 28 Jun 2020 23:18:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6891:: with SMTP id e17ls4241408pgt.3.gmail; Sun, 28 Jun
 2020 23:18:51 -0700 (PDT)
X-Received: by 2002:a65:6714:: with SMTP id u20mr9045115pgf.121.1593411531541;
        Sun, 28 Jun 2020 23:18:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411531; cv=none;
        d=google.com; s=arc-20160816;
        b=jKKaA56q1YoqKZmmkulvAO41js/VrSntBBgzTHYhzX4orpfEdyiGdzJOLbcNbeRgAL
         eYTjDCsj/FQKtF4zhKZCCp49VZ6RkcnBkKNPlnHQp7xCr56tdwoI5zympHfXt8aXf13w
         QZpEgu+1lANW8/ZPWqx6Xl5513Fvp2Ii6tfxbgY2B3Jf4vyKxexS04i5MNnWApvE0Ne9
         jt1D+WjnN4uGl9vkunLwOOPjOCq3NCFM8KLAXcyqjP8Xne84KYFrzl0gdiLEv5K3IKBn
         vb+t97ay5rw7+EyirgX1sf/yJsEwmyr96yUf3Nui8055E8DLyrvyWceIDd0JoYLf0h8Q
         RlHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y6H7F3yYvyF+nG4ZythWO1q4A4EGexkc0hsQxsFmb9Y=;
        b=ZPHM01bRYjEEPt4Y+fFKj4AK6AiBawgbAJ78Wc/N3yPqGMfFWkqMc8TvjT+WAaYA1A
         kVquv1yF69svVs1ntD+ftJprw3PVGjqSbIy3ke4UCdhZIdyLPwDZkgwd5gs1x8P7u3nk
         hgjtXNvOdcaViTsxY4Y39tgHphKhZojAUr3KDK8yYuO51I4jVGZcZSFcVn2p7PusnzzF
         gg943gsZqFT0ViEl9QmsODxjCEv/zHob5QuEGCjIoHdAcm25MafAzdqktsYEKJRm+164
         FDZ9ADpcloZ+4jJY4s6g0hxI1rWN1Xj1MteSzwuaHR07xRHTGyzv4IhrviIWr7YY4qtA
         mbdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iVT4bBfQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id b8si193705pju.2.2020.06.28.23.18.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id gc9so1115035pjb.2
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:51 -0700 (PDT)
X-Received: by 2002:a17:90a:d585:: with SMTP id v5mr15976566pju.38.1593411531309;
        Sun, 28 Jun 2020 23:18:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 199sm23398281pgc.79.2020.06.28.23.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:48 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
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
Subject: [PATCH v4 10/17] arm64/kernel: Remove needless Call Frame Information annotations
Date: Sun, 28 Jun 2020 23:18:33 -0700
Message-Id: <20200629061840.4065483-11-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200629061840.4065483-1-keescook@chromium.org>
References: <20200629061840.4065483-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iVT4bBfQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-11-keescook%40chromium.org.
