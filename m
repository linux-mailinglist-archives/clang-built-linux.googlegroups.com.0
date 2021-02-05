Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN5P62AAMGQE3RUOI7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3754D3110B9
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 20:08:40 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id o16sf6677004qkj.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 11:08:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612552119; cv=pass;
        d=google.com; s=arc-20160816;
        b=viXFK46lCHH2McNw6vNmE/kAEp7xQ+hDD7tRgVj9TlNOg7u/VNqXdjckynXkXjwB4k
         hDqJwu3qeWxnC0WH5g1JS2qjS4+ETH9B31gj2O2dslPoUpAhh89ygb7XWnSsVYEE8E6/
         /6EUmjNO/ooDXfUtH4HFsV5+2njqIwcIbUtISQiAivKJjNmkejkmOyFcSewc9WS1XGqU
         0aZL+2zY9rDgWPsmjeajoXcSOPI4N+XEc2rdhNifSp+jaMbnqHYdvaKIg+Odj80UqhvG
         2z/DBL+wa///3zALCnls0Aw8og/gMWvKpLFT/qjkUQwR7ish/mIUfWjdj0pVrmO5xmp2
         8uMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OGPcmzj2Aqov+wqmQebTM0mrq+roI0AaUugEutKSjEA=;
        b=KXJox9u/9Ixduvvvoif8aTeeX6UuQowbyvh7x3eCJrGCuhmC2QOAmvM+ByN+KVsP3w
         Shx2b1+x1sryMT9E3QcycDHIOLNwGoIHOQ3gOooUNXjDY0NzHhGDUtSPaHJRbLlwVwbW
         idZ+0kKCeU2XtvNf9YCEcQdKri4h7xbjHlanHlNSkp5JwG/igVe0pqBLndsiQ5oHvTeU
         Q0mqXFGClFmUUTYVCJeIamclGgKEeNyg7gaqRvObvk0OMHfahkNbSkvWzhynAiMr6Rvi
         lrI+Ss/VOL6lF5Cuk1JgTdHKAH1V5nZOUMfHJ743jawghVWfN9yJRphsHr2CRmrHC49L
         Lujw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="GkA3/HcZ";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OGPcmzj2Aqov+wqmQebTM0mrq+roI0AaUugEutKSjEA=;
        b=rkNBWwElSNiBJ3/fQ1qYrK6S9nwB2SIFM3N/wgdvsPRzZocvt0B48LfqhhduGdrUWC
         n5MLjj4zhoIUIujY76z45FxqxFrCW7u4jktM/NOqLE++sF8HuMspbdY3+w4Vu+iHwrQP
         wDfUDKQKBUb15uoSD/ZsxcYludXCPKj999oEEU/NaUCkGz4fSahJWhQ45sp0f6N/mz4h
         T+wI6e/3wqpabiLjSUEbtUo526SwS86YnU9jKjQSmIFxdlPrFHFQAlLCUAQi60Xj6ICP
         FXmj9qfpqnODQf05Ed5IzRYNqxg1d7lHUt9o0WD0D1RDha7ZFDx2H4vidjJsG0DTwErA
         6Lug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OGPcmzj2Aqov+wqmQebTM0mrq+roI0AaUugEutKSjEA=;
        b=Znp9ejFTMZCMYgeuQQ3XCKDHSkThwtcIO/o65+mUG/cfocjJvavb+8oPznCULP3bYZ
         bn4BufVEf7TJ8srJgI2mtyXFhqCB+0fi+JA2tsDwTd8t0jq4pP2RvLDjekV3l2pALBTs
         rIA5gd5IZVMHY+iJ7RBCLMOmZE7rKBGzxYZgCZr+WLiOqmDGPzE65m4IILWfXpafsqmX
         uQKh0vRLUyWa1PfrvGTRONvyqOZ3xIHV21QClbsLhNfV2bOlL4ZxsnygWc778ecyzUAB
         jLoHlhTWbeSr/fKB1rNo5ihX0usDsElkVymyE7p44LtZQ3rzni4OCCLfHs9+graNfTGy
         CteA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532t7P3h0EnkbnhwKKmQDI6bc3fxjesJFJwARrjOwCoAuvDtxbpN
	osy7DIVbdutiezF6hnCEs2A=
X-Google-Smtp-Source: ABdhPJxL26pfk/ODH2+kIhal3lsEKhEgtz1JfEWctsoI52JW5SPBVzBvGCG3m3M0XLWF90dQdds4WA==
X-Received: by 2002:ac8:5a82:: with SMTP id c2mr5821867qtc.90.1612552119306;
        Fri, 05 Feb 2021 11:08:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:1c2:: with SMTP id t2ls3804794qtw.10.gmail; Fri, 05
 Feb 2021 11:08:39 -0800 (PST)
