Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6XEVOAAMGQETS5EADQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 17542300791
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 16:42:51 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id e12sf9378787ioh.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 07:42:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611330170; cv=pass;
        d=google.com; s=arc-20160816;
        b=iwrnBl/VA7xWq0awXypXZrbOx4k4x2CpX+WKyEupAEiIgYlPNYvaiDV67znD0Ic1pg
         //W779P+sZXoiF4/J/4P4km2CwqO0KYvHDUG9f/gc+n/pXtOMcXaboU+ey5fbuwtatwQ
         l24aH5Py4PNXdJmjD4Z3PqztSUI0FaG0VO0tDYfTUn/uW0AX2DahPqsOJyJh/KtdDNDK
         8jLxjwRoYkro17I2A+bRVDPxdF+A0qb6/Rc5KGeWTaz/TB1WZKDZVQY7u+JheKGs4SmV
         ZrjD7j4H8Pukff421cXfF+cJYuuMZqhx7uLv0wMr0Qzt4C/5aS6cX7Vt04tIwfZ+hsx6
         makw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Tfn1LbpLl54P0VXYWC2tpLVxbvszloUIeQadx+lOdtQ=;
        b=Xz9OxUqFknBoPmkQD0uw6+dTbVjIK996CCyteizWP/rpHrC2D+0TtVgA2omZo/8hzS
         LQ3CPFgl1SN2ylgCzM05A+AGv6jIZXmji6AdW5gL95GVR4vMmXP+G2Wb8741Mgubyrop
         WUBjSrQjIZ3kPlN18hR9It8lB87FBNRYUPv0qA1JkVBq706s7mghKjHAbmJdQOhJyOdW
         77ehYyo9DGvN0EbPv7gc56sZEFHLk9EN/97QPvjU10Il7qiyeA6Sr28WB/fb5M7/O0sd
         sIe+mBQ/rpUJhLxnRU1QcLN7goktKLqmQTrFJvlvqEhKCJFvUEllG/FdAqyUV7d3K7vh
         B+2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="djw84JL/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Tfn1LbpLl54P0VXYWC2tpLVxbvszloUIeQadx+lOdtQ=;
        b=BNfsiwAF5tT34lAnOwjKbmf2f8OeXt6EzHgTqEr+fntiapsIUDhBvG16jjs64B8EIK
         kw/ejsIdXRvXqOVjL0ruEvJx3lHEZaIQuA8fr9QyUI8C+KTCOeTm+KV8sxVKN86SOnyJ
         PkHviMMwtZ7q4YdvrnL35lTZvZoTmup5rzFo9CriQJrf1+a5ky54qYZ/Z1034qu9Z6Gx
         KcwOHwYn8VBPvzrwax/6/wnkNteRk41+pQhQHcgFUjrAgXwmNlMUsEZmGwFAB/Od5iLK
         vkBDOQtGpOMv1nrOqpA0+wzyy3jE5HgHR8UQLzQdxbLb1/tkPplVJX9SGItZHv8CU2Jx
         B8ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Tfn1LbpLl54P0VXYWC2tpLVxbvszloUIeQadx+lOdtQ=;
        b=KaReULhe46cBhntWo1tEs0bNlB76czfWAmAnTPfqsYrZKtI9q5kQIRr4fP/pjD4kXq
         qmXx+XLoonf0JaUqSbzH327wcAgSB9SjhCBxOpzP8xL7Ym6r/0No9UXVThR8jqhY/686
         3rVVxFJp71Fg8bDCD2XKfrN4i1LnV5YstaXCywqy+BUxkwI7WEvUH8OoXB0g4Yi1ETNv
         Z0aQ2MH/V2GIQFOj9bwG6jagcckmnUxSAhvbsivaDfzVnRstPZa801GtbnrumLs+F7Uv
         dacFhP9zwnSSr8ZCNkxjA/Y0TnXxYJY6T/Uc9T8mYSy1f/e9ZfcWrIUGO3jnX2DE/dwD
         dsNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Tfn1LbpLl54P0VXYWC2tpLVxbvszloUIeQadx+lOdtQ=;
        b=bZBN1yQRqWf5uD2bYaD66/nTaMO+5f+SVBi/+2CQRJ4ewixt0Qxq53Py8A7cZLbfn7
         VotTcCxh9phOK6mzsIf2+rkwbn1YKKHstYfJgTYVSX0tQ4lUCWXfYzKDMrxNfG+rTvp7
         KyHtGMrozuMzGWxfLbhynIUYJwuB/yraRavmcc3er9JKOlNCxASwlMETlbnIaeiE3oY6
         3QelcuacGEMWvNP/AL+jqBGDXJDkYCkYf4kHvXtW2qTHbQyg2PLXtPzE3HvR87MSvpLD
         BdlZaE9jAk5NKumqdTVoipkTb+KQqgWgGHlYvDtXoqhESVK69YaOCpvWoe6zE40EftVj
         1VqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UVLKSzFbCs+zeLiu0Mr5NhNUW6dsNuocQvSHwrWLSuXSbotlw
	wP74SokMqWj5ZfRnUjiSwbU=
