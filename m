Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB2F5ST6QKGQEG4KXNPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AEC2A938D
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 11:01:13 +0100 (CET)
Received: by mail-vs1-xe38.google.com with SMTP id g3sf324642vso.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 02:01:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604656873; cv=pass;
        d=google.com; s=arc-20160816;
        b=PY261h9Izclq5wXI4p82o8GRdg+cc1STADylLYyNoUmdO7kMQ8D2opH23yQpP9/6uL
         i2K5pCHeImZbtNn8NvvHIEq7v+aeEQyRJ3WU+XzsnBMWxCHHGlTf5F/8yJ7NcwG8LHkU
         3Gi3taax4EkNPlky3bntAF5wrLpBKyvf96PFbmBYP135XyXCfPpAMKGaFMyfObm64HMe
         WdDfayL8WBB5RhuQgxP2MB2zwUivN416SYb8ZVdKRqi/Yy4Da0lNLmcnMdiL8nqQPo/I
         XkBmvpM4BrwtPqjCo/pDWcykTFmnkC64uPOvrEhwuA3XVbOEhPwPZRwNXpHNs7lmLwaz
         yqHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature:dkim-signature;
        bh=RbI/kQ1QlY9xyPNBdt1qdYvcoy+sYyWbB8Sr+7+bYx8=;
        b=Qs8OVG4Wh4HxhXpPy7mvn/Ra7I1HmbtHm+/st+hDRrsHKnIDd0GBK1naXL++Ba7xxO
         ozO+/uRvVXpvI+5Pnya7z8ZwCd+6tj/AQsHOpSx+DY5O1HToXKLWOSdGEdBCvZrsvl+5
         96liaPHRClHPPdyRh7PZlkkrgh4NaqE40uu+PAp4EbfEvfyvUZ93p8ty9EMw43iUt/O7
         R9+AUynWDfoYaF/mYbcuwFO3NQKzhCfuermDiRnepKyEQjsV380U3PWct2VFyIBxTXkW
         oGABoxzNYo5OMUnXTixhwfK5HRfRrLiJZLq5GGxGOE6muZbR7NbFjSgrNNj4D4AvHqBS
         9gPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rVE9K281;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RbI/kQ1QlY9xyPNBdt1qdYvcoy+sYyWbB8Sr+7+bYx8=;
        b=gb8B3+HMCNT4QSuiVSPKAFFdHgDVAl4ug1nQZpKc0Mq07d0eL/NmCDOigSel541nKA
         YsnSqjF51JjnBa/oT+OzDbMpu4RVuLM0BjF+yFj8NySKurcdxoE8KAA3MEondsxjaa1V
         COK43IFeHUHqtc3BXdxBdOJxy8dhGxe4bt2H6CaS0v6JAjbirHfEhXY4j9VoYSfz2VXq
         oVKp9DJAacEKEfVRNXoVOltAg66RhrRTrhrVZ+8WmKw3rYOaXlY18kv2+82oEP1ltNln
         q99cL+RD/I18wnc2Y3OeDFZhmmMePkHvlwKebo94WHJeh53FBU9b5qu7Rn2HAr6rVKf6
         y+ug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RbI/kQ1QlY9xyPNBdt1qdYvcoy+sYyWbB8Sr+7+bYx8=;
        b=fT24QQp0N7G1WobAr0fdypwvWeuixmMlZnnqCctWrVK6Z60nRK6joZGGH2vbg0Zt5k
         poszxYfynqPgq0Kr8hKCQJp0QU7oa03z+9F9I8jDfROn9WxcE8mDuV4Ucb8M+QREdII7
         4gyZXVbJTp/ntY5v92EZF42z84P8x6VXb4cK3uHZ3mJbnLLlzTd6r5x8pFBkn/x7/3Vo
         kIXR4PLSDDDlSgiRl9ZMyciirNUtLyckM1j6QqA7ow53Wb7v97pCt+/RGdeCC4NONOMl
         7P+XRZQcPbrHZoNoo0qS6WLbeawuLVKFX6iG+DARrynL8c47m5Xynr4wW1i1lwOW+I+W
         h2ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RbI/kQ1QlY9xyPNBdt1qdYvcoy+sYyWbB8Sr+7+bYx8=;
        b=aVgZPcCuDpfZEGkmoQyHg5btTa0Iv4fvDorUbOAipOZsSH0zYzBKk+j0j7fFrdbMCp
         OhNwxlR3FrDVlcHeVt+pXxclWA7/pOJ7ZpGoUm4hmna9TVzvv/dKeLek72c41FhX0Xmv
         ILiWkPEpR7ZpJk8FB/PxqhR+d0HyyygYul5P5NHo7EVYMl5u41CCTI0D1vjOVwp8wN52
         RITTgkUYWZTgdAzpf810YxOfEUHdW9RAv6VA9sSTC0lytPRuk9NqH3EcuTKu94m6IWsr
         iuBgDWv3YTUP4MhjVSlVDuMv0CI1ePLKeUcaSn00PejJFdMkCBwv6FTphrHvom5CpqiV
         JvXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Vxrw65D289tAXuBRWgEfxWlhNvqFfSHyH0/jfrgZF2McbLltj
	BvtazHQRlrTWsCMmUO6lkC8=
