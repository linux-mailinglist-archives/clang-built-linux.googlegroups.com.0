Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS4EYKAAMGQETZDWQGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D30304ACA
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 21:57:48 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id y29sf11010660qky.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 12:57:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611694667; cv=pass;
        d=google.com; s=arc-20160816;
        b=dE0210vLh+/bU+8VohfIgCf1O0pwCFpNt7JI/DlVx0RMvwPuOQdQr2a8PYCKTjeaQD
         iTou2bcEu5+dCPHKy11hiyJTxB9fKmUWfC7Cl6yG8l8lfAzqtZk2TKb+D7H4UOh6LBTE
         yPrr6rLbMtHiZFKHf8zEOzaRxWlMXfXo6CuOph8zmpalsoMDo7VC5B/ezyJBbNNN5U0I
         mNxhqmdFQzgRaGMOJ6SV1Ablz3tj7i/+zFzyz3zyglbxFxW5o3u5cfqEECzzuvcj7W+E
         /whI/1ZCa1WzNA9h3frSFqJGNE2Azmypl06T9cj8WC4omx8UZUb05u4ch0i8YVm4R0oo
         Rskg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=A7pqUze0Cb+1DVBCsJo/PsYN8idJulizUC4de8y1lk8=;
        b=zjFsfAhEl4tr31P1xv9USlAojMvkXvnCqKQgyKvdQEPYvUwzatRsXFVCZDhO7EwI8k
         +6h4pjY/pe+w3Bp6F6P7pT6yf7EAMQEOOqqd2ElCEGYQDpQlugrQFxKx/x1cRYrGBdhr
         gyGmOuKnSFvUNzjoqCuohDTHi3KREJ79sYQZblUL14NChPFkkXB16KQ5BDs51e3owNOF
         eUl98Bd/Rr9QONee4KKoFyccbnHp7p6JETr7XTZqto+zy7Yiqp0olmEl9KjZabFKIu+e
         oTdg5erOmv33AZJ6wJ4BzLWD9/DDcdHIPA/gZe7KBYLgM/5isJmgYjZmQAI7oIwj+45W
         oPOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=H6ev4GpE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A7pqUze0Cb+1DVBCsJo/PsYN8idJulizUC4de8y1lk8=;
        b=JMrtAOMmHExlRD0XfyTRveUvqwul5e6Iw3HPoI4lLCrDx4bS1fYp9iT3Yiy9e735hP
         Cs7fa3G1rIcgkf0Ntiq7a6n41j9h/KGqxsgINiJrbkJZrsh1RVsTtgTlHccF6LFNtVQV
         Np1knKpi/9xF+tIJB7aNK3n5ttPsiWbDC2N7pBxDfKlNo15EFNkWWG3q1QSwbVDPEPQr
         StZGR8anEQBQkTKhW+BY5Gb5u7hgNklvvM7MeoYBcXJ+6kB/e7H2aHnhatI5+lTQR9qS
         Ytallbfps7KJsdKWyNWABK1CEix877fLJsAZ2wLOs2VChShADbFRqN7KA0ROlFcOFEVu
         DzcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A7pqUze0Cb+1DVBCsJo/PsYN8idJulizUC4de8y1lk8=;
        b=EeK+On75YK4er1YiaiLNbXoNBs8R/Xgca62aNgYtqt2tDnpjP/Xe5ONTdRL8/8aEcA
         6QBuN/U8fE/wjcJ3y7u4szKv0trCRy37sCxYMxhHZ8CVzMiOy3S/i0iUq6W02YmufLAR
         Lo1i4MIRtw3go5Nt85WkzBnwGVXjltYlugn00hAkwgvQSzRYr7EWqGUbnBS3Oai/fyr/
         3YmE9HvQ+rGU9E+q+ylTYfZhZuP2IRpEe+0KHJRjrJOlgSCnAoPSvQgnFfzeyBmQualr
         l+zVowU+y5rZRsHM7TNCmURYnq+ZSTZcgh7vJu/nS9Y6Q7PK5xH4Eqswp44XGwt5VNjy
         EFzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OiQ4mKIbjbZxisYjXW29J8lBLRduq3bfu+0CK+iishEr9fmk8
	e4UkBAk2wvwynWIXx2vPwW0=
