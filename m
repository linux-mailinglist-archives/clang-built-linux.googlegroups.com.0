Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB77QZT3QKGQEZC5FCSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A34207200
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:26:56 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id e15sf1316344oie.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 04:26:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592998015; cv=pass;
        d=google.com; s=arc-20160816;
        b=j6yUWcxbuEOIv3k/f2UyQjflJwGwDP/faw1hGM6mnGDKgdIBgE9tMCmypxYpXb7NKN
         Egkb/3o+sWMuK/kUJbI2ZCNx/lebqAFU5buSvu1lX5ZSTtQDp394G9htFnRlemJ5uzGn
         t0b/v/gXhIreCp5O9jFHyYiLaIgGSrzUO5mkYoEVjHpKHWV4oaaPVvvy46LUHGodxucC
         mUU+cnqFPBVisnftq/h16KKo5mfif4XZ67qVit4Ykt7sODUK0QLE531n/CUrcYcR58Ec
         NhNvzjgLJfMfCff4E7K+NIA1ytv4cKph1htwl8re5R4vNhSK4tFowXgKm3vL2wRmg1xV
         a8IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=MinSyM/rjf3FCbw7QKZ76zPIHcMH+9Lgj229C2sm0jg=;
        b=kMdduNNMFDcJSYYeg5H/8O4GCiWwOyVpsESqPa635+hkHyONUROeF2oGHPgsCRC5bw
         Xpd6eGoDeXfaSCgvd3vlO9+UwzbUVngZ/x3jtgf/O6PUQnJGbiqHcIDFB7uOUHW7RBJJ
         Vsr5/Yt+TJ+PRx4mxwMsnPf2GqK8pxn6JjhTQhXV2MNBFzr9bm+nOdwU9aXK5KdltEVL
         BPna9WzELzlXUXLJ0f+NTH6GG59qGstC3jMkcW/v8uUb/iHnszChrZVlMQwoilu5tNUl
         GA5WKQIwPv8IOFBrSy2zX7+rZEKtRje/muP99csa+mQtPZYGaqePOkXrZlT/wXo4dUQF
         Ys1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TaJFnJBJ;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MinSyM/rjf3FCbw7QKZ76zPIHcMH+9Lgj229C2sm0jg=;
        b=eEjwzPJfCTecxyI2HKmUA7UXDDMFGd0ezbdSztnJy02e7pEasoN9yVo8krpPSSgn76
         vv+i/ho1P+BcbvxbhomQ7aamaCGSs+heKIaXQfPsVosrcUx4jJpOZiC7KJjexBkAb3kY
         wvAJfQ0J/RuhVhxnPY5tppXtkx2qmg8HLi1uRDn+QOQbLNzQU0dxCHHlp1vfYcINv4K7
         Kz8Kt66QTmCesRGcMpo/sOgLMqMPO6F6NSTfphIsBBtv2Ouq7NuG9jueGG13ecDonwuV
         O9YbbeudIaKai+TstZEYRoMWyRtdza6dMutldHXkVZMgzhyRFiKbLhDuMz5zFZNccCZt
         ilZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MinSyM/rjf3FCbw7QKZ76zPIHcMH+9Lgj229C2sm0jg=;
        b=M5XmMKiOV9R8vADnGaAoNlVdhoEQYffrcXwsC5fo7sIDUlBggBkNK/5mRovr5xdhN9
         AsKVcqP32UUuJfWqgTl9iQ5W4m5jiW8M0HHK1PME5kkVYwxLxqigBD1bgZ0Wz6HBOhbt
         VHkKsX8MUuz4rhJfPb6FJN2xbxJNk1zZhboBdyW0jR29I8Qt+nrfXWWbhWin2hCt81+4
         X4hi0H/b6npA0v38WtFOpe1nVnRF39u2emYHvBdP084nBtFYfwAaD6XluaPFdgwpbdDW
         0V5cCdwsYa0PQFCPuIcCGfZjREcLtO0L4Wge6WqV2YaMy+UXuU0QJHd/vSMCNioMQuMj
         kxeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UD7EGbB3QB/08moqqwUVnI3Bw1giLLMcOignpVA75RuKM4wCb
	ziVsGUQQZjpphKdzQ2k/GFU=
