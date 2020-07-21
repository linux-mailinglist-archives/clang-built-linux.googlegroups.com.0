Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBBGS3X4AKGQEUEYCYVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AEB228BDD
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 00:15:34 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id z16sf82214pgh.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 15:15:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595369732; cv=pass;
        d=google.com; s=arc-20160816;
        b=CwezTDv86/D+ggT6KI/7s2Lk0voBvm2Qw1RlTeAKsZUdSTurgni6sCN42hJANRVYny
         H6Pc1+UerlJ/ce0X2AT+lC1vX/ITMhgV+kxU3X4TPGnEvYsrHTP+juLaZA6edcF27nzt
         Av5tzKhPxRJEPKvOHtkLPaiJU+f0+yn6D7M+UMhHiOxRUqsasF4w2xhKCOsY43ZucI96
         tEBid6XibE9nxmyPmkIYCQJBG2q4yfR6Z78JK0PJG4u3H0NBFO7+YCSqG3vSWq4pz0gs
         v74xiQB2hMhmiycZZiSlzRDDHnf2KbERWllcEKVaFiwreWG6VwthyG42Qgk8nyL5P7JC
         6PLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=1RrSORRqzzFfDUIOQgeVNvuCpMnKkenYSc9NUPZRViU=;
        b=FK3TlKwVqRnK1FdnF+FOJCLw/Yi4Xv17fpSaM4Lrjz5/lgVjXvNfA2sL2I7xkiGNBX
         GPj7SQPg3GqwXXJrhylsGBzieq0WaRTR3f3MOjbCgZkg60wksPIQ3m5yb4vPWCmXt41e
         utVZO5MXXRtBwEoVkan0WO45K3M4PMiaFfM7yHic9E4/l3qLHKxTA+4g/7nBiBWuG/bY
         v4YvT+0ZwViy3n0zy3CQXdBBQyaU2VNQ7TxpM6JolWGq+szKn+4vSWBwPTJ62lXL8YYD
         HrZiTF7UyikgoMERkaNG2LIWqf2mWwBgIpXZefX4AglLMbJ5Una2FQsVywq9u/XLzfdG
         Wwog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=IiqDXalj;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1RrSORRqzzFfDUIOQgeVNvuCpMnKkenYSc9NUPZRViU=;
        b=meZeLmuKHwxb5vnfZdRQnAHutJcM2su0G8LWpIv2kC/sIxaRjupA3wC33pilXBjeV9
         4w3e2vxVuiIdoQP6cvwndq/pc6OMy7Qx/r4sYTimqRQNPS2VyyV9U4r6A88rgv1hHqUG
         D4KZUNrzFLFkeShNINbNVHQ8AlWElYrTYWhxbgjNHQ+kNLdWur5Fjl5mJR8n6XjP0kdQ
         bskQMU5ea0ClMmj/yhmkHDwMm5Foi9/+XCKtm8MTUVP/OUMZ1tOBOXlTbM0nV4A6fdxe
         v8VTVhJcZvFQ35tFk2D5NUsOeQSiB193wjDAkJlQDbDvHoRUOvf8F04+YVmpolmxWR9S
         Q+qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1RrSORRqzzFfDUIOQgeVNvuCpMnKkenYSc9NUPZRViU=;
        b=D9f2UHcXw7icFwgdQulrEU8t2sHdMoZxFUAdbEPoP5BzH4uAG1b4/FMid+3myNjvz1
         Ea41doE3QYEzyEfM60nAD3bxH6Pt2/TVM5Eh/iWBTKMcAFGQxYctnWBYqSdEDi55xByN
         4NEMQpXemRS2G0XorIXww5d0KxngNlY4xZHYwaF+dNaVFSyjy1Bvy6/yeE3sybl54/ex
         OyLBK3xgCZsSQDuCgkwgk9urpFA44Wb1RGZDnwwanaiSPttrLhd4KswWsbikqdTeqLj3
         KzLPVsrAfF/iU+AUT9ailPmQLNOYYYpySV/eF7IXLqzzIwG8bdsgSRwFkz5pfbeBcnI4
         Jqwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533I6Qb7acp3qKGvDQQKvBy4mr1bfh9ovacpmy93VTSum0g51sgR
	GX0OBy6Ed+f0l9/MGh4FLz4=
