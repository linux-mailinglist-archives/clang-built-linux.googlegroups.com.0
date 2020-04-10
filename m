Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVHTX32AKGQELXD3REA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 065641A3D38
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 02:12:06 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id c15sf456139iom.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Apr 2020 17:12:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586477525; cv=pass;
        d=google.com; s=arc-20160816;
        b=KViHHCRCrznQulRutZJxMvMW2vBatAM8uhsXbHgpOZPVuUlbfkWq3yRCiMf3OWbX5d
         K3PwS6eUlojxxjiwG26ENooeCxOLiP5qp03i2xmA1NL6qfTI+AjH9rU2fzT3DBu6M7Gn
         qg1WDHqktGmAol++cUhaFJUTvHZOK8OKwtOR8CzNE96BdaXnDiUaPoY/irAuzBpKuJ+L
         Yl7kpQoCgiRMXaZoMawaPDnPxqiX33/1pmPZ6f9kVyRLdyf1KS4tWDqxojJg04V44WFC
         4Vyp0qTZASH/64gTKizd3cu2a8gPpMZK++0vV3p5TeAQ3qQZ6x+NMQt7QGz6yhBqb6Xy
         2qcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=hDwzWEHpj2eyLuXUnW9bk9/VTkXAvYV4gmW1x8gZmWI=;
        b=QZX+1D3nZu1fcHgeCcTkPkchrIjjYqtgI0P/4H8XaWUHheVfZ7WiHTKhcyPtI/eVJK
         QCE/eUSmIE4VjNLh8/2Tg4u/h+5tlb2eoGQTFvXiW14yQr3ee+YcOvPvBhRouqEjcZc6
         zj1KJbwBR5X9XeJZOJdVH5btiRqMGRmuAogHdqokvjU8ECQjPeXEXQ12B7rXHa6JUh5a
         IHTLrZh3yGLkts7j+0A07toeg3Gmkjzie5qBkohocHUbfHIT1JG07vQulMk161/Sdgj4
         BEGG8472ffDOw6XaNT0816ZkVwfgKGEc948+Qnz7IYyWtExBafYLmFHqmX9qMAoi5ZrG
         YTCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZRsrd9fo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hDwzWEHpj2eyLuXUnW9bk9/VTkXAvYV4gmW1x8gZmWI=;
        b=R3qTLEzdQhwXus7eHwDg/+hiODxw7tgOp8kqWxfEX4OT5pC+bxX2wckRAYIzFQAHfD
         4SVCbM3adaZU43hxP78Rjavb5WNq/XHIdLpd+Jk+Fmae9tnp03L4dHZx0kkVI/DzyPhz
         ttkuFdf9f6yHRrOvmIjSB3dV3VplyGLqVHusnOpr8YJte1jM6Vnf/gCTd3eiCLV6kCdZ
         /+fgNcaSx/g9E0JQdva1Mjzw+S19tQRdmt6XAC8QI2ur7l5BD+slOZLtZu8oOLJMomuy
         wFK12mQoL+IpNtJcxg8wnYXwP92zOXAhff4HUhUt7BSeKOqU3dlPjgdqc80mpEIomYp7
         6Ejw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hDwzWEHpj2eyLuXUnW9bk9/VTkXAvYV4gmW1x8gZmWI=;
        b=cNFc4LiguOM4t5UHf7S/T2j7PVMTkOynAI5yltb4XZyBvMBHGeuxqRbBym0W6F9TZK
         GbmjKH881VqgMWDdc3NCc5eHJQT9KN60Nhscdihi1dSSGI4aMQrTNUhwQ3D0xQGhm2vf
         rXHuNSpHFYMspockY5/KQKkEAy5V8oqYMjnqYK/UiD75y7X1U2Hj8hlgmTHhMx8yMHgD
         aeCLma/MXdnOEIuARM+SHrq3txRKpPNit6H36j8OV+NnqK3Tx8yXocl4Y7E61D3bRd/h
         NMLIkupfR23+DB03H9rpja+ZClSlCZqCQdYBcaQ/z244c11dvv6tdN1Cu1FIMhPEx9ok
         c+8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hDwzWEHpj2eyLuXUnW9bk9/VTkXAvYV4gmW1x8gZmWI=;
        b=jZaJ+TYgiWNNn96gn/lKrX3SQH9efWeVAKN8sjxmymJbpPohRHcxWyWessDEm8JgfM
         zx4tC4x2YBEYySjyPBMOQaOJ1dsvEVwAxC+3EyC2tKcHJnvBnr7zVGO9TC2/w4ciCck3
         nHHsYFGccCzlNRPF8ayC5v0VOBvlLkKZsGt6FiRuCtqMi9904hiOM1UfpI8jZFLwvuK9
         9UW6+kyZ/weWnw7MSBomPYH0ED7vCOqJ7CvCumucV6GSPHfCFzmlmpjon1z0SABQtf+S
         tOU8RPHAWcQdBUzUAkGFVoqIy4KV7IOfB//zjALdmYj5ZvnD9Iiv/GKAo5tWe6xW+QzK
         2AwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubMihds25PzsI6AUBwPmDKA6NUiUhzcKhg5iY09BtdyAdaIDH/d
	48tDsg2OQbELGyU9meD4mMo=
