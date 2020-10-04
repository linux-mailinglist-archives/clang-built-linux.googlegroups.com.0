Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBAHC4X5QKGQE3X4VBGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id B44DA28293F
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Oct 2020 08:51:45 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id l22sf554692lji.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Oct 2020 23:51:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601794305; cv=pass;
        d=google.com; s=arc-20160816;
        b=OgqtdXxnq9y821s9SSL28xKBkL38sAgZtAiKFu7E3y2krfiwYr9psEIDkKmHhOqDL9
         NFsKXrZWUoSLFFvyWj5bakpVhlMFIGZrhfECawNPzWnjZI+Re209bzy0yqdV4S5iTWOr
         lD4m5InYnMDe4zF8LrKTeys+54NgFGJQp9S1VS3nCN4d6J41dI8oj3BebcInR3iMko30
         zhA6QrrwzcCKVv9rBfipqsuX1zJZy57FU7vxDnffTOOxK4GF/XheZJoRhLoxUayZN20H
         BjdBqWggJ5Qejuee6h6UHD57WMnDzDdtQNiFis9gU/cIkoLG5654iPSNO55RB4WpAstp
         jBGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=V7dbuN1m0n3XtMTd3HvPjhjJ4tW8kBrQ7r16bQel+uk=;
        b=N5RQk/IbyexBHnTwbTcXtu7KTyWshxBlBtNa79cMwq2ePMx5U6UGEeTPUxkyhTeKtN
         uH5oFJ15i0xmanuu8om3Lqe4dxKoeJe76Z6JyEV8r5oHCEuuL52GgSd7UUZhcDPZxplx
         ARukIuEpGQTidyTpJPqZpgRsMA2km9nPTAuQtAcbwV8f5KnesCdUVr72T6NMjHh4tNp1
         GcFbAZrwBfl+3aUSNAFUCzuA/5dLkQKPDhBea82S7DKimyl/AZWBROcsY3LAFQkXcIvf
         x+ffeH2V5/N8SANSx8QcSk5XTDcjELtImxSEg3opN04vGnflWlVY9dIQW5Z4QbgMA3Eh
         uvew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hH6CZfjm;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V7dbuN1m0n3XtMTd3HvPjhjJ4tW8kBrQ7r16bQel+uk=;
        b=XoXMSommB6WD6vfofZXqcJmU0xM9bIJVY5550ct6KFwy893uLpWHF4uCtl5Qt0mt8p
         waN8P+QRRx4jCvcvEelTDT/N0bztzZrqUAFqXtx+gkz/4OaFFBATfCCA2KNAyjD9/mJg
         9ffTAO/W7ILAqF3iRsr4sCcOmBto1zShwySbEJz8SmaRPFCOX+xKnfo17aBrAJ6xepuB
         lzLgLzvSiO/TDRsPSpvOAyFNN8ymWBjdZMdI36oVdrekYDVuLMbX5Xb8z/YaGEh8p4Vn
         gUJs/NsOsd3amyQYlhQnjSTD3gFLhX4e57fnQcrfQZsMK5UW+fVkdC1efWjCKM6XRTGa
         9R+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V7dbuN1m0n3XtMTd3HvPjhjJ4tW8kBrQ7r16bQel+uk=;
        b=fP+kQz2vyWwKvJ2S8Lq1J2+jPkIsnf+NSh20Tulx3QZGfmoMtvXfThmbasYz3ACsS1
         qa5XjBENuhgLv6k32cxRCss74mWoa3i7bEkDtfgyN9lYc3TN6pn8B1i1Kkynrn0xP3qg
         kBPlqCIEKbB2+ndHrFfaf/hHxQHOrxzDtwEz9hIA9g0pkAspx57Z7GfF+oO6iWkm7FMi
         uzblfkl+KRxO+bkaUTNr6xJ1eXPwvRB9p5f6uKwwHU6+nQh2FW6Zv3drdFJJo4BV38t/
         Pi2471z0UyQs3hPjBA98GT1krkOi/dH00ZsMY5KT+C8ExqXrM0kHAp8q6JPb55inN8U/
         suew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V7dbuN1m0n3XtMTd3HvPjhjJ4tW8kBrQ7r16bQel+uk=;
        b=mYLiI9tgkB02p5xOqlA43Gvr8IGokK9MfbMe1osPGqX4KUGgxP/wIsw3Qipy87Nd2U
         L8Hgz0g1bWhac7eYCah1puJ/zUJoSh8IOmNQt17tVUAUavWM28vlQn9sD9hqYyhxm68W
         hY37OHiv8QUUU8d6GERim6+71GLkUZWVJqpcU6v/NrbhGA/b5CarDrQCFsSGwD7eARc/
         JiMLop+p3AYRrqPaXp3SBvDaJ7ocs1R4VF5Eqo1D5XaBVAqWIgynbNg4mIOG/qD6YEcz
         AfRofaRQ3EtOcoAFdibRX3W40bLHcuSLqCCB80oL3WNZCfLTJot0vltLN8iO+73brceA
         weJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OGL0UIxFbhrvpcCNoQlQvUNM7Fmrk2X8dwPBJaFKNYDr2TDIv
	hoBH/VyjIXC6zaCbFyLT3eg=
