Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAUW5SAQMGQEX2RYCVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 998EB327024
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 04:16:19 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id k10sf4470911uag.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 19:16:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614482178; cv=pass;
        d=google.com; s=arc-20160816;
        b=K5ZWsDIJTSVEfMh6PQa4Aqk8d9/UgH7BkR5RQHtkb5JmGmv0k5ank0RUgR8MkR9DlL
         qWryUKxRphOS1dzonVMwLGnfd7uq8UKvl++A5v+ps10gdp7w1vpC8/lhcyrFWvc1Ro4F
         77gehA4gcNXKImvuda9cBbKQG8uS0mCdzm9SK+7yh4ZwIBy8/VKkf1V4hBYtcG9Pkp9z
         mA20yfi8g1Nw/Nn7L0vJzTlQqcsfUDyfarnAveLuLAB4znuj/5JYELT8zs1CL58/Zmrz
         Iselg98aQGcrZ4zHBT0FtUOv0q5f0GkKgwnY5QHUv+DsFOoXOKyL6M0tFSQhOqs+Dqif
         ohOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=cPJdAJ5LVKw1dUOmPii82T8sts7DmdnxST3s5a4yxak=;
        b=BPiFWotDgsQUXf8F0eqLqylE6yKH8kYXW+x/fdJ6xc9VBWIllfCYRCneJbLPv8GDFb
         8G2K5YjEEOJH4YVY6todHUZON2YQ5/Woz9tJ3vr2lltfbm/Jfs3AB+epKJoBvr2Ej8zJ
         acc+DXaDiAuaFM7bjMbBg/qazR7CkNKf+ni4WPtr/2u5rHW4sa4U3HvnVBBWANMIEge1
         bEVssTh/nNavZZjHFK4bXjGQQLHmVQz1iDUqOzolAKTzTkwPqb+ZZqkJl+AAki05mffu
         jIXdMK6UmyvUI0zeWYkX3Lo4ftCztmZ0C2M7piHRToZq7Ahrbdz7KcRYNEalUe/cijuR
         gAfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KcHfYXTc;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cPJdAJ5LVKw1dUOmPii82T8sts7DmdnxST3s5a4yxak=;
        b=SgXb8wUaYXse8ZLtW2pl6PkKup+wL7JNKcsUBf3QNgZLgw4+EDm0V4GNnYbPEaq3dJ
         QtkBAbFdQzWtv2j94fyPh7Le4a/U+75XIYUItfh8uG2iIwvO6GYU+8R7EMatkwn3nhg9
         Hwy3fncTMsxGTzsGrmncQneZQB+lyfW0hhp9HPqQMpTbUgE6Sn3AJYtjbHeaFBTGpK4j
         bJ2lT1S0K2JoNmJizzolRmemgFLX6IY8Nm+XGxpUVu4x8VT1JxH9MZvw83VG1+pq/vWG
         pOuyqsDW3uDGFQFGe165Bf85kbAbymmglIDesiMVdiUqhxI+spzR/qvXmJKrhQulz8Vu
         9UuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cPJdAJ5LVKw1dUOmPii82T8sts7DmdnxST3s5a4yxak=;
        b=rVA1G/EVuuQ3BinqASa6/ZB51pPcJDkdclG3flkHj0jouciMrVj50nuYqN02r+KQFt
         r6jsKY3sy+Xib/ylVRXn0R3GhSRi6SAKC9GzZvkVqSn9nVJOuH28PWvCUryRuPGvsxC8
         akuszccHU62g0G65y5vN11rAZwuzMWuDpLt0soc0j7r2siKLqQdvTOyymZ1mFM87W5xD
         A2ya5Z/Eq+VeX/ntb+rLTmjnLOxWBEZIF1xdqeL2AlQj+n/8H/hVR38scUNA8PUrtijq
         TUjDQCisQyZtisHS/b0E+gCEym9MXZK6w4fRQfMlHyHdtZDVBQkDpmkFn5yIaBw7AYgl
         AvEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531bX33xbFxLM3RDy9Ng2IvhfbaEwKBe23O+/J3Bhqv5Gw2toKTC
	K5wxywpsBsCki94RfAIpHpY=