X-Google-Smtp-Source: APiQypIOu+EkVO6ihl/GtuKvNB32Os/UIGytinN4Eybc+aJhHyRr5o0dd7S72HTltf1+sMj0lmwnug==
X-Received: by 2002:a02:603:: with SMTP id 3mr2197860jav.132.1586477524941;
        Thu, 09 Apr 2020 17:12:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:284:: with SMTP id 126ls2724270jau.1.gmail; Thu, 09 Apr
 2020 17:12:04 -0700 (PDT)
X-Received: by 2002:a02:2384:: with SMTP id u126mr2255475jau.64.1586477524604;
        Thu, 09 Apr 2020 17:12:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586477524; cv=none;
        d=google.com; s=arc-20160816;
        b=zqndUHToLOlowWqmeB16i4wIjkjn/WyF+4TyEEWjMr7Ozd55ntPy2lM31ko3qYdqjr
         R7NaQCpO6VlYe5s/D0oqgnhaEpmaRwaXMYaEeMfLBIjOvV64ds6ydmy9DjOnJ8y8YL7J
         31FuqmoyiBsAGEbxP8JlYTPF5u/8HBdjVeS9f2IROijkCp27g0gIuslmGHfHV4i5nMPd
         ax7NjVZNdUPw7U2ihOykyC/5CzEVzV9GHZ9KKHRIrzubhBC9pOjmIIiBXEk4w2qOfWZe
         ENYgBJisAeRhmJm5b+Hwknq/6SbTYbt1/JjHwBSjqEUiP+blbMHdFmJpgoS0fOiEGsJx
         FIhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JjCg+0ZKVUEU3m1mtuE7C2U4b9dMYk265cCmLvmPh20=;
        b=WkYZEcYUWjCqyqaTKXkXx8d0zAEiAp3chgaiOMZb2siiPDTIM1CDY7DgnR5x6ArihV
         o/KHq2k7k4R3x9SzPJApVzxCMOxbN4pDztTrUar/YAJzd/trrluqql6eD/m8nXK533NX
         T/JOw60UjSEfJS2NsEB7c3UwFnaVVZuKrJYNEUGBe9u1eMfx0M+fTMcxtCUDW2vZCX2W
         69cjykzqUmEZgt9Anr5/DqqE7ahMp66Iz3HNlp2yNj2IwR2lV8KOvIhKGXOGS/JCXgYK
         Kt+Yp7FXTYnABq3A3AXcTvHT1fjzu0e9acyQZ1CLikgOLNYTbJAWrOjqVWuVilU6Jyxy
         JwPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZRsrd9fo;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id k88si42374ilg.1.2020.04.09.17.12.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 17:12:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id k9so154226oia.8
        for <clang-built-linux@googlegroups.com>; Thu, 09 Apr 2020 17:12:04 -0700 (PDT)
X-Received: by 2002:aca:c311:: with SMTP id t17mr1528797oif.169.1586477524193;
        Thu, 09 Apr 2020 17:12:04 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id 186sm307290ooi.30.2020.04.09.17.12.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 09 Apr 2020 17:12:03 -0700 (PDT)
