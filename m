Return-Path: <clang-built-linux+bncBCR5PSMFZYORBQHTVL3QKGQEMSPYF4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 515001FDA8C
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 02:48:02 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id 137sf3069788pfw.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 17:48:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592441281; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iprxf/N8hJlXhknlZJlKC4BMSk5SITZ/8MYjJGG9VU3V+YDyF+w/QjCzjKg5+6i1ru
         HAtyyQNkTSa8lkzdh9wXbt+NXO3TsHblkjqLDcmt6qYPT2Akff8V2DpvR6On3eBqwQzA
         EPBGefxYtn4DLNDEGODfropOtZxsxyXJnQq+vrkC0zdsWz9VE8Dx1uZj1zKKII/MoawV
         JPIsOg7CLXXElojrKZ7U3GP5ohkwRoTWkGtrJGa8UkvJ9rGrYayQFkMNYWMamrW/P3H5
         iJfLcKblg8RPWZbBVhCVdcRx8McAmL8+caGv0hMy6wki6IXOl5rklZZ8v0uwlHtavuiS
         06fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=G0B2fKl+v28+LzUp3hQ+ucVWlApU+LQLvzzlnP7G8D8=;
        b=Xx8g4wMkrwg/hazKXSaEBlV4UKryU1mcJoW2cK+jeXK+o3cr7Z+e5yUXa0NuPaYCBx
         1Mu97/Dmk4qxSq3AL1X5AH1q1mjS0sv3s6Iu/L+9YfzxrMRo8K1qIzHyJjYDKVsQVBT/
         hOxluYaW5R487tmbyi9pm7tnCsD8Z1lAFFIVh0XdQmhIsw/kI5FJV0sGZE4Z/3Ovx6HG
         9QBDldHOPFRMhxBsxuTd+7ICFsLZk7KsqAIyTMkBonBzJo8ho7Y801NBvwhD4niXsVrn
         fc7T4JtTz0h9Y/zUJbCrXgetvoC1bhQnZG5+/exvr0471Fdph5z/feVnZY2e44WooGVt
         I4JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=SbXjA23Q;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G0B2fKl+v28+LzUp3hQ+ucVWlApU+LQLvzzlnP7G8D8=;
        b=nMgaOPu5oXGoq/YDoURpMcWzRmkQ5EGVfubb6f3t1rXfByhUVZk4x+x1NF5LTeZO6d
         82vtL7rHNgUsYuGIoetp1fqWlKaIGapkhyXRnXtHzgHl0DUZrApr6/t8LxQcSc0Obvsn
         CCLVrC9AfSCoKp5/LYCbwmCbGtsnWXh2i8mseKcwTIY2fqKZxIrDHFwmFzOf+KVMZ8Xj
         W+Bg/96w17BtvK57kdPVrDQSopf0xVmFn3ct3kYXXnX4G+ELq2F8/c1hVe5D3d5wHb9G
         St1catFPxDihGG5fpHu+8Z7i34RGwhEdd3D71tZO1mublRKcFNvQxCxn5AOqlZ+5tFGS
         HtFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G0B2fKl+v28+LzUp3hQ+ucVWlApU+LQLvzzlnP7G8D8=;
        b=ZZ7qRTcKKrLJozB/GNowyuq1059UMpE5Xx+1SNmWUQw2M5YZa1b7iZduWMOg6Yy3I6
         mL0vdL6oA9y3CwAtgrEbaF6v5ajGtxiWxY2AlkUYb+HB51yKMJ7rTIVmZhOm88ldwxjP
         pOXXj1X5/sREP5LHuySQV+5jG0HJBjOiN30WAg710NNGlNPON42QwptqGMxN4fP0DytM
         5ebNTCNmv8Ao9A+JfHVaFlmdQSRH6bsTZD1Rrcnftwy3nzSrqjHZ5MTELhjQI2F3/GfZ
         zPy2h6RrqeMrPJ7K4/KiC7lMk7DvWZzDnXJ29GAilwbLpV8Y2vEiJkRTml84wxIrr1I8
         vdJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QnBmRrQIZn8thzNZ3rdF5ZXn6zC/hdBglH0uNmi8rJv8bWcql
	OWzwMDEkMzvh7Ipc/SXb5no=
X-Google-Smtp-Source: ABdhPJyTV8ijwoIX7Y7JPnyiiRod8DbtBEGEyx0Ybq3UPel3R/Sz7H5SEqXOt3xqHHG1LN7w1GAmDw==
X-Received: by 2002:a62:7e95:: with SMTP id z143mr1305532pfc.108.1592441281043;
        Wed, 17 Jun 2020 17:48:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:46cd:: with SMTP id n13ls1040324pgr.2.gmail; Wed, 17 Jun
 2020 17:48:00 -0700 (PDT)