X-Google-Smtp-Source: ABdhPJxOvUV8yvuTrSZ2R60eRuU4Hpo0OmSwFkV0ALARc3Pdgv2grKFxykuPv/gvGHLSeoWnia8shQ==
X-Received: by 2002:a17:90a:9a98:: with SMTP id e24mr6903975pjp.141.1595369732649;
        Tue, 21 Jul 2020 15:15:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1bce:: with SMTP id b197ls6197790pfb.10.gmail; Tue, 21
 Jul 2020 15:15:32 -0700 (PDT)
X-Received: by 2002:a62:2b0c:: with SMTP id r12mr26566214pfr.122.1595369732238;
        Tue, 21 Jul 2020 15:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595369732; cv=none;
        d=google.com; s=arc-20160816;
        b=nJqUHq3Ov9yRHdFCQ8+sbhQQDGzoEnqsIbMj5lDDnkCZimmy0gEBkNK/fJ6hViTCZK
         Nuf1Q8jy7k0f1rSEmVfHh8VL0IGo5QgJwPP6UrCluAGDjOGV2dPJvOmyLH19Az8817mS
         QJBCqYVcgX/18zxecpFxxiUKjzGKpRF+xTAZVMYd4r1P7zrTYHeNfwXXeB0UAaKJ9qlB
         TYR3q9eH7E1JkWVBA3dQVBOzj/hIUK/cBLgBhLVG86s3I1QVZX95HZl6enVNl2l8O+VN
         pjgaNH9bshhRqux6ebkwCCyvuM+6ZJUQSFT8bcLxQRzC/IUL7d5N1X+6jzY/sn7ZeAV/
         bU6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=vR1Y8P9QQm4CTezIGezqaKkPlD5HSAJvtH4tLGcsSBI=;
        b=yY6gHTF1BvSSfezDJavZwUzG75q0vcz7d/SGHj0eWBObk/yM0LQF9L90keDlhei04E
         278jXxCWJwG3xsDUy12g1OnshyDQ1oG7ROr4YeLfdTGLMOts4UBNVUODp8NDYwD2yFOk
         4SxSBY0dcxiw2pAmuvu97vSNfA8C55vTN//iH2iT+oMg/IycctEaej0QRWEoGf1DZ9Zb
         lfyDJHJ2hTQ0TlxNUJOkbgFxoUTM0ss4KIV/JgCoHAkMDSPY61FSSB70SAoIINxHfpP/
         P1H+bUlayjzidzQ72RtNK17W+VZVTJFJ6WET13IWQ4jFPSw1Ni/b6ifXdyjhl++g8l2K
         bvoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=IiqDXalj;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id h18si102078plr.5.2020.07.21.15.15.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jul 2020 15:15:32 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 06LMFGH3015071
	for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 07:15:17 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 06LMFGH3015071
X-Nifty-SrcIP: [209.85.222.46]
Received: by mail-ua1-f46.google.com with SMTP id h18so6740909uao.6
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 15:15:17 -0700 (PDT)
X-Received: by 2002:ab0:48:: with SMTP id 66mr22845681uai.40.1595369716204;
 Tue, 21 Jul 2020 15:15:16 -0700 (PDT)