X-Google-Smtp-Source: ABdhPJxCHSqIlQ16Sb6Jc5LCYD6Ljo6UPcWj9p7M1GDX9LKqToEhJmC31kQUmlM2yB87Mkmk7uxlww==
X-Received: by 2002:a02:634b:: with SMTP id j72mr1636729jac.106.1611330170126;
        Fri, 22 Jan 2021 07:42:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:4b06:: with SMTP id m6ls1538893ilg.0.gmail; Fri, 22 Jan
 2021 07:42:49 -0800 (PST)
X-Received: by 2002:a92:850a:: with SMTP id f10mr863649ilh.269.1611330169556;
        Fri, 22 Jan 2021 07:42:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611330169; cv=none;
        d=google.com; s=arc-20160816;
        b=aWlmu0Buryco7m8s8snAaDfCsdh1JQGY1Y2bG+eRGVDf+Kgeaf/u4SvMtO14OAYn8A
         lTeR7klnOHwtMdKY8L0/O0BdZ9JGwRWx610MvsEqfEvJiEykWmIw4Il+B5ael9c1QB6T
         dnEv1mGGyNXUzRLHqLndP0FeR+sNyHsFUycWIkgJmfdtVonKKwXTxSTmW1wdi2tn02xt
         N9Edb1owoYZeRgIU5Bs4aVJ90Mmt4ZqN1FWHNiktFbwwm3DEZ1SmU2jtEQzgn7xIZvI7
         JGbBex8+iBpgk8fyXcEMl/pWpD4VdMd2zKzWW9fLLLehlCZ1Z9Hms++omXKpO7ie01zo
         hBnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6dQh4eu6OadVK+LYkdoHUNDrCwpiKoNQBIPdj3Z2wsU=;
        b=Pxfli6vaY02ZTzFmGCSFIq0l+kIGSzVy0Rkp7XTyw1deLn6SXMXlURuc0TI/d/7c9+
         q1UekXGPaS/4fKnqqv2IE+xmU7crO+xxFWU8ioidNpYcRs2EKTPDBJ2YmhAIqmHx/h71
         iyD2xcUZdD7XB0WIDmUTvNnX0aSQh13ysitBxJcNCyZeol1tflBWPjUmywdVZhwtOaUG
         sodfYUkrZ9D70FCyCwkMARtwJGAphTqkrRN9GKVw/70LhNNRBApFMWFMbxcKlAMWq4pi
         aKqGfBj1fSk6ikQcc4bT7wya9PV7gp4zh4cyMlY8OqPmnyMgZY/l0xZqJ057p9M25O/b
         j4jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="djw84JL/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com. [2607:f8b0:4864:20::82a])
        by gmr-mx.google.com with ESMTPS id l6si763740ilj.4.2021.01.22.07.42.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jan 2021 07:42:49 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::82a as permitted sender) client-ip=2607:f8b0:4864:20::82a;
Received: by mail-qt1-x82a.google.com with SMTP id t14so765008qto.8
        for <clang-built-linux@googlegroups.com>; Fri, 22 Jan 2021 07:42:49 -0800 (PST)
X-Received: by 2002:ac8:4e55:: with SMTP id e21mr4677048qtw.159.1611330169191;
        Fri, 22 Jan 2021 07:42:49 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id h8sm6161683qtm.5.2021.01.22.07.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Jan 2021 07:42:48 -0800 (PST)
