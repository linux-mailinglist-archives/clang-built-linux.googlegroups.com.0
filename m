Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCVZVP3QKGQEN7JH4NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F3F1FE946
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 05:16:27 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id o187sf2042655oih.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 20:16:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592450186; cv=pass;
        d=google.com; s=arc-20160816;
        b=bfl1oZ1PZzCzhPDFVNFoqDLWtau/rmk6avGR1qgCMT43e1REBtcAbHwjHEk5JEcrSk
         bcy/tkaZw+czjGROCoqhp0Mh9WnR7bym0X7HgYA4s8tHtJxspUn5RQtBqsMTljqSDkap
         RplLhfChsl/YsCkGalkBmOhPNYJYY0ylc+SEjXusCGn1id5SRRh6QAhHtIKOcS1iqm2a
         E4/dmFTt9+PqiJRtaXHGYetlSEXkQYlSXn67GI84TY5V4d8jikBAfDxgV0O3zFcTvMAd
         Z22B6BthaPSMDrS2+ezVSmVO519RI5Oe5ejTaJfHSQoR4tx2ghDBc4Ko6/glVidM3rLX
         Z27A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=GPfrUJpLnZsWgVySMlfIJUezLwV8dkMHf/u7dMkw8TE=;
        b=YJ+qo1lQbsWL0ejB3I1nBKu5Go5r5EPmSYGIE1jgMxVs3ShPMTUPRls48X9UyOjqu+
         kcqAWk1nOmxyDMLjm/vkyXQkwrUh9n36Zt2fMAsiGMuo84GO/BQ/cMbZBDsR3450fo1u
         7UMxLwgx/U6k2721ehs3sRLwA+ZOJ3uFCdUR85FeKkiO++SgVJmqlQ2yfj7+t0/zr1AO
         ftKDm4wRsea1RPa9yhw+SKUGtXpA3L3lM+1tAwXE/eBnhxkIQxvbOnXtM3w7H2Uaopgn
         6+UXcWLb0wj9sNYiTbTa3rxxz+/akaYab65JRDfTUatVmTQkztMXXDKBx6+fCATSTsX9
         QwwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qqUUsVQ2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GPfrUJpLnZsWgVySMlfIJUezLwV8dkMHf/u7dMkw8TE=;
        b=absFMdpKv51rlz+K7OiW3k6SPZ1mfOxNIys6pRDD4AXV8b6wu1lkc5Ig3A5+kFenDB
         MpMTHWaV90ABftzVkVQKcfa/ZU0mHjD2SdtSjr7xLuNRTVJwgENZ2Ms+S+/HoWjWSRyY
         aVC5KTkKYTHzmv1aA/8Ki2C13SoTsvSuuzJTXjrAMCcv7pMjfx4cL7r8Sc6LzyXY5W59
         lbcQfRjSGralwzjPhpUcjzeMdEAlc6dMpKHAm/r4M9TLmz4yMFYNqxzkC2BrxxsipmkN
         ywmSZ+Q+fzUw9BtrYTja8i7E6EQNMghamgZ1HNfIEMXl8I/XZAa0hp27iqchu7edNnW0
         g16A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GPfrUJpLnZsWgVySMlfIJUezLwV8dkMHf/u7dMkw8TE=;
        b=PhdjfGd0ZWlTZSQJfmzfsVmOfsyRXQfNrZVh4lVtGh4j71QTjnoOXqcicnVmQpZcvy
         yeDnS4ytlnHF+mQJ9dWsG610+4X5YnxRtFwBKCWddoIdBl91U5PddHk+PqWITX1jD8eE
         +mO5bIkGz9cS+uOlAvXg+2+6eHrx08JSY4e45eeD27ILt4T0f315FoWahvRHF6Toi9HH
         I+fd6KHT+AUWelIPCZ4BEiwFz3CbbJmuQ59xFhWfYHmK72eDS3X3DM44vBa9hW5KoiIc
         wI+Y7oA9rvaS8LZaXdW98uwsKDL0vSjQTY76kyDh0rET4AmTRmjp3i99IDzH0dDjVX9f
         Ji1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GPfrUJpLnZsWgVySMlfIJUezLwV8dkMHf/u7dMkw8TE=;
        b=htvV5hpzyAVrSreVLwNAp0Ja+1C7VeihVeAa1u1hNHkAMURFzRSwuPpVbfNmDWPFEl
         oesaFyjJ5mgGU5EB5KCvB0Wiy8qtgIxFwz4yRwJupGFzHkXPZElXTilb0+isu3tuIFrK
         EK1qWOCKzQCUvpy/D+kYuUlKKX020nESwyYYuyxrIT+oe8He0zyrOznnnbxiTmNzrAYF
         57sUcVw+hlaRsuVhtt0XTH2+YtjpnVFmRkWNlpaUJZmi1j6WTudK33E6/akh3UsgeLBL
         +hYE0WLn8phAHVxZpGIUGJuP6HWcTMt/TZEf3DboIXR5QM9Wbzb6aoauAKv2yIl8Z447
         Tzrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UIDnsXc5CWPMeQgWKYL8FnVri/IhgjfEdPYBp+3FiFfq+D3KG
	DsoGuqwAiag9iE5TTys8bmw=