X-Google-Smtp-Source: ABdhPJz5fNJ/D3WzwWDdDuo5FPY9Y8FJp2I8clXqk9BJj6TuwzsZCTvqw3jsbmFcB/wX+skWQcpjrA==
X-Received: by 2002:ac5:cce1:: with SMTP id k1mr368961vkn.11.1604656872823;
        Fri, 06 Nov 2020 02:01:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ef8c:: with SMTP id r12ls76392vsp.7.gmail; Fri, 06 Nov
 2020 02:01:12 -0800 (PST)
X-Received: by 2002:a67:c914:: with SMTP id w20mr476141vsk.15.1604656872303;
        Fri, 06 Nov 2020 02:01:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604656872; cv=none;
        d=google.com; s=arc-20160816;
        b=F3PNCVBcSGYWKW+Vcx0UuEPzL2bIE3h8psZoGWtdIMPJE0a8sa11+y0z3hoNCE+yEE
         AEZqtfsRC4R+FuFLsxhd8d8NjFaILMPdi5JjErvNKFXfq4I95zgFtTGvDpf6qGj+sg3o
         6vNHT7JOBIK+BjM+iI2pT3S528Kk1/H+jaoqqGlzr2FitNSotaLBtFDDE36/y8gqhN+a
         fxx5PlOxSe6OUgr8oeYYu9r0qfKZnHkmgF2CvktUhZOmT1tHXbxzORjlhSx2G7yW1z6i
         AV2nm82KZtALd69K3pgCrZZNOglo0cFWmP66WlYu4hoJpqzxAJUbtqAAu+cWlTJvebje
         +QHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5A2u4CO44p7qRa+3N4k+11sSwOpF76zVgF+ilbeOAmY=;
        b=uyyhTfcSZGIpvqM99Du51+BCG4l+1lmANiwsIavP3vLIi8NkLIwp8YMLlfPNpWk0kE
         l6hGIdgwzywVtE2+159NClvuGlQJSX+mJjaZoBPeT5A1N5WpcUqWOJUGWY6psRk3onBm
         znfwYcybC7hGEMRL8Sr2TZ1D+LT7XIzUQ2yKCaTYHKBp525F318WoO9w4QVS4QBX6dpE
         IXk4QDk8druFxtrccYls2AcMYlpiUdCuEnrpDpApg3+CnEpuN2UbLcfMeorAPzf6t+E2
         TcgpVGXTFTycPvdsE3/28RITW6RzNuoQrS81HIJQgcx9i5R9IChbEOeC0/pYHRO/N6V/
         Gong==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rVE9K281;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id y17si46317vko.2.2020.11.06.02.01.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 02:01:12 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id m9so854703iox.10
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 02:01:12 -0800 (PST)
X-Received: by 2002:a6b:8b0d:: with SMTP id n13mr867950iod.111.1604656871705;
        Fri, 06 Nov 2020 02:01:11 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id u18sm544150iob.53.2020.11.06.02.01.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Nov 2020 02:01:10 -0800 (PST)
