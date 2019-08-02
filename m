Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB7GZR7VAKGQEUAVPD5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9957EE27
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 09:57:50 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id a21sf40023758pgv.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 00:57:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564732668; cv=pass;
        d=google.com; s=arc-20160816;
        b=IUZTBG4xZ8hoKywdtjW5B94OMepCgod/dRrBaVMSgLSslmUTBjv1OJu9BK9G/ZgclU
         vxZ7hOWy7TuH5kGaXWvABDWeqm3mNuokTU0hrj317cftBzuOVB0qTdKdFnUJ5u2H4s0l
         bG+Y0lq+4Y+95GHNUhM9tKzaqcuFMkNNG2zXieO0FuC7eDQ8af2jhmwuFnsP2gg28Hud
         4DtufRghTA24tBADMhcZ31zOaE48e1La0VZ5aSNGdLMP4dfil63tCe3LW3M7pthElc42
         /nBtNaTlIq3BBdNZWN58pLNXLXurLl7OZ9MIkFe21p1MD6WFhjB4ye9t/euEpnSMHHz1
         ASzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=qYafv4BOJW0DbnMr/x9ZPECpnG33JK1Rf6pJZ6PKrpQ=;
        b=syYTpqZ3jJrSWN9/7YtnkuT/izYKtEUUYZ8ks6GWHl1+/2YvUMPEU5GC0VBpcYjTrf
         LQkWrQP7R7MMJ1qWeqGecs4VS5FlVB658qJZhtwnhMtaJ+Is9WNQ3E0NeW0Yclhcgs08
         opimo7YcpXpAY7xPmEF6+yO17N2kAmKok0ixB3o2MlYq/A9OiBymK39AXm16hFzNQ2YV
         BmU4s/S7tLp1xl1ZN510KbbUrrgAqS76Qj551ugu3vpsAF1rPOOHnCOiSOyTi97v+9v8
         +qORsN0dxypkFBHmGVzkxhmr0LeEE1BKjD3BGsSHCIapPzx//nUCTt7ak/qCr+2qjowV
         jYBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kzySmlyi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qYafv4BOJW0DbnMr/x9ZPECpnG33JK1Rf6pJZ6PKrpQ=;
        b=BF+56Gsw3m6tkG9ZqyX/JmzMucYtNlmHK210rv3dk+kGq2G0KNDpDyYOo5040B9Ttl
         pMv7OgTANuhen8DVfWRmpeR/ok0EGX+WvD6/bzPrsHqwMD8IPEzvH7im3kyt8JVlnwqH
         1Mp7PMmCqzpegQM9PW9cXKBc+5F0tYXFnePC/uEDLCPcDOfL93J2OeF5KJU5LcNn6O7z
         XdI8+Uv5l2VQhLrnulmUhsP3IkDtk8MfLrU7pLwlWbDtfPC0CM1MuJfsav1gfm12Hk83
         4NeA6GHz6bbe6IV9D2MWZVrHvXxttWucv+fcyAinCvTkvk3LbBaUHAP1ASbwHiUowEfQ
         SV3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qYafv4BOJW0DbnMr/x9ZPECpnG33JK1Rf6pJZ6PKrpQ=;
        b=ZFjQdXN10CDFOm/suhpxT5bg/lxoyHvJtkI9lW3NS1ymUTBqh6SKBMSF5JARLAI+XK
         r5WTAqWSmzalrc82KIb2cqFTH9wBnScgqUa8AMlCAhRTBc+J1vNhuAcE30rheuIc4yim
         LMhGGqONoUgpYzJnPJ5LUeXD9gqm/lNCpDFoIOlaCPOsbBAUiDjF6P07Otc2AbImPntg
         /mhA2t7CeP8uvISx3CPl/j4GMlR1aaj0VwJ1ousoSl8jKzba8VXmFM5cxO5kFodRWjtP
         SVndpCZ+d5tSYXOUZui84nYV1L7dhZBzr4y2dmSabexn68DVQ+/0i9QPZdV/5o0+08sb
         FZMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV0+Qh9z6do6BSj6S4wdcP9sXRA50Ak0XYe30q8zOqxIZxmDxHS
	iyh5YqvghnoTFWxaDGz0WuQ=