X-Google-Smtp-Source: ABdhPJzoePRqzGH6AfnkH74pbjgDv5UVUJxD/mrf7CtGizVXFPUbpQFVaiDchx8UH1QFZmREd/LXLA==
X-Received: by 2002:a9d:7b46:: with SMTP id f6mr22810218oto.286.1592998015745;
        Wed, 24 Jun 2020 04:26:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:eac1:: with SMTP id i184ls322270oih.4.gmail; Wed, 24 Jun
 2020 04:26:55 -0700 (PDT)
X-Received: by 2002:aca:1e12:: with SMTP id m18mr5325893oic.127.1592998015362;
        Wed, 24 Jun 2020 04:26:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592998015; cv=none;
        d=google.com; s=arc-20160816;
        b=bSCHq7oB3yX8eIZgykOJjHmyAoebU6E9gQ8ncLMUogPWP+r2BzLsFDXD9P6l7+7RZr
         f55OUsltERl/88gdA3ze+LrkLEEOBDfLi52jSmbWXytJPl/Gb6cYzW6VqD6aFxzk5hEh
         UEx2bgqASYKXmkgU6/LpyovuvBNWzaz1xLBydzelXxncmLWxWOC1k0BpSoph33vLCv7g
         wKiQXAkTsJSvq2kWS3+zx/jDWdkwd/OKpCR9xjd1dliMB05p7vUGYP0tUeL2iFiZRn4H
         pFpTnT9+CPPBmAVKxkvuoNXWyVNr5RiVQdHdrqBwbu1QehvkiiN3AfXvdBmXgR56RmCu
         xNpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=g2FpTJSmcE76q38lImwuWm+BAsYJT4KpQiVelGrL790=;
        b=UyspDfbG0gQMAq0tnJxz8t3UYHerT//DwUj1cBL/Lf2bH0eUKk4e/qc2DVG6e+v2CU
         Nh0iEvirJiFBQs3jqCmCoFLie7brl1+ZjrbrphAbNi4l3BGX3vIWdvf9b4HykJreKVAy
         i1dFYc6nJKPmACRx1Ttn9Np9Ao+pZre5IskwcRJC+KUsv9Kl5kY57oRS6aPYmGsOWP+T
         z49IsUBQ7/f6sKtCQQhXcxy6cSsgn3biX7SV4v27ydwfvRFV8VSzKLrIrBSropCAijBS
         x+uNiilpq4D5xdqk4qFQZKaAR///zLVaoQS4ZK9iFbm+A0/noRslFD55+o9Az5UYJgKg
         sBqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=TaJFnJBJ;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h13si1718797otk.1.2020.06.24.04.26.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 04:26:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2917020836;
	Wed, 24 Jun 2020 11:26:51 +0000 (UTC)
Date: Wed, 24 Jun 2020 12:26:47 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, X86 ML <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Message-ID: <20200624112647.GC6134@willie-the-truck>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org>
 <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook>
 <20200624104356.GA6134@willie-the-truck>
 <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=TaJFnJBJ;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> On Wed, 24 Jun 2020 at 12:44, Will Deacon <will@kernel.org> wrote:
