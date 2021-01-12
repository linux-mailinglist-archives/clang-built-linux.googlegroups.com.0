Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYFV677QKGQEACUYHCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C712F36F6
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 18:22:41 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id x20sf1191883otk.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 09:22:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610472161; cv=pass;
        d=google.com; s=arc-20160816;
        b=S16Ar5CWsp1fB20paY8io2xJcvQjMSbZ071DzsTRwWNul3BVLyLs8GIDOZZzDLNKFV
         1ZCHht0H8UnbSFwBBhG+xoUclYvU1yH5vMh5kcWNQUxWyiONPzG7fYYPZqTXcbrWz0af
         D6GAeHMcxjYAk3ZhmGlgwx5cmHcYGu6i7NwAporOF0bsAI9/Oh4GTntz4wR1P0FQL5qw
         zG3O3kIG6HVDiqVzJnaZUEV37JHZJAY7qmQ+hb9eQ0lDqw844OwsiWtU97Qj2fAJGKy/
         tw4x2L9v2i7+wX3gNhjqdqRMNF3zHvneitR80gbEMjycsOTp8knm10QoRJ8d4s+/qXTs
         BHPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=65QZ40FnE1y9XaXDpitn0edArmp6SLwVSJSoJmyN+fI=;
        b=LupSdK1p8RQuJCK7EX8ZWl9okkWteptv+yZLZrkUr4R6Wj9uEhROnjgYfr208krdfB
         FIN/jbOZav8L1uNNqfM10Ng3kemuavRXyu1lPnwdNgvRWEJIHhPEbg8i/vdRJuaLpGCO
         7Y0Qr9XEiIs67JxTkjerd4zWxHC/7ripNCT0Et0X6o/b7+fHqysCAixwszIT9qOCSNtY
         K68cQAewJm/DT0lEaaJpQsd9yuYHtvaKRBK60HBX2NfsG6xQZYACIDgVsxLyWS1FvbwQ
         RZBpRLADbt6ydfgcT2VKAllkeYFijrprhSTJA3QFGBghCVaNrn+EUfDEUYwF/w3E5NZ8
         c7JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dm6lBlHF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=65QZ40FnE1y9XaXDpitn0edArmp6SLwVSJSoJmyN+fI=;
        b=A9XX23xDjwmmWJafNia0Cr7u7+La5jw/l0dZyVPs66Q3XrYEZd7wyKztgRRZpza+I7
         VqXUXj7wBczDyTlEq+d94BNMouY+YBv3SwhlOoDsF/GInSTvW7AJQx0kqISc/GneZ+lP
         HbQJp7KmXLcF6NOVfEAWmVflFx+ahR7gtG82uu66jYKuWaJ/vnWUZJ51ERIHfV4KRyml
         0Dk+FJuvCSpMZ9xn8OMSQUwZW+8WuozZuxbsZkGbRFddb5cTih5zKkemB5y0z4HqoqF2
         KAt+3XInpQBI8qiCvuglPSOfy8stFUPqWJUErTZT3Yt15Y+0FASpsxhcjNmrs8Db5BIu
         fPfg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=65QZ40FnE1y9XaXDpitn0edArmp6SLwVSJSoJmyN+fI=;
        b=h1UU0QPCqg5eCVCQufny9TI3iecsaFi4i9x7CMIziU14x7pFlHGXKofZRciNOMERvU
         XWcwwcTJpkssNzc9wWanXixVve6dJy3VCGIKRhzNOLjpjgbLMeTEiJWfwZ5xzaY9pXlr
         d4srKq550EhOypc3e0Wp2Wc7gxOKa6vqgtn5nQI97UOforp6N3Zbp2vCm2OgIGlkS8bY
         NzUwCwi2ZRqbCJgUL7GPxdy3NThmwfjxTBu5FUzW/awV2jhqLkC24XIMjGsGtAozwDwK
         VyPodIwb0t9kD4YXqeQJ+zrqyyAjRw9tzeJ4enTtKMddNe++yp2TYvXRJGLF9RyvU7+E
         whbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=65QZ40FnE1y9XaXDpitn0edArmp6SLwVSJSoJmyN+fI=;
        b=tsDVeU9L29r3R/WQ2VAqSyRdiVOXF1QG1GyWUdQXZVgT9YOVgFxNu17ENXIwPBl3K4
         fGjMkcsJK6vhtDnQkx7SIrD79+DIJBP863lNqvLM2L6JeK0yNosR4O6xygUyDTgivaSA
         1x7BZj1eD8Qd0BxBHbrXtenhnPliblNoBYVT0QAT/zMtN1ZGnxhwi0d22WtrbvJWEk0n
         8cKDDtfou/duTKaIsrEyehJXzDIMh3r89NHiyToOicQ2vXW2YuK9qJH5GUCPa8H0OpGN
         Xe+/WZK/eqRjJKwApJEV4aZP/JlcfNA4yZmtMB6N0Ch2eM5r8456xARG7qIQrpYjqIJ5
         8XXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KICqUAl6wB7NycAs27kKSVq6JeIExKAVgsd4lje+rOpsaSsf2
	JpujDcEoaPKooo2S0oYZauc=
X-Google-Smtp-Source: ABdhPJwTt2x+VRv9D4dADPpquFL533sPDaKS5oIylzmA1OtOWYW81mu8ziYGJKhcW3kmGsHebUd6Sw==
X-Received: by 2002:a9d:220b:: with SMTP id o11mr307608ota.212.1610472160813;
        Tue, 12 Jan 2021 09:22:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c413:: with SMTP id u19ls901712oif.11.gmail; Tue, 12 Jan
 2021 09:22:40 -0800 (PST)
