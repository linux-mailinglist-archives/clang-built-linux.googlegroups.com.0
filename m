Return-Path: <clang-built-linux+bncBCLI747UVAFRBJ7M4TZQKGQEYBQCKCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id D1401190106
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 23:20:24 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id c8sf11619051oib.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 15:20:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585002023; cv=pass;
        d=google.com; s=arc-20160816;
        b=W1DxCTXy3l6Djg5fj9JOa/B1Iz+KgfU4aqChy9LVBftqDiuIJAqpGGn30I3Jz07xmU
         uHV9nH4NYsMd6F+6lZOoCmdJozqBUnG+QHo8DaQl38PpqHks1xPH+d7A+gl+gqAd4H2h
         S5jRz9U3I6xO6Z2WwFhWnXCft3nmOTKyQUVGhpHaK9igBl3NvyUd65t3OFMtHGs3uL8n
         5P47P7y9Y3ji/m8z8rnBg1rrZ2oxHMa/EHDYllR2+7bMdVtTilUCudeTGhDoIBlHfWsI
         nzBseY0U9CVu5ljjJYxV4h5FXt0dkyQ0UCQCzodf38iotnuVIwqztMVa5Rc6xZlChu1C
         ESKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Uku0KSMGnpxRyEM16ddKnWiVqQIpC8/Vy30MeaO+u+4=;
        b=ux26AHWc1oizN2yfA6TriE/HS5G1SNjoMwYjzMdKXxZxRL8GpgVjpAG/nfYciPK/ZK
         Ka+WIjQaS+hlGBAHvItw/oSjuUFDgQn1sPIBZitPGoLFoJrOZtmdcrjO5qiobdKl3YmN
         TGm76lUCnJaq5L1kTtdrziZOWy7PPSimrO2wPvnjy++EWPP4s6GT5fB6NK6JyjQP6p3b
         l7a+ZXxrZ7Lh8iz3sFHwOmalrAwh9Rj4huVNeHbGWvlyzzDhHWEbFOCBEzTn6wVcaZki
         matCT9gNr9WyzHK+4QzP/9h21i86o2ZNfVovUFVRi0vokZvjJas71TGZSWeVGGtVBshC
         gdtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=s0aD2iU5;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uku0KSMGnpxRyEM16ddKnWiVqQIpC8/Vy30MeaO+u+4=;
        b=o6wxG7ita1MBOVNSGxJ63s+z1mt7XZEtVK9a/6owLLhGlKX6rNhjav3YKeubCZo9Ip
         hVsWs5FE0gjzoqklZUCQbGtDIO1hoYCJHtn/FtKkB19+j4bFQ9L9yzYGvlNOcbyPqq2y
         q9KYNa+44wnS1izzbV93D1zLfCicawbm8UCsLD6Vk2WOwG5+ER0iRmV1iT+1GnQ2oD46
         0UtanQq4/iXl186tx0MhkyqPAvH4oR5KzcC5qONo5XL0oSTDbIMgKvSijlVZDawCyk3S
         9zp6ZJ1Ens6sfzfRwW6R3FD4ARA7mDgYFS2wq8xiPXDpE27kf1qSePYGRLzntJUVLBt8
         /z4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uku0KSMGnpxRyEM16ddKnWiVqQIpC8/Vy30MeaO+u+4=;
        b=BR1idSqmKkso6J9hhOdgryfwzmZs0d8ZeopQi7dL7628uES1YBGXTVTp2XEnGG7cN3
         wxSvqq6JZYFWOaFcmxlB9cfN6NAn4trHnuTmthNs9iBL9Lv/PJAD6Cj41MQdJqndVwuE
         N3qTRU1lgYuUM0uKvQbNkYL3zznwzqUTxd0QdWWfW0JUZZtkstGTJ4m3078PQmsOKL5h
         Tzjx8inrMcdoxzV7EaPjq8xbfim40sHZJ/dHl5EVjUUtEDcpC+cmdnEwypL3uhw3M2/D
         RnFdZPcMPOMds9dH+E0qO3ELWl5z9J9I4PR9gm5RiLGlB+oLjm28Y7Vfttr/+nlDT3FJ
         aqxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0lLNARnzAcdDZj6TQTTk/GHuY6PFY16rnhEh7edugsa7sMbYw1
	CYfiZcZ7U8PY7FK2tKXIV1A=
X-Google-Smtp-Source: ADFU+vsatr87Q78/8W59AeCBtNAA7XUm0EgxLUEkslpD6QM6warYLTA0YJgmlx27MJQeXGyBKGG7ug==
X-Received: by 2002:a05:6830:1d4f:: with SMTP id p15mr18658063oth.38.1585002023792;
        Mon, 23 Mar 2020 15:20:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ec0a:: with SMTP id k10ls1152423oih.8.gmail; Mon, 23 Mar
 2020 15:20:23 -0700 (PDT)
