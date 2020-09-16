Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBVVLRD5QKGQEYMXSBPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD1D26C355
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 15:40:38 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id a2sf1102426wrp.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 06:40:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600263638; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pu7ssfcuDcoT3ZXTI3kGYB7mWABOWDtt8DZRpzMo0aCG9Yu1BEqiFurYSmonUW70oQ
         JhWUpKg2MXm6x4pCetE2hyDe0cSM4lCDvFBSAxIiUeuukIk56Y3eppnGssrDGQhqITXX
         Ec27dB+R5HSmr3UgD3zhOoSxL/1YM9bGCXvoOOlip4OiWnhEdySilR3YtziVxgFINkpY
         CWfi7oe3JDya0f7PbaBKopcUFzE6uw5fy1Y16rtUEocB8QzPfTf1ZrFPTg3oV/IAm34D
         Vu5k41oqLDZtzzrrTz5gEFv3C9C7l59OMWAS1G+Eih8Pix8dK84qfzniIafvljBOwJVK
         Ffuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1jWRYKtwROYYzZQxYUTfFNZd0ieZMVFXG59tT5VRAjI=;
        b=L2EmuSiJntINQM+f7S8425mJyVsvbMmMNFxa/Lq0OFpQra7p872yfS9I3Z7GRDlO8G
         la8vDeoLuhoWor49U2mSYpEhGoIK18R5rZTaIchLtdbOUmr4dnGK7MwSalPqAFk3B4Y8
         oHEBEwseGN0WSGCchylDapoF+nEpAOefpHheXFBfzsg8ongdfVLnT4r0FpeSDuCS39VU
         g3VfT1mTE2m0QFteTp6j8ybdwlPMhYxa3SUQmb2fzPxwLo4eo/uHpQbTE14Z39+GkUqe
         eu4h5lcGwrROoJmfE23H5Vjkf+kUQGY3YRPp0PQxcg5Nm0SK6luqlvuzI/8epb3kH9G0
         053g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PUU8fv2n;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1jWRYKtwROYYzZQxYUTfFNZd0ieZMVFXG59tT5VRAjI=;
        b=ETizfMYiVUuD1gIaDQC5okC5IZcYUDc2OmCZwdGFE0flE4kgHZ9GDIBTTaZznnMyMB
         sUhWSKaN/w3Yu7pxEv5pjaH+EmLsAlwSZS8jg6gUBp+GBJgkx7uAi/WTeZARKD5VzwEn
         lXoAhp8UvqEIQnpF7tnSOEwTv5biu1LeUUuKDxrratAhSYWH+ba2Q8rwH7UPlJjDylEN
         JrnQw7sxoAc+zKr5A6mypkoiQi2J6xoHJqBjr5MzaKO366lHj3lHza4tDYatl7VbBFzF
         QaPHosVH5FS3jKxBtxqZulRrgXqBL6g/QNlNhkfjdunQZTYyK+9kLLaLKTsaJxe11I1x
         vQhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1jWRYKtwROYYzZQxYUTfFNZd0ieZMVFXG59tT5VRAjI=;
        b=PDAZ0Wl8AJ5R2h/AR1ev5qnHoiE9qij4E0ifcFV0p3ruBD0X32s8hE3RClE1lBq3uX
         Rh1bEB7NDLsVO5Ep4gkPq5rvwQYqSSbnOTUFvSBJH8u7yiHaBD1ivNx3ts3mGPf9gf5e
         6MWStRG3S3bPcAXknfgZrjctHrZlLPoCZgYAl0U1ide2ZncaeN+bQ6GUzcNzhy4rR1k7
         bffdxWknLKYqxKbqWlxS0NM9DX3CsTkNdiBvY2hJjj4H+WQuxI7Eiw+ZBpm0mVrFxSIY
         V+ox67N5uw6smwfuLAkN39qMTj8WxCQMTQZtw4SaApV/wJ7ct1MzMHX4O7SslDi3D1cF
         ZvhA==
