Return-Path: <clang-built-linux+bncBDS5JPEL3IIRB4FZSH6AKGQEHSIH4IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4373628B717
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 15:41:05 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id n133sf2941727lfa.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 06:41:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602510064; cv=pass;
        d=google.com; s=arc-20160816;
        b=HasjwpNEM016bUPBSoRlMBDrCXkPu2Np80hryLakJuZYbOyCAG26oSjhcY0fug1tnb
         iJWM5tPYAzAFQxdmU+TVli5WY2RUkwRd+b44YwYVqxeQuAc0Pkx5+Ojwst94naLSEIPl
         6cvCnSAshiofJ/LTGgOIy/KO3CygN7wnBJIsIdLtjPWFB14m7EWxgp6iE5oMRIXEd2j0
         sYN/unHnbiU2Px+4TLW2BLXTm13RiG4tEPJkIHn2zdwH9VVwe7wJZOM341p4HW3IuIFJ
         5u4BoVTM7deWt6yQTZ28fA/mJ5McVt5nu6WrH59xSylX485nPXNvxI34HPLC7JeHICNu
         L1EA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=5MhaB7EUiwgRuNhR5hhFRcy7Kf45Eh/CHKYMqgS//z4=;
        b=G7K0xdwPDPSJgIg8T+zcxdzFoxiZByIr0yP34m1TmutagpahsBzA3cfrLhEkaI8c87
         9IXqnODPuYy57byg4dR62zqGwHX6Kzqsv3rR8zJiK3npIkHmP97EsdGrhZpCPuSOjgkA
         YeTPnOtNJnxC6LUUWagUfOmOYPO8Q04XAmLfDVqtJRDisaiuZW56IGNvqix4DptzlqOP
         gbZwuMtg/G8CK/71vSx258SvG2EPPKx6+4Mr03nQoS1s+7Me2vaLkk+WsGi6g1veG3ru
         D9FioAchKL/5h4J0VDh/n5OoSnEqm5eebt9J7R1OSZTIzRL0zA85swwtNgadA3XGupo5
         MtVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=myis63Jh;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5MhaB7EUiwgRuNhR5hhFRcy7Kf45Eh/CHKYMqgS//z4=;
        b=oazMlYDmFLjNjeaUBS8jBX8Dwtg4W4bp3hCUMYjUbkt1ffEFPQhwyBa38IHpLZ+SlX
         WD3UqvKo3x5o96CJBuXJgK7ZJXKUKobmH6mWvDhaxb8uNFnoMPI5Pax0+owjAVXPLOfd
         d0VFvIJJVDSPl5PW7WvEOuffDDX8+9lRNGhtdkVPlsDmM4QLezgaTGXPFlk/RYNq4brJ
         pI6I+AvrGYIeWgeYSwwYpjwAm8zAQ04tl1UsS4WKzRKDwEOFNiFBgZFqvNnngPmlvszv
         W+fJmC+Ycn3Ms8R2QB9H35PO9lwnc3AcXVJOppZbO96vH3wnIVSuSfAFUjW89h0v43Rq
         CG1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5MhaB7EUiwgRuNhR5hhFRcy7Kf45Eh/CHKYMqgS//z4=;
        b=qoJa0M5y0S7jUvMWrtFruAXFcgDOe1oQGSZm8LsRSrMocnxoMf9W11XFBQrHmANSpA
         th4pBV7JN5SPYjfK+KZ7jDv9uK/jIDoY/xiDQjogQzf77Y81Su9q9QMGO9pcz9Zp/rrT
         1P/BvVo7D2Qz7M1lcF1IOMjDZ1nRpPWfqJX6joD2Qrb/+xVgX6TmL3j5/qKr/M0vdpS4
         C2qZGsB17HB1jUqASDtf0lxrJb5T+HyJhIpo20nWTLAbIPoIx9X9wXuAIH72P9b4xoXQ
         RIKV/L46t7daJP/C3sGzQiLz6wZbcCmBl1QYjBCjQ2BtK5iv1ZsSlOnRAgQeVhJrJqGM
         2KLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5MhaB7EUiwgRuNhR5hhFRcy7Kf45Eh/CHKYMqgS//z4=;
        b=AN0L/w41tB8lWvw8Pysarbwzfgu/mYX1MlCSpPBIvuWnGnJ/FlQ9xiguo1TXkxq2Ap
         1+pXgZDrLjR6aGf4VHbNtipd0TB0PKGUCg0fbdVIXBp9NwrcopuIKA7INKT8EUlYthoL
         YnZ8HOOM1dZ1P7+TrOsmPtEcNxflLl/vKZXWEl8WHk2t2HoEotux4vxFlky7FXJj6z3z
         WgzsHYCPX06CbSU5hrSKiRFV3JEpC70/IJIaOroDBBcDhb++gtycBkpz6WZRtjdgDylE
         MCNLLu2KaoDkVb8oq8+RMqOnYFRJfyKlwkzeTdXWI/4UyVpkeCONmBvIBL6/LdqC1T+O
         xwYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sUpiXwv5VZ6m2pK7jq9xQquqlV4iHR/OMpIMF65cQl9ZuQLHV
	rEmqdCicaEKCMN213gtFLAk=
