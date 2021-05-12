Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB4WO6CCAMGQEEH6COYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id E911637D3BF
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 21:07:31 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id f2-20020a1709031042b02900ef82a95ef4sf1703147plc.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 12:07:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620846450; cv=pass;
        d=google.com; s=arc-20160816;
        b=wlTOJzD0YpbVL/F8jIeTVggBHpHReFurVjTXS2GEjXPWC1r6eVpyOUcPknSKHogtTY
         Z0oY8cJEnx2q52182aWxX6Wddn+Yuw8qFabzQe7XV8EQ68XROMaxvZ8K2hcZyKwL3dKj
         drGyqDwmU7rtlVbOjN0edjMs0bki2J5k90PWa3xfnGZwYCxYvqVRiRsP9Rbcioe9q0hu
         cCVZyVTbbct2qtDKTcdYuUUkfG5spcSDuTjOGYxhtMv2cHQLK+y3QJ5oWQ57HlCqCq9v
         LBhRSYSILzJP5d0JYfpdhkwovhyj95TKVSSY4zvhcRPot6VieyQSZ3ZjjY45OCeJNFMx
         uw3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=eOVYpSsFPCxtvySAIwyO4nU5D0AeQHXPSzegfyyn7UA=;
        b=aqMCAjBDo3ivXS+3dvKRYPdZSthJt9nrURT037Rqm7HWu5pBkhgmh8JXjWVy7t/bsx
         DTRJdfvLI28x6a3qwJrWHcWDGn/vqeLYl5ICpX3QI9Ib+6o0eZbFZALA6y80/bINFj/K
         tDPJm5EjcBwLdHZ8WMLB7ooxaf5XBhF+XChtUeFR+ckE+jdZohVLpJraW27NtnFXSJ4a
         bwi5j3MjUbZDK4oJFFnGRPkIcYKvtnWFmD/SMTmxPjY++CcNNwRmvMVnPODJDZyEIDS4
         hvRY/s4fTGhtXuIYEqYgkgmohy9SCFbwHuMPtOOA+laMD+YCo+sDgkhUQoMpxmBiMVJW
         4lBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=mSGjSWC+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eOVYpSsFPCxtvySAIwyO4nU5D0AeQHXPSzegfyyn7UA=;
        b=LCs9ZrCv8b6kUZQgMgHind8wFj9/DSQtrOwwOUTQRbc+KBhAgNCcg0Xuwy0vtXo0Yp
         7QcYJLj1Pz71vqn/TOkfyTuCr9B9WegwD9+6mzxqutu/WJ0Jge/Q5slRfM7XL4fT8qO7
         GEDR6YxBKnesgA/HQw2ZOUakgmQ5xXZsDo/LQoLjaLsxXu72+p87/02JGqqToVNh6hm8
         pRd2zGbOzWi0bQTVoG+2mhv5eW5SraD56qflpEbb7xyCj0xCNry74PoCnpVZ0OfBb6qJ
         Mpo1I2Ymd8KWwKfe4jYSlYbCIs6eKsOn2lxXjbJVIN0gg+UoS2b0IZcbjchgFAQ+cJcA
         Wg1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eOVYpSsFPCxtvySAIwyO4nU5D0AeQHXPSzegfyyn7UA=;
        b=SF1HofP9XfqPyPeQci7T8oIb6ISfMiFQR1XZ9cAuWdzdFg9h/oxcDAxSVrmy2swvEE
         7h4xYbdMb1rToId3BrxqCorOLSBQbZxo1ULYUEFbLcLmcXJ1wVAUFm8Js3B2/TexEXTn
         6pf0CuX0g724hzz2n8Yt8onIxj5sxBYVyTeBw/8N0eqhzSVxBfU2YYjRcUqqCjKu2ZFV
         Ya2iG385rPNjPgwhQnb/+tCCsKg7weBhmKptELy6HcCD7pRNdIkWiJooEpzb7lF1Mc6h
         IYI2IF7ipRgtJ7MtOBXUX5Kp+Wq4Py8edpaW90wPz0r0Dz7c8AHnGk6dm7w0MVJk0LW9
         O3sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ecBT43JGyfwBI3grlgtIW12l/lkDiqo2ok56E6Ji33tkaz/CV
	4BezP/TDNCjw+4PfbgD39e4=
