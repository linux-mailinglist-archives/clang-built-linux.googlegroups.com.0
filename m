Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTX35SAQMGQEATVBSPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E7C327156
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 07:53:04 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id f5sf10025848pjs.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 22:53:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614495183; cv=pass;
        d=google.com; s=arc-20160816;
        b=qt6d5hzEultfjTD9e2dBzhv5hzjJem92/nyhw0TIeS1lQBAy7aikrvjL6/qiDPB2F/
         /Qh6rH0Gf6n6qG0WjaEJNMgHl5LVmvUulfbKSNF0XMeDXXuO/NMGDoskqw0BVX58E7oL
         ZZgTdCJ831e+gBryQsXXliPQYSArsgNnEF7hcta6jOhKJ/zX5AkyiVAy0orVWfYSHc9c
         gh9Y8Z7P4mWDN2mroFeiUOOSDeQa3W+mUvzWJx0fG5/vUPBl+QfEsbbpvsovtD+UfbLu
         5zQUtTZIj6sws4RuK80LblUgaY+0vnbsQulsreFOuLKqeZ+zbqeG2r0DF5onDSLmQGyY
         CBeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=bvM/kBIFhWSFSu5mj4mvw8Wd4wZK4bNvG1zdymMcqJg=;
        b=gGYlVsCM4OCXlzLfef8wlnoaogQC7B3ZNEes/USfHxWLCNDXztCXVeEwByy414PjGN
         VuLIIPNekGAZAl0V60JpmyAP13Y3jA3iDczzYYHidE13qbZUwtA2NOCXi0pEOCeXaD4x
         6hPhTGSMHFYOgM0MCJ/PGQddQ5l1C9kMr+OnaZf+kxk1rLGBz7wTzpFusFsDG1X/wUds
         1YpjSG5bYMhTiIv4aVsUTmVfJlRMMCc2urjeP4D2e144llOk/Rn8wQTpmcPbVUaIMOpR
         ZFV18WGX1KqMNWXjH0YhHBKxchHk8LhQDQcpMUJz/gVdH2lVPY5G/iRY6ujnVmQMESO7
         HDfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="BrBVUuc/";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bvM/kBIFhWSFSu5mj4mvw8Wd4wZK4bNvG1zdymMcqJg=;
        b=B/LxwnTQQ6TAgJ/zSmcu4mtAPpEoN9Ql+CEUWyW8L4pX64A0JbkCmyIiY1K2AyjHGJ
         Wo/3eGIOgTH8DlVvApD2sG/3pLRKhR20lsqWbznYJUbvKbSsBArnan8KaFDAZAGDChpA
         TWtTQpdEANUE2tUl3mDAD/rvuzM7YXMp5vRBVM7UD8MUhKnEi2J6kyn/Rv4GhNj6NaUi
         Nejrk2N6mG4WSZqyk3BTSO5VYg3TyuSGaudWgnWSb8/wv2RfXKl0rLiVRMiXlo1yD9p2
         lkd31LAXspMttCjiB3atmxzbOscTMkFHCnHU1Ieyu76VJjTC0h8IHaOnBneHPjAqCZ13
         AUXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bvM/kBIFhWSFSu5mj4mvw8Wd4wZK4bNvG1zdymMcqJg=;
        b=qx2fTN8lxVGv9S7RzAtiklRZtcql0Zu5lx7g8QU9aBsTYwnzj9hClJ4UyH/s9UFRXS
         GYtErZJ7rG+eLgFtQgFi0FrQFPJa4TfvI/kqPCIvm1N0m5Glyyh4tC/ccrvLJsNHpiCx
         La6ZPq+6BpJFGVVuihHD/k0RkR/ZVdYoJq8XFO2f288BT6ZNs9cTWCIFFCHGvdc82wJE
         ucg5Fvt8TOc8bpwyGX9UsXhQBsyxJBuZoJzeu7yhvRFA6iIOHIOPWJCBKzjqw8mhDosd
         zocbALoNCCfhCjbNg9VQdA0XB2XfCmNMoh+QhPba/ZAlbnn4drVcoCBmrryuwwNBymtB
         sf/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304lH4G91pvfxVbvJMnfstxJqI5FeAGoa9xOPqPo+InuU0a0+NH
	8JqctufVOUpn4BZvDNjMHto=
