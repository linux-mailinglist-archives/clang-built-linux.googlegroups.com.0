Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB44TXT6QKGQE3I5UGDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id D00F42B2892
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 23:34:28 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id o5sf7618409ilh.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 14:34:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605306868; cv=pass;
        d=google.com; s=arc-20160816;
        b=NKiR1R2XZR4xbjptRRZu59ZKBYXXvqeGqoBCQ1L0grUOcdeDfYWupeLF/uJhrTtxji
         gwIYY9c0FjrWYlvvcO0uczpskZ4gTDtuYmq+OVO1NO1/8gT0YBuCIIai3uvlPkaoBzxr
         MxO/RgTSfPC99tX4hL1ovnx3rDzZgoc1F7kXbxHygs6tXN8FhVG9ncAT8Zo3vShrx0BS
         1JHARFmU6L0OWsMmKjvKMXnDIlfcFKfikttZ/1jPwvThM2geTlukrIDUFBODKnCGOHK6
         imj9bZ9QsSYoYSzbENA6kpWfxH92md3FJAT5kkWnbjmRhihQIYYeApGCMlNcFRF41XUp
         vVXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5rCDFYTH/dOZVIBF52vasTGhnCEtlDEUm2WefA9NKUs=;
        b=aT1qdHowMvntVO/2fZWVpU/cGff5NZmutXM9Fy9VW2C+8e8r7GCyyckUQyjshV5HQU
         +t5oKL8/U/5MXbHTz8/MPzq0pCzE+OxUpl08rd83HasEjnA2MRT/Zc95u7ZEeNk0daR3
         mJr97WFPuBRT+gup8Ob7cgrgQYFt0njmNVHFO4WRmVdTHN7Wa+N9e8SChljzXcH1GgvW
         wSzfQYgYjEAyOe7ucSyKQyRgs4N1VZQe57h4qJRccf6VDI15IBolr0mijy6jPJjZNvRi
         s4OkfqkDpyLzOHG7yrG47J2SfgYP/vxbv75FZayuLQ6nZhibr2NH5Vk9/ExqhP3QqVXm
         3hgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="iiW0miU/";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5rCDFYTH/dOZVIBF52vasTGhnCEtlDEUm2WefA9NKUs=;
        b=tQDQe4F6pqW4gEuwdUI1uYNv00/z5NOkWyfQZKkfGRWaZXpIJ+sAOzR0hZ5DfwmIOu
         yLRwkG8nd2iKYTmkABJ0il57gHCUZ2M2ENbOSOKCcU6Xji5KrBWaju573UCGh8RjNp4Y
         2CoYOZvGMSnuJpg/ViyHvGS7iIrQJ97fnG5EWy9qvOgwBorUkbQNoAoSYpKGbMz7NQK8
         8gD24yBj2R2eVFUxXroJmpn1naY/8utOXuAWpcI8DryJE5R2b7d3NFz5x9QMW+FH4N5w
         a0q6hteHA/OkEKAfcrtOSYPD+/tSJGVj+VDPVXtycMbGlJMz4nAgDfIiuEfIy0Da3WHX
         zb3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5rCDFYTH/dOZVIBF52vasTGhnCEtlDEUm2WefA9NKUs=;
        b=aL1OVafUyESvgNpmI7omXTJihd1JTUXRJ7kMKiz8uXczBwTQWW1Wvbirs8oCSibpyT
         iVxo+g3HLSfVn+Bw7px3VsOv0f2suhi9O24qUQJx6kVSlNYWBDc/cIL6UeSJSVxF2GwT
         xVHdt2Asdd+CxG7+4W+agn1Zy1O6SQx/MAfG9vFJCL1ClNxjrkNoYJhjUhIVMyIoWapI
         rf7ZAFwieHpqD7wtCWjs1nmIp71UV7GBmHtbwI+LDxyrcSSM7QByBBAgSYHwW+/rjlbi
         mwxxE3hS2Y1J7Rba9aaLFmnCIqm8GzX//2ZND7uDmjKVKm8vI+wQgRvpB82OC0Gpl0QN
         wYvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Dg1fr06n2sK6iUicjZViLHtfIq9IvroYMWa7oSoyt9pqOEsYy
	9drd/k4Dpr5NWmOJTlRp5jQ=
