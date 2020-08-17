Return-Path: <clang-built-linux+bncBCIO53XE7YHBBA6K5P4QKGQEXBHTY6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE5B2477FA
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 22:13:56 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id k7sf6611810oih.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 13:13:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597695235; cv=pass;
        d=google.com; s=arc-20160816;
        b=t+YfcjttlLUaPqQOEocYhyNQVVDS7yyg/2Bj+qGyxDEQP6g6eZirkIq0W0qK4uOkx1
         MLbSlN/G7RHhhGxaDmEfSKL9imGjdM2SQJdEJhrQzB3VxAzGooJBjY4+v1Hl6ASSwvpd
         M7PPLrUF/gQGoe+ueEO8bPcy0ICplQH3MFFgZPTNG+GAkF+GRKsEZlwJwjx6M54+X8tu
         IUR1ZYu75bh3yNtYDiL0UB1bb7/HsCzAGEzMuttV0YAD6DqujqA6p2CVKwwS5jDqCl2g
         3cfsbnCcWhSs5OUpDJVIhrjUiPZzn7WBaNQWoiIAWaxxPvvl+DSsC45g5fKDxnIdCka0
         MLpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=J5cOGpWDIgFneQ+lwM5DiokcleL8cIb2rwLVPdwDfwY=;
        b=Y7i29PkZozBHfOQe6uMZjtFslv+hFH3/CbMXMZltzC8CV9v2Zxli2baOXSGTUc3byi
         k/puxQnJTco/ikt5H/hCty3W49k3lMqYe8Jzb89P0B9HhtdR0lw1e2H0yCc1a/68VS5m
         99/+59SeOF9NWi4aKLnFvvgLNkirbLqiH5GUeHaiARPCVsTtfX8wput8S5VP2DNduFKU
         p+ZhFLaeZJMDaF7B+ulOZx8mgFISyCRbwCfiENK1rmhiDYbIs1urcsO08oBUEK95PTNq
         gPS4KcHf0unEnWAY+mlZd2mWrk94bKJ7kmoNCzgXlRlYzLCN54gBUGKnjDt+ZSuhlP4T
         Yjog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FqbjGe9U;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J5cOGpWDIgFneQ+lwM5DiokcleL8cIb2rwLVPdwDfwY=;
        b=ZXnWsYD336BydhlIgjN9aOfY2ZFKm9LUa7eqWGlXEOvwCE7RY9C6nX9w3cM/TRREya
         s3+H30PlAFqdredIRHRQu8m4ub1+vKceFT1SHRlCwUlgOiWBM30sMEpAQHfCGna8Omga
         ieKDX/9ANzZ1RZmKal6V2vjRiwnGmF7MbJmDNydpW3EdvfO3pRB6BdxnadrlFPMcoqOw
         86pYiRB1pm6upHjUvlVTMWm5AwrnOyu+9cFYZl8VzvlIYxtvfnnb1i3oVTVl8Su/fIS4
         Un/iYWFXDxL4wvUh2CY7i9owPsQ7XX25hnVGfq2bEapBI9sy6B6EbtJnhSGipvVpJmY9
         74XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J5cOGpWDIgFneQ+lwM5DiokcleL8cIb2rwLVPdwDfwY=;
        b=hcD79xyxBIxKh1pKBLKxklzcnDfhk9V0Yz2DXBnTyfCOcIKTzLfDGkqfYNLIWu6YTG
         NjEL+voH5+89ibZjJ4WDUH3H9bG12yjCYGCenWEnfNRPD8J8NOXeLGIRHXf/8bYv/0U6
         1z0F/eOdmmqBj7hspsuLTOGIXLx9FoUI1JAAEPXMCmpzyh2tP4RiNthI5tjOgoEb1fw8
         2y8nXcJi37ymP2OuqxxcIH0A+yCwZplrbgYxBkOltux85uq8XsX3Ah3dq/puu8pu5ywc
         J6pshg7mUmNDO8miUp5v+xoPdqH14CY7Q1ZA20gmzC6Gi1GJAvO+zk2xSLgERyDquDjx
         T71Q==
X-Gm-Message-State: AOAM533BSiUZagFaDfFmGiRFTZeac9U2y1YNYILKgNwNW8xwcbvcfEEY
	0jN/ZG8YhhRHcow/aq/rL94=
X-Google-Smtp-Source: ABdhPJyb+1bU80Ux42EvacGGG0iG66A6V+Ys3ooGsv5sIT48AawPE9tMrpUdwFy/XNCq0tT6Gbz62g==
X-Received: by 2002:a05:6830:20d6:: with SMTP id z22mr12824728otq.94.1597695235221;
        Mon, 17 Aug 2020 13:13:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:310d:: with SMTP id b13ls3877903ots.0.gmail; Mon,
 17 Aug 2020 13:13:54 -0700 (PDT)
