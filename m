Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYVNTTVQKGQEB74XBVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id BF906A0E82
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 02:05:54 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id i4sf865715wri.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 17:05:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567037154; cv=pass;
        d=google.com; s=arc-20160816;
        b=HLcXOq0D1G4EWn64ykmFzUuZb4zCf8cWh3B7K/VHQCXDuUGKkMlenf22xO17IgR+uv
         M4hURqdICBH3PGV9Kk/I7zLQzC8CrXFL3h5J1y2ajklx4K/ZWOVNY8RscPGy4YDrjfiP
         dHMP3lamSJL+WZpbXCkMr+BwIl9f0D1RAWe5f4lb+dQ3ML3/6Cw+n9w62hjpXzJJbtbK
         eWBVyB5q3cj/8jLjEeP3IyZM2dPC51bzWjx7bUL06MmipY/uHJ5caPxI2NzBQPSQaNaL
         V9IJhOs2S3WXgXjPVUm7kRbh6CepRcypruq+WiJ3w2XGlEdSJLKO0chl8AQvUVRLjtQ9
         /yGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=/JR3Hgo7VBs7rDs0h8aW9/+Ekanye7mSroV3C3iHXVQ=;
        b=mrGNa4OCLvQWzb+DZlcRJXztaNjp29MZ7nQgIjZ0dZWBBDbhoFyRJfStpLH5YrMvm+
         +8aBV2c4ZLUV1XjiPMtkoPZNfJ8/NF4CYAfVvW5/o0fN5iymScNnvCf3V8p21nnhrSVk
         kLbCrasfIeTdOBvUwAEt+MVebu7yuYd/g5UENitYNKUHX3e8qqZA+TCEEJcN3XLUQgX7
         IYYD6wgkTE9Ss7N78pzKb8adHQZ/SSxUmn1FtKgliJgtTlIfjgywlXZchEhgpeTrQS6z
         15ChhsbV92ZLFSfIFvr/w7tn0P3wyENI0jQr09q5X7xPmLmAMJlTLrY3OPxDfNTL70/R
         HeKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OrEbQDx9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/JR3Hgo7VBs7rDs0h8aW9/+Ekanye7mSroV3C3iHXVQ=;
        b=g5BblYNj0gnw1tMR9i1+OjIc1qqoRjjZQ36teb/yEI92uVmy3r7wLLhYX1V5iGPZso
         VrdXbCYAOeM8lKyPVWebfujGopOCLO6eh3lW1gcBDCsYxLuKB+JPUuAep0GaicoE7Z0R
         WNNDk5ppqpcTNiKfAZM1zWUjE+1xqyqbK+HtHCdZ78t8UsM6A00CqCOF0+tLZNhIP112
         BIDI92mYRuKDhR3b+POYR4rdsLI1gih3Rmy92MnhT43PvM9kMT+4mLHcpRSjwk1TJ0R1
         sawo+fZY+04vJNXFir5E02PrhwPKCoBmQ0ASrQeMLmwLS8zOvpIJM/Bx61dSfm+ZrcuE
         pJLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/JR3Hgo7VBs7rDs0h8aW9/+Ekanye7mSroV3C3iHXVQ=;
        b=g9hGGTFkNl3MQVGrYw7T9dtJ7xP4PzEwAG0+9eTCYgcverYS2yM3xIxKux628gv7Sz
         dL6P/RGOmAeiz2ufniz1/OtfqCo0e91gN8yqZ4rhG7dj/nFgLj6VSDTh6kK7X6mRyIW1
         9h0N3v4s6A2KJROdCFh30noFSN4UPTxqglDnPfFhiH6q/1qr68K3JwaQY5VJd7D/4Iz5
         xOg51vfGNHQxAEIt2+EsjvQe3xzVl9E35PZvgUmByI1+lo14wFFGg6n3APLzckODBhy5
         jz59OicDDlON5UBNzVg9SQiQPsSlwqj0y+XI/NyzaPtc5iwb8FkUHX0TgDP8+roxlVLk
         uDBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/JR3Hgo7VBs7rDs0h8aW9/+Ekanye7mSroV3C3iHXVQ=;
        b=byXmbKiV0Sh3w7aCaAD7OGzDKA8trAq13rlYGqYadNQjE0rZxupA8ZEfMCoxOmrNWw
         qnMOR8Vd8P9534ea6aAmp77nCd3MwfhWVbmWwTofNaePo8/dIwCHBRWu8bDWu+S/B3Qp
         3PO8eM+obCxL8KTakt2W9KZao02/eSOZB96vzixcmhTDjNwTuZAKX9JLUxa+/g9kg9tQ
         mpTtO6iolIK4sypHynEKB1ywnFOXeq7doje4eg5VO16LrklwZ4M4XANhBpVBP9RaAWam
         iPveXEGb2WghK0O3lMIVmzJneHAXVaABiF8dD+YVcFrXHkc+mdyQMJn1I7479XOLz6Uk
         kkug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWDi0lE+93Cm6i2yBt9POI8uVOwLpp+l/HXyR3x+hM6VJaqrjf4
	ZZbtrA+3aZTaW0nlEqSOIX0=