X-Received: by 2002:a54:4711:: with SMTP id k17mr115774oik.149.1610472160487;
        Tue, 12 Jan 2021 09:22:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610472160; cv=none;
        d=google.com; s=arc-20160816;
        b=nt4FluPshuzGPZdMXTQzuu/Yq6B9Ujq/+9HniU/WHK22A9OMKh1JbIQg+Pw7YHlIoa
         1Vp1rHaDKHVXV62oMIcMu5BEYVl/PLWKW3J3m3lnBnMvtrYILR4SVI4c2ke0rJCzDvuW
         b5VAlgsNvN1pyoc2obwyPK5wli7EkIH4zR8mt61O25E01TVDaxIRR/ddOjyZ8TNtnF6T
         hJ+5XogD/1TdPR1g/ObXcQt/ld1gFVYuu//6jKW8qlgATynBQoinHVfw86rZ+ZfWAjcU
         /mwn1OcV0oDJgaP/nAnQna15HwgqKsf64Q3/Im4dtm3s57wqa9RidVVE4RjsPsZb2Tol
         WL8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Cekwa6Gg8tFAQMdvQMX54ozrri2M75odcKtK/zwsgg0=;
        b=0UUIjKo1Jc7QafxMxOusbfc7Wqpb79bc3kv2xHPbUb/p8kBBwZiHr4kXGHldIpfGXB
         ExKc0pvZK30Jb4bJzy2xaY2Mc+fv48luOrAhXKM3MRV6iXu2bKifOwXvZ7Bs8Rg19ZVT
         DKyUSbO1MjtdCBRIDK+k1Exu6FBuaVWRCuU4k0Ti40q48fe5xc+CRJy7yHdJVz2O37bW
         B21xhzDYu8UB6bnOoSAQHarMh0U4kQ+cr7XzxLTYNwrRcHq3ENg4WdDnHzDRX9tWnnCL
         WtZfQJRtorxKw38i9qpk6F4NSGCBaA4BpszjzH5LCg9FsYcLsB6XdthoCbzo4aXLMEuv
         Nubg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dm6lBlHF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com. [2607:f8b0:4864:20::72c])
        by gmr-mx.google.com with ESMTPS id a33si195724ooj.2.2021.01.12.09.22.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 09:22:40 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) client-ip=2607:f8b0:4864:20::72c;
Received: by mail-qk1-x72c.google.com with SMTP id c7so2550959qke.1
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 09:22:40 -0800 (PST)
X-Received: by 2002:ae9:c010:: with SMTP id u16mr352562qkk.346.1610472159841;
        Tue, 12 Jan 2021 09:22:39 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id d1sm1628462qkf.102.2021.01.12.09.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 09:22:38 -0800 (PST)
Date: Tue, 12 Jan 2021 10:22:37 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>, kbuild-all@lists.01.org,
	Linux Memory Management List <linux-mm@kvack.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v3] pgo: add clang's Profile Guided Optimization
 infrastructure
Message-ID: <20210112172237.GA1792840@ubuntu-m3-large-x86>
References: <20210112053113.4180271-1-morbo@google.com>
 <202101121755.pyYoRozB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101121755.pyYoRozB-lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dm6lBlHF;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jan 12, 2021 at 05:10:04PM +0800, kernel test robot wrote:
> Hi Bill,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.11-rc3]
> [cannot apply to powerpc/next s390/features tip/x86/core next-20210111]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Bill-Wendling/pgo-add-clang-s-Profile-Guided-Optimization-infrastructure/20210112-133315
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git a0d54b4f5b219fb31f0776e9f53aa137e78ae431
> config: x86_64-allyesconfig (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-15) 9.3.0

Hmmm... This should probably be gated on CC_IS_CLANG? Or even better
CLANG_VERSION >= 120000 due to
https://github.com/ClangBuiltLinux/linux/issues/1252?

> reproduce (this is a W=1 build):
>         # https://github.com/0day-ci/linux/commit/6ab85bae7667afd0aa68c6442b7ca5c369fa1088
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Bill-Wendling/pgo-add-clang-s-Profile-Guided-Optimization-infrastructure/20210112-133315
>         git checkout 6ab85bae7667afd0aa68c6442b7ca5c369fa1088
>         # save the attached .config to linux build tree
>         make W=1 ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    kernel/pgo/instrument.c:72:6: warning: no previous prototype for '__llvm_profile_instrument_target' [-Wmissing-prototypes]
>       72 | void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index)
>          |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    kernel/pgo/instrument.c:135:6: warning: no previous prototype for '__llvm_profile_instrument_range' [-Wmissing-prototypes]
>      135 | void __llvm_profile_instrument_range(u64 target_value, void *data,
>          |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >> kernel/pgo/instrument.c:179:6: warning: no previous prototype for '__llvm_profile_instrument_memop' [-Wmissing-prototypes]
>      179 | void __llvm_profile_instrument_memop(u64 target_value, void *data,
>          |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 

I still think that this warning will show up with clang at W=1. Given
that these are compiler inserted functions, the prototypes don't matter
but we could shut it up by just putting the prototypes right above the
functions like was done in commit 1e1b6d63d634 ("lib/string.c: implement
stpcpy").

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112172237.GA1792840%40ubuntu-m3-large-x86.
