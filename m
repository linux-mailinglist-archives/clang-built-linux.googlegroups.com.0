Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSW7R7VAKGQEYK7WAVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3167EE67
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 10:09:46 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id g2sf36824525wrq.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 01:09:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564733386; cv=pass;
        d=google.com; s=arc-20160816;
        b=P5GG2Uriclc9czTPOiCUPFnG/bs8kMAFPcaCYRNt1VjghzJHe8ZHxXElxDEWaFqR0T
         Q7/eFb3J/qBOHjAia5Jy/P15Y8OtUg0f6hj7fmcCF93djHULjBd52XgwE84/3Vxm+Bbm
         +RL7CjZbRfNdXVbweMKIUYPTXras4E4LIwc35MEcHud2fpZ/rNQD41pDDXNzmS4sCea9
         f5Bl4NshK602z0K6zomPMfpwZFIs+Z+iNazt7OKhp9bDi/eGy+jMhOGAZmk5zs43NUPc
         zvUvKZrulXyVvSi0DSl2BxJAAj6DLLEEt3f+ajenBDU4zqMTpqZYjXXQaufxnmo3vi3E
         T28Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=GEYLtUrDb4PPrmfFMnk5NLeffG9qXlerVDD1Zh9IdZw=;
        b=uNWd9c9nWo3+hFfr09C271F+kCn8R6Pr6hnwHPwlbAXoAXZVl+HOki8TQX/P8FVCey
         wIcK8sTdiTKDCufBFgGCnfIveXtotx8MCrDOMUd+Cz/FhLT3RpntJSMrmWxWqVVjV6rv
         2LxkN9ScNmD4ORg5eP9SRYH3p9mGYtEVcL+cSWFP6D2Lj4ZQO4RUqV/NmwPTTPA1DQxD
         OMEKp7rUiGpzChi+twKyJCSI8o6KHJ7O2TnAz40VK2r7kCFNw8HvzDcxpliZzIkuOSfG
         VULI8enesdtPWW9JcclLg5QvKC/uHZWqkoXeB6UsLJlYC53Jknl70THttqv7Xky4YCMs
         j+Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="t/55TxhY";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GEYLtUrDb4PPrmfFMnk5NLeffG9qXlerVDD1Zh9IdZw=;
        b=dG5pPB8oUQ4L4KxK+1PxGSGKuakafVRlqX7QIaNFmbyKFSENJA/4P8AnCFoEQ5ZI7p
         t7jr4Z/Ajft08l+BATizOXZwsfgvT9OfM1EqHYgNP1MVaxt3fH8hbRuZWne4afw6e+64
         zGMjyMo7aQIV/WOqw9exFs8fwr9oLFeggudkNSc1C3d9ytWFQ2wryM1NhPvzIETixu8A
         sb0WBHWTL0Mu6DCATXOfjkEqHsfgqcPSSJZnKvjAqKYiT5ZNcqxB3U8fcvVkmlFH/tf3
         UuEGO0lQtn4XGv402lKsll/6kocrllHBmSGFVM5Dkq4HLhOfTltgazrWJDIraCiHymlL
         +VgA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GEYLtUrDb4PPrmfFMnk5NLeffG9qXlerVDD1Zh9IdZw=;
        b=kSAnT9QnaS6XUA99Ndhx9Wa5D2AFwtXkCiKxUAHgvsXcZAHzuLzMutaKld/2A4oszo
         4if1APkDu9oqdklDYQPJy783PDITDrexP+iwnDlcQi31xbmcaK8C6tkDRORX/d91Lah+
         vUc2AtJI43YRcN1vALlf58GR8M2OPfMacINt6Ojt3YPa+V7aHmuNclLBHBF3tBM8Vbsk
         S58zw1OzVYmogCyAzXqi+rKo20II92qpQuneTFvtc6lksPgomNtJ9ZymD5k1QFMvqeuB
         rrKr4zq3ZJ4onBtVfpc/4wnBQXEVHo56Xy9lGmeJNCsXv3OrnyxZCBt9HuXgMbL1guNN
         C3Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GEYLtUrDb4PPrmfFMnk5NLeffG9qXlerVDD1Zh9IdZw=;
        b=UMUKGr8j2RGiErw6W4RcQgFm7T6PbXvoSEs9gwuj9Fi1A+/2/s5Lh9/4biayuXhtoI
         3LH09YGp/CZIfCGwWxgS29j3+mBGWszvDh6hJW4Y3cxuHfWjGJNsNLrznwyBHp6bEiW4
         6Jy6kQVGRbJNxu0Ey1KKDUCoAwR7WlvMdjCuM/MJ2dw0TPod01Tj76KM7zJ3yi4sPbqZ
         CIkSvPvnDkwXl3ViSMgySY0Shu/CUwSEC55x0A1myiobToj2mA3W3Vh0vyQDM/YnLb0u
         4rS4u+5quS+4E9tArkjni6N+EqwZofw8bAU8W6hSLuvgMO2aSzKHcrtPy4yHPveztZu0
         ZyuA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUYn78X4yV4KVXKiahZTUd+Uc6/QrVAFE9nu2Iux3fQiHF2MS5+
	litrNycRh0vY+OOGYPgHgqI=
