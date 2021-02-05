Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB5646SAAMGQE2LIJHOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EB5310A68
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 12:39:37 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id v10sf176753lfe.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 03:39:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612525177; cv=pass;
        d=google.com; s=arc-20160816;
        b=uFaBhrkkpgaA+bOQjcuauaE/WPho3NSdX3XPeovPt3caiIEmDDUEzj173JOhs/cuFk
         huB3SdKwu5UunjLjbQhTuvZRchtuGX9yb//FXmU8pLrpU6eVoNhc0HwsyurzN5ZI3021
         nW///mXuFGXPRRkySRG4/3F1LkzqOOFEi6qXzDtivrnuWw1F47mDgcBsNm972LLUn+m7
         mAVq4tezN1Opw31g588qHhVWJ+qGXHpM9qRXH4FciRK9S4ZXyZdsb3slN8iWqdd6BZXD
         N0Hu2+OQuPCnAmaEGPOVkgrH3Py69UnNmVk9B9QpBiwbh9BDTvW0ISbvwcjDJnJRXOVV
         ao2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=L2MPnTXz1mK1ZBXbKVLfXiTiNaBzlYT8X1IICrjoLyg=;
        b=uO87dsBhF9hdcoHM6LrmtyXCLHQbGrXLwwuvC+3/eVSlgtRM1M+YIEf8a7SOexP82D
         LZp9B6xlQ6YtmHl8a/dtTo+AiACrwRrGyuqRiAb5Cs9q+cSRKuqnyfHzCJDjcvjd0TI6
         uuPGeI1S2UGEvO4pcz54iyfrZqh4/EPnv0FnA77fgrzZGHyIw40yEb60RlKxcVH2He9C
         84Jfh8s15f+gh0AsqUlFmgDrUkWalB5LeailBiJeMz85+cLT4gEjAcsg5NIvMp+iyQ0S
         YjnxEA7cWpmmICcWQHwxMP1suXMDB4VbOaBH8/OcsuydqkntzuwocZWIQJp8MKbhqTMJ
         nOZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=axZqZvEb;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L2MPnTXz1mK1ZBXbKVLfXiTiNaBzlYT8X1IICrjoLyg=;
        b=odyi82kDjmPYoSscKqfQalvMPIpswtJcSqYHO9wr/rPofkkvUTRyLBKVjn6MhWfXX2
         zMDt1gtnB9u6PtL9I8e1Fpa/wmLX9ukJzBhvb+OQA0P9GP1myO+IFYV4OOGHMF4c4EOs
         Bx3ahykUgPgkcNwUeOTByXqr/5/iObJA2Euhvjv4ncyFlD6++oc0mxfpyC9BZziZ1bbS
         lttG5Od+1y5LY/QX+QA06MGJ1uUOpPbWnrttGZ5mKNztfxO9BUKEz3pR+6dneWB0WKbX
         HEXPvgU+ZHetBDlQ3Ww4St9NmIGIIEdAN+OT9iGkxUTrlRbwbeNAO6vcn4t5oetFhdP0
         IKEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L2MPnTXz1mK1ZBXbKVLfXiTiNaBzlYT8X1IICrjoLyg=;
        b=gdGqKGUkNTaAAJxxKRkvfku0YHVbuzXvSxxKxSCnk/sgmFTW+61O41DIsdI7wovuc4
         VZicAAf8cUD5yCKDsLscrNagsbm7bUXLCdoWPYq7apgDanA+8I1YuPjOoRCOOmwVjrBV
         1zbHNdlPims5y+DDVI7BQ8myDnx+RB9l8YpPTVCgXuZvVbCEVx7cCdziS9B9krQMKZZh
         vjsUVXoAgnqrTftqia3nxh2PIcG88CG6p5MzJy4k+iPAA6xrbVCsJ1+gJ+rDA+nMGTBd
         QD6VS3dQKwqwVEkTr2e3hrA1RikGI+4XO1iLg69EpM9HhTwtxkvbuzmZdnKWvlE32Tv3
         890g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303+3mnuAQABuO2v84k244Lo9dCDg/CtLnmOdz9E00IHgNn4geD
	OeS/ncZwSH4+JcTa56npBng=
