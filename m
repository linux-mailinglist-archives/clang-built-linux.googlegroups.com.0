Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBUVD56AAMGQEHFBCKIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 6368F30F139
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 11:52:03 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id d7sf2445610wri.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 02:52:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612435923; cv=pass;
        d=google.com; s=arc-20160816;
        b=zAKrLZZYbxrQNfM3BUF0+4QDpINlJ03m7xMHD2kCUgxJwvKje1PTO+zAdSuwlmFcx8
         d+vczSwx4m+4KB0b4A0KR28Z6EM7gZMyDCkQ12nTkbm3jlZyjdJy25vyWt+faNBeKI+w
         5r6anoHWW0Kcz1vYMTBG175WtDW2fRIdmHZdgOM8xfUA6Odwh7hqGTrnKBK+XewbsCB3
         1w5plk4g1eVAha5x18xb3fWPcnRPMFtDaTSmLaieTsr39jgywJNvW3+/xqZNDDFeh286
         pkpe3kMf/FaHa8HroUs5pjthM/hbFfWB8G1j1Cjn6RkswSeUTzsqUkfc1q66JVCwmStA
         9PuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cFRIb854IZ1HXZ8nbnRLwnqKKE/mywyXiIVcY4NQ3hM=;
        b=NrMYc+yUneP3QJcvqPhtiWEQqZR/A1P+cVuMO9/ych9NqH/Erq1eNcoqiiAAY/0Jc9
         sZDBRLTYGfDLM0eQesOfEoBNctSY7mIv+BpTXLZiQzDLWSa17sj7H1fuH01zqRfkQ4rC
         gQKKwc3FiJuPdTuTPYGy3JOEi1GcNcwGGM53nRI5A4ACLFXGX8NsHfYwJ41wRMtyr0gZ
         0BufvkPUYgsK75ogrLM+hvAF1dJ+cRNGrfv0uuO7gEa7NPrcAn4zunyxzJEJLv9M6GxA
         3YA7FiJW+9vdX+fyhE4RYKxX6CPgLw1mfLHHArbUNzWfedaRrciW8Cx6F5lRYB311Oqg
         BK2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=NkbeH0s9;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cFRIb854IZ1HXZ8nbnRLwnqKKE/mywyXiIVcY4NQ3hM=;
        b=h+IQK8b4+V8S+WhsGX2yAzSfwufRT3RRQifZnjXIAx3f2ou6VTWZyOmqktu8NOXy8Z
         z1yAwzLhXzm5BtspKDcvJKp3seEgJrH532f4NvXAGZanXdV1Zy0GrgOg5/dCISljKMwJ
         1JXSTZfz33Jxdx7AXN40FFEbTwOJp4BYfkuWEez/Rivd5Hfhilcd4EVVcYJ4TP7t753K
         iBtArd7vcwgHVlD72l2Sl2PtewqEv/Vr1ai3AtG9M57lFUskdm0w6TS4Vzu65wzTmOCk
         qDMTXMIhTXsWbyjBGogXMWkMa3teInjNNwRBLuRnJX7u0Ncgvqv11KxftOTnSBBGUhSk
         2VXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cFRIb854IZ1HXZ8nbnRLwnqKKE/mywyXiIVcY4NQ3hM=;
        b=kAvLVLbivXv70U5ZmGXhiep3cTsopJBtnfxJrJ7yQD1WAoNsIs7L9w/PTXahBlHqH1
         +aq6nQWE/CLUixLRoDhGjDEvS5lildntT2y1mntS4glbEkFVbClCJueyhZmTLLm6Kjnp
         MfFf/UH/xdEJvO6rhghRYguSaA4jsBA6w9C1XA7+V9m7U/74azwbbUthbCnvJLjuZIht
         LckDOr9th6/8YxCazsRAg18S/XXFaoB+QP+Utrje8FbusJVqtkgAQSx4lQ1/CLlc0h1D
         MN13kLL1U91KmrqRkhxvcwqM1oW0PXs2/jj8DiccjObANfdIu+/D2h7tjFOq2glXdEkG
         X5lw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fkXgB4zthfnjuwgLPUfqXYDFj/Y9udSX8Zyual1jjGMK5dHya
	w39/ARJIbyJwEgSvwPDygv4=
X-Google-Smtp-Source: ABdhPJwR01WWrKHYopLCLPJ99fhM6HQGWgqx1aNJ8RcUtwtuZARwQicUWl6leLJlbBRncR2JXzsGCg==
X-Received: by 2002:a5d:525c:: with SMTP id k28mr8629268wrc.157.1612435923149;
        Thu, 04 Feb 2021 02:52:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4f88:: with SMTP id n8ls2421645wmq.3.gmail; Thu, 04
 Feb 2021 02:52:02 -0800 (PST)
