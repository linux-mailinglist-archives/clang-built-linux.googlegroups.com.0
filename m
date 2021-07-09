Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHHKUKDQMGQERO267DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A31F3C2A7E
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Jul 2021 22:44:14 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id k6-20020a1709027606b0290104f319bb01sf3938033pll.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Jul 2021 13:44:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625863453; cv=pass;
        d=google.com; s=arc-20160816;
        b=MPe24/I2i4/7IvhFeln1MXFRbQNwSU6oh9kdnCNilmgsKsLgiQYqbowj3NaISnlmWb
         6rfUshl4S7VIHUd3bnWX2mb2xWnpCsJtEAyElgd5YH+BapA04IKo6CkieQKq6XJIHiRW
         qh/DMRBKfpKLr+CcLV2cMOAF9Y5apV9xXMNJr/IWrrmBGchkcPdn0JmoB1OycB4HlFFj
         OYxTFlMRGYixjU4AJnt1wy+P9RiVQK5Oe5ruyQZAVSeaKS1eFdLfSklwjVBUUHhAKtZ0
         iZcTS0fvIH0Iq6WTN4w6J2a0cBwuethZLgxiQYhDCKVfw7Kp4JgkbAVPPDJAr31KQiNV
         dDgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=g+LDbByn6+KKaFrnX/lvI7VvWvkx318uI0EtO/YaPY8=;
        b=g2l0vT7jMQS+yY4+Mf5pchWV3F6ySyRNaZIS09RG6kivXtLNqnYJOIpBUIgf9ARdA1
         kZhGlAucdQOSb/or0gotOINZ8KVHeIBwt1AGK1U4ebaEW19crYMXYlg+1wd8cGMG1EOp
         uYtkNeiXRSMyFOAaEFpgDUjGavVYK+xMHPCTsKicMPF8tgF6iv72VXriBuh5/DkEUOsP
         654F5+mkuHixcTuE2T5OyAsQZR1FTSedGV7Tok3hBHZmy0UYXPyROVgmiu7pbPxZUZ5k
         l7RNPm1u15hlXtrrFlePp7qYT2iKq8KlxGI4WwtkwrlJFvdYL4MBhTM/xBFqCMN/e1nR
         I4nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qPTyyP4r;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g+LDbByn6+KKaFrnX/lvI7VvWvkx318uI0EtO/YaPY8=;
        b=KIpIkXkOAIfYcURpZAd9Blo6PCCJ/yxff8E2MtgE7cNMLPvphJ660w889ewhrtszc+
         a1q5FKaERlgGZCJzY8EopEYodDGUEOtCFcJqTLGl0BEAD6u3STf9nmYVhheYKl5l7Oas
         +DdyfmAfOj3QvSaobUmjtn8p8zZ2zi0gRDLvkIBw/x8rlUA/TQIeyw7UdD3kb9vCEDlf
         ZkOd4VPT82zTtRdAoxmionRTb1F9s3we9Xe0NCp9/Hei6O2Gu/9vkqMlWl6qgoqrpTZ4
         0aA0wHD/cc81S6vk5C2wwLrgT4eyeBcozCq0HUKERrz6hr6abuGOod7jYAMilRvb3FIB
         JQrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g+LDbByn6+KKaFrnX/lvI7VvWvkx318uI0EtO/YaPY8=;
        b=PNqi9aq4MJsWk7yMtsWtDyCipo1cnQHxn2Eceq7jG9k0r29bkUJtihlFhzOoSxZmI9
         hElUJ4qD279cyfM+TkO2vJS0HYyaezait7PtJ4CUT28xPDsiMM2T4rky5HC+Xjes9ABf
         k+1XK4IerXUWACbG0kBzKlMbRdz2WNEHQFjWfbKZuFxqV4XeSwtuFh3u1Yw87fhigfE/
         8bKerzGIu3jxshtKtznb2NjOlTfL+mPdrenEqGKlQmwJnrp1soWMixtdd0RffGT0ehhn
         cpxoqidO3FoCtpQpI0efa60XtXQs9D50QI9bckZy5Q/w3aQWb7mgqZYCU+OoiORIUMpD
         Neeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533a0bfPU458rNQLcm7eGpjkxemt9OjiXc9LrmkF+xvdNdD7EkCB
	Guf2psKjBAFwaD5hRZ8nTKc=
X-Google-Smtp-Source: ABdhPJyVef3PcPpZP2L2euF/IuVaDWPboNjJcl0+KWOmClmcrAxlC5jO6AK6BACQ9RQMX6ZHzsoe3w==
X-Received: by 2002:a17:90a:a6a:: with SMTP id o97mr737270pjo.179.1625863452823;
        Fri, 09 Jul 2021 13:44:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:b50f:: with SMTP id y15ls3564745pfe.3.gmail; Fri, 09 Jul
 2021 13:44:12 -0700 (PDT)