X-Google-Smtp-Source: APXvYqyoJYHTTpiJ6L/HnjIo23X7prMjBdh+4EDe1p8SKMA1CJsGe0p6m8xFX23R52lzfdT6I9Ft7A==
X-Received: by 2002:a17:902:ba8b:: with SMTP id k11mr129840947pls.107.1564732668575;
        Fri, 02 Aug 2019 00:57:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3787:: with SMTP id v7ls2804608pjb.4.canary-gmail;
 Fri, 02 Aug 2019 00:57:48 -0700 (PDT)
X-Received: by 2002:a17:90a:22c6:: with SMTP id s64mr3147977pjc.5.1564732668187;
        Fri, 02 Aug 2019 00:57:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564732668; cv=none;
        d=google.com; s=arc-20160816;
        b=wMXJIKdGi/+g7YigmzGgyHVeu6rNxUCYHCnS3iVaHjMbr6k93TySVExzH+NBWUuSk2
         w7hZBQOjTeqJz9UR5mxwZedraJz3+zHE2KgivLBgng8h2bmwWna7bsTAtFqd02W1EJfc
         EaDU6jzzmnFMSKHY2He72sNc2UInqNtUeIugjiPZafMh0rq2eI9OgLuU+U/uwGp7YZfY
         XhllV3zd75WBgIkgiI1SQwKz2lFXj/UG6aYVkuusl3gtbxz6GsL4uNjalFQ3eV7f1Ifn
         +tqJNG/0JrOXsaNQy7ApW2bc1iOATw2CBU1YLCgbhYWaRtD50T5SzvCkx8RPmtzJ6hua
         kbIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tmY4G1BhSEs6PHDQ+hp1jXOebOtvKNfy745idnh1NsA=;
        b=hXIjxnuPkHcO5cv6igXWkVwt3M3z+vfCt03RGIA36CknEqUT9BzW9hNFFaaY4KWFww
         iFOEdCIYDiv/soOU5LtCeDOxQnzKjI9lKggZo40gS5EAV8DJWXHFoLGX20JxJ5qu76A7
         W6A8GNpjkUj0QgTaLUw/2AGevE2GxPq/ib3oGcdP7EuaZxA5bLEDk9Ez+v+wFsQD9eV8
         hc8yGh20tHM/cGAZiFpXSKWKDTbeW9pEKcMWxoF+Zv+8QqRa1l81kMI69xYBF5ar5iyK
         b2kPUShLFT1sNeVii6GBBkUo1udhwanHIjLsAh18iB2HJ5ahcxmI1nQczUTl9/+PiB9y
         wlTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kzySmlyi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 85si2029734pgb.2.2019.08.02.00.57.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 00:57:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7164420449;
	Fri,  2 Aug 2019 07:57:47 +0000 (UTC)
Date: Fri, 2 Aug 2019 09:57:45 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rolf Eike Beer <eb@emlix.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
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
Message-ID: <20190802075745.GI26174@kroah.com>
References: <779905244.a0lJJiZRjM@devpool35>
 <CAKwvOdnegLvkAa+-2uc-GM63HLcucWZtN5OoFvocLs50iLNJLg@mail.gmail.com>
 <CAKwvOdn9g2Z=G_qz84S5xmn2GBNK7T-MWOGYT5C52sP0R=M_-Q@mail.gmail.com>
 <2102708.6BiaULqomI@devpool35>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2102708.6BiaULqomI@devpool35>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=kzySmlyi;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Thu, Jun 06, 2019 at 09:11:00AM +0200, Rolf Eike Beer wrote:
> Nick Desaulniers wrote:
> > On Wed, Jun 5, 2019 at 10:27 AM Nick Desaulniers
> > 
> > <ndesaulniers@google.com> wrote:
> > > On Wed, Jun 5, 2019 at 9:26 AM Greg KH <gregkh@linuxfoundation.org> wrote:
> > > > On Wed, Jun 05, 2019 at 05:19:40PM +0200, Rolf Eike Beer wrote:
> > > > > I decided to dig out a toy project which uses a DragonBoard 410c. This
> > > > > has
> > > > > been "running" with kernel 4.9, which I would keep this way for
> > > > > unrelated
> > > > > reasons. The vanilla 4.9 kernel wasn't bootable back then, but it was
> > > > > buildable, which was good enough.
> > > > > 
> > > > > Upgrading the kernel to 4.9.180 caused the boot to suddenly fail:
> > > > > 
> > > > > aarch64-unknown-linux-gnueabi-ld:
> > > > > ./drivers/firmware/efi/libstub/lib.a(arm64- stub.stub.o): in function
> > > > > `handle_kernel_image':
> > > > > /tmp/e2/build/linux-4.9.139/drivers/firmware/efi/libstub/arm64-stub.c:
> > > > > 63:
> > > > > undefined reference to `__efistub__GLOBAL_OFFSET_TABLE_'
> > > > > aarch64-unknown-linux-gnueabi-ld:
> > > > > ./drivers/firmware/efi/libstub/lib.a(arm64- stub.stub.o): relocation
> > > > > R_AARCH64_ADR_PREL_PG_HI21 against symbol
> > > > > `__efistub__GLOBAL_OFFSET_TABLE_' which may bind externally can not
> > > > > be used when making a shared object; recompile with -fPIC
> > > > > /tmp/e2/build/linux-4.9.139/drivers/firmware/efi/libstub/arm64-stub.c:
> > > > > 63:
> > > > > (.init.text+0xc): dangerous relocation: unsupported relocation
> > > > > /tmp/e2/build/linux-4.9.139/Makefile:1001: recipe for target 'vmlinux'
> > > > > failed -make[1]: *** [vmlinux] Error 1
> > > > > 
> > > > > This is caused by commit 27b5ebf61818749b3568354c64a8ec2d9cd5ecca from
> > > > > linux-4.9.y (which is 91ee5b21ee026c49e4e7483de69b55b8b47042be),
> > > > > reverting
> > > > > this commit fixes the build.
> > > > > 
> > > > > This happens with vanilla binutils 2.32 and gcc 8.3.0 as well as
> > > > > 9.1.0. See
> > > > > the attached .config for reference.
> > > > > 
> > > > > If you have questions or patches just ping me.
> > > > 
> > > > Does Linus's latest tree also fail for you (or 5.1)?
> > > > 
> > > > Nick, do we need to add another fix that is in mainline for this to work
> > > > properly?
> > > > 
> > > > thanks,
> > > > 
> > > > greg k-h
> > > 
> > > Doesn't immediately ring any bells for me.
> > 
> > Upstream commits:
> > dd6846d77469 ("arm64: drop linker script hack to hide __efistub_ symbols")
> > 1212f7a16af4 ("scripts/kallsyms: filter arm64's __efistub_ symbols")
> > 
> > Look related to __efistub__ prefixes on symbols and aren't in stable
> > 4.9 (maybe Rolf can try cherry picks of those).
> 
> I now have cherry-picked these commits:
> 
> dd6846d77469
> fdfb69a72522e97f9105a6d39a5be0a465951ed8
> 1212f7a16af4
> 56067812d5b0e737ac2063e94a50f76b810d6ca3
> 
> The 2 additional ones were needed as dependencies of the others. Nothing of 
> this has helped.

Did this ever get resolved, or is it still an issue?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190802075745.GI26174%40kroah.com.