X-Google-Smtp-Source: ABdhPJyLdUSkQmdrpjJ8h/bPw54EvJnhdRjCz9OCd6fZEpuLRMwimwyaW8t7Bd624AlfoSrE4f1ViA==
X-Received: by 2002:a05:6122:2ba:: with SMTP id 26mr5328741vkq.12.1614482178324;
        Sat, 27 Feb 2021 19:16:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4ac5:: with SMTP id t5ls244513uae.10.gmail; Sat, 27 Feb
 2021 19:16:17 -0800 (PST)
X-Received: by 2002:ab0:13a8:: with SMTP id m37mr6233951uae.38.1614482177733;
        Sat, 27 Feb 2021 19:16:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614482177; cv=none;
        d=google.com; s=arc-20160816;
        b=afc9C1WR7SgaimHTbAcAT3gBhSfgUUtZJqvKtJjQXe9ekbPWqesvZosF8bnSzF3986
         S0zxz6Jv+2Tgm8XOVe0YZAITiHotZEd4WxqQrTzcUe4Qr5qAMjmR1rRnofuQVyYKahLj
         48LNg5XRnbsYgsLWIgzMrxiJ2cURr7qfxE7Fqhr46ks/W0T44tI8r3XCq3puh+shJw8/
         JOXmghK9xAnW+nZovNq+ANn24OeU0mlPmjUaz57brdpKl7k0YS48v9p/OsjZXWOEXKIq
         15w9lIYwGAIGXpzQPXpqKIvpDzIMGx6xGhH6E0gZytHnDmQu9qbKxOqtG7tdEOKtL3qD
         6N3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=f1LWgFSodjA4wcFmP29yk/uWZvPYc7HRvDqgGjiM/4k=;
        b=owct+qYqUuSW+nfL2LxHvOsQLQpwuzkE5m5e347LkH5k3gw+txSfKCQRcg1Lm9voxN
         7AschdveTClgQ6CpImw2sdPZcmtoRa/S7sVG4yBFbHpjKoZnwFFYYt3GgxJwVAHwzZSi
         f7Pb8Jh5RM+sq2oVIPj/yq6X2fH0A3bGcYxkJ+1NwRr/0pkP2sChUbIFqH5ikS8mWE3R
         8ANqAY8zlN54NNvhLzOEi+ISYz1YliIk5FHhyL1hVmnSdWrj7iyVARbszDJ5RU6Cywy9
         61v3/4gxSvN9w7ScuK0lLtepTs41eRbGVDpVisKK/kGltmuaW9e+ZKZB+MLcSlSzPBtu
         bnYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=KcHfYXTc;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id o3si520748vkc.1.2021.02.27.19.16.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2021 19:16:17 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 11S3FsMO009128
	for <clang-built-linux@googlegroups.com>; Sun, 28 Feb 2021 12:15:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 11S3FsMO009128
X-Nifty-SrcIP: [209.85.216.45]
Received: by mail-pj1-f45.google.com with SMTP id jx13so4851452pjb.1
        for <clang-built-linux@googlegroups.com>; Sat, 27 Feb 2021 19:15:54 -0800 (PST)
X-Received: by 2002:a17:902:e891:b029:e4:20d3:3d5c with SMTP id
 w17-20020a170902e891b02900e420d33d5cmr9874257plg.71.1614482153775; Sat, 27
 Feb 2021 19:15:53 -0800 (PST)