X-Google-Smtp-Source: APXvYqxJnmG55ljesWOYexZQtTsWRyuHeR1TtAa7W6CePUqcnNJVofyNblsTr+bdALqlNpxsXrkfsw==
X-Received: by 2002:adf:f281:: with SMTP id k1mr7567975wro.154.1567037154439;
        Wed, 28 Aug 2019 17:05:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a745:: with SMTP id e5ls213384wrd.5.gmail; Wed, 28 Aug
 2019 17:05:54 -0700 (PDT)
X-Received: by 2002:a5d:4d81:: with SMTP id b1mr7950626wru.27.1567037154047;
        Wed, 28 Aug 2019 17:05:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567037154; cv=none;
        d=google.com; s=arc-20160816;
        b=EC5LqhkbKwgPwQKWZ78tmoRFHn8IBZnV9q/ZNvuWsKm8yT2/BwmRzmOTxyM3WiEmjL
         rXJlDLO6BHvXAOlehkvWc6nn+c/PJIC2dhqFPXPezP+AIWGdcFn8WDvqh4WwUZj1OaY5
         8yDtACe/WIx6I/diURmzJYf/xKObORWPoMvYr60XEDSEXsnNMED51UmSwdOsXfi60loN
         T4mvwCRoch2yKHZCWdSwgDJFB6bAK0A0XVvJ0B2DA8Z32U4sQOPUYBYlj1PAPgUgp8xJ
         2cW6jis/ehvpkERuG0jk+86AovJQUoqDXGnSuap3WgUHGducin+Ly4X/0C0EhAc8BiLu
         UykQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gCMPxZVoHiSuQIWWRJ0Qttndb5+aZBERg8YRY+XH0I8=;
        b=edMUuFdOF/tiiChbKryy1lkQfY9bpwFvfkggfzgGUTezKNAAkXwBNsFynghzEGVKdF
         6LYcp/0InlPs2ULzO0hPTSetF78KDgxRO8FMLGWUwyprcPtenuAGimBEUhVc9YVeariy
         mE3vQ/RZZrTrCC3Y8YyjmGA9tg3277U2xm0ovABLI0inlvoLpVtIVoqLt94V3zBWNUmB
         oWmcornEq+TktX9x2WzVFF4M87gT7GK13B4zJO3HgJOlkVw9KeSgaKoLrwaYHAnJuOaE
         Y6ezsb9QA+cMLCJPZ5DHSNTLRR0zBjKBGzk6Nl4Fb1hgp/8ccR2C6WpexeMfmSVjxJxU
         hQEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OrEbQDx9;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s78si32132wme.2.2019.08.28.17.05.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 17:05:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id q12so1482340wrj.12
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 17:05:54 -0700 (PDT)
X-Received: by 2002:adf:e846:: with SMTP id d6mr7410153wrn.263.1567037153482;
        Wed, 28 Aug 2019 17:05:53 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id n8sm536310wro.89.2019.08.28.17.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 17:05:52 -0700 (PDT)
