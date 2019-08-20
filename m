Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDGC53VAKGQEZPNS3WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 2966795850
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 09:28:13 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id 63sf3582833edy.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 00:28:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566286092; cv=pass;
        d=google.com; s=arc-20160816;
        b=gF8W3r5aRB2mUK8Vj+N79JbDqB0Dde63pu4FBjdfZBGqVCsNqR4pPKGZdPqfApuBc0
         flv/JaYqEwf1gaY9fy1rnLMlxTpOKro5dozqLWSRDxKdslRlFP/0c6JIJuwf0Vm/33gn
         Uk/ynb3gJ9VoXhkLkkRQCK2N3LwG9oYXZukihBWw1+SdOf/y6gDK0vHjowGo0ycn1C18
         N9ofBL6V1sGJweO1iC5MWQNlxIJOEzvW9U72pGI5f2injVqwdWCBZv1NTdNPEtHWTA3I
         mKpOxjiBG0lGPD7Qq+S+byifIfVCNRdyHllDcjOZaYyGs0U6XWpPBNerxRZryKugcyom
         aMtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=h0P7Y6VVMGKAQ5L2GXtjG0QiPCKjZfZxxjzQT733mkw=;
        b=hrRrGZkwm21l13YkpYhNGxmANf5K6NEzVdfpyAx+uULWiLq10XX1ojoa0zbugOFAzd
         S3jci+ut/ikpblygwh1U2+Cf7D0G/7P0VDS9CQh79sOmI7FNsfADUXSln9XHX/4ewCT/
         w+NJqbfi4x+huCLEc3oeaXVaECnhoTqFO7yDIdsWYsk09jm7qrxBToQ8tj0eGuifEOgo
         61Gxxn3Qkf0HVfvXMRpBPgd3LmrBWu3Ezv4YOxtN716Urrk49TplZirnNggM7xYjQHOF
         vUxbAgTl+KI+5/vE3cixx18VshEzcvIpnkE5cGAfb/lLz54mzkZj4aQTWPUVh+VTfIED
         tjeQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=axdyS4o+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h0P7Y6VVMGKAQ5L2GXtjG0QiPCKjZfZxxjzQT733mkw=;
        b=U4X0/z2lLoXCLtYZsJvSCtyMig1Ww0lajnDujIJ4h29jJSrsgEKNzUu0aQkMDdDOuc
         ZmQe0xpm6qvthRIYcKw/+vHO4pmwPA+V7kuuL9BPB7VyiHugnvEzQ+mLGFiyZ2g6E23B
         zDh5a8lsWNwm4wieckfvS8Aw0XJytou4do9yVStx82F3q3YXUUxcZa44SVZw7sUHF9Go
         HNhbjmHPZZ62SiSmz0/+YaGAjqfqBzJ7xTR9is+Da64TUr25jKB4bGx96GvWgtJfGxMg
         F9eohhSjb9Kl0OFwvFF8TA0tuMI/OuhfE3N1szDjoT7sQsBw6yLz1C9yPBaye33A/M8C
         m/cQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h0P7Y6VVMGKAQ5L2GXtjG0QiPCKjZfZxxjzQT733mkw=;
        b=OAXZki8sIvhQ9kVJspNNnDItgDljRme6Lh3LHVFg0syP7oUZJ3sXlmjnifkhtZjCN+
         0Qghc1s5jWXzkDKdMzh7y01Rc6rRy1+XaStknzR+qbf/8igwah7aC4oPGwDVfbnPWYWK
         b8RbXvr1eKTUCeGa0nzzc6VxXokSgZiUmYD9bO0L7safd8Rl5IcEAjQt7iZ5fZzLoxRP
         zKjfHQrEPsGH+dL3sbp/nACysQJQNI/eenvFGXOaMUV78LOL1hxahWad7sGZhwU1zps3
         IlFKxitLkr5ogAvLMZMB7wuMJt8VUT9N0wRAHTupwIIbYkz5wnfi4XF9mruwA4lKL0Zx
         tbPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h0P7Y6VVMGKAQ5L2GXtjG0QiPCKjZfZxxjzQT733mkw=;
        b=JDUn0B6YcQCxBDJ97sZMPu5U6lH48I7mLTNK5tdrfbbawwmlzeoxV5/t+UcwOxlzO0
         u6SJQA4bw4j/6AtzWfioBCnvjGzM3AaolqFTtny5Isti49imE1ghi6uL7oMMeYrYpQbw
         Ojo80x86yYQ1N5qqGiVHPRQtAzcQ04roxh8eTjDgn4q59A+khVHxcr07Qmb3twBYolQA
         nu+VaXT8eQlMv8+gtQoTVzOHvzsX5i2mPe1SB5shHyZXQgYZWDOpKIk/7j3oeKumAbq2
         ZlWHi8fz/pthMVNOkTQEqcFQByd3E52OgGMF2RhQJYGwtMqGcBuTMVy488HmDdcQNUd8
         GnXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVnjB7fa0JI+DocgQwAIaQ/wXycue8hAJct5iiOv6v/B4+q2pfN
	a4B14Ok16t58dRQOisOFC6Y=