X-Google-Smtp-Source: ABdhPJzBhnrkyPui8ba4GWszA1uTJtkYrVhJTUEABFcrAsQ1y1yVTI5EBSOUERzAbiCjKXSlqeT+vw==
X-Received: by 2002:a17:90a:17e7:: with SMTP id q94mr39853219pja.117.1620846450660;
        Wed, 12 May 2021 12:07:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9255:: with SMTP id 21ls1439473pfp.2.gmail; Wed, 12 May
 2021 12:07:30 -0700 (PDT)
X-Received: by 2002:a63:2c92:: with SMTP id s140mr38014805pgs.39.1620846450073;
        Wed, 12 May 2021 12:07:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620846450; cv=none;
        d=google.com; s=arc-20160816;
        b=R80rhLLR2cCrc1fgzW71bPX00/9m85S0jeHGcbOZtGi1S29uTCmPZHBdsYgpTf1yAf
         p9CZ15GejQMhJo4Xh/YzCbElxSwMAX0mdVCjttlcN7b6YZ282dABp8WIfcwg2xxwKFmK
         s7ivImNB8sEMMgsFpHZNK3WoYolYcgo7w3GzQdJLupIp020rx5lcjspjTyEcdivUvVuv
         R6FkLfib45ttsMVNP0z+4Sy17bSlZrieohbV4Iii+qkEvEqV44qsk61Na8N9OX54wsON
         RZjcZ3+Ffacb3dtznXZ3l/DxotM/tOexmoHWtIwz71zj44VTIZ2i1DOkWJ1GG+DG7spT
         kOEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wc+Af9gC7OelelM+Z3QHM/WZBa5hox3CKo3HjI8n4XY=;
        b=cyDGbVY/21amJuxdT5ZKya9ByNeswB80tkra6twbq0amixPDJ4VkRRizhU5xJaGxA/
         TDC1d4aij7F88tnhd8vp9yu9eGYZHmtsvWAaXlUIPyHo4THEb3E6SnEiBrEiPwzUfD+n
         1V39G4OA3o+FyKYLrffc9c89W7Kvd5cDdKmEQ9g4fRo7V0M7PnSbdiDukKmYGTyyEyHZ
         imZLWi3PafOkZ7P5OeHEn1fRBlwrzvQryV+ycrpWB2qhDmJxVF8e7Ch+4Z3L3iPtGdtn
         II0dR6ncqxwa2mEnMpqGwJOwdVQ5Qcs+5Qoty8kE6qZuYLIOt1G4igs83JC4uaObzU2/
         3WlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=mSGjSWC+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j184si93414pfb.1.2021.05.12.12.07.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 12:07:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 13F8261352;
	Wed, 12 May 2021 19:07:29 +0000 (UTC)
Date: Wed, 12 May 2021 21:07:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>,
	open list <linux-kernel@vger.kernel.org>,
	Shuah Khan <shuah@kernel.org>,
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
Message-ID: <YJwnb4BwQEr7xFsV@kroah.com>
References: <20210512144837.204217980@linuxfoundation.org>
 <CA+G9fYufHvM+C=39gtk5CF-r4sYYpRkQFGsmKrkdQcXj_XKFag@mail.gmail.com>
 <YJwW2bNXGZw5kmpo@kroah.com>
 <CA+G9fYvbe9L=3uJk2+5fR_e2-fnw=UXSDRnHh+u3nMFeOjOwjg@mail.gmail.com>
 <YJwjuJrYiyS/eeR8@kroah.com>
 <8615959b-9054-5c9f-0afa-f15672274d12@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8615959b-9054-5c9f-0afa-f15672274d12@kernel.org>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=mSGjSWC+;       spf=pass
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