X-Google-Smtp-Source: ABdhPJyRNVcdYdkX4Asj/5B2mG09ikggmNiyjY7JvHKeC2Z26t6vhrOWB8CZBE1WYQW45OuEUJTqyw==
X-Received: by 2002:a2e:80d2:: with SMTP id r18mr2403363ljg.453.1612525175429;
        Fri, 05 Feb 2021 03:39:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5519:: with SMTP id j25ls2164795lfk.2.gmail; Fri, 05 Feb
 2021 03:39:34 -0800 (PST)
X-Received: by 2002:ac2:410e:: with SMTP id b14mr2364384lfi.186.1612525174442;
        Fri, 05 Feb 2021 03:39:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612525174; cv=none;
        d=google.com; s=arc-20160816;
        b=Yxrx2sHllhw2GaXCuoBsVFQEyjVU0lb8QatGzjPrjSs8a8xmNepU2LP5ZlWBgNXMZi
         MCwiesYURGfJXyWgp8jbDPMIZCxpaHRwx4Su8Iddhr+NoxFFKLSaKewqE//h8Ne7gImQ
         mdYctQ4mlXxSc89KRoW7yP9nn5IZFFckGUZCL8gdOHWWFMC/lHPSzkl9qFLyzeEjt3yU
         Sz36csOstpgfZ3F7x92eSGWB8x2Jn8DdJBbvW8+cfKMwJg1D6QbPr4+TuDQtrvs0Ms5N
         4tFPjGXwQ5Z2cX5nkQXm8h/bS9kGVXxuwFlXaz3I9tGixIBt4Hajx07pF0vCRyeDee0f
         dQGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kSeV9Aw1SUgfBE9TGeggqP2AzhIJpeYLs22VEjg0WgM=;
        b=bST9DJ4nIVY9X7WMtiHwIgM010+EYpPdpxvuEcQmrlXoM/pEchYrW6ReMbME/wcLZL
         GmxYdrTZFrwe9rgoQ4ijnIsORzvY8vfGrfniHhbVTssDCeD7T0hLJz43olO/o6C7zQSb
         g5qqxTgrLKIcWSMGA1tTmoBJ/uJpT9vdFTSYB6Up6KLeRGCEdJVkT/cc79qG99qhNGt6
         Ot0aF7XBLhDWOQU34Mvhch4WhUHTNesUip7wVD/UcyW/YZWi25QbdHrn65PusHXQ6oGw
         efvFgatrSRxc44GllUnS65aKecZVQjPUwoB7dP2YrAA9OHlDXm3ETRZmp9ZZfTQQ5g94
         OWfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=axZqZvEb;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id z4si390772lfh.1.2021.02.05.03.39.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 03:39:34 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f0bad00ff9d6d5b91facfca.dip0.t-ipconnect.de [IPv6:2003:ec:2f0b:ad00:ff9d:6d5b:91fa:cfca])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id A04C61EC0529;
	Fri,  5 Feb 2021 12:39:32 +0100 (CET)
Date: Fri, 5 Feb 2021 12:39:30 +0100
From: Borislav Petkov <bp@alien8.de>
To: Arvind Sankar <nivedita@alum.mit.edu>, Ard Biesheuvel <ardb@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
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
Subject: [PATCH] x86/efi: Remove EFI PGD build time checks
Message-ID: <20210205113930.GD17488@zn.tnic>
References: <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
 <20210118202409.GG30090@zn.tnic>
 <YAYAvBARSRSg8z8G@rani.riverdale.lan>
 <CAMj1kXHM98-iDYpAozaWEv-qxhZ0-CUMwSdG532x2d+55gXDhQ@mail.gmail.com>
 <20210203185148.GA1711888@localhost>
 <CAMj1kXFPOvkcw573wzKzMQOgT-nddFcAZo9M4Lk+idn_1UBbnA@mail.gmail.com>
 <20210204105155.GA32255@zn.tnic>
 <YBxqnosGDroAnpio@rani.riverdale.lan>
 <20210204221318.GI32255@zn.tnic>
 <YByMdh/qDEwreq6S@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YByMdh/qDEwreq6S@rani.riverdale.lan>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=axZqZvEb;       spf=pass
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

