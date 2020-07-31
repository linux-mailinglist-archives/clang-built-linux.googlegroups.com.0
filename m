Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB6H5R34QKGQEFXRWVGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDC6233F6A
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 08:49:30 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id t22sf11092808iob.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 23:49:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596178169; cv=pass;
        d=google.com; s=arc-20160816;
        b=qatx5WZudEG1Y7biwnhKgJrcIrx6BsPqAXYOjuAOqW4/ACNFLhaMKXl6I2OgltyU4N
         lD4Zzz4iCGjelkgbLHAlJnAT2xC8T3JOypmCnOVORmF34avs8N6rld05rGAtBG0mdeTn
         X9lw0NW2/OixifsoV+XZQVTWSZKCTTw8kG60DvqcJqm6+eDtUVaFepLJb96JYV4VZfWF
         OfJMwjIMiSr8Uwa0OuWwv+YVuQ5G86jxWDzjjF772SZ+WMpmNdIEZmqllIb6erlrxyxT
         gqU+8VJHj9Pj3OwrfT/oirH0y459zApelVk2nj4voHPfqFHZ2N5dGGm16rI7INWoPKIq
         DAYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8zkv/iQo9SS3tg6b/UlM2HtS9lMF2tuEOBsS13SjV5Q=;
        b=JN4yQA5uM4tto2nThgQnmvDviBHYEKwhkvF3wTiRY3xDxUjOgnYsWPgk3hzwwa205h
         VMObRIjaAmc12+NOXhOGdUJHHUjw0qoJug3ESku2LYSX+gNBSO/JYSsLu4DE5uL36b0b
         OC1dPBQC22A+lI5kKU0A40CqEKTY6s77vdSsVzixlRsdBz4W4SJf42Xd973Qv8o7+lwM
         REVWW2FB4Rrc0jdG3aDG1AhQW7oQQX7kieHIb/PrK7k9xz7J2OpYXOOxv7LJhcSxGEtN
         U1dUWn4lO+5X9tJvIYAArkH73Wqmymi4fx/JNQcplo5PbTkgAAArZJBne1HTUtJbfx6k
         gXWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0Q3ICI1V;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8zkv/iQo9SS3tg6b/UlM2HtS9lMF2tuEOBsS13SjV5Q=;
        b=PIYI3hUWHswQnYsnfjilkKgij/Wp8P8j85LqUcibI+HIf798Mv4sZQsdr05Wpe9RMS
         F0kll1DVtp3YNuBg3uWaPc9yi7wAy6hLkCLT4dRksuzdyNPUszhVjKjlZTjvCj+Jdgmf
         MF492BuzLhQm7ko+02Shm9zOweWTluuATXDAKt6N04gU89jVLPBXV6m8Seandpcw4MH2
         qqIZXNZUAs/E5gRivJSkD6anZCbFhdD7mw9vkNGRITcBJMQ+8lx9mOUKOTqj4w3gdEfm
         AMBb8GSJP40llad4Kgm64fNHldi4TP9wTVLWcsFYCozPD4Am0dcueHp14yyAKEnDDAUV
         geMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8zkv/iQo9SS3tg6b/UlM2HtS9lMF2tuEOBsS13SjV5Q=;
        b=hUrXVb3jpxbIRz+qFrN0ahOluo+iE2BF/j159KqdoW+sFrm8/GS1yr8Bzt2SifqJ03
         cOOVzr0wBufekVhPGMXZBewbaaSJughZmAVY5ZIVJDk4xcyCYRkW14ZsKwVzi0wlTHCW
         OQwqvln4Bf7Ik6nwdVIW0f/Vn84+m5AKawJgLY04U3jWFURatnGoDrF+LPn9RBKM3/T9
         xdv8kVLFCFd3DESEJYwWIfY+gOxbC94vXUgzCIpCN2wUwU+VaEYNJrmAdBEZhpFD1wiJ
         uEvu+JLoNYUQgrgdJcsCJ1vTPsb76otCZdLkIo8M7KqtvF/MxkEGLlY6tpKKSTgItzI3
         Tb1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pP6juI3UWnzhpGn/0V35HiHNYglxGeHLFiBo/WwlU4+3dQVge
	kwblfAj61ECBJKRugVkMiD4=
X-Google-Smtp-Source: ABdhPJzuDGjPoyH7vtrZAniZMqHDVglyxwS7qLJTTZAd68Ms3W+HMHRCjSyPpnJV/hzdEyU1pd7uOA==
X-Received: by 2002:a5e:930d:: with SMTP id k13mr2274332iom.40.1596178168779;
        Thu, 30 Jul 2020 23:49:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:11b2:: with SMTP id 18ls2189246ilj.8.gmail; Thu, 30
 Jul 2020 23:49:28 -0700 (PDT)
