Return-Path: <clang-built-linux+bncBCS7XUWOUULBBIUN2L2AKGQEX7LY7OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDD61A68EE
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 17:34:59 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id f85sf10853196ybg.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 08:34:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586792098; cv=pass;
        d=google.com; s=arc-20160816;
        b=e+Qt1pg9B27azxXcB6jCwhjcM5eAtEupO8TkG0zM+oc9aMBHiR7vlYC2mDH7HgYcpE
         ASvdls/dw7amJFYtEVTv2zrHUU8vCRjSeWCuLZ0O3LgeYB7jZ8B76ElhBhbN8oghxFZQ
         ykAO1zQlZ5I6bvi2uQECfiY9+otZbxMJAw+DQnQxFoeoNJaER8tRFjc05aN1A8HxFwcK
         ldm0A4vllSbgpdwFHScRKMbeKLGPTCYBC1K9/loNC3VZSI+dZizX7djTi1XByjnY8ol8
         f8EKmNsib8s7ua82SWNoNpK/PbvQOWoNyZVWLGtAl3fn+yUjhxOQ8JkbyfUVPYeVcrkL
         ydwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=qAU/uqv2oAe1//3kjtQ6vt8oPoDqcaTtkTIILtEWSgE=;
        b=xnHa5rti8mVnkq64M9Lo2xP4qjzGMsLUp0IrT+fKeoZCufCpq1KcJm57oxHKtndysq
         ggMq6E9v9/R0pRyhxZrsXOCjOaH37cP0fCw6On+1TX34i3oluvs4XlKxo7CagwXNKLpZ
         85JR5THPvZja2C3AMg94Le4u37mXOKSd1J4ozOB8ruNb6SjZOZpr2CH6Ce28S/eDuC3/
         LvGshRo0YN1TOJ+6kmF9YzXni35Wed7Cn3399y0xUOLp2AcBdIOeTYKX4NEu/58QkB1f
         2QOJzvcIBpxWld3Ptpfg5tLdT/yHir/hw1BUYH5PLtxHG3OeqwecOgcixpvdOSSmqprj
         drRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o8Ku15Vy;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qAU/uqv2oAe1//3kjtQ6vt8oPoDqcaTtkTIILtEWSgE=;
        b=m1buRLWnysZxwUm8sFOHGISyF1HgRTVp+S7bDKBRKkQEmbhCACDQgqd3TCRmHbtFNI
         ww3cHJZrfcEiZKt73YpXgSIRY7e7i1pUvUyRDCjlqrnCVPyk9HtW+nHYi68sXNq6ILOZ
         FDMQNeBb9VhgHb/3P0/sAooYp3MNs3JcCyppMsiPbdtHau4mr6ZBCRJ8fJm8+aZLSApC
         rltNuH+yPs0VEadZ/x0X5pdDsmwt4GhvcHScuGm3CaLEmccvzwfB5mAD/qlIHd0Uyyt7
         mPW/uTCXIcXsfw+GOmyrv3LDRYM4nx2+sIzyEhFs3KNiCPZyuvr0Q5sqLXpzel69Yaga
         1l7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qAU/uqv2oAe1//3kjtQ6vt8oPoDqcaTtkTIILtEWSgE=;
        b=Cs5kjRFssPm3uWojYjQLK9tZnzBIQZ6PyH8cPfvKFDSqwxzJmKdYG8NGfCotTeZP2p
         1kqHuUhfu85mIci5DQFwY6iAi4nXswUJs9CTEVWpCcWCtm6P6Zhn5NL3G/NTu2gFEu/o
         YPqSornbmY5RtBJmJeE7lt7RGJmiDV3Vq49DLMpIzKQWUdv2UmpsnHZk+5jrPYiETN9c
         voqAF9Le0UUTCRU1Iau3Pf11IeKQOt++yoQ5pBrylGqcEzg7L1/W1BVp6DP2rbFa4oH7
         quilbdQw/O0CMh2HNyJCqCYwzdBphSkLP6G+hZMqff9ebIzZITg8iaSat9xSxBMPQnkp
         Pv3A==
X-Gm-Message-State: AGi0PuYFy+9tMuQbnfh12yQ1rYgr+zfASwjHDo1Ok/r3VIj893NDwOeC
	Lqg35UQ6UT1SPJLQiqdpSho=
X-Google-Smtp-Source: APiQypJlYNyGzNi5Jnlqc1r1phx7VEs2nUHYgCs++sT4JxgzJMB1Vg3mEuyuolrsJWZyOs1Jon2TAg==
X-Received: by 2002:a25:d30f:: with SMTP id e15mr28571164ybf.187.1586792098266;
        Mon, 13 Apr 2020 08:34:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cc4f:: with SMTP id l76ls138539ybf.0.gmail; Mon, 13 Apr
 2020 08:34:57 -0700 (PDT)
