Return-Path: <clang-built-linux+bncBCIO53XE7YHBBMVVWT4AKGQEAUJAQHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 391B421E5C4
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 04:38:44 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id d18sf11013496ill.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 19:38:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594694323; cv=pass;
        d=google.com; s=arc-20160816;
        b=akiOSKlREgXql+CEc8QNRAPRYjaVVw5wSlpNylu75bppY/idGzyEOemce0b1BK3WTW
         8YeOUe9a9fiE1At+qr6oDYq3ovY8EiZ/KDe2bMOllbmfW3tnYUU06ZWA2TfpP4YxVlN7
         YsnpbQqmmAvfHFcpqDv5xAIqzHxFEYhtDFObdVWyvZwuaYMHMUmZFkiLZyhIkxip8/xN
         j6Rutg50GYgjFab1BusiDu2MFpcAgfqgwsHmu7xlTmuefr7IYC19ctLvIt3dLHeE+eXx
         aTqO3Ia2oBXCIf4a6K1zcPq3Uy5utmUxscE6u5qWEvEHc4pcJqf3V5ekXt05dAwpOrLU
         0Ytg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8o94QdJfz5QKYYmu27FfzQzyDp2pMLLWzVQuYXg0C7E=;
        b=rkvsEBCP1bdGHqB3iBE/xtMETgEH4GtunRE8DbwibDEf/rdGu0eu0shKi+96sq8PnC
         ilWEjIBp9riwfAv1dKIsSBXGZA1k0F1V2gqXzEH/IG6Q3wxl1tJwkXrJhq2DpsqWvD5L
         7HERSoeX8ucQt5abIKPOrugHkZjgiZFZsvb5qhTK06ratCLKCAIU/3uoNeBJbMDViURg
         0cukc0Et3oHY/1D0vlg14LaxLyr8agkj/L8C24GwIVoIdJUVOF/moIc0NOKB/mbXiKkQ
         93Pm3kaH56jExsibyFZ2NbdICwVsqfHLE+i+KWS9++s+26WB1r4RJkn6zLnXXtx/nwSH
         ABZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8o94QdJfz5QKYYmu27FfzQzyDp2pMLLWzVQuYXg0C7E=;
        b=P81GMSKmy0tg4KylI8okh4PlQgxc4I5vFRglFlqTYglXsE7eeiJuP6KyDQ5ikE78Kz
         Cawdslyml6Gt/20ARABNsu1cl7Ep7qAM/kXwYuor7EhJYynvQj6VbWnbly6/OKIiJD8C
         SB7FAUqdphxEUTwSuAopkwn9ja9zV+zjaDE4fnZM7KIInKAY2jx3Zy+NSc3LisFANEhr
         oRYmR7/Faz/KkJ9wE4t5xm7D/BOEidZ1AFKXlxIsl7u6/rgbbs829jqo/daGtpIPgJQV
         /om7sOGftFBueNopMMEuVcCykRd9Bg7ViPeoRarw50B6KGnlPfe39c2wM5nzXBqPAwJ9
         pTZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8o94QdJfz5QKYYmu27FfzQzyDp2pMLLWzVQuYXg0C7E=;
        b=MKU0eMLHcwtgsC1/3yWuFQda65pQpNjSk45FKvmKVOKTyjMMmLOD64HeMhavdUA9a+
         IRZRuyVShgtfmvyXwtnU9f5LarU0loHWULp4kJGaWVSP8ZCo0mFTi2QmJ/LiRvHF1uMK
         C1ZCj8ksjZNEvbIIqjZhQ02J+LTb2Kjp0wjABUP2OJC7ZaBurAnGeKC17SLyyVhpL3iZ
         4BO2Mn7CyXwLtjI3E7NkVi39X3OBg4EXeKz7o1iFjYsD5jT4zsXDisuBqLZCa93TbNyO
         z8ryiDOBoeubpVLrjZ3pgXfAevxebtpzLq4ONocHuTNp4rnXA8cwGUD9/wumZ9NA8ZaF
         Uc2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sPKuiw/vRsJskN0iarymauA5y+4qHF8L2/thD1AOzGUUepoNi
	53S95whWra2GS08p/a6fULk=
X-Google-Smtp-Source: ABdhPJxy1/HxQeba6MHfMijaHF1Dyl5Qk8ioBwrIxvx+U01L/WA7CTWIcwkXKXmJyUVmpUkyn4NZyg==
X-Received: by 2002:a05:6e02:1250:: with SMTP id j16mr2730631ilq.293.1594694323139;
        Mon, 13 Jul 2020 19:38:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:bb4d:: with SMTP id w74ls4779158ili.6.gmail; Mon, 13 Jul
 2020 19:38:42 -0700 (PDT)
