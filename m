Return-Path: <clang-built-linux+bncBDY3NC743AGBBN5XXTVAKGQEZKRVGTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 500E988CF2
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 21:32:08 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id x71sf34150781vkd.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 12:32:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565465527; cv=pass;
        d=google.com; s=arc-20160816;
        b=MDwJ3iT4dPcvQnaFc/6omBUK53teJf4jR/s0f+hiG12N3fiRkpWF2VZN3ktYUWP/5u
         blX2o5aggcAd6z04Ffv4zgMFEkrPtFEZnxt5TaUjIeeRMZegxHtSL+/tjr3P++RghkDP
         a/f5Tw57DcuH33l1FXuW1RVvUn/kq6BrFZPQVcCdKlSCcMzZe2/BvMDMM4x419B5Tbjp
         3Fn6uerzRGPA7J8W6vZxTMxg1SVuKx2TvrzzzLgeRGETgDBrK+xWrBITMLS16S3geq7Q
         QOHWcu6/9nDaMu7D9yaOWaCb1375K+DSUlA0Kf2kfforSPLspj23WkteHDK0is/BZeJj
         LnkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=TsAOSKhO1txWfUKtnrzHSefkx3UCT6eU5oHVm1rzkBU=;
        b=TWskUtdJQecnDpmAia6MaxWmQT04wRRfGL2fPsLWQlKuC7oY+XXSC7FyXKz4yIZxBo
         jsWsf+YudHnRW80slw+Etd9/GmckujSmWtZMuUwH1b4iL1/NLzFv65nCat9WBvV/WbmB
         1+UwKQHLK/ympmVu1srjFTop0CKN23P1S+FKxYPNeS0QVBC78EE1eEMK8WTYvzTppzwm
         wmN9kkV4n5VYASnAtUgqaQ/OAnM37SatGL5n/StOdoh0l/anaHaxaP6U7dP8NIpprfy+
         WS1XEfc5TP3O4obgO7ALg8bAXFdsvHfNuq20ubsrezJwu4MxzW9dEICU6MWREuYKY92A
         QYiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.165 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TsAOSKhO1txWfUKtnrzHSefkx3UCT6eU5oHVm1rzkBU=;
        b=hDAz9RZBDPu52UzDXcOS/2kF8H/+HxC+FM+aiNYc1OVjtfGKt53Yb2vVF7Hzp1wVwN
         ELHvrJp1g0bVpennXOYKqXV/Ofmk87kGGS8kgTOwVyFOn7dCUjXVUqjlB2RgX/BVe+MB
         vAPQBDXWT2ML+Q+3DR9nTfwHjI7rhmbESnCgwpcWaEdeprtPw04V8p3gPk/Y+FT9GX0N
         vx3MmKJ5w5ZrLlaAwwtg0pfkhl6eT7cRWYgzISMs0cXaVOyc+QJAGo89T0p9N624nKHY
         gmS82X3HaNAxg76lpXAQ4rDTdBN+qL45Y0Nzke6X5IeKu/VPr3BfJZnIZU10cVQ7WaF7
         dVug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TsAOSKhO1txWfUKtnrzHSefkx3UCT6eU5oHVm1rzkBU=;
        b=XSETpHnyvy6nAkD/7Hrkq1Ed8TVkMpzEVnG4jNxM/Ef8EkMGJ/VPUJBjS/mnyQh8sK
         1viGMzYuGyxLhpK3mGHvqyi9WmiPc52vrM5aGMuLdSEwiV+rr0Ci8en6ziwIl2LM8xhh
         6JiiCXpObgboJzptYcigUkqtfp4CsMTvXha01wD6tAGsxBdj7afWVxbG2TF8At5178jW
         yuTnoPRuEQKNLydjmaJFpyn5RNvUhX/43qG17M4MeG3KKNCNH3F+axy6pcgvsPmfXlcK
         5niXyS6FgGOC4Bi5ccI4eGEwbeCBwFFffKgDzoTYx4MkV7w6ZsPFnRyTsNnXACiOUTY8
         zkJA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWG0yImcN6gOILA2bcNPQffebtmFWF3g9/pWZiaAoiCl/jJk/x9
	kpXpsyD3WoyyVbeDeccdsGg=
X-Google-Smtp-Source: APXvYqyKW/z1ps5Mbq/y25zwBnPQd2b8L5GpUedWl8vmWhsEX2u+U500xHLFwTMLyLmUsz87ha6zrw==
X-Received: by 2002:a1f:745:: with SMTP id 66mr10557331vkh.89.1565465527090;
        Sat, 10 Aug 2019 12:32:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:68d1:: with SMTP id d200ls1292449vsc.9.gmail; Sat, 10
 Aug 2019 12:32:06 -0700 (PDT)
