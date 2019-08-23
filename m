Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEHZ7XVAKGQELZMVKTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id D21C99A733
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Aug 2019 07:41:36 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id r25sf4651838edp.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Aug 2019 22:41:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566538896; cv=pass;
        d=google.com; s=arc-20160816;
        b=diO9UnB0zT6byPOzsSTrzSZeXrau3Z/wyV2D1RLlA9NXD6y0Df0f1EX5zZe4g6WFdb
         qAXhS3w24hc01r8FZqT0o8xcJFN0Pvm8t4ASy3vWbs0IXKut+/jK1kQIFzmhAQ1fSb81
         fkttyNSs1q9Mp0KAey4qEexW0+axrnbycqDyroBGsefOEEnURs26cRzamMhIeGiTGT+d
         G9sU0jiubGqKBKvXl5HbB1JhPrr2+FQ7/hqSHicbh4P0aIkpDnL1iR2lx+fHrVaRyzI+
         FllX2uZL3+gp0FvAa+6LjDUYkfowXtzMOA34HpnVvJAx/kD++w6LBTh/SWAkxjcRX493
         RM0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=2BMQRWlXFesO+FpF3kPPmytG4glYew9Yu4sHekaIXEI=;
        b=BuJtNwGXPyElG3JKxYUUOoxn2wgyN8lY6ujsZsW4hKzeI2T1YjDItoeToXJIe1G17z
         ejt2ojAmXZjWZQzT4JikdHox9CCZVmC9KL5Zis/Ph0tZrfOPilrJChilhB+AXI/H5vWX
         wal6T27UkXxCOqTr/G/MZAVQngUx7CkxgpHFLxYutKsu74tD3G+NAxS2W+iawlo+77F1
         1yXCGDUZhoqvYnLBgq3sKDTrMxMKhoYnxfAG5B7DG94lEySzfr3yjbeXkImDvdjNqwke
         mKoJnupn3p8HB/gHaH0M74pyjIFbvjLoVHTQoGc2BqLHDr84eEyr7uoflROUxC32ny9n
         NjRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AinHE/qd";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2BMQRWlXFesO+FpF3kPPmytG4glYew9Yu4sHekaIXEI=;
        b=P8lRROGHHieu9F8yMeIgCS237jrdoJICHwAVqh8jujKkK/J6mh+9kcPK/V9QQmy5Hj
         crZJ/qxfIUFRTfYGRpOqazLQ6vtUo32Nh+rKoG1YEJdy0CCaCqHNb6kscuyxGrdbq2+/
         3JyKE+uc2pwV5vgruZs35bv8frn4j5ayXLLupkno/4lqm/qkARdnFYP8dp58DSUkmiBM
         q12wZTeaO/cOZ+THts67eM8c9Fs4BblVh5+eihvj8QRO1MLyiGZm2Ldn5Zxnsbpep9u3
         0d3CSX397FoLhHXbFL/WXsL4RKdJx52Zx8nLf1xTd5EKcGoKCqwvwoUwBKougyiZJ46d
         fCvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2BMQRWlXFesO+FpF3kPPmytG4glYew9Yu4sHekaIXEI=;
        b=bECK8eOMtddbCALekZGZ2rB90cz5UtkFT4UzpFzk7X1qIY6JiWMu5/NTbQwcaMWzLV
         ddmPZv9mp2WpK7M8SbXbh7lCX51iLI958Hq4BVmCskyrY9LxaI+wsP4y0UGAcFfOzH4f
         FYBGL+qrPT0DB3SztXP2lpwkIJxCiqjLTpHP9kUT3iCYmUfm/NG78nnUp2/WQxgLmmcA
         GcdV8Qb9K+qRs91QSTZglaSlvjqh/UC2Dx+ffyzHNiDAUx1atiTFVRoOK+kmyXs0LFe7
         YaHh/i+69NQCGcLjWsWQDIfuB3wU9oMKfauq1ZY5Hvt3T48awXZMOkMYIfWFA2l4b5za
         en+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2BMQRWlXFesO+FpF3kPPmytG4glYew9Yu4sHekaIXEI=;
        b=hZ2O/X0/GQ0n6rNWCeMHBGkY4vvrIrj5B8QLiP3qqFHWRLPl0t90uTSLRqsTNXc/wu
         3w7z9yXuMQjNC+HvXTaCjnKFEGaX75V1EZ99A15rBtUdeLeBXOfUUIKvxeVRmdOWEIk5
         YifdcQ/JgecbmQUe+MywKSLB3r6yDhZy51DvyHp9CgQKU5Nt5Q4d/LoPQLRFWPCT1WKC
         7gXtOZduY/Wpty3ZUI8KwAc1A/qHQrnyaVPsTkWRnBDcdNuDaDywrG1TbeUqa5V9eTaX
         28WX6JB87AUxl9Zobfcg9k/yK7DHeoydwGqr3/6gG1VKdODkwLZLnI16JKMeBUrwFzSb
         hskw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUQCBJPg0u6ZZbKjTIsRtljF+6yTdBCVe0GO8E922HH8YwCBfUY
	2P5RL/gIfSvtl9i5zY1Pbjo=
