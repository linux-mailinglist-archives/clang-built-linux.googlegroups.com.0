Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBA6JSL4QKGQEEMY7SVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1001E234E02
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:08:53 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id h94sf8966488uad.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:08:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596236932; cv=pass;
        d=google.com; s=arc-20160816;
        b=ObRmn/1v6WffnuOU2si88H6hlhMCAQ2WhyJQg5B/HoqIOdl1zbuPVl6Aknqh9Mhrpb
         BDaNMBpahQ9cH3E/VCmQ5ri2KpIAbNcGaI//gLhcWLO6A4JHmUEWayncqcyB74dO/ucs
         alTdKwoLCnpuTSCMYV6AscKrYFKds9j6ztN7sKxXcB4fuoSZaLOkKf7aP796PCCNlJrp
         +RAP6BMW3tTUAUnyZ52hFrtV7FsBABqLCL6qi1K54s9A27ncjlShcaam7JPGIzPBYG5c
         qcZIQVQbYfxgUZVkuQCW0vod4p5/cITsszg/PMphxXkR2iGy3LmqjXkwt7h3mEAq1Tl0
         4ATg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/F21sfy+KryhC8UMRrIl+i5VM1YwlGmpz3Su3LvZ7wg=;
        b=C0wKyxTsfgtYdrDxB2K9dMiA0BeIitzW5jd4Qe+qkh/v2HYZ0Rk1wHUMeA3Zdw06Ol
         /6MoKWyed66y/JW4QhNw9/1JYQkQu79zmhofJxT344AMR7qG6C7x/4yJDS0a+JfTynxn
         2QfGzxZPpepJtrBTPYJvA9ZNM6w1FyZOyHAmshR24LRdcrAsOg5zWEiGD2T6oW7hjGMx
         AZwb5ETqsmg8wFrHH1dYOjLW5j6XTJRZ1o1YvQKp2FxY6yaPWT3o3B4sIWIVC1PsVzQz
         DHdCBXIIM9Y2LkZByCKqCPte8Jkue/F+cIZBZtdK5Uil2AIxEnBJaTjArmNMIwoh1mfv
         Cl4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JAuYbSst;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/F21sfy+KryhC8UMRrIl+i5VM1YwlGmpz3Su3LvZ7wg=;
        b=Kgh1NWn+3tJhKH9c1Fsl08cVo6EoEllQt3cADm6T6mW1SenanpmnYNmSik7VeVn7pa
         7Nz9ewZxhJhAfrCQRsxRe11Iiq9Y1rECva19a3/KnjGhWL3kLjpqeCF+Wk9709ibsoH8
         6CuRCwro17ZjQ5hqnWFPecBYYcjb7kCzuynhpdWvRj+dfa04amC4PmF6cS/z8KlGeGbS
         ivP4GXi9ThZ8D3+FyRM0cEBitUSt2awQSaKHeUUZv5JaRROYkUWy5V/KRMlCp5PGhQFx
         c5LU4qtf6glwZ2ylR4tFnc7QSUC0y1Mb7vcuCOvfRa7vbsgD6zuF/lVLB5n+ApOtTZAB
         WZ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/F21sfy+KryhC8UMRrIl+i5VM1YwlGmpz3Su3LvZ7wg=;
        b=Lb3wzoTB6NVImDP0kMb4bQdy02H2peOVbL0i/8A7PUTWiKdjqfByctuSXZxkYUgOWX
         Jb8+MSFLSeU0ONEoY4BECwC/Imb0NY5MxfnPKHxACUSnF5TGlQBjDc+JJKkcTLnIFs56
         OeY6HPVAW4ggXCtLA1M8gHlB98GKH1CY0lEAemutNaa+aQ8frcII/lPrsuklFUAdPHs7
         GkcMUGz/x2RcF6si9UTGzozHFvx1MuCtv0h+i3A9vvVNG36R7jmv7S+5WWOUy70oR3lh
         OzEFE1TV5vR6zfZuEh2tdxymNrXQe9XCg7r2Ueh3EJQsMb6h5n7BAalmuEGMK3i1Pq22
         FEEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5335ND5Q5YNJj7AAdMD4v7dYsbrO7FF3I37CNtV8wDNCbZEZawZ2
	p0JDL+yz99UaKUB2qrkRX1k=
X-Google-Smtp-Source: ABdhPJwk6gfcHhHL60UKfsC3clx6uM2YKEXVtovxwxi4YuuhU2ViaG613p888Q63XSYdYUkiOuYYSw==
X-Received: by 2002:a67:f1d7:: with SMTP id v23mr5168638vsm.66.1596236932057;
        Fri, 31 Jul 2020 16:08:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4906:: with SMTP id z6ls761834uac.6.gmail; Fri, 31 Jul
 2020 16:08:51 -0700 (PDT)
