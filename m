Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZW6W36QKGQEQEJHSEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 313DB2B10BA
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 22:55:51 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id w8sf8029698ybj.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 13:55:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605218150; cv=pass;
        d=google.com; s=arc-20160816;
        b=ED9UzQeyN9RErKJgCv2A1vgdqQXSxHxm3zcAIz9ve4texD3OC1QDWdLmmz4ynynuwl
         eBVmPf7g/GuoNw4XNk2bpXdfgwTatblM1+1+5PsZbNvIxI6wGwSrJIy1aLONZi92x5xc
         BE0Kyc9s63mC0vA5O3hwPKmPH5+/oruBeq46bKqm5PJYwyhEIQvXMHLIB6NsvJAwyIbj
         uJJZYoyQG2QTTCJR8itol615gXTR4t061ux1wdfV8D1/BYJy1TnjalkH8GbKNc05Wmme
         lUuXTboco1ar/SPIZKQkE3aMyqLrbaTXzrpo6EqsLlykGWKTAkza0SQg4eKel0EAhYY2
         JnNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YXHYe+678+aZWfwEHRE0yjilDaqST115JUmNRF2HVeU=;
        b=hDWFioJl3Ag/7ci6JQiQw8HnJG69yq/CH4GUBqyGLZsmkrnoeCbL252lVIEObhM54b
         SFq4rrkOVJ6VJyoAyAR4Sk0Z/2B1EY23WKPBI0Q9XtYI4nV+FN7ZOVbfMmYtptD+TkiM
         nwxt9EfGx/yAgJfxNvTeAOdYXH3vL9gWNJcC/4w/fbPGj9e8W6TFUBgS9khQtjYKat/q
         qXABUxhg4SgQe1UJnExwlqmylQMpoG6tYWwaXKBUd0+AoRTvtcT//d0GGd6Pbttcl1Zj
         dNYTZNkoEp9Z2jy6LLLqDpqU7QL32it/ioBBZVKly7QVrGyBb2HZqv+oo9dRUvbs6cfI
         o0qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cVFvPLpg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YXHYe+678+aZWfwEHRE0yjilDaqST115JUmNRF2HVeU=;
        b=i76jyUoY7X+r2wDCe4UHLXOueVyMWicuClyg1kbS34dHDjyiYVqAkm1TegxvNVRNJW
         b64dA8DtdWGMFNSsdVzf/HypGNqBcNmJpXzjU5UEVio4G5o3WINnOUak7AKG8yL+c65H
         73vK/KAZoG9dUOf9QXA5OkJwDy+hxsrjCFCwtfo0Oj8EketYPrSWcmyPRZjc/ENjSqQW
         MKMo2j4DGolj7XxXjR7GYQgr+2to5AO2vPaB7eZ4IFE8ZT7FChV8LQq8CjIP0NtQwILW
         zajrBGWJG8GmjNp/lVNmGOZvG5tZIvtF1k4jujcVy2/r+PqK0CvQNIUuLywIfgYYPno2
         z+hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YXHYe+678+aZWfwEHRE0yjilDaqST115JUmNRF2HVeU=;
        b=dT3ikPQPYRupmzTJ69dGVFYIK/idoEV9VhqjDzjy2nGzCmhfSdU4kEhiOl623QOda5
         gA/LLvoPDIAvbqYueY+fJy0P7FvlOEUglT1nqYM1UYUHdBkXlwsmgJw0kNj0DLv7ZzZh
         OztieHxppFQgU00Dkyl8LSbw2KC+s71AeiFJ5l2EuQr5OfKYkbp495hDkeK6sq1yTeYt
         F6QfUQXfNWQeSrxIas9A91aNFDkylO/vIBgKYjmnD/zNmJTGKP1OuIkDse6plcXalUKR
         DyyoXtPi5wKB/rOQtibGkcug9QdB6vlD/61OIDmggfNtZOIHuz6cGyPU3sFd/eP7EHGS
         5f2Q==
X-Gm-Message-State: AOAM532OqcYGRcocN+D8W0oQojvRzAg2cx3Qj/lxyO9GdhO6+kUQxRDO
	xO+DqGqRtsf0Qq4340S8VSM=
X-Google-Smtp-Source: ABdhPJwQitVx2fgnzckuGhMKl4qHilOY031HC1D1jD4KZJ3TMoQKqlfpQH+igtt98nR1NIq0SUPhPA==
X-Received: by 2002:a25:4088:: with SMTP id n130mr2133370yba.483.1605218150276;
        Thu, 12 Nov 2020 13:55:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c553:: with SMTP id v80ls834434ybe.2.gmail; Thu, 12 Nov
 2020 13:55:49 -0800 (PST)