> > On Tue, Jun 23, 2020 at 09:44:11PM -0700, Kees Cook wrote:
> > > On Tue, Jun 23, 2020 at 08:31:42PM -0700, 'Fangrui Song' via Clang Bu=
ilt Linux wrote:
> > > > arch/arm64/Kconfig enables ARM64_PTR_AUTH by default. When the conf=
ig is on
> > > >
> > > > ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
> > > > branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) :=3D -mb=
ranch-protection=3Dpac-ret+leaf+bti
> > > > else
> > > > branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) :=3D -mbranc=
h-protection=3Dpac-ret+leaf
> > > > endif
> > > >
> > > > This option creates .note.gnu.property:
> > > >
> > > > % readelf -n drivers/firmware/efi/libstub/efi-stub.o
> > > >
> > > > Displaying notes found in: .note.gnu.property
> > > >   Owner                Data size        Description
> > > >   GNU                  0x00000010       NT_GNU_PROPERTY_TYPE_0
> > > >       Properties: AArch64 feature: PAC
> > > >
> > > > If .note.gnu.property is not desired in drivers/firmware/efi/libstu=
b, specifying
> > > > -mbranch-protection=3Dnone can override -mbranch-protection=3Dpac-r=
et+leaf
> > >
> > > We want to keep the branch protection enabled. But since it's not a
> > > "regular" ELF, we don't need to keep the property that identifies the
> > > feature.
> >
> > For the kernel Image, how do we remove these sections? The objcopy flag=
s
> > in arch/arm64/boot/Makefile look both insufficient and out of date. My
> > vmlinux ends up with both a ".notes" and a ".init.note.gnu.property"
> > segment.
> >
>=20
> The latter is the fault of the libstub make rules, that prepend .init
> to all section names.

Hmm. I tried adding -mbranch-protection=3Dnone to arm64 cflags for the stub=
,
but I still see this note in vmlinux. It looks like it comes in via the
stub copy of lib-ctype.o, but I don't know why that would force the
note. The cflags look ok to me [1] and I confirmed that the note is
being generated by the compiler.

> I'm not sure if there is a point to having PAC and/or BTI in the EFI
> stub, given that it runs under the control of the firmware, with its
> memory mappings and PAC configuration etc.

Agreed, I just can't figure out how to get rid of the note.

Will

[1] -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3D3 -Qunused-arguments -Wall=
 -Wundef -Werror=3Dstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -f=
no-common -fshort-wchar -fno-PIE -Werror=3Dimplicit-function-declaration -W=
error=3Dimplicit-int -Wno-format-security -std=3Dgnu89 --target=3Daarch64-l=
inux-gnu --prefix=3D/usr/local/google/home/willdeacon/bin/ --gcc-toolchain=
=3D/usr/local/google/home/willdeacon -no-integrated-as -Werror=3Dunknown-wa=
rning-option -mgeneral-regs-only -DCONFIG_CC_HAS_K_CONSTRAINT=3D1 -fno-asyn=
chronous-unwind-tables -mbranch-protection=3Dpac-ret+leaf+bti -Wa,-march=3D=
armv8.3-a -DKASAN_SHADOW_SCALE_SHIFT=3D3 -fno-delete-null-pointer-checks -W=
no-address-of-packed-member -O2 -Wframe-larger-than=3D2048 -fstack-protecto=
r-strong -Wno-format-invalid-specifier -Wno-gnu -mno-global-merge -Wno-unus=
ed-const-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -g -W=
declaration-after-statement -Wvla -Wno-pointer-sign -Wno-array-bounds -fno-=
strict-overflow -fno-merge-all-constants -fno-stack-check -Werror=3Ddate-ti=
me -Werror=3Dincompatible-pointer-types -fmacro-prefix-map=3D./=3D -Wno-ini=
tializer-overrides -Wno-format -Wno-sign-compare -Wno-format-zero-length -W=
no-tautological-constant-out-of-range-compare -fpie -mbranch-protection=3Dn=
one -I./scripts/dtc/libfdt -Os -DDISABLE_BRANCH_PROFILING -include ./driver=
s/firmware/efi/libstub/hidden.h -D__NO_FORTIFY -ffreestanding -fno-stack-pr=
otector -fno-addrsig -D__DISABLE_EXPORTS    -DKBUILD_MODFILE=3D'"drivers/fi=
rmware/efi/libstub/lib-ctype"' -DKBUILD_BASENAME=3D'"lib_ctype"' -DKBUILD_M=
ODNAME=3D'"lib_ctype"' -c -o drivers/firmware/efi/libstub/lib-ctype.o lib/c=
type.c

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200624112647.GC6134%40willie-the-truck.