MIME-Version: 1.0
References: <20200721173125.1273884-1-maskray@google.com>
In-Reply-To: <20200721173125.1273884-1-maskray@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 22 Jul 2020 07:14:39 +0900
X-Gmail-Original-Message-ID: <CAK7LNARjOjr2wSD_iM6yNSZpSGEWrkZZuWKCgCqOrYcA29+LBA@mail.gmail.com>
Message-ID: <CAK7LNARjOjr2wSD_iM6yNSZpSGEWrkZZuWKCgCqOrYcA29+LBA@mail.gmail.com>
Subject: Re: [PATCH v3] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang cross compilation
To: Fangrui Song <maskray@google.com>
Cc: Michal Marek <michal.lkml@markovi.net>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Jian Cai <jiancai@google.com>, Bill Wendling <morbo@google.com>,
        Manoj Gupta <manojgupta@google.com>, stable <stable@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=IiqDXalj;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jul 22, 2020 at 2:31 AM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
> $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
> GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
> /usr/bin/ and Clang as of 11 will search for both
> $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
>
> GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
> $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
> $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
>
> To better model how GCC's -B/--prefix takes in effect in practice, newer
> Clang (since
> https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90)
> only searches for $(prefix)$needle. Currently it will find /usr/bin/as
> instead of /usr/bin/aarch64-linux-gnu-as.
>
> Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
> (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
> appropriate cross compiling GNU as (when -no-integrated-as is in
> effect).
>
> Cc: stable@vger.kernel.org
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1099
> ---
> Changes in v2:
> * Updated description to add tags and the llvm-project commit link.
> * Fixed a typo.
>
> Changes in v3:
> * Add Cc: stable@vger.kernel.org
> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 0b5f8538bde5..3ac83e375b61 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
>  ifneq ($(CROSS_COMPILE),)
>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> -CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)
> +CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)



CROSS_COMPILE may contain the directory path
to the cross toolchains.


For example, I use aarch64-linux-gnu-*
installed in
/home/masahiro/tools/aarch64-linaro-7.5/bin



Basically, there are two ways to use it.

[1]
PATH=$PATH:/home/masahiro/tools/aarch64-linaro-7.5/bin
CROSS_COMPILE=aarch64-linux-gnu-


[2]
Without setting PATH,
CROSS_COMPILE=~/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-



I usually do [2] (and so does intel's 0day bot).



This patch works for the use-case [1]
but if I do [2], --prefix is set to a strange path:

--prefix=/home/masahiro/tools/aarch64-linaro-7.5/bin//home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-



Interestingly, the build is still successful.
Presumably Clang searches for more paths
when $(prefix)$needle is not found ?



I applied your patch and added -v option
to see which assembler was internally invoked:

 "/home/masahiro/tools/aarch64-linaro-7.5/lib/gcc/aarch64-linux-gnu/7.5.0/../../../../aarch64-linux-gnu/bin/as"
-EL -I ./arch/arm64/include -I ./arch/arm64/include/generated -I
./include -I ./arch/arm64/include/uapi -I
./arch/arm64/include/generated/uapi -I ./include/uapi -I
./include/generated/uapi -o kernel/smp.o /tmp/smp-2ec2c7.s


Ok, it looks like Clang found an alternative path
to the correct 'as'.




But, to keep the original behavior for both [1] and [2],
how about this?

CLANG_FLAGS += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))



Then, I can get this:

 "/home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-as"
-EL -I ./arch/arm64/include -I ./arch/arm64/include/generated -I
./include -I ./arch/arm64/include/uapi -I
./arch/arm64/include/generated/uapi -I ./include/uapi -I
./include/generated/uapi -o kernel/smp.o /tmp/smp-16d76f.s





>  GCC_TOOLCHAIN  := $(realpath $(GCC_TOOLCHAIN_DIR)/..)
>  endif
>  ifneq ($(GCC_TOOLCHAIN),)
> --
> 2.28.0.rc0.105.gf9edc3c819-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200721173125.1273884-1-maskray%40google.com.



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARjOjr2wSD_iM6yNSZpSGEWrkZZuWKCgCqOrYcA29%2BLBA%40mail.gmail.com.