X-Google-Smtp-Source: ABdhPJzcPyJFRUFZAAka2vcLddNp7yIWgjqaUYXQE2tSPDTJp74ynr/pW2vgphY4yZHxhzlAHX+b/w==
X-Received: by 2002:ac8:4711:: with SMTP id f17mr7081112qtp.256.1611694667559;
        Tue, 26 Jan 2021 12:57:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:90b:: with SMTP id 11ls1754958qkj.9.gmail; Tue, 26 Jan
 2021 12:57:47 -0800 (PST)
X-Received: by 2002:a37:2f85:: with SMTP id v127mr7612892qkh.18.1611694667160;
        Tue, 26 Jan 2021 12:57:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611694667; cv=none;
        d=google.com; s=arc-20160816;
        b=ActD7CHLKe4du56l4vGx02m7glLfasFQZZe9oeZXYVShbxycYiYQrJaFAvZXx4P0mE
         bKuD7yOOMBQw78ameYhOjhWD2jcM7GyhSrhKFSIdyyx/WxpJ3MAubsPO1VpmveN1xFT3
         aAzllVKEzlHvz3t+QSbgPJi7VIi/FhIVhAK9bW5w60oGLc/x71uawdtiBdK7WlT9KbF2
         thda14dW7m9gLdhhW9l3XmlkljIwQ6q7Jy01dsl1O4HVAIouTOFsY7TeD+axxbkZKMOC
         62Uqndzik4AxHBAp2J/lBMTUVBayErgq2M4n4bkWv5qt2EEr3TsbJuMyi2JDgQtn1+L9
         puyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=qFtyRtbXFJEgwKUWXYyd466pCI3dXpRocpUTu3fy46Y=;
        b=KJLFLIN29vfHMkxlc+JNySIRSI3+lglEw2aa9nkhrMOdIT8oDQ9Q6pFqPs+sWKW4t/
         jmnSw7DF+isIfKUnG06eQJiBrpS1yKlOaJvCXk1EtheyYHjUvkhAbMXeIKGTfZDv7J/L
         ck9wX3vgDW6LkD2ZN67y4sfQNPizuUuNx1fqDkLXa0llbqII/7adMnpPgazUbXE5wBfz
         zCLIThgl5A0O5Tx0GWP63Xg14EkkqZabqd1GqAgpa0zl+8O5WrjmXaWwgMhTOucnwDdp
         Bmc373ADI4B21TNM9FYjGSWdUspBuDw6rsAkA7ui6TSOUrEL2sr5Ej/8wXFMlgVHy9r0
         wJ8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=H6ev4GpE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u4si554142qtd.3.2021.01.26.12.57.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Jan 2021 12:57:47 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 95774221EF;
	Tue, 26 Jan 2021 20:57:45 +0000 (UTC)
Date: Tue, 26 Jan 2021 13:57:43 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: stable@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Backport of 09e43968db40 to 4.14, 4.9, and 4.4
Message-ID: <20210126205743.GA2093914@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=H6ev4GpE;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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


--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Greg and Sasha,

