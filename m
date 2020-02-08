Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZGB7HYQKGQEBLVEYXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B88D156346
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 08:19:02 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id f25sf1059461otq.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Feb 2020 23:19:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581146341; cv=pass;
        d=google.com; s=arc-20160816;
        b=MrEXUOPfIsAzwNun1T/HbaK1hFQUXZCJHN3VpctPt97BQa54+uNxAc6HXn/IbYeCKI
         4UvtC6UwJwn+U5Rdia5f3jOfnshwINoEwCfNry0rmB7Nzp3VV4T+LwmE/mWpi26ntBlB
         JdzWHLsFQRt3Qu1Jb9kdQ1ehYITqNKTBTLJgpnS/t6B6l5vVFIogUwC5cJEsEVAlsL3g
         io7+odVpnpu2buSGfyYb/ZGJhUo6K/j0bjSBDLZOnrSelqh83MkAT7nVgANeeD8PB+Tm
         rQNnlQIH05eyFV2g1IrYJgdVcfqUrEZsFovZhU+p8nm7hVcsxec79zAay18od/OQ3ZlN
         589g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bQ2OWk7t+MLu690deDNSatHZBbqoVxKokJccAXfaLUw=;
        b=dKXwjc7T+8rGMxdpJEjvBZuRb+d+gUpSPytAcFKGA1BxDrIGqRPqYUxVcAhiLwRklM
         0I9bh35ZZR3/5/s1/Ae0Ij8bhlUERsysRtDxfqEtxqoboeH92pSYFDBBsnboym9bpi4k
         PaQ7SniG1VUOHBYFA34Z5eapXlrKvRYi05KXR4IJIsyRBqDhbrdVzDyDKhqAcTscjneP
         b2IwBFk5EfnaW5Ofnd2CRyPHBGomSkxPdjldsukN8NaxKta3MoTSO0cwd+KL0RPJnSST
         lUuvAOq96yQKzjcPBo4bB28RNZlnxZbDHDE7zK0wkXtufbCO2mJGJmWiu7YiZpKgMpP2
         gSuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QExvbQY9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bQ2OWk7t+MLu690deDNSatHZBbqoVxKokJccAXfaLUw=;
        b=bWPuelardB/hx4knF4MuYOTtUXncRW2PJ5ydhBjvMrT6xFRNdLjekYIgst36CxJAmV
         GzD3PXv4GMqATfCKoT4NQjZiigRs9AIGxXtW6r+GX+CYvNQJlLqy3dloNFSDDAxwNEJi
         ewxudVwtFPio3nKaRdfWFCrhhTLTuq0O0RK9PKqePOfGyzO35DwMCX5laDrpWKDU3Xnz
         FM2Q52/WPUhEuhK5KSp4QznC228rYshJf/XvxOOMEg4F2xxk71Z1qiXv0PuyP4oA9DCA
         liO8UClRegqmaKTEaPXZfqNfxciUXXJuh3osTX0mWeQUUNC8y+GYNMdOteU4b2Ya8D/3
         h1tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bQ2OWk7t+MLu690deDNSatHZBbqoVxKokJccAXfaLUw=;
        b=nUXEuQ7gz+vkhJ945pkl4tgNm+wHmG55lOlqi1vhCq3KU5os1i9fJBgh/XHh9INCJK
         kL4vAnD8NKDIJT+lMUPBywxbMBlPJWCz1hBdSV9txHXPIp8q3GweMFNk4PShV8x8BdCt
         oVvXp18okx3mKIilJwOljkrMhnPqHg/rBVa8r1UZT4MZKnZjQHUWymKVG983B+5oweay
         CMcQblBwXxfNRC7k6bB1ePk6GrGByaDfgQ4lYAGUVb0jvzfHdZb6eZ9N4/wkHKgvJogS
         pqVYNeoVCnjq8IZOnz/u9NiHoUfbZeh1tpuluPa0LNiZezZdbzLbqD2pxZ8gL3Iaxidx
         0jSA==
X-Gm-Message-State: APjAAAUVPEwFX9+UqUHBm6uy2Opr/HA03IN3IHBxAmOkYc4ewpwtusj3
	P2ogdkl6LtxVSOSFqqTeKZ0=
X-Google-Smtp-Source: APXvYqwS6AAkYhHLvg8FVIuu+UEhwuDnJp+Abs9n79D8dljiru3Fbp/Qi/0Qxe1KTn8t7Wadf3A6cQ==
X-Received: by 2002:a9d:6415:: with SMTP id h21mr2607111otl.152.1581146340693;
        Fri, 07 Feb 2020 23:19:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:649:: with SMTP id z9ls3241840oih.3.gmail; Fri, 07
 Feb 2020 23:19:00 -0800 (PST)
