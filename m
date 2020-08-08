Return-Path: <clang-built-linux+bncBCIO53XE7YHBBREGXD4QKGQE3TN5V4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 8702523F5D0
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Aug 2020 03:43:33 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id i66sf2995414ile.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Aug 2020 18:43:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596851012; cv=pass;
        d=google.com; s=arc-20160816;
        b=cPoxI3H6BxsC9+Msfx5TUkPpVPHdMnMVN/mMKODSO6K4IaqdSjMG2ZHU2EcH+ylbPW
         t/zgYB9qlyyA/41aMvTI7h5/DATa/UX39JyL2X4AOkVh1wnvPhkjTBiKdJ36svZkUHYs
         j4bgE/+Yp/KlCbxboJ39uDn7P/v75F1jvtLmfl9/ijDsuQUUYIMNxPg85byj0ewRFga6
         Lwx5MOLLxBe3e5SHMTLjoqVUBdnEmhbYJG2v5GFjZSLPKPxT9w2Bx4mMO567qTTZffcp
         TWywHyrBvkPqcKRRwLIUFi9XlMg+74c+FXQpDd+wImnl1oEzAa0xaeKzh+60tfj9k3SC
         VEcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=6dLi+50MvrCCqXKyxzaXP6CxOVvb+JaZcHFwtWZGx1I=;
        b=cEqgnwwxRED4LlO0hDIxoOVExutLVHmdjChy/c4igzrzjTqeZ5QFGskk++dXz7EwWt
         dumGsoagad4p4QTcEZQ6CT/+DupdZCkvx0ATgZmzvSNdAAG2fQ2zMwc7xPwQ7Tf7/eg5
         116E47s44KoP4cL7/wcj6LirC6UzohOCoK/aN7ezaDYnoRLIa8+0ClrGvj4LxHwxZ02I
         lplKY7saDZlxVfkaxsv3TcFebWkQgCn/UWtwVbt0/fJwIl/uNaZD+tDzI8Cr0RJ+OSJi
         l0XNUdY0u99orM5w9MQmRtuLK/tevWfEjiNr5ceEPC2E/9aZGxDA1YVcw/b6GJwgWln1
         zzdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QOuvOjIQ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6dLi+50MvrCCqXKyxzaXP6CxOVvb+JaZcHFwtWZGx1I=;
        b=JCImnrf3pG6NbLI3uFoXpR3INM3LD5v1M812AIIw5AnVvZuhSwsK740CLQG0QVfb5e
         JGVwlnYwSTOLTIj2wWacakjh2eUHp4uK+mrqoPWlqPxUFd5GtpZDpEP/HSfbO81G/paz
         MGn6oMZL73iu9ls93fnlzPv3DU/tQwPWm7381oBt5+xEIViyraLHmTi4ewvFAtbqtESQ
         J+XLU7RpiJygEZovW/OmafVv132lzj09EsiTDtNw5tfLNsSlEPGnYILBXOJZrpESFHMb
         27RuMLpensssrPjaqFOjVss5uZU9+GGGlKMV0DQJtDWBJvyL32QYElYmWarXq7ntef9u
         m12w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6dLi+50MvrCCqXKyxzaXP6CxOVvb+JaZcHFwtWZGx1I=;
        b=IR2iTW7ticJGNTHS9N7U0OwEqBKS91Qfe7/SwIU63Iuqa6qadExDLxYwTvzBS014qd
         rokbFyNKMvpfgCId2WIbW5XB+vpwKdheS4IvwTgcIAePpCvkD+MyzhLJ2LRNdTW4uMJg
         ZJPKT2DvDBPv2lgy+NqEZWUSQHX8Xx26CGBVG9Qp5kQvjTqlTs8cMU+3a+1CAfRWsVBc
         yoNpRrOGDmT0E1HfcM7wudQ02gwnNYCc45PvhzUnGoI87lCEnq5MVUetDDVXP9yJEYsx
         3LIm5rk5pQVwZNYzq9He0liJZHmRpOvSh2QZ5X6TS8mNh8EjuCTjDISGbvmH+NsgFaJS
         SXNA==
