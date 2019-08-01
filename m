Return-Path: <clang-built-linux+bncBD52JJ7JXILRBLWNRTVAKGQETQT6BBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id E44817E163
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 19:51:43 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id m25sf65222333qtn.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 10:51:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564681902; cv=pass;
        d=google.com; s=arc-20160816;
        b=AdN7voFUdQxCrbXyzmpaWn7hcYIUYKk4G6ny5yvNnZ8Jg4NFXxJzR/rifbK/oVbjBi
         FFMMQFzwyG4XBr2lRRPFwAohxvD5SVoqEy1MBZpxGX/lTeNnsVKcA+qLk4YgeralkTlz
         r7wvB8F9uqgztj9mBsAGSID9UNiMW0EesE7R76jQhTZdvL8xmT07Lj8yqE2o8juHXRiv
         ThPaXFNN1yFLPuDlaFRsAATU1JdNoTlNg2DqMmLvSFV3W6R3uRPEMa0VyYjUNnZr8Y/a
         XcMfN/ztZ+wxhX5E+F6xWEABUTbcZPqLoJ3Cosl75CDLACNSvFWH1rnMHqmP/h6tUkLk
         cMEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jJjXwdSuNLO1QsZ/h+2e8UQRyVyUCb9shVeH/4UKjqw=;
        b=NvZa5sgStO9/l0CwCeyHwFkLXkRnu0tw3Ic9jSGL4z2ns22Co30OxG031+txFawZyp
         VS93ZNETER/KpvUYLbdSxc9G/2ZCRz9AqIh8ViCvxs2PkY5UCzMWJyCjUxtDVY+WKTaF
         jXK53tSlFovW5FCc9jnNEUF3eZ2KLzmYjdyqjS669P9/39BH3V2EqMu9kQ3UUf5orvyv
         J915DadcTJIWgbnE8SB5GkLqmC7d3fo67/cXJjAe4CdRKX/eJbbs+po1bTHtW9cqxXAl
         lMvYaQrxqhvjklhc87h7ekTBNB27ZFxeXKxQtoPIaiTIKEkAwk8R0LM3voNmpf1DL6at
         FnaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QGm304Su;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jJjXwdSuNLO1QsZ/h+2e8UQRyVyUCb9shVeH/4UKjqw=;
        b=OY/CSa2zrXOkthRqy5poLASKHiEzRUp+hnwi/5aq5NNsvOqQcuSU31IRTAszn3L+Q/
         zLB7PLfKKGdjy6Umbq7qG3dVWOSDcyAlPQeEEOgM58m9te3wVQYqc7Sfu8r9V2XHdy5g
         BWxlffthi/RAUuIDGsuD2rH6w7i5mpf+RWVu5rTpCRtaezSVK6wAB7R3woLkozRFa/v/
         TN7/m3KHTX6IJRK3vRxtndCSwDB8CbzUswrUiqIh2MnYxaRjn6Jr+cnC78rKzTJFeyTX
         HNG/vXg6qrxQd5BbEssYPwkiyAbksqF4sBRw+iODPQ20zeghCCyFlUQJ7GLTLKrS8OnG
         IPxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jJjXwdSuNLO1QsZ/h+2e8UQRyVyUCb9shVeH/4UKjqw=;
        b=qmqRXIY5I2FQRWSzjDUOrGrUM04JX5DxMDWbeu4pufvDLK3O0izOpefx6BqJ4ZaBAd
         pp2jEDJTl3mFdPTbONnguGrKpfMUpG1frFOYaTS5g7qnlvIM9MG1WQt/7de97WhSv54H
         kNXMHchX3wLSZ6Jd3eoT2Wf2L2jRDlcO4ABjSrgfIs3J7PFdv1PLLw0PLf+mxrToohDi
         +sCb3g+kgjXw3jT4i7AxPs401bCPqk9IKbEdGiZNRqLJGjq0P05JDkLyUDmgI3N4M50T
         EZ9uq9IIcHVoHKrN9SrYLlcz5UEzHM49LhmcvW+6QO39U15EwzsqFOmydSTmKx9w1H0f
         UmBg==