X-Received: by 2002:a25:2e0b:: with SMTP id u11mr29868335ybu.385.1586792097878;
        Mon, 13 Apr 2020 08:34:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586792097; cv=none;
        d=google.com; s=arc-20160816;
        b=YpklUDaaQDUQr7aCR9AIglVmKc1FHVp9pMyZEm9StrE+QwE2U6X14i1V59qVdkQQdR
         K+WA/O+IzOlYFrqa0d+mjI8cPMJ6p1PFvDsputd3eulD+j0VUgNqBJqgSodu5nZcuV9O
         9oD10iUpFeKCKIzeGa5cLuWmZiDyAS+4cRGCWcfsoVZQFpBBH1qFxgRHHY0cDdUR9PoP
         dGIA55SV2Rz36Zb5P6w0uhet9JByjbKK3gHJrRYba1VPKLgZx5J1hls9q9trqi8tsSiV
         R7y5vrrOgJFlZC+ZvZQhSOB+nAcnvmpD+cjfOfeIerc70DAs7SgYEIn0NenGQTnXjtWB
         OKYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ghs4l4nI57la7hO/6EnhN56epQlSYo2HQcGuqn9At3E=;
        b=d5rglwL8pdNMP9edl/akjfJuq31czNCTtgwv+J62zk0hujFh/CzqhdNcy9MLFiGzgw
         0q9TKmaCnhnXZBpRrWKaXUq8fdiyk4tGGnbLwDrJ7cT9lbiPiaEjy7sOzwC8MaxXWMnO
         1ZmiRowraFMEUIGgqJ241qnq682qgYeWWkcOb/2pFH3mu8DVSc1PvYUnQbH6FXCrnypw
         S/JtKPClEsGn1CvZ19MQA9oHKisEA66Lvbt7D//cAXHGmhgVkSeKdnsz1gSDK1hMIbgm
         T2I1Y99zm/1vnrrNLP/Lod43Y0a27Og6Ilg8eRaKlwtiImGfDxVClZHjTVuCLJZjPCv9
         wgbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o8Ku15Vy;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id s10si810836ybk.0.2020.04.13.08.34.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 08:34:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id ng8so3971868pjb.2
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 08:34:57 -0700 (PDT)
X-Received: by 2002:a17:902:ac85:: with SMTP id h5mr17038570plr.76.1586792096747;
        Mon, 13 Apr 2020 08:34:56 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id q12sm8205213pgi.86.2020.04.13.08.34.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2020 08:34:56 -0700 (PDT)
Date: Mon, 13 Apr 2020 08:34:53 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
Cc: "Maciej W. Rozycki" <macro@linux-mips.org>, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Borislav Petkov <bp@suse.de>, Kees Cook <keescook@chromium.org>,
	Heiko Carstens <heiko.carstens@de.ibm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] MIPS: Truncate link address into 32bit for 32bit
 kernel
Message-ID: <20200413153453.zi4jvu3c4ul23e23@google.com>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
 <alpine.LFD.2.21.2004130736410.851719@eddie.linux-mips.org>
 <20200413153205.4ee52239@flygoat-x1e>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200413153205.4ee52239@flygoat-x1e>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o8Ku15Vy;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-04-13, Jiaxun Yang wrote:
>On Mon, 13 Apr 2020 07:59:29 +0100 (BST)
>"Maciej W. Rozycki" <macro@linux-mips.org> wrote:
>
>> On Mon, 13 Apr 2020, Jiaxun Yang wrote:
>>
>> > LLD failed to link vmlinux with 64bit load address for 32bit ELF
>> > while bfd will strip 64bit address into 32bit silently.
>> > To fix LLD build, we should truncate load address provided by
>> > platform into 32bit for 32bit kernel.
>>
>> Reviewed-by: Maciej W. Rozycki <macro@linux-mips.org>
>>
>> > diff --git a/arch/mips/kernel/vmlinux.lds.S
>> > b/arch/mips/kernel/vmlinux.lds.S index a5f00ec73ea6..5226cd8e4bee
>> > 100644 --- a/arch/mips/kernel/vmlinux.lds.S
>> > +++ b/arch/mips/kernel/vmlinux.lds.S
>> > @@ -55,7 +55,7 @@ SECTIONS
>> >  	/* . = 0xa800000000300000; */
>> >  	. = 0xffffffff80300000;
>> >  #endif
>> > -	. = VMLINUX_LOAD_ADDRESS;
>> > +	. = VMLINUX_LINK_ADDRESS;
>>
>>  The CONFIG_BOOT_ELF64 cruft right above it looks interesting to me,
>> never have ever been used.  We have had the current arrangement since:
>
>It confused me either.
>It's only used by SGI so probably it's time to rename it as
>BOOT_SEG_ELF64.
>
>Wish someone could clarify what is it.
>
>Thanks.

Agreed that -Ttext in

arch/mips/boot/compressed/Makefile
100:      cmd_zld = $(LD) $(KBUILD_LDFLAGS) -Ttext $(VMLINUZ_LOAD_ADDRESS) -T $< $(vmlinuzobjs-y) -o $@

and a few other places are brittle. They need to be replaced with Output Section Address:
(https://sourceware.org/binutils/docs/ld/Output-Section-Address.html
https://github.com/llvm/llvm-project/blob/master/lld/docs/ELF/linker_script.rst#output-section-address)

-Ttext changes the address of .text . This can lead to the change of the
address of the text segment (RX), but this is not guaranteed (many
sections can be placed before .text and they are not affected).
See https://reviews.llvm.org/D70468 "[ELF] Error if -Ttext-segment is specified"


Reviewed-by: Fangrui Song <maskray@google.com>

>>
>> commit 923ec3d20eef9e36456868b590873ce39f17fe71
>> Author: Ralf Baechle <ralf@linux-mips.org>
>> Date:   Wed Nov 6 22:16:38 2002 +0000
>>
>>     Define load address in linker script instead of relying on the
>>     deprecated and notoriously unreliable option -Ttext.
>>
>> and previously `-Ttext' was used with this script anyway, though not
>> very long, as the script was entirely ignored until:
>>
>> commit 7a782968041ffc4c2d89816238e2f8ea5cceddba
>> Author: Ralf Baechle <ralf@linux-mips.org>
>> Date:   Thu Oct 31 23:54:21 2002 +0000
>>
>>     Merge with Linux 2.5.36.
>>
>>   Maciej
>
>--
>Jiaxun Yang

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200413153453.zi4jvu3c4ul23e23%40google.com.
