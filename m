Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLM3W74QKGQE2ICOZBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A16023F4A2
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 23:54:54 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id s64sf1809329ooa.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Aug 2020 14:54:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596837293; cv=pass;
        d=google.com; s=arc-20160816;
        b=H2ms4eae+HwcMfUwEfqN7Ilr9joTPCuooJ6PH8/i0Kq4glUP8GrcCeFif9CmxaZJ0D
         zggxLFlbcLQ3U/swcF/ye/h41ckqvtF6u+o8/cB2AcRxaI83/nqqkYJdFC+SAzQk+VFA
         cOojzJgMk881h0Rn5AIlRxEeSf4yFzpQEb/Z5e5Ygqe1ORNCFIcXYv5AP+XdoLVCuTPD
         cD492A0S8TH9fAKBBupkIlv0Uc8bU/NBDiCZoLaZKtUqrE7iLXh+2pimAAlfpsJ4jhhh
         fv8fb7Yh7PNsaa1chitoE1ExS5jx0fpdy/ZKEfC133hlApVP1FSx+ffAPArhK1S24YEo
         vlKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=V9VMa4gne9Z37YElnxs+1W2N6Vy2bIEhaPR9s1k0O4Y=;
        b=kurM/B2I0MIoli0Sgtxwe25MO+U31BUTKF8qa+NQzzHQyFs+7cfREii2b7pgm+eezK
         s6TIAeFnc75zHdl+PKp+S2VBuoJTr14zbJTJfck++CnuxD+W8oBTIyZFQZJ4nv/tgw5H
         mReSv6F5/Z47bt5D4dBbVmvpTGJ2O/+L5oTjg88G1Kq6gNb8c6t16jQzsSsQrI3bSPVU
         pK+uGCqocloSGRkWJAeRYPG1nwuZur/6n96Iz+JdXoAsJlu9dxCV35eAsxlt7SqaxIuA
         tH71HwSfrBxH8+p0hzmgcmnhUhXzp5IpgWcepufffK+fhyYGxFsAnk4JsfQ5gaMcsDRy
         KzMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yv3wn2cr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V9VMa4gne9Z37YElnxs+1W2N6Vy2bIEhaPR9s1k0O4Y=;
        b=a8CLaQZ8hQ9aq77NHOetmeq24IK2VnzHJYciFlCEzBYXtGwp7sdl1FxWTe09fIgeiu
         E3lCzXtG3Jhog3CFtwsjrS4orgv3rSmNn58yPueCjfd4ngHxU3n2T5tKDOpZEUp8gkOT
         T3mBz9S1QEmKbdFFwnXDTs5msQr3zao7P6bHu42nr9n7GbR1aZMJ2HpVsQKGKjnipNwx
         Xsrxyk0GYSNRXI4fzMmDFHwGoEXIv60qxMU0Ik6l8FS9PsJrW671c3wQ0mzzGPMSUnoH
         acg882+5BhpsQ6L/Mpopwlh/DjTw0Tcl/fLwfoSGRbt4daQiuTYly+jZDbJXBeJrM8J7
         OHIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V9VMa4gne9Z37YElnxs+1W2N6Vy2bIEhaPR9s1k0O4Y=;
        b=N+fIe3J98+eoMaz0ga3Q1Ba6lC1yus4S2c5t574C32WYRrW0ewR2ED5WuFl+w1fbmA
         wC3fUUegoYCIhVgWjgP4z9mnbeM68R0Cs+S1CS05YJibpobfpsb8Cspqn1hKP3D3/+vH
         uWGm4IfamFJ7vwBgsDtLRRHUPSdQX644AkooxvgdcoDxSl3l647cZ0D16zvBYKLqtLIT
         1O33kg7tiMB1qzTjl5DlFjfugO/jSh5ZhXAWDx1xhVTHFPY0Hwo0OJyP1j3obzpYuyyM
         r0cyYPt7SjL4avOqSKlJYUIl4KMy3Ra5JvzfjsuZK1qBcScqoDwxwu6UZZojp1aGi7U1
         YFaw==
