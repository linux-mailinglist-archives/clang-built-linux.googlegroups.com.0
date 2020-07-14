Return-Path: <clang-built-linux+bncBCIO53XE7YHBBNFVWT4AKGQETWVEGKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E5C21E5C5
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 04:38:45 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id k4sf1294869pjs.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 19:38:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594694324; cv=pass;
        d=google.com; s=arc-20160816;
        b=Utci+Ma5gsU3bi5vO0VG9Ig1kYl5Mhm4x5XYJ0FanjMeIEh6otjr9Ilv53rDNj62G3
         iHJFCCiiQ8hd+WMMP3ALO3Lh3P4C4o4mgQ9FhPmXZD5CKtCcdMyjce+09b2ExuZM+AuF
         RWWuhWMRPNtnYDyDfZxUvyqsf+PmbYDoFws8A8pW7ndSTer0mt+n//PnPE3Ee7AlzCwY
         /qtuZB+4gWCoDXcJ/+CekAPsTfhrUEBv+nowxQZhx3a5wXPwICiC3ENpbeR5/UNxNX3Y
         AeCvp603feUix2xWWnpXbDhW1BNqy/rHCRDDecvCwU3XurXut+y8+pfchOLIVjaHN0V7
         OhEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qo8ZfUW1JJ7xUK+IktWjdgDq1sY0XfhocsY7Vl6urs4=;
        b=aR3b9yKXEObRS8eYPrn5ReODJ+BpORQCTyBK0qHwh/kzrJwgCJAyxIxLf6KcrfQU2T
         RvZJWRxGWGhLJogXftz93zvFAFu+V/NsXGqi3JoIKLLuPWnUL22kbHYrG/Bz9+Vq74VZ
         /wkFMVgOsSrjctUspJpgcwswmLqRAGK4AZ9MCZy1MiSIzqlWL5yStG5jxfsoBAFqeKHk
         DIE45kcGrOP99CELYhvGx/NgxWGMXAhqqTW98ArcuqU20qg1ZuwHr7FGoMTWdkCqOxM9
         DDn3kj5FUeR/unmiucJhVgtU7Lo45LIgSCbIPxXlS/TEY9NduTa39GpXUiFGliu2y15V
         fXww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qo8ZfUW1JJ7xUK+IktWjdgDq1sY0XfhocsY7Vl6urs4=;
        b=FytQgY/oYlDBYr58jfYvWd/vp4yQwgNIUeP+NtFyvdaqtwRGi2lly770vLYGcGDtfs
         LX1jm0AIpH1rg3GAmuu6TG4TxD0R3mT2yCcJ4FaLQt0tbVYSaM3GI0Pfmlg++dquqq6O
         +rYdl73yB1vFhH53H/xWZiRoNtF7iS4qXS7mnZTLWp1PGWQtHGWrEjHemzULkwF33viV
         OcfuiGhuxfMBW7m2+JXVN239rXSBwXdXhWm7gqziXEkkwvUvx3EnBhnI81fMrcWggXBa
         0llxOeML7AYy6/zRYkvtIAnuiF/WzYRBRDz4ivtlmmiPprnB//6Fol19AwpQoVlHD0QK
         DS5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qo8ZfUW1JJ7xUK+IktWjdgDq1sY0XfhocsY7Vl6urs4=;
        b=mQcfCdzu9X+NrAw+H3wCHaL7rJLoqplJmYRfNM5LDRLWKOqt1x9umjAwSBNXkjTmR3
         GA2McRLvfUICQUOvp/07Unjn5O/SiRvtPBXOU6d0784r1B727hs9z8dOQzPsKEyWbp8L
         eH1vGLgtl+aYh1tU4zWLQbcG1rTagrLFEsJYMfEGTPuOqvXfkrRMOIX8tFnNDJ/gSQ4n
         XgKvJZR5b34g5oLIb9CWD4mNKd5CqicKZv2dhBODP78WrNGICKXdO3IJD1RIMNpklCiU
         /8orsjWOUqiEdj9eAEElodpZKcNCdjU0UsQa9Lac1Hft5kO6Y6EhpVOzbTXC0bIc0mm7
         0czQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qhQ9Z8cbnjxfko3/5WeB8w3pu45fkO3WCxyeLLynYdmUyGm9/
	n3UsbUm3atTqW2+zRhIinI8=
