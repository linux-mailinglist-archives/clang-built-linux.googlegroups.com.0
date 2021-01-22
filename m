Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB6XLVOAAMGQEZILYEJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id C12533007F9
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 16:57:47 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id t14sf3327771plr.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 07:57:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611331066; cv=pass;
        d=google.com; s=arc-20160816;
        b=CQnQU7DiYELMMMly5aJgjQ0Fx5jhPfbvP8W/slhFFCllId1KZHRswhQJhJhObmxN0C
         1o9lc5QNvvPmX+tBkxmOidISqY9zABtuAHGyKsSuXnSOVtRaLsLfpkd6KQSG5DmsWFmK
         WEBn0iuvR0uvg8kq3SndVm6R45zSuWeohldbNcgH1bSX5AfwEvEIw2wUTjVH1nNZauLE
         s5+gW9oE36LwV/luIqzlznVzE9mMKHauAZqcBTuJZjn9pFsAtcutb2wvohZunVME55Hh
         JtJfLEKKgX8/qVJK8O5C//A/on0A6wzAcCSyvaBkUGZD48s7qKyG/7ix8uYLdRqBojeg
         3vsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zVIYEOEu48cozAnpW6xtRioVUkmxHI2BaTPCSygEecE=;
        b=zqXb0SM3RqB7Fik32vFrBdHp6qMDhDpkpZSzwQ8FR7FpW6nHU/jJQiJpNHaasN6sVa
         q3NUNGPGUDyEoZ9VrsLoSHSfQ7s3igrCoaImYz98YiphLu/xEuY0RlZecTnFWGrxJi9f
         mVT+IXqF5cDVAqT7OJxskNdRjJYSjg51362YiyZMCwgYclKUusyMUuWawcaWk0bsaImZ
         f2rKgm1PCRa1zbxT4vmRhzLF2VMtmbGytrJr5A7MrjGq0/5au97vrv9naWTGZ9mmKEC5
         31GFc3z+jFvn3mQhXm4DwB33NtdYIuVmtgGXam1TppHp3YJkwvZ0DhEtNL0pyjQPmTnP
         vhCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XeddcwMj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zVIYEOEu48cozAnpW6xtRioVUkmxHI2BaTPCSygEecE=;
        b=gWAyz4R0cyEOZKI+OzR8Zxlt21wQYWf39O71Se+oJArvsNmSxfihIqjAvy9McGm2rU
         uoSCj9VsmEKzHvR3bFSd+YQwOx6uFUiJUKSRJzLSK4bENWV5hUs5OeUk34eVdHHnW3pQ
         q6UuT2wBqt2CS9Xs0f00o5Rbt4YbFiJ7KfeJoTWMEcAUXgugszjRSz3Ar/XyFw5LKpb2
         foal6NiRnEMKJjmOcr9hndwmpAetCjx0KvH4MKOK4rH/+CP0hAKV2M+xmkOOavjGNLjB
         AB3uoI1Iq1BEvPWyHWXgWgX2D2EcgTOUX3YG7B6xJF7PVMbQPwo77vJJEbxCFegizxQf
         2W7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zVIYEOEu48cozAnpW6xtRioVUkmxHI2BaTPCSygEecE=;
        b=sge5G9cWy/9a7NLGiaojqnATgjKVUAp1ExATi+4YRq7NwA8ZINFGqMUZjCp0cfGknV
         TeQrVfEpG22bzAxypRb+/S9Oq+yvX2d6eDavpV1qmgCEJud2y2N5x59GVuLAcMAhoX9p
         WDIWgwWzGJ/onguT8dhbdwNy9Z60Y8UNxSDZLESA3KaDAB8REmue3OK8PCQxZA+Vbsse
         Hv9SnmLii2o/iBYMz7YsVJynAfyrOFDgQrgk2ODiHpVaeSN2rwjpgwu+wQyhK8+nt1Xa
         gLArpoIQMDz7QbdJX8Frt7RhzK7uJ1+r5IFeRjQ0QhdJpPD+8PzDoyF8weY4fPgia0cD
         taFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PB2qGTPwJLjaFyHxkUHMn/+NMo7lRp90PNMMxTgEuIGokhjDE
	DzRwrV9NLNokMHq8W7gJsJw=