X-Received: by 2002:a7b:c842:: with SMTP id c2mr6914012wml.100.1612435922307;
        Thu, 04 Feb 2021 02:52:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612435922; cv=none;
        d=google.com; s=arc-20160816;
        b=AoKxFbFEEghQ21IyRp0sd5qUe2fdfbDc9qrdztLdplsNu2fl9QXMqV+iSFnZ/9t/mB
         /Pj9sJtwTQNlwUNPqX36Zhu5ecRFwjEQ+IxVC4J9nInHStIdQR4jugDNbhujTQYpLG3J
         aIa8hwyekxxkPE2MDC6HoSP1qtppZSyUOxi8uIPQIt60MY/u/9fu2IXLxJDJAGNFYb6I
         vC0fW7TF3sOYRn4dF5YZRcsy2qh9bK//urMsvD+KkZ95DN5Xc+PRQJtJSIZcOWQrcXmt
         rAsN+rUWnqC4BW2I/Jb62lHvp98HbsZOgG+enlsr1ydMjwpGpqG1TTLq60Dm97XeuKip
         xabg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=x+q7M5BysVCq0z73BCA5GL6K1zhxLeh9Ep6YuQ1rvpw=;
        b=HDeCuTEYjhnP3cMVCRMdJX3BojFy6BNMKtyyMVzzba/2NYpJBNfMrvRGIooOeY7PRC
         xYpjKlXsyHtuuT2XCXWkn+hO6ogTNa1Eay4NW4ZbJIXAkRfveOENfDyKN1dLgpw+vl2d
         trIZliE+2Cl92Y4KqXHXLtE7VDq8uIF9OmL92iJBx1lSWRrayeuBIW56TuhZWDJ+Dy/e
         YkGprTssagk9+xBrsxvw0Q/lieYLcOfFlfexyvgKh24CB9KYqax1zRuQZ5mMIEEgUgHk
         +81wjxDqWq8i+GO+XUtzv29Qc+fNx++gJlKMIhv1O9nvOb03N9BDDnNPEPfpABuHhPCJ
         RjzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=NkbeH0s9;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id w11si332647wrv.0.2021.02.04.02.52.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 02:52:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0c7e00dc348a22cc2c06fb.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:7e00:dc34:8a22:cc2c:6fb])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id A80071EC00F8;
	Thu,  4 Feb 2021 11:52:01 +0100 (CET)
Date: Thu, 4 Feb 2021 11:51:55 +0100
From: Borislav Petkov <bp@alien8.de>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Arnd Bergmann <arnd@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>,
	Andy Shevchenko <andy@infradead.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-efi <linux-efi@vger.kernel.org>,
	platform-driver-x86@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
Message-ID: <20210204105155.GA32255@zn.tnic>
References: <20210107223424.4135538-1-arnd@kernel.org>
 <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan>
 <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic>
 <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost>
 <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=NkbeH0s9;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

On Wed, Feb 03, 2021 at 09:29:18PM +0100, Ard Biesheuvel wrote:
> I think we have agreement on the approach but it is unclear who is
> going to write the patch.

How's that below?

And frankly, I'd even vote for removing those assertions altogether. If
somehow the EFI pgd lands somewhere else, the kernel will crash'n'burn
spectacularly and quickly so it's not like we won't catch it...

---
diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/include/asm/pgtable_64_types.h
index 91ac10654570..b6be19c09841 100644
--- a/arch/x86/include/asm/pgtable_64_types.h
+++ b/arch/x86/include/asm/pgtable_64_types.h
@@ -156,8 +156,8 @@ extern unsigned int ptrs_per_p4d;
 #define CPU_ENTRY_AREA_PGD	_AC(-4, UL)
 #define CPU_ENTRY_AREA_BASE	(CPU_ENTRY_AREA_PGD << P4D_SHIFT)
 
-#define EFI_VA_START		( -4 * (_AC(1, UL) << 30))
-#define EFI_VA_END		(-68 * (_AC(1, UL) << 30))
+#define EFI_VA_START		( -4UL * (_AC(1, UL) << 30))
+#define EFI_VA_END		(-68UL * (_AC(1, UL) << 30))
 
 #define EARLY_DYNAMIC_PAGE_TABLES	64
 
diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
index e1e8d4e3a213..56fdc0bbb554 100644
--- a/arch/x86/platform/efi/efi_64.c
+++ b/arch/x86/platform/efi/efi_64.c
@@ -123,9 +123,7 @@ void efi_sync_low_kernel_mappings(void)
 	 * only span a single PGD entry and that the entry also maps
 	 * other important kernel regions.
 	 */
-	MAYBE_BUILD_BUG_ON(pgd_index(EFI_VA_END) != pgd_index(MODULES_END));
-	MAYBE_BUILD_BUG_ON((EFI_VA_START & PGDIR_MASK) !=
-			(EFI_VA_END & PGDIR_MASK));
+	MAYBE_BUILD_BUG_ON((EFI_VA_START & PGDIR_MASK) != PGDIR_MASK);
 
 	pgd_efi = efi_pgd + pgd_index(PAGE_OFFSET);
 	pgd_k = pgd_offset_k(PAGE_OFFSET);
@@ -137,8 +135,7 @@ void efi_sync_low_kernel_mappings(void)
 	 * As with PGDs, we share all P4D entries apart from the one entry
 	 * that covers the EFI runtime mapping space.
 	 */
-	BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
-	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
+	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != P4D_MASK);
 
 	pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
 	pgd_k = pgd_offset_k(EFI_VA_END);


-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204105155.GA32255%40zn.tnic.