X-Google-Smtp-Source: APXvYqws1q0hJaOADe2itrsf5tHtZoql70/ihfzOU4vZT3Hhl6JOzJbKCrRg1+X5+KBQoOkuTX3cOQ==
X-Received: by 2002:a17:906:e009:: with SMTP id cu9mr24634741ejb.267.1566286092851;
        Tue, 20 Aug 2019 00:28:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f07:: with SMTP id z7ls2371860eji.14.gmail; Tue, 20
 Aug 2019 00:28:12 -0700 (PDT)
X-Received: by 2002:a17:906:1944:: with SMTP id b4mr6276704eje.44.1566286092473;
        Tue, 20 Aug 2019 00:28:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566286092; cv=none;
        d=google.com; s=arc-20160816;
        b=wip4v+tN67/tdmfgookKznz+B5pntelBfVqPYsL9g+2b18lYqLKMEBxTshXYl0FA2Z
         ogLmWr2VPcW0FjsiFe8CvRs7BK3GK81+eGVdHoc7iYDdeLzqUj8ToSyB7k6FdT35H2et
         IMAvj4s+McxjVp6Liq5cd2Dzt6eDVbFz4HYkcYSViMwxPV5RX7WNlQvJZH/owVGBiVuH
         IlQ7ESlC50PelwOFbwAdkkc82tiUSwoCSvwCqEbqicNzw3W8noWoQgH1mA1Ok9deBKhK
         ffgDwFCImnkJdAxS/T1Gy/WrH9ZjUkBMsqDnHFMGXz+An/frTXLPXXkV4zhDBKRWyG8h
         W2/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=STCVugaalN31QOAqpmu8JBsQHyEheYIMWoFlG13Ws1k=;
        b=UW2WsOkw5X+wW0zx0bhUX85k2+H/eFrnmlp79KP3h+6jWdLBTKm0wHkKhF5IV/gRYI
         +fGNfI/fMtRBd3q6wvDBxC+QzXCaRaif/nI9HAf81GPy5kF4jhB+vaKqTlAQcQLFuoXE
         Ba563fs8ROap0u1afNXlzA/+VQpu7t53UTsobd/UHYSX5EzSEGkUzaOUU/hkLUBrs3RB
         JBgZ0LtSsYyiLPl+30HCfsf1iyYdRl+dfX/voriORshzqFawc0JNeKw5nk6nibnt586c
         zYOiTpj8KbdQjKYBpIlgFpGxm97tmF4DLqnTmJ31PXbzbXwXO67uDUvJ7Lq7p+VWWtsf
         F1mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=axdyS4o+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c11si430798ejr.0.2019.08.20.00.28.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2019 00:28:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id p17so11217761wrf.11
        for <clang-built-linux@googlegroups.com>; Tue, 20 Aug 2019 00:28:12 -0700 (PDT)
X-Received: by 2002:adf:f3c1:: with SMTP id g1mr32406227wrp.203.1566286091940;
        Tue, 20 Aug 2019 00:28:11 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id i5sm17557544wrn.48.2019.08.20.00.28.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 00:28:11 -0700 (PDT)