X-Gm-Message-State: AOAM532FEgSv2L36vPvYVhRWYi5ZFu98HX0gtbeC1zJBhZgHk/08UQzB
	OSt09GVS7jVd5GjhfwZWZFg=
X-Google-Smtp-Source: ABdhPJzp9brnuiqE9dOMlYx6Gr0ps1ozm58SQILU/eptOHPT8FdNg2hRWyEeC4jSbjJ1VTtH8DhLtA==
X-Received: by 2002:a1c:678a:: with SMTP id b132mr5086892wmc.10.1600263638414;
        Wed, 16 Sep 2020 06:40:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:dd0a:: with SMTP id a10ls2522227wrm.2.gmail; Wed, 16 Sep
 2020 06:40:37 -0700 (PDT)
X-Received: by 2002:a5d:4152:: with SMTP id c18mr28329750wrq.277.1600263637286;
        Wed, 16 Sep 2020 06:40:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600263637; cv=none;
        d=google.com; s=arc-20160816;
        b=N1PabL4wFqWtM+Eq1YT67J3ev3t0pZEb1lujgNJe5TZ6bar/iaFu81CHWJkoJaDqGD
         T+v4Ci94yT7n/P8TdSq63UpDI9fmPn9ohWGlNBfQ1tK3FAr1SvCWhG92udnGIoizEn9v
         Q4fEN3MbKxT0mJAdB0Pkm58HKcix2dlLGjSMQKscX+o6ki5AniAKpwuih6TIJ9he7Jvc
         ZbZrkRj+Js5f0kaqPBEiLAQAcPznW20MTWNhhtM5Y0yNwTFsIMg8pCcY2Tz/HDa26nt9
         7yvyRsRqs7jrYaIcKhbI4B7OGZeX85pmi5ifHLx6fbB3UdHr3UkrZnY3rk77tJeg1/bb
         zg5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uEjVdCuhEoV9lb5ls6kMmq0ECr43Rh1pbVRxVP/xc0E=;
        b=OY8AZsf0b1LZGKLoOt98sunM1MF3z3Yi+yBkAzZxwprld+x1B3eQHUYHBOV7UsudSU
         3Ny1L6sY6TGbFNhWjZ0JaYAPfK4HbUifb/16TpE3mThY8zmb5eoXc91HXjMIHyws6s80
         9ZqIV+hqUVwKyrYe3hSMaXeDvgDA5pHwCRlofuT4jE3jFAX8NnNFRrj4vJTf7ZYdIRrD
         AVMBKjfYfqtNJjCS/r0lPj6dbe/1iVk9wwvv0MxwWBJo+p6w9DqH+oqdaH5ieoNGxlyp
         nDrb5+8s8P+dRc9nnsIqYhvxo8B1kMbA3yFzZ1AkfDwNmGBNo+7hYSF816KWtx1UrMIW
         ziNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PUU8fv2n;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id g5si146310wmi.3.2020.09.16.06.40.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 06:40:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id l15so2272464wmh.1
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 06:40:37 -0700 (PDT)
X-Received: by 2002:a1c:7714:: with SMTP id t20mr5048312wmi.55.1600263636710;
        Wed, 16 Sep 2020 06:40:36 -0700 (PDT)