X-Received: by 2002:ac8:5cd0:: with SMTP id s16mr5423782qta.309.1612552118941;
        Fri, 05 Feb 2021 11:08:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612552118; cv=none;
        d=google.com; s=arc-20160816;
        b=JNyUpk62OdxS/J1PJxvpzrinY2pdEUxh6BMgxO5L7Sagq7lmAWHaOabhk5S5VZDtjF
         10zHF8TweUc17U6b1jvK83XRvd2InqY29q24LqnI1+OzM3uoxPZZArfE61FOvqQEtLtq
         aAN1B9dmLAxwOihnpONYddrXHTuymz6vRnhnBnJVAB1F5IRNkhiZdTuN0y3o+Vkc5Gcf
         DtVAJE7DDRfzpHhYpuZttjeBcpFWw9lFeZdpLY+9v3r/7B6qLSnGIVl5eEP+qx7nlQL7
         zXTYmtCPoWhoaSJuofanXcXLVOBuVQwDeVOcu06vHl+UfVpQgm2q24p1+UZe0DN/HRY8
         gexw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=62f3R+pAtKUtzhxvfaYpL5Vqa/UePjuMFbHPZveDXzY=;
        b=lZJO4jOoAn68qlkhoCLGfsDcOQ0WxppizRIlsAfKUFavx+B9ORq743Z7mP2FSdmCRM
         MbQFaDi7Uue9Y9kj1O4bQUh2NpVftBHKsoRWde1Z26JAAN2nitXfhC8XdjK1WlFTbspA
         4pSvw+8uuJOy2q9Z+bfRVScXp9EDVSx0gpAFRFHLABNYJAuNiePecxIHpOXJHqIuv2hT
         dwDcgnsULcZ9mfkA08qqeZzHugvz6mCriuq4mEiucRs/KHa6kH8zrpQhXABAgL0qlG6S
         nmQb/ocaDkPHF1ZsRj/yDrqAr8gaMILAlwnENlw312RzFY/nePF18wVyFJiBOlDyzCGk
         B8hA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="GkA3/HcZ";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m8si721051qkh.4.2021.02.05.11.08.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Feb 2021 11:08:38 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 022EA64E06;
	Fri,  5 Feb 2021 19:08:36 +0000 (UTC)
Date: Fri, 5 Feb 2021 12:08:34 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arch@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	kernel test robot <lkp@intel.com>,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH v2] firmware_loader: Align .builtin_fw to 8
Message-ID: <20210205190834.GC461042@localhost>
References: <20201203202737.7c4wrifqafszyd5y@google.com>
 <20201208054646.2913063-1-maskray@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201208054646.2913063-1-maskray@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="GkA3/HcZ";       spf=pass
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

On Mon, Dec 07, 2020 at 09:46:46PM -0800, Fangrui Song wrote:
> arm64 references the start address of .builtin_fw (__start_builtin_fw)
> with a pair of R_AARCH64_ADR_PREL_PG_HI21/R_AARCH64_LDST64_ABS_LO12_NC
> relocations. The compiler is allowed to emit the
> R_AARCH64_LDST64_ABS_LO12_NC relocation because struct builtin_fw in
> include/linux/firmware.h is 8-byte aligned.
> 
> The R_AARCH64_LDST64_ABS_LO12_NC relocation requires the address to be a
> multiple of 8, which may not be the case if .builtin_fw is empty.
> Unconditionally align .builtin_fw to fix the linker error. 32-bit
> architectures could use ALIGN(4) but that would add unnecessary
> complexity, so just use ALIGN(8).
> 
> Fixes: 5658c76 ("firmware: allow firmware files to be built into kernel image")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1204
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Acked-by: Arnd Bergmann <arnd@arndb.de>

Acked-by: Nathan Chancellor <nathan@kernel.org>

Andrew, is there any way to get this picked up with the following tags
for 5.11?

Tested-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

If not, please let me know and I can try to shuffle this along to Linus
next week.

> 
> ---
> Change in v2:
> * Use output section alignment instead of inappropriate ALIGN_FUNCTION()
> ---
>  include/asm-generic/vmlinux.lds.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b2b3d81b1535..b97c628ad91f 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -459,7 +459,7 @@
>  	}								\
>  									\
>  	/* Built-in firmware blobs */					\
> -	.builtin_fw        : AT(ADDR(.builtin_fw) - LOAD_OFFSET) {	\
> +	.builtin_fw : AT(ADDR(.builtin_fw) - LOAD_OFFSET) ALIGN(8) {	\
>  		__start_builtin_fw = .;					\
>  		KEEP(*(.builtin_fw))					\
>  		__end_builtin_fw = .;					\
> -- 
> 2.29.2.576.ga3fc446d84-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205190834.GC461042%40localhost.