X-Google-Smtp-Source: APXvYqwaCXU7Rfk/WwJxW0vaTO/Jr8M912zPxMXfxbhOYkwubwP/jrziEzMx6h7DeIqzX4U8OuF4mQ==
X-Received: by 2002:aa7:dac9:: with SMTP id x9mr2530712eds.271.1566538896378;
        Thu, 22 Aug 2019 22:41:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:f31a:: with SMTP id p26ls2787400edm.6.gmail; Thu, 22 Aug
 2019 22:41:35 -0700 (PDT)
X-Received: by 2002:a50:9738:: with SMTP id c53mr2558130edb.221.1566538895944;
        Thu, 22 Aug 2019 22:41:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566538895; cv=none;
        d=google.com; s=arc-20160816;
        b=Wvi2bkvPA7odWzvLNYJ6oKFSRKQqBaU99kk41eDzSf2dDZjZ9egBT/ZOPKnzGnSI61
         KKD9d4N/aNzMyxMxIF+ztyKGlSTOm645FyJdz4RaJS9skJD6Ig3ce4mr+NbjbOTNhlvZ
         s73vScBYFU23LwiGcHfTROG/uJYkkxpgQjxsOQ76xp1um/f3DaGRc2tQAmLp76Twev9d
         KgP/an4XGvOSNoN0q+3tVHYRwyFy1kxevvpjUP67DWwDolLWXf1Et5rOJ6RrP7nYMovo
         AbT/bZfuj1Su78r6Cl4hUSG/7xHUI0HCOfcKkD7JqLSsGxN/PpBmbyEvDVVzoLnStclt
         A8aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HjVBtM6VXkaOjR0xSIpPf1t5Tcc6ijouzfhcRWGrVmo=;
        b=k1Uf2+t6r9xer9SB1XAF5ZZC6hXbuRTk02dSpZ62Q9JZ7GTiuF40tKo4x4XcQQiT0+
         Sl3q68Yu9EOQVfQPw4hJs8X5zpyCylJRoFqZZmOXzgrqwpasGynqDPyUWSh6Axk81x46
         Y3I4HvMwgY3eHJLRL7yjaG4fT0GY+pocrHLf2p6DsFcbjPCyl//I+CXFK3S/dt1K2+sg
         EmVAl81SyLnGVMKwIIUtPca+RtTHmOXPO6wVZet9t3z8IVTIeymiVnHK/AtTwP6lgoxI
         AliUzWE0PuvpGOS51fRSThHlNkrhSzt/XLYdsrmOlap9FR0kEn5WvRXw+79OAdN+TQWu
         sIMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="AinHE/qd";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b39si82484edb.1.2019.08.22.22.41.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Aug 2019 22:41:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id c3so7434287wrd.7
        for <clang-built-linux@googlegroups.com>; Thu, 22 Aug 2019 22:41:35 -0700 (PDT)
