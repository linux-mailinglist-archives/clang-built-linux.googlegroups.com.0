Return-Path: <clang-built-linux+bncBDJNHL5JSEOBBUGE3T5QKGQEIZCIAYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id D476E28132C
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Oct 2020 14:51:28 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id a17sf549810lfl.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Oct 2020 05:51:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601643088; cv=pass;
        d=google.com; s=arc-20160816;
        b=a+WJ52bc2v9uddGbbthzZPIowN3CGEKpap2gTV12j6UveOksnmRySrYykOAs6b6iLw
         Z/yZ+a6jNPmdevT3izQDJmbAjXNCXmKDuDYWRSGAbVJf2sdmC8OAXMcng1WFF2IvbR4I
         d5SnlmhVeif62kiw3zm6zgLiKAAfXj/+ntpr06ktUitRk2Ci5vFMHvks92ZpuE42AbQh
         z5BjDrQa6s7sEV5zVAiB66KDAWbzd0R3R7DHQI1YyZUwXP/i0aFEEYNHdqDD6moeHIln
         nFcHolCDyijmumjvtqlGgdgiximiqVLogJrZPLM6CRleP0iKHbNxXav5JOkrS6USZyeV
         3UxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=oNzLbis/2jnW4a8XWMm6LM/NMHm/j0HGz1LfLH7gIqw=;
        b=uJcCYeI8mj0l7GwNT8HeCDbNOo3PcUys/hqvdaXx9+r8bJG2IdZu3SCcAyy9QpcXuG
         41UKsyVk18CPBJdxxG8376+OF7Jn8Fciujwpg9d63E9IWugMCuNapwfsQ19zA7qHgfsc
         QMbU+FxdSl8FlLnHYFyd7dlZma9M+SVHQdqg6BP74yQhx/aXDWKpCBOMBHagh10vLHrd
         lQSVIZnGuEZAJjcz8TPgifzWC5yO7pP5TRC56irWVcgJwI3Z8pBNVfjf6Xeea2Mv92GT
         dTnY0zb9Y2n++TDETNdfUiu2Egk7D1KFuFNL3ZOxtAX2FA5ebVdS/j7bukDgnrEjZv3Z
         DLmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oNzLbis/2jnW4a8XWMm6LM/NMHm/j0HGz1LfLH7gIqw=;
        b=SC34qePM59hR4/I+5aKbLKri01B83PLhMVgL9nfkNFQfmfrbGjEClJhF1E8JpW7KS+
         KKTYix/UzUVuc6BW7IRS6bA34zPKB3RkKiO0mVebcpYQ4efPlVZ21aFdyp5JlfaTDwPt
         xVTogCeKu2QEuQtke/UPWDXmUgf8vo/rf6rdaPfV2YMu+HcaUpFqhebyihkrFawW2mIT
         RZNOnmvczaerQHroMzxFNjpljx8U0MpbuJ1Hl74votPHMDZkmnosoIQAXDQfp6eHtvmm
         TCGLqCKtej6ybpzId3lbPySRN6Kr1wzIKSf0htRtMKXDVGd9U6AYbMb2zkWg/4wOF0C3
         /+0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oNzLbis/2jnW4a8XWMm6LM/NMHm/j0HGz1LfLH7gIqw=;
        b=F/7mnMuZvmhZJHcQhSLKz0hjCxB55mZwot8+fdF7Vub7QcH0AmXuJMU93wtwJ8YaAQ
         /a0DLl1hchmhL3pAuJNVNbrbeeFJi9/gmY7hAXfeK5GsFJOzUvGy6sh3m5chiCyjAy4c
         nJWaD4jXeSvJnWMjz0HKoPoXC82I1FFrKKSTsix6iCSpCOh+mQk3hlHyP4ZnmuRd9rbs
         QRwH/Eiq8vb2fRy1gC42Y5BRF9J84V6Nmdaa2fB5jPOwtjD9TULHFpZDdSgqjW7eU545
         0PZgY6jL79bnyVhTKzUvTKImvHCj/WDcVk4wnaRsRgZgLgLJeP0o0nh8ApQhKmOh3Rqk
         aVbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530c/eMhCsr0oUBMdCHVEHieDgmpsFg02oFGXSltZslWkd/jlOGI
	Z0JtiPgyLeZYMD7cxtTZUrY=