Please find attached backports of 09e43968db40 ("x86/boot/compressed:
Disable relocation relaxation"), targeting 4.14, 4.9, and 4.4. This
fixes an observed boot failure in our CI:

https://github.com/ClangBuiltLinux/continuous-integration2/runs/1766193534

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210126205743.GA2093914%40ubuntu-m3-large-x86.

--LZvS9be/3tNcYl/X
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="4.14-09e43968db40.patch"

From f123004e00dcb4083a6faf062cdcfa94673cb65a Mon Sep 17 00:00:00 2001
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 11 Aug 2020 20:43:08 -0400
Subject: [PATCH 4.14] x86/boot/compressed: Disable relocation relaxation

commit 09e43968db40c33a73e9ddbfd937f46d5c334924 upstream.

The x86-64 psABI [0] specifies special relocation types
(R_X86_64_[REX_]GOTPCRELX) for indirection through the Global Offset
Table, semantically equivalent to R_X86_64_GOTPCREL, which the linker
can take advantage of for optimization (relaxation) at link time. This
is supported by LLD and binutils versions 2.26 onwards.

The compressed kernel is position-independent code, however, when using
LLD or binutils versions before 2.27, it must be linked without the -pie
option. In this case, the linker may optimize certain instructions into
a non-position-independent form, by converting foo@GOTPCREL(%rip) to $foo.

This potential issue has been present with LLD and binutils-2.26 for a
long time, but it has never manifested itself before now:

- LLD and binutils-2.26 only relax
	movq	foo@GOTPCREL(%rip), %reg
  to
	leaq	foo(%rip), %reg
  which is still position-independent, rather than
	mov	$foo, %reg
  which is permitted by the psABI when -pie is not enabled.

- GCC happens to only generate GOTPCREL relocations on mov instructions.

- CLang does generate GOTPCREL relocations on non-mov instructions, but
  when building the compressed kernel, it uses its integrated assembler
  (due to the redefinition of KBUILD_CFLAGS dropping -no-integrated-as),
  which has so far defaulted to not generating the GOTPCRELX
  relocations.

Nick Desaulniers reports [1,2]:

  "A recent change [3] to a default value of configuration variable
   (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
   integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
   relocations. LLD will relax instructions with these relocations based
   on whether the image is being linked as position independent or not.
   When not, then LLD will relax these instructions to use absolute
   addressing mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with
   Clang and linked with LLD to fail to boot."

Patch series [4] is a solution to allow the compressed kernel to be
linked with -pie unconditionally, but even if merged is unlikely to be
backported. As a simple solution that can be applied to stable as well,
prevent the assembler from generating the relaxed relocation types using
the -mrelax-relocations=no option. For ease of backporting, do this
unconditionally.

[0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
[1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
[2] https://github.com/ClangBuiltLinux/linux/issues/1121
[3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
[4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/r/20200812004308.1448603-1-nivedita@alum.mit.edu
[nc: Backport to 4.14]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/x86/boot/compressed/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 3a250ca2406c..644f9e14cb09 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -36,6 +36,8 @@ KBUILD_CFLAGS += -mno-mmx -mno-sse
 KBUILD_CFLAGS += $(call cc-option,-ffreestanding)
 KBUILD_CFLAGS += $(call cc-option,-fno-stack-protector)
 KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
+# Disable relocation relaxation in case the link is not PIE.
+KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
 
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n

base-commit: 2d2791fce891fc20709232d49a6bae075b9a77f8
-- 
2.30.0


--LZvS9be/3tNcYl/X
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="4.9-09e43968db40.patch"

From b5488c5acc9ad2123117fdb5fbcaaa4a9bcb84e3 Mon Sep 17 00:00:00 2001
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 11 Aug 2020 20:43:08 -0400
Subject: [PATCH 4.9] x86/boot/compressed: Disable relocation relaxation

commit 09e43968db40c33a73e9ddbfd937f46d5c334924 upstream.

The x86-64 psABI [0] specifies special relocation types
(R_X86_64_[REX_]GOTPCRELX) for indirection through the Global Offset
Table, semantically equivalent to R_X86_64_GOTPCREL, which the linker
can take advantage of for optimization (relaxation) at link time. This
is supported by LLD and binutils versions 2.26 onwards.

The compressed kernel is position-independent code, however, when using
LLD or binutils versions before 2.27, it must be linked without the -pie
option. In this case, the linker may optimize certain instructions into
a non-position-independent form, by converting foo@GOTPCREL(%rip) to $foo.

This potential issue has been present with LLD and binutils-2.26 for a
long time, but it has never manifested itself before now:

- LLD and binutils-2.26 only relax
	movq	foo@GOTPCREL(%rip), %reg
  to
	leaq	foo(%rip), %reg
  which is still position-independent, rather than
	mov	$foo, %reg
  which is permitted by the psABI when -pie is not enabled.

- GCC happens to only generate GOTPCREL relocations on mov instructions.

- CLang does generate GOTPCREL relocations on non-mov instructions, but
  when building the compressed kernel, it uses its integrated assembler
  (due to the redefinition of KBUILD_CFLAGS dropping -no-integrated-as),
  which has so far defaulted to not generating the GOTPCRELX
  relocations.

Nick Desaulniers reports [1,2]:

  "A recent change [3] to a default value of configuration variable
   (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
   integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
   relocations. LLD will relax instructions with these relocations based
   on whether the image is being linked as position independent or not.
   When not, then LLD will relax these instructions to use absolute
   addressing mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with
   Clang and linked with LLD to fail to boot."

Patch series [4] is a solution to allow the compressed kernel to be
linked with -pie unconditionally, but even if merged is unlikely to be
backported. As a simple solution that can be applied to stable as well,
prevent the assembler from generating the relaxed relocation types using
the -mrelax-relocations=no option. For ease of backporting, do this
unconditionally.

[0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
[1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
[2] https://github.com/ClangBuiltLinux/linux/issues/1121
[3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
[4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/r/20200812004308.1448603-1-nivedita@alum.mit.edu
[nc: Backport to 4.9]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/x86/boot/compressed/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 89b163351e64..7be7acd6a540 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -35,6 +35,8 @@ KBUILD_CFLAGS += -mno-mmx -mno-sse
 KBUILD_CFLAGS += $(call cc-option,-ffreestanding)
 KBUILD_CFLAGS += $(call cc-option,-fno-stack-protector)
 KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
+# Disable relocation relaxation in case the link is not PIE.
+KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
 
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n

base-commit: 8db42574fc93d05e7f1f5fbd88af55f4f69ff586
-- 
2.30.0


--LZvS9be/3tNcYl/X
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="4.4-09e43968db40.patch"

From 68e7a6bb917358c767187d34cc8f8184e64e0ade Mon Sep 17 00:00:00 2001
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 11 Aug 2020 20:43:08 -0400
Subject: [PATCH 4.4] x86/boot/compressed: Disable relocation relaxation

commit 09e43968db40c33a73e9ddbfd937f46d5c334924 upstream.

The x86-64 psABI [0] specifies special relocation types
(R_X86_64_[REX_]GOTPCRELX) for indirection through the Global Offset
Table, semantically equivalent to R_X86_64_GOTPCREL, which the linker
can take advantage of for optimization (relaxation) at link time. This
is supported by LLD and binutils versions 2.26 onwards.

The compressed kernel is position-independent code, however, when using
LLD or binutils versions before 2.27, it must be linked without the -pie
option. In this case, the linker may optimize certain instructions into
a non-position-independent form, by converting foo@GOTPCREL(%rip) to $foo.

This potential issue has been present with LLD and binutils-2.26 for a
long time, but it has never manifested itself before now:

- LLD and binutils-2.26 only relax
	movq	foo@GOTPCREL(%rip), %reg
  to
	leaq	foo(%rip), %reg
  which is still position-independent, rather than
	mov	$foo, %reg
  which is permitted by the psABI when -pie is not enabled.

- GCC happens to only generate GOTPCREL relocations on mov instructions.

- CLang does generate GOTPCREL relocations on non-mov instructions, but
  when building the compressed kernel, it uses its integrated assembler
  (due to the redefinition of KBUILD_CFLAGS dropping -no-integrated-as),
  which has so far defaulted to not generating the GOTPCRELX
  relocations.

Nick Desaulniers reports [1,2]:

  "A recent change [3] to a default value of configuration variable
   (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
   integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
   relocations. LLD will relax instructions with these relocations based
   on whether the image is being linked as position independent or not.
   When not, then LLD will relax these instructions to use absolute
   addressing mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with
   Clang and linked with LLD to fail to boot."

Patch series [4] is a solution to allow the compressed kernel to be
linked with -pie unconditionally, but even if merged is unlikely to be
backported. As a simple solution that can be applied to stable as well,
prevent the assembler from generating the relaxed relocation types using
the -mrelax-relocations=no option. For ease of backporting, do this
unconditionally.

[0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
[1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
[2] https://github.com/ClangBuiltLinux/linux/issues/1121
[3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
[4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: stable@vger.kernel.org
Link: https://lore.kernel.org/r/20200812004308.1448603-1-nivedita@alum.mit.edu
[nc: Backport to 4.4]
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/x86/boot/compressed/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index bf0c7b6b00c3..01eafd8aeec6 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -31,6 +31,8 @@ KBUILD_CFLAGS += -mno-mmx -mno-sse
 KBUILD_CFLAGS += $(call cc-option,-ffreestanding)
 KBUILD_CFLAGS += $(call cc-option,-fno-stack-protector)
 KBUILD_CFLAGS += $(call cc-disable-warning, address-of-packed-member)
+# Disable relocation relaxation in case the link is not PIE.
+KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)
 
 KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
 GCOV_PROFILE := n

base-commit: 4f907dff9d3629fc87f9608770168b68958a9f46
-- 
2.30.0


--LZvS9be/3tNcYl/X--