Received: from elver.google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id o16sm31108612wrp.52.2020.09.16.06.40.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 06:40:35 -0700 (PDT)
Date: Wed, 16 Sep 2020 15:40:29 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: George Popescu <georgepope@google.com>
Cc: Kees Cook <keescook@chromium.org>, maz@kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	kvmarm@lists.cs.columbia.edu, LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	james.morse@arm.com, julien.thierry.kdev@gmail.com,
	suzuki.poulose@arm.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	David Brazdil <dbrazdil@google.com>, broonie@kernel.org,
	Fangrui Song <maskray@google.com>, Andrew Scull <ascull@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>,
	kasan-dev@googlegroups.com, andreyknvl@google.com,
	glider@google.com
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
Message-ID: <20200916134029.GA1146904@elver.google.com>
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-7-georgepope@google.com>
 <202009141509.CDDC8C8@keescook>
 <20200915102458.GA1650630@google.com>
 <CANpmjNOTcS_vvZ1swh1iHYaRbTvGKnPAe4Q2DpR1MGhk_oZDeA@mail.gmail.com>
 <20200915120105.GA2294884@google.com>
 <CANpmjNPpq7LfTHYesz2wTVw6Pqv0FQ2gc-vmSB6Mdov+XWPZiw@mail.gmail.com>
 <20200916074027.GA2946587@google.com>
 <CANpmjNMT9-a8qKZSvGWBPAb9x9y1DkrZMSvHGq++_TcEv=7AuA@mail.gmail.com>
 <20200916121401.GA3362356@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200916121401.GA3362356@google.com>
User-Agent: Mutt/1.14.4 (2020-06-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PUU8fv2n;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::344 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, Sep 16, 2020 at 12:14PM +0000, George Popescu wrote:
> On Wed, Sep 16, 2020 at 10:32:40AM +0200, Marco Elver wrote:
> > On Wed, 16 Sep 2020 at 09:40, George Popescu <georgepope@google.com> wrote:
> > > On Tue, Sep 15, 2020 at 07:32:28PM +0200, Marco Elver wrote:
> > > > On Tue, 15 Sep 2020 at 14:01, George Popescu <georgepope@google.com> wrote:
> > > > > On Tue, Sep 15, 2020 at 01:18:11PM +0200, Marco Elver wrote:
> > > > > > On Tue, 15 Sep 2020 at 12:25, George Popescu <georgepope@google.com> wrote:
> > > > > > > On Mon, Sep 14, 2020 at 03:13:14PM -0700, Kees Cook wrote:
> > > > > > > > On Mon, Sep 14, 2020 at 05:27:42PM +0000, George-Aurelian Popescu wrote:
> > > > > > > > > From: George Popescu <georgepope@google.com>
> > > > > > > > >
> > > > > > > > > When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
> > > > > > > > > the handler call, preventing it from printing any information processed
> > > > > > > > > inside the buffer.
> > > > > > > > > For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
> > > > > > > > > -fsanitize=local-bounds, and the latter adds a brk after the handler
> > > > > > > > > call
> > > > > > > >
> > > > > > > This would mean losing the local-bounds coverage. I tried to  test it without
> > > > > > > local-bounds and with a locally defined array on the stack and it works fine
> > > > > > > (the handler is called and the error reported). For me it feels like
> > > > > > > --array-bounds and --local-bounds are triggered for the same type of
> > > > > > > undefined_behaviours but they are handling them different.
> > > > > >
> > > > > > Does -fno-sanitize-trap=bounds help?
[...]
> > Your full config would be good, because it includes compiler version etc.
> My full config is:

Thanks. Yes, I can reproduce, and the longer I keep digging I start
wondering why we have local-bounds at all.

It appears that local-bounds finds a tiny subset of the issues that
KASAN finds:

	http://lists.llvm.org/pipermail/cfe-commits/Week-of-Mon-20131021/091536.html
	http://llvm.org/viewvc/llvm-project?view=revision&revision=193205

fsanitize=undefined also does not include local-bounds:

	https://clang.llvm.org/docs/UndefinedBehaviorSanitizer.html#available-checks

And the reason is that we do want to enable KASAN and UBSAN together;
but local-bounds is useless overhead if we already have KASAN.

I'm inclined to say that what you propose is reasonable (but the commit
message needs to be more detailed explaining the relationship with
KASAN) -- but I have no idea if this is going to break somebody's
usecase (e.g. find some OOB bugs, but without KASAN -- but then why not
use KASAN?!)

I'll ask some more people on LLVM side.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200916134029.GA1146904%40elver.google.com.