X-Received: by 2002:a62:1a45:: with SMTP id a66mr1297938pfa.54.1592441280516;
        Wed, 17 Jun 2020 17:48:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592441280; cv=none;
        d=google.com; s=arc-20160816;
        b=W2FEfnjwSw/nEJR9UFhw+kGkESrM0UtT/sOkJZnpXZt7XEjwXsoZF0neyeki3v3OnD
         jz7xEqjeHT3vLO37ae5LrtS5bpEq+aX23YfezWXOgScZGOjdwC2VYSYJy5hbGOxJ82WE
         c9/kpkfbRk/myPtpUdZ6x5Y6BqfukwsHUi+dAOs1yrha3a42lNiohUmhJgEiMSCzNoSm
         HBq8xupOiYhTAZ8KAQSY2JPQMKkA9peSH8Lu/U5zmLniR8+Rbj/V79nM1nHgYN3UXqQP
         fwYOnHAjLxptSjN5DJY58omHghkd9n3fBwR2gjjqsAd7V+ryBu/Fuo2ISntd5g63zBn+
         5HRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=BOadOz7W4mZCHvrXVbN8Wv7CzOZlYR+r7opG6qMwG3M=;
        b=P2JR8pyy1Vw7HUmSRxmMQJdI5iPyZNdBHeMmM0fGSqZTXww9X3S2/xuHReStkFEKgw
         VKCFxjajvx7RwMc31wWAfqHPKxy5bNC/fyuWML4Xhs5dn405212JbHnfe4E5e4GXq7Yq
         VeRklU+KFVQ9W884AM8hdetch7QDWoLvPK7cWw/x1pJQkItqEw/G+Ubmr34+nImXtl0q
         62bYBDdD5AQ0v4EbO8xQGHjkbpjXHnK10sd+kyUrCOWy2Yp8r6s0Xad43eWSHMT9/hyL
         WV4BP4EUpAaVVfs2H8dQjGk2e3G6C5xyolXaUwjfvyCJpy+mxVFxXMllSZHrRLS1CvLn
         bR7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=SbXjA23Q;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id mt8si402953pjb.2.2020.06.17.17.47.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 17:47:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49nNZg50TZz9sSc;
	Thu, 18 Jun 2020 10:47:55 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michal Simek <michal.simek@xilinx.com>, Nathan Chancellor <natechancellor@gmail.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Arnd Bergmann <arnd@arndb.de>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
In-Reply-To: <CAKwvOdnkcjLGay0jdQ77kHTmKhE56F9jvzh01XWwEE8rjbhLAA@mail.gmail.com>
References: <cover.1590079968.git.christophe.leroy@csgroup.eu> <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu> <20200616002720.GA1307277@ubuntu-n2-xlarge-x86> <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com> <20200616181630.GA3403678@ubuntu-n2-xlarge-x86> <50fb2dd6-4e8f-a550-6eda-073beb86f2ff@xilinx.com> <87bllidmk4.fsf@mpe.ellerman.id.au> <878sgmdmcv.fsf@mpe.ellerman.id.au> <CAKwvOdnkcjLGay0jdQ77kHTmKhE56F9jvzh01XWwEE8rjbhLAA@mail.gmail.com>
Date: Thu, 18 Jun 2020 10:48:21 +1000
Message-ID: <87tuz9ci7e.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=SbXjA23Q;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nick Desaulniers <ndesaulniers@google.com> writes:
> On Wed, Jun 17, 2020 at 3:20 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
>> Michael Ellerman <mpe@ellerman.id.au> writes:
>> > Michal Simek <michal.simek@xilinx.com> writes:
>> <snip>
>>
>> >> Or if bamboo requires uImage to be built by default you can do it via
>> >> Kconfig.
>> >>
>> >> diff --git a/arch/powerpc/platforms/44x/Kconfig
>> >> b/arch/powerpc/platforms/44x/Kconfig
>> >> index 39e93d23fb38..300864d7b8c9 100644
>> >> --- a/arch/powerpc/platforms/44x/Kconfig
>> >> +++ b/arch/powerpc/platforms/44x/Kconfig
>> >> @@ -13,6 +13,7 @@ config BAMBOO
>> >>         select PPC44x_SIMPLE
>> >>         select 440EP
>> >>         select FORCE_PCI
>> >> +       select DEFAULT_UIMAGE
>> >>         help
>> >>           This option enables support for the IBM PPC440EP evaluation board.
>> >
>> > Who knows what the actual bamboo board used. But I'd be happy to take a
>> > SOB'ed patch to do the above, because these days the qemu emulation is
>> > much more likely to be used than the actual board.
>>
>> I just went to see why my CI boot of 44x didn't catch this, and it's
>> because I don't use the uImage, I just boot the vmlinux directly:
>>
>>   $ qemu-system-ppc -M bamboo -m 128m -display none -kernel build~/vmlinux -append "console=ttyS0" -display none -nodefaults -serial mon:stdio
>>   Linux version 5.8.0-rc1-00118-g69119673bd50 (michael@alpine1-p1) (gcc (Ubuntu 9.3.0-10ubuntu2) 9.3.0, GNU ld (GNU Binutils for Ubuntu) 2.34) #4 Wed Jun 17 20:19:22 AEST 2020
>>   Using PowerPC 44x Platform machine description
>>   ioremap() called early from find_legacy_serial_ports+0x690/0x770. Use early_ioremap() instead
>>   printk: bootconsole [udbg0] enabled
>>
>>
>> So that's probably the simplest solution?
>
> If the uImage or zImage self decompresses, I would prefer to test that as well.

The uImage is decompressed by qemu AIUI.

>> That means previously arch/powerpc/boot/zImage was just a hardlink to
>> the uImage:
>
> It sounds like we can just boot the zImage, or is that no longer
> created with the uImage?

The zImage won't boot on bamboo.

Because of the vagaries of the arch/powerpc/boot/Makefile the zImage
ends up pointing to treeImage.ebony, which is for a different board.

The zImage link is made to the first item in $(image-y):

$(obj)/zImage:		$(addprefix $(obj)/, $(image-y))
	$(Q)rm -f $@; ln $< $@
                         ^
                         first preqrequisite

Which for this defconfig happens to be:

image-$(CONFIG_EBONY)			+= treeImage.ebony cuImage.ebony

If you turned off CONFIG_EBONY then the zImage will be a link to
treeImage.bamboo, but qemu can't boot that either.

It's kind of nuts that the zImage points to some arbitrary image
depending on what's configured and the order of things in the Makefile.
But I'm not sure how we make it less nuts without risking breaking
people's existing setups.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87tuz9ci7e.fsf%40mpe.ellerman.id.au.
