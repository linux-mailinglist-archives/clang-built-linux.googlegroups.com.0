Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB3E3UP2QKGQEWUM4RNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EE71BD154
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 02:44:29 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id w79sf600089vkw.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 17:44:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588121068; cv=pass;
        d=google.com; s=arc-20160816;
        b=BupVYJncJ2iZC85zGTXLh1pzWMAHjk0tOUUAtdmyK/tt3XC+/5bqeJCEHViG9EgiP0
         WjntgN+V3rbf4GXeeP9P6Qs69pvXyaek+m0uADH+8DibnwWq2jvheGkCDoH19CWVYi4e
         rPGysOU8USPvBXrhPA6/oqJ89igFawXhW8fOn6Din61V46Xwj7cm8evc+7FlZSSDeu6l
         DBMe/Ds5/D7ZqKkN9Oq44hCRrmj/HUwYYD6TUd6eRDWrQju3o5LVaJxddoDsixhWo3L9
         ck20HLkxlkojFcsdQQgPBuccmyvMSERVbXqB69IojEsA+oHwWpQ6M1lLD1WtDHXmDVI+
         t0OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=q03zcG2dH7Nm6fC1DRSwaIfGOkDwH2XvpnZyoXSFwZo=;
        b=SjrkvYwkWq68dCsUJb6sU4shimn+a0HMUf8EjlXc3ctgewFGHYTtRlUmiCRiSNJ75r
         ICpSL5u2WV7Nt5Eqhrpg0kQI0VReS8ynzDmARKyb5AH1Zsngl+/KjnbmrAmWESgjxTC9
         vcnmIJY1i+nPeqdMOM72fvKLvWoNj34P6IrFZWpq8WBXjZEaTmPkhw+nacticVhkwll/
         Wj1FyOeiHIhcatInIPlqDKJkfYo1O18U3rVpvyyibLMLuS3ZHyiO20WuQjj9xG/EBk6m
         Sd3zeWbsBeZ0IiOiByD/HKQxt0dcoVkJBg0FIBoVtFVeK8IhRwSt2bTG7bCBl1XwH3ju
         gSUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=REhMSSyj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q03zcG2dH7Nm6fC1DRSwaIfGOkDwH2XvpnZyoXSFwZo=;
        b=kxdAHqwqcZ1yAYFtViljR42DNo5eGKm8wkCOeMqiqJ7RTKpQTuEOuD+53EL1EoEepH
         1kIgyhIwufO9dun0u6OtQ/Cno3zoIPMY8jHr0m+JM6wFItVze9oF2WWIFZrjni5iSTbx
         lg3d4qQdIi6V+e0uIWhMaEYpr5tppGMVg0tSXEcsJFn6fhB0e6DXznt0tWKQ0xT1acN8
         2K2tZNV16lmIktzHQeW+58Z09ucnNJVHhBvVJPhxiJmRrT950OVwo+I8pD/VheS+dRMz
         o29CqaIOcO9UTgkHiD1V1unvmEFguFEx6Svb3owA6w5GrDgUImbn/3jLBJhksesx5/Qj
         rWhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q03zcG2dH7Nm6fC1DRSwaIfGOkDwH2XvpnZyoXSFwZo=;
        b=b8hgDDARJIVmNys9vXkH6i3/EQ8ZQYWdzdBJFNH4nCnuYr7snEeGcCzQwSs2l77LwE
         A0s+ftb+fuHdDz1PjiG9gbWjDMRWMWlECPa/OkBXr1WZh58EvGYzntNvhD3gW5zDdeD8
         NlE6rJ9W/FyVw9LBkEBrBrQXdguxc6gO9X9qKQy9/klEyh4BpAh33iatrIkZAAl/Pbwe
         U7Q/WvvPf+uRmlRxFccYh87miorXGQwD1Mdxtd350H8o3XJykCjCT/EkVexP5Bpc1uVC
         j/NebkfIckO+QB9DKSlHctSMKAF2Eb1mDW0C35mDCImY6neRYYrLYDXcRrFfBY2L5a/Q
         0cVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q03zcG2dH7Nm6fC1DRSwaIfGOkDwH2XvpnZyoXSFwZo=;
        b=gsNBjWFAxppOj9KVLs6+X6yA5y2MNoVr/00Xrgg5L/WxD3TKGW5GOEZF4J9zDBclZ4
         ZzXkW23JSkH0m5qOx+o/PWi0F9rzN7Fuo+ZRsV/cIwf9ATfzf4WofyeHpucqafQHYJrt
         +fB8gAnxZL80eexjkPpCFFgCfJDVbAG2R6ivT7H8mQCcMqukIAuGrLro57sMINzZX89k
         ATSHcvf1ayJalNGFc1s5fAfcuI+LT0gqIDcSWYwXTn717UEKZDYmHEJw8A/ZYOtWstJu
         UI/a41a+Bvpq9c5BoX7bVPmVUV0FtuSPSHT8ulgIetFfw6VqDdk9V7sdY7BUKMOwZkwL
         uaPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZHtxJZ8BYRC1UHKSD70mQKnPXtQK3357z9a1UcE1SUVAh/g8vB
	PfxPd3vCZVSrXMLShKYCYRo=
