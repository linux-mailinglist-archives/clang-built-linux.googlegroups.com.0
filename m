Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBPGH6CCAMGQEWZS5SUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAA037D3A8
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 20:51:41 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id b2-20020a0568080102b02901ee0acf20ccsf2091989oie.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 11:51:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620845500; cv=pass;
        d=google.com; s=arc-20160816;
        b=PUePrSYw6xzRjAMtEW+seibO7J2dfb/Mw9xPUNs/rig060SSG05qF32rBrHcQUUuYG
         BTxvWs1jj75v19QloBpsLBLjqre3NVH0c3IYxUs6fv4dygOAuKlLN9E1Ji4zhqkcm7ui
         Jh9Ol3hbjiSRJkz7K0NfFPm5ByCZE12JqBEsg6M0AV/Rrg7HZ5fJFt3ljoPFUubfgNcD
         cNntvColryBOy50U4iXEFw6shE5GxciSeGuIDwkNVSWZIIgB/ntcGCVrNrXrnAVi4qXY
         I1KhHCKey4h79vxkQXg0zjMa8hm9I9xx49ZsN1EPyelNVGslOGFaWEOQT8wpGqOlGrgy
         Cwcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1IDJB7+JoTbBXBDt3FS/q7AmeaDJgmFCyhQxv7tAFek=;
        b=rTJfhYjj2Szt0Qw3Oqpl47TzaUTlF6KJbvlwltAvHmMUhl7FaLOc22qeUI8SrQS38O
         aAdHzeQuAADgNZShxz9szvm+cVXBPuQHOXYxKcHkNKNHevpdra9+Yzd3MfwjxjTXRVbj
         mFeqz3bzNqSUSTAjLwb9agzgB/3SlDPVlb3Pf5mhMP8a0LZ8WX5QUaRNzhAx/nekRj1X
         Gr7uzf8fXT14aw9qE4kz82+5oiuGP4QHcSZ1rypGnHy6ruDkhYZC+t270gBvyaPHtZif
         UQXtUSHAt6v1dXeOtta6uUlKQS40H8R3eIH7Pvy+9QdQ19uT9XX4HSN2ptd9Wd69mEPa
         QS6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DBvc3Jdm;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1IDJB7+JoTbBXBDt3FS/q7AmeaDJgmFCyhQxv7tAFek=;
        b=areFDcGN50WixZlRVjVSFzdvCv/0C89g7rmrZfAuhhWja8S9HJQozILOA6TTsE51IF
         PtcSceWuFPyHoAot88arKazqJzhfL2DKkyCUJiGMHIKZE7uqQo6tDVeSQ7xU6kKkMXVD
         JmfKAGbk2UqBkXXvhEY8hHo+Bs+JhdMNoF2XGhFXsZY13Z9ntPfx+qhjxNbAwbzDLO8y
         vEIiGkL3pBTr1iuUskP8tJ/cNnOzKW8ryNY/LBsdItO4FpDdB9uP9DR7t4e9xI2seZ+v
         GlRGMiDo/l/JXNnra4BLyq3WR3f3lb3PC1WbRHdOyx0lfd/ofUq+kkztTlWdQm/xZEI7
         9upw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1IDJB7+JoTbBXBDt3FS/q7AmeaDJgmFCyhQxv7tAFek=;
        b=Wu7QAB4KGHFhj4kYPzL+PmReN3lDgI2+gas7a3ZVX5s2jB/SgBK8nVjsHmlK6OudE2
         tvhNuJoozNpw6jbo6xfecrqBbaxDQuKzA1wImsg655GOfu2UJwIeihecbDG3szkcYR3F
         7V6P903a4Y8CIvABa6pTd2NNEVL4zoXgWXbQ88CVlj4N4lPaznXQZuPAU5zvk/jfT3YZ
         anCecm8K5yYBkM6KrUZOZp4rjMluxeDumL/gUdMSfOQnbzpwCRanv/2IsacXRdyTDDod
         68/Ux3jDo4rzWMrgHvbzE5ba3X2JXQxzz4MZaQfflZ8/HttAVGFVaFVs2PD/eAl0AsVt
         Se8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iHZlUCAqa/KPDkLggNjeB089UUEAmIQ178W6LxNwjH9BYaRn1
	rA0Hy5coF/0A9zyG412ioM8=
X-Google-Smtp-Source: ABdhPJz3gVFuHoW0hKQSybDkVl9TQZZNoTZlXP3quN/MK2sDXeA5C+f6XG03MMGZEz1VII59HSekOw==
X-Received: by 2002:a4a:be86:: with SMTP id o6mr11382650oop.67.1620845500471;
        Wed, 12 May 2021 11:51:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4392:: with SMTP id u18ls882613oiv.1.gmail; Wed, 12 May
 2021 11:51:40 -0700 (PDT)