X-Google-Smtp-Source: ABdhPJyZ4VvtBhUiXb4QNOvDNHwA+b/ju05xYqap43ldxyxBEGcRfSW1Zw1uIi2aa0VXKxZ8TcCDCQ==
X-Received: by 2002:a19:8c4a:: with SMTP id i10mr3859780lfj.566.1601794305141;
        Sat, 03 Oct 2020 23:51:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7c08:: with SMTP id x8ls640465ljc.6.gmail; Sat, 03 Oct
 2020 23:51:43 -0700 (PDT)
X-Received: by 2002:a2e:83d7:: with SMTP id s23mr2732247ljh.340.1601794303903;
        Sat, 03 Oct 2020 23:51:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601794303; cv=none;
        d=google.com; s=arc-20160816;
        b=FPzlO2mluXa2XhSM0CPGJb+2saQUJE2G/su/n56gYKuloTFwsCc8ao0l311rXMyqqO
         levpiJ9rTsWUZp2U+80fwtGiq/3hYDj6/mJWgTxLKWpf05AhnTj98Rqfc2ZdjrMOahG4
         8vJYiU1dQ/2C4JE1Qgkj3MKvPF6Pcf2n/B0Zrlj4ppAEB8giomR9uD5/yn19e2+vvPAa
         YRTKcIHVAnPP9qO3pI2eEUksQ8y+GAgT5er3/howmymEfea6idAXoqxKaHcCLJK33UJp
         UMeSrjEZrcX+GyCDVosQw3AevyTL/5yIX05/GRxcrX86Aeyivy/RGpZ3PtivOcw/z61K
         U25A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=lNHluM8woR+e77P0E5MEPND7G5EihPQXGymK5h4QF7U=;
        b=c6dKDn8jWiXOQkLSKXP0/FKOgg2vHRmOVM0wVzh9tZhFdPm+lt9AT18/HDR533Z5Y8
         lkXr7UeWWBP/XhMf92rAD7PRMcLZaDd2owvoGbdGc750HP7s39i05KICfCYP6sghr2kY
         PsEA1R7npQTEBbnsmuJ4FQZE9mbs8v97y+iQTeq9PPmX5CaU9eCNRfXNrA8bY5dFKE7A
         s6LpqJdB96Fxwzt4TExRINaVf4ejC1OWjVneMqZ0VIzaKzykcdxhmzaBN7Zewu0sQE9e
         2V9xMWiwrpwepB6rOxFg0G8UwANdTM/az+L9/Hnuvu5KkMWCmjuosOiLj9Of4UzVLXCe
         of2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hH6CZfjm;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com. [2a00:1450:4864:20::644])
        by gmr-mx.google.com with ESMTPS id y17si204094lfg.2.2020.10.03.23.51.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 23:51:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644 as permitted sender) client-ip=2a00:1450:4864:20::644;
Received: by mail-ej1-x644.google.com with SMTP id i26so7348164ejb.12
        for <clang-built-linux@googlegroups.com>; Sat, 03 Oct 2020 23:51:43 -0700 (PDT)
X-Received: by 2002:a17:906:fa8a:: with SMTP id lt10mr9442973ejb.307.1601794303357;
        Sat, 03 Oct 2020 23:51:43 -0700 (PDT)
Received: from felia ([2001:16b8:2d26:f700:8d52:b46b:d125:e62a])
        by smtp.gmail.com with ESMTPSA id w13sm2742288eja.7.2020.10.03.23.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2020 23:51:42 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Sun, 4 Oct 2020 08:51:36 +0200 (CEST)
