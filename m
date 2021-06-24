Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBW46Z6DAMGQEOFYTBKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C173B2436
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 02:18:36 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id e12-20020ab0356c0000b029027874ede313sf1518368uaa.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 17:18:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624493915; cv=pass;
        d=google.com; s=arc-20160816;
        b=Anxl2as02j+LqXSfVcMVAoa6xLg0zVaTP9+nda+RPjpUO7KV+lGx3ha21vTCTdCveL
         Au830bYqt6EnrkMt4XhduAkdgvmQRj0GfSfOQq3wu/I6+oQFl1KNt703kuEWjeq/FK/R
         Va3WwObMFpfHHAMr7ZHA3y1OQqGXWql9ILz20Vm6zKjy8JoHAlyX7XGtaj02fSe4vZIk
         /J1PHxNk4FWVE8xsKxd4V72jgHt1+BSBJWc2+VZ2tJGTMI1R7NKkrcVqIpqt4X1S20C6
         z4krMiFVeLH00/wEjFVI7P+IfC/eo55rjh8k4Cpj5BgKAVUG/5rMbcNABTBUBNFtxT0C
         1liA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=COwOcwxt5qmGspyWUpMyWRb+7aW5+dZyVmlZMV1m/h8=;
        b=tczXlFX/2l6odYgslO/9unF/aRU6y1qt3K2qMB41AzDxe/AHWzIRH1GQU563Ihkf0a
         /Ue+JB+iWF4cmrYivogsSpDluYohmCu6MqDFX1Bm7qzxtmMdHnp3uWZf/n2kIC6aObdW
         ceYQO5LuTvsrIokrqg+O6RkKZY1MRw2qIj9JRf0D0SXWG03cr0AHHkw4TC4I+RJIqZPv
         K1Q1tZ7wCWUSyWlpxU3Psgfaa1iYUTHR8+gWSYnBp7/iBCjsxmiQ8yGPhIFHU2+t2AWv
         uR+hELLB+zu+sw3fHNUwJEJNAv67/6l9pUDYz6lnwYRNiB9hYmJw4HnSF+rXhsG1kZSW
         t6bQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SqAq0u92;
       spf=pass (google.com: domain of srs0=20by=ls=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=20by=LS=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=COwOcwxt5qmGspyWUpMyWRb+7aW5+dZyVmlZMV1m/h8=;
        b=gpo2hnCNTWGJEBgd8t8JXcFjxciPqtZlWqqg8eVCODNwMPkMRxdhgXl3X/PeJVHgXu
         Tf/wNObu4bv6ptl4uwdoUWQxq1yIRLkkxGxrw4d7xnKlC6HO3Pb2cRaOCWGu0BGKqmet
         E/zXZLeRXt9v0IOtCFgbzy7gzTA7rSb5PigOsGhMDwcXQte+CjixmZyq/scKroDmDovd
         IV7UTr94YN8ENDUi0emgpwyawoPtjqPipkcvpJ50nPhGHyMx5O25xpyosTCrk86chXpL
         wb9RQxyEXN3PlUhZl3FveXs5ZbqunfscoqdQqD8mgCENkZt3RfuZZPX0H7H4ObZbS+aD
         q/aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=COwOcwxt5qmGspyWUpMyWRb+7aW5+dZyVmlZMV1m/h8=;
        b=Rpwtq77+gnZseaKb8SkMDED8szKUqz/YmfsHuM7KgIctpv/zp32TtrYSPA+LzoeeCE
         DHeDQsSWereYjOcsyvNoyiBQBefZecdIBy3MEUq7cIxLXFpqxAfoJOs3k5Bv6dE3kob+
         B6z89T8q0jIxiwV0AUMQCkdLAoETNibw365N9hpi6ht0VPkEww0CoGPUgkNHzywZfsEJ
         wK5PcSqzqo2jjVIuTteUV2ZsuDmGBhb37GDFWjFQOcne2oVLYfIjCJIn1byNocqsom+V
         Gh0jsOa7fkd39xWA24EvoDhbk1t/UagAWzQInTQXi3HaqLa1GY6N1pjSVAvy61pDNfS/
         M3DQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532BZCR+ZfSYNtMF9X2TGJYE3UN5cnWhPQLzNWamccbyis+VPiHl
	6LTiRvEIbDUQa96H/XGUNuU=
X-Google-Smtp-Source: ABdhPJzallu8bggk2S5U+llUXZeRfBBay/1BNyrAaw81qTGA6Rug0MpXjthEw96KZJoUjoV0dw4QEw==
X-Received: by 2002:a67:8c4a:: with SMTP id o71mr680776vsd.46.1624493915700;
        Wed, 23 Jun 2021 17:18:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6130:398:: with SMTP id az24ls717911uab.0.gmail; Wed, 23
 Jun 2021 17:18:35 -0700 (PDT)
X-Received: by 2002:ab0:37c1:: with SMTP id e1mr3239697uav.116.1624493915180;
        Wed, 23 Jun 2021 17:18:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624493915; cv=none;
        d=google.com; s=arc-20160816;
        b=F7fxID9xdeQIfJZUZTJd93s+fYjPMCWM8yLR0M4uDPj+loqO9SxArKiZuCuDU0SayO
         WzufVpJ1HO+BiHfvy6MEVbrTEbfeW2aabWTks0BzzH0WRs+4fhuVk1Tgt48K70bXcuRY
         Iubxod/GEJVw6Zov3J9pr2hiQnZ4++DFaQPgmlmiMyXRHoTcKAlMnfNeU638+n9n/KZJ
         AydJKzbhSDtK3ID7Fs+3SFxcgrTvDmntJNr8G40ha9+VZF4DdXKynSFKV+q8K06GceK4
         Ngi/Agsf3tfs0c++mYEpeAkODMx7NK9WzxIYVDDe91p/EREi0kX5dv8Ql+kWMYPLR0W4
         ooIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=U80Eva80M5GoIWAQ1cAC4nqxJTAE/x2ryoNp0gxGfH8=;
        b=rFlI5r7w09OK7BmvyeuqZVddzOjXo2Co/l0Xszub59Z7RNjvY7331msBZMQTl44MNm
         Kpsi3HkyO5FarBziDlvZKBMQ8B1fSluhcBOMVX7orx5Bs7VJMQAsUBQGaQr7QuBWnZmO
         oouNDDjitHZMKmNbA3uCsSYEJHdNVHmrbawjjG2SBb9bwi9cCXFznwWO6/+W/U0tGtjn
         /ra9zdPGF5pkFiN3HokuAQmDNy+mwiNssNkU04l+Gl9F32zM+EZsGF3+U7ZgEBmg8ZC8
         AZtL+dPpmosRydXqT1K8iQM4oKUlODfkHKJ6NiFcXUwuMdlwL4dQR6iHfVxFRv3BIDOq
         +9Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=SqAq0u92;
       spf=pass (google.com: domain of srs0=20by=ls=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=20by=LS=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y2si152673uaa.1.2021.06.23.17.18.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Jun 2021 17:18:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=20by=ls=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2552460FF2;
	Thu, 24 Jun 2021 00:18:34 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id E515B5C08D8; Wed, 23 Jun 2021 17:18:33 -0700 (PDT)
Date: Wed, 23 Jun 2021 17:18:33 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	"Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Matthew Wilcox <willy@infradead.org>,
	Naresh Kamboju <naresh.kamboju@linaro.org>,
	Linux Next Mailing List <linux-next@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	lkft-triage@lists.linaro.org, LKML <linux-kernel@vger.kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [next] [clang] x86_64-linux-gnu-ld: mm/mremap.o: in function
 `move_pgt_entry': mremap.c:(.text+0x763): undefined reference to
 `__compiletime_assert_342'
Message-ID: <20210624001833.GR4397@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
 <CA+G9fYvvf+XTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA@mail.gmail.com>
 <YMtTdU2b9fI3dnFD@casper.infradead.org>
 <YMuOSnJsL9qkxweY@archlinux-ax161>
 <6f3c5317-2877-9a57-0126-e9305f000269@linux.ibm.com>
 <YM0mrZIPM+sWTDHf@Ryzen-9-3900X.localdomain>
 <CAKwvOd=w0iPT_LLHQ48Mq3XCZcW9dZNRTpq+0OyVEjsg-VRXOw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=w0iPT_LLHQ48Mq3XCZcW9dZNRTpq+0OyVEjsg-VRXOw@mail.gmail.com>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=SqAq0u92;       spf=pass
 (google.com: domain of srs0=20by=ls=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=20by=LS=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jun 23, 2021 at 04:39:56PM -0700, Nick Desaulniers wrote:
> An additional report:
> https://lore.kernel.org/lkml/20210623223015.GA315292@paulmck-ThinkPad-P17-Gen-1/
> EOM
> 
> On Fri, Jun 18, 2021 at 4:05 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On Fri, Jun 18, 2021 at 10:32:42AM +0530, Aneesh Kumar K.V wrote:
> > > On 6/17/21 11:32 PM, Nathan Chancellor wrote:
> > > > Rebuilt the CC list because most people were added based on the
> > > > incorrect bisect result.
> > > >
> > > > On Thu, Jun 17, 2021 at 02:51:49PM +0100, Matthew Wilcox wrote:
> > > > > On Thu, Jun 17, 2021 at 06:15:45PM +0530, Naresh Kamboju wrote:
> > > > > > On Thu, 17 Jun 2021 at 17:41, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
> > > > > > > x86_64-linux-gnu-ld: mm/mremap.o: in function `move_pgt_entry':
> > > > > > > mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
> > > > > >
> > > > > > The git bisect pointed out the first bad commit.
> > > > > >
> > > > > > The first bad commit:
> > > > > > commit 928cf6adc7d60c96eca760c05c1000cda061604e
> > > > > > Author: Stephen Boyd <swboyd@chromium.org>
> > > > > > Date:   Thu Jun 17 15:21:35 2021 +1000
> > > > > >      module: add printk formats to add module build ID to stacktraces
> > > > >
> > > > > Your git bisect probably went astray.  There's no way that commit
> > > > > caused that regression.
> > > >
> > > > My bisect landed on commit 83f85ac75855 ("mm/mremap: convert huge PUD
> > > > move to separate helper"). flush_pud_tlb_range() evaluates to
> > > > BUILD_BUG() when CONFIG_TRANSPARENT_HUGEPAGE is unset but this function
> > > > is present just based on the value of
> > > > CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD.
> > > >
> > > > $ make -skj(nproc) ARCH=x86_64 CC=clang O=build/x86_64 distclean allnoconfig mm/mremap.o
> > > >
> > > > $ llvm-readelf -s build/x86_64/mm/mremap.o &| rg __compiletime_assert
> > > >      21: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT   UND __compiletime_assert_337
> > > >
> > > > $ rg TRANSPARENT_ build/x86_64/.config
> > > > 450:CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
> > > > 451:CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=y
> > > > 562:# CONFIG_TRANSPARENT_HUGEPAGE is not set
> > > >
> > > > Not sure why this does not happen on newer clang versions, presumably
> > > > something with inlining decisions? Still seems like a legitimate issue
> > > > to me.
> > > >
> > >
> > > gcc 10 also doesn't give a build error. I guess that is because we evaluate
> > >
> > >      if (pud_trans_huge(*old_pud) || pud_devmap(*old_pud)) {
> > >
> > >  to if (0) with CONFIG_TRANSPARENT_HUGEPAGE disabled.
> > >
> > > switching that to if (1) do results in BUILD_BUG triggering.
> >
> > Thanks for pointing that out. I think what happens with clang-10 and
> > clang-11 is that move_huge_pud() gets inlined into move_pgt_entry() but
> > then the compiler does not figure out that the HPAGE_PUD case is dead so
> > the code sticks around, where as GCC and newer clang versions can figure
> > that out and eliminate that case.
> >
> > > Should we fix this ?
> >
> > Yes, I believe that we should.
> >
> > > modified   mm/mremap.c
> > > @@ -336,7 +336,7 @@ static inline bool move_normal_pud(struct vm_area_struct
> > > *vma,
> > >  }
> > >  #endif
> > >
> > > -#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
> > > +#if defined(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) &&
> > > defined(CONFIG_TRANSPARENT_HUGEPAGE)
> > >  static bool move_huge_pud(struct vm_area_struct *vma, unsigned long
> > > old_addr,
> > >                         unsigned long new_addr, pud_t *old_pud, pud_t *new_pud)
> > >  {

Making the above change does the trick for my repeat-by, thank you!

> > That works or we could mirror what has already been done for the
> > HPAGE_PMD case. No personal preference.
> >
> > diff --git a/mm/mremap.c b/mm/mremap.c
> > index 9a7fbec31dc9..5989d3990020 100644
> > --- a/mm/mremap.c
> > +++ b/mm/mremap.c
> > @@ -460,7 +460,8 @@ static bool move_pgt_entry(enum pgt_entry entry, struct vm_area_struct *vma,
> >                                       new_entry);
> >                 break;
> >         case HPAGE_PUD:
> > -               moved = move_huge_pud(vma, old_addr, new_addr, old_entry,
> > +               moved = IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE) &&
> > +                       move_huge_pud(vma, old_addr, new_addr, old_entry,
> >                                       new_entry);
> >                 break;

This one is already in -next, but you knew that already.  I am happy to
test the resulting patch, when and if.

						Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210624001833.GR4397%40paulmck-ThinkPad-P17-Gen-1.