X-Received: by 2002:a05:6808:655:: with SMTP id z21mr8382770oih.8.1620845500076;
        Wed, 12 May 2021 11:51:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620845500; cv=none;
        d=google.com; s=arc-20160816;
        b=rBNvEebcDsEuKARJ8jY2QBZg7887d2wBOPgMhZhArm4fq8BE8PRKBOotGe1NWQfKhG
         f8l40v2RlVIihWdYMGygeUEZ2ajYg7crCD9/X0hDeyg9dAKa/KEQktwsKOM/pd+RacC5
         kc8GPfT2DMTlIW9rhfF53TB/pE3l7J84fxEFv8ZgAuFjfZbNH9xzxJcUkOayaU+E98Xk
         DdPQk5ePFPRijZsakkRIzq8mibX+PJSa0gH395XdDYpjYLfoBNUf0qfzh9m6tw5lAZPw
         kxSomr/JKbnUZzMWC6BJCFkPJ9svP4tNTe68HdwB5/TTdmKNRxr6bm0EKIO25rw3sa4Z
         5AKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sAhXLHRz7g3O7qSAOB29VZRq9TQTLxkCCHIT42gn31o=;
        b=Ze2y4JmLLPaPHnPd+TnK75RNe8fLqykziZK5S3iYCbRzmwHpsZeEiWcalyurOzy4zB
         v41pUugm7VkXh56MfSDE8CBoANib0Eba4OwEYrtIL+4/GTHaZ8sEABvQcwjiBf1z7R7v
         ICyUnfKU/Ual0TpZ/GpuRMirZ2Dfp15H/fDK1ejTa5EzHkbIqnyr3rDnoTq7tKTwT+Tc
         qrMFGlNeaV2+O2t02YemssGW78TxsrLiKqfTBAAnNpRzei24TFvDOZX0sNFCD9I58DXK
         wFikyxcI/ybB3Fgm1DAX2FpoXYpx+q1uZUJH0UKIHnSchdVH4xIIRTCpX27aW7ET1wj7
         ti1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DBvc3Jdm;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 88si88442otx.3.2021.05.12.11.51.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 11:51:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7B6FC61352;
	Wed, 12 May 2021 18:51:38 +0000 (UTC)
Date: Wed, 12 May 2021 20:51:36 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: open list <linux-kernel@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>, patches@kernelci.org,
	lkft-triage@lists.linaro.org, Jon Hunter <jonathanh@nvidia.com>,
	linux-stable <stable@vger.kernel.org>, Pavel Machek <pavel@denx.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Maciej W. Rozycki" <macro@orcam.me.uk>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Huacai Chen <chenhuacai@kernel.org>
Subject: Re: [PATCH 5.12 000/677] 5.12.4-rc1 review
Message-ID: <YJwjuJrYiyS/eeR8@kroah.com>
References: <20210512144837.204217980@linuxfoundation.org>
 <CA+G9fYufHvM+C=39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag@mail.gmail.com>
 <YJwW2bNXGZw5kmpo@kroah.com>
 <CA+G9fYvbe9L=3uJk2+5fR_e2-fnw=UXSDRnHh+u3nMFeOjOwjg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYvbe9L=3uJk2+5fR_e2-fnw=UXSDRnHh+u3nMFeOjOwjg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=DBvc3Jdm;       spf=pass
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

On Thu, May 13, 2021 at 12:18:32AM +0530, Naresh Kamboju wrote:
> On Wed, 12 May 2021 at 23:26, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Wed, May 12, 2021 at 10:53:04PM +0530, Naresh Kamboju wrote:
> > > On Wed, 12 May 2021 at 21:27, Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > >
> > > > This is the start of the stable review cycle for the 5.12.4 release.
> > > > There are 677 patches in this series, all will be posted as a response
> > > > to this one.  If anyone has any issues with these being applied, please
> > > > let me know.
> > > >
> > > > Responses should be made by Fri, 14 May 2021 14:47:09 +0000.
> > > > Anything received after that time might be too late.
> > > >
> > > > The whole patch series can be found in one patch at:
> > > >         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.12.4-rc1.gz
> > > > or in the git tree and branch at:
> > > >         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.12.y
> > > > and the diffstat can be found below.
> > > >
> > > > thanks,
> > > >
> > > > greg k-h
> > >
> > >
> > > MIPS Clang build regression detected.
> > > MIPS gcc-10,9 and 8 build PASS.
> > >
> > > > Maciej W. Rozycki <macro@orcam.me.uk>
> > > >     MIPS: Reinstate platform `__div64_32' handler
> > >
> > > mips clang build breaks on stable rc 5.4 .. 5.12 due to below warnings / errors
> > >  - mips (defconfig) with clang-12
> > >  - mips (tinyconfig) with clang-12
> > >  - mips (allnoconfig) with clang-12
> > >
> > > make --silent --keep-going --jobs=8
> > > O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=mips
> > > CROSS_COMPILE=mips-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> > > clang'
> > > kernel/time/hrtimer.c:318:2: error: couldn't allocate output register
> > > for constraint 'x'
> > >         do_div(tmp, (u32) div);
> > >         ^
> > > include/asm-generic/div64.h:243:11: note: expanded from macro 'do_div'
> > >                 __rem = __div64_32(&(n), __base);       \
> > >                         ^
> > > arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
> > >                 __asm__("divu   $0, %z1, %z2"                           \
> > >                         ^
> > > 1 error generated.
> >
> > Does this also show up in Linus's tree?  The same MIPS patch is there as
> > well from what I can tell.
> 
> No.
> Linus's tree builds MIPS clang successfully.

Ick, ok, I'll go drop this and let a MIPS developer send us the correct
thing.

thanks!

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJwjuJrYiyS/eeR8%40kroah.com.
