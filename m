Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB65NRSEAMGQERLKVETQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4753DADFC
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 23:00:44 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id f10-20020a6b620a0000b02904e5ab8bdc6csf4092106iog.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 14:00:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627592443; cv=pass;
        d=google.com; s=arc-20160816;
        b=PJ6EpSgXZwkoHntuVwrJglBJkW5X48PBmviCO1tv56rNBinFEh4gIFw7pV6TtuQyli
         C+JMMeUptTrdEMl9xA9PYyovHkEgUzDkA2ZV1TNwxKhX0UWxPzpd5n0azOhQ7sRMKlSD
         xKxFKpQIYHNGyCRhBlw9xiM6Bs81b1etHL/Q0ZuzhhXjPjzCSp/spk5ssijGPAiD5+cS
         FvOnxdQQF6e7cKafviuwpgHalg8i/Th2PprcsteiOW2vvQj9bXc3P+Hc6LVA5Zyx0SD7
         A+1YEduUL6DKO9miTj9a3Z7CmzZlA27EYu3ntRA6HKpRo+VNvAB489Nb4Xy0pImWUIfK
         4j3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=SOM1T825oLx/PH1PvBVFgaohlDpz02GgHPngS9Hs7fI=;
        b=03G0RBV2X0ly0sfgwYugHwoH8xOkNCYFBRDggF6ZDTkIPwaKzE6x2GiYKQBJ+L4/T8
         zQPl2SUuQjXABbLTxCnYvBzX9OasQ2cWO0Xwjl5MHlVsz2qfNWORsP1xqi1dOrSRgROM
         xtc0xTO9gdOVPjsxtD3jEA5FcoHB0JB/nVwP4zklexCPCmcvpKbXWGFK4hAggVbrzwVn
         IDrnt8LY9Nrujk73azMlFBgHwEm+O3XzXn5LH92HKn2EnrbSEt2H/8WhMyyV867Dj78t
         9B6m81dKALrPalVUc5dbl0kfehTT0s0byjDwJKOmTnXFecMl7NSecUamcL5L3M66AF1s
         md2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AaP0k8yO;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SOM1T825oLx/PH1PvBVFgaohlDpz02GgHPngS9Hs7fI=;
        b=fCkrmcQe/150zDO42dsgxYon1wENA2GrqBOCQzXUtu3q3mB+6zazJy1bvRjod60pX+
         ncfDWKQXHsaS5kyjAWrLkw9pHNFXu+bzzqeZLwhlpMeEF5EaVz56RY5+VwsDGgPrPP4d
         4yd0AnQGp4W5qBIe5wrfjT9EfRo0LaAypTc2e6CsCq7G0zy0fgTx1MoZPW0dHi9ov4nu
         vOcYgdRwRPw3eP5oP3F84UYPejPF5M9qPwVHkmagR+ut/Til3qApWtBRssPYQBeD06xs
         Yu1eTSlc7xLe2Sx1NsuaFeWKouiqAmi8AUk6ZCGVcquuk/SZ9c00TPaCPva9HjUtDCDK
         7UGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SOM1T825oLx/PH1PvBVFgaohlDpz02GgHPngS9Hs7fI=;
        b=nWqRN1GR9b+UDJFx/rDADjD6p3fTtMU7zG8MbbJsUVAAf0I8NhVzZshKvOJFMPTVn8
         cxdx4rh2s8zzMp3qydwcByrcCbZqZVSyn7F5yabr805wkBKo/GbF1k/o86IBGo+umEo8
         Cnu+D6XFdt2iQWXgSqGHdzJTvON5Tp6AdfZ7iU4P/6ZqaQI/Rz5f07CF602wlkT5IsK0
         D/8BsUsCZ1t0j/MQqQzDYXxtyGofed+w0ucsmkrqUsNRcgfrMScD6SUU/BYqBZhJjELe
         y9/giK8Rs6/HipKAWRfPv+d5EZ6feV6/e3xdAV/ng+nDilfCw/d+oA4iYDMgzkBvHsjJ
         mByg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532t+SxpJkYfIvm8qSitLDf/GMAN22IFD7T3ag9tQjxR5g5b8cGt
	42ojyblnJ+1ikOUhB8PkGCw=
X-Google-Smtp-Source: ABdhPJy8e3D2zPfveh+AmlskLiaNYOnRKAF4y6+i8VfEvKavMlvOiQxUF7MRqtGtDKIXz9grpRmnSA==
X-Received: by 2002:a92:3206:: with SMTP id z6mr5002882ile.201.1627592443218;
        Thu, 29 Jul 2021 14:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:144b:: with SMTP id p11ls1496326ilo.8.gmail; Thu,
 29 Jul 2021 14:00:42 -0700 (PDT)
