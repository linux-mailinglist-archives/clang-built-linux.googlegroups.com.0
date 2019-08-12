Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUWSY3VAKGQEJEKKQPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 406A68A534
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 20:00:52 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id d190sf66645221pfa.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 11:00:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565632851; cv=pass;
        d=google.com; s=arc-20160816;
        b=DH5qlBPE9//sFKrjTLxfKytPcJdowl0GeL5KTXWUvzzG+Wy60P2Id65CgD/6xpLlZe
         hrqQ4beNfTa0SCsL7Wripb6YhsyRm80PHg/H8+N14Z7LxtAYrLKMEpqGr1blGONvlDgF
         LgWeYHI46r1NGJNShG3lgopggcIoK8kFoivi8f7t3YSgQ+hjGbZ5sVoq0vEONrEyLnOM
         pfKdxdCmL8dUFa8/RsIJrxYCx0d9wLgprvNmhyO/cK2fZoMPwARiK1JGb5LW7wFuz1U+
         uTM+2fYULWetXn3NUjC5t88yWgXVC4BS4fJOim5EbKIGb+D/14dcnLLStISExosLrm7d
         m3vA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VgK5E97ptWqbP+rUhs1pZ1kyhTkizOFenACLDSmwcXI=;
        b=NRJ7BnrvknSNgKdf5zLsvqpdMWb0piHaj01ofdyXI+UkY3/59KfgDvnVbHEqR7lodK
         0Q60XZwt4362/4MirelzKZx8sPFDscU3jT49c+l65sO/1vdy96B4WfDlhnZ+7C8L4B8c
         wKnWt4anhPukUzyjNdzS8EE2HOTFCaFFaGxMkSJhvC5+lPbcj4H8jhMqkFVBe8XMfick
         hbL+7f8CNURbZI8fRbjDUyKfl0PNYCR/xBHveQTzSawOYuBXiH/qgGfJ/kZR2Z14lr2f
         s+eAURN7o3ZVDCNkxN6uKWwv+DSbmHVjq4nW72rqFt2krOLofqy2IUl9Btf0d7eSKPb3
         n4Jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JAhEldzg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VgK5E97ptWqbP+rUhs1pZ1kyhTkizOFenACLDSmwcXI=;
        b=rjNtb9YamiYznnr4VxyybKk+a2LZ+O1NNTnyu0FIGE9WqBczuiNcoJm/Z9Sq6afqk/
         x4dd3UaauyABPZCBY6D2mIvcVyy9X5BcTTPiaQnLNkmMfihkBIYpEI4wpl+3gFXedmMJ
         Gh2oreXzCWtPHSZa9q3xxt7BNOp6G/Yz4T4Ylalxo9GYXzVZ7ngnwb41qGDUdDAppW3F
         5xKpLu8ffyqbLBY+vUoUKq43mkB+VvzHHdwLu57vXNf3V8jDSpSvFXwQp84aOAIlhdes
         tbeBb/alhSwwkLav+rSECi3I6d91OxTkPGklxT6diXN3WXPfQ+yHARJVn3rERU6KnA34
         SOvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VgK5E97ptWqbP+rUhs1pZ1kyhTkizOFenACLDSmwcXI=;
        b=TUH1S2D+gn9M/F1UGCpo9FCedLulgyMnVSk/I9CVPGkqPW9lPO/5q1VzQz+M3Uqv8c
         MgYFzS6cufSEe+d3gQ4DH9p53KvsQVSsxCIdykpafp5303vcNQINYb8KU4J6u6jVUsTf
         if2d/Rt30xVu4JGArLBoCr7Myuu/hgv3k0CbdObhWFX4c9ohLB4fqEXP4kJUX4Ehm+Ye
         6dSSJ/IjsPRCNynvjywjaVaG6tmnG/ev8zl41UPAiaecJYtzyRaHJ3hbCMnMXar02xS+
         +89MpxCPX2DBkb77VLtohYFqhnTgllzVZFfrE8rVbg2R5y64NK2Idr/ZNcbbOE66Vfa7
         oaEw==
X-Gm-Message-State: APjAAAUTxmjP9QrYfeGu4+mq6EXhsFoxFIdOmsV/bV0KBSotZ3fQGIr5
	Ynij/4Pcz6Dq66WzCqQHFMs=
X-Google-Smtp-Source: APXvYqwL4pjJ9SfLeRxWGlY7eTn0GNusBnNkeLWdbrwy3hYaZMF0tbA3ynYpRPVQqCicqNHePQAkBg==
X-Received: by 2002:a63:a35c:: with SMTP id v28mr31454695pgn.144.1565632850956;
        Mon, 12 Aug 2019 11:00:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2cce:: with SMTP id s197ls6455084pfs.7.gmail; Mon, 12
 Aug 2019 11:00:50 -0700 (PDT)