X-Google-Smtp-Source: ABdhPJzMeU36g4AI2AP4KqkclkbiDVpGh1UON4kcfp1QATfg/HpKZtFQAR3UG9bYn4wboelzjG1vCg==
X-Received: by 2002:a92:d38e:: with SMTP id o14mr1409488ilo.59.1605306867881;
        Fri, 13 Nov 2020 14:34:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:dcf:: with SMTP id m15ls914996jaj.7.gmail; Fri, 13
 Nov 2020 14:34:27 -0800 (PST)
X-Received: by 2002:a02:cd02:: with SMTP id g2mr3883114jaq.22.1605306867480;
        Fri, 13 Nov 2020 14:34:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605306867; cv=none;
        d=google.com; s=arc-20160816;
        b=z0RjZwc1b+PlnI3Jbeo8Btwfumnb9SnFMlAgS7qC75oqWlB7mQs9vDg62G657tVx9F
         BM3k6HlUKKZDifq1xVEwF2TxbzpQe9N1VnzHVWk7+nVU3GoD0qfNkQaFS1D/io6/Vtq+
         rSWeVkMXOC7Y/qvfFBW7EwyCNTPUIqZ4n1Ws4j5CEoZVacXZ65seWG+ejOZUjwaYAqmJ
         2s8puJzqH3sQoFyEs0xd+zrPj+kuWTuyfBIs+5oJFoaeneS3e+Fpa7ioEIPPu1APFAf5
         qtFzsUS8eAqSqVpFrY8vpX3vwPkIPm09aBrS+Mqf8M/vr2tSEHZ8A/T7jU1xTOvVZsO/
         MamA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8Rq1SwLUmuk5yTiT3dYLgLhG1v7f4gsVqDXVvnML+kQ=;
        b=TkiUgndJZZ7tB5kLvfWssh3X8UwcNnY3c9+E5nLRIo9klqjiKyRValxFpqWpQvDY91
         yY2MwR0zpV2ROCrwckTvaw/L6B6Zeay5YMqtxxuZIHQxOdNDa6cOpQqSOrcS0mzgk/Xu
         DE+iUIWuie7jIkgRauSnsyhuRxEE9NptwCrKIhQAqdtioPerB8PQoBoXbUnLHv94YJ9N
         BFCJILoWAvRY69tDvo8YT8JERKUnPPu1zxP6NhN/0VKRvl1iJVSArpf+iQ/uizO2l3so
         yqnLEtlt5cwDErbxMfOGl+t2nkU3zhCSaKzxDpfV+5q1vcsXBE6l+XJ9YkWHcy7xBOR8
         YIFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="iiW0miU/";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id y16si444595ilk.4.2020.11.13.14.34.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 14:34:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-508-kgiX0vPEOgWkK_HzwNLmJg-1; Fri, 13 Nov 2020 17:34:24 -0500
X-MC-Unique: kgiX0vPEOgWkK_HzwNLmJg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 11ACD186DD33;
	Fri, 13 Nov 2020 22:34:22 +0000 (UTC)