X-Received: by 2002:a92:d8d2:: with SMTP id l18mr4973584ilo.165.1627592442755;
        Thu, 29 Jul 2021 14:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627592442; cv=none;
        d=google.com; s=arc-20160816;
        b=cZfW/kR/XZkTd6x/AT2I+nAobfD7LEFVlHAYpyPHVEQZXGfQQ4QCxewPmh71WajrVn
         u/JwPdsgMImOWaL22/A5rHEWf9DG3Qs4GlD0RqVnEkUzYtWwC0cvDchdmfcqymXVIH9Z
         1tyzhbwydIY+9gctr1Dk84281y/nq8CrCtT2s8GdHAW2iTc5ZcT0y6+hL5lNW5tGXqD9
         LiWodON1uiv9BiXuw1Ek9bd6L6lb55lifOl8yiBzfXdi0KazJDODqzY9YsVAQrQBvNZl
         +A2XusvOZ1FtJP140KsNSc/0tS+xB7x4x0cbry4oT9BTtZRUTKqTzHs+K9XOSeqGv7BW
         h7Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=hmH37RK0LzLEMoxJyi2KseWv7pkbOr3NiANeBwC0iIs=;
        b=eY9YHRFj4SCqR55Z35of7IgH/zM0hRnGgau8LINgzPIIx8qBLR1fOU+k286LePUFjo
         zxIHj1aPKiTR2zsMK9jUpH5qz+IXUdYxV9u5XVUOXZbxCypKb2chaBH9giw9Q7YLz2As
         UjeXNeXIYVBPW65Q7bkpBg+H72i0nnLrswsBshpp5F895MuoFgYxNmS8GZT+C+Pxf3CG
         /RWixqRSZoIKWFbogpxGOYiDnZZ7gbRdEO0udRisOyoIOK1yKp8EAEV8gP3Q+P1/ukHN
         z/Tcn7ab3By1u8y2A+Ad0miuUOeHBoT/2SYXrNlA67aT/ZsP1t03irV5ElXryo/pUqJA
         sdtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AaP0k8yO;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q12si274266iog.2.2021.07.29.14.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Jul 2021 14:00:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0683060F46;
	Thu, 29 Jul 2021 21:00:40 +0000 (UTC)
