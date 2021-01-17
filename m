Return-Path: <clang-built-linux+bncBDZ7JWMQ2EGBBJFVSKAAMGQEA34SF6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7F22F950A
	for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 21:14:30 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id t17sf11425565pgu.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 12:14:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610914469; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tnp4WiN3321kAHeTnY2UpFk7AFkn44KViYuBtwXagxfnsKmLj8mdCen9g2wXVBM+Y6
         oxxjiBgfD4/bGpmB6BU/TJRgAFVtLlgH/ULiChEwl0wOxq5oVLaerJKRDmBcAVjzHvuh
         lsMLkBOJIDXoSb8r+VOe+TQ6td85S8mM9d5+3aMoM1jc+x1/e9bYoFoCpwUDjpGF/r+3
         /CGsMrnXnLuHAF0KtgUF5FP2xZoz2HblYor7wj+wnp3qyoIEbvHlbHP89O9jr4v0rSb/
         YpL22xgH0c63fgrYaa1GwTOAaBWO+AQJxwsx8xgOA4v5SuHKgKwgPFafRJp23ekU5UHN
         M/YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4LFfr0z2yE9ensPqVyFQUZJNhfJChkpRHujTlk0ciyg=;
        b=Zsz6OW92va43VP0JPwyt2I1o4jGw615yr/Y/5bvh7A217VAO7C7KfM3C7qfHsKTV9f
         bw3jBnuzT3psxyvRhVhKxUstBqhpwqOg7EOW3ukN9UIGMub1Fmwsb3MF8KuKr1JLYOhs
         CBTqoy5JJtvMCBzM3hbrUayGX6CivU4xViWkgxSUoAMKqZIQoIN5fmfyJbbOYH5TBi3R
         SmOWl2PCq5W9anLrc8lXghsavgOIfu32XHRGbDbHiQA9K3IKss7TDc2QuX+TNA6IP0rO
         NWmd++dXQciYpkkwKKTpvwx3S6RZ8kWycxF0FMuaZoIrRYiLI/kHEd7P8ZODf2jw/puV
         pz9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jbo6wEeP;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4LFfr0z2yE9ensPqVyFQUZJNhfJChkpRHujTlk0ciyg=;
        b=i0kwWlPEwwf0gzZuMTbdsVmQoGba06REZzbLi3DgHgHj4jneAa/9kk4DlAewts96z+
         i6TD9rss4RME9ioQqvPA0zcerTzH6rzwBiA3FPzhXJ1KuLXgpl5F4g6tHM0tyln9AqmN
         ami1H2zOtC7kuZJwzMbbfbTB2mOLCWo+ogkfA2swAxjS5dijQi4VFT4r8BVA13g+In/d
         POIPRSPSLfjOLWZcle2FIEqQxdrrSvy60upQSqKAEN6l7yLo3rhC+KDO6hGFe7uzH3NQ
         +11Px9iqc6MpK3pyQZ4JHIOKO/Q2sYuF6wR/VpTu3dK9FSzQ4E+pSjOzis+XkPU1MUd9
         Efsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4LFfr0z2yE9ensPqVyFQUZJNhfJChkpRHujTlk0ciyg=;
        b=ScF6rB88Patd5aAivy+xRddBLV5ECVXwiPxbvBP3WOp7P1/S/I0VbYAoIoj3ksms6x
         9to6ah6NXhrW3Wtvq9RA7X310m6Q2gQNktHOw9OTLZE6CiLI+Yp6mFHszOUbCsz67AGU
         frZurl8w8juldNpqrCVCtoKPM+Ct8ar9Cf/j689MaudmJE1OkvqUe8ozEDPkTxSwuO+V
         F/9rgirmsN4LnI1mim5buZdOwqfPYsb/j+TanAK4nCmljdKfuN6wnqiswX+0IGsAW0SC
         4C9mK8Czv8/8MEX52vVl2aQojzHMrYYdbz8ZzTNT9zBOXfZiLnqmLtEgplXsrt9rO6Z7
         Z8rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531M0T1EetxyUrC0oVNbbgQKareLch/tmUw+8uVq/wjywagn9ZBT
	IaJjHAci1rtFVx/adCa7fcs=
X-Google-Smtp-Source: ABdhPJxeDGumBZvXdZkHANWQvI2CDb64/TLpfYSPU/Hsb2hpgkH85AfOZkMms541J4SOdx1tz5F1lQ==
X-Received: by 2002:a63:cb0e:: with SMTP id p14mr22833794pgg.408.1610914469095;
        Sun, 17 Jan 2021 12:14:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls6928775plr.9.gmail; Sun, 17
 Jan 2021 12:14:28 -0800 (PST)
