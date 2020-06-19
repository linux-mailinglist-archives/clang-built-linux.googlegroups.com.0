Return-Path: <clang-built-linux+bncBCR5PSMFZYORBR5WWL3QKGQEYNBXKTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6BD20076D
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 13:02:33 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id w5sf6614055pfb.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 04:02:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592564551; cv=pass;
        d=google.com; s=arc-20160816;
        b=c0n7p/E5xQdUGPxusQc3dHLuFd49YIfWiJmS9TKwccQM1Bd2bxPOPX/pRB5BP/d07q
         +gPJpbIV41GPlK1us2orsubLFDOcvwEsW2HtJRPXGSApDewHO70BCN2hElSDRcQiQ6Yi
         JknHFNO/p0vsJ+f98DIU4WymfqZwAiaWWFu/ZsyVqPb8UbMcfSYJWq1np101+Q7Tr5/m
         UvvqXVhqtxbdibzb7esg4DtLPgXgGKGpXjv7F9ut6XlLfq8/4apjYPBYYs3duCPiwRiX
         O4gRRGV+LDkFtcdky+jqf/jiETwrp5zQdw/MRwGOEVqVADP5WIwQsdoVK0OycNSUOAeb
         I26w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=NKFSFxc8PAME2OFKbN8pOsz2B8aTi8n9+vjda6THXZo=;
        b=HVCyWat5vXQEfcLbBcLQO2rktbawtsPCJcK3+hqCr05vQQ95Db7e3Zhwj5vVeOER7w
         hsK5gntoSSJ9fjGXGj6Cmh1dyExIx2MTPgG3SAu0VqoCDFX1XJ2m6o5sNZVAyBaOBL9j
         oV8/3IwLDIgWq21fbFghbXvfMlVGy7n1Qt6GP9Bs3ZhNwIqQf/jxALjUg2DBIKdBt/RF
         36bfbWKVfBJ++r7OaoAp5NVnqw+3WLmzNOfHCC/ThIUPoo6Nb8mVSWfbtgco1ybQbQgB
         ZlCsvPwfKqSh02haXJ4t5YlBSF1rjbctJ8h4++bXmyq2epecEGe+WydpLLNEzS9Cc25j
         HiyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=hUvsuHH5;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NKFSFxc8PAME2OFKbN8pOsz2B8aTi8n9+vjda6THXZo=;
        b=otiaotioAwd3VAq/BIk1/xyWXsTaFM6NZVJHRu01VLHSCs3Y1W8Gm5ZYoqdCrnon0r
         Xs7gFM9rH4lIUAmU6sMgSOLAJtFGKo5AfUO0hWixEv4Xw0s7e+nPIOvw9n/oaoO0w7Uf
         pIXhjkyN+3z/aKTeKHAnyqxnxxZXatnx7BvgcLP6Qy5z5HnWvnJo7XlHzIqW5L4178y3
         2JMwmDGix3qrMGvZYfiVLgkWSo0pTcD55bw9FfomW5tq0HDOwzaJCRU9BKnMrAxXeO2N
         R/qsyDr6Din6OMdT6wz+6vqJKoq2Ol2BB5GQ8iLibU3xzl1FSS/gLZv+CfPJ+m7WAT3M
         KaWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NKFSFxc8PAME2OFKbN8pOsz2B8aTi8n9+vjda6THXZo=;
        b=HEmhahUmfXeRf+ktfXAyEoFt4lqUELrk1GY/J9dSPJUHTFvuqabVryapi/sGVP3YyE
         aBoA8o3ZYW/XnHtFZrq1inTufGxLlGKdMtqEo83BxvakspQcTl0rjVJoCwxjtYpUu6/Q
         q7rbT+Q2bAuBYJQkIw0jtfkxeePVRkzD+Gr88FV2lB4Q4fBTQLkDMQ3I/VPHRPx66NTp
         iFcxYEhUf2IjICaelwBX9GsPl+Gr/LV5T6fNvABDC1MpRg9gFl9r/WzRgNrohgM71UgW
         mZA2gXxmEryRcx6+JNr5w92H3/4CSYx7w0UMzO4NmFPce2COnxIR0e7rJXty7TVWOqPe
         tQKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530vH20ewnRKsCvsXa4mcUFbjPMf3VP9RUJLUliym+JR6U1JwRHa
	rrNHCqDX+U2tMX56ofxYdZk=