X-Gm-Message-State: APjAAAWgs2NztP8dl+tJMrMXyeqY/yY5Dh/PBZdWBvDXQS1Nwg4FrRTZ
	n9fIiWJ2k6DMskgnrU9TpBk=
X-Google-Smtp-Source: APXvYqylimtaGV8ZvhIpdDyKP6rnN1LCzC3XRBwmwboo/ADQ4EqCWhWr6BdKiRds9E7g50lJ9HYfyQ==
X-Received: by 2002:a37:8145:: with SMTP id c66mr83029425qkd.459.1564681902858;
        Thu, 01 Aug 2019 10:51:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7906:: with SMTP id u6ls675113qkc.11.gmail; Thu, 01 Aug
 2019 10:51:42 -0700 (PDT)
X-Received: by 2002:a37:660b:: with SMTP id a11mr83882470qkc.342.1564681902655;
        Thu, 01 Aug 2019 10:51:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564681902; cv=none;
        d=google.com; s=arc-20160816;
        b=FuYp5EwY3iIV6DOa4ABVeRbDgvi/ZonrDsKRKkb2p/OJZlp60p5AD6g4JcCPYYHpXp
         tepCtyCEMFLDgVsFjeDGkLfljWJC7lVsH1/+TpRAT+Bb/GCTqQsY73oWUA6YeNO4egzh
         sKLxgpmAOEM9n57wOY7VMk5GxMq2ZGkPGwVtLARaMZk/H6KY4uVwQygSYddtymDagp9h
         6fzTE7c2UgLfIDBnYU76KW56yibZSe4QO9uSCWfAU0KnH5tioBYvqGtK2ozxVIex/ul+
         dlwE8iwS8wGrOmbmqsfDS/yBCwUWnto4y4HByhKcoFT+vyK8ddbd8+epsUirRM+zSm+s
         H79g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TZhU7oDbGIucTFa2/0PHRnSvNzjHQYp3wll5K+i26zA=;
        b=jML2h3kNIKKHPB6GsNhJI86oyBHcJBcNBQw6aF7+yV+8piuXGBGaUIHa/Zj33ZEF8c
         Sji0lwfxMiySro5IY1yxGsRVqg6xlEuc2H5apR/NFh8feQRvUwVjukHZX3ypm0Ebv+1R
         8BMb3YSrlwz/KXmbt9ko9ImQ3m0exmMSbT0xubaJmKL6FJXxsV964xEnzy0zGrogonw3
         2S/awCqUNCB+p7BshP9P7MZItkN2vhA0we8mAGdCmfCXXJtRd2tU875jfei1ZjxjAG6U
         9UGNNLKtXb+iP29s0e6aULiLu0yz3DFDqGl7kPlieqWlQPQuFL5YYgVlkxsBU04q5Qnl
         ZXXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QGm304Su;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::941 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x941.google.com (mail-ua1-x941.google.com. [2607:f8b0:4864:20::941])
        by gmr-mx.google.com with ESMTPS id c23si2380252qkl.5.2019.08.01.10.51.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 10:51:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::941 as permitted sender) client-ip=2607:f8b0:4864:20::941;
Received: by mail-ua1-x941.google.com with SMTP id j2so1867862uaq.5
        for <clang-built-linux@googlegroups.com>; Thu, 01 Aug 2019 10:51:42 -0700 (PDT)
X-Received: by 2002:ab0:6198:: with SMTP id h24mr18873126uan.41.1564681901893;
 Thu, 01 Aug 2019 10:51:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190712193846.174893-1-pcc@google.com> <20190801011842.199786-1-pcc@google.com>
 <20190801120516.pe6vzl2bmko6hhk6@willie-the-truck>