X-Google-Smtp-Source: ABdhPJwjfaJBVYWVihzzkaUIQHPGE91qSww+HbqOC+wcQRpaPaI4YC9URM9WuSYm8/5WbYF1pntT0Q==
X-Received: by 2002:a17:90a:ea11:: with SMTP id w17mr5857230pjy.60.1611331066450;
        Fri, 22 Jan 2021 07:57:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:511:: with SMTP id r17ls3387575pjz.1.canary-gmail;
 Fri, 22 Jan 2021 07:57:45 -0800 (PST)
X-Received: by 2002:a17:90a:3989:: with SMTP id z9mr6290928pjb.198.1611331065816;
        Fri, 22 Jan 2021 07:57:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611331065; cv=none;
        d=google.com; s=arc-20160816;
        b=GuYJuTKOR1rrq/M6ALaflkCHBXlBW+FLI7Sf0nJ6IKoprEVX1+1muKTW/wKefqqNGG
         3DQJvK1BxQukAdvbgO8OVE4le8xYhVYN5I9zo75Ri0h4/q7xby8QJnR5alLOezRtjAEz
         PaY+LEeM+UbD4YHZLqBnf9u5tBGtOiIexsyCPnmRcVZ7RfIImvSeVmfNBOmubcK11lE3
         oIncm9KWxqz5kd8KY0lx4Eq1lQzA58mkhQKMNz728gwyDQvADvh9U0/je5IQpYOLi453
         LB8HoXBDF2NMbpTx8PdSg+PD6fsfjspzkhMuuYSZorigjjR5O6LgVhqFr3ktyvQUduAN
         zz/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=P5c9eGo7ocj6w+lpOE7musDAYf/TNSn5t8J9MBqI9xY=;
        b=kO9tX2AZEOwwT/hDIz5RQn9I7ARtAf2CGT146529K4NjYtM3ZzZieV40GtnlWkaGQT
         7uI4AVJ1H87iwGNtiJ1K/tZRSuKU0QbJ3NAvZW3+Epduh29bjH1/WVFYe3aHiPqjv/0Z
         KPRJU2odIslTVUJBgdPDIIoSxxfd2eTRDxuuqno6z+w/AtOjdqu/fzaGd3qBHI8va6Bg
         EcIJF38v54ziMOvRwn5u3I8fA3aKTkIZ044rJOczhwPLTYfretqEwO1VD6UxnUx9U5OF
         NGkNO/6EPqbUOkB46oZEyQk76ODy9MOsJE85hez88zkxN6GrrdIhvIPSDSeaE15VJod2
         eDYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=XeddcwMj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t9si1083037pjv.2.2021.01.22.07.57.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 07:57:45 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DAC5023159;
	Fri, 22 Jan 2021 15:57:44 +0000 (UTC)
Date: Fri, 22 Jan 2021 16:57:43 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Will Deacon <will@kernel.org>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>,
	open list <linux-kernel@vger.kernel.org>,
	Shuah Khan <shuah@kernel.org>, patches@kernelci.org,
	lkft-triage@lists.linaro.org, linux-stable <stable@vger.kernel.org>,
	pavel@denx.de, Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Russell King <linux@armlinux.org.uk>,
	Arnd Bergmann <arnd@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH 4.14 00/50] 4.14.217-rc1 review
Message-ID: <YAr197qGU9XmtBTK@kroah.com>
References: <20210122135735.176469491@linuxfoundation.org>
 <CA+G9fYso4QNbRWdrQiiOiMb5RUr8VtM3AkKEGLasgN+KsPSvDw@mail.gmail.com>
 <YArqULK9c1Cnt5gM@kroah.com>
 <CA+G9fYuzE9WMSB7uGjV4gTzK510SHEdJb_UXQCzsQ5MqA=h9SA@mail.gmail.com>
 <20210122153604.GA24972@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210122153604.GA24972@willie-the-truck>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=XeddcwMj;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

Now dropped, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YAr197qGU9XmtBTK%40kroah.com.