X-Google-Smtp-Source: ABdhPJxxMY05vbuPZC02gruanIVY+Zo9pGg8G0NTiPnQN/ZiyDBTghtez1N+sZ//4ePS7/TvAmTglw==
X-Received: by 2002:a17:902:76c9:: with SMTP id j9mr7817401plt.138.1592564551150;
        Fri, 19 Jun 2020 04:02:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls3718797pjx.2.gmail; Fri, 19
 Jun 2020 04:02:30 -0700 (PDT)
X-Received: by 2002:a17:902:9a02:: with SMTP id v2mr5916877plp.321.1592564550607;
        Fri, 19 Jun 2020 04:02:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592564550; cv=none;
        d=google.com; s=arc-20160816;
        b=DGcYXUlz4UhJicdMHSalSzN9Wt742uj9PF87CvrIq9v0UaYUM3z4hz4uWw90XV672O
         ZnVJPWroVun2cXxZvRAcCQEKFj60srPSGdjwO6OQQ9NW9OqpD4pVDcZROVvUR6FWXkaL
         83mjuJ6jSZfprjpAv3mbNI/3q/1agYjWFUa4mq61TkIy3b95mK9+W0kXeTMlw+EW1iEl
         kEar5z1C5i68QNa6Y3Ob5s2lUDrqyfncoH670ARxda9LjswR/W0rjmfN67d1VIAFiEto
         yBGp3ovmUGEI+qCeCoArl4o04QcoVOppRwQkqRQ2WWh2HR9Y7xBY32BqTnOfa6X//9KN
         utRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=TXcy8zjFyT4z+EftuG3I562QrL19DXICR+N8Hrr0J7E=;
        b=qmrd71TPSbL2H2vcz5UspjqV2YbCDYfpfIjKypQ24E56opiwxMDjdNZ0hs2u9KY7PK
         7my/90re4g7tGnJ2rXISm7cG8vTm85Yrj9YeSZwviQ7bm3XDhF9r1Mwr9rUHwvbm1lvQ
         IwPMy8r6mUxTNAGyglC+w4y17A4nlSLt91qWpcLKS6BBc0X04TcRY/kFZzUfULePfrWl
         0HuxlWn6LAZ90e6vQM38pCwQKewZv7Mh0DoXorMuq4oBmIyEAqKsYY18xLfP+5QjvCym
         err/cs9CqBve+M1jBBIBH4oKfrDrV+JTlhtcc/J+1cI2NdCui7Q25u74YRcwElcp8iH5
         7sqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=hUvsuHH5;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id gv9si260921pjb.3.2020.06.19.04.02.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2020 04:02:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 49pG9F1Hymz9sNR;
	Fri, 19 Jun 2020 21:02:25 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michal Simek <michal.simek@xilinx.com>, Christophe Leroy <christophe.leroy@csgroup.eu>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Arnd Bergmann <arnd@arndb.de>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
In-Reply-To: <20200618031622.GA195@Ryzen-9-3900X.localdomain>
References: <cover.1590079968.git.christophe.leroy@csgroup.eu> <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu> <20200616002720.GA1307277@ubuntu-n2-xlarge-x86> <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com> <20200616181630.GA3403678@ubuntu-n2-xlarge-x86> <50fb2dd6-4e8f-a550-6eda-073beb86f2ff@xilinx.com> <87bllidmk4.fsf@mpe.ellerman.id.au> <878sgmdmcv.fsf@mpe.ellerman.id.au> <CAKwvOdnkcjLGay0jdQ77kHTmKhE56F9jvzh01XWwEE8rjbhLAA@mail.gmail.com> <87tuz9ci7e.fsf@mpe.ellerman.id.au> <20200618031622.GA195@Ryzen-9-3900X.localdomain>
Date: Fri, 19 Jun 2020 21:02:53 +1000
Message-ID: <87eeqbco82.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=hUvsuHH5;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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