X-Google-Smtp-Source: APiQypK04MYlYEe14jqkMKrgMGA8uJ8TSQt0hoJ/NvlgjfH9QUkkfmW6aasdQtQ9uydZ3SVc5XrJkA==
X-Received: by 2002:a67:ee96:: with SMTP id n22mr4789526vsp.29.1588121068750;
        Tue, 28 Apr 2020 17:44:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6601:: with SMTP id r1ls2145340uam.1.gmail; Tue, 28 Apr
 2020 17:44:28 -0700 (PDT)
X-Received: by 2002:ab0:1648:: with SMTP id l8mr15918009uae.134.1588121068340;
        Tue, 28 Apr 2020 17:44:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588121068; cv=none;
        d=google.com; s=arc-20160816;
        b=t9DPZoXt9Klam3TP054QYpE8+AlEga5HZZ1r0OuS7Gj+eDF/ijw072o9525IhOrHic
         WsE1dwkgnqCfl9/KayzTT4NKSNR2ma/jyJIOgwR58RQqHV4ElPt/IaMvAR4cLbEfLlT8
         g5SV+L7Mh7fUyNnHTYiWKcNTt/4T1kYZOFyIGTEDzcCHK6kDtIIjyan63Gt7bpFmqI+S
         yi+dX28skxPqWX+s/P/p4kkXVFXzJGjAsuki30hQ0WXRv9NYdO2W7V2qws1jpRaasCSz
         QYAAKcCyi/QyU2OhTyFMKNDDR9szNy+S3k/+sngjtFHIBy5eqRD+FCaAhnra8lLQofRj
         AArQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q3a/OwcJUClTFtdPkCJMChDN+Npv5Ve7snk/X+FSfAA=;
        b=eOeMBrXKd/ITNiaaag8A4lyhqOQrgeFVd90Y3drf/Vp6nixgSsZ6EFttTgcWd2Ju37
         3D6g7HUpKp8dOUplUjDajx/GdPDY5xbaFMttcR10urodOj3lg4vWv6rTY5VN1oVPq/4v
         8gX8pU8+FKvdrI96sgIPmFoTUU9OcnHjTxvSLV8oeG0v8lj4eHlZK+C8UcQLoAwsDB8V
         IyHatROWiFlceKjYZxNXhQBm+aejhgE4Z9HdYdYnYJpf3/2DOazPNSAbwMwH13zYGbZ9
         sU14iotITWQ+S9A9a2i/gwuFCItK8WR+Ice4PQNvH0TLVSD0x18TZ2OHYdU7uAcBPQ1H
         AyXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=REhMSSyj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a205si1346912vsd.2.2020.04.28.17.44.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 17:44:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id m13so270129otf.6
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 17:44:28 -0700 (PDT)
X-Received: by 2002:a05:6830:14d6:: with SMTP id t22mr25527253otq.323.1588121067634;
        Tue, 28 Apr 2020 17:44:27 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t20sm5249007ott.51.2020.04.28.17.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 17:44:27 -0700 (PDT)
