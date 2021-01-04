Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBREBZ37QKGQE7H4VXZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id B29CD2E9F10
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Jan 2021 21:55:33 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id n17sf18449010oof.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 12:55:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609793732; cv=pass;
        d=google.com; s=arc-20160816;
        b=B+mL9wQ1SFqNlev8qNmGoY0k1TyybmQyQ++0C955XrKPPC9BBCvNfdvB372aLSo5Q0
         JBioDHECvAmLXoxtKxwNMDzMcLrUoxbF/O4wD4lAlG9+9nTxjaHuxTyP7wl1KzCf57yp
         KWMV94XPcfVk072T/gJx00GyDlII19iLNw5/VKZxf/elDT4pKv82uSkwQx9eEFi8Y6gE
         a8dxfph1VB8uwqhh/dGkf3wBmHGWxbUMoXlSqsG5KUlauLDKc6rgCW9+gMRnDQE4vYFv
         OvRqbuvbFFGawZVMtlS6DIByo1VrSWoApfG0zPjqb9+34iA3MbT/UiehO7Q8d9tXV4SI
         CK4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=PfNfgzg7qUkMF9oCVzloo+k3/Zr11F/Qy/Xonc8W/KA=;
        b=vQGL7GTfqJJkf5xoDWgqTVqs6aIckQPr2kMa5T7X2lhauXh4O0A/mmnvXXYFudvzKw
         J7IUY1D65KXrAMcBFZ6sm/56p3YayY2/DxPXTPT7cqI7nEf/fTx8jslaIW7+1IxleSSg
         4O4+tpmfhAksm7mrsRmYpBsTN08Ty+Ak+vHyVLqLqIGcw21but6IlRt5wzof0nDdfLRX
         DlJ+m8GzdJ2pWngsH0wKYXrdzOKWEKia1awenIS9sGMrbRHqlcuIUSv3/c79hn3Q6Zek
         0Q79usXIVAAUnUSQmdR6hcI16dyh304iqXkBlc4ndv2rewuSw16NufKo5IHRr4lAwNd2
         ufIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HpvjmJGA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PfNfgzg7qUkMF9oCVzloo+k3/Zr11F/Qy/Xonc8W/KA=;
        b=GM3QFY3kx5bNTusfabyC+buWu8KxAYAbehOxGJZ+vl6Th850lfHmM0tsps/wQ/TSN2
         KW32H43VdJ+Rk7PEGM6ZAH/XvcbujTCbu1uaQhlBN5SEQ4kiSmQ+73wN3Ed/FM7Kzgor
         B7fz7H3kvGjFKVGINB8oEThP1XElo0ncKqdTPnIRhAyQAlx9Fe5b/tQz12H26pL6Sqdo
         0qOirQeRK9skKXlIFZmhK96OiEvYtYOWWOTCy4kYRgoza1jFWhy9raDoqiJLmfi50q85
         ymr6Y8K8HzWwBZyCgex+X0qIHPx49lKe7cUH/DbfNV9hRMvw/GlYeUJeAhWIinBeGwk6
         CHcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PfNfgzg7qUkMF9oCVzloo+k3/Zr11F/Qy/Xonc8W/KA=;
        b=ccWxnYdT1omrIrEaCOprnQRjT8zm5kmtsrvvv3RWxR1jwHF4n4KZORiOvgqIc6LS8j
         l6Y0ylBbGg28vqUusmvIC5yfJYxAtWBIYdKYQAy3INtRe54/tYX9/BLC58yRRccbulGf
         e8jBL1bAEdZRcH65pVS28QGC8Y7Z7yI3QrWGk6INLpKBzBFvb/ARv9C2z2zF3YuwWEki
         MpyhqIL48BQghXnsj4LSE9Rcx1ww+pYgwcswaNbRy9OwfQd1KsMtpO3Sx0cpMTfPd/ny
         QPKBoPUofopnDLSk+tOQ6UYh4adsYq5nuQ1KbqUASTan3BrjcyqfP5XR1jekWmqUCBDN
         Kx2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PfNfgzg7qUkMF9oCVzloo+k3/Zr11F/Qy/Xonc8W/KA=;
        b=dG/5aNFwtxc58RmQ3dbNI4qOgH8IzorGemHmV6+qQwz1T1J+YRI/cnviYIgIpxnyTk
         g3qYtIeWLb3vYbOAkcn7zp5/aRcSl5qlLTp+e7sA3oJd8j65cgHbGK28FIvqyd58WbnN
         fFGIgLW7e1i2H9zaXE2CsrOHF/QQpcyPG5a5A36A6VsXGCP7b4zDrAwE++xuuslP4oXm
         cfLtQhbXE57jDUAMuCT2M/YTxrZ99oGLz/6jdhSjPVo0UoFtA1k7VuduW11PMQnz9Pyy
         j2xZRSDJoVDp9wjpdy4NQb8Gcp03n8xv+m5wd5ahOF3S2vlm6n4p07T2nDdAEKZPbEGc
         /tiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532igx2Zc24jBQnDftEcJDcvhq8s2jEKmQjvuiOa+/deS6oaVXiw
	MiloJ8MKjQaJUTs6LHEmi9w=
X-Google-Smtp-Source: ABdhPJw9wCErN8Ak+uH572xKEEsFGwofT9KlGqWvNU2pBGhGb5qA81c0KP7BPIIvZfhX3nZOb+xe5Q==
X-Received: by 2002:a05:6830:20d7:: with SMTP id z23mr53897622otq.116.1609793732270;
        Mon, 04 Jan 2021 12:55:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:758a:: with SMTP id q132ls14333796oic.4.gmail; Mon, 04
 Jan 2021 12:55:31 -0800 (PST)
