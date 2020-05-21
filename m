Return-Path: <clang-built-linux+bncBCIO53XE7YHBBTN2TL3AKGQE2MSBL3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id C46D01DD141
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 17:25:02 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id o6sf1250822otp.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 08:25:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590074701; cv=pass;
        d=google.com; s=arc-20160816;
        b=l8/JETS8hEGFxNkj4b119weEqdsi6VjUC3UqJ17jvlwfHUncbwvHFmaxyZqFvisXcf
         wg5R5THoxey0mfNgWF+7Zj7OKOTSfiFHTx7OVE4tBQQ2hAWb9O90QqZi81SQKqktC8sF
         RPRo4cHBfMU5b/wnBLwSvF5W3mm3NDc2LEgPSl3rsbo3FZ97Ht9wUmgW0u9s4C+CuI8N
         IAd6Ih0FdT9CScb3PJHTtdcsTuUPUGAPhzxHKZ1s1HlP2EDRX75l3f4e7tHAHjpCjBuO
         ehMhUbFuQ7V20ZVOItB3jkSxiyfUdpXljDohzd9UtPChmrMovGrp7anJqGhefaKgKe4q
         A+HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cP4ae7uTqKUZquUNzB7pleah/M3ohJGsbCHbc87PKOQ=;
        b=kOKGa4HBXMRgcJjfQZ3vE13bznlsW6QoDTF5AIFPHsbrAA2AFjodlw2PHsEPt9MPJg
         n7iE6GNy6Q0XEIH4slx3dgc823R4/3mY+hB0ZruKPr2ftw9habkns3h7TvpkIeBR1sVf
         6oYhI8Um3ZSloFABNKjlyPRwoaAkuhSgN8+hZ+0KpJHetuDYR+pwIS9YOtGhzmJ/Av0X
         lcDG8DW9I8IUZ0YHaIgpMKdWERLSwe3xaub3XQi87YlOLBRI2KaWxLYrO+qqn/djhvYp
         eWKE2GsS+snPtWETvVjkssxwLcREK1y8k2G8RHJSIvQgCK72Fp4xr/geFo4EQGQT/zGj
         LtFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cP4ae7uTqKUZquUNzB7pleah/M3ohJGsbCHbc87PKOQ=;
        b=dX3XXHubRaPLFeFLgptPF9HNpdto7gP/ovmbF5/MUels2wJCtvn2HX+3dOoRhKDW9t
         Q1Wl8RStG1HL1FGra4zDE/6f4mY6Q8DGtgI9NsOMui5odzNcTzTkysUaV5/G6h5ua4PA
         O3bdQKT7c1aXmorykzaHwM9CgWY6ivlOqiIoo5J9fFgp5eS88jjSyFfHsYIu3PlN7DnR
         /3n1Wuzz+a9Kr/vw1R/oKySrNrBnJQraAw4V56AqdpR7TsbnZSfvCjcU7qHniiqixd6l
         58vvx4Tnf2idJwpvFSvkLQz5apbXTUbOrB5IOUHJMFQjovTkFNeusVhHyfbnuu66bGYY
         o2Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cP4ae7uTqKUZquUNzB7pleah/M3ohJGsbCHbc87PKOQ=;
        b=c/bsoE0Kcqd77G6YRUESVARwdkZeaSlsfG66Ybc5/PT+k4prbgWmLaik7+dKjCvBze
         AbIILlbY3tT5J6C7eYe8BHyqg4EA4vHLct18OXsiTylqFeqkIGwBQJm7B2vc9vQLqB7K
         gT0Od8zuWBUGh8wEF473hLSVCrjVBFo/Kt6O6FIJk6oIQeW2fqeLoE1cCiekyd+ef0yN
         hXWnbMySxa21Xth62KkXXGM94Ei6IDNMXfa984zJ3y8qlcjVIEccL+hU31uyDB4YM7Px
         NIEf7I8+KvX61GMoQWxyPa6AItAy2dC44I5uiknxT8JPqhQXs+bsjRY5y3IiqeNfMOp6
         jBwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gbRBvbuA+KStxJ+bFTaylIcgNxHYBOw2JJyKw/KPRIMdxAjdS
	YbtlAxKiKI30va0bRa6fZkc=
X-Google-Smtp-Source: ABdhPJyxGBoOA+ksBBRHidOETpOM72Zy3Dm9QM0WjhOWtyGpTcZq7d5j6Wcqsw6lLkX2oXF4qIaWUA==
X-Received: by 2002:aca:f550:: with SMTP id t77mr7227698oih.8.1590074701752;
        Thu, 21 May 2020 08:25:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:10e:: with SMTP id b14ls461498oie.1.gmail; Thu, 21
 May 2020 08:25:01 -0700 (PDT)