Date: Tue, 28 Apr 2020 17:44:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Fangrui Song <maskray@google.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v4 4/5] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
Message-ID: <20200429004425.GA566019@ubuntu-s3-xlarge-x86>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
 <20200428221419.2530697-5-natechancellor@gmail.com>
 <20200428225401.7yrld7u2xr67t4xf@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200428225401.7yrld7u2xr67t4xf@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=REhMSSyj;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Apr 28, 2020 at 03:54:01PM -0700, Fangrui Song wrote:
> 
> On 2020-04-28, Nathan Chancellor wrote:
> > Currently, the VDSO is being linked through $(CC). This does not match
> > how the rest of the kernel links objects, which is through the $(LD)
> > variable.
> > 
> > When clang is built in a default configuration, it first attempts to use
> > the target triple's default linker then the system's default linker,
> > unless told otherwise through -fuse-ld=... We do not use -fuse-ld=
> > because it can be brittle and we have support for invoking $(LD)
> > directly. See commit fe00e50b2db8c ("ARM: 8858/1: vdso: use $(LD)
> > instead of $(CC) to link VDSO") and commit 691efbedc60d2 ("arm64: vdso:
> > use $(LD) instead of $(CC) to link VDSO") for examples of doing this in
> > the VDSO.
> > 
> > Do the same thing here. Replace the custom linking logic with $(cmd_ld)
> > and ldflags-y so that $(LD) is respected. We need to explicitly add two
> > flags to the linker that were implicitly passed by the compiler:
> > -G 0 (which comes from ccflags-vdso) and --eh-frame-hdr.
> > 
> > Before this patch (generated by adding '-v' to VDSO_LDFLAGS):
> > 
> > <gcc_prefix>/libexec/gcc/mips64-linux/9.3.0/collect2 \
> > -plugin <gcc_prefix>/libexec/gcc/mips64-linux/9.3.0/liblto_plugin.so \
> > -plugin-opt=<gcc_prefix>/libexec/gcc/mips64-linux/9.3.0/lto-wrapper \
> > -plugin-opt=-fresolution=/tmp/ccGEi5Ka.res \
> > --eh-frame-hdr \
> > -G 0 \
> > -EB \
> > -mips64r2 \
> > -shared \
> > -melf64btsmip \
> > -o arch/mips/vdso/vdso.so.dbg.raw \
> > -L<gcc_prefix>/lib/gcc/mips64-linux/9.3.0/64 \
> > -L<gcc_prefix>/lib/gcc/mips64-linux/9.3.0 \
> > -L<gcc_prefix>/lib/gcc/mips64-linux/9.3.0/../../../../mips64-linux/lib \
> > -Bsymbolic \
> > --no-undefined \
> > -soname=linux-vdso.so.1 \
> > -EB \
> > --hash-style=sysv \
> > --build-id \
> > -T arch/mips/vdso/vdso.lds \
> > arch/mips/vdso/elf.o \
> > arch/mips/vdso/vgettimeofday.o \
> > arch/mips/vdso/sigreturn.o
> > 
> > After this patch:
> > 
> > <gcc_prefix>/bin/mips64-linux-ld \
> > -m elf64btsmip \
> > -Bsymbolic \
> > --no-undefined \
> > -soname=linux-vdso.so.1 \
> > -EB \
> > -nostdlib \
> > -shared \
> > -G 0 \
> > --eh-frame-hdr \
> > --hash-style=sysv \
> > --build-id \
> > -T  arch/mips/vdso/vdso.lds \
> > arch/mips/vdso/elf.o \
> > arch/mips/vdso/vgettimeofday.o
> > arch/mips/vdso/sigreturn.o \
> > -o arch/mips/vdso/vdso.so.dbg.raw
> > 
> > Note that we leave behind -mips64r2. Turns out that ld ignores it (see
> > get_emulation in ld/ldmain.c). This is true of current trunk and 2.23,
> > which is the minimum supported version for the kernel:
> > 
> > https://sourceware.org/git/?p=binutils-gdb.git;a=blob;f=ld/ldmain.c;hb=aa4209e7b679afd74a3860ce25659e71cc4847d5#l593
> > https://sourceware.org/git/?p=binutils-gdb.git;a=blob;f=ld/ldmain.c;hb=a55e30b51bc6227d8d41f707654d0a5620978dcf#l641
> > 
> > Before this patch, LD=ld.lld did nothing:
> > 
> > $ llvm-readelf -p.comment arch/mips/vdso/vdso.so.dbg | sed 's/(.*//'
> > String dump of section '.comment':
> > [     0] ClangBuiltLinux clang version 11.0.0
> > 
> > After this patch, it does:
> > 
> > $ llvm-readelf -p.comment arch/mips/vdso/vdso.so.dbg | sed 's/(.*//'
> > String dump of section '.comment':
> > [     0] Linker: LLD 11.0.0
> > [    62] ClangBuiltLinux clang version 11.0.0
> > 
> > Link: https://github.com/ClangBuiltLinux/linux/issues/785
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> > 
> > v3 -> v4:
> > 
> > * Improve commit message to show that ld command is effectively the
> >  same as the one generated by GCC.
> > 
> > * Add '-G 0' and '--eh-frame-hdr' because they were added by GCC.
> 
> My understanding is that we start to use more -fasynchronous-unwind-tables to eliminate .eh_frame in object files.
> Without .eh_frame, LD --eh-frame-hdr is really not useful.

Ah, I was not paying attention; I figured that this was necessary
because the x86 VDSO broke without it:

cd01544a268ad ("x86/vdso: Pass --eh-frame-hdr to the linker")

However, they explicitly add -fasynchronous-unwind-tables so it seems
like this indeed can be removed. Kind of odd that GCC passes it along
even with -fno-asynchronous-unwind-tables. I will do that in v5 once I
get some feedback on whether or not anything else breaks.

Cheers,
Nathan

> Sigh...  -G 0. This is an option ignored by LLD. GCC devs probably should
> have used the long option --gpsize rather than take the short option -G.
> Even better, -z gpsize= or similar if this option is specific to ELF.
> > v2 -> v3:
> > 
> > * New patch.
> > 
> > arch/mips/vdso/Makefile | 13 ++++---------
> > 1 file changed, 4 insertions(+), 9 deletions(-)
> > 
> > diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
> > index 92b53d1df42c3..2e64c7600eead 100644
> > --- a/arch/mips/vdso/Makefile
> > +++ b/arch/mips/vdso/Makefile
> > @@ -60,10 +60,9 @@ ifdef CONFIG_MIPS_DISABLE_VDSO
> > endif
> > 
> > # VDSO linker flags.
> > -VDSO_LDFLAGS := \
> > -	-Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1 \
> > -	$(addprefix -Wl$(comma),$(filter -E%,$(KBUILD_CFLAGS))) \
> > -	-nostdlib -shared -Wl,--hash-style=sysv -Wl,--build-id
> > +ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
> > +	$(filter -E%,$(KBUILD_CFLAGS)) -nostdlib -shared \
> > +	-G 0 --eh-frame-hdr --hash-style=sysv --build-id -T
> > 
> > CFLAGS_REMOVE_vdso.o = -pg
> > 
> > @@ -82,11 +81,7 @@ quiet_cmd_vdso_mips_check = VDSOCHK $@
> > #
> > 
> > quiet_cmd_vdsold_and_vdso_check = LD      $@
> > -      cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check); $(cmd_vdso_mips_check)
> > -
> > -quiet_cmd_vdsold = VDSO    $@
> > -      cmd_vdsold = $(CC) $(c_flags) $(VDSO_LDFLAGS) \
> > -                   -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
> > +      cmd_vdsold_and_vdso_check = $(cmd_ld); $(cmd_vdso_check); $(cmd_vdso_mips_check)
> > 
> > quiet_cmd_vdsoas_o_S = AS      $@
> >       cmd_vdsoas_o_S = $(CC) $(a_flags) -c -o $@ $<
> > -- 
> > 2.26.2
> > 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200429004425.GA566019%40ubuntu-s3-xlarge-x86.
