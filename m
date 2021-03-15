Return-Path: <clang-built-linux+bncBCU4TIPXUUFRB6XRXSBAMGQESMWGT2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 062F933B012
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 11:37:48 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id j7sf24004341ilu.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 03:37:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615804666; cv=pass;
        d=google.com; s=arc-20160816;
        b=jlRHuWHfl5y+MbkOXEO4OtKc6LBkuGgrbXB8LOq8QePbBF/7FVz3GNwIT+K2RoziGs
         vRSvHxDYYDOvfX39pEhNaJNhIwY3Dy+lcHiFLQVbdaAA3n3xX9jmqzLcxfq21htMDEvy
         4qwI35+HRGEOXbxqelnfkH/AyPIKxcmRGagF0piLBdoDlY+GwyxzaOV4TjVhei2vm0ST
         KtEDezazrwkmHh8ZTnUR0G5pKF8h48YAoqvVao1xbMpq2KZJrfNhEe+7+hX4NvIGhOyw
         uDyQz+7eUP4isNvqmy5HdNulKXyYvhIwVkY3ulvkSpjiZ4/HqNFqI8TwgBmhczmo7+w8
         wcDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=BYZPoLeMHrifRvwXWeZoj/k2nw0n3MM/hFKic9y63X4=;
        b=PnGfSK4gzWD9hsSzB3Tj2STDk1fy/9WswD026btWy0nWRgqEHouYLekVwlJBntMaAf
         KlQHjMrWLjT8lWlX7D6bvfQlkimcfH7tquNc7sOwIStlm3bHl90yk4UT/D3XUBVhZyJg
         UFWZcZwbbNEUBDzynZ01daYOGKZh2TSSOCvWckb2qhw1ydyZqxIJR4fFor8wPXTI2iTf
         vTyB+SdjhwT6ywiymS1Ds933a2MyXm10t4tBvXdiTQ9xgEEMZ34YfxEtgcoDmUBN1B3J
         yckrHNQPPpKCt8dBa6lsQxW+1oZYavmPyj+V+zqztc6/yqW1SBhHMo/dqtRngJ1o9i4E
         /eig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=anErYdfW;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BYZPoLeMHrifRvwXWeZoj/k2nw0n3MM/hFKic9y63X4=;
        b=XLa5+hUltKSlIWhrdMtXeJA22eB3WYmFQ/qbj+zfH4u/MFz51HQAs8ZcLCU/UKQhdD
         oKrOVPGlMBl13fH2vCEtq0WElxtWE90NG6u8IjhvbUNE/8Od8YQCFG4VdRtX0X2tfSRD
         ONVzkKo2z18rSHwQvnNcTdNlt4K/eGvCM/g3wNPpn/5RqXWhLZGm/PWIxAb4DMmRO3i0
         gnOr/OiSmEXyU1K+5v0ZWj2D0cbawvAnzoIqYp67ir0N0Oe+kkHxF2C9JGHm2e1IFOlF
         K2G2TJ3sDxCj3V+lVDX2KT/b4e1DYITxHITNRyyhKNzfBR3g0EzQY9Y/DkP4hS65xNCB
         H8Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BYZPoLeMHrifRvwXWeZoj/k2nw0n3MM/hFKic9y63X4=;
        b=VGzCkJ9deiKWDk9KMpS2kM14Dz96ArTkbgGl5dbTWSLkby2dlYglxOAUmHMSp1+VSU
         g3+mTavlxsN8I//Q8Pk6qx3am1ibIfEbu3fPk4HsaDIsG1BIOiZ8hFF6zgDsQau8wO9s
         XpZuGVwnJsF08YLIB24hpvOg2xqA4wwMteX/2zFOtN+cK7BVJLqv4oEwwiVBO+0AlCE5
         4osha8lzztigs2JEXgq258yhUiUyLwjUTiXSf0xQfJ1VtiU/NNOe0iugCOScOBeMJhC6
         krMrptqAd3vKM2/BjrnI5FfgP+nlY3pdFGpTHKg5E7Myrpz38TDa9wvwKMKPysPPL4Br
         CCZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531reuHkKqPAWg3X6qwoBL7aQdGrrXf6qyL8vmLfycUsrtEwLyiM
	uxUzUJBvodebO9Fe+sek7/8=
X-Google-Smtp-Source: ABdhPJz9ESS+65mFa1xcqVHDp5StKylnEnHaiEn3DFYhSHEEoEaYChlxATVbFrNTPp73xvVpFO5UEg==
X-Received: by 2002:a02:4ec3:: with SMTP id r186mr8803484jaa.9.1615804666596;
        Mon, 15 Mar 2021 03:37:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1032:: with SMTP id o18ls3550945ilj.5.gmail; Mon,
 15 Mar 2021 03:37:46 -0700 (PDT)