Nathan Chancellor <natechancellor@gmail.com> writes:
> On Thu, Jun 18, 2020 at 10:48:21AM +1000, Michael Ellerman wrote:
>> Nick Desaulniers <ndesaulniers@google.com> writes:
>> > On Wed, Jun 17, 2020 at 3:20 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
>> >> Michael Ellerman <mpe@ellerman.id.au> writes:
>> >> > Michal Simek <michal.simek@xilinx.com> writes:
>> >> <snip>
>> >>
>> >> >> Or if bamboo requires uImage to be built by default you can do it via
>> >> >> Kconfig.
>> >> >>
>> >> >> diff --git a/arch/powerpc/platforms/44x/Kconfig
>> >> >> b/arch/powerpc/platforms/44x/Kconfig
>> >> >> index 39e93d23fb38..300864d7b8c9 100644
>> >> >> --- a/arch/powerpc/platforms/44x/Kconfig
>> >> >> +++ b/arch/powerpc/platforms/44x/Kconfig
>> >> >> @@ -13,6 +13,7 @@ config BAMBOO
>> >> >>         select PPC44x_SIMPLE
>> >> >>         select 440EP
>> >> >>         select FORCE_PCI
>> >> >> +       select DEFAULT_UIMAGE
>> >> >>         help
>> >> >>           This option enables support for the IBM PPC440EP evaluation board.
>> >> >
>> >> > Who knows what the actual bamboo board used. But I'd be happy to take a
>> >> > SOB'ed patch to do the above, because these days the qemu emulation is
>> >> > much more likely to be used than the actual board.
>> >>
>> >> I just went to see why my CI boot of 44x didn't catch this, and it's
>> >> because I don't use the uImage, I just boot the vmlinux directly:
>> >>
>> >>   $ qemu-system-ppc -M bamboo -m 128m -display none -kernel build~/vmlinux -append "console=ttyS0" -display none -nodefaults -serial mon:stdio
>> >>   Linux version 5.8.0-rc1-00118-g69119673bd50 (michael@alpine1-p1) (gcc (Ubuntu 9.3.0-10ubuntu2) 9.3.0, GNU ld (GNU Binutils for Ubuntu) 2.34) #4 Wed Jun 17 20:19:22 AEST 2020
>> >>   Using PowerPC 44x Platform machine description
>> >>   ioremap() called early from find_legacy_serial_ports+0x690/0x770. Use early_ioremap() instead
>> >>   printk: bootconsole [udbg0] enabled
>> >>
>> >>
>> >> So that's probably the simplest solution?
>> >
>> > If the uImage or zImage self decompresses, I would prefer to test that as well.
>> 
>> The uImage is decompressed by qemu AIUI.
>> 
>> >> That means previously arch/powerpc/boot/zImage was just a hardlink to
>> >> the uImage:
>> >
>> > It sounds like we can just boot the zImage, or is that no longer
>> > created with the uImage?
>> 
>> The zImage won't boot on bamboo.
>> 
>> Because of the vagaries of the arch/powerpc/boot/Makefile the zImage
>> ends up pointing to treeImage.ebony, which is for a different board.
>> 
>> The zImage link is made to the first item in $(image-y):
>> 
>> $(obj)/zImage:		$(addprefix $(obj)/, $(image-y))
>> 	$(Q)rm -f $@; ln $< $@
>>                          ^
>>                          first preqrequisite
>> 
>> Which for this defconfig happens to be:
>> 
>> image-$(CONFIG_EBONY)			+= treeImage.ebony cuImage.ebony
>> 
>> If you turned off CONFIG_EBONY then the zImage will be a link to
>> treeImage.bamboo, but qemu can't boot that either.
>> 
>> It's kind of nuts that the zImage points to some arbitrary image
>> depending on what's configured and the order of things in the Makefile.
>> But I'm not sure how we make it less nuts without risking breaking
>> people's existing setups.
>
> Hi Michael,
>
> For what it's worth, this is squared this away in terms of our CI by
> just building and booting the uImage directly, rather than implicitly
> using the zImage:
>
> https://github.com/ClangBuiltLinux/continuous-integration/pull/282
> https://github.com/ClangBuiltLinux/boot-utils/pull/22

Great.

> We were only using the zImage because that is what Joel Stanley intially
> set us up with when PowerPC 32-bit was added to our CI:
>
> https://github.com/ClangBuiltLinux/continuous-integration/pull/100

Ah, so Joel owes us all beers then ;)

> Admittedly, we really do not have many PowerPC experts in our
> organization so we are supporting it on a "best effort" basis, which
> often involves using whatever knowledge is floating around or can be
> gained from interactions such as this :) so thank you for that!

No worries. I definitely don't expect you folks to invest much effort in
powerpc, especially the old 32-bit stuff, so always happy to help debug
things, and really appreciate the testing you do.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87eeqbco82.fsf%40mpe.ellerman.id.au.