X-Received: by 2002:a92:d24a:: with SMTP id v10mr2369898ilg.224.1596178168390;
        Thu, 30 Jul 2020 23:49:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596178168; cv=none;
        d=google.com; s=arc-20160816;
        b=UCcRuy/tiD+QFjZKQcrHvphVM5DOtLtwxKC+JGZOZwxZW+ZB/uK0RmwLSM613a+1N6
         STBGiIxUaMdh8E4TSZH4cFuf/K9mvKBVfZa/MbtMs5a6zDov4GAmIEuOnD+7o2y5rBgb
         MhiGIpdaKi+EGw/Fm1oAiTpEyux0VA7F0Hc8GE0/T6nOhvj+Oigm/pWAMQIzkt0PlqN6
         vFM+4PutILrcE429eePf9+gBjWgHDfhUwLkjR120lu0zB/MmskNvgGryQqIHIkG93f+x
         joRefKUC+rjM1XgYw+rs7kMPoi+c4tL0Nj/3uRCPmYVDsB1DbQm8Q2HZQhJfrtjfM6tG
         CDYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4Q3xihXNDg4sOlqxCZNOhimlBqFJSDX6bG8JBIhlYAs=;
        b=o35JPmEyodE5a/mTD0+WpCZLhMWytpOoHyhvm7mvuOvptE+Q5ecB+7EhlxVmDBSoMm
         TNleiOUJ9DSknYxMXA5KyUOooh1+3LBPrS1Im9QogpiK9lwH+ad5eLgqD/+evOsllCyu
         T+sUNxX41HO9BbSm+V7a/1djugY/nk7UpTqX3qaJLbKoqz0CDXdJsHXDJF//h556eDg3
         qdLX9VvdZR++fMaZjuMRJr2acsg46dyBFVlnYMcZ/xXbvQTQ9OxhRBoFWCXC+FUYe5Ju
         3FLwpKyCa+D0LC8bbJ2GMM9pAZTYi7IzFQcGcP+JCWQwXcd1Wl2oB+92XESAgBs9BgfV
         k7vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0Q3ICI1V;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k88si244543ilg.0.2020.07.30.23.49.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 30 Jul 2020 23:49:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1AAE620829;
	Fri, 31 Jul 2020 06:49:26 +0000 (UTC)
Date: Fri, 31 Jul 2020 08:49:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64/alternatives: move length validation inside the
 subsection
Message-ID: <20200731064915.GI1508201@kroah.com>
References: <20200729215152.662225-1-samitolvanen@google.com>
 <20200730122201.GM25149@gaia>
 <CABCJKucS-DXPkHMCPKpbFduZApRdw=1DL4+YhULAsUNn=o-dTA@mail.gmail.com>
 <20200730152330.GA3128@gaia>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200730152330.GA3128@gaia>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0Q3ICI1V;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Thu, Jul 30, 2020 at 04:23:31PM +0100, Catalin Marinas wrote:
> On Thu, Jul 30, 2020 at 08:13:05AM -0700, Sami Tolvanen wrote:
> > On Thu, Jul 30, 2020 at 5:22 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > >
> > > On Wed, Jul 29, 2020 at 02:51:52PM -0700, Sami Tolvanen wrote:
> > > > Commit f7b93d42945c ("arm64/alternatives: use subsections for replacement
> > > > sequences") breaks LLVM's integrated assembler, because due to its
> > > > one-pass design, it cannot compute instruction sequence lengths before the
> > > > layout for the subsection has been finalized. This change fixes the build
> > > > by moving the .org directives inside the subsection, so they are processed
> > > > after the subsection layout is known.
> > > >
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/1078
> > > > Cc: <stable@vger.kernel.org> # 4.14+
> > >
> > > Commit f7b93d42945c went in 5.8-rc4. Why is this cc stable from 4.14? If
> > > Will picks it up for 5.8, it doesn't even need a cc stable.
> > 
> > Greg or Sasha can probably answer why, but this patch is in 4.14.189,
> > 4.19.134, 5.4.53, and 5.7.10, which ended up breaking some downstream
> > Android kernel builds.
> 
> I see but I don't think we need the explicit cc stable for 4.14. That's
> why the Fixes tag is important. If a patch was back-ported, the
> subsequent fixes should be picked by the stable maintainers as well.

If you know it ahead of time, the explict "# kernel.version" hint is
always nice to have as it ensures I will try to backport it that far,
and if I have problems, I will ask for help.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731064915.GI1508201%40kroah.com.