X-Google-Smtp-Source: ABdhPJyMHhTzLHwiPeVw8dE9vNnblIregXjdYZ/O0tbTEWFZz25juCSWm00D6jjw9HEGvXmfRCPafQ==
X-Received: by 2002:a17:90b:4013:: with SMTP id ie19mr11288293pjb.45.1614495183075;
        Sat, 27 Feb 2021 22:53:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e54d:: with SMTP id n13ls6877332plf.11.gmail; Sat,
 27 Feb 2021 22:53:02 -0800 (PST)
X-Received: by 2002:a17:902:24d:b029:e3:cfa7:e308 with SMTP id 71-20020a170902024db02900e3cfa7e308mr9887326plc.82.1614495182562;
        Sat, 27 Feb 2021 22:53:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614495182; cv=none;
        d=google.com; s=arc-20160816;
        b=NreFO8j/TNG5w0tn7KKbGyhsDQyjNozWndpW42Zt0Dh4dMnv77tCPFHtuuoVmVxt7N
         mJczRVf9QptZD16UyDKTygh9sttUNISMdMtlG5saSDUA3DTT1rBgIUrpRc5Cqpkv2teX
         QBlKUTR5MQD4wFWNcwa5CfDygvL7q0aMvCjYBPgjlH6dTZqIcVAPxLTtpaq7dgX/xhyu
         Eb+9nzJ76/dw0oqhdcZwR12L+pTA6wjUO9Gm++i46CSUsGEhdHa1QqHeQaq6eDs6Lnco
         NjnT8NyxiSDKe3DuAgnN01YNs2NBaPI2HE0bp7pXFWT1yhit1FwlzouPB8MVCYLm2Rk2
         8F3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VLT76k3hqzaq9PXjkjcCWSXKfsmkzbjdFYQUBwSGz+A=;
        b=lf1h5lVn/3pTG4KIFDrTk3Q6f0qjKX4mqAWDFgycN2hInE9o8q3VXZiaOoW5xlxCm/
         R0Eo2Tr9a5ezQXj8ulA3kdGTzqtuYjLP3eXeAOgo5xCx3l2faEDaIXoPfwAA4j+pfm6w
         Ag0YF8Uk3UGNSD56iVuFzARhaP/yzdRzr+CvCvfDJmpyJb1RDkDigS6tM2FP+XaZOMHd
         s1uH37C1QlPvUFG5TVE29QIt6aN46eKJqaqQWfGuPlKyZYdAQ3Yp7XPBI3ZrMOtJWamr
         eacIbnbFjUFb/xaq7FqDmBy9Fahr175abehUi5NtXJ0g7rJayrU7mhn3ZiSNYA0i2hZn
         1LOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="BrBVUuc/";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v19si131089plo.2.2021.02.27.22.53.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2021 22:53:02 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 02FF064E09;
	Sun, 28 Feb 2021 06:52:56 +0000 (UTC)
Date: Sat, 27 Feb 2021 23:52:54 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: X86 ML <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Fangrui Song <maskray@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"H . J . Lu" <hjl.tools@gmail.com>,
	Andy Lutomirski <luto@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Brian Gerst <brgerst@gmail.com>,
	"Chang S. Bae" <chang.seok.bae@intel.com>,
	Chao Yu <chao@kernel.org>, "Darrick J. Wong" <djwong@kernel.org>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	Gabriel Krisman Bertazi <krisman@collabora.com>,
	Ingo Molnar <mingo@redhat.com>, Jaroslav Kysela <perex@perex.cz>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Jethro Beekman <jethro@fortanix.com>,
	Kees Cook <keescook@chromium.org>,
	Miklos Szeredi <miklos@szeredi.hu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sasha Levin <sashal@kernel.org>,
	Sean Christopherson <seanjc@google.com>,
	Takashi Iwai <tiwai@suse.com>,
	ALSA Development Mailing List <alsa-devel@alsa-project.org>,
	Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-xfs <linux-xfs@vger.kernel.org>