X-Received: by 2002:a17:902:854c:b029:dd:f952:dc58 with SMTP id d12-20020a170902854cb02900ddf952dc58mr23173101plo.76.1610914468481;
        Sun, 17 Jan 2021 12:14:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610914468; cv=none;
        d=google.com; s=arc-20160816;
        b=sRCUO4/1wuHLY2aJWs8p7TGZXAmARaIv6bqvnsq5Vp2vYIzvpBR1xVdzRQwr2byBwt
         DtNVI/El1eVFGEnLabgcHNqS9Q7rHPVRt5pdwy9WoyynCq6RbgSpPgmrwx0Of18vliC7
         FwwObNMKqHZK2aZu77tb6q6z6jOs067A8kkd7QC2VQSW+7Bq6QTRQ/L+rjDTbzOTfnoG
         sEw/m97bjFC+IU79ixlONEioB5Jp34fq6rOanjikVIupyhvVfa/j6eA6ztfQ5wcQBmSz
         NAPsZBE53BRKrO2aywEjW4RI0PmXllZersUGpIaeeVeQP0DDC45aglbJOkxKC2oLAuuN
         pdZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vgzywFUGD0n9syR4sCtWhnEkMCOxElFoO9wUK7aYhPw=;
        b=WDeofVKl6phZCGJZIbkRtvV0A1EhDTkXjzgICWtByAZN1CVj/2/x623BP1ZzTAp/Fq
         2G6ioiz/vQI/XsrFYmwIVImcP5uj8InzkNZizL4IUDVujJ4jlFMJ1PhMRGcJF/if7kA9
         qUvTPyl9R5pM8/a8Z4qsW0Qnu34EWjyWE/iBMAX4ghgQVsZOS5ZtcbmhmZfUC4F/ebYu
         wkGKUcYHk31qOz0M2zZzgiR/QlwUpMhdw9zTymaAc3iyPJToCWqleCxR/zPO0UnhNJQa
         48uzxqo1JcBTsBaNvW0IjeW9oRHNxWc6MMWjKwwp9hSC6p8Lw7nAYTCHdSQWrlV46lyo
         byng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jbo6wEeP;
       spf=pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=acme@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j11si1246075pgm.4.2021.01.17.12.14.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Jan 2021 12:14:28 -0800 (PST)
Received-SPF: pass (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0262221D7F;
	Sun, 17 Jan 2021 20:14:28 +0000 (UTC)
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id A020540522; Sun, 17 Jan 2021 17:15:00 -0300 (-03)
Date: Sun, 17 Jan 2021 17:15:00 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Yonghong Song <yhs@fb.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
	Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>
Subject: Re: [PATCH v5 0/3] Kbuild: DWARF v5 support
Message-ID: <20210117201500.GO457607@kernel.org>
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <CA+icZUVp+JNq89uc_DyWC6zh5=kLtUr7eOxHizfFggnEVGJpqw@mail.gmail.com>
 <7354583d-de40-b6b9-6534-a4f4c038230f@fb.com>
 <CAKwvOd=5iR0JONwDb6ypD7dzzjOS3Uj0CjcyYqPF48eK4Pi90Q@mail.gmail.com>
 <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <12b6c2ca-4cf7-4edd-faf2-72e3cb59c00e@fb.com>
X-Url: http://acmel.wordpress.com
X-Original-Sender: acme@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jbo6wEeP;       spf=pass
 (google.com: domain of acme@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=acme@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Em Fri, Jan 15, 2021 at 03:43:06PM -0800, Yonghong Song escreveu:
> 
> 
> On 1/15/21 3:34 PM, Nick Desaulniers wrote:
> > On Fri, Jan 15, 2021 at 3:24 PM Yonghong Song <yhs@fb.com> wrote:
> > > 
> > > 
> > > 
> > > On 1/15/21 1:53 PM, Sedat Dilek wrote:
> > > > En plus, I encountered breakage with GCC v10.2.1 and LLVM=1 and
> > > > CONFIG_DEBUG_INFO_DWARF4.
> > > > So might be good to add a "depends on !DEBUG_INFO_BTF" in this combination.
> > 
> > Can you privately send me your configs that repro? Maybe I can isolate
> > it to a set of configs?
> > 
> > > 
> > > I suggested not to add !DEBUG_INFO_BTF to CONFIG_DEBUG_INFO_DWARF4.
> > > It is not there before and adding this may suddenly break some users.
> > > 
> > > If certain combination of gcc/llvm does not work for
> > > CONFIG_DEBUG_INFO_DWARF4 with pahole, this is a bug bpf community
> > > should fix.
> > 
> > Is there a place I should report bugs?
> 
> You can send bug report to Arnaldo Carvalho de Melo <acme@kernel.org>,
> dwarves@vger.kernel.org and bpf@vger.kernel.org.

I'm coming back from vacation, will try to read the messages and see if
I can fix this.

Thanks,

- Arnaldo
 
> > 
> > > 
> > > > 
> > > > I had some other small nits commented in the single patches.
> > > > 
> > > > As requested in your previous patch-series, feel free to add my:
> > > > 
> > > > Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > 
> > Yeah, I'll keep it if v6 is just commit message changes.
> > 

-- 

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210117201500.GO457607%40kernel.org.