X-Received: by 2002:adf:e390:: with SMTP id e16mr2869649wrm.153.1566538895451;
        Thu, 22 Aug 2019 22:41:35 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id v124sm3116010wmf.23.2019.08.22.22.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 22:41:34 -0700 (PDT)
Date: Thu, 22 Aug 2019 22:41:33 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Philip Li <philip.li@intel.com>,
	Chen Rong <rong.a.chen@intel.com>, Joel Stanley <joel@jms.id.au>,
	kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>
Subject: Re: arch/powerpc/include/asm/current.h:32:43: error: unknown
 register name 'r2' in asm
Message-ID: <20190823054133.GB70417@archlinux-threadripper>
References: <201908201102.0U21yPsV%lkp@intel.com>
 <CAKwvOd=sfYbVT=eY=MGX-aKVuVrXW2o_=pSvTG7r2EY4dsG9NA@mail.gmail.com>
 <8736hs5zrp.fsf@concordia.ellerman.id.au>
 <CAKwvOd=8ouR_mCbK=ZtQ6ojJtWnNpvMkyj=gL1xkpADmnPg0aQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=8ouR_mCbK=ZtQ6ojJtWnNpvMkyj=gL1xkpADmnPg0aQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="AinHE/qd";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Aug 22, 2019 at 08:39:57PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Thu, Aug 22, 2019 at 8:25 PM Michael Ellerman <mpe@ellerman.id.au> wrote:
> >
> > Hi Nick,
> >
> > For some reason I can't find the original mail from the buildbot,
> > despite it saying it sent it me?
> 
> Ah, haha, yeah sorry, I should have mentioned that 0day bot is just
> sending our mailing list the Clang reports as a trial run.
> 
> >
> > Nick Desaulniers <ndesaulniers@google.com> writes:
> > > +Michael and Joel,
> > > I thought this would be a bug in Clang not recognizing the register
> > > names, but my simple reproducer errors in GCC as well:
> > > https://godbolt.org/z/ivGCXo
> >
> > That link is compiling with both clang and gcc for x86_64?
> >
> > If I flip them to ppc64le it works for me:
> >
> >   https://godbolt.org/z/_mZlm7
> >
> > So I'm not sure what's going on here :)
> 
> Oh man, sorry, bad link (mine).  Indeed if I set `-target
> powerpc-linux-gnu` (or `-target powerpc64-linux-gnu`) for clang than
> it's recognized.
> 
> >
> > My best guess is that the clang they are using is actually targeting
> > x86. That would explain the register name not being understood and also
> > the BIG/LITTLE endian mismatch.
> 
> Indeed, Rong and Philip, is the ppc backend disabled in your build of
> clang per chance?  If you're configuring your clang build with cmake,
> please triple check `LLVM_TARGETS_TO_BUILD` has `PowerPC` in the `;`
> separated list.

I don't think this is the case; the build would have errored if the
target triple was specified but the backend wasn't enabled. I think that
CROSS_COMPILE might not have been properly set (although Kconfig should
have caught that...)

Having a way to rule out environment issues or source issues would be
welcomed. I suppose that comes with make.cross but in the meantime,
having something like the make commands/variables or a full V=1 build
log type deal might be helpful to narrow things down.

> Otherwise maybe an allnoconfig build is messing something up?

I can compile a ppc32 or ppc64 (I think they end up being the same
thing...) allnoconfig build locally without any issues.

> make.cross looks gcc specific, I think there's still a TODO to include
> a link to the clang one for clang reports?

While I am sure make.cross needs to be rewritten or updated for clang, I
think a bigger blocker is having a consistent downloadable LLVM
toolchain for people to use. make.cross downloads the GCC toolchains
that are available at:

https://mirrors.edge.kernel.org/pub/tools/crosstool/

I think we should potentially look into adding clang to that (I think
Mark Rutland had mentioned that at last Plumbers conference?), maybe
something to discuss at next Wednesday's meeting, especially since clang
9.x has asm goto.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190823054133.GB70417%40archlinux-threadripper.