X-Received: by 2002:aca:4c1:: with SMTP id 184mr1270824oie.76.1585002023457;
        Mon, 23 Mar 2020 15:20:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585002023; cv=none;
        d=google.com; s=arc-20160816;
        b=pVd+A8gkvim1AHNBFGGmSmvXPap4EjMB/F03HxhobF6aUoroFVLy71kTDuYR112QET
         e97AZYuuX4W7k4j5lolO+fO5vrMHep/ctRGu68QrkEuK+1ZzWxDqEmQ79a0ycOAR6pEH
         ulhvU98myXAwJ1LivnMQbbH7aoTecCIbkbY7KDg895yX/+TEuQx1X06N3VTRUmTnfNjc
         RfmjHCCuZBRzuWwFHzNA0flWDz/lqsGM6f+ezMXiBTJ3iVfFpj3MkWwHJXHFTcEN7qqp
         WwWCsMfHmS65Bxp7o2eRKIdMd9oFFNDvKyHia997kwjGwMTWSuMlauMq5D76AeAhocBg
         lwYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1EhbzYwK91QgR5e3ifwXFHT2QHL7HBuUUYuTTeDeIfU=;
        b=y2+3y4wo0fm8nacT5DJcwWmny7XNT7Be4UccR2g8CGoyziOppYyipetp0cmSs/2sWP
         fDfchjhRAjps3bmVwt1l+Aef6r92S46ILGSDgTrzfL7C+mP4G2sAipY2VkKD3UkuQn9X
         rivimggvRrLhGgz7iCsuw1pLUjuMJOCxYAww5NX8YnNFdg0ZRkvghophJ+tQpYQoeBD3
         UNfBC6dRjADHE2wffrzY6Pn4d/P4rbeHTkN0Fx5ZSAX5L4ZgGme+GNwSXgeL0gG258P+
         N2odlxZXUV4RhnyQtsTTJq+pxmstDODfAAoYe4j8bUbR6KRjQVoO/Mj9xNznhVKLcadD
         jaVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=s0aD2iU5;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id n5si563315otf.3.2020.03.23.15.20.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 23 Mar 2020 15:20:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 548ea022
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 22:13:18 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 787baf30 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Mon, 23 Mar 2020 22:13:18 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id m15so11023074iob.5
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 15:20:21 -0700 (PDT)
X-Received: by 2002:a05:6638:52a:: with SMTP id j10mr1438090jar.36.1585002020839;
 Mon, 23 Mar 2020 15:20:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200323215732.13339-1-masahiroy@kernel.org>
In-Reply-To: <20200323215732.13339-1-masahiroy@kernel.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 23 Mar 2020 16:20:10 -0600
X-Gmail-Original-Message-ID: <CAHmME9qYLYHsfV8S3WVV8x52tvqJNSarfgrXVm0oBsHD1GinCw@mail.gmail.com>
Message-ID: <CAHmME9qYLYHsfV8S3WVV8x52tvqJNSarfgrXVm0oBsHD1GinCw@mail.gmail.com>
Subject: Re: [PATCH] kconfig: allow to pass optional flag into as-instr macro
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=s0aD2iU5;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Mon, Mar 23, 2020 at 3:58 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> Commit 42d519e3d0c0 ("kbuild: Add support for 'as-instr' to be used in
> Kconfig files") introduced the Kconfig variant of as-instr.
>
> It is currently used in arch/arm64/Kconfig.
>
> arm and arm64 are simple cases because they are separated by directory,
> and GCC also provides a single architecture.
>
> Such architectures as x86, powerpc, sparc, etc. support both 32 and
> 64 bit kernel in the unified arch directory, and GCC can be biarch.
> On such architectures, Kbuild passes -m32 / -m64 flag (or a proper
> target triple for Clang) to select the target machine bit.
>
> This commit adds the second parameter to as-instr so you can optionally
> pass a compiler flag to evaluate the instruction with.
>
> One example usage of this is for the conversion of the following code
> in arch/x86/Makefile:
>
>   adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
>
> This instruction code should be evaluated by the 64-bit assembler
> (r10 is a 64-bit register).
>
> If you use compiler that defaults to 32-bit for building the 64-bit
> kernel, -m64 should be passed to invoke the 64-bit assembler.
>
>   config AS_ADX
>           def_bool $(as-instr,adox %r10$(comma)%r10,$(m64-flags))
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  scripts/Kconfig.include | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index 496d11c92c97..9b8c98168ba9 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -31,9 +31,10 @@ cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -S -x c /dev/null -o /de
>  # Return y if the linker supports <flag>, n otherwise
>  ld-option = $(success,$(LD) -v $(1))
>
> -# $(as-instr,<instr>)
> +# $(as-instr,<instr>,[<flag>])
>  # Return y if the assembler supports <instr>, n otherwise
> -as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler -o /dev/null -)
> +# You can pass optional <flag> to evaluate <instr> with
> +as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) $(2) -c -x assembler -o /dev/null -)
>
>  # check if $(CC) and $(LD) exist
>  $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
> --
> 2.17.1

This looks fine to me, and might be useful down the line in the
future. But for the ADX situation, I wound up just going with the
bicompatible register:

https://git.zx2c4.com/linux-dev/commit/?h=jd/kconfig-assembler-support&id=c81d9c743d058ef9013fbf8661d071ac9d574472

+# binutils >= 2.23
+config AS_ADX
+ def_bool $(as-instr,adox %eax$(comma)%eax)

This seems to work. But it also doesn't matter much, as it gets
removed anyway during the binutils 2.23 bump:

https://git.zx2c4.com/linux-dev/commit/?h=jd/kconfig-assembler-support&id=c95d6f2ce88722eeb86d54f206bd7599bdc51e1d

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9qYLYHsfV8S3WVV8x52tvqJNSarfgrXVm0oBsHD1GinCw%40mail.gmail.com.