Date: Wed, 28 Aug 2019 17:05:51 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Sven Schnelle <svens@stackframe.org>,
	Xiaozhou Liu <liuxiaozhou@bytedance.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 2/2] kbuild: allow Clang to find unused static inline
 functions for W=1 build
Message-ID: <20190829000551.GA62731@archlinux-threadripper>
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
 <20190828055425.24765-2-yamada.masahiro@socionext.com>
 <20190828182017.GB127646@archlinux-threadripper>
 <CAKwvOd=r5Y8hQQBeKZ6zAokPdyeT2AVKFsdviTvwV5AyDQQHrw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=r5Y8hQQBeKZ6zAokPdyeT2AVKFsdviTvwV5AyDQQHrw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OrEbQDx9;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Aug 28, 2019 at 04:28:30PM -0700, Nick Desaulniers wrote:
> On Wed, Aug 28, 2019 at 11:20 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Wed, Aug 28, 2019 at 02:54:25PM +0900, Masahiro Yamada wrote:
> > > GCC and Clang have different policy for -Wunused-function; GCC does not
> > > warn unused static inline functions at all whereas Clang does if they
> > > are defined in source files instead of included headers although it has
> > > been suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
> > > warning for unused static inline functions").
> > >
> > > We often miss to delete unused functions where 'static inline' is used
> > > in *.c files since there is no tool to detect them. Unused code remains
> > > until somebody notices. For example, commit 075ddd75680f ("regulator:
> > > core: remove unused rdev_get_supply()").
> > >
> > > Let's remove __maybe_unused from the inline macro to allow Clang to
> > > start finding unused static inline functions. For now, we do this only
> > > for W=1 build since it is not a good idea to sprinkle warnings for the
> > > normal build.
> > >
> > > My initial attempt was to add -Wno-unused-function for no W=1 build
> > > (https://lore.kernel.org/patchwork/patch/1120594/)
> > >
> > > Nathan Chancellor pointed out that would weaken Clang's checks since
> > > we would no longer get -Wunused-function without W=1. It is true GCC
> > > would detect unused static non-inline functions, but it would weaken
> > > Clang as a standalone compiler at least.
> 
> Got it. No problem.
> 
> > >
> > > Here is a counter implementation. The current problem is, W=... only
> > > controls compiler flags, which are globally effective. There is no way
> > > to narrow the scope to only 'static inline' functions.
> > >
> > > This commit defines KBUILD_EXTRA_WARN[123] corresponding to W=[123].
> > > When KBUILD_EXTRA_WARN1 is defined, __maybe_unused is omitted from
> > > the 'inline' macro.
> > >
> > > This makes the code a bit uglier, so personally I do not want to carry
> > > this forever. If we can manage to fix most of the warnings, we can
> > > drop this entirely, then enable -Wunused-function all the time.
> 
> How many warnings?

In an x86 defconfig build (one of the smallest builds we do), I see an
additional 35 warnings that crop up:

https://gist.github.com/003ba86ba60b4ac7e8109089d6cb1a5a

> > >
> > > If you contribute to code clean-up, please run "make CC=clang W=1"
> > > and check -Wunused-function warnings. You will find lots of unused
> > > functions.
> > >
> > > Some of them are false-positives because the call-sites are disabled
> > > by #ifdef. I do not like to abuse the inline keyword for suppressing
> > > unused-function warnings because it is intended to be a hint for the
> > > compiler optimization. I prefer #ifdef around the definition, or
> > > __maybe_unused if #ifdef would make the code too ugly.
> > >
> > > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> >
> > I can still see warnings from static unused functions and with W=1, I
> > see plenty more. I agree that this is uglier because of the
> > __inline_maybe_unused but I think this is better for regular developers.
> > I will try to work on these unused-function warnings!
> 
> How many are we talking here?
> 
> >
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Tested-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> This is getting kind of messy.  I was more ok when the goal seemed to
> be simplifying the definition of `inline`, but this is worse IMO.

I guess if you want, we can just go back to v1 and have all unused
function warnings hidden by default with clang. Fixing these warnings
will take a significant amount of time given there will probably be a
few hundred so I don't think having this warning hidden behind W=1 for
that long is a good thing.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190829000551.GA62731%40archlinux-threadripper.