X-Received: by 2002:a92:58d6:: with SMTP id z83mr2769032ilf.186.1594694322678;
        Mon, 13 Jul 2020 19:38:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594694322; cv=none;
        d=google.com; s=arc-20160816;
        b=UQlJsjhhMkPkPrYkg3EZ8pThSlfF1T69laHCQCqKk6SUOlYYQi0ue7t8cv/tdhQgFV
         vA0Uu0vFFYPzvwdAW2QYfxndWyj88jiFGSgJF2dg5berTsHlnSyc6pQH7FJeTosHCzok
         9pyyT+diIwRLgMxEIyP3+QPailKzJV7J2AP/pyA7ERUS7onjQUZlGn7nZLYJ7JsNDN/y
         zQWRBzSJm/xuR/EICMEtTjscBCIump7Dn5Ns40oKYZp8ajtQqgu67WyPu/IYQK6I3XN4
         ccDw10Sh+l2aAp0jeE2QMVAzZ+Z0UKwcuvJF/r+BLLpevyED3OlvKKukbQd6RUlzVFci
         JRKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=hjflrgJ1nEMfvu6o0sT4KLViapV2UjMMsYBLgsk/fRo=;
        b=OoC7DsNxnHH9+AjgyUR3ThCRenM7BJczr/lPIU/p/RI29kcNWdTmsE4p24GFHNZql2
         o7G5OK5KpxbCsllaW+2ac90zvLxW8dIzZE6YfXe4WKHwjrNgep8Klnl2AXvSTjv+4wTD
         fyMzFfqRlfQeWEvNoK/FQblRqKWkuiJnLdphrdwyBTZh1YGN2WcI2xBcw1+hxvozT5Ck
         P8cV+SZNH/5ani5Sy0A2byKu/pF7/Wel28YJ2jj8td60xUnKTm6J8tbDCA5tg9LWBe/y
         wYv35n8OXgAGsvbA7oK3mzt8Xv7p8YY19l/5r8drJWnVYm228CoM8aIPSz7cLoh/fQXf
         qZsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com. [209.85.222.194])
        by gmr-mx.google.com with ESMTPS id o15si889691ilg.3.2020.07.13.19.38.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 19:38:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as permitted sender) client-ip=209.85.222.194;
Received: by mail-qk1-f194.google.com with SMTP id r22so14292294qke.13
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 19:38:42 -0700 (PDT)
X-Received: by 2002:a37:444c:: with SMTP id r73mr2523232qka.141.1594694321988;
        Mon, 13 Jul 2020 19:38:41 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a22sm21046291qka.64.2020.07.13.19.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 19:38:41 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/7] x86/boot/compressed: Get rid of GOT fixup code
Date: Mon, 13 Jul 2020 22:38:32 -0400
Message-Id: <20200714023836.2310569-4-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.194 as
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

From: Ard Biesheuvel <ardb@kernel.org>

In a previous patch, we have eliminated GOT entries from the decompressor
binary and added an assertion that the .got section is empty. This means
that the GOT fixup routines that exist in both the 32-bit and 64-bit
startup routines have become dead code, and can be removed.

While at it, drop the KEEP() from the linker script, as it has no effect
on the contents of output sections that are created by the linker itself.

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/20200523120021.34996-4-ardb@kernel.org
---
 arch/x86/boot/compressed/head_32.S     | 24 ++---------
 arch/x86/boot/compressed/head_64.S     | 57 --------------------------
 arch/x86/boot/compressed/vmlinux.lds.S |  4 +-
 3 files changed, 5 insertions(+), 80 deletions(-)

diff --git a/arch/x86/boot/compressed/head_32.S b/arch/x86/boot/compressed/head_32.S
index 03557f2174bf..39f0bb43218f 100644
--- a/arch/x86/boot/compressed/head_32.S
+++ b/arch/x86/boot/compressed/head_32.S
@@ -49,16 +49,13 @@
  * Position Independent Executable (PIE) so that linker won't optimize
  * R_386_GOT32X relocation to its fixed symbol address.  Older
  * linkers generate R_386_32 relocations against locally defined symbols,