X-Google-Smtp-Source: ABdhPJyOvHYxOuWPXl1V/zbJSTcL+ISnNxXLeitjUDWoi307uPFao714JdNHwwbNEuEWD4a3GbyI1A==
X-Received: by 2002:a05:6512:419:: with SMTP id u25mr863550lfk.81.1601643088412;
        Fri, 02 Oct 2020 05:51:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:555:: with SMTP id q21ls192441ljp.3.gmail; Fri, 02
 Oct 2020 05:51:27 -0700 (PDT)
X-Received: by 2002:a2e:7301:: with SMTP id o1mr653635ljc.257.1601643087168;
        Fri, 02 Oct 2020 05:51:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601643087; cv=none;
        d=google.com; s=arc-20160816;
        b=fTxCf1DNv+6o4W43JpfsiSok4xgPlNGFEjQP9rmzcERzt0yeG3bRfBMIRcG9IKvkkU
         8awvqsCX+Ghh8TdTDMMRrZaqx57CPj1a8Up2qF3wRBXyiwXQWJ0Z7NQNUgIOeY1j5oUw
         ji+lmKg50KzRGlg0eQoZM+Aev1u4gevZo2Id28wJFVvoI7vGl2BSxeF4ZyIwLY1b4QrM
         cTXcvLTHxdrPwo/YHQZlkG1R/1q6ZTb5hEVMO/T8j7LUeVkViLdkSiwitR9PxKj/nbZg
         2P5IuSd6HDg+MBMF6UrpOzuu1avdI9uvt0jIq3orq6XqS6QPKPxrBoCmmvxpY6fQynJn
         l4tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=fuDI/jk1y2Md+2Tglb1Qm81ImJ1vYJD04T4zIOttwHs=;
        b=QB0Q/vjOC0QYhm1OtDk5rBgPmvLrTemihCAMvEtbMUwTq9ojgPaNgEHQMVtHLlFm4E
         3SkGul2Z/6UZSit0/5578SPV5cI7G+umbFIgHB9CdLtkUa8LrF20gFzaoOCqJIDoPti8
         aOf7v4VL1mmmcp+TmThXzfoS03laER8olVds6lDRiuaCQDDZlQLHOGkP8yVPoO3X//Xz
         3UiL1k6FwO/OT+Fj+/FZhat/aXdzCzQxyWenMQ7bUOaEFW7cnBMxRWztwUsOs+0Bj48B
         bo12BD5AKeojmAYRx4p6jKk6xWPV3lv2ZDZIPS8+LHuhc84cA/FY+gvfGCwNoY2dgPmX
         2YvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) smtp.mailfrom=andrew@lunn.ch
Received: from vps0.lunn.ch (vps0.lunn.ch. [185.16.172.187])
        by gmr-mx.google.com with ESMTPS id c20si21024lfb.7.2020.10.02.05.51.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 05:51:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted sender) client-ip=185.16.172.187;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
	(envelope-from <andrew@lunn.ch>)
	id 1kOKWk-00HDPc-5z; Fri, 02 Oct 2020 14:51:10 +0200
Date: Fri, 2 Oct 2020 14:51:10 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Rohit Maheshwari <rohitm@chelsio.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
Message-ID: <20201002125110.GJ4067422@lunn.ch>
References: <20201001011232.4050282-1-andrew@lunn.ch>
 <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch>
 <CAK8P3a0tA9VMMjgkFeCaM3dWLu8H0CFBTkE8zeUpwSR1o31z1w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0tA9VMMjgkFeCaM3dWLu8H0CFBTkE8zeUpwSR1o31z1w@mail.gmail.com>
X-Original-Sender: andrew@lunn.ch
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew@lunn.ch designates 185.16.172.187 as permitted
 sender) smtp.mailfrom=andrew@lunn.ch
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