Date: Fri, 6 Nov 2020 03:01:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-riscv@lists.infradead.org, kernel-team@android.com,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH v3] RISC-V: Fix the VDSO symbol generaton for
 binutils-2.35+
Message-ID: <20201106100109.GA3811063@ubuntu-m3-large-x86>
References: <20201106045902.GA2585953@ubuntu-m3-large-x86>
 <mhng-e82ecf40-679a-41ed-b2b1-69c64a78f0b2@palmerdabbelt-glaptop1>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <mhng-e82ecf40-679a-41ed-b2b1-69c64a78f0b2@palmerdabbelt-glaptop1>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rVE9K281;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Thu, Nov 05, 2020 at 09:12:25PM -0800, Palmer Dabbelt wrote:
> On Thu, 05 Nov 2020 20:59:02 PST (-0800), natechancellor@gmail.com wrote:
> > On Thu, Nov 05, 2020 at 08:42:22PM -0800, 'Palmer Dabbelt' via Clang Bu=
ilt Linux wrote:
> > > On Mon, 26 Oct 2020 12:48:08 PDT (-0700), Nick Desaulniers wrote:
> > > > On Fri, Oct 23, 2020 at 10:03 PM 'Palmer Dabbelt' via Clang Built
> > > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > >
> > > > > We were relying on GNU ld's ability to re-link executable files i=
n order
> > > > > to extract our VDSO symbols.  This behavior was deemed a bug as o=
f
> > > > > binutils-2.35 (specifically the binutils-gdb commit a87e1817a4 ("=
Have
> > > > > the linker fail if any attempt to link in an executable is made."=
), but as that
> > > > > has been backported to at least Debian's binutils-2.34 in may man=
ifest in other
> > > > > places.
> > > > >
> > > > > The previous version of this was a bit of a mess: we were linking=
 a
> > > > > static executable version of the VDSO, containing only a subset o=
f the
> > > > > input symbols, which we then linked into the kernel.  This worked=
, but
> > > > > certainly wasn't a supported path through the toolchain.  Instead=
 this
> > > > > new version parses the textual output of nm to produce a symbol t=
able.
> > > > > Both rely on near-zero addresses being linkable, but as we rely o=
n weak
> > > > > undefined symbols being linkable elsewhere I don't view this as a=
 major
> > > > > issue.
> > > > >
> > > > > Fixes: e2c0cdfba7f6 ("RISC-V: User-facing API")
> > > > > Cc: clang-built-linux@googlegroups.com
> > > > > Cc: stable@vger.kernel.org
> > > > > Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
> > > >
> > > > Any way to improve the error message if/when this fails?
> > > > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration=
/jobs/407165683
> > >=20
> > > Probably, but I can't get that command to actually run this stuff.  I=
 tried
> > > pulling the commands, but I'm getting some weirdness
> > >=20
> > > $ rm -f arch/riscv/kernel/vdso/vdso-syms.S
> > > $ make ARCH=3Driscv defconfig
> > > $ make -j2 AR=3Dllvm-ar 'CC=3Dclang' 'HOSTCC=3Dclang' HOSTLD=3Dld KCF=
LAGS=3D-Wno-implicit-fallthrough LD=3Driscv64-linux-gnu-ld LLVM_IAS=3D1 NM=
=3Dllvm-nm OBJCOPY=3Dllvm-objcopy OBJDUMP=3Dllvm-objdump OBJSIZE=3Dllvm-siz=
e READELF=3Dllvm-readelf STRIP=3Dllvm-strip ARCH=3Driscv Image
> >=20
> > This command is simpler and reproduces it for me locally on next-202011=
05.
> >=20
> > $ make -skj"$(nproc)" ARCH=3Driscv CROSS_COMPILE=3Driscv64-linux-gnu- L=
D=3Driscv64-linux-gnu-ld LLVM=3D1 distclean defconfig Image
> > clang-12: warning: argument unused during compilation: '-no-pie' [-Wunu=
sed-command-line-argument]
> > make[4]: *** [arch/riscv/kernel/vdso/Makefile:53: arch/riscv/kernel/vds=
o/vdso-syms.S] Error 1
> > make[4]: *** Deleting file 'arch/riscv/kernel/vdso/vdso-syms.S'
> > make[4]: Target '__build' not remade because of errors.
> > make[3]: *** [scripts/Makefile.build:500: arch/riscv/kernel/vdso] Error=
 2
> > make[3]: Target '__build' not remade because of errors.
> > make[2]: *** [scripts/Makefile.build:500: arch/riscv/kernel] Error 2
> > make[2]: Target '__build' not remade because of errors.
> > make[1]: *** [Makefile:1797: arch/riscv] Error 2
> > make[1]: Target 'Image' not remade because of errors.
> > make: *** [Makefile:335: __build_one_by_one] Error 2
> > make: Target 'distclean' not remade because of errors.
> > make: Target 'defconfig' not remade because of errors.
> > make: Target 'Image' not remade because of errors.
> >=20
> > <snip>
> >=20
> > > diff --git a/arch/riscv/kernel/vdso/.gitignore b/arch/riscv/kernel/vd=
so/.gitignore
> > > index 3a19def868ec..88206dd8b472 100644
> > > --- a/arch/riscv/kernel/vdso/.gitignore
> > > +++ b/arch/riscv/kernel/vdso/.gitignore
> > > @@ -2,3 +2,4 @@
> > > vdso.lds
> > > *.tmp
> > > vdso-syms.S
> > > +vdso-syms.nm
> > > diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso=
/Makefile
> > > index a8ecf102e09b..fe5c969a6bf4 100644
> > > --- a/arch/riscv/kernel/vdso/Makefile
> > > +++ b/arch/riscv/kernel/vdso/Makefile
> > > @@ -49,8 +49,11 @@ SYSCFLAGS_vdso.so.dbg =3D -shared -s -Wl,-soname=
=3Dlinux-vdso.so.1 \
> > > # We also create a special relocatable object that should mirror the =
symbol
> > > # table and layout of the linked DSO. With ld --just-symbols we can t=
hen
> > > # refer to these symbols in the kernel code rather than hand-coded ad=
dresses.
> > > -$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
> > > -	$(call if_changed,so2s)
> > > +$(obj)/vdso-syms.nm: $(obj)/vdso.so
> > > +	$(call if_changed,nm_d)
> > > +
> > > +$(obj)/vdso-syms.S: $(obj)/vdso-syms.nm
> > > +	$(call if_changed,nm2s)
> > >=20
> > > # strip rule for the .so file
> > > $(obj)/%.so: OBJCOPYFLAGS :=3D -S
> > > @@ -68,9 +71,13 @@ quiet_cmd_vdsold =3D VDSOLD  $@
> > >                            $(patsubst %, -G __vdso_%, $(vdso-syms)) $=
@.tmp $@ && \
> > >                    rm $@.tmp
> > >=20
> > > -# Extracts
> > > -quiet_cmd_so2s =3D SO2S    $@
> > > -      cmd_so2s =3D $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
> > > +# Extracts symbol offsets from the VDSO, converting them into an ass=
embly file
> > > +# that contains the same symbols at the same offsets.
> > > +quiet_cmd_nm_d =3D NM -D   $@
> > > +      cmd_nm_d =3D $(NM) -D $< > $@
> > > +
> > > +quiet_cmd_nm2s =3D SYMS2S  $@
> > > +      cmd_nm2s =3D cat $< | $(srctree)/$(src)/so2s.sh > $@
> > >=20
> > > # install commands for the unstripped file
> > > quiet_cmd_vdso_install =3D INSTALL $@
> > >=20
> > > For reference, here's the output of nmo for me:
> > >=20
> > > $ cat arch/riscv/kernel/vdso/vdso-syms.nm 0000000000000000 A LINUX_4.=
15
> > > 00000000000009e0 T __vdso_clock_getres@@LINUX_4.15
> > > 000000000000080a T __vdso_clock_gettime@@LINUX_4.15
> > > 0000000000000a48 T __vdso_flush_icache@@LINUX_4.15
> > > 0000000000000a3c T __vdso_getcpu@@LINUX_4.15
> > > 0000000000000916 T __vdso_gettimeofday@@LINUX_4.15
> > > 0000000000000800 T __vdso_rt_sigreturn@@LINUX_4.15
> >=20
> > This diff does not solve the issue for me with the above command.
>=20
> It wasn't really meant to solve anything, just split the commands up a to=
uch
> more so we could see what's going on.
>=20
> I just installed Debian's toolchain, which is LLVM 9.  IIRC that's pretty
> ancient WRT RISC-V, so my guess is that it's just a long way from buildin=
g
> Linux.  Looks like llvm-nm on my system doesn't put the @@LINUX_4.15 afte=
r the
> symbol names, I think this should do it?
>=20
> diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s=
.sh
> index 3c5b43207658..e64cb6d9440e 100755
> --- a/arch/riscv/kernel/vdso/so2s.sh
> +++ b/arch/riscv/kernel/vdso/so2s.sh
> @@ -2,5 +2,5 @@
> # SPDX-License-Identifier: GPL-2.0+
> # Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
>=20
> -sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)@@LINUX_4.15!.global \2\n.set \2,0x=
\1!' \
> +sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)\(@@LINUX_4.15\)*!.global \2\n.set =
\2,0x\1!' \
> | grep '^\.'
>=20
> It works for me, at least for this specific problem.