X-Received: by 2002:aca:5d42:: with SMTP id r63mr567553oib.94.1609793731901;
        Mon, 04 Jan 2021 12:55:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609793731; cv=none;
        d=google.com; s=arc-20160816;
        b=bvfuSlhbr35e84TkKydkOMoPB1u9zTkOlWJ5A/89fV7/R976/oZqVaALsqC+H2T3YV
         jAmGGn0TohdwpxO+9Rqw4GFa/I0CCok2QKD117fj5pdXSP2jZGWyP7yVxrW0/U2AMg7L
         ZqK0KfKPgFbqCMBnCw5P4Zh9uNH51siMonPIa6MmVqa/lXEX8ZAU4+OZU1SAkMUkbF0v
         Apkb0zbk+cxE4yN/iuVjUtzthDXXzDZ3bxyalM+sj3TzEHUFyyyP/O2MslKjiyONBuJ2
         6gsq5FS5F6gFC7Wf885zahFYkjBG5I1BP5IPbsclOtw7/17t7kTp2senw6EGcHIoNjK2
         I/HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LJZDZGduu6iANLcIXL/xcpeuMsOJEmvZp5eNkLssDnk=;
        b=XEPv2WoGZSI1/d8Prv5fyCNGxue66nX9z5Ygesa+WKfEitchJtPhXKW5s+uULW7oKu
         RY5aIHsXF90qnWOEPEybh36nxTxk0P1Hhy8bfKLa78+96k8dgyhm+BDiSUGquWAiUN+q
         XmIn42IxoBJBtHHUMfst30XHYrX4xALSWhQ2bj0yGcLk+IhP3KB0HWmlR/x85wYnS0mE
         MTOPAKx5d6WSQOpdOztdu6uW3iW9YhBWbtkHEQ/a4CUeZ/NWxvU9mV4be77PepzyrrXh
         jKggn1qnc8iBDdvNiiyhQVPNcWn12Q+HQf1i6Jdom/LL41eXHqtgQDTRMQOPcG606KZO
         WTpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HpvjmJGA;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com. [2607:f8b0:4864:20::d30])
        by gmr-mx.google.com with ESMTPS id u2si6115642otg.1.2021.01.04.12.55.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 12:55:31 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30 as permitted sender) client-ip=2607:f8b0:4864:20::d30;
Received: by mail-io1-xd30.google.com with SMTP id i18so26274720ioa.1
        for <clang-built-linux@googlegroups.com>; Mon, 04 Jan 2021 12:55:31 -0800 (PST)
X-Received: by 2002:a6b:92c4:: with SMTP id u187mr59442416iod.57.1609793731531;
 Mon, 04 Jan 2021 12:55:31 -0800 (PST)
MIME-Version: 1.0
References: <20210104204850.990966-1-natechancellor@gmail.com>
In-Reply-To: <20210104204850.990966-1-natechancellor@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 4 Jan 2021 21:55:20 +0100
Message-ID: <CA+icZUVe4AJoLWMqS3MEx700jcwDaJhw78tUgg8iD0dJvEmmYg@mail.gmail.com>
Subject: Re: [PATCH] powerpc: Handle .text.{hot,unlikely}.* in linker script
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HpvjmJGA;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d30
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Jan 4, 2021 at 9:49 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Commit eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO input
> sections") added ".text.unlikely.*" and ".text.hot.*" due to an LLVM
> change [1].
>
> After another LLVM change [2], these sections are seen in some PowerPC
> builds, where there is a orphan section warning then build failure:
>

Looks like you forgot to add your references/links to [1] and [2].

Might be good to mention...?

With CONFIG_LD_ORPHAN_WARN=y is enabled

- Sedat

> $ make -skj"$(nproc)" \
>        ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- LLVM=1 O=out \
>        distclean powernv_defconfig zImage.epapr
> ld.lld: warning: kernel/built-in.a(panic.o):(.text.unlikely.) is being placed in '.text.unlikely.'
> ...
> ld.lld: warning: address (0xc000000000009314) of section .text is not a multiple of alignment (256)
> ...
> ERROR: start_text address is c000000000009400, should be c000000000008000
> ERROR: try to enable LD_HEAD_STUB_CATCH config option
> ERROR: see comments in arch/powerpc/tools/head_check.sh
> ...
>
> Explicitly handle these sections like in the main linker script so
> there is no more build failure.
>
> Cc: stable@vger.kernel.org
> Fixes: 83a092cf95f2 ("powerpc: Link warning for orphan sections")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1218
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  arch/powerpc/kernel/vmlinux.lds.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
> index 0318ba436f34..8e0b1298bf19 100644
> --- a/arch/powerpc/kernel/vmlinux.lds.S
> +++ b/arch/powerpc/kernel/vmlinux.lds.S
> @@ -85,7 +85,7 @@ SECTIONS
>                 ALIGN_FUNCTION();
>  #endif
>                 /* careful! __ftr_alt_* sections need to be close to .text */
> -               *(.text.hot TEXT_MAIN .text.fixup .text.unlikely .fixup __ftr_alt_* .ref.text);
> +               *(.text.hot .text.hot.* TEXT_MAIN .text.fixup .text.unlikely .text.unlikely.* .fixup __ftr_alt_* .ref.text);
>  #ifdef CONFIG_PPC64
>                 *(.tramp.ftrace.text);
>  #endif
>
> base-commit: d8a4f20584d5906093a8fc6aa06622102a501095
> --
> 2.30.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104204850.990966-1-natechancellor%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVe4AJoLWMqS3MEx700jcwDaJhw78tUgg8iD0dJvEmmYg%40mail.gmail.com.