On Fri, Oct 02, 2020 at 02:20:50PM +0200, Arnd Bergmann wrote:
> On Fri, Oct 2, 2020 at 3:44 AM Andrew Lunn <andrew@lunn.ch> wrote:
> > On Thu, Oct 01, 2020 at 04:09:43PM -0700, Nick Desaulniers wrote:
> > > On Wed, Sep 30, 2020 at 6:12 PM Andrew Lunn <andrew@lunn.ch> wrote:
> > > >
> > > > There is a movement to try to make more and more of /drivers W=1
> > > > clean. But it will only stay clean if new warnings are quickly
> > > > detected and fixed, ideally by the developer adding the new code.
> 
> Nice, I think everyone agrees that this is a good goal.
> 
> > > > To allow subdirectories to sign up to being W=1 clean for a given
> > > > definition of W=1, export the current set of additional compile flags
> > > > using the symbol KBUILD_CFLAGS_W1_20200930. Subdirectory Makefiles can
> > > > then use:
> > > >
> > > > subdir-ccflags-y := $(KBUILD_CFLAGS_W1_20200930)
> > > >
> > > > To indicate they want to W=1 warnings as defined on 20200930.
> > > >
> > > > Additional warnings can be added to the W=1 definition. This will not
> > > > affect KBUILD_CFLAGS_W1_20200930 and hence no additional warnings will
> > > > start appearing unless W=1 is actually added to the command
> > > > line. Developers can then take their time to fix any new W=1 warnings,
> > > > and then update to the latest KBUILD_CFLAGS_W1_<DATESTAMP> symbol.
> > >
> > > I'm not a fan of this approach.  Are DATESTAMP configs just going to
> > > keep being added? Is it going to complicate isolating the issue from a
> > > randconfig build?  If we want more things to build warning-free at
> > > W=1, then why don't we start moving warnings from W=1 into the
> > > default, until this is no W=1 left?  That way we're cutting down on
> > > the kernel's configuration combinatorial explosion, rather than adding
> > > to it?
> 
> I'm also a little sceptical about the datestamp.

Hi Arnd

Any suggestions for an alternative?

> It won't change with the configuration, but it will change with the
> specific compiler version. When you enable a warning in a
> particular driver or directory, this may have different effects
> on one compiler compared to another: clang and gcc sometimes
> differ in their interpretation of which specific forms of an expression
> to warn about or not, and any multiplexing options like -Wextra
> or -Wformat may turn on additional warnings in later releases.

How do we deal with this at the moment? Or will -Wextra and -Wformat
never get moved into the default?

> I think the two approaches are orthogonal, and I would like to
> see both happening as much as possible:
> 
> - any warning flag in the W=1 set (including many things implied
>   by -Wextra that have or should have their own flags) that
>   only causes a few lines of output should just be enabled by
>   default after we address the warnings

Is there currently any simple way to get statistics about how many
actual warnings there are per warnings flag in W=1? W=1 on the tree as
a whole does not look good, but maybe there is some low hanging fruit
and we can quickly promote some from W=1 to default?

> - Code with maintainers that care should have a way to enable
>   the entire W=1 set per directory or per file after addressing all
>   the warnings they do see, with new flags only getting added to
>   W=1 when they don't cause regressions.

Yes, this is what i'm trying to push forward here. I don't
particularly care how it happen, so if somebody comes up with a
generally acceptable idea, i will go away and implement it.

> > People generally don't care about the tree as a whole. They care about
> > their own corner. The idea of fixing one warning thought the whole
> > tree is 'slicing and dicing' the kernel the wrong way. As we have seen
> > with the recent work with W=1, the more natural way to slice/dice the
> > kernel is by subdirectories.
> 
> I do care about the tree as a whole, and I'm particularly interested in
> having -Wmissing-declarations/-Wmissing-prototypes enabled globally
> at some point in the future.

I know you care. But you are vastly out numbered by developers who
care about their own little corner. Which is why i said 'generally'.

We definitely should come at the problem from both directions, but i
guess we can make more progress with tools for the large number of
developers each in their own corner, than tools for the few who work
tree wide.

     Andrew

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201002125110.GJ4067422%40lunn.ch.