Date: Tue, 20 Aug 2019 00:28:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: Enabling UBSAN breaks KCOV in clang (8.0.*) on arm64
Message-ID: <20190820072809.GA62296@archlinux-threadripper>
References: <20190819165947.GA30292@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190819165947.GA30292@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=axdyS4o+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Aug 19, 2019 at 05:59:48PM +0100, Mark Rutland wrote:
> Hi,
> 
> I found that when I enable both KCOV and UBSAN on arm64, clang fails to
> emit any __sanitizer_cov_trace_*() calls in the resulting binary,
> rendering KCOV useless.
> 
> For example, when building v5.3-rc3's arch/arm64/kernel/setup.o:
> 
> * With defconfig + CONFIG KCOV:
> 
>   clang -Wp,-MD,arch/arm64/kernel/.setup.o.d  -nostdinc -isystem
>   /mnt/data/opt/toolchain/llvm/8.0.0/clang+llvm-8.0.0-x86_64-linux-sles11.3/lib/clang/8.0.0/include
>   -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include
>   -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi
>   -I./include/uapi -I./include/generated/uapi -include
>   ./include/linux/kconfig.h -include ./include/linux/compiler_types.h
>   -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3
>   -Qunused-arguments -Wall -Wundef -Werror=strict-prototypes
>   -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE
>   -Werror=implicit-function-declaration -Werror=implicit-int
>   -Wno-format-security -std=gnu89 --target=aarch64-linux
>   --prefix=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux/bin/
>   --gcc-toolchain=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux
>   -no-integrated-as -Werror=unknown-warning-option -mgeneral-regs-only
>   -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables
>   -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks
>   -Wno-address-of-packed-member -O2 -Wframe-larger-than=2048
>   -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu
>   -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable
>   -fno-omit-frame-pointer -fno-optimize-sibling-calls -g
>   -Wdeclaration-after-statement -Wvla -Wno-pointer-sign
>   -fno-strict-overflow -fno-merge-all-constants -fno-stack-check
>   -Werror=date-time -Werror=incompatible-pointer-types
>   -Wno-initializer-overrides -Wno-format -Wno-sign-compare
>   -Wno-format-zero-length  -fsanitize-coverage=trace-pc
>   -DKBUILD_BASENAME='"setup"' -DKBUILD_MODNAME='"setup"' -c -o
>   arch/arm64/kernel/setup.o arch/arm64/kernel/setup.c
> 
>   ... and there are 44 calls to __sanitizer_cov_trace_pc in the
>   resulting setup.o
> 
> * with defconfig + CONFIG_KCOV + CONFIG_UBSAN:
> 
>   clang -Wp,-MD,arch/arm64/kernel/.setup.o.d  -nostdinc -isystem
>   /mnt/data/opt/toolchain/llvm/8.0.0/clang+llvm-8.0.0-x86_64-linux-sles11.3/lib/clang/8.0.0/include
>   -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include
>   -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi
>   -I./include/uapi -I./include/generated/uapi -include
>   ./include/linux/kconfig.h -include ./include/linux/compiler_types.h
>   -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3
>   -Qunused-arguments -Wall -Wundef -Werror=strict-prototypes
>   -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE
>   -Werror=implicit-function-declaration -Werror=implicit-int
>   -Wno-format-security -std=gnu89 --target=aarch64-linux
>   --prefix=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux/bin/
>   --gcc-toolchain=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux
>   -no-integrated-as -Werror=unknown-warning-option -mgeneral-regs-only
>   -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables
>   -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks
>   -Wno-address-of-packed-member -O2 -Wframe-larger-than=2048
>   -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu
>   -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable
>   -fno-omit-frame-pointer -fno-optimize-sibling-calls -g
>   -Wdeclaration-after-statement -Wvla -Wno-pointer-sign
>   -fno-strict-overflow -fno-merge-all-constants -fno-stack-check
>   -Werror=date-time -Werror=incompatible-pointer-types
>   -Wno-initializer-overrides -Wno-format -Wno-sign-compare
>   -Wno-format-zero-length    -fsanitize=shift
>   -fsanitize=integer-divide-by-zero  -fsanitize=unreachable
>   -fsanitize=signed-integer-overflow  -fsanitize=bounds
>   -fsanitize=object-size  -fsanitize=bool  -fsanitize=enum
>   -fsanitize-coverage=trace-pc    -DKBUILD_BASENAME='"setup"'
>   -DKBUILD_MODNAME='"setup"' -c -o arch/arm64/kernel/setup.o
>   arch/arm64/kernel/setup.c
> 
>   ... and there are 0 calls to __sanitizer_cov_trace_pc in the resulting
>   setup.o, even though -fsanitize-coverage=trace-pc was passed to clang.
> 
> If I remove -fsanitize=bounds, there are 121 calls to
> __sanitizer_cov_trace_pc in setup.o. Removing the other options enabled
> by UBSAN didn't have any effect on setup.o.
> 
> I'm using the llvm.org 8.0.{0,1} binaries [1,2], along with the
> kernel.org crosstool 8.1.0 binaries [3].
> 
> Any ideas as to what's going on?
> 
> Thanks,
> Mark.
> 
> [1] http://releases.llvm.org/download.html#8.0.0
> [2] http://releases.llvm.org/download.html#8.0.1
> [3] https://mirrors.edge.kernel.org/pub/tools/crosstool/

Hi Mark,

I've narrowed it down further; it seems that the combination of
-fsanitize-coverage=trace-pc and -fsanitize=local-bounds prevents the
emission of __sanitizer_cov_trace_pc. -fsanitize=bounds is the same as
-fsanitize=local-bounds and -fsanitize=array-bounds, the latter of which
has no issues.

https://godbolt.org/z/YdF-he

This reproducer was taken from a somewhat related bug report in April.

https://bugs.llvm.org/show_bug.cgi?id=41387

What's also interesting is when you remove -Qunused-arguments from the
clang command, the following warning appears (also visible in the
godbolt link):

clang-10: warning: argument unused during compilation:
'-fsanitize-coverage=trace-pc' [-Wunused-command-line-argument]

I have no idea why this combination is special, I've been searching the
source trying to see what I can find and I am currently not coming up
with anything (I'm sure a good night's rest will give me a fresh set of
eyes).

This is still an issue on Clang trunk.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820072809.GA62296%40archlinux-threadripper.
