Return-Path: <clang-built-linux+bncBCS7XUWOUULBBMEPRX6QKGQEHR3QWVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 514CE2A73C8
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 01:30:41 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id q3sf355561iow.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 16:30:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604536240; cv=pass;
        d=google.com; s=arc-20160816;
        b=DPAnKkFaF3fF7Lre0QJQC3lStNxDMquXaYWbnHiMZvJyg9Yqjp7g0GzKFP2wMaaOHC
         HHajYn7Zy2UrbTwARR4mHjUP7CyLIbBWQIjWsK/ZvQgqblX+7xCIBOkxvZ7sA+PEAIAp
         0O2BaS/cA61suFjYKrgsHDrL9qCLnnOd0ENqW93Hu/e2IghHAbCI65In5oEF15TS2StO
         FsXze97INF+/iB2ZBqVdaaPUbuV/8ZVrafa9oTokf6xw98EHYLJ6dnguLE/bsY7qVP8J
         faM886UWKUDVXYUMhh+rysGxc1ybsydiDhbPMjpDbFacxCAXTgBYnmmF9VnxPBzLayMO
         ijkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AjymFKTZVSutWK3ggs8/JbWTy3IbvVP9p0jzMZdVN5s=;
        b=d/MGMxwFQImEwa6adDy047TO+pt7yfHVR92M8RRFrOFDjulEyEYaqOo+St7tyL4M8j
         v8fOPHrZGnNrD00Es50/S2ZZuHZKhCSx7wil6vD7pXj8g0O76Vk33TYRkRqsgJPoCsQf
         c6YcZ0fK9M8NBag3W5xQOeE92pUNZPWuKT401gca/4AqOLKF9qbpwsQJ6bzHA55pSGUY
         f7wtWeucnyRnLIav1c/6I9h0EyRZU/esq9GpIjRioTvlkbtA+c/MKEkA1xN8h/ARMkB1
         2dw6fp6ZHazV4hPmktCRfLlKRGgExhmbj88ZWqLeYA9ci2GmVYwLr1t7I5rNbtfuOFWp
         PBrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hJ0PMyMC;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AjymFKTZVSutWK3ggs8/JbWTy3IbvVP9p0jzMZdVN5s=;
        b=GmBbyQ0jcA6Zw1Zx10d0B2GqYFHyhAUd3W2IuDKI/B6Y42M1lHA/iGBaQUKMSBxw5L
         B5rv4hHUT9WXofDLMOawtKLbhiNFvaB1zJzO0p8ndc7O+zCaKjvy+PljtVY8uIhGFJ1/
         ORE1zQvqyfrQiB5ZtvRbN7Vr92az0dod75g1Y0qbjgnQE5S9gwXQmtzXtoPku6Sgx2Ol
         sL8Xn2p8AnNSX2tfsDAZchFz3APXA4vbog9rUnLCdQh4k4KT+tSYEtxiMNo4jOb1LORM
         WGdbdOnHgFZ22q6XllrFsarwi35eKaNgf4359jbipe2zV1ZpEGVBbThJxCaMsKrvil1h
         HQ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AjymFKTZVSutWK3ggs8/JbWTy3IbvVP9p0jzMZdVN5s=;
        b=MQb4Z5a8zzqXTANS8fMa3K84xNbkrJnrEYAjrO/hqDmozQ/PlT2C/QoYNKJtFxa+TX
         dOn/R8xHqS5uGm/NEmvV7mD7Q5I227N+oSaKw4umHKNqObnq8BoEjGQV9oY5DzOAY0iQ
         E9qwS/CrWXspwfE4CZMgf8pNqoz3ejjdjXEZh4I9X+19vT1f0+u68fZAtfrCRui8mRAL
         mOTMYqNm8IPluoyn2rPkQYwuAG74sAX7VKUEPa5P8BtCHCgfS/cuNXncOF45qO7eIyzJ
         5Pc3pEvHEJeIDcrp5zlGI7ali8XGFIn01JWir0eaevmAIcsuo6+Z+V4ZjqsHandfGkcv
         DnfQ==
X-Gm-Message-State: AOAM532gy6vWgT9JSksqr5by8BsFRBeIoTySstA0NCf9GLgnSSb0pyD8
	t1bpO7GSzHaVTWXNHVf3WE4=
X-Google-Smtp-Source: ABdhPJz69TCfyeP/lrLbX8NDnOYGGxpNWhushzi46UogT1m4/xZhMup/3NV/xWzbMWB42ptqFKGpKQ==
X-Received: by 2002:a02:228c:: with SMTP id o134mr98508jao.56.1604536240374;
        Wed, 04 Nov 2020 16:30:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ba5d:: with SMTP id o90ls807888ili.11.gmail; Wed, 04 Nov
 2020 16:30:40 -0800 (PST)