- * _bss, _ebss, _got, _egot and _end, in PIE.  It isn't wrong, just less
- * optimal than R_386_RELATIVE.  But the x86 kernel fails to properly handle
- * R_386_32 relocations when relocating the kernel.  To generate
- * R_386_RELATIVE relocations, we mark _bss, _ebss, _got, _egot and _end as
- * hidden:
+ * _bss, _ebss and _end, in PIE.  It isn't wrong, just less optimal than
+ * R_386_RELATIVE.  But the x86 kernel fails to properly handle R_386_32
+ * relocations when relocating the kernel.  To generate R_386_RELATIVE
+ * relocations, we mark _bss, _ebss and _end as hidden:
  */
 	.hidden _bss
 	.hidden _ebss
-	.hidden _got
-	.hidden _egot
 	.hidden _end
 
 	__HEAD
@@ -192,19 +189,6 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
 	shrl	$2, %ecx
 	rep	stosl
 
-/*
- * Adjust our own GOT
- */
-	leal	_got(%ebx), %edx
-	leal	_egot(%ebx), %ecx
-1:
-	cmpl	%ecx, %edx
-	jae	2f
-	addl	%ebx, (%edx)
-	addl	$4, %edx
-	jmp	1b
-2:
-
 /*
  * Do the extraction, and jump to the new kernel..
  */
diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
index 97d37f0a34f5..bf1ab30acc5b 100644
--- a/arch/x86/boot/compressed/head_64.S
+++ b/arch/x86/boot/compressed/head_64.S
@@ -40,8 +40,6 @@
  */
 	.hidden _bss
 	.hidden _ebss
-	.hidden _got
-	.hidden _egot
 	.hidden _end
 
 	__HEAD
@@ -353,25 +351,6 @@ SYM_CODE_START(startup_64)
 	/* Set up the stack */
 	leaq	boot_stack_end(%rbx), %rsp
 
-	/*
-	 * paging_prepare() and cleanup_trampoline() below can have GOT
-	 * references. Adjust the table with address we are running at.
-	 *
-	 * Zero RAX for adjust_got: the GOT was not adjusted before;
-	 * there's no adjustment to undo.
-	 */
-	xorq	%rax, %rax
-
-	/*
-	 * Calculate the address the binary is loaded at and use it as
-	 * a GOT adjustment.
-	 */
-	call	1f
-1:	popq	%rdi
-	subq	$1b, %rdi
-
-	call	.Ladjust_got
-
 	/*
 	 * At this point we are in long mode with 4-level paging enabled,
 	 * but we might want to enable 5-level paging or vice versa.
@@ -464,21 +443,6 @@ trampoline_return:
 	pushq	$0
 	popfq
 
-	/*
-	 * Previously we've adjusted the GOT with address the binary was
-	 * loaded at. Now we need to re-adjust for relocation address.
-	 *
-	 * Calculate the address the binary is loaded at, so that we can
-	 * undo the previous GOT adjustment.
-	 */
-	call	1f
-1:	popq	%rax
-	subq	$1b, %rax
-
-	/* The new adjustment is the relocation address */
-	movq	%rbx, %rdi
-	call	.Ladjust_got
-
 /*
  * Copy the compressed kernel to the end of our buffer
  * where decompression in place becomes safe.
@@ -556,27 +520,6 @@ SYM_FUNC_START_LOCAL_NOALIGN(.Lrelocated)
 	jmp	*%rax
 SYM_FUNC_END(.Lrelocated)
 
-/*
- * Adjust the global offset table
- *
- * RAX is the previous adjustment of the table to undo (use 0 if it's the
- * first time we touch GOT).
- * RDI is the new adjustment to apply.
- */
-.Ladjust_got:
-	/* Walk through the GOT adding the address to the entries */
-	leaq	_got(%rip), %rdx
-	leaq	_egot(%rip), %rcx
-1:
-	cmpq	%rcx, %rdx
-	jae	2f
-	subq	%rax, (%rdx)	/* Undo previous adjustment */
-	addq	%rdi, (%rdx)	/* Apply the new adjustment */
-	addq	$8, %rdx
-	jmp	1b
-2:
-	ret
-
 	.code32
 /*
  * This is the 32-bit trampoline that will be copied over to low memory.
diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 4bcc943842ab..a4a4a59a2628 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -43,9 +43,7 @@ SECTIONS
 		_erodata = . ;
 	}
 	.got : {
-		_got = .;
-		KEEP(*(.got))
-		_egot = .;
+		*(.got)
 	}
 	.got.plt : {
 		*(.got.plt)
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714023836.2310569-4-nivedita%40alum.mit.edu.