X-Gm-Message-State: AOAM532bkSONU9J80U9ZuQADaWfiZ1ZxlhFlsv5CwBgqskH3tr+tdgl/
	OCz6NTrmWVIgYg7/fyrnRXk=
X-Google-Smtp-Source: ABdhPJy6lHo59jrlh9eraTJBA1jLz/576ODk+HomkNdGKormgeRVOsITeKWbyI2J5lOvEYMQWTu/Gw==
X-Received: by 2002:aca:670b:: with SMTP id z11mr12388359oix.6.1596837293358;
        Fri, 07 Aug 2020 14:54:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:644a:: with SMTP id m10ls2485531otl.7.gmail; Fri, 07 Aug
 2020 14:54:53 -0700 (PDT)
X-Received: by 2002:a05:6830:1259:: with SMTP id s25mr14351464otp.203.1596837293036;
        Fri, 07 Aug 2020 14:54:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596837293; cv=none;
        d=google.com; s=arc-20160816;
        b=s8WFvfvv4Q44DS2ZBe+V4mUKX0wI53pAS8RNsWOivb2p73GL5fGNfO3W5ZesqTajcC
         6xIIKbFXlqoQNavCODEOHvvzbQ9AMAuCkzsNsapCd9plPMowAcyKLeb4JaDp9uRbiTr3
         t0E8BVnPn8ga9JnRDJe3DgUs7HzEISyLNk6Cud3oXd6bADRnhy6jrpLIz/HErR1+NYh3
         wvj1G8Ms5rhAgPlnWmIcxYkNEMQYsuteT6ckorGtj6x4ebtDoTTm2gb4enqyM+Wwwy2v
         YmCKMXU0yUZBHHSOsh1iYIRaNmIKVHOryRIxtAm5unOwgZpAw/Rp6Cu4UEcK7mnfs8rU
         6/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PvRGcDuizgzYHfGqKWM/eyvjCExelLzyI7VykszthhA=;
        b=SKj8Z0o4jLRDMYMBlIwRjEtLH7o1g64PIFqUkvQldbk3HKh3trk4Rf4qsVb2QRN+jr
         62RnfztefNLPc+QWI13P2EcuU8eeAY4Zx5r6NSoPw5J9WyVBcIEjdJdyIZw2SkOkKKgX
         RxvTmU3+CxdCGnn3MqBoVuEkxsdR1kE+djDAX8bh1CQaogmSWWdyJEk7gmuhSsIRojDv
         LXJLSKrG4neL/UkrvAFBBQxpWM7tM/NYLt54bQWKhfU4LZRrHjRSKeDAxV21iixV/X6G
         Usfoz7BTq2fcM7xHSxpdoulLWsi7cRwFdWAJGqfOALAd/oQD3vb5WF6cg7fZ3t1DSj61
         h74A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yv3wn2cr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id v18si865505oor.0.2020.08.07.14.54.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2020 14:54:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id q17so1795980pls.9
        for <clang-built-linux@googlegroups.com>; Fri, 07 Aug 2020 14:54:52 -0700 (PDT)
X-Received: by 2002:a17:90a:3ad1:: with SMTP id b75mr14470579pjc.25.1596837291969;
 Fri, 07 Aug 2020 14:54:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200807194100.3570838-1-ndesaulniers@google.com> <20200807212914.GB1454138@rani.riverdale.lan>
In-Reply-To: <20200807212914.GB1454138@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 7 Aug 2020 14:54:39 -0700
Message-ID: <CAKwvOdmD1OMnYE55O+YUkAh+C4Der+2CqKd7JVzfr0+6hYx6jw@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: avoid relaxable symbols with Clang
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Fangrui Song <maskray@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	e5ten.arch@gmail.com, "# 3.4.x" <stable@vger.kernel.org>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Dmitry Golovin <dima@golovin.in>, Marco Elver <elver@google.com>, Nick Terrell <terrelln@fb.com>, 
	Daniel Kiper <daniel.kiper@oracle.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Yv3wn2cr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Fri, Aug 7, 2020 at 2:29 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Fri, Aug 07, 2020 at 12:41:00PM -0700, Nick Desaulniers wrote:
> > A recent change to a default value of configuration variable
> > (ENABLE_X86_RELAX_RELOCATIONS OFF -> ON) in LLVM now causes Clang's
> > integrated assembler to emit R_X86_64_GOTPCRELX/R_X86_64_REX_GOTPCRELX
> > relocations. LLD will relax instructions with these relocations based on
> > whether the image is being linked as position independent or not.  When
> > not, then LLD will relax these instructions to use absolute addressing
> > mode (R_RELAX_GOT_PC_NOPIC). This causes kernels built with Clang
> > and linked with LLD to fail to boot.
>
> It could also cause kernels compiled with gcc and linked with LLD to
> fail in the same way, no? The gcc/gas combination will generate the
> relaxed relocations from I think gas-2.26 onward. Although the only
> troublesome symbol in the case of gcc/gas is trampoline_32bit_src,
> referenced from pgtable_64.c (gcc doesn't use a GOTPC reloc for _pgtable
> etc).

Thanks for taking a look, and the feedback. I appreciate it!

$ gcc --version | head -n 1
gcc (Debian 9.3.0-11) 9.3.0
$ make -j71 clean defconfig bzImage
$ llvm-readelf -r arch/x86/boot/compressed/*.o | grep -e
R_X86_64_GOTPCRELX -e R_X86_64_REX_GOTPCRELX
0000000000000114  000000120000002a R_X86_64_REX_GOTPCRELX
0000000000000000 trampoline_32bit_src - 4
$ llvm-readelf -r arch/x86/boot/compressed/vmlinux | grep -e
R_X86_64_GOTPCRELX -e R_X86_64_REX_GOTPCRELX
$

So it looks like yes.  I guess then we'd need to add a check for
CONFIG_LD_IS_LLD and CONFIG_CC_IS_GCC and binutils version is 2.26+?
I don't mind adding support for that combination, but I'd like to skip
it in this patch for the sake of backporting something small to stable
to get our CI green ASAP, since CONFIG_LD_IS_LLD probably doesn't
exist for those stable branches, which will complicate the backport of
such a patch.  So I'd do it in a follow up patch if we're cool with
that?

> I'm a bit surprised you were able to boot with just _pgtable fixed
> (looking at the CBL issue), there are quite a few more GOTPC relocs with
> clang -- maybe LLD isn't doing all the optimizations it could yet.

I am, too.  I didn't specify which symbol was problematic or put this
flag on just one object file, because it's likely that there's an
issue with multiple symbols in multiple object files, though it's just
_pgtable that causes observable boot failures.

> This potential issue was mentioned [0] in one of the earlier threads
> (see last paragraph).
>
> [0] https://lore.kernel.org/lkml/20200526191411.GA2380966@rani.riverdale.lan/

Oh, indeed.

> > Also, the LLVM commit notes that these relocation types aren't supported
> > until binutils 2.26. Since we support binutils 2.23+, avoid the
> > relocations regardless of linker.
>
> Note that the GNU assembler won't support the option to disable the
> relaxations until 2.26, when they were added.
>
> However, it turns out that clang always uses the integrated assembler
> for the decompressor (and the EFI stub) because the no-integrated-as
> option gets dropped when building these pieces, due to redefinition of
> KBUILD_CFLAGS. You might want to mention this in the commit log or a

That's why I was careful to note in the commit message that it was
Clang's integrated assembler (assembler job) vs Clang (compiler job)
itself that was producing these.  May I add precisely:

```
Note that the GNU assembler won't support the option to disable the
relaxations until 2.26, when they were added.

However, it turns out that clang always uses the integrated assembler
for the decompressor (and the EFI stub) because the no-integrated-as
option gets dropped when building these pieces, due to redefinition of
KBUILD_CFLAGS.
```
with your suggested-by tag for a v2?

> comment to explain why using the option unconditionally is safe. It
> might need to be made conditional if the CFLAGS ever gets fixed to
> maintain no-integrated-as.
>
> Thanks.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmD1OMnYE55O%2BYUkAh%2BC4Der%2B2CqKd7JVzfr0%2B6hYx6jw%40mail.gmail.com.