X-Received: by 2002:aca:af50:: with SMTP id y77mr4736332oie.8.1581146340330;
        Fri, 07 Feb 2020 23:19:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581146340; cv=none;
        d=google.com; s=arc-20160816;
        b=KFxuD9rurFm3bTfNps1yD75pQc9qkFsOiptIn8z7NCcqYT/OGzzgrKHONw6eV2OMen
         7dvCNAWT4R/1EZTwUEWz9sCnHs5tncPk5SX+tGUr+6wrr8T2zq1uB0BlwBsZBM6NPJ8f
         92aAFkhgCaS59ZrcZM/MLXyEDC3wWmLoph2USA1JM+YTL9nOKIoEebvQRE37ILvC+XBt
         RsURAxBJ6gNy0NwnTjuEU7wRj0tglY9Oj7hz4wr7Zx+FKqND+TduYDuNmVQsOejRe25w
         hyYW+QsRSdcapGQ3+pCmf2Iul8T2C0ewruQOmBGYNFLocaxgaKmCgRroYtzZFuphyEg0
         vKwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1jgwctlv4oTdrR8f92pQb4YhHDZt1lVlF6B/6oa0E6k=;
        b=V9/TE8ihwHaicyEW3SAObS5Agrv8I/TpuXpbH7Sm/XR/DHtH26qjN+UoTwHEOvOBlE
         duZH9sPUvkGCCOtZdw9yKoa2b+hIT6i/H3NY7+ZqbCW86bLVp41ST4Jg9zNPCwoFnt9I
         PeiunBuxxz7bsItoBVbKVf4tSyitY1WvSt3Sn/BHJrexeznWlJ0Xs/CBrU7birrFowzT
         WOrEx/uMixosbyc/3SK/qDNpO1ZHFPY/7hAmNQ4cEyZH+emtoDfoLBYGIsjptOAaYozg
         bX4aSV/jU7TwDaX0iY/W8fEPfotckqFuXHZcYiOPWzOnni3sUZnShEY6GAyFxeB/14J2
         BoZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QExvbQY9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id d16si514965oij.1.2020.02.07.23.19.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 23:19:00 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id gv17so1897251pjb.1
        for <clang-built-linux@googlegroups.com>; Fri, 07 Feb 2020 23:19:00 -0800 (PST)
X-Received: by 2002:a17:90a:3745:: with SMTP id u63mr8411017pjb.123.1581146339108;
 Fri, 07 Feb 2020 23:18:59 -0800 (PST)
MIME-Version: 1.0
References: <202002071754.F5F073F1D@keescook>
In-Reply-To: <202002071754.F5F073F1D@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 8 Feb 2020 07:18:47 +0000
Message-ID: <CAKwvOdnRhx=SgtcUCyX2ZOGATM8OzG6hSOY9wGQZcwtp+P5WBQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: rename missed uaccess .fixup section
To: Kees Cook <keescook@chromium.org>
Cc: Nicolas Pitre <nico@fluxnic.net>, Manoj Gupta <manojgupta@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Russell King - ARM Linux <linux@armlinux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QExvbQY9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

On Sat, Feb 8, 2020 at 3:02 AM Kees Cook <keescook@chromium.org> wrote:

Looks like we were both up late debugging this! Great job finding a fix!

>
> When the uaccess .fixup section was renamed to .text.fixup, one case was
> missed. Under ld.bfd, the orphaned section was moved close to .text
> (since they share the "ax" bits), so things would work normally on
> uaccess faults. Under ld.lld, the orphaned section was placed outside
> the .text section, making it unreachable. Rename the missed section.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/282
> Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44
> Link: https://lore.kernel.org/r/nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr
> Fixes: c4a84ae39b4a5 ("ARM: 8322/1: keep .text and .fixup regions closer together")

I was curious if the "mix" of `.fixup` and `.text.fixup` in a few
places under arch/arm/ was intentional or not. I should have
investigated that more.

> Cc: stable@vger.kernel.org
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Reported-by: Manoj Gupta <manojgupta@google.com>
> Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Before this patch:
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang LD=ld.lld -j71
$ readelf -S arch/arm/lib/copy_from_user.o
...
   [ 9] .fixup            PROGBITS        00000000 0004e8 00001c 00
AX  0   0  4
...
$ readelf -S vmlinux
...
  [ 2] .fixup            PROGBITS        c020826c 00126c 00001c 00  AX  0   0  4
  [ 3] .text             PROGBITS        c0300000 002000 d71964 00 WAX
 0   0 4096
....
(Which is bad since .fixup resides before _stext!)
$ readelf -s vmlinux | grep _stext
203324: c0300000     0 NOTYPE  GLOBAL DEFAULT    3 _stext

After this patch is applied:
$ readelf -S arch/arm/lib/copy_from_user.o
...
  [ 9] .text.fixup       PROGBITS        00000000 0004e8 00001c 00  AX  0   0  4
...
$ readelf -S vmlinux
...
  [ 2] .text             PROGBITS        c0300000 002000 d71964 00 WAX
 0   0 4096
...
(So there's no orphaned .fixup section).  I forget if I was just
discussing it w/ Ard or Arnd a few days ago but I think we should
really enable warning on orphan sections during link (lest we continue
to run into issues like this).

$ grep -r \\.fixup arch/arm

turns up another hit in:
arch/arm/boot/compressed/vmlinux.lds.S:    *(.fixup)

Which I think should be fixed, too, maybe in a V2 so I'll hold my
reviewed-by tag for now. (Modifying that locally, I'm able to boot
qemu, and I also don't see any object files with such a section, ie.

$ readelf -S arch/arm/boot/compressed/*.o | grep fixup

comes up empty. So it could be renamed or even removed).

We should also cc stable, since c4a84ae39b4a5 first landed in v4.1-rc1.

Thanks for the patch!

> ---
> I completely missed this the first several times I looked at this
> problem. Thank you Nicolas for pushing back on the earlier patch!
> Manoj or Nathan, can you test this?
> ---
>  arch/arm/lib/copy_from_user.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
> index 95b2e1ce559c..f8016e3db65d 100644
> --- a/arch/arm/lib/copy_from_user.S
> +++ b/arch/arm/lib/copy_from_user.S
> @@ -118,7 +118,7 @@ ENTRY(arm_copy_from_user)
>
>  ENDPROC(arm_copy_from_user)
>
> -       .pushsection .fixup,"ax"
> +       .pushsection .text.fixup,"ax"
>         .align 0
>         copy_abort_preamble
>         ldmfd   sp!, {r1, r2, r3}
> --
> 2.20.1
>
>
> --
> Kees Cook



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnRhx%3DSgtcUCyX2ZOGATM8OzG6hSOY9wGQZcwtp%2BP5WBQ%40mail.gmail.com.