On Wed, May 12, 2021 at 12:04:04PM -0700, Nathan Chancellor wrote:
> On 5/12/2021 11:51 AM, Greg Kroah-Hartman wrote:
> > On Thu, May 13, 2021 at 12:18:32AM +0530, Naresh Kamboju wrote:
> > > On Wed, 12 May 2021 at 23:26, Greg Kroah-Hartman
> > > <gregkh@linuxfoundation.org> wrote:
> > > > 
> > > > On Wed, May 12, 2021 at 10:53:04PM +0530, Naresh Kamboju wrote:
> > > > > On Wed, 12 May 2021 at 21:27, Greg Kroah-Hartman
> > > > > <gregkh@linuxfoundation.org> wrote:
> > > > > > 
> > > > > > This is the start of the stable review cycle for the 5.12.4 release.
> > > > > > There are 677 patches in this series, all will be posted as a response
> > > > > > to this one.  If anyone has any issues with these being applied, please
> > > > > > let me know.
> > > > > > 
> > > > > > Responses should be made by Fri, 14 May 2021 14:47:09 +0000.
> > > > > > Anything received after that time might be too late.
> > > > > > 
> > > > > > The whole patch series can be found in one patch at:
> > > > > >          https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.12.4-rc1.gz
> > > > > > or in the git tree and branch at:
> > > > > >          git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.12.y
> > > > > > and the diffstat can be found below.
> > > > > > 
> > > > > > thanks,
> > > > > > 
> > > > > > greg k-h
> > > > > 
> > > > > 
> > > > > MIPS Clang build regression detected.
> > > > > MIPS gcc-10,9 and 8 build PASS.
> > > > > 
> > > > > > Maciej W. Rozycki <macro@orcam.me.uk>
> > > > > >      MIPS: Reinstate platform `__div64_32' handler
> > > > > 
> > > > > mips clang build breaks on stable rc 5.4 .. 5.12 due to below warnings / errors
> > > > >   - mips (defconfig) with clang-12
> > > > >   - mips (tinyconfig) with clang-12
> > > > >   - mips (allnoconfig) with clang-12
> > > > > 
> > > > > make --silent --keep-going --jobs=8
> > > > > O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=mips
> > > > > CROSS_COMPILE=mips-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
> > > > > clang'
> > > > > kernel/time/hrtimer.c:318:2: error: couldn't allocate output register
> > > > > for constraint 'x'
> > > > >          do_div(tmp, (u32) div);
> > > > >          ^
> > > > > include/asm-generic/div64.h:243:11: note: expanded from macro 'do_div'
> > > > >                  __rem = __div64_32(&(n), __base);       \
> > > > >                          ^
> > > > > arch/mips/include/asm/div64.h:74:11: note: expanded from macro '__div64_32'
> > > > >                  __asm__("divu   $0, %z1, %z2"                           \
> > > > >                          ^
> > > > > 1 error generated.
> > > > 
> > > > Does this also show up in Linus's tree?  The same MIPS patch is there as
> > > > well from what I can tell.
> > > 
> > > No.
> > > Linus's tree builds MIPS clang successfully.
> > 
> > Ick, ok, I'll go drop this and let a MIPS developer send us the correct
> > thing.
> > 
> > thanks!
> > 
> > greg k-h
> > 
> 
> I think you just need to grab commits c1d337d45ec0 ("MIPS: Avoid DIVU in
> `__div64_32' is result would be zero") and 25ab14cbe9d1 ("MIPS: Avoid
> handcoded DIVU in `__div64_32' altogether") to fix this up.

It was easier for me to drop it, let's see if any MIPS developers (are
there any anymore?) care enough to send the proper series.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJwnb4BwQEr7xFsV%40kroah.com.