X-Google-Smtp-Source: APXvYqwTv2WhDkw856q+5cidn3U39gSQqJScgmgljgwSUeTj+EdH1zxvvXa1qUOurDXGnj63YMLifg==
X-Received: by 2002:adf:df90:: with SMTP id z16mr5182491wrl.331.1564733386150;
        Fri, 02 Aug 2019 01:09:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9083:: with SMTP id i3ls22301189wri.14.gmail; Fri, 02
 Aug 2019 01:09:45 -0700 (PDT)
X-Received: by 2002:adf:f348:: with SMTP id e8mr45436583wrp.76.1564733385700;
        Fri, 02 Aug 2019 01:09:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564733385; cv=none;
        d=google.com; s=arc-20160816;
        b=0tv+7P9VSkk47s5l66yhL7AE57Gkz6yRqO01/ilpYSZHv5D0H/kK0MF+E9CIyWkPUc
         8H7RN6bBwyuLNLj3Yew6J6ntHWOijKkT/MAiuSB205VoKzjIc2ZlR10GP7pdqM03nph/
         IOAuuj73C1XCeCA0QKdR3FZlJSEUXY8wknGgh1mhdut7jtcrXspF98bf5BlJDRqyecdz
         rACurX0M/v3jfBIB9xGkNieceh/JNJO7KTxAqvUrZexFB4LE9euOk4iN+aVVWu7T6duo
         vAKeKa2TJOYx3dMkp+fwk3zhAgUABQ4i3BTI5uhtKLWmGJZR3PYyTcDIXs7CvQmIsngA
         YHVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pkiniAbpRIYowvObZzSgzowbMCSR9A1msLp8+g6NbmY=;
        b=f40MD61CxsJliw29ot4g5ODxnRYfJ1AAVUkFfh+PWL4Agfs/d0JQYvoPIuJ58koA/X
         pQ5sJeQWG5O6/Lytv8ZyHzlo33gIMahpAwxMLSHh+/Pyve1CFNdf9oLO0mxbpVaYRIxA
         4KXitYm/1gjZ4QtNDpKIGMfbkQR0lsFTezHlI1MBpv55J1j+VTbHeDQqDpo43jAz5Xl0
         2PeYI1s720hCGsKPn09myJBxT/5DED0GSy70Eo2zVaC1lyFOgCbe7jWig617N2OnoIS/
         sojRBPXFElPeKmEt9KglG8N/id2khpj6/0OmmxQUlg5yWHsJRNDmy79meeY6GyP9FRlq
         9kOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="t/55TxhY";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id a10si4081949wmm.2.2019.08.02.01.09.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 01:09:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id v19so65474440wmj.5
        for <clang-built-linux@googlegroups.com>; Fri, 02 Aug 2019 01:09:45 -0700 (PDT)
