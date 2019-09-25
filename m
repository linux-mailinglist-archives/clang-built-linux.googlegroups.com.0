Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBB676VTWAKGQEGKL3OAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AB8BDC10
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 12:20:43 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id l15sf1453757lje.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Sep 2019 03:20:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569406843; cv=pass;
        d=google.com; s=arc-20160816;
        b=mN/HMtnhuwKSSkPiTvK6BNr5eC+7tN8h4jZHSoOee/4YTHdfw3FYXsjyS7hnQyHDve
         bA62ke000i3vpoXxh68QmeXqYYfeMGPUvV34yz3jr6l/XxvGNGveTeUFXkb4Ovve2e3d
         dtFkZWjqbvkh0qdPOfcvvGuTipp1AzgbCYNlt8J35VaZN7VJcQ8SXad3eCwpHFBQ/0vZ
         s8EQ3rZrn2garOhFt33iRhXHdiD8daOVeDu/awCUvIq0HZQFdt8WxPTL6BV2YSmlphF7
         Kvs+ZdeWOEbo5522qIxpwvR1cDQEjcAGl94O4ahuZX9F9vBgApQOVz78PCQ/VzUd/R8A
         2LqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=NExS6QeUk5JGR97QaN6v23FTenhP+C9EwpnpR4kVApQ=;
        b=fIUjsi7x7sDbknynm5XFX34LnDIviIAw2nFBd00rLBtesYMHbHSmWyVeACtYcZcWae
         3bAYelYWSVdzuJMT2diuS9HuwhIi62cOIH0xIFv+89W1goyFNq1c3itCZ9kexv4RQ5DM
         oRWIQrZTHu43vwPnTFLzdFZGMx18IoVyydWvhnBrf2j7+/RGbac7C4eAlK++0Kuy9nWI
         yDG43XXaD5SOlVI7+5NmKIkq/HR9lB26sonJWtoSNgHgzj/jRQxyvibI72yXc3FlGfQn
         BSNQQyGoIk89Z60e3kRNbmC/3bdWaELpQu+V56eFP6VkXCG0dCa8GxrtW7YfWqGkwYaz
         WWnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=dNO2X37U;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NExS6QeUk5JGR97QaN6v23FTenhP+C9EwpnpR4kVApQ=;
        b=qnWyzSRK0Pylqq8X9J0NzzwAENjcc6SPVO4J4BKmpyHo/feSebC2c8c7Gu681hnpq8
         Uif1UTYy8yhKxkMOPlCCxhZGjp8SfGA9SiYQimp1ekZnHL4TykbDoQd6wfGcBoWVj/ys
         Yi8yYnmAKAupoBUhY6zbTrCarBJqzsrkYxxNQkhle/Ec16dnOryjOruk0v8B/ohds52V
         NwWEenfaqMyJ3jGTOFh+86Xy69Vo9AAdHoqCK8MbRRH8JbpZhgsHAJmacEZfyYZoMh5F
         eEj2Aly1GV6mGtyo38q01W1PRhW5yhome1Qf5zGxgvZC9XMOvNjrX7Rm6UEQJ4tYjUZB
         OONA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NExS6QeUk5JGR97QaN6v23FTenhP+C9EwpnpR4kVApQ=;
        b=jYaZZVDMaVT0Q/1zMLSBT/VdmsPGfN0/CzgYynJ5ul/O965ApJ7IbyEuryzej6d2Ku
         MLGRNmmDYs6HJhaZPZAumMxAA4JtvQ0TKhk6/I34ktDFhRbTztWU5CrHcuC7QdPMsn4a
         iwsYthBKocgJUi0GNWtRFYcjcQSFyNLLZnOm/dAO8SEuEKfeOQHLa4KG8W1HiRubZnYo
         7NL/E8ePEe4nquTTMfta1XbiGOFBTwOb/gGMlpn9CeHlBtJbl3psyr3AI/JTcAHbB7Qh
         UMyDWVyVY/SROCGGT/+nZzG7EpmLBaWUBRJiN59JxZk0sRB88eQZDBXW77DyuRKRQPgH
         k04Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW208JeZO8LiXT/8nG2YShba5/Rr9wEhR9iuDe0RmGzrIyK0n1G
	qpFpzOEP7goo0DTiXicxg4w=
X-Google-Smtp-Source: APXvYqwB/klpYz7UQTd4IeKWl5wDy2ZRHpqSeOnHzbC6AveOo9WAXDoe318FuKrkWpDJFE7UselNOQ==
X-Received: by 2002:a2e:2953:: with SMTP id u80mr5749660lje.233.1569406843529;
        Wed, 25 Sep 2019 03:20:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:428b:: with SMTP id p133ls578969lfa.6.gmail; Wed, 25 Sep
 2019 03:20:43 -0700 (PDT)