X-Google-Smtp-Source: ABdhPJxU7N4IGo5+9h2CdF6mvcAveAwNdpzN6glL8mdjiTJXH52UCpq0mcmWXitasmAvvH0fDeTV2w==
X-Received: by 2002:a17:902:a987:: with SMTP id bh7mr2134392plb.197.1594694324344;
        Mon, 13 Jul 2020 19:38:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7e97:: with SMTP id z145ls6016055pfc.4.gmail; Mon, 13
 Jul 2020 19:38:43 -0700 (PDT)
X-Received: by 2002:a63:ca0c:: with SMTP id n12mr1745641pgi.216.1594694323915;
        Mon, 13 Jul 2020 19:38:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594694323; cv=none;
        d=google.com; s=arc-20160816;
        b=O+GslvyUQM3LyEXWpbhUX1T1lv0O+ZKn+RjYfdNEns1Grm3eu3TKMoRXYDESbL34GS
         5NCPB6XWIqLvILLnUPhKsfz7TfoioDy3ZP/fYsFfBjClFwYVcKCZV7n5mV9L6KS7X3z2
         zlxLLl9sAl0UQc1E9/epm/eDudN1PJqjDQkr7B0rntsDxiq04S2LqQ0DmApD/23nUJ+6
         EL0aOn0TqCvsQOn07bjvb2RZjyjaUHot8GjNtxqPesVg/Jg1i+dl1Snsg0FofIz/5vT4
         c1HZjGNGmTqaqS1GSHv8XK78g0r3/de4n8DYF+dlADbc+t51WcF1UQqTKCelBWRBUluf
         JVDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=ypmaqJCaWru1//3r1Y8vm/BttJnmALbhqbmJfGQPjbM=;
        b=asHu1cv8sPRIthDMHlJWKUBKpDQ8Lsy3dMV5QhuJeBXNBbCqpJpt4Nj7EIqV3IISUX
         U7k5/ePOJxSFNX2b2zi3EDZ5mE3lWj2Vbl56a1ERbhvO7kxXKA53WLT63eV51MPJvnt6
         pC/p6CNET3nXdggezczcH1WEsOUbX9ANuxyOW5pgQGboZH2jDd4Qp/OoA95ND4CPZTX+
         RyP+kiSmoTOEhjmP9UMj1xzCPEzCqDobP8Ey58O5PIPYDYXqXgsjW9Rcg2dmUsMaC052
         jFK9vCjO2EpGn/gfbzdfdOe9i4bKAeQ5CU0AFMsc1Moh3NmdbzgLWtAXPXXExlxLebV4
         X8cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com. [209.85.222.193])
        by gmr-mx.google.com with ESMTPS id q13si873435pfc.6.2020.07.13.19.38.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 19:38:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as permitted sender) client-ip=209.85.222.193;
Received: by mail-qk1-f193.google.com with SMTP id c139so14303415qkg.12
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 19:38:43 -0700 (PDT)
X-Received: by 2002:a05:620a:8d8:: with SMTP id z24mr2619107qkz.189.1594694323089;
        Mon, 13 Jul 2020 19:38:43 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a22sm21046291qka.64.2020.07.13.19.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 19:38:42 -0700 (PDT)
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
Subject: [PATCH v4 4/7] x86/boot: Add .text.* to setup.ld
Date: Mon, 13 Jul 2020 22:38:33 -0400
Message-Id: <20200714023836.2310569-5-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.222.193 as
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

Add .text.* to the .text output section to fix this, and also prevent
any future surprises if the compiler decides to create other such
sections.

[1] https://reviews.llvm.org/D75225

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
---
 arch/x86/boot/setup.ld | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/boot/setup.ld b/arch/x86/boot/setup.ld
index 24c95522f231..49546c247ae2 100644
--- a/arch/x86/boot/setup.ld
+++ b/arch/x86/boot/setup.ld
@@ -20,7 +20,7 @@ SECTIONS
 	.initdata	: { *(.initdata) }
 	__end_init = .;
 
-	.text		: { *(.text) }
+	.text		: { *(.text .text.*) }
 	.text32		: { *(.text32) }
 
 	. = ALIGN(16);
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714023836.2310569-5-nivedita%40alum.mit.edu.