X-Received: by 2002:a92:dccb:: with SMTP id b11mr85595ilr.6.1604536239970;
        Wed, 04 Nov 2020 16:30:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604536239; cv=none;
        d=google.com; s=arc-20160816;
        b=xYghGRmxJAzuDjtnOPo6jmoYv7cVHJ8zyvE9Q7wHGTKbbjGOH/jxwok3e0ZMZ7GFWt
         wGztqVir/F5/bXSVRViZjGbptZ4B/XQyS8FtxU5y0lS2wzMyBA5g7GgMfXNzqxgDVoxX
         qLR7FhzRvgPOxJMoPf6HXgAp/fQ+qSAUqGRbA0TLv0GL4yQKxxrP386A0iJR/lBMSIo8
         rQqGuM0Dcr6EYVzCnrQE4FIDl7u9iOYn7CUXAqi1XFuh5NYocwZdkEVve2GxUIQ23rVi
         qstcQpMShA0RacjvZEnw4KQ8PLIu+js+QQMknBbLqqkdvtPU6efoghIqjQ6/x59qrVG2
         DARw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iYOTMttlo6f/hNbgw1YDSYSU/RU1+qwEl3iPASOT/Do=;
        b=rhx2A8Ftz5OzWRjJCxx7UYKQWUx7DTrE0N19mmEjGp3DCfmo+Lv7rmcBNYiNRfAD/Y
         TVMlJX0L+exSDbjEAS/WWe4fk+nhB7KNx6J+2/0EGL2h5UNe6MvJAZ2YYFKDFG6yk4vc
         bxeNjWocWn7QcL1RUx9/FTRU2shsXtt9e8ZPbF9jDOsxtsN/gVElzFPCvdJIxmbJT73J
         bnICjQz0DBMZC6YuGbFukf4QvXzblwZMHhRl66H06kxVHlySVUDhvXc44BP2FE0YvEyI
         4plKNVxn4Wgj8HUn+udmzIAKW7t6E6S+s1Br+fmQyOTQZR6eKbORjOJYzHmQGQDU/8ls
         jyXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hJ0PMyMC;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s11si2277iot.1.2020.11.04.16.30.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 16:30:39 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id z3so64551pfb.10
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 16:30:39 -0800 (PST)
X-Received: by 2002:aa7:93bb:0:b029:18a:d5ef:3260 with SMTP id
 x27-20020aa793bb0000b029018ad5ef3260mr514409pff.53.1604536239212; Wed, 04 Nov
 2020 16:30:39 -0800 (PST)
MIME-Version: 1.0
References: <20201030002900.GA2248731@ubuntu-m3-large-x86> <CAKwvOdntdKGN+F4r2jYNw3C-vxxZ09aCTaGR1_DtR+5tFzjLOw@mail.gmail.com>
 <20201030013228.GA2519055@ubuntu-m3-large-x86> <CAMj1kXG4VgyvZtTcCycNTQA+sddi49=Mj7uaEjZnw=Rt5mt4sg@mail.gmail.com>
 <20201030075655.GA1848109@ubuntu-m3-large-x86> <CAMj1kXH-ZJQBtPN1_ByRDcfRs16yJ2cKvM8z=Gy_LoKp-m0G8A@mail.gmail.com>
 <20201030080438.GA1849056@ubuntu-m3-large-x86> <CAMj1kXEMUrJnyTzJQaA0e15h54fAT5_Q6w5OiBFrjGmhZ10eEw@mail.gmail.com>
 <20201030084519.GA3748061@ubuntu-m3-large-x86> <CAK8P3a1Ckn5E0Ce+0xVFbOKVYdsyzjeRZ0Z03-OsVC8yaYFp2w@mail.gmail.com>
 <20201030090945.GA3635064@ubuntu-m3-large-x86>
In-Reply-To: <20201030090945.GA3635064@ubuntu-m3-large-x86>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Wed, 4 Nov 2020 16:30:27 -0800
Message-ID: <CAFP8O3KuaYTEvmWK1pnufQuH0X3Eb1G6DK9x7mhjSDy1y7d1TQ@mail.gmail.com>
Subject: Re: [PATCH 0/5 v16] KASan for Arm
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Florian Fainelli <f.fainelli@gmail.com>, Abbott Liu <liuwenliang@huawei.com>, 
	Russell King <linux@armlinux.org.uk>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Mike Rapoport <rppt@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hJ0PMyMC;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Fri, Oct 30, 2020 at 2:09 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Oct 30, 2020 at 09:51:27AM +0100, Arnd Bergmann wrote:
> > On Fri, Oct 30, 2020 at 9:45 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > > On Fri, Oct 30, 2020 at 09:10:56AM +0100, Ard Biesheuvel wrote:
> > > 4043            futex_hashsize = 1UL << futex_shift;
> > > (gdb)
> > > 4045            futex_detect_cmpxchg();
> > > (gdb)
> >
> > I can't explain it, but I'd point out that futex_detect_cmpxchg() has caused
> > problems in the past, with multiple patches for it proposed in the past
> > and none of them merged. One of the patches I had sent for it was:
> >
> > commit 8232a8ffc332fa6a50296a51c4d85200a747256c
> > Author: Arnd Bergmann <arnd@arndb.de>
> > Date:   Mon Mar 4 17:33:00 2019 +0100
> >
> >     [SUBMITTED 20190307] futex: mark futex_detect_cmpxchg() as 'noinline'
> >
> >     On 32-bit ARM, I got a link failure in futex_init() when building
> >     with clang in some random configurations:
> >
> >     kernel/futex.o:(.text.fixup+0x5c): relocation truncated to fit:
> > R_ARM_JUMP24 against `.init.text'
> >
> >     As far as I can tell, the problem is that a branch is over 16MB
> >     apart in those configurations, but only if it branches back to
> >     the init text.
> >
> >     Marking the futex_detect_cmpxchg() function as noinline and
> >     not __init avoids the problem for me.
> >
> >     Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > diff --git a/kernel/futex.c b/kernel/futex.c
> > index e646661f6282..6fbbed45f51b 100644
> > --- a/kernel/futex.c
> > +++ b/kernel/futex.c
> > @@ -4061,7 +4061,7 @@ SYSCALL_DEFINE6(futex_time32, u32 __user *,
> > uaddr, int, op, u32, val,
> >  }
> >  #endif /* CONFIG_COMPAT_32BIT_TIME */
> >
> > -static void __init futex_detect_cmpxchg(void)
> > +static noinline void futex_detect_cmpxchg(void)
> >  {
> >  #ifndef CONFIG_HAVE_FUTEX_CMPXCHG
> >         u32 curval;
> >
> > I forgot what the problem was, but you might try that patch, or find
> > the previous discussions in the archive.
> >
> >        Arnd
>
> As it turns out, that is the patch that fixes the ld.bfd issue that I
> mentioned earlier in this thread and it fixes this issue as well.
>
> To summarize, with the below diff, I can successfully boot
> multi_v7_defconfig + CONFIG_KASAN=y when LLVM=1 is used (and I see KASAN
> get initialized properly).
>
> Cheers,
> Nathan
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 4d76eab2b22d..3c0a64cefe52 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -10,7 +10,7 @@
>  #
>  # Copyright (C) 1995-2001 by Russell King
>
> -LDFLAGS_vmlinux        := --no-undefined -X --pic-veneer
> +LDFLAGS_vmlinux        := --no-undefined -X --pic-veneer -z norelro
>  ifeq ($(CONFIG_CPU_ENDIAN_BE8),y)
>  LDFLAGS_vmlinux        += --be8
>  KBUILD_LDFLAGS_MODULE  += --be8
> diff --git a/kernel/futex.c b/kernel/futex.c
> index be68ac0d49ad..226bb20d175f 100644
> --- a/kernel/futex.c
> +++ b/kernel/futex.c
> @@ -4004,7 +4004,7 @@ SYSCALL_DEFINE6(futex_time32, u32 __user *, uaddr, int, op, u32, val,
>  }
>  #endif /* CONFIG_COMPAT_32BIT_TIME */
>
> -static void __init futex_detect_cmpxchg(void)
> +static noinline void futex_detect_cmpxchg(void)
>  {
>  #ifndef CONFIG_HAVE_FUTEX_CMPXCHG
>         u32 curval;
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201030090945.GA3635064%40ubuntu-m3-large-x86.

About "ARM: Replace string mem* functions for KASan", it added .weak
memcpy to arch/arm/lib/memcpy.S
However, the convention is to change .weak + ENTRY(...) to WEAK(...)

In particular, clang 12 will reject `.weak memcpy; .global memcpy`
(they had different semantics in GNU as and LLVM integrated assembler
for a long time AND binutils maintainer agreed that .weak and .global
are strange and should not be used - though binutils will not make the
change to cause disruption)

Please see https://github.com/ClangBuiltLinux/linux/issues/1190

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3KuaYTEvmWK1pnufQuH0X3Eb1G6DK9x7mhjSDy1y7d1TQ%40mail.gmail.com.