X-Received: by 2002:a19:5516:: with SMTP id n22mr5714638lfe.49.1569406843027;
        Wed, 25 Sep 2019 03:20:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569406843; cv=none;
        d=google.com; s=arc-20160816;
        b=rQHEFBuSIMbsuLfkzkqBbeCZCB8YxkfwkhDFdPof1CISJfTocFOG2NVbGnQGjEA2TN
         +EU605PLql83ipJq1j1sAtU4h0KFdY92fbMuMyB19zZWThA4OArBTGtMaxIcB+zJ1XO5
         oULwSlBT0pUuppZqLplXZwkVc3hIVUOr0DI4ORtDmxfS/elqUHkbA0At+ghaGNM5PMdz
         4NYRAa5Rg1YndUQFimaFhJzMt+dMTIEr6IL67DWi1xjo2JWsI7dziKN3ey/bQD9LMcxc
         FxBU1vvdjrPbGi1hY8PjOAPS34uymT9Njeh8yCHJ5bbmwWkSQptG39GoTvwKe3+sf7JK
         Od/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+GlOX/u6f/9D2FLStZCA+6bXQBeQJozAN6rEZmPgIBQ=;
        b=dhy6xZ7GfUExBH+FxauVLfQCAueZKOjnOzGkc+yI0AVhvM8IBNtY1sGPdXAKt1CpTR
         ESQSJpWohm1mgAl2Z63em1k4flbzzTI7uTPxEFVsffxF83K/6MY25aZJiGH2MN1G1DY7
         8zjjns0sG6dDva/Ek+oIbLKMbUuKl590x13CJ/DagC9HY0E7/llDaQuMaGOI0qui+jJY
         QFHw9fzrNb64LNHzl9QSLvwkPXjFgpH5jyFoVCAFFvzBudX3lqCdTSAFtmFAZ477ybaO
         4BaOxAwQbVdgLvosu3Pqxt9BlVUv2aDrxjnfz0yZENsu9S2bpAWfSk2iPuMzvd8MlPue
         7jhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=dNO2X37U;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id c25si131699lji.2.2019.09.25.03.20.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Sep 2019 03:20:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300EC2F0BA10005B38B137F30EC85.dip0.t-ipconnect.de [IPv6:2003:ec:2f0b:a100:5b3:8b13:7f30:ec85])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 055581EC08B1;
	Wed, 25 Sep 2019 12:20:40 +0200 (CEST)
Date: Wed, 25 Sep 2019 12:20:41 +0200
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Jarkko Sakkinen <jarkko.sakkinen@intel.com>
Cc: tglx@linutronix.de, mingo@redhat.com,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Tri Vo <trong@android.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Rob Herring <robh@kernel.org>,
	George Rimar <grimar@accesssoftek.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] x86, realmode: explicitly set entry via command line
Message-ID: <20190925102041.GB3891@zn.tnic>
References: <CAKwvOdmFqPSyeKn-0th_ca9B3QU63G__kEJ=X0tfjhE+1_p=FQ@mail.gmail.com>
 <20190924193310.132104-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190924193310.132104-1-ndesaulniers@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=dNO2X37U;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

+ some more people who did the unified realmode thing.

On Tue, Sep 24, 2019 at 12:33:08PM -0700, Nick Desaulniers wrote:
> Linking with ld.lld via $ make LD=ld.lld produces the warning:
> ld.lld: warning: cannot find entry symbol _start; defaulting to 0x1000
> 
> Linking with ld.bfd shows the default entry is 0x1000:
> $ readelf -h arch/x86/realmode/rm/realmode.elf | grep Entry
>   Entry point address:               0x1000
> 
> While ld.lld is being pedantic, just set the entry point explicitly,
> instead of depending on the implicit default.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/216
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * Use command line flag, rather than linker script, as ld.bfd produces a
>   syntax error for `ENTRY(0x1000)` but is happy with `-e 0x1000`
> 
>  arch/x86/realmode/rm/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/x86/realmode/rm/Makefile b/arch/x86/realmode/rm/Makefile
> index f60501a384f9..338a00c5257f 100644
> --- a/arch/x86/realmode/rm/Makefile
> +++ b/arch/x86/realmode/rm/Makefile
> @@ -46,7 +46,7 @@ $(obj)/pasyms.h: $(REALMODE_OBJS) FORCE
>  targets += realmode.lds
>  $(obj)/realmode.lds: $(obj)/pasyms.h
>  
> -LDFLAGS_realmode.elf := -m elf_i386 --emit-relocs -T
> +LDFLAGS_realmode.elf := -m elf_i386 --emit-relocs -e 0x1000 -T

So looking at arch/x86/realmode/rm/realmode.lds.S: what's stopping
people from adding more sections before the first

. = ALIGN(PAGE_SIZE);

which, with enough bytes to go above the first 4K, would cause that
alignment to go to 0x2000 and then your hardcoded address would be
wrong, all of a sudden.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190925102041.GB3891%40zn.tnic.