X-X-Sender: lukas@felia
To: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
cc: Masahiro Yamada <masahiroy@kernel.org>, 
    Michal Marek <michal.lkml@markovi.net>, 
    Andrew Morton <akpm@linux-foundation.org>, 
    Kees Cook <keescook@chromium.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org, 
    linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
    linux-ia64@vger.kernel.org, clang-built-linux@googlegroups.com, 
    linux-kernel-mentees@lists.linuxfoundation.org
Subject: Re: [PATCH RFC 0/2] use interpreters to invoke scripts
In-Reply-To: <2b00e566-112c-5657-c10f-7f210d3eae93@gmail.com>
Message-ID: <alpine.DEB.2.21.2010040809230.28226@felia>
References: <2b00e566-112c-5657-c10f-7f210d3eae93@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hH6CZfjm;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::644
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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



On Sat, 3 Oct 2020, Ujjwal Kumar wrote:

> This patch series aims at removing the dependency on execute 
> bit of the scripts in the kbuild system.
>

Ujjwal, your setup to send out the patch series created three unrelated 
emails rather than the default way, i.e., to have one cover letter 
and the patches in reply to the cover letter.

You can see the difference here:

https://lore.kernel.org/linux-kbuild/

The presentation of your patch series looks different than the other 
patch series on the list. Use the linux-kernel-mentees list for testing 
your setup.

For this version of the patch series, I guess it is okay; but this set up 
right for the next patch series.
 
> If not working with fresh clone of linux-next, clean the srctree:
> make distclean
> make tools/clean
>

I hit an unrelated issue on next-20201002 that make tools/clean fails.
Other than that, this is all good.
 
> To test the dependency on execute bits, I tried building the 
> kernel after removing x-bits for all files in the repository.
> Removing execute bits:
> for i in $(find -executable -type f); do chmod -x $i; done
>

Okay, I did that.
 
> Any attempts to configure (or build) the kernel fail because of 
> 'Permission denied' on scripts with the following error:
> $ make allmodconfig
> sh: ./scripts/gcc-version.sh: Permission denied
> init/Kconfig:34: syntax error
> init/Kconfig:33: invalid statement
> init/Kconfig:34: invalid statement
> sh: ./scripts/ld-version.sh: Permission denied
> init/Kconfig:39: syntax error
> init/Kconfig:38: invalid statement
> sh: ./scripts/clang-version.sh: Permission denied
> init/Kconfig:49: syntax error
> init/Kconfig:48: invalid statement
> make[1]: *** [scripts/kconfig/Makefile:71: allmodconfig] Error 1
> make: *** [Makefile:606: allmodconfig] Error 2
>

I can confirm that these errors are reported on next-20201002.
 
> Changes:
> 1. Adds specific interpreters (in Kconfig) to invoke 
> scripts.
> 
> After this patch I could successfully do a kernel build 
> without any errors.
>

With this first patch, I could then successfully do:

make allmodconfig && make

So far, so good. I did check the first patch.

Lukas

> 2. Again, adds specific interpreters to other parts of 
> kbuild system.
> 
> I could successfully perform the following make targets after 
> applying the PATCH 2/2:
> make headerdep
> make kselftest-merge
> make rpm-pkg
> make perf-tar-src-pkg
> make ARCH=ia64 defconfig
> ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make prepare
> 
> Following changes in PATCH 2/2 are not yet tested:
> arch/arm64/kernel/vdso32/Makefile
> arch/nds32/kernel/vdso/Makefile
> scripts/Makefile.build
> 
> Ujjwal Kumar (2):
>   kconfig: use interpreters to invoke scripts
>   kbuild: use interpreters to invoke scripts
> 
>  Makefile                          |  4 ++--
>  arch/arm64/kernel/vdso/Makefile   |  2 +-
>  arch/arm64/kernel/vdso32/Makefile |  2 +-
>  arch/ia64/Makefile                |  4 ++--
>  arch/nds32/kernel/vdso/Makefile   |  2 +-
>  init/Kconfig                      | 16 ++++++++--------
>  scripts/Makefile.build            |  2 +-
>  scripts/Makefile.package          |  4 ++--
>  8 files changed, 18 insertions(+), 18 deletions(-)
> 
> -- 
> 2.26.2
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2010040809230.28226%40felia.