X-Received: by 2002:a62:7992:0:b029:328:8380:4f57 with SMTP id u140-20020a6279920000b029032883804f57mr7325408pfc.46.1625863452324;
        Fri, 09 Jul 2021 13:44:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625863452; cv=none;
        d=google.com; s=arc-20160816;
        b=Wy7RVMyGOpyTzZDXhT6HfnkZl5gyAekmcJxhxpqs6b/EPSefvyIdqzmwv7JIBA639w
         z7qGcFLZYS7qBqgT5PATWnb77eLFKo1uP1K7vXOt10iTzL2pVTJZoW8DalGL4tJcHfkn
         tiYNi7tTYSV5dQQUjqII7aRk3g65yOOlS5XICfBI2DRGgx1N76kkldNR5TUL7rnB2vW/
         tkaO6H3PBBeL80SVwTdIpwZDv6CLo4iCL2B8snNKUzTvsVy2CSjVRVokU5LrqV3A0j0e
         OtUz+DmTjoQj9gYVfFi55VOBIeiE/I183HHacLOoYLxn2vM4Nn8ehAI4eGF9uYG41lBi
         NAZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=k+IJ7bvAwZvJr+hqPIKvlq443opN4S4p1BtvYX3Gam8=;
        b=qlUIYiK/N6XaNIun69NmVANwrDb40IgziOZD94LKv4XMdhvqANClC0KBWrEWb5wCOb
         tUuQ7uT8lus3Ip1k7ZHzN+4hCBA5VZ3Zji4i1FC9zvAuFVRmgsGYmGSMGPY7PXnK9Zn1
         hhApx+lXmxYuEbNg7Z2anNbK12sT+gXNd4TvybDbzylC2FO6mairxkyzTIbULAbebaz/
         cCmi4UpKfYTt1UxmRAx94o1Wk/2YgDdnaicDCQ34INuqMwvc+J2p7mjf6RsetezU0WQa
         l65M3x1ViXHckYHceMAFyM6lNKizsDdjrbid3BpJ21OoSq4QjZBbLBGcjDxCKsMgYvgI
         7kuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qPTyyP4r;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n2si1661654pjp.2.2021.07.09.13.44.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Jul 2021 13:44:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 00ADB613B2;
	Fri,  9 Jul 2021 20:44:10 +0000 (UTC)
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
 Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>,
 linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com, Geert Uytterhoeven
 <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <d0c3d556-9348-f3ff-e932-8fe247da4213@kernel.org>
Date: Fri, 9 Jul 2021 13:44:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210708232522.3118208-3-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qPTyyP4r;       spf=pass
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

On 7/8/2021 4:25 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given SRCARCH. SRCARCH itself is derived from ARCH
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
I tested arm, arm64, i386, riscv, and x86_64 and verified that the error 
fired for an unsupported arch. Consider this:

Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Tested-by: Nathan Chancellor <nathan@kernel.org>

> ---
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
>   Documentation/kbuild/llvm.rst |  5 +++++
>   scripts/Makefile.clang        | 34 ++++++++++++++++++++++++++++++++--
>   2 files changed, 37 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> index b18401d2ba82..80c63dd9a6d1 100644
> --- a/Documentation/kbuild/llvm.rst
> +++ b/Documentation/kbuild/llvm.rst
> @@ -46,6 +46,11 @@ example: ::
>   
>   	clang --target=aarch64-linux-gnu foo.c
>   
> +When both ``LLVM=1`` and ``LLVM_IAS=1`` are used, ``CROSS_COMPILE`` becomes
> +unnecessary and can be inferred from ``ARCH``. Example: ::
> +
> +	ARCH=arm64 make LLVM=1 LLVM_IAS=1
> +
>   LLVM Utilities
>   --------------
>   
> diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> index 297932e973d4..956603f56724 100644
> --- a/scripts/Makefile.clang
> +++ b/scripts/Makefile.clang
> @@ -1,6 +1,36 @@
> -ifneq ($(CROSS_COMPILE),)
> +# Individual arch/{arch}/Makfiles should use -EL/-EB to set intended endianness
> +# and -m32/-m64 to set word size based on Kconfigs instead of relying on the
> +# target triple.
> +ifeq ($(CROSS_COMPILE),)
> +ifneq ($(LLVM),)
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
> +endif # LLVM
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d0c3d556-9348-f3ff-e932-8fe247da4213%40kernel.org.