From: Borislav Petkov <bp@suse.de>

With CONFIG_X86_5LEVEL, CONFIG_UBSAN and CONFIG_UBSAN_UNSIGNED_OVERFLOW
enabled, clang fails the build with

  x86_64-linux-ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mappings':
  efi_64.c:(.text+0x22c): undefined reference to `__compiletime_assert_354'

which happens due to -fsanitize=unsigned-integer-overflow being enabled:

  -fsanitize=unsigned-integer-overflow: Unsigned integer overflow, where
  the result of an unsigned integer computation cannot be represented
  in its type. Unlike signed integer overflow, this is not undefined
  behavior, but it is often unintentional. This sanitizer does not check
  for lossy implicit conversions performed before such a computation
  (see -fsanitize=implicit-conversion).

and that fires when the (intentional) EFI_VA_START/END defines overflow
an unsigned long, leading to the assertion expressions not getting
optimized away (on GCC they do)...

However, those checks are superfluous: the runtime services mapping
code already makes sure the ranges don't overshoot EFI_VA_END as the
EFI mapping range is hardcoded. On each runtime services call, it is
switched to the EFI-specific PGD and even if mappings manage to escape
that last PGD, this won't remain unnoticed for long.

So rip them out.

See https://github.com/ClangBuiltLinux/linux/issues/256 for more info.

Reported-by: Arnd Bergmann <arnd@arndb.de>
Link: http://lkml.kernel.org/r/20210107223424.4135538-1-arnd@kernel.org
Signed-off-by: Borislav Petkov <bp@suse.de>
---
 arch/x86/platform/efi/efi_64.c | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
index e1e8d4e3a213..8efd003540ca 100644
--- a/arch/x86/platform/efi/efi_64.c
+++ b/arch/x86/platform/efi/efi_64.c
@@ -115,31 +115,12 @@ void efi_sync_low_kernel_mappings(void)
 	pud_t *pud_k, *pud_efi;
 	pgd_t *efi_pgd = efi_mm.pgd;
 
-	/*
-	 * We can share all PGD entries apart from the one entry that
-	 * covers the EFI runtime mapping space.
-	 *
-	 * Make sure the EFI runtime region mappings are guaranteed to
-	 * only span a single PGD entry and that the entry also maps
-	 * other important kernel regions.
-	 */
-	MAYBE_BUILD_BUG_ON(pgd_index(EFI_VA_END) != pgd_index(MODULES_END));
-	MAYBE_BUILD_BUG_ON((EFI_VA_START & PGDIR_MASK) !=
-			(EFI_VA_END & PGDIR_MASK));
-
 	pgd_efi = efi_pgd + pgd_index(PAGE_OFFSET);
 	pgd_k = pgd_offset_k(PAGE_OFFSET);
 
 	num_entries = pgd_index(EFI_VA_END) - pgd_index(PAGE_OFFSET);
 	memcpy(pgd_efi, pgd_k, sizeof(pgd_t) * num_entries);
 
-	/*
-	 * As with PGDs, we share all P4D entries apart from the one entry
-	 * that covers the EFI runtime mapping space.
-	 */
-	BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
-	BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
-
 	pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
 	pgd_k = pgd_offset_k(EFI_VA_END);
 	p4d_efi = p4d_offset(pgd_efi, 0);
-- 
2.29.2

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205113930.GD17488%40zn.tnic.