X-Received: by 2002:a9d:7d8c:: with SMTP id j12mr12803447otn.250.1597695234891;
        Mon, 17 Aug 2020 13:13:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597695234; cv=none;
        d=google.com; s=arc-20160816;
        b=KVFHr0RgDhFYsXZzOVWWXcuUnPiOLAywF3/TRJBlP4patQvPEJ7Y4tjPKdxJlB2lnH
         Us95ccE7DC/0saX+uGFAuMHKPA5yE3/144RL7JlDLeX0mm5Pz3VXLzUte9I3asv3Kb16
         i5nJRwuAmbYQw8MsLcp7d6viV85LDCUodDuwdRe+mgQALkEE3rVZbhA+Wmun6lw62gDu
         At90pKKD2Hh2J1o63h+di0yvBDESFnbN8K3/XXrZUfqATd158Y22pwoC+bYaBQZa9XKj
         OMa1TBFRhuzJr90yyfnVvwmqwhsY5jmyPw4ke2mnwS0mS/7b7l/M1MirKQYZFyFdPsLl
         b67w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=2iB7Xz00n5+0Lgu+wndRSafBvCLWjlpZRZyNPVeU2aE=;
        b=lgA/V0OTaqocJe84LUGzZicXPm6G46OkPlrS5B3lGIK7Beo/GI+E3wMbaz4e+tcwP6
         kc8VMtiGcbj6fHlvDWIP56N5dbnRuq6P2j7Ab03h0kLWIMirqa+mMY/JGrmLGxWCxAe5
         vi4cMK1I1Lb08O+VPT5WIakcDqQmiT52VzLuzpksX5/dKNVovdsIoTTCWnphFM9mv9zM
         A1yiNFxMp5UB7WyHmi9VDU1Rq0i7Idc91CC63mK0oWyI1ddOyrErdiShh8Iv+7uj9vVD
         BxNS1xfjdpu0iOQJerer3G0n7McOrhrMT8t3Vhna6bUFwiGkDRsURwFjvMRG9hVfQb9F
         WfcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FqbjGe9U;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id m19si1195769otn.1.2020.08.17.13.13.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 13:13:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id m7so16164979qki.12
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 13:13:54 -0700 (PDT)
X-Received: by 2002:a37:6cc1:: with SMTP id h184mr14674031qkc.101.1597695234334;
        Mon, 17 Aug 2020 13:13:54 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id k5sm18742660qke.18.2020.08.17.13.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 13:13:53 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 17 Aug 2020 16:13:51 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Kees Cook <keescook@chromium.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Fangrui Song <maskray@google.com>, Joe Perches <joe@perches.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	=?utf-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>,
	Yury Norov <yury.norov@gmail.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
Message-ID: <20200817201351.GA2246446@rani.riverdale.lan>
References: <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
 <20200816001917.4krsnrik7hxxfqfm@google.com>
 <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
 <20200816150217.GA1306483@rani.riverdale.lan>
 <CABCJKucsXufD6rmv7qQZ=9kLC7XrngCJkKA_WzGOAn-KfcObeA@mail.gmail.com>
 <CAKwvOd=Ns4_+amT8P-7yQ56xUdDmL=1zDUThF-OmFKhexhJPdg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=Ns4_+amT8P-7yQ56xUdDmL=1zDUThF-OmFKhexhJPdg@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FqbjGe9U;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::742
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Aug 17, 2020 at 11:36:49AM -0700, Nick Desaulniers wrote:
> > > Though I don't understand the original issue, with -ffreestanding,
> > > sprintf shouldn't have been turned into strcpy in the first place.
> 
> Huh? The original issue for this thread is because `-ffreestanding`
> *isn't* being used for most targets (oh boy, actually mixed usage by
> ARCH. Looks like MIPS, m68k, superH, xtensa, and 32b x86 use it?); and
> I'm not suggesting it be used.
> 

Sorry, I meant the issue mentioned in the commit that removed
-ffreestanding, not the stpcpy one you're solving now. It says that
sprintf got converted into strcpy, which caused failures because back
then, strcpy was #define'd to __builtin_strcpy, and the default
implementation was actually of a function called __builtin_strcpy o_O,
not strcpy.

Anyway, that's water under the bridge now.

6edfba1b33c7 ("x86_64: Don't define string functions to builtin")
  gcc should handle this anyways, and it causes problems when
  sprintf is turned into strcpy by gcc behind our backs and
  the C fallback version of strcpy is actually defining __builtin_strcpy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200817201351.GA2246446%40rani.riverdale.lan.