In-Reply-To: <20190801120516.pe6vzl2bmko6hhk6@willie-the-truck>
From: "'Peter Collingbourne' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Aug 2019 10:51:30 -0700
Message-ID: <CAMn1gO5nMo5973kn12Cotq3B54dEz7NoFo9tU_xJBb+NUd8dOA@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: Add support for relocating the kernel with RELR relocations
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pcc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QGm304Su;       spf=pass
 (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::941 as
 permitted sender) smtp.mailfrom=pcc@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Peter Collingbourne <pcc@google.com>
Reply-To: Peter Collingbourne <pcc@google.com>
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

On Thu, Aug 1, 2019 at 5:05 AM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Jul 31, 2019 at 06:18:42PM -0700, Peter Collingbourne wrote:
> > RELR is a relocation packing format for relative relocations.
> > The format is described in a generic-abi proposal:
> > https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
> >
> > The LLD linker can be instructed to pack relocations in the RELR
> > format by passing the flag --pack-dyn-relocs=relr.
> >
> > This patch adds a new config option, CONFIG_RELR. Enabling this option
> > instructs the linker to pack vmlinux's relative relocations in the RELR
> > format, and causes the kernel to apply the relocations at startup along
> > with the RELA relocations. RELA relocations still need to be applied
> > because the linker will emit RELA relative relocations if they are
> > unrepresentable in the RELR format (i.e. address not a multiple of 2).
> >
> > Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> > with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> > compressed (lz4).
> >
> > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >
> > Notes:
> >     Changes in v3:
> >     - Move Kconfig/Makefile logic to arch-independent location
> >     - Tweak CONFIG_RELR documentation to remove "currently"
>
> Excellent, thanks. Queued for 5.4.

Thanks.

> One more question: is there any benefit to supporting this for loadable
> modules as well?

It looks like there would be, but it would be much smaller than the
kernel itself, as well as being smaller than the benefit of building
modules as shared objects instead of object files, which as I
mentioned to Nick is a prerequisite for the linker to be able to emit
RELR relocations. The kernel appears to proportionally contain many
more RELATIVE relocations than the modules, probably because of
__ksymtab which is almost entirely RELATIVE relocations. Shared
objects should help significantly with binary size because the linker
would then be able to statically resolve relocations between sections,
avoiding the need to store them explicitly in the module, but they
have the downside of requiring PIC which could hurt performance.

As a quick experiment I did:

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index d3776c945a173..015898faba590 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -65,7 +65,7 @@ endif

 KBUILD_CFLAGS  += -mgeneral-regs-only $(lseinstr) $(brokengasinst)
$(compat_vdso)
 KBUILD_CFLAGS  += -fno-asynchronous-unwind-tables
-KBUILD_CFLAGS  += $(call cc-disable-warning, psabi)
+KBUILD_CFLAGS  += $(call cc-disable-warning, psabi) -fPIC
 KBUILD_AFLAGS  += $(lseinstr) $(brokengasinst) $(compat_vdso)

 KBUILD_CFLAGS  += $(call cc-option,-mabi=lp64)

and built a defconfig kernel. I then did:

$ for i in **/*.ko ; do ld.lld -shared -o ${i}.so $i -Bsymbolic  -N
2>/dev/null ; done
$ for i in **/*.ko ; do ld.lld -shared -o ${i}.relr.so $i -Bsymbolic
-N --pack-dyn-relocs=relr 2>/dev/null ; done

That gave me 494 out of 525 modules that can currently be linked as
shared objects, and 491 that can be linked with RELR (looks like
there's an LLD bug preventing linking the other 3). The binary sizes
are:

$ cat `ls  **/*.ko.relr.so | sed -e 's/\.ko\.relr\.so$/.ko/g'` | wc -c
279730136
$ cat `ls  **/*.ko.relr.so | sed -e 's/\.ko\.relr\.so$/.ko.so/g'` | wc -c
134944384
$ cat **/*.ko.relr.so | wc -c
134617216

So that's roughly >50% size improvement from shared objects and 0.3% from RELR.

Peter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMn1gO5nMo5973kn12Cotq3B54dEz7NoFo9tU_xJBb%2BNUd8dOA%40mail.gmail.com.