X-Google-Smtp-Source: ABdhPJzCsvlUrFwE41w/G/xj7xaRL/88tRQHejPanMculVNdxET5aBzx+f/kmhMKR2vCv2DOLRAvzQ==
X-Received: by 2002:a4a:abcb:: with SMTP id o11mr2308163oon.58.1592450186355;
        Wed, 17 Jun 2020 20:16:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e19:: with SMTP id s25ls986041otr.5.gmail; Wed, 17
 Jun 2020 20:16:26 -0700 (PDT)
X-Received: by 2002:a9d:34c:: with SMTP id 70mr1824907otv.224.1592450186061;
        Wed, 17 Jun 2020 20:16:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592450186; cv=none;
        d=google.com; s=arc-20160816;
        b=L9ucEjDKpriASneF5/ehqJVKt4e69X8xDZ5wbKEPTSaNvdDDJuGTIJZHjpHlIBU4aI
         qPfcr2GKFC6bVu3hk1xQoBSXrRCGc9uMRT3aZiRbb1YGRE6Ik5DuOdpZKqykmiQTzO+o
         iG4VPshfwyaU8ZTNNlk3UoNONvzSkiNrl/3cxIF8PcQPeJamrX38NPVp5lgbt3SEQ4wW
         T8asgdvZ7k68DHQ4D0XJHKcZBmd9P492EwLZ8kUIqS2gHP9ajM28/YW0EXzEmL7y7TgU
         IMSozHKyp0/xiL0sSbP86uLqWEv/Z48vXlmw5iP6HCkliit10L/xqkdNdwHK55eLu8tD
         /Kvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BQ6+gpUp0LDm306U72ZZjOm3CRXIXZhyD96bzGv7Trs=;
        b=CSJ6Z0OQ+lOx5g+jWAfV95xbAyzBMH7XRe7EGjNlDk8blyseete04uHneCu8e3rE8W
         tgC1PYX01C/bPp+4W3qP1kn9OvzuM7S8WCXyaD4nXuOTEUl1Y1sPSkKE731UPz6jGO5Z
         mtAXb6NA3IXZQZ336rTVSEJRnpK9ZtPAS1fSwVlYenaBV7aFW6hNQ9u3yqp2JQ2PJo26
         APCY6ABtOoLCdbl8sOBKHI9qMdARSrdNy4LX3VoY8UI8c0J5+mMnuMe4Ry4u6oISIHUc
         CoM8AAVh4055+Ox24S+JoMXUBJ/K/X7y1clOUUsx4yJLmlqVeP1McKu9/JVEieESyYxL
         f/Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qqUUsVQ2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id h13si171702otk.1.2020.06.17.20.16.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 20:16:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id h95so2008934pje.4
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jun 2020 20:16:26 -0700 (PDT)
X-Received: by 2002:a17:90a:a405:: with SMTP id y5mr2092260pjp.15.1592450185243;
        Wed, 17 Jun 2020 20:16:25 -0700 (PDT)
Received: from Ryzen-9-3900X.localdomain ([89.46.114.134])
        by smtp.gmail.com with ESMTPSA id r2sm1031469pgg.23.2020.06.17.20.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jun 2020 20:16:24 -0700 (PDT)
Date: Wed, 17 Jun 2020 20:16:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Michal Simek <michal.simek@xilinx.com>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, Arnd Bergmann <arnd@arndb.de>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v5 01/13] powerpc: Remove Xilinx PPC405/PPC440 support
Message-ID: <20200618031622.GA195@Ryzen-9-3900X.localdomain>
References: <cover.1590079968.git.christophe.leroy@csgroup.eu>
 <8c593895e2cb57d232d85ce4d8c3a1aa7f0869cc.1590079968.git.christophe.leroy@csgroup.eu>
 <20200616002720.GA1307277@ubuntu-n2-xlarge-x86>
 <68503e5e-7456-b81c-e43d-27cb331a4b72@xilinx.com>
 <20200616181630.GA3403678@ubuntu-n2-xlarge-x86>
 <50fb2dd6-4e8f-a550-6eda-073beb86f2ff@xilinx.com>
 <87bllidmk4.fsf@mpe.ellerman.id.au>
 <878sgmdmcv.fsf@mpe.ellerman.id.au>
 <CAKwvOdnkcjLGay0jdQ77kHTmKhE56F9jvzh01XWwEE8rjbhLAA@mail.gmail.com>
 <87tuz9ci7e.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87tuz9ci7e.fsf@mpe.ellerman.id.au>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qqUUsVQ2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Jun 18, 2020 at 10:48:21AM +1000, Michael Ellerman wrote:
> Nick Desaulniers <ndesaulniers@google.com> writes:
> > On Wed, Jun 17, 2020 at 3:20 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
> >> Michael Ellerman <mpe@ellerman.id.au> writes:
> >> > Michal Simek <michal.simek@xilinx.com> writes:
> >> <snip>
> >>
> >> >> Or if bamboo requires uImage to be built by default you can do it via
> >> >> Kconfig.
> >> >>
> >> >> diff --git a/arch/powerpc/platforms/44x/Kconfig
> >> >> b/arch/powerpc/platforms/44x/Kconfig
> >> >> index 39e93d23fb38..300864d7b8c9 100644
> >> >> --- a/arch/powerpc/platforms/44x/Kconfig
> >> >> +++ b/arch/powerpc/platforms/44x/Kconfig
> >> >> @@ -13,6 +13,7 @@ config BAMBOO
> >> >>         select PPC44x_SIMPLE
> >> >>         select 440EP
> >> >>         select FORCE_PCI
> >> >> +       select DEFAULT_UIMAGE
> >> >>         help
> >> >>           This option enables support for the IBM PPC440EP evaluation board.
> >> >
> >> > Who knows what the actual bamboo board used. But I'd be happy to take a
> >> > SOB'ed patch to do the above, because these days the qemu emulation is
> >> > much more likely to be used than the actual board.
> >>
> >> I just went to see why my CI boot of 44x didn't catch this, and it's
> >> because I don't use the uImage, I just boot the vmlinux directly:
> >>
> >>   $ qemu-system-ppc -M bamboo -m 128m -display none -kernel build~/vmlinux -append "console=ttyS0" -display none -nodefaults -serial mon:stdio
> >>   Linux version 5.8.0-rc1-00118-g69119673bd50 (michael@alpine1-p1) (gcc (Ubuntu 9.3.0-10ubuntu2) 9.3.0, GNU ld (GNU Binutils for Ubuntu) 2.34) #4 Wed Jun 17 20:19:22 AEST 2020
> >>   Using PowerPC 44x Platform machine description
> >>   ioremap() called early from find_legacy_serial_ports+0x690/0x770. Use early_ioremap() instead
> >>   printk: bootconsole [udbg0] enabled
> >>
> >>
> >> So that's probably the simplest solution?
> >
> > If the uImage or zImage self decompresses, I would prefer to test that as well.
> 
> The uImage is decompressed by qemu AIUI.
> 
> >> That means previously arch/powerpc/boot/zImage was just a hardlink to
> >> the uImage:
> >
> > It sounds like we can just boot the zImage, or is that no longer
> > created with the uImage?
> 
> The zImage won't boot on bamboo.
> 
> Because of the vagaries of the arch/powerpc/boot/Makefile the zImage
> ends up pointing to treeImage.ebony, which is for a different board.
> 
> The zImage link is made to the first item in $(image-y):
> 
> $(obj)/zImage:		$(addprefix $(obj)/, $(image-y))
> 	$(Q)rm -f $@; ln $< $@
>                          ^
>                          first preqrequisite
> 
> Which for this defconfig happens to be:
> 
> image-$(CONFIG_EBONY)			+= treeImage.ebony cuImage.ebony
> 
> If you turned off CONFIG_EBONY then the zImage will be a link to
> treeImage.bamboo, but qemu can't boot that either.
> 
> It's kind of nuts that the zImage points to some arbitrary image
> depending on what's configured and the order of things in the Makefile.
> But I'm not sure how we make it less nuts without risking breaking
> people's existing setups.
> 
> cheers

Hi Michael,

For what it's worth, this is squared this away in terms of our CI by
just building and booting the uImage directly, rather than implicitly
using the zImage:

https://github.com/ClangBuiltLinux/continuous-integration/pull/282
https://github.com/ClangBuiltLinux/boot-utils/pull/22

We were only using the zImage because that is what Joel Stanley intially
set us up with when PowerPC 32-bit was added to our CI:

https://github.com/ClangBuiltLinux/continuous-integration/pull/100

Admittedly, we really do not have many PowerPC experts in our
organization so we are supporting it on a "best effort" basis, which
often involves using whatever knowledge is floating around or can be
gained from interactions such as this :) so thank you for that!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618031622.GA195%40Ryzen-9-3900X.localdomain.