X-Gm-Message-State: AOAM530ZmF5+mgdb+gLJrSsvkdTgvlodvP9Al7bb4JnRh801T8Db2CNK
	f3MnFlK+QGzBeNyYid+93vI=
X-Google-Smtp-Source: ABdhPJyZPBiiiFQSua1zM6UBbeI+1uM+GERNKjmpJJvbOYlFm4jtIgX3H2kqokS9mfa4x+vNyizH6Q==
X-Received: by 2002:a5d:848d:: with SMTP id t13mr7308993iom.73.1596851012120;
        Fri, 07 Aug 2020 18:43:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ba4c:: with SMTP id o73ls2850980ili.11.gmail; Fri, 07
 Aug 2020 18:43:31 -0700 (PDT)
X-Received: by 2002:a92:9a84:: with SMTP id c4mr7378707ill.1.1596851011408;
        Fri, 07 Aug 2020 18:43:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596851011; cv=none;
        d=google.com; s=arc-20160816;
        b=OzbXO19Z5i1OSlKwaRUFH2aWJ2WT3qXYsyMcc3z/V6EcIqiuZBg8cMWy9DSU7G0PjA
         4D9ZYetzM/xkuz5XBIipZVtKsSwMnz40+T9+JJTYfi9tCk7tWUwV5S2sFLoM3f7Il0as
         yRIYCgyQG8tnTDfOUugUb14l2eier3PhacJJD/4C3aFb1+bQR86iDCUSO2FECqEu5xeA
         anS0JujYBbjGq5uUsJlNcftjsC2Y86hy6nZ5kHB2V0SSroaGsb/O3Ls5OHKI8cGiS3tz
         RsFb5MYfUDR5k/epBFaJCcONZMRZzFxWskwzack8l75IptFyYGbbflOmyYGnDl0qkYtl
         E4ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=NeMTx5ad2H12Pv+IrkQPOiim237u3kUlwVWeiu51cS0=;
        b=nm3XGEye8eZvwA80FZXvmXDuaKutW8YAPlladOKDf2BmJNKrYOR+9/wgAAAq0Zkcak
         1wuYw8tnBclatSSzbbBlOTA3g83qw0tY2+J/33I5eD3z7pEKrHeYV/nSSd7odNJwJXvM
         MxtpJ2GzW4wrNv+eer0/UQQPU941KZ3FqJx3GaXM0nc9BoEm7mGqgkgVvCqrGzfmsFvN
         NBHVlMlj7fhHtrAbj89PYSoi2440C1dwlYvCPhxrfmcsYzAY0O8HY6ynpCtD+H/0xXUq
         qpYAfW0UAQ26omFSbqEx7Dul7Mc5l+d9C7ASjosoFyt1kTyCJVVyBw+oNZVBk96DTwvd
         0FYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QOuvOjIQ;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id t6si602370ioi.1.2020.08.07.18.43.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2020 18:43:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id x69so3468110qkb.1
        for <clang-built-linux@googlegroups.com>; Fri, 07 Aug 2020 18:43:31 -0700 (PDT)
X-Received: by 2002:a37:9f13:: with SMTP id i19mr15547501qke.316.1596851010808;
        Fri, 07 Aug 2020 18:43:30 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id j31sm9699527qtb.63.2020.08.07.18.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2020 18:43:30 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 7 Aug 2020 21:43:27 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	Fangrui Song <maskray@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	e5ten.arch@gmail.com, "# 3.4.x" <stable@vger.kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
	Dmitry Golovin <dima@golovin.in>, Marco Elver <elver@google.com>,
	Nick Terrell <terrelln@fb.com>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] x86/boot: avoid relaxable symbols with Clang
Message-ID: <20200808014327.GA1925552@rani.riverdale.lan>
References: <20200807194100.3570838-1-ndesaulniers@google.com>
 <20200807212914.GB1454138@rani.riverdale.lan>
 <CAKwvOdmD1OMnYE55O+YUkAh+C4Der+2CqKd7JVzfr0+6hYx6jw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmD1OMnYE55O+YUkAh+C4Der+2CqKd7JVzfr0+6hYx6jw@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QOuvOjIQ;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Fri, Aug 07, 2020 at 02:54:39PM -0700, Nick Desaulniers wrote:
> On Fri, Aug 7, 2020 at 2:29 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Fri, Aug 07, 2020 at 12:41:00PM -0700, Nick Desaulniers wrote:
> > > A recent change to a default value of configuration variable
> > > (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
> > > integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
> > > relocations. LLD will relax instructions with these relocations based on
> > > whether the image is being linked as position independent or not.  When
> > > not, then LLD will relax these instructions to use absolute addressing
> > > mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with Clang
> > > and linked with LLD to fail to boot.
> >
> > It could also cause kernels compiled with gcc and linked with LLD to
> > fail in the same way, no? The gcc/gas combination will generate the
> > relaxed relocations from I think gas-2.26 onward. Although the only
> > troublesome symbol in the case of gcc/gas is trampoline_32bit_src,
> > referenced from pgtable_64.c (gcc doesn't use a GOTPC reloc for _pgtable
> > etc).
> 
> Thanks for taking a look, and the feedback. I appreciate it!
> 
> $ gcc --version | head -n 1
> gcc (Debian 9.3.0-11) 9.3.0
> $ make -j71 clean defconfig bzImage
> $ llvm-readelf -r arch/x86/boot/compressed/*.o | grep -e
> R_X86_64_GOTPCRELX -e R_X86_64_REX_GOTPCRELX
> 0000000000000114  000000120000002a R_X86_64_REX_GOTPCRELX
> 0000000000000000 trampoline_32bit_src - 4
> $ llvm-readelf -r arch/x86/boot/compressed/vmlinux | grep -e
> R_X86_64_GOTPCRELX -e R_X86_64_REX_GOTPCRELX
> $
> 
> So it looks like yes.  I guess then we'd need to add a check for
> CONFIG_LD_IS_LLD and CONFIG_CC_IS_GCC and binutils version is 2.26+?
> I don't mind adding support for that combination, but I'd like to skip
> it in this patch for the sake of backporting something small to stable
> to get our CI green ASAP, since CONFIG_LD_IS_LLD probably doesn't
> exist for those stable branches, which will complicate the backport of
> such a patch.  So I'd do it in a follow up patch if we're cool with
> that?
> 

What if we did it only if we couldn't enable -pie, like the below patch?
I think this should cover all the cases without needing LD_IS_LLD
checks.

For BFD, the only case that should change is binutils-2.26, which
supports relaxations but not -z noreloc-overflow, and will now have
relax-relocations disabled. It currently works (with gcc) only because
the relaxation of
	movq foo@GOTPCREL(%rip), %reg
to
	movq $foo, %reg
in the non-pie case was only added in 2.27, which is also when -z
noreloc-overflow was added, allowing -pie to be enabled. With 2.26, it
only gets relaxed to
	leaq foo(%rip), %reg
which is all LLD currently does as well.

diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
index 8abc30b27ba3..d25bb71f195a 100644
--- a/arch/x86/boot/compressed/Makefile
+++ b/arch/x86/boot/compressed/Makefile
@@ -60,6 +60,13 @@ else
 KBUILD_LDFLAGS += $(shell $(LD) --help 2>&1 | grep -q "\-z noreloc-overflow" \
 	&& echo "-z noreloc-overflow -pie --no-dynamic-linker")
 endif
+
+# Disable relocation relaxation if not building as PIE
+ifeq ($(filter -pie,$(KBUILD_LDFLAGS)),)
+KBUILD_CFLAGS += $(call as-option, -Wa$(comma)-mrelax-relocations=no)
+KBUILD_AFLAGS += $(call as-option, -Wa$(comma)-mrelax-relocations=no)
+endif
+
 LDFLAGS_vmlinux := -T
 
 hostprogs	:= mkpiggy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200808014327.GA1925552%40rani.riverdale.lan.