X-Received: by 2002:a65:6294:: with SMTP id f20mr15310025pgv.349.1565632850556;
        Mon, 12 Aug 2019 11:00:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565632850; cv=none;
        d=google.com; s=arc-20160816;
        b=b0/T8aR77ELdJj8OFGlQJclwI/4/Pm7krlxL7LcB7bDCfmGc56U4ThkMKCN60e88yX
         gd1eWl1tjYsrPKPfCqi6BEmZnnIVRUqfq+pC32qnQcb06wkn88pXbNlqWnisOIQbaX6z
         Cscgau5MXqaG8NvuaeFfbO/Z6lS4pQ75Ql9gAGpMk1YKGFUTcrVzAfbZPQSPyJR/I/85
         aSwFGH4nNLFAXAJgNwK2Xqq/1Xry5dUeAyMQX3yn4Qaa8NTwgyPBQ3BSXklEBuaxz9hI
         b3FjQF+sUXFiimI+KooqIln+c49DLKtxgcPXyCjRYW83ksSkXkLWis/RQzeyNSKK3Xr1
         EIUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LMg80cBNLp3PHQDaMvfzFcPlhbFoNlL9OXKffiCeFqk=;
        b=BXtI0JVpyN45r6c+kSurMW7DC77TgJktpqkhnMy3G5L8rBQFzo22IgAUwX/AmSdevf
         pppbGgWJH35qzVTQhiI4+vmPEnC3d0MKr4CZIJkz45AiFxHqJ0XN3rlf3yaPW1drUzR9
         nX1NL0WCuZ5u7eDEgebJFAtKa71icIcYRI5xA0hXx3XM1gV38n+aNL1w6P7eBX+Kc/2/
         ldZ0pKPEZOvHRrX8f49LAbNf8/xsS6ENU8D5VonBsaXFDWOmaiSQjmhzEbTbJOmQ7osH
         dzSsv/5HP9OKfQeQdHGeYEl+hB9mH4qr/NmExNDUcaKlwE1wRNVV0nYfK4s5Bje+XAVW
         9Qug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JAhEldzg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id w72si4705859pfd.2.2019.08.12.11.00.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 11:00:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id w10so49873850pgj.7
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 11:00:50 -0700 (PDT)
X-Received: by 2002:aa7:984a:: with SMTP id n10mr8628976pfq.3.1565632849911;
 Mon, 12 Aug 2019 11:00:49 -0700 (PDT)
MIME-Version: 1.0
References: <201908120108.9KdVOsTD%lkp@intel.com> <CAKwvOd=JpUsD1XDSBzgwDWcAO+1VuGOLjbGNCTFne-WAqjGzXQ@mail.gmail.com>
 <20190812175828.GA13040@kroah.com>
In-Reply-To: <20190812175828.GA13040@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 11:00:38 -0700
Message-ID: <CAKwvOd=ORE==PVaXdyUc44CsNp7bShapjaQ00Ej-UA7_r4CWSQ@mail.gmail.com>
Subject: Re: [stable:linux-4.14.y 8386/9999] drivers/gpu/drm/i915/gvt/opregion.o:
 warning: objtool: intel_vgpu_emulate_opregion_request()+0xbe: can't find jump
 dest instruction at .text+0x6dd
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Daniel Borkmann <daniel@iogearbox.net>, kbuild@01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"# 3.4.x" <stable@vger.kernel.org>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JAhEldzg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Aug 12, 2019 at 10:58 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Mon, Aug 12, 2019 at 10:49:47AM -0700, Nick Desaulniers wrote:
> > On Sun, Aug 11, 2019 at 10:08 AM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > CC: kbuild-all@01.org
> > > TO: Daniel Borkmann <daniel@iogearbox.net>
> > > CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
> > > CC: Thomas Gleixner <tglx@linutronix.de>
> > >
> > > tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux-stable.git linux-4.14.y
> > > head:   3ffe1e79c174b2093f7ee3df589a7705572c9620
> > > commit: e28951100515c9fd8f8d4b06ed96576e3527ad82 [8386/9999] x86/retpolines: Disable switch jump tables when retpolines are enabled
> > > config: x86_64-rhel-7.6 (attached as .config)
> > > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> > > reproduce:
> > >         git checkout e28951100515c9fd8f8d4b06ed96576e3527ad82
> > >         # save the attached .config to linux build tree
> > >         make ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > >    In file included from drivers/gpu/drm/i915/gvt/opregion.c:25:
> > >    In file included from drivers/gpu/drm/i915/i915_drv.h:61:
> > >    In file included from drivers/gpu/drm/i915/intel_uc.h:31:
> > >    In file included from drivers/gpu/drm/i915/i915_vma.h:34:
> > >    drivers/gpu/drm/i915/i915_gem_object.h:290:1: warning: attribute declaration must precede definition [-Wignored-attributes]
> > >    __deprecated
> > >    ^
> >
> > Was there another patch that fixes this that should have been
> > backported to stable (4.14) along with this?
>
> If this is an issue on the latest 4.14.y tree, please let me know.  Look
> at how far back this commit is before getting worried :)

patch 8386/9999 ???!!!  Were there exactly 9999 patches backported, or
does git stop reporting after 4 digits? "4 digits ought to be enough
for anyone!" (except GKH, it would seem ;) ).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DORE%3D%3DPVaXdyUc44CsNp7bShapjaQ00Ej-UA7_r4CWSQ%40mail.gmail.com.