X-Received: by 2002:a25:738d:: with SMTP id o135mr1883621ybc.349.1605218149728;
        Thu, 12 Nov 2020 13:55:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605218149; cv=none;
        d=google.com; s=arc-20160816;
        b=CfXM1nTtDt56Y9mmtcrp0HPOYfbRT4NbA++HlVF+RdhO6ybh66l2Yrdb0RdO2Wxrrq
         QMtYEuQ7OCsBWUwvh00gvNuZL7e5bAhcKqcqt3T4D4CcuhuhTHhekh7f5neRrYfqeoK7
         3HxXEnqBM6hz2UIaSa4LxfBtdMlYCCrapa28vgZj9CVT+yD0yXguaNWnyejF5xba+ROB
         ep1G6vAbhkvRre/Orhtsm5j9p1NpPXk1AYAhKl4F7i24M5XdP1x0Re+ZHxRbyOKG2tf2
         k7efIp/ed8S+fB5NvCcFfruAzYyDLapShHR4d8uP2Dalg+vV5ps8HYCB1V2G6uuDkJw7
         6ssg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zZdzQMnylo5i+1X6F6BJquvAy5ORPsCe3ydlZZ54zqU=;
        b=sEKEU4xDcSrqMgvjlShs+lI/5A0FBQ4UX3PTeJOZhGoF6Bn6F89gRAo0SqEmraIdGw
         Mrlzw7xzmihIYZsbXbD6++4IUUtmqwIFBJ2uL68DTI7aL+c9uHG+r8oS2CyVyIA9uUSm
         l+gFedRCSmU1NRMii6JeiqJ4is5TRw43WLUeA3DuvEYvLZHyuVFYUMdU0jrqyLjYf+LQ
         mIxt1cErEh3FcErcQefHJYnI+J9yERkiy/+rzslGUgLH/RwCGTzr0H/Gc/2gHd+5YDvL
         9aP5cyj6yjR+D5xyjp9rQ6NB1fn2b+tp2EW36KLMgkUZg/Pvc/NfPxu5+ndWw7suvUQq
         BCsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cVFvPLpg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id e184si375510ybe.0.2020.11.12.13.55.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 13:55:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id g7so5820630pfc.2
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 13:55:49 -0800 (PST)
X-Received: by 2002:a62:ed0d:0:b029:18b:78d:626 with SMTP id
 u13-20020a62ed0d0000b029018b078d0626mr1362687pfh.15.1605218148644; Thu, 12
 Nov 2020 13:55:48 -0800 (PST)
MIME-Version: 1.0
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com> <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com> <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
 <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com>
 <87sg9ghil5.fsf@collabora.com> <CAKwvOd=QrU6rCQ4_Ji=XsskPovOSXpk0NkjTqVjLijw1-CZ17Q@mail.gmail.com>
 <87lff8gesg.fsf@collabora.com> <20201112215033.GA438824@rani.riverdale.lan>
In-Reply-To: <20201112215033.GA438824@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Nov 2020 13:55:36 -0800
Message-ID: <CAKwvOdmCgWFgHof8fqep1hymeNc368Fn8rLDwzzCU58tV5wyXg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	LKML <linux-kernel@vger.kernel.org>, Collabora Kernel ML <kernel@collabora.com>, 
	Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cVFvPLpg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Thu, Nov 12, 2020 at 1:50 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Wed, Nov 11, 2020 at 04:15:59PM +0200, Adrian Ratiu wrote:
> > On Tue, 10 Nov 2020, Nick Desaulniers <ndesaulniers@google.com>
> > wrote:
> > >
> > > Yes, though additionally Arvind points out that this code is
> > > kind of curious if there was overlap; maybe the parameters
> > > should just be restrict-qualified.
> > >
> >
> > For now I think I'll just re-send the GCC changes and leave the
> > Clang optimization as is, until we better understand what's
> > happening and what's the best way to enable it.
> >
>
> Note that the __restrict__ keywords also help GCC -- it saves it from
> having to emit the non-vectorized version and switch between the two at
> runtime. If we can verify it's safe, it's a good thing to add all
> around.

100% agree.  Even a BUILD_BUG_ON or WARN_ON in callers to validate
such an invariant might be nice.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmCgWFgHof8fqep1hymeNc368Fn8rLDwzzCU58tV5wyXg%40mail.gmail.com.