Received: from treble (ovpn-117-69.rdu2.redhat.com [10.10.117.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71FFA5D707;
	Fri, 13 Nov 2020 22:34:15 +0000 (UTC)
Date: Fri, 13 Nov 2020 16:34:12 -0600
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Jann Horn <jannh@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201113223412.inono2ekrs7ky7rm@treble>
References: <CABCJKucVjFtrOsw58kn4OnW5kdkUh8G7Zs4s6QU9s6O7soRiAA@mail.gmail.com>
 <20201021085606.GZ2628@hirez.programming.kicks-ass.net>
 <CABCJKufL6=FiaeD8T0P+mK4JeR9J80hhjvJ6Z9S-m9UnCESxVA@mail.gmail.com>
 <20201023173617.GA3021099@google.com>
 <CABCJKuee7hUQSiksdRMYNNx05bW7pWaDm4fQ__znGQ99z9-dEw@mail.gmail.com>
 <20201110022924.tekltjo25wtrao7z@treble>
 <20201110174606.mp5m33lgqksks4mt@treble>
 <CABCJKuf+Ev=hpCUfDpCFR_wBACr-539opJsSFrDcpDA9Ctp7rg@mail.gmail.com>
 <20201113195408.atbpjizijnhuinzy@treble>
 <CABCJKufA-aOcsOqb1NiMQeBGm9Q-JxjoPjsuNpHh0kL4LzfO0w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKufA-aOcsOqb1NiMQeBGm9Q-JxjoPjsuNpHh0kL4LzfO0w@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="iiW0miU/";
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, Nov 13, 2020 at 12:24:32PM -0800, Sami Tolvanen wrote:
> > I still don't see this warning for some reason.
> 
> Do you have CONFIG_XEN enabled? I can reproduce this on ToT master as follows:
> 
> $ git rev-parse HEAD
> 585e5b17b92dead8a3aca4e3c9876fbca5f7e0ba
> $ make defconfig && \
> ./scripts/config -e HYPERVISOR_GUEST -e PARAVIRT -e XEN && \
> make olddefconfig && \
> make -j110
> ...
> $ ./tools/objtool/objtool check -arfld vmlinux.o 2>&1 | grep secondary
> vmlinux.o: warning: objtool: __startup_secondary_64()+0x2: return with
> modified stack frame
> 
> > Is it fixed by adding cpu_bringup_and_idle() to global_noreturns[] in
> > tools/objtool/check.c?
> 
> No, that didn't fix the warning. Here's what I tested:

I think this fixes it:

From: Josh Poimboeuf <jpoimboe@redhat.com>
Subject: [PATCH] x86/xen: Fix objtool vmlinux.o validation of xen hypercalls

Objtool vmlinux.o validation is showing warnings like the following:

  # tools/objtool/objtool check -barfld vmlinux.o
  vmlinux.o: warning: objtool: __startup_secondary_64()+0x2: return with modified stack frame
  vmlinux.o: warning: objtool:   xen_hypercall_set_trap_table()+0x0: <=== (sym)

Objtool falls through all the empty hypercall text and gets confused
when it encounters the first real function afterwards.  The empty unwind
hints in the hypercalls aren't working for some reason.  Replace them
with a more straightforward use of STACK_FRAME_NON_STANDARD.

Reported-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/xen/xen-head.S | 9 ++++-----
 include/linux/objtool.h | 8 ++++++++
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/arch/x86/xen/xen-head.S b/arch/x86/xen/xen-head.S
index 2d7c8f34f56c..3c538b1ff4a6 100644
--- a/arch/x86/xen/xen-head.S
+++ b/arch/x86/xen/xen-head.S
@@ -6,6 +6,7 @@
 
 #include <linux/elfnote.h>
 #include <linux/init.h>
+#include <linux/objtool.h>
 
 #include <asm/boot.h>
 #include <asm/asm.h>
@@ -67,14 +68,12 @@ SYM_CODE_END(asm_cpu_bringup_and_idle)
 .pushsection .text
 	.balign PAGE_SIZE
 SYM_CODE_START(hypercall_page)
-	.rept (PAGE_SIZE / 32)
-		UNWIND_HINT_EMPTY
-		.skip 32
-	.endr
+	.skip PAGE_SIZE
 
 #define HYPERCALL(n) \
 	.equ xen_hypercall_##n, hypercall_page + __HYPERVISOR_##n * 32; \
-	.type xen_hypercall_##n, @function; .size xen_hypercall_##n, 32
+	.type xen_hypercall_##n, @function; .size xen_hypercall_##n, 32; \
+	STACK_FRAME_NON_STANDARD xen_hypercall_##n
 #include <asm/xen-hypercalls.h>
 #undef HYPERCALL
 SYM_CODE_END(hypercall_page)
diff --git a/include/linux/objtool.h b/include/linux/objtool.h
index 577f51436cf9..746617265236 100644
--- a/include/linux/objtool.h
+++ b/include/linux/objtool.h
@@ -109,6 +109,12 @@ struct unwind_hint {
 	.popsection
 .endm
 
+.macro STACK_FRAME_NON_STANDARD func:req
+	.pushsection .discard.func_stack_frame_non_standard
+		.long \func - .
+	.popsection
+.endm
+
 #endif /* __ASSEMBLY__ */
 
 #else /* !CONFIG_STACK_VALIDATION */
@@ -123,6 +129,8 @@ struct unwind_hint {
 .macro UNWIND_HINT sp_reg:req sp_offset=0 type:req end=0
 .endm
 #endif
+.macro STACK_FRAME_NON_STANDARD func:req
+.endm
 
 #endif /* CONFIG_STACK_VALIDATION */
 
-- 
2.25.4

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201113223412.inono2ekrs7ky7rm%40treble.