Date: Thu, 9 Apr 2020 17:12:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jian Cai <caij2003@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>,
	Manoj Gupta <manojgupta@google.com>,
	Peter Smith <Peter.Smith@arm.com>, Stefan Agner <stefan@agner.ch>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ilie Halip <ilie.halip@gmail.com>, Jian Cai <jiancai@google.com>,
	Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Doug Anderson <armlinux@m.disordat.com>,
	Benjamin Gaignard <benjamin.gaignard@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Tejun Heo <tj@kernel.org>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Patrick Bellasi <patrick.bellasi@arm.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Dan Williams <dan.j.williams@intel.com>,
	"Eric W. Biederman" <ebiederm@xmission.com>,
	David Howells <dhowells@redhat.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Message-ID: <20200410001201.GA15303@ubuntu-s3-xlarge-x86>
References: <20200409232728.231527-1-caij2003@gmail.com>
 <CAKwvOdkot0Q7FSCMKGm6ti4hhvD3N+AMUK4Xv2Xxiiu3+pURgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkot0Q7FSCMKGm6ti4hhvD3N+AMUK4Xv2Xxiiu3+pURgQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZRsrd9fo;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Apr 09, 2020 at 05:01:33PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Thu, Apr 9, 2020 at 4:28 PM Jian Cai <caij2003@gmail.com> wrote:
> >
> > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> 
> Hi Jian, thank you for the patch.  It's pretty much spot on for what I
> was looking for.  Some notes below:
> 
> s/assemmbler/assembler
> 
> :set spell
> 
> ;)
> 
> Also, could use a link tag, ie.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/975
> 
> (Always include the link tag to help us track when and where patches land).
> 
> Finally, I think the hunks for the two different files should be
> split; the init/Kconfig change should be it's own dedicated change
> that goes to Masahiro, the maintainer of the Kbuild tree.  Then when
> we have that, the dependent configs should go separately.  Would you
> mind splitting this patch in two, and re-sending just the Kbuild patch
> for now?  Since you used Sami's patch for inspiration
> (https://github.com/ClangBuiltLinux/linux/issues/975#issuecomment-611694153,
> https://github.com/samitolvanen/linux/commit/fe9786cb52a0100273c75117dcea8b8e07006fde),
> it would be polite to Sami to add a tag like:
> 
> Suggested-by: Sami Tolvanen <samitolvanen@google.com>
> 
> or maybe better yet, take Sami's patch, add your signed off by tag
> (maintaining him as the git author, see `git log --pretty=fuller`),
> then rebase your AS_IS_CLANG hunk on top, make that a second patch,
> then finally have the arm change as a third patch.
> 
> This change is exactly what I'm looking for, so these are just process concerns.

I think that they can be sent as a series that is picked up by Masahiro
with an ack from an ARM maintainer.

> > kernel.
> >
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
> > ---
> >  arch/arm/Kconfig | 2 +-
> >  init/Kconfig     | 6 ++++++
> >  2 files changed, 7 insertions(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 66a04f6f4775..39de8fc64a73 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
> >
> >  config IWMMXT
> >         bool "Enable iWMMXt support"
> > -       depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
> > +       depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)
> >         default y if PXA27x || PXA3xx || ARCH_MMP || CPU_PJ4 || CPU_PJ4B
> >         help
> >           Enable support for iWMMXt context switching at run time if
> > diff --git a/init/Kconfig b/init/Kconfig
> > index 1c12059e0f7e..b0ab3271e900 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -19,6 +19,12 @@ config GCC_VERSION
> >  config CC_IS_CLANG
> >         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
> >
> > +config AS_IS_CLANG
> > +       def_bool $(success,$(AS) --version | head -n 1 | grep -q clang)

$(AS) is being replaced with $(LLVM_IAS). That line should be:

    def_bool $(success,test $(LLVM_IAS) -eq 1)

I think. That depends on a commit in Masahiro's for-next branch [1] so
it should be based/tested against that.

Otherwise, I agree with Nick's comment about being split into two
patches (one for the init/Kconfig change and one for the ARM change) and
adding the Link tag.

I ran about 75 randconfigs with LD=ld.lld and LLVM_IAS=1 and I did not
see any Kconfig warnings from this and CONFIG_IWMMXT was unset in every
one. Should prevent the errors that you encountered. Feel free to apply
the following tags to any follow up revisions.

Tested-by: Nathan Chancellor <natechancellor@gmail.com> # randconfig
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

[1]: https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git

> > +config LD_IS_LLD
> > +       def_bool $(success,$(LD) --version | head -n 1 | grep -q LLD)
> > +
> >  config CLANG_VERSION
> >         int
> >         default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> > --
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200410001201.GA15303%40ubuntu-s3-xlarge-x86.