Date: Fri, 22 Jan 2021 08:42:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Will Deacon <will@kernel.org>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	open list <linux-kernel@vger.kernel.org>,
	Shuah Khan <shuah@kernel.org>, patches@kernelci.org,
	lkft-triage@lists.linaro.org, linux-stable <stable@vger.kernel.org>,
	pavel@denx.de, Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 4.14 00/50] 4.14.217-rc1 review
Message-ID: <20210122154246.GA1308786@ubuntu-m3-large-x86>
References: <20210122135735.176469491@linuxfoundation.org>
 <CA+G9fYso4QNbRWdrQiiOiMb5RUr8VtM3AkKEGLasgN+KsPSvDw@mail.gmail.com>
 <YArqULK9c1Cnt5gM@kroah.com>
 <CA+G9fYuzE9WMSB7uGjV4gTzK510SHEdJb_UXQCzsQ5MqA=h9SA@mail.gmail.com>
 <20210122153604.GA24972@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210122153604.GA24972@willie-the-truck>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="djw84JL/";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::82a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jan 22, 2021 at 03:36:04PM +0000, Will Deacon wrote:
> On Fri, Jan 22, 2021 at 08:43:18PM +0530, Naresh Kamboju wrote:
> > On Fri, 22 Jan 2021 at 20:38, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Fri, Jan 22, 2021 at 08:32:46PM +0530, Naresh Kamboju wrote:
> > > > On Fri, 22 Jan 2021 at 19:45, Greg Kroah-Hartman
> > > > <gregkh@linuxfoundation.org> wrote:
> > > > >
> > > > > This is the start of the stable review cycle for the 4.14.217 release.
> > > > > There are 50 patches in this series, all will be posted as a response
> > > > > to this one.  If anyone has any issues with these being applied, please
> > > > > let me know.
> > > > >
> > > > > Responses should be made by Sun, 24 Jan 2021 13:57:23 +0000.
> > > > > Anything received after that time might be too late.
> > > > >
> > > > > The whole patch series can be found in one patch at:
> > > > >         https://www.kernel.org/pub/linux/kernel/v4.x/stable-review/patch-4.14.217-rc1.gz
> > > > > or in the git tree and branch at:
> > > > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> > > > > and the diffstat can be found below.
> > > > >
> > > > > thanks,
> > > > >
> > > > > greg k-h
> > > >
> > > > arm64 clang-10 builds breaks due to this patch on
> > > >    - stable-rc 4.14
> > > >    - stable-rc 4.9
> > > >    - stable-rc 4.4
> > > >
> > > > > Will Deacon <will@kernel.org>
> > > > >     compiler.h: Raise minimum version of GCC to 5.1 for arm64
> > > >
> > > > arm64 (defconfig) with clang-10 - FAILED
> > >
> > > How is a clang build breaking on a "check what version of gcc is being
> > > used" change?
> > >
> > > What is the error message?
> > 
> > make --silent --keep-going --jobs=8
> > O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp ARCH=arm64
> > CROSS_COMPILE=aarch64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> > clang'
> > In file included from <built-in>:1:
> > include/linux/kconfig.h:74:
> > include/linux/compiler_types.h:58:
> > include/linux/compiler-gcc.h:160:3: error: Sorry, your version of GCC
> > is too old - please use 5.1 or newer.
> > # error Sorry, your version of GCC is too old - please use 5.1 or newer.
> >   ^
> > 1 error generated.
> > 
> > build error link:
> > https://gitlab.com/Linaro/lkft/mirrors/stable/linux-stable-rc/-/jobs/980489003#L514
> 
> Urgh, looks like we need backports of 815f0ddb346c
> ("include/linux/compiler*.h: make compiler-*.h mutually exclusive") then.
> 
> Greg -- please drop my changes from 4.14, 4.9 and 4.4 for now and I'll
> look at this next week.

That backport is going to be pretty gnarly, there was a pretty decent
tailwind of fixes around that patch IIRC.

The simple solution would be to stick a !defined(__clang__) in that
preprocessor conditional so that it truly fires only for GCC.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210122154246.GA1308786%40ubuntu-m3-large-x86.