Same here. defconfig minus CONFIG_EFI builds and boots in QEMU with that
diff (plus LLVM_IAS=3D1 in the make command, I forgot that earlier).

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

> $ llvm-nm-9 -D arch/riscv/kernel/vdso/vdso.so |
> ./arch/riscv/kernel/vdso/so2s.sh .global __vdso_clock_getres
> .set __vdso_clock_getres,0x00000000000009e0
> .global __vdso_clock_gettime
> .set __vdso_clock_gettime,0x000000000000080a
> .global __vdso_flush_icache
> .set __vdso_flush_icache,0x0000000000000a48
> .global __vdso_getcpu
> .set __vdso_getcpu,0x0000000000000a3c
> .global __vdso_gettimeofday
> .set __vdso_gettimeofday,0x0000000000000916
> .global __vdso_rt_sigreturn
> .set __vdso_rt_sigreturn,0x0000000000000800
> $ nm -D arch/riscv/kernel/vdso/vdso.so | ./arch/riscv/kernel/vdso/so2s.sh
> .global __vdso_clock_getres
> .set __vdso_clock_getres,0x00000000000009e0
> .global __vdso_clock_gettime
> .set __vdso_clock_gettime,0x000000000000080a
> .global __vdso_flush_icache
> .set __vdso_flush_icache,0x0000000000000a48
> .global __vdso_getcpu
> .set __vdso_getcpu,0x0000000000000a3c
> .global __vdso_gettimeofday
> .set __vdso_gettimeofday,0x0000000000000916
> .global __vdso_rt_sigreturn
> .set __vdso_rt_sigreturn,0x0000000000000800
>=20
> >=20
> > Cheers,
> > Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201106100109.GA3811063%40ubuntu-m3-large-x86.