X-Received: by 2002:a67:f116:: with SMTP id n22mr17491549vsk.73.1565465526852;
        Sat, 10 Aug 2019 12:32:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565465526; cv=none;
        d=google.com; s=arc-20160816;
        b=cN/opMQz1pl/86L3BQYW5P9/BCRFCNGDum/3lkeAbqVoc4KkkSPiBNqGnLGM/Cf/yH
         AwBa7IRtZnF84Mx/wejLoDK6yAmgia0lNm8ybUajnGJRl6KZZzyuQ2tEY+4/TqlpinfO
         buzd0B71ijEoPmd6IsLqbFiOXUKf5beuQ42t1P6PcmPk54PZpeWJkOyF4nkmjXCkBfD+
         2ZY4m7WO5/G+tcHtHMFKCINOn8rhnSyJTH6tRgjENNGlptsqawRBdtP+LmKC53Xvrydd
         yNOw7IWP8u65pwn4cRxpTsIfFrxVLpICwDs5J/eJ90w56wNEGUpfDfAdTjn0nPm31C3q
         JE0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=cbjH/YzS/cHpwni/sNZuqoWCKcY0rwJlGLwwcpvzbbg=;
        b=rDB8ZLNeo/cDL1dp/oHo2+1xI4wqg3UL2XN/Tt4l8+SqdBgO7nJXN9NolYAKByuD+Q
         W99mmqHGtv2K3TUaIlO0crDBgZsCx4og2lMJnTxVAiQns+7ci+JNrE9gMDJZuz6zsMx6
         GL3tVGv+/BROqLHIWtzUlkoCL2mC3cDSGCwyQuyxxJEuMtcAwxYN8JhSsbfyieLDJ31J
         ME4dKW0g88yVlilqx32Rj+xMV4d9vYR7rbjhQChUKEdd1K4NEcR85B5mlm1nM0MX368v
         MuRJ/WA9A3ndmn8gSmsSw+nAARsl+wx5x8pqllsOrvYlbitIPL8sH8dZuTjqZnm9su0Y
         LBGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.165 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0165.hostedemail.com. [216.40.44.165])
        by gmr-mx.google.com with ESMTPS id z67si4870233vsb.1.2019.08.10.12.32.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 12:32:06 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.165 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.165;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 40B2E18029128;
	Sat, 10 Aug 2019 19:32:06 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::,RULES_HIT:41:355:379:599:800:960:967:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1801:2393:2525:2559:2563:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3165:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4605:5007:6119:7903:8660:9025:10004:10400:10848:11026:11232:11473:11658:11914:12043:12114:12296:12297:12438:12555:12698:12737:12740:12760:12895:13148:13230:13255:13439:14093:14097:14180:14181:14659:14721:21080:21451:21627:30054:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:26,LUA_SUMMARY:none
X-HE-Tag: spark10_4c70ab692da2a
X-Filterd-Recvd-Size: 3006
Received: from XPS-9350.home (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Sat, 10 Aug 2019 19:32:05 +0000 (UTC)
Message-ID: <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
From: Joe Perches <joe@perches.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, LKML
	 <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Date: Sat, 10 Aug 2019 12:32:03 -0700
In-Reply-To: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.165 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Mon, 2019-08-05 at 15:11 -0700, Joe Perches wrote:
> A compilation -Wimplicit-fallthrough warning was enabled by
> commit a035d552a93b ("Makefile: Globally enable fall-through warning")
> 
> Even though clang 10.0.0 does not currently support this warning
> without a patch, clang currently does not support a value for this
> option.
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=39382
> 
> The gcc default for this warning is 3 so removing the =3 has no
> effect for gcc and enables the warning for patched versions of clang.
> 
> Also remove the =3 from an existing use in a parisc Makefile:
> arch/parisc/math-emu/Makefile

Hey Linus,

What does it take for this sort of patch to be applied by you?

> Signed-off-by: Joe Perches <joe@perches.com>
> ---
>  Makefile                      | 2 +-
>  arch/parisc/math-emu/Makefile | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 5ee6f6889869..a3985421fd29 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -845,7 +845,7 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>  KBUILD_CFLAGS += -Wdeclaration-after-statement
>  
>  # Warn about unmarked fall-throughs in switch statement.
> -KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough=3,)
> +KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
>  
>  # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
>  KBUILD_CFLAGS += -Wvla
> diff --git a/arch/parisc/math-emu/Makefile b/arch/parisc/math-emu/Makefile
> index 55c1396580a4..3747a0cbd3b8 100644
> --- a/arch/parisc/math-emu/Makefile
> +++ b/arch/parisc/math-emu/Makefile
> @@ -18,4 +18,4 @@ obj-y	 := frnd.o driver.o decode_exc.o fpudispatch.o denormal.o \
>  # other very old or stripped-down PA-RISC CPUs -- not currently supported
>  
>  obj-$(CONFIG_MATH_EMULATION)	+= unimplemented-math-emulation.o
> -CFLAGS_REMOVE_fpudispatch.o	= -Wimplicit-fallthrough=3
> +CFLAGS_REMOVE_fpudispatch.o	= -Wimplicit-fallthrough
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel%40perches.com.