X-Received: by 2002:a1c:e90d:: with SMTP id q13mr3304390wmc.89.1564733384959;
        Fri, 02 Aug 2019 01:09:44 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id j33sm163382443wre.42.2019.08.02.01.09.43
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 02 Aug 2019 01:09:44 -0700 (PDT)
Date: Fri, 2 Aug 2019 01:09:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Rolf Eike Beer <eb@emlix.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Matt Fleming <matt@codeblueprint.co.uk>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>, linux-efi@vger.kernel.org,
	Linux Kernel Developers List <linux-kernel@vger.kernel.org>,
	stable@vger.kernel.org, Matthias Kaehlcke <mka@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Building arm64 EFI stub with -fpie breaks build of 4.9.x
 (undefined reference to `__efistub__GLOBAL_OFFSET_TABLE_')
Message-ID: <20190802080942.GA27595@archlinux-threadripper>
References: <779905244.a0lJJiZRjM@devpool35>
 <CAKwvOdnegLvkAa+-2uc-GM63HLcucWZtN5OoFvocLs50iLNJLg@mail.gmail.com>
 <CAKwvOdn9g2Z=G_qz84S5xmn2GBNK7T-MWOGYT5C52sP0R=M_-Q@mail.gmail.com>
 <2102708.6BiaULqomI@devpool35>
 <20190802075745.GI26174@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190802075745.GI26174@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="t/55TxhY";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Aug 02, 2019 at 09:57:45AM +0200, Greg KH wrote:
> On Thu, Jun 06, 2019 at 09:11:00AM +0200, Rolf Eike Beer wrote:
> > Nick Desaulniers wrote:
> > > On Wed, Jun 5, 2019 at 10:27 AM Nick Desaulniers
> > > 
> > > <ndesaulniers@google.com> wrote:
> > > > On Wed, Jun 5, 2019 at 9:26 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > > > On Wed, Jun 05, 2019 at 05:19:40PM +0200, Rolf Eike Beer wrote:
> > > > > > I decided to dig out a toy project which uses a DragonBoard 410c. This
> > > > > > has
> > > > > > been "running" with kernel 4.9, which I would keep this way for
> > > > > > unrelated
> > > > > > reasons. The vanilla 4.9 kernel wasn't bootable back then, but it was
> > > > > > buildable, which was good enough.
> > > > > > 
> > > > > > Upgrading the kernel to 4.9.180 caused the boot to suddenly fail:
> > > > > > 
> > > > > > aarch64-unknown-linux-gnueabi-ld:
> > > > > > ./drivers/firmware/efi/libstub/lib.a(arm64- stub.stub.o): in function
> > > > > > `handle_kernel_image':
> > > > > > /tmp/e2/build/linux-4.9.139/drivers/firmware/efi/libstub/arm64-stub.c:
> > > > > > 63:
> > > > > > undefined reference to `__efistub__GLOBAL_OFFSET_TABLE_'
> > > > > > aarch64-unknown-linux-gnueabi-ld:
> > > > > > ./drivers/firmware/efi/libstub/lib.a(arm64- stub.stub.o): relocation
> > > > > > R_AARCH64_ADR_PREL_PG_HI21 against symbol
> > > > > > `__efistub__GLOBAL_OFFSET_TABLE_' which may bind externally can not
> > > > > > be used when making a shared object; recompile with -fPIC
> > > > > > /tmp/e2/build/linux-4.9.139/drivers/firmware/efi/libstub/arm64-stub.c:
> > > > > > 63:
> > > > > > (.init.text+0xc): dangerous relocation: unsupported relocation
> > > > > > /tmp/e2/build/linux-4.9.139/Makefile:1001: recipe for target 'vmlinux'
> > > > > > failed -make[1]: *** [vmlinux] Error 1
> > > > > > 
> > > > > > This is caused by commit 27b5ebf61818749b3568354c64a8ec2d9cd5ecca from
> > > > > > linux-4.9.y (which is 91ee5b21ee026c49e4e7483de69b55b8b47042be),
> > > > > > reverting
> > > > > > this commit fixes the build.
> > > > > > 
> > > > > > This happens with vanilla binutils 2.32 and gcc 8.3.0 as well as
> > > > > > 9.1.0. See
> > > > > > the attached .config for reference.
> > > > > > 
> > > > > > If you have questions or patches just ping me.
> > > > > 
> > > > > Does Linus's latest tree also fail for you (or 5.1)?
> > > > > 
> > > > > Nick, do we need to add another fix that is in mainline for this to work
> > > > > properly?
> > > > > 
> > > > > thanks,
> > > > > 
> > > > > greg k-h
> > > > 
> > > > Doesn't immediately ring any bells for me.
> > > 
> > > Upstream commits:
> > > dd6846d77469 ("arm64: drop linker script hack to hide __efistub_ symbols")
> > > 1212f7a16af4 ("scripts/kallsyms: filter arm64's __efistub_ symbols")
> > > 
> > > Look related to __efistub__ prefixes on symbols and aren't in stable
> > > 4.9 (maybe Rolf can try cherry picks of those).
> > 
> > I now have cherry-picked these commits:
> > 
> > dd6846d77469
> > fdfb69a72522e97f9105a6d39a5be0a465951ed8
> > 1212f7a16af4
> > 56067812d5b0e737ac2063e94a50f76b810d6ca3
> > 
> > The 2 additional ones were needed as dependencies of the others. Nothing of 
> > this has helped.
> 
> Did this ever get resolved, or is it still an issue?
> 
> thanks,
> 
> greg k-h
> 

This appears to have been resolved by commit 8fca3c364683 ("efi/libstub:
Unify command line param parsing") in 4.9.181. I can build defconfig +
CONFIG_RANDOMIZE_BASE without any issues.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190802080942.GA27595%40archlinux-threadripper.