MIME-Version: 1.0
References: <20210227183910.221873-1-masahiroy@kernel.org>
In-Reply-To: <20210227183910.221873-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 28 Feb 2021 12:15:16 +0900
X-Gmail-Original-Message-ID: <CAK7LNASL_X43_nMTz1CZQB+jiLCRAJbh-wQdc23QV0pWceL_Lw@mail.gmail.com>
Message-ID: <CAK7LNASL_X43_nMTz1CZQB+jiLCRAJbh-wQdc23QV0pWceL_Lw@mail.gmail.com>
Subject: Re: [PATCH RFC] x86: remove toolchain check for X32 ABI capability
To: X86 ML <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Fangrui Song <maskray@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        "H . J . Lu" <hjl.tools@gmail.com>, Andy Lutomirski <luto@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Brian Gerst <brgerst@gmail.com>,
        "Chang S. Bae" <chang.seok.bae@intel.com>, Chao Yu <chao@kernel.org>,
        "Darrick J. Wong" <djwong@kernel.org>,
        Dmitry Safonov <0x7f454c46@gmail.com>,
        Dominik Brodowski <linux@dominikbrodowski.net>,
        Gabriel Krisman Bertazi <krisman@collabora.com>,
        Ingo Molnar <mingo@redhat.com>, Jaroslav Kysela <perex@perex.cz>,
        Jason Gunthorpe <jgg@ziepe.ca>, Jethro Beekman <jethro@fortanix.com>,
        Kees Cook <keescook@chromium.org>, Miklos Szeredi <miklos@szeredi.hu>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sasha Levin <sashal@kernel.org>,
        Sean Christopherson <seanjc@google.com>, Takashi Iwai <tiwai@suse.com>,
        ALSA Development Mailing List <alsa-devel@alsa-project.org>,
        Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-xfs <linux-xfs@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=KcHfYXTc;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Feb 28, 2021 at 3:41 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> This commit reverts 0bf6276392e9 ("x32: Warn and disable rather than
> error if binutils too old").
>
> The help text in arch/x86/Kconfig says enabling the X32 ABI support
> needs binutils 2.22 or later. This is met because the minimal binutils
> version is 2.23 according to Documentation/process/changes.rst.
>
> I would not say I am not familiar with toolchain configuration, but

I mean:
I would not say I am familiar ...
That is why I added RFC.

I appreciate comments from people who are familiar
with toolchains (binutils, llvm).

If this change is not safe,
we can move this check to Kconfig at least.









> I checked the configure.tgt code in binutils. The elf32_x86_64
> emulation mode seems to be included when it is configured for the
> x86_64-*-linux-* target.
>
> I also tried lld and llvm-objcopy, and succeeded in building x32 VDSO.
>
> I removed the compile-time check in arch/x86/Makefile, in the hope of
> elf32_x86_64 being always supported.
>
> With this, CONFIG_X86_X32 and CONFIG_X86_X32_ABI will be equivalent.
> Rename the former to the latter.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  arch/x86/Kconfig                       |  8 ++------
>  arch/x86/Makefile                      | 16 ----------------
>  arch/x86/include/asm/syscall_wrapper.h |  6 +++---
>  arch/x86/include/asm/vdso.h            |  2 +-
>  arch/x86/kernel/process_64.c           |  2 +-
>  fs/fuse/file.c                         |  2 +-
>  fs/xfs/xfs_ioctl32.c                   |  2 +-
>  sound/core/control_compat.c            | 16 ++++++++--------
>  sound/core/pcm_compat.c                | 20 ++++++++++----------
>  9 files changed, 27 insertions(+), 47 deletions(-)
>
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index 2792879d398e..7272cba2744c 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -2865,7 +2865,7 @@ config IA32_AOUT
>         help
>           Support old a.out binaries in the 32bit emulation.
>
> -config X86_X32
> +config X86_X32_ABI
>         bool "x32 ABI for 64-bit mode"
>         depends on X86_64
>         help
> @@ -2874,10 +2874,6 @@ config X86_X32
>           full 64-bit register file and wide data path while leaving
>           pointers at 32 bits for smaller memory footprint.
>
> -         You will need a recent binutils (2.22 or later) with
> -         elf32_x86_64 support enabled to compile a kernel with this
> -         option set.
> -
>  config COMPAT_32
>         def_bool y
>         depends on IA32_EMULATION || X86_32
> @@ -2886,7 +2882,7 @@ config COMPAT_32
>
>  config COMPAT
>         def_bool y
> -       depends on IA32_EMULATION || X86_X32
> +       depends on IA32_EMULATION || X86_X32_ABI
>
>  if COMPAT
>  config COMPAT_FOR_U64_ALIGNMENT
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index 2d6d5a28c3bf..e163549f5be7 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -125,22 +125,6 @@ else
>          KBUILD_CFLAGS += -mcmodel=kernel
>  endif
>
> -ifdef CONFIG_X86_X32
> -       x32_ld_ok := $(call try-run,\
> -                       /bin/echo -e '1: .quad 1b' | \
> -                       $(CC) $(KBUILD_AFLAGS) -c -x assembler -o "$$TMP" - && \
> -                       $(OBJCOPY) -O elf32-x86-64 "$$TMP" "$$TMPO" && \
> -                       $(LD) -m elf32_x86_64 "$$TMPO" -o "$$TMP",y,n)
> -        ifeq ($(x32_ld_ok),y)
> -                CONFIG_X86_X32_ABI := y
> -                KBUILD_AFLAGS += -DCONFIG_X86_X32_ABI
> -                KBUILD_CFLAGS += -DCONFIG_X86_X32_ABI
> -        else
> -                $(warning CONFIG_X86_X32 enabled but no binutils support)
> -        endif
> -endif
> -export CONFIG_X86_X32_ABI
> -
>  #
>  # If the function graph tracer is used with mcount instead of fentry,
>  # '-maccumulate-outgoing-args' is needed to prevent a GCC bug
> diff --git a/arch/x86/include/asm/syscall_wrapper.h b/arch/x86/include/asm/syscall_wrapper.h
> index a84333adeef2..69bf87c41a0b 100644
> --- a/arch/x86/include/asm/syscall_wrapper.h
> +++ b/arch/x86/include/asm/syscall_wrapper.h
> @@ -158,7 +158,7 @@ extern long __ia32_sys_ni_syscall(const struct pt_regs *regs);
>  #endif /* CONFIG_IA32_EMULATION */
>
>
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>  /*
>   * For the x32 ABI, we need to create a stub for compat_sys_*() which is aware
>   * of the x86-64-style parameter ordering of x32 syscalls. The syscalls common
> @@ -176,12 +176,12 @@ extern long __ia32_sys_ni_syscall(const struct pt_regs *regs);
>
>  #define __X32_COMPAT_SYS_NI(name)                                      \
>         __SYS_NI(x32, compat_sys_##name)
> -#else /* CONFIG_X86_X32 */
> +#else /* CONFIG_X86_X32_ABI */
>  #define __X32_COMPAT_SYS_STUB0(name)
>  #define __X32_COMPAT_SYS_STUBx(x, name, ...)
>  #define __X32_COMPAT_COND_SYSCALL(name)
>  #define __X32_COMPAT_SYS_NI(name)
> -#endif /* CONFIG_X86_X32 */
> +#endif /* CONFIG_X86_X32_ABI */
>
>
>  #ifdef CONFIG_COMPAT
> diff --git a/arch/x86/include/asm/vdso.h b/arch/x86/include/asm/vdso.h
> index 98aa103eb4ab..2963a2f5dbc4 100644
> --- a/arch/x86/include/asm/vdso.h
> +++ b/arch/x86/include/asm/vdso.h
> @@ -37,7 +37,7 @@ struct vdso_image {
>  extern const struct vdso_image vdso_image_64;
>  #endif
>
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>  extern const struct vdso_image vdso_image_x32;
>  #endif
>
> diff --git a/arch/x86/kernel/process_64.c b/arch/x86/kernel/process_64.c
> index d08307df69ad..a93b6f4296fc 100644
> --- a/arch/x86/kernel/process_64.c
> +++ b/arch/x86/kernel/process_64.c
> @@ -656,7 +656,7 @@ void set_personality_64bit(void)
>
>  static void __set_personality_x32(void)
>  {
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>         if (current->mm)
>                 current->mm->context.flags = 0;
>
> diff --git a/fs/fuse/file.c b/fs/fuse/file.c
> index 8cccecb55fb8..c53c620d1a7a 100644
> --- a/fs/fuse/file.c
> +++ b/fs/fuse/file.c
> @@ -2797,7 +2797,7 @@ long fuse_do_ioctl(struct file *file, unsigned int cmd, unsigned long arg,
>  #else
>         if (flags & FUSE_IOCTL_COMPAT) {
>                 inarg.flags |= FUSE_IOCTL_32BIT;
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>                 if (in_x32_syscall())
>                         inarg.flags |= FUSE_IOCTL_COMPAT_X32;
>  #endif
> diff --git a/fs/xfs/xfs_ioctl32.c b/fs/xfs/xfs_ioctl32.c
> index 33c09ec8e6c0..e8038bc966e7 100644
> --- a/fs/xfs/xfs_ioctl32.c
> +++ b/fs/xfs/xfs_ioctl32.c
> @@ -233,7 +233,7 @@ xfs_compat_ioc_fsbulkstat(
>         inumbers_fmt_pf         inumbers_func = xfs_fsinumbers_fmt_compat;
>         bulkstat_one_fmt_pf     bs_one_func = xfs_fsbulkstat_one_fmt_compat;
>
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>         if (in_x32_syscall()) {
>                 /*
>                  * ... but on x32 the input xfs_fsop_bulkreq has pointers
> diff --git a/sound/core/control_compat.c b/sound/core/control_compat.c
> index 1d708aab9c98..5d1b94bda2cd 100644
> --- a/sound/core/control_compat.c
> +++ b/sound/core/control_compat.c
> @@ -153,7 +153,7 @@ struct snd_ctl_elem_value32 {
>          unsigned char reserved[128];
>  };
>
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>  /* x32 has a different alignment for 64bit values from ia32 */
>  struct snd_ctl_elem_value_x32 {
>         struct snd_ctl_elem_id id;
> @@ -165,7 +165,7 @@ struct snd_ctl_elem_value_x32 {
>         } value;
>         unsigned char reserved[128];
>  };
> -#endif /* CONFIG_X86_X32 */
> +#endif /* CONFIG_X86_X32_ABI */
>
>  /* get the value type and count of the control */
>  static int get_ctl_type(struct snd_card *card, struct snd_ctl_elem_id *id,
> @@ -350,7 +350,7 @@ static int snd_ctl_elem_write_user_compat(struct snd_ctl_file *file,
>         return ctl_elem_write_user(file, data32, &data32->value);
>  }
>
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>  static int snd_ctl_elem_read_user_x32(struct snd_card *card,
>                                       struct snd_ctl_elem_value_x32 __user *data32)
>  {
> @@ -362,7 +362,7 @@ static int snd_ctl_elem_write_user_x32(struct snd_ctl_file *file,
>  {
>         return ctl_elem_write_user(file, data32, &data32->value);
>  }
> -#endif /* CONFIG_X86_X32 */
> +#endif /* CONFIG_X86_X32_ABI */
>
>  /* add or replace a user control */
>  static int snd_ctl_elem_add_compat(struct snd_ctl_file *file,
> @@ -421,10 +421,10 @@ enum {
>         SNDRV_CTL_IOCTL_ELEM_WRITE32 = _IOWR('U', 0x13, struct snd_ctl_elem_value32),
>         SNDRV_CTL_IOCTL_ELEM_ADD32 = _IOWR('U', 0x17, struct snd_ctl_elem_info32),
>         SNDRV_CTL_IOCTL_ELEM_REPLACE32 = _IOWR('U', 0x18, struct snd_ctl_elem_info32),
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>         SNDRV_CTL_IOCTL_ELEM_READ_X32 = _IOWR('U', 0x12, struct snd_ctl_elem_value_x32),
>         SNDRV_CTL_IOCTL_ELEM_WRITE_X32 = _IOWR('U', 0x13, struct snd_ctl_elem_value_x32),
> -#endif /* CONFIG_X86_X32 */
> +#endif /* CONFIG_X86_X32_ABI */
>  };
>
>  static inline long snd_ctl_ioctl_compat(struct file *file, unsigned int cmd, unsigned long arg)
> @@ -463,12 +463,12 @@ static inline long snd_ctl_ioctl_compat(struct file *file, unsigned int cmd, uns
>                 return snd_ctl_elem_add_compat(ctl, argp, 0);
>         case SNDRV_CTL_IOCTL_ELEM_REPLACE32:
>                 return snd_ctl_elem_add_compat(ctl, argp, 1);
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>         case SNDRV_CTL_IOCTL_ELEM_READ_X32:
>                 return snd_ctl_elem_read_user_x32(ctl->card, argp);
>         case SNDRV_CTL_IOCTL_ELEM_WRITE_X32:
>                 return snd_ctl_elem_write_user_x32(ctl, argp);
> -#endif /* CONFIG_X86_X32 */
> +#endif /* CONFIG_X86_X32_ABI */
>         }
>
>         down_read(&snd_ioctl_rwsem);
> diff --git a/sound/core/pcm_compat.c b/sound/core/pcm_compat.c
> index 590a46a9e78d..937f5117a81f 100644
> --- a/sound/core/pcm_compat.c
> +++ b/sound/core/pcm_compat.c
> @@ -147,13 +147,13 @@ static int snd_pcm_ioctl_channel_info_compat(struct snd_pcm_substream *substream
>         return err;
>  }
>
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>  /* X32 ABI has the same struct as x86-64 for snd_pcm_channel_info */
>  static int snd_pcm_channel_info_user(struct snd_pcm_substream *substream,
>                                      struct snd_pcm_channel_info __user *src);
>  #define snd_pcm_ioctl_channel_info_x32(s, p)   \
>         snd_pcm_channel_info_user(s, p)
> -#endif /* CONFIG_X86_X32 */
> +#endif /* CONFIG_X86_X32_ABI */
>
>  struct compat_snd_pcm_status64 {
>         snd_pcm_state_t state;
> @@ -373,7 +373,7 @@ static int snd_pcm_ioctl_xfern_compat(struct snd_pcm_substream *substream,
>         return err;
>  }
>
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>  /* X32 ABI has 64bit timespec and 64bit alignment */
>  struct snd_pcm_mmap_status_x32 {
>         snd_pcm_state_t state;
> @@ -464,7 +464,7 @@ static int snd_pcm_ioctl_sync_ptr_x32(struct snd_pcm_substream *substream,
>
>         return 0;
>  }
> -#endif /* CONFIG_X86_X32 */
> +#endif /* CONFIG_X86_X32_ABI */
>
>  /*
>   */
> @@ -484,10 +484,10 @@ enum {
>         SNDRV_PCM_IOCTL_READN_FRAMES32 = _IOR('A', 0x53, struct snd_xfern32),
>         SNDRV_PCM_IOCTL_STATUS_COMPAT64 = _IOR('A', 0x20, struct compat_snd_pcm_status64),
>         SNDRV_PCM_IOCTL_STATUS_EXT_COMPAT64 = _IOWR('A', 0x24, struct compat_snd_pcm_status64),
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>         SNDRV_PCM_IOCTL_CHANNEL_INFO_X32 = _IOR('A', 0x32, struct snd_pcm_channel_info),
>         SNDRV_PCM_IOCTL_SYNC_PTR_X32 = _IOWR('A', 0x23, struct snd_pcm_sync_ptr_x32),
> -#endif /* CONFIG_X86_X32 */
> +#endif /* CONFIG_X86_X32_ABI */
>  };
>
>  static long snd_pcm_ioctl_compat(struct file *file, unsigned int cmd, unsigned long arg)
> @@ -531,10 +531,10 @@ static long snd_pcm_ioctl_compat(struct file *file, unsigned int cmd, unsigned l
>         case __SNDRV_PCM_IOCTL_SYNC_PTR32:
>                 return snd_pcm_common_ioctl(file, substream, cmd, argp);
>         case __SNDRV_PCM_IOCTL_SYNC_PTR64:
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>                 if (in_x32_syscall())
>                         return snd_pcm_ioctl_sync_ptr_x32(substream, argp);
> -#endif /* CONFIG_X86_X32 */
> +#endif /* CONFIG_X86_X32_ABI */
>                 return snd_pcm_common_ioctl(file, substream, cmd, argp);
>         case SNDRV_PCM_IOCTL_HW_REFINE32:
>                 return snd_pcm_ioctl_hw_params_compat(substream, 1, argp);
> @@ -566,10 +566,10 @@ static long snd_pcm_ioctl_compat(struct file *file, unsigned int cmd, unsigned l
>                 return snd_pcm_status_user_compat64(substream, argp, false);
>         case SNDRV_PCM_IOCTL_STATUS_EXT_COMPAT64:
>                 return snd_pcm_status_user_compat64(substream, argp, true);
> -#ifdef CONFIG_X86_X32
> +#ifdef CONFIG_X86_X32_ABI
>         case SNDRV_PCM_IOCTL_CHANNEL_INFO_X32:
>                 return snd_pcm_ioctl_channel_info_x32(substream, argp);
> -#endif /* CONFIG_X86_X32 */
> +#endif /* CONFIG_X86_X32_ABI */
>         }
>
>         return -ENOIOCTLCMD;
> --
> 2.27.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210227183910.221873-1-masahiroy%40kernel.org.



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASL_X43_nMTz1CZQB%2BjiLCRAJbh-wQdc23QV0pWceL_Lw%40mail.gmail.com.