X-Received: by 2002:a9f:3dc6:: with SMTP id e6mr4596368uaj.104.1596236931747;
        Fri, 31 Jul 2020 16:08:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596236931; cv=none;
        d=google.com; s=arc-20160816;
        b=OTPo5VeuXerS7Ale0ibcaWBg9J0cGtUK5tTwgcGNMu6W2TvfQ6CKt2J8cHHiycEL4/
         P9U5hrh4r+dEXpPpyydz3qDRs07NCI7E7w6TGV13bX2K9SFTS1D3SWj1lDbIPktDsjKn
         KWXo5Da1VvLodTpidYO4x9GkFmNGFsY+cJlCmtDkgRDwTQCQxA23rhAn5SNUTFrjn9vc
         z9sFjbKc9E8H5cfledxAwiYGXBB/nnEpSipLGyBPZbBgfpd2/SPe9KZNReGE037ZvkEC
         MrXaJWWNMPATQDENP4621B8a50peOvt6gzvWEiO7azvnNdxHXYsVTKEc3kokLhclWuXY
         mSCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1/odabPwHQ2/Ek+CjiibQWaFn9uH/zMNlMmZjncvN+I=;
        b=KB7p5I7VD4Yk7fvHKU/2oxIXxO0WhO1DkxVMMkrYE0O9DmSFBNM+iss1u9k7qIG3f/
         NEQaiu7882SQY0TjbDSDtfmNEuoo9IRkrmIvxk59t+8M5W5MhWEgVqpLU1DoRFASFDJY
         2heLQXpOgGmNi3gYImV5/OUNB1wa20KUmMjEUGqxzfvkpBOHUuZmU5yqFCUv1iJjzWqV
         9f9PBDnK0/70YrJKiBdMVSaIRcgmrftHJisgwC4m1clXv3vy/hwcwVcs9wHKN+uzvA3V
         vzBzCie33Gqx2VJlAIjJTrXDRUjoe4524CRZqh6C1sWF6abZANZY9yartwweaFDR5RaG
         qt2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JAuYbSst;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id l129si665980vkg.2.2020.07.31.16.08.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:08:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id bh1so5001870plb.12
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:08:51 -0700 (PDT)
X-Received: by 2002:a17:90a:dc06:: with SMTP id i6mr5914699pjv.161.1596236930832;
        Fri, 31 Jul 2020 16:08:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b20sm4306905pfo.88.2020.07.31.16.08.45
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
Subject: [PATCH v5 36/36] arm/build: Assert for unwanted sections
Date: Fri, 31 Jul 2020 16:08:20 -0700
Message-Id: <20200731230820.1742553-37-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JAuYbSst;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::643
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

In preparation for warning on orphan sections, enforce
expected-to-be-zero-sized sections (since discarding them might hide
problems with them suddenly gaining unexpected entries).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/include/asm/vmlinux.lds.h | 10 ++++++++++
 arch/arm/kernel/vmlinux-xip.lds.S  |  2 ++
 arch/arm/kernel/vmlinux.lds.S      |  2 ++
 3 files changed, 14 insertions(+)

diff --git a/arch/arm/include/asm/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
index 6624dd97475c..e0d49fd756f7 100644
--- a/arch/arm/include/asm/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -52,6 +52,16 @@
 		ARM_MMU_DISCARD(*(__ex_table))				\
 		COMMON_DISCARDS
 
+/*
+ * Sections that should stay zero sized, which is safer to explicitly
+ * check instead of blindly discarding.
+ */
+#define ARM_ASSERTS							\
+	.plt (NOLOAD) : {						\
+		*(.iplt) *(.rel.iplt) *(.iplt) *(.igot.plt)		\
+	}								\
+	ASSERT(SIZEOF(.plt) == 0, "Unexpected run-time procedure linkages detected!")
+
 #define ARM_DETAILS							\
 		ELF_DETAILS						\
 		.ARM.attributes 0 : { *(.ARM.attributes) }
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 11ffa79751da..50136828f5b5 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -152,6 +152,8 @@ SECTIONS
 	STABS_DEBUG
 	DWARF_DEBUG
 	ARM_DETAILS
+
+	ARM_ASSERTS
 }
 
 /*
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index dc672fe35de3..5f4922e858d0 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -151,6 +151,8 @@ SECTIONS
 	STABS_DEBUG
 	DWARF_DEBUG
 	ARM_DETAILS
+
+	ARM_ASSERTS
 }
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-37-keescook%40chromium.org.