Subject: Re: [PATCH v3 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 CC=clang LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
 Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>,
 linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com, Geert Uytterhoeven
 <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20210729165039.23896-1-ndesaulniers@google.com>
 <20210729165039.23896-3-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <44117d0c-51b7-1f68-f752-ba53de503b14@kernel.org>
Date: Thu, 29 Jul 2021 14:00:39 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210729165039.23896-3-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AaP0k8yO;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

I realized that the title of this commit is not really right. We are not 
inferring CROSS_COMPILE, we are inferring '--target='.

On 7/29/2021 9:50 AM, Nick Desaulniers wrote:
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given SRCARCH. SRCARCH itself is derived from ARCH

I feel like the beginning of this needs a little work.

1. "...invocation of make is too long when compiling with LLVM" would be 
a little more accurate.

2. "it's mostly redundant for a given SRCARCH" is not quite true in my 
eyes. For example, you could have aarch64-linux-, aarch64-elf-, or 
aarch64-linux-gnu-, and to my knowledge, all of these can compile a 
working Linux kernel. Again, saying "with LLVM", even mentioning its 
multitargeted nature, might make it a little more accurate to the casual 
passerby.

> (normalized for a few different targets).
> 
> If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
> KBUILD_CFLAGS, and KBUILD_AFLAGS based on $SRCARCH.
> 
> Previously, we'd cross compile via:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
> Now:
> $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
> 
> For native builds (not involving cross compilation) we now explicitly
> specify a target triple rather than rely on the implicit host triple.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1399
> Suggested-by: Arnd Bergmann <arnd@kernel.org>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
> Changes v2 -> v3:
> * Drop check/requirement for LLVM=1, as per Masahiro.
> * Change oneliner from LLVM=1 LLVM_IAS=1 to CC=clang LLVM_IAS=1.
> * Don't carry forward Nathan's RB/TB tags. :( Sorry Nathan, but thank
>    you for testing+reviewing v2.
> * Update wording of docs slightly.
> 
> Changes v1 -> v2:
> * Fix typos in commit message as per Geert and Masahiro.
> * Use SRCARCH instead of ARCH, simplifying x86 handling, as per
>    Masahiro. Add his sugguested by tag.
> * change commit oneline from 'drop' to 'infer.'
> * Add detail about explicit host --target and relationship of ARCH to
>    SRCARCH, as per Masahiro.
> 
> Changes RFC -> v1:
> * Rebase onto linux-kbuild/for-next
> * Keep full target triples since missing the gnueabi suffix messes up
>    32b ARM. Drop Fangrui's sugguested by tag. Update commit message to
>    drop references to arm64.
> * Flush out TODOS.
> * Add note about -EL/-EB, -m32/-m64.
> * Add note to Documentation/.
> 
>   Documentation/kbuild/llvm.rst |  6 ++++++
>   scripts/Makefile.clang        | 32 ++++++++++++++++++++++++++++++--
>   2 files changed, 36 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index b18401d2ba82..aef1587fc09b 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -46,6 +46,12 @@ example: ::
>   
>   	clang --target=aarch64-linux-gnu foo.c
>   
> +When both ``CC=clang`` (set via ``LLVM=1``) and ``LLVM_IAS=1`` are used,
> +``CROSS_COMPILE`` becomes unnecessary and can be inferred from ``ARCH``.

I am not a fan of this sentence because it implies that something like 
'make ARCH=arm64 CC=clang LLVM_IAS=1' will work fine, which is not true. 
We still need CROSS_COMPILE for binutils in this configuration.

CROSS_COMPILE provides the value for '--target=' and the prefix for the 
GNU tools such as ld, objcopy, and readelf. I think this direction is a 
regression because we are just talking about the first use of 
CROSS_COMPILE rather than the second at the same time.

With LLVM=1 LLVM_IAS=1, we KNOW that the user will be using all LLVM 
tools. Sure, they are free to override LD, OBJCOPY, READELF, etc with 
the GNU variants but they have to provide the prefix because LLVM=1 
overrides the $(CROSS_COMPILE)<tool> assignments so it is irrelevant to 
us. As Masahiro mentioned, the user is free to individually specify all 
the tools by their individual variables such as LD=ld.lld BUT at that 
point, the user should be aware of what they are doing and specify 
CROSS_COMPILE.

While I understand that the LLVM=1 LLVM_IAS=1 case works perfectly fine 
with this series, I am of the belief that making it work for CC=clang 
LLVM_IAS=1 is a mistake because there is no way for that configuration 
to work for cross compiling without CROSS_COMPILE.

At the same time, not a hill I am willing to die on, hence the tags above.

> +Example: ::
> +
> +	ARCH=arm64 make LLVM=1 LLVM_IAS=1
> +
>   LLVM Utilities
>   --------------
>   
> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> index 297932e973d4..a1b46811bdc6 100644
> --- a/scripts/Makefile.clang
> +++ b/scripts/Makefile.clang
> @@ -1,6 +1,34 @@
> -ifneq ($(CROSS_COMPILE),)
> +# Individual arch/{arch}/Makfiles should use -EL/-EB to set intended endianness

Makefiles

> +# and -m32/-m64 to set word size based on Kconfigs instead of relying on the
> +# target triple.
> +ifeq ($(CROSS_COMPILE),)
> +ifeq ($(LLVM_IAS),1)
> +ifeq ($(SRCARCH),arm)
> +CLANG_FLAGS	+= --target=arm-linux-gnueabi
> +else ifeq ($(SRCARCH),arm64)
> +CLANG_FLAGS	+= --target=aarch64-linux-gnu
> +else ifeq ($(SRCARCH),hexagon)
> +CLANG_FLAGS	+= --target=hexagon-linux-gnu
> +else ifeq ($(SRCARCH),m68k)
> +CLANG_FLAGS	+= --target=m68k-linux-gnu
> +else ifeq ($(SRCARCH),mips)
> +CLANG_FLAGS	+= --target=mipsel-linux-gnu
> +else ifeq ($(SRCARCH),powerpc)
> +CLANG_FLAGS	+= --target=powerpc64le-linux-gnu
> +else ifeq ($(SRCARCH),riscv)
> +CLANG_FLAGS	+= --target=riscv64-linux-gnu
> +else ifeq ($(SRCARCH),s390)
> +CLANG_FLAGS	+= --target=s390x-linux-gnu
> +else ifeq ($(SRCARCH),x86)
> +CLANG_FLAGS	+= --target=x86_64-linux-gnu
> +else
> +$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)
> +endif # SRCARCH
> +endif # LLVM_IAS
> +else
>   CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
> -endif
> +endif # CROSS_COMPILE
> +
>   ifeq ($(LLVM_IAS),1)
>   CLANG_FLAGS	+= -integrated-as
>   else
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/44117d0c-51b7-1f68-f752-ba53de503b14%40kernel.org.