X-Received: by 2002:a05:6808:698:: with SMTP id k24mr7164573oig.102.1590074701464;
        Thu, 21 May 2020 08:25:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590074701; cv=none;
        d=google.com; s=arc-20160816;
        b=TQ4mJkPcaT5h5oTEr1TboE2QArI1MszOs3eGEarDEW7Wjyf3DI8bQSxJyV/q9oSLDw
         AWWoXyr9wvxqBlUe9hGJJyBaCAbI9FY0hW4MIHYaxuQrfVX1Rxg5I5qjfyFXJiCwYCyV
         /phx1oo+o22QxjWhfhGLhcOLlHcDgFZVGo5tCFsw0r32itcxwAfRRnInr+BcfWUdMbxY
         +jVEltAXGsPNo9+7pk5pw4qOsyJwktmX07lfgiVbYpEqLQoB5WcLym6fdePClfnFNumw
         21F8pSQhWeZUNDzbpkx/7yJPE+m1XnrdAwkgmoKWUlyLbYpB2EKUvnRyqdtMD/fagg0U
         gN0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=aMU0eZ8AgltZAHYm5/2XnSEtaaUEJG/1Tqz8iUjHDdI=;
        b=rrcDPtnr+PkOREAf24ZQGmDWYCSX4AS+SIjdByVwti8VC8a08yBhO57IjVF+4FzvCb
         9T9QipPI7BmJN/sDiI1Fgv8zqOMlIAQ5GdtTnqjCQ89gYob+imE/AHEkzIn/lOf32wAy
         gNk9vwFMWGd82ToWw+82tnuespjg0Zzuy4xAMpAvURq8VcQDs02vlYdiJIAc9UgiLcb9
         PNXUtuQJ2XqE90Teh2XkbvqNFMdZLdKWaLoPuT1W6B5nnNoVFz+176Gmh2CvSuOPQdvB
         HJZkQ0d+wMP0X5eS70g9rzfRE9ca2Q+uoVw1etRIJ6v66FlVJ4BZKljvbjnimizrWLu6
         zbsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com. [209.85.222.196])
        by gmr-mx.google.com with ESMTPS id q5si730488oic.5.2020.05.21.08.25.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2020 08:25:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as permitted sender) client-ip=209.85.222.196;
Received: by mail-qk1-f196.google.com with SMTP id z80so7634791qka.0
        for <clang-built-linux@googlegroups.com>; Thu, 21 May 2020 08:25:01 -0700 (PDT)
X-Received: by 2002:a37:b14:: with SMTP id 20mr4944373qkl.401.1590074700924;
        Thu, 21 May 2020 08:25:00 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id k190sm4682687qkf.40.2020.05.21.08.25.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 May 2020 08:25:00 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: x86@kernel.org
Cc: Fangrui Song <maskray@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] x86/boot: Add .text.startup to setup.ld
Date: Thu, 21 May 2020 11:24:59 -0400
Message-Id: <20200521152459.558081-1-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521021217.yqsulqwfrhqorp7p@google.com>
References: <20200521021217.yqsulqwfrhqorp7p@google.com>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.196 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

gcc puts the main function into .text.startup when compiled with -Os (or
-O2). This results in arch/x86/boot/main.c having a .text.startup
section which is currently not included explicitly in the linker script
setup.ld in the same directory.

The BFD linker places this orphan section immediately after .text, so
this still works. However, LLD git, since [1], is choosing to place it
immediately after the .bstext section instead (this is the first code
section). This plays havoc with the section layout that setup.elf
requires to create the setup header, for eg on 64-bit:

    LD      arch/x86/boot/setup.elf
  ld.lld: error: section .text.startup file range overlaps with .header
  >>> .text.startup range is [0x200040, 0x2001FE]
  >>> .header range is [0x2001EF, 0x20026B]

  ld.lld: error: section .header file range overlaps with .bsdata
  >>> .header range is [0x2001EF, 0x20026B]
  >>> .bsdata range is [0x2001FF, 0x200398]

  ld.lld: error: section .bsdata file range overlaps with .entrytext
  >>> .bsdata range is [0x2001FF, 0x200398]
  >>> .entrytext range is [0x20026C, 0x2002D3]

  ld.lld: error: section .text.startup virtual address range overlaps
  with .header
  >>> .text.startup range is [0x40, 0x1FE]
  >>> .header range is [0x1EF, 0x26B]

  ld.lld: error: section .header virtual address range overlaps with
  .bsdata
  >>> .header range is [0x1EF, 0x26B]
  >>> .bsdata range is [0x1FF, 0x398]

  ld.lld: error: section .bsdata virtual address range overlaps with
  .entrytext
  >>> .bsdata range is [0x1FF, 0x398]
  >>> .entrytext range is [0x26C, 0x2D3]

  ld.lld: error: section .text.startup load address range overlaps with
  .header
  >>> .text.startup range is [0x40, 0x1FE]
  >>> .header range is [0x1EF, 0x26B]

  ld.lld: error: section .header load address range overlaps with
  .bsdata
  >>> .header range is [0x1EF, 0x26B]
  >>> .bsdata range is [0x1FF, 0x398]

  ld.lld: error: section .bsdata load address range overlaps with
  .entrytext
  >>> .bsdata range is [0x1FF, 0x398]
  >>> .entrytext range is [0x26C, 0x2D3]

Explicitly pull .text.startup into the .text output section to avoid
this.

[1] https://reviews.llvm.org/D75225

Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Reviewed-by: Fangrui Song <maskray@google.com>
---
 arch/x86/boot/setup.ld | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 24c95522f231..ed60abcdb089 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -20,7 +20,7 @@ SECTIONS
 	.initdata	: { *(.initdata) }
 	__end_init = .;
 
-	.text		: { *(.text) }
+	.text		: { *(.text.startup) *(.text) }
 	.text32		: { *(.text32) }
 
 	. = ALIGN(16);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521152459.558081-1-nivedita%40alum.mit.edu.