X-Received: by 2002:a92:ce02:: with SMTP id b2mr11933681ilo.182.1615804666320;
        Mon, 15 Mar 2021 03:37:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615804666; cv=none;
        d=google.com; s=arc-20160816;
        b=y/KFSGiV/cvQb1VTCh8nye16d4Mq3y5hAKBfqtAVEl9CWF2rAUzxcMoK6HXEklrvv9
         svp5VQzXFeKxaP2yYIQdVZe1QWZny4yS77GKCWQGVUPV8geOeC1U2jWH+qRjgKvLtwI+
         UNgwMkQyA5YGjo1VXxi6uGjdRAWXQ4GhjtJ/MBB4PfZk/WtpBzT1STFYsJhsyV5RImBG
         gjubUBivUypUR8aErx8zI1Lh7lfagYgOu3MINfXT/cB4eTJgJ+KLDAvUviQTYqXAV52l
         eyyxVKG+si8lk5IeelQihmJwDIoOLgTXgVJE0AQUTeCc0mXjXbx3SaKhXJ+7GK0G9miu
         mHyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oNZf+Ys+YzuokMaGEajUgzi14+VzYC3/AqkLTGJx/Nw=;
        b=LRN+xtVfsh6TB9bJQDSUEabViyk/pt6/TqwsPQ5h0Y2p7HYGN80GZnRwAaSz29Ye3Y
         GQIEE+Qn2e19+kQ0Gt0KIW7vesFCYJFGG0L6ynCXqjHkF2Vpe3NzIRYXzYZ7PSjEtTg2
         xadOEulq+kOpr62VsYKVtEMTsyUeDA+FfZYNkkO8//qvxTDKngSOpHSQgSknu7sDqCw4
         EPR0pzcqigVjfFl7nXmc4xmi4qo+OCIIw6s/gz6IoZx2KaZJ0/g58BnadOUIwyTvnrgc
         phwk+TxG/J1oLvY/+J3lDa68aFv0ZrYlrcKxm163oqYRUjmKBtP18JtSKnKSJ02kNxzq
         9v7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=anErYdfW;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v81si603658iod.4.2021.03.15.03.37.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 03:37:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 66F8664EBD
	for <clang-built-linux@googlegroups.com>; Mon, 15 Mar 2021 10:37:43 +0000 (UTC)
Received: by mail-ot1-f53.google.com with SMTP id t23-20020a0568301e37b02901b65ab30024so4863929otr.4
        for <clang-built-linux@googlegroups.com>; Mon, 15 Mar 2021 03:37:43 -0700 (PDT)
X-Received: by 2002:a9d:6e15:: with SMTP id e21mr13403906otr.77.1615804662665;
 Mon, 15 Mar 2021 03:37:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdka=y54W=ssgCZRgr2B+NaYFHF07KnnNDfrwv79-geSQw@mail.gmail.com>
 <YEs+iaQzEQYNgXcw@kroah.com> <CAKwvOd=xr5je726djQeMMrZAuNcJpX9=R-X19epVy85cjbNbqw@mail.gmail.com>
 <YEw6i39k6hqZJS8+@sashalap> <YE8kIbyWKSojC1SV@kroah.com> <YE8k/2WTPFGwMpHk@kroah.com>
 <YE8l2qhycaGPYdNn@kroah.com>
In-Reply-To: <YE8l2qhycaGPYdNn@kroah.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 15 Mar 2021 11:37:31 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ@mail.gmail.com>
Message-ID: <CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ@mail.gmail.com>
Subject: Re: ARCH=arm LLVM_IAS=1 patches for 5.10, 5.4, and 4.19
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Sasha Levin <sashal@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jian Cai <jiancai@google.com>, 
	Stefan Agner <stefan@agner.ch>, Catalin Marinas <catalin.marinas@arm.com>, 
	Sami Tolvanen <samitolvanen@google.com>, candle.sun@unisoc.com, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	Stephen Hines <srhines@google.com>, Luis Lozano <llozano@google.com>, 
	Sandeep Patil <sspatil@google.com>, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=anErYdfW;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 15 Mar 2021 at 10:16, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Mon, Mar 15, 2021 at 10:12:31AM +0100, Greg KH wrote:
> > On Mon, Mar 15, 2021 at 10:08:49AM +0100, Greg KH wrote:
> > > On Fri, Mar 12, 2021 at 11:07:39PM -0500, Sasha Levin wrote:
> > > > On Fri, Mar 12, 2021 at 09:28:56AM -0800, Nick Desaulniers wrote:
> > > > > My mistake, meant to lop those last two commits off of 4.19.y, they
> > > > > were the ones I referred to earlier working their way through the ARM
> > > > > maintainers tree.  Regenerated the series' (rather than edit the patch
> > > > > files) additionally with --base=auto. Re-attached.
> > > >
> > > > Queued up, thanks!
> > >
> > > This series seems to cause build breakages in a lot of places, so I'm
> > > going to drop the whole set of them now:
> > >     https://lore.kernel.org/r/be846d89-ab5a-f02a-c05e-1cd40acc5baa@roeck-us.net
> > > and:
> > >     https://lore.kernel.org/r/066efc42-0788-8668-2ff5-d431e77068b5@roeck-us.net
> > >
> > > Nick, if you want these merged, can you fix up the errors and resend?
> > >
> > > Perhaps you might want to run these through the tuxbuild tool before
> > > sending?  You should have access to it...
> >
> > Oops, wait, they are fine for 5.10.y, just 4.19 and 5.4 are broken, will
> > go drop those patches only.
>
> Also, these are a lot of churn for 5.4 and 4.19, I'm not convinced it's
> really needed there.  Why again is this required?
>

I think backporting this stuff is causing more problems than it
solves. Note that the 5.4 Thumb2 build is still broken today because
it carries

eff8728fe698 vmlinux.lds.h: Add PGO and AutoFDO input sections

but does not carry

f77ac2e378be ARM: 9030/1: entry: omit FP emulation for UND exceptions
taken in kernel mode

which is tagged as a fix for the former patch, and landed in v5.11.
(Side question: anyone have a clue why the patch in question was never
selected for backporting?)

So I really think we should apply more caution here, and have a
*really* good story on why it is essential that these patches are
backported. In this case, I am not convinced there is one.

-- 
Ard.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGLrVXZPAoxTtMueB9toeoktuKza-mRpd4vZ0SLN6bSSQ%40mail.gmail.com.