Subject: Re: [PATCH RFC] x86: remove toolchain check for X32 ABI capability
Message-ID: <20210228065254.GA30798@24bbad8f3778>
References: <20210227183910.221873-1-masahiroy@kernel.org>
 <CAK7LNASL_X43_nMTz1CZQB+jiLCRAJbh-wQdc23QV0pWceL_Lw@mail.gmail.com>
 <20210228064936.zixrhxlthyy6fmid@24bbad8f3778>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210228064936.zixrhxlthyy6fmid@24bbad8f3778>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="BrBVUuc/";       spf=pass
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

On Sat, Feb 27, 2021 at 11:49:36PM -0700, Nathan Chancellor wrote:
> On Sun, Feb 28, 2021 at 12:15:16PM +0900, Masahiro Yamada wrote:
> > On Sun, Feb 28, 2021 at 3:41 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > This commit reverts 0bf6276392e9 ("x32: Warn and disable rather than
> > > error if binutils too old").
> > >
> > > The help text in arch/x86/Kconfig says enabling the X32 ABI support
> > > needs binutils 2.22 or later. This is met because the minimal binutils
> > > version is 2.23 according to Documentation/process/changes.rst.
> > >
> > > I would not say I am not familiar with toolchain configuration, but
> > 
> > I mean:
> > I would not say I am familiar ...
> > That is why I added RFC.
> > 
> > I appreciate comments from people who are familiar
> > with toolchains (binutils, llvm).
> > 
> > If this change is not safe,
> > we can move this check to Kconfig at least.
> 
> Hi Masahiro,
> 
> As Fangrui pointed out, there are two outstanding issues with x32 with
> LLVM=1, both seemingly related to LLVM=1.
                                    ^ llvm-objcopy

Sigh, note to self, don't write emails while tired...

Cheers,
Nathan

> 
> https://github.com/ClangBuiltLinux/linux/issues/514
> https://github.com/ClangBuiltLinux/linux/issues/1141
> 
> Additionally, there appears to be one from Arnd as well but that one has
> received no triage yet.
> 
> https://github.com/ClangBuiltLinux/linux/issues/1205
> 
> I intend to test this patch as well as a few others at some point in the
> coming week although I am having to play sysadmin due to moving servers
> so I might not be able to get to it until later in the week.
> 
> Cheers,
> Nathan
> 
> > > I checked the configure.tgt code in binutils. The elf32_x86_64
> > > emulation mode seems to be included when it is configured for the
> > > x86_64-*-linux-* target.
> > >
> > > I also tried lld and llvm-objcopy, and succeeded in building x32 VDSO.
> > >
> > > I removed the compile-time check in arch/x86/Makefile, in the hope of
> > > elf32_x86_64 being always supported.
> > >
> > > With this, CONFIG_X86_X32 and CONFIG_X86_X32_ABI will be equivalent.
> > > Rename the former to the latter.
> > >
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > > ---
> > >
> > >  arch/x86/Kconfig                       |  8 ++------
> > >  arch/x86/Makefile                      | 16 ----------------
> > >  arch/x86/include/asm/syscall_wrapper.h |  6 +++---
> > >  arch/x86/include/asm/vdso.h            |  2 +-
> > >  arch/x86/kernel/process_64.c           |  2 +-
> > >  fs/fuse/file.c                         |  2 +-
> > >  fs/xfs/xfs_ioctl32.c                   |  2 +-
> > >  sound/core/control_compat.c            | 16 ++++++++--------
> > >  sound/core/pcm_compat.c                | 20 ++++++++++----------
> > >  9 files changed, 27 insertions(+), 47 deletions(-)
> > >
> > > diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> > > index 2792879d398e..7272cba2744c 100644
> > > --- a/arch/x86/Kconfig
> > > +++ b/arch/x86/Kconfig
> > > @@ -2865,7 +2865,7 @@ config IA32_AOUT
> > >         help
> > >           Support old a.out binaries in the 32bit emulation.
> > >
> > > -config X86_X32
> > > +config X86_X32_ABI
> > >         bool "x32 ABI for 64-bit mode"
> > >         depends on X86_64
> > >         help
> > > @@ -2874,10 +2874,6 @@ config X86_X32
> > >           full 64-bit register file and wide data path while leaving
> > >           pointers at 32 bits for smaller memory footprint.
> > >
> > > -         You will need a recent binutils (2.22 or later) with
> > > -         elf32_x86_64 support enabled to compile a kernel with this
> > > -         option set.
> > > -
> > >  config COMPAT_32
> > >         def_bool y
> > >         depends on IA32_EMULATION || X86_32
> > > @@ -2886,7 +2882,7 @@ config COMPAT_32
> > >
> > >  config COMPAT
> > >         def_bool y
> > > -       depends on IA32_EMULATION || X86_X32
> > > +       depends on IA32_EMULATION || X86_X32_ABI
> > >
> > >  if COMPAT
> > >  config COMPAT_FOR_U64_ALIGNMENT
> > > diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> > > index 2d6d5a28c3bf..e163549f5be7 100644
> > > --- a/arch/x86/Makefile
> > > +++ b/arch/x86/Makefile
> > > @@ -125,22 +125,6 @@ else
> > >          KBUILD_CFLAGS += -mcmodel=kernel
> > >  endif
> > >
> > > -ifdef CONFIG_X86_X32
> > > -       x32_ld_ok := $(call try-run,\
> > > -                       /bin/echo -e '1: .quad 1b' | \
> > > -                       $(CC) $(KBUILD_AFLAGS) -c -x assembler -o "$$TMP" - && \
> > > -                       $(OBJCOPY) -O elf32-x86-64 "$$TMP" "$$TMPO" && \
> > > -                       $(LD) -m elf32_x86_64 "$$TMPO" -o "$$TMP",y,n)
> > > -        ifeq ($(x32_ld_ok),y)
> > > -                CONFIG_X86_X32_ABI := y
> > > -                KBUILD_AFLAGS += -DCONFIG_X86_X32_ABI
> > > -                KBUILD_CFLAGS += -DCONFIG_X86_X32_ABI
> > > -        else
> > > -                $(warning CONFIG_X86_X32 enabled but no binutils support)
> > > -        endif
> > > -endif
> > > -export CONFIG_X86_X32_ABI
> > > -
> > >  #
> > >  # If the function graph tracer is used with mcount instead of fentry,
> > >  # '-maccumulate-outgoing-args' is needed to prevent a GCC bug
> > > diff --git a/arch/x86/include/asm/syscall_wrapper.h b/arch/x86/include/asm/syscall_wrapper.h
> > > index a84333adeef2..69bf87c41a0b 100644
> > > --- a/arch/x86/include/asm/syscall_wrapper.h
> > > +++ b/arch/x86/include/asm/syscall_wrapper.h
> > > @@ -158,7 +158,7 @@ extern long __ia32_sys_ni_syscall(const struct pt_regs *regs);
> > >  #endif /* CONFIG_IA32_EMULATION */
> > >
> > >
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >  /*
> > >   * For the x32 ABI, we need to create a stub for compat_sys_*() which is aware
> > >   * of the x86-64-style parameter ordering of x32 syscalls. The syscalls common
> > > @@ -176,12 +176,12 @@ extern long __ia32_sys_ni_syscall(const struct pt_regs *regs);
> > >
> > >  #define __X32_COMPAT_SYS_NI(name)                                      \
> > >         __SYS_NI(x32, compat_sys_##name)
> > > -#else /* CONFIG_X86_X32 */
> > > +#else /* CONFIG_X86_X32_ABI */
> > >  #define __X32_COMPAT_SYS_STUB0(name)
> > >  #define __X32_COMPAT_SYS_STUBx(x, name, ...)
> > >  #define __X32_COMPAT_COND_SYSCALL(name)
> > >  #define __X32_COMPAT_SYS_NI(name)
> > > -#endif /* CONFIG_X86_X32 */
> > > +#endif /* CONFIG_X86_X32_ABI */
> > >
> > >
> > >  #ifdef CONFIG_COMPAT
> > > diff --git a/arch/x86/include/asm/vdso.h b/arch/x86/include/asm/vdso.h
> > > index 98aa103eb4ab..2963a2f5dbc4 100644
> > > --- a/arch/x86/include/asm/vdso.h
> > > +++ b/arch/x86/include/asm/vdso.h
> > > @@ -37,7 +37,7 @@ struct vdso_image {
> > >  extern const struct vdso_image vdso_image_64;
> > >  #endif
> > >
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >  extern const struct vdso_image vdso_image_x32;
> > >  #endif
> > >
> > > diff --git a/arch/x86/kernel/process_64.c b/arch/x86/kernel/process_64.c
> > > index d08307df69ad..a93b6f4296fc 100644
> > > --- a/arch/x86/kernel/process_64.c
> > > +++ b/arch/x86/kernel/process_64.c
> > > @@ -656,7 +656,7 @@ void set_personality_64bit(void)
> > >
> > >  static void __set_personality_x32(void)
> > >  {
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >         if (current->mm)
> > >                 current->mm->context.flags = 0;
> > >
> > > diff --git a/fs/fuse/file.c b/fs/fuse/file.c
> > > index 8cccecb55fb8..c53c620d1a7a 100644
> > > --- a/fs/fuse/file.c
> > > +++ b/fs/fuse/file.c
> > > @@ -2797,7 +2797,7 @@ long fuse_do_ioctl(struct file *file, unsigned int cmd, unsigned long arg,
> > >  #else
> > >         if (flags & FUSE_IOCTL_COMPAT) {
> > >                 inarg.flags |= FUSE_IOCTL_32BIT;
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >                 if (in_x32_syscall())
> > >                         inarg.flags |= FUSE_IOCTL_COMPAT_X32;
> > >  #endif
> > > diff --git a/fs/xfs/xfs_ioctl32.c b/fs/xfs/xfs_ioctl32.c
> > > index 33c09ec8e6c0..e8038bc966e7 100644
> > > --- a/fs/xfs/xfs_ioctl32.c
> > > +++ b/fs/xfs/xfs_ioctl32.c
> > > @@ -233,7 +233,7 @@ xfs_compat_ioc_fsbulkstat(
> > >         inumbers_fmt_pf         inumbers_func = xfs_fsinumbers_fmt_compat;
> > >         bulkstat_one_fmt_pf     bs_one_func = xfs_fsbulkstat_one_fmt_compat;
> > >
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >         if (in_x32_syscall()) {
> > >                 /*
> > >                  * ... but on x32 the input xfs_fsop_bulkreq has pointers
> > > diff --git a/sound/core/control_compat.c b/sound/core/control_compat.c
> > > index 1d708aab9c98..5d1b94bda2cd 100644
> > > --- a/sound/core/control_compat.c
> > > +++ b/sound/core/control_compat.c
> > > @@ -153,7 +153,7 @@ struct snd_ctl_elem_value32 {
> > >          unsigned char reserved[128];
> > >  };
> > >
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >  /* x32 has a different alignment for 64bit values from ia32 */
> > >  struct snd_ctl_elem_value_x32 {
> > >         struct snd_ctl_elem_id id;
> > > @@ -165,7 +165,7 @@ struct snd_ctl_elem_value_x32 {
> > >         } value;
> > >         unsigned char reserved[128];
> > >  };
> > > -#endif /* CONFIG_X86_X32 */
> > > +#endif /* CONFIG_X86_X32_ABI */
> > >
> > >  /* get the value type and count of the control */
> > >  static int get_ctl_type(struct snd_card *card, struct snd_ctl_elem_id *id,
> > > @@ -350,7 +350,7 @@ static int snd_ctl_elem_write_user_compat(struct snd_ctl_file *file,
> > >         return ctl_elem_write_user(file, data32, &data32->value);
> > >  }
> > >
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >  static int snd_ctl_elem_read_user_x32(struct snd_card *card,
> > >                                       struct snd_ctl_elem_value_x32 __user *data32)
> > >  {
> > > @@ -362,7 +362,7 @@ static int snd_ctl_elem_write_user_x32(struct snd_ctl_file *file,
> > >  {
> > >         return ctl_elem_write_user(file, data32, &data32->value);
> > >  }
> > > -#endif /* CONFIG_X86_X32 */
> > > +#endif /* CONFIG_X86_X32_ABI */
> > >
> > >  /* add or replace a user control */
> > >  static int snd_ctl_elem_add_compat(struct snd_ctl_file *file,
> > > @@ -421,10 +421,10 @@ enum {
> > >         SNDRV_CTL_IOCTL_ELEM_WRITE32 = _IOWR('U', 0x13, struct snd_ctl_elem_value32),
> > >         SNDRV_CTL_IOCTL_ELEM_ADD32 = _IOWR('U', 0x17, struct snd_ctl_elem_info32),
> > >         SNDRV_CTL_IOCTL_ELEM_REPLACE32 = _IOWR('U', 0x18, struct snd_ctl_elem_info32),
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >         SNDRV_CTL_IOCTL_ELEM_READ_X32 = _IOWR('U', 0x12, struct snd_ctl_elem_value_x32),
> > >         SNDRV_CTL_IOCTL_ELEM_WRITE_X32 = _IOWR('U', 0x13, struct snd_ctl_elem_value_x32),
> > > -#endif /* CONFIG_X86_X32 */
> > > +#endif /* CONFIG_X86_X32_ABI */
> > >  };
> > >
> > >  static inline long snd_ctl_ioctl_compat(struct file *file, unsigned int cmd, unsigned long arg)
> > > @@ -463,12 +463,12 @@ static inline long snd_ctl_ioctl_compat(struct file *file, unsigned int cmd, uns
> > >                 return snd_ctl_elem_add_compat(ctl, argp, 0);
> > >         case SNDRV_CTL_IOCTL_ELEM_REPLACE32:
> > >                 return snd_ctl_elem_add_compat(ctl, argp, 1);
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >         case SNDRV_CTL_IOCTL_ELEM_READ_X32:
> > >                 return snd_ctl_elem_read_user_x32(ctl->card, argp);
> > >         case SNDRV_CTL_IOCTL_ELEM_WRITE_X32:
> > >                 return snd_ctl_elem_write_user_x32(ctl, argp);
> > > -#endif /* CONFIG_X86_X32 */
> > > +#endif /* CONFIG_X86_X32_ABI */
> > >         }
> > >
> > >         down_read(&snd_ioctl_rwsem);
> > > diff --git a/sound/core/pcm_compat.c b/sound/core/pcm_compat.c
> > > index 590a46a9e78d..937f5117a81f 100644
> > > --- a/sound/core/pcm_compat.c
> > > +++ b/sound/core/pcm_compat.c
> > > @@ -147,13 +147,13 @@ static int snd_pcm_ioctl_channel_info_compat(struct snd_pcm_substream *substream
> > >         return err;
> > >  }
> > >
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >  /* X32 ABI has the same struct as x86-64 for snd_pcm_channel_info */
> > >  static int snd_pcm_channel_info_user(struct snd_pcm_substream *substream,
> > >                                      struct snd_pcm_channel_info __user *src);
> > >  #define snd_pcm_ioctl_channel_info_x32(s, p)   \
> > >         snd_pcm_channel_info_user(s, p)
> > > -#endif /* CONFIG_X86_X32 */
> > > +#endif /* CONFIG_X86_X32_ABI */
> > >
> > >  struct compat_snd_pcm_status64 {
> > >         snd_pcm_state_t state;
> > > @@ -373,7 +373,7 @@ static int snd_pcm_ioctl_xfern_compat(struct snd_pcm_substream *substream,
> > >         return err;
> > >  }
> > >
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >  /* X32 ABI has 64bit timespec and 64bit alignment */
> > >  struct snd_pcm_mmap_status_x32 {
> > >         snd_pcm_state_t state;
> > > @@ -464,7 +464,7 @@ static int snd_pcm_ioctl_sync_ptr_x32(struct snd_pcm_substream *substream,
> > >
> > >         return 0;
> > >  }
> > > -#endif /* CONFIG_X86_X32 */
> > > +#endif /* CONFIG_X86_X32_ABI */
> > >
> > >  /*
> > >   */
> > > @@ -484,10 +484,10 @@ enum {
> > >         SNDRV_PCM_IOCTL_READN_FRAMES32 = _IOR('A', 0x53, struct snd_xfern32),
> > >         SNDRV_PCM_IOCTL_STATUS_COMPAT64 = _IOR('A', 0x20, struct compat_snd_pcm_status64),
> > >         SNDRV_PCM_IOCTL_STATUS_EXT_COMPAT64 = _IOWR('A', 0x24, struct compat_snd_pcm_status64),
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >         SNDRV_PCM_IOCTL_CHANNEL_INFO_X32 = _IOR('A', 0x32, struct snd_pcm_channel_info),
> > >         SNDRV_PCM_IOCTL_SYNC_PTR_X32 = _IOWR('A', 0x23, struct snd_pcm_sync_ptr_x32),
> > > -#endif /* CONFIG_X86_X32 */
> > > +#endif /* CONFIG_X86_X32_ABI */
> > >  };
> > >
> > >  static long snd_pcm_ioctl_compat(struct file *file, unsigned int cmd, unsigned long arg)
> > > @@ -531,10 +531,10 @@ static long snd_pcm_ioctl_compat(struct file *file, unsigned int cmd, unsigned l
> > >         case __SNDRV_PCM_IOCTL_SYNC_PTR32:
> > >                 return snd_pcm_common_ioctl(file, substream, cmd, argp);
> > >         case __SNDRV_PCM_IOCTL_SYNC_PTR64:
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >                 if (in_x32_syscall())
> > >                         return snd_pcm_ioctl_sync_ptr_x32(substream, argp);
> > > -#endif /* CONFIG_X86_X32 */
> > > +#endif /* CONFIG_X86_X32_ABI */
> > >                 return snd_pcm_common_ioctl(file, substream, cmd, argp);
> > >         case SNDRV_PCM_IOCTL_HW_REFINE32:
> > >                 return snd_pcm_ioctl_hw_params_compat(substream, 1, argp);
> > > @@ -566,10 +566,10 @@ static long snd_pcm_ioctl_compat(struct file *file, unsigned int cmd, unsigned l
> > >                 return snd_pcm_status_user_compat64(substream, argp, false);
> > >         case SNDRV_PCM_IOCTL_STATUS_EXT_COMPAT64:
> > >                 return snd_pcm_status_user_compat64(substream, argp, true);
> > > -#ifdef CONFIG_X86_X32
> > > +#ifdef CONFIG_X86_X32_ABI
> > >         case SNDRV_PCM_IOCTL_CHANNEL_INFO_X32:
> > >                 return snd_pcm_ioctl_channel_info_x32(substream, argp);
> > > -#endif /* CONFIG_X86_X32 */
> > > +#endif /* CONFIG_X86_X32_ABI */
> > >         }
> > >
> > >         return -ENOIOCTLCMD;
> > > --
> > > 2.27.0
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210227183910.221873-1-masahiroy%40kernel.org.
> > 
> > 
> > 
> > --
> > Best Regards
> > Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210228065254.GA30798%4024bbad8f3778.