X-Google-Smtp-Source: ABdhPJxpOiro9lWDSHulQNVpPPpOmAjbYXhG9aqWTIgP/akedZm49Wwp+6KPQuFE8o8a7781FeSu0w==
X-Received: by 2002:a2e:b0cb:: with SMTP id g11mr11011830ljl.397.1602510064743;
        Mon, 12 Oct 2020 06:41:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ad43:: with SMTP id s3ls228230lfd.2.gmail; Mon, 12 Oct
 2020 06:41:03 -0700 (PDT)
X-Received: by 2002:a19:514:: with SMTP id 20mr7686887lff.512.1602510063525;
        Mon, 12 Oct 2020 06:41:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602510063; cv=none;
        d=google.com; s=arc-20160816;
        b=nlIyaLbbe5qMwaJiRzhfCttv+UW5yM09y41voFeYGqQKYmZdA0dsDZ9lEIbFy00a37
         39VAI9EJBSm+HcO9MqqQmHfdKwd5ZLXQrcwkGTJfGjSqpXisZaskG6ab4OJt2Pfj6aXd
         x92z0q/clnNqvK2eHyWy3A8gm3PqPXqpAYzmrw3vyPfgAmgJRbEiP8P8Di0oAV4gScWe
         F4xSe2+/1aaplX6R6nIDkFe+ftHQW3g3V3gHnVWf35qhd1dPOii+hMAP0XBsNGVIzPV6
         Dss5uARisvFsHHeKgOJPLYghBr1ivhn/ajhp0/nluI/hJNrC21nbl1deGDBo2CmEV4u+
         WmEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=IJUnRg3mPl7jkNIy9dsIVIo/IklmtiJHaWeguv2Wi6o=;
        b=mtz7kZWDgTOGhgCRdrDspBNs+m/fz3Q05RMurfprlk13anFhkCOXZeUMYX0ISStAxS
         Mr9EXUggY3KC+E0AWCMpNFzL1QLt8vinjNIxeKn0iJKuCZGYtw7Zuk0aCX6TiTvO1N0p
         ZE0BSqZWhoTMZvw/UiHlr+FKp7VISJr2oXCgT7Wsovgl4XC1kWaJaiE+hL1eP+kQqzrM
         l05mhSo8VyxLyJrY9KLKpu9aGoPtzhrd86Z6G2JLtImd0Agh6bb9M8YzpTpBTkG4aTag
         yz3ZLIqOv7im6SKZBluv+eO2V+MqHGQ9Kev5+W+hitLbJdnt7tXJtOGCFa2AcoqgSHF9
         DyeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=myis63Jh;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id f23si506317ljg.8.2020.10.12.06.41.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 06:41:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id g12so19233058wrp.10
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 06:41:03 -0700 (PDT)
X-Received: by 2002:adf:e80f:: with SMTP id o15mr28721128wrm.308.1602510062848;
        Mon, 12 Oct 2020 06:41:02 -0700 (PDT)
Received: from felia ([2001:16b8:2d57:fc00:8472:203c:3ecb:c442])
        by smtp.gmail.com with ESMTPSA id t5sm24754891wrb.21.2020.10.12.06.41.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 06:41:02 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Mon, 12 Oct 2020 15:40:54 +0200 (CEST)
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
Message-ID: <alpine.DEB.2.21.2010121537150.6487@felia>
References: <2b00e566-112c-5657-c10f-7f210d3eae93@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=myis63Jh;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::443
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
> If not working with fresh clone of linux-next, clean the srctree:
> make distclean
> make tools/clean
> 
> To test the dependency on execute bits, I tried building the 
> kernel after removing x-bits for all files in the repository.
> Removing execute bits:
> for i in $(find -executable -type f); do chmod -x $i; done
> 
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
> Changes:
> 1. Adds specific interpreters (in Kconfig) to invoke 
> scripts.
> 
> After this patch I could successfully do a kernel build 
> without any errors.
> 
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

Ujjwal, I suggest that you continue to wait if you get any feedback from 
Masahiro-san within the next two weeks (although the merge window) and if
not, try to rebase to the the next rc1 and resend this patchset with 
Nathan's feedback tags added.

The merge window is busy time for maintainers; in the meantime, you might
look into if the build target 'make tools/clean' works on the current 
release and if there are fixes getting merged that fix that.

Lukas

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.DEB.2.21.2010121537150.6487%40felia.
