Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB74ZZ3VAKGQEIURG4ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 2297E8CA34
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 06:24:32 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id i5sf2862718ljg.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 21:24:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565756671; cv=pass;
        d=google.com; s=arc-20160816;
        b=V4pk2Zs98RNWJiKog/dZee2E4RjNGDzQbCYZQmxO+UXmQBR0/LMm4MKJXCpIVCINml
         o4nYNbTATT45EkWSWYl5NQnbKSLqTF3otbggutelLIW/h6LlgIIAuqADJzDfxeK30QjL
         6c4G5A4tdORga3B6XNBN4k6nhAqNKF2UuD9/LOMDw3KLoGwmlQsyXPi3Wd0CvIv6Udwd
         xPE9hgDNzvW/pEvAQXyvIEAPH1ywu6+04biKQ2VzbMsNw2gCRzEBr/bNoim0PrzpcWBl
         k5WE2VQy20YC8OwuIUC7VS7cNVgbjYUOgh693/3LQX3q/BD8SThfWX1lKIjTmP02LM25
         iAQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=I3I4UP/rsbgQzio0Ay36Au/JGMMagj9UL3U8u3IwG3g=;
        b=OubwBpGaH801OUhFQUCjZdU9pxhMFKYRpEBEez2XuSzMkgDutXq+gVQjm1HRcgBxlO
         rlI2cz8gCoDuiQadce1IhjI+zP+cGftMrg3V5xkqTSdRJgOn+k7dJUzhkhy6/Kr753Rw
         Owqvmh3z+4dzL6zhImr3s7MtH0C9a0hoSu9cdv06PvgAvRZ8wX23Y4VqRiUnrpzfgOUd
         PNLAam9UIQ78myqLc68q1mo2vYHUdct9Yi7CvB4BAFT7gzZQfLowecgt1jNtKQfIY5Tk
         +RBBADhS08GUOPZYgw9/aHUuRsXSVzsRv7fFmTCH3S4gd9tE7skmv7U/RuEODkYrcDfw
         /jtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z8vgyNxN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I3I4UP/rsbgQzio0Ay36Au/JGMMagj9UL3U8u3IwG3g=;
        b=qshKIG5pAzJuVzh6n4TuR8aklCZlN3uqW4qhfwJjmbHdnhrSx11Gpn5165zXeFqMr/
         0o4HVriH876bb5kFhAW6/NJwxBmC/V1Kdq723thwdB1jZDXyTKb3vKu8oXjJuzQdqOei
         STKYzHGkcvjN3lK2BIW3M16DNJIbkcxLl+Dvy6X1GgN7fm2vmZM/0IcXGuC9UTBMqUGd
         9iwG2OvjygDxXTBdBlNfj4TqgIJegnRYBf75ltd4XptF/7XePgl2/5NQWbhfL9eeNF8/
         ffWia/5+rRdpiBf20iz4aBHs5eTP443WP73fsvCJOJD9L2TaVmjPs8Hvh6reUhsuIM+T
         z5vw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I3I4UP/rsbgQzio0Ay36Au/JGMMagj9UL3U8u3IwG3g=;
        b=FXFVmKSy9+jWG6GpuJPZXCBo5DRJarF0yRmyrrHHnPPvAFno7zR+gjstJ5CGNX9kHg
         RFdjmMWu4YnIPm5XeK96O8P7Yu45JTOVxV1LenOP1JQPT6y+adto9qhhVUg2mWEjta0e
         JA7tcAd+S06qaD68qStwOpqycXICUcvrJmCBnY/vkXKNAgFX1iHmfPcY355GFpd5e9sK
         Rg7AML5mOEOCYJrRleIqAnX8bwhQ8E81IE8lq9rZsYuYzZX/2Bf5+D1CqMoNYdk7gt5b
         IdQGz1uxaaVCZLKvI4xeJqGx28m5AJwtKYLxHw6B53BjS7ItroLexywC/I8OoR9SGMyq
         CLmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I3I4UP/rsbgQzio0Ay36Au/JGMMagj9UL3U8u3IwG3g=;
        b=JVZ2f36Ov5PxspTKeGQCwK8Z2AqktI6Ido+062HNlu8/4E/hHU4tuy24qWrvHeJYVo
         LdfXkT+tKZKYr3kVMK2voGG9II1PWTGN61jsrFpVF3w5EKVQKxw69dFGYO3D0oQpNj4h
         C2WahddzFeeeRhuRYl4NlwAEHDX4wV4+CQXajruTchtN9yLxSKBXXB44eCF68MyfM1La
         Guqgeqy8/mgeRr1I/zxNoYylxigDSynELLu20BDJTIRM5IdREvayi1HOrdaU7ubWSHZD
         bfihE3hlLtaKADBPjlrX1MGVUpJi15exrXr5zpKZyECYEFfNC0iJ3qENtI2+Pwd4t3+a
         YqxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU5Ra8XFywx6JvO9P3uBNVJVJFWWFtRfcUp+Rd809JoZrI5p+g1
	A6wBVF6img/oZ1RiTDwFg4c=
X-Google-Smtp-Source: APXvYqxig1i4X4Nk/OzLnvfJfhZfFX/BYzdPPmzoeLicAo//teHl7JzRU+rx7ZCmt813zz24T/aVXA==
X-Received: by 2002:a2e:720c:: with SMTP id n12mr36279ljc.53.1565756671684;
        Tue, 13 Aug 2019 21:24:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c317:: with SMTP id t23ls74539lff.16.gmail; Tue, 13 Aug
 2019 21:24:31 -0700 (PDT)
X-Received: by 2002:ac2:550c:: with SMTP id j12mr19816713lfk.171.1565756671191;
        Tue, 13 Aug 2019 21:24:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565756671; cv=none;
        d=google.com; s=arc-20160816;
        b=QC7HoKKm4hJdv7NjqHtRtEpWXzA7XnVxmRuV759onQ8509bOglQ9DqIXkWgMH0LtD8
         xN+ObRTfIqgYC/eSejpdIgpUOAZ6vwoniaXDhVLmr/AXfxVjGFdRsLmT6utfH+uWYAVF
         OBMCalzi+m7ehORpqqyTJgvvKVUwI8L7JpUSpfo17FqzmpzBLGqaVyYbyclIjgMRZUtP
         Zui28ei/f436ETelPh3zOBg9M8FUl7/yszgkxgzZNAEPX6LjzKZK54JN0o0y5/s1WK3w
         YpEL+ntqq1dHWhD2Cjzj+M+4prdZjf+GjH/ci1P4fANF9L/xZTRG/boUCVIp2uSuQvAp
         9GZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=y97MxFgoBqjees+drSVKeA6Szdi0VlvTHwvx0CSVO1o=;
        b=l3r1/gPI8qK9vTOtuxX8vVHi6YIuoHxIZUksmK4e5MiLsoxwer844j6DEqebqa8+d0
         jNx4rpGP9r2YJKwqiuRqbFs+q6i2Nxh8xRppM9x8RF98hBirnEHjkyKgCULVy6VWMtMV
         6gIhs5/GDwjcC7TQ9PuR7MBwJ/f75Hw+20IexqZ8ztXa8dV431MckbKi32HO8ryWQDxd
         oNjaiNfNTrcoNdxel0LgBEeZ0kZq2f8yyMZWUUXTgDORfqO+OSjeLPU5O42krLztaVTR
         key1Sfxp8tWmLLQzd/TanWIp0c0pYD1YFTYQbwNbK7KRUrKdSH07tGUm43xKLFYCp/MZ
         PgUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z8vgyNxN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t23si1551587lfk.2.2019.08.13.21.24.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 21:24:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id p17so109718989wrf.11
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 21:24:31 -0700 (PDT)
X-Received: by 2002:adf:f206:: with SMTP id p6mr51871123wro.216.1565756670312;
        Tue, 13 Aug 2019 21:24:30 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id j2sm2741135wmh.43.2019.08.13.21.24.29
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 13 Aug 2019 21:24:29 -0700 (PDT)
Date: Tue, 13 Aug 2019 21:24:28 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Sanyog Kale <sanyog.r.kale@intel.com>,
	clang-built-linux@googlegroups.com, alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org
Subject: Re: [alsa-devel] [PATCH] soundwire: Don't build sound.o without
 CONFIG_ACPI
Message-ID: <20190814042428.GA125416@archlinux-threadripper>
References: <20190813061014.45015-1-natechancellor@gmail.com>
 <445d16e1-6b00-6797-82df-42a49a5e79e3@linux.intel.com>
 <20190814035947.GS12733@vkoul-mobl.Dlink>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190814035947.GS12733@vkoul-mobl.Dlink>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z8vgyNxN;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Aug 14, 2019 at 09:29:47AM +0530, Vinod Koul wrote:
> On 13-08-19, 09:22, Pierre-Louis Bossart wrote:
> > On 8/13/19 1:10 AM, Nathan Chancellor wrote:
> > > clang warns when CONFIG_ACPI is unset:
> > > 
> > > ../drivers/soundwire/slave.c:16:12: warning: unused function
> > > 'sdw_slave_add' [-Wunused-function]
> > > static int sdw_slave_add(struct sdw_bus *bus,
> > >             ^
> > > 1 warning generated.
> > > 
> > > Before commit 8676b3ca4673 ("soundwire: fix regmap dependencies and
> > > align with other serial links"), this code would only be compiled when
> > > ACPI was set because it was only selected by SOUNDWIRE_INTEL, which
> > > depends on ACPI.
> > > 
> > > Now, this code can be compiled without CONFIG_ACPI, which causes the
> > > above warning. The IS_ENABLED(CONFIG_ACPI) guard could be moved to avoid
> > > compiling the function; however, slave.c only contains three functions,
> > > two of which are static. Only compile slave.o when CONFIG_ACPI is set,
> > > where it will actually be used. bus.h contains a stub for
> > > sdw_acpi_find_slaves so there will be no issues with an undefined
> > > function.
> > > 
> > > This has been build tested with CONFIG_ACPI set and unset in combination
> > > with CONFIG_SOUNDWIRE unset, built in, and a module.
> > 
> > Thanks for the patch. Do you have a .config you can share offline so that we
> > add it to our tests?
> > 
> > > 
> > > Fixes: 8676b3ca4673 ("soundwire: fix regmap dependencies and align with other serial links")
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/637
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > ---
> > >   drivers/soundwire/Makefile | 6 +++++-
> > >   drivers/soundwire/slave.c  | 3 ---
> > >   2 files changed, 5 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/soundwire/Makefile b/drivers/soundwire/Makefile
> > > index 45b7e5001653..226090902716 100644
> > > --- a/drivers/soundwire/Makefile
> > > +++ b/drivers/soundwire/Makefile
> > > @@ -4,9 +4,13 @@
> > >   #
> > >   #Bus Objs
> > > -soundwire-bus-objs := bus_type.o bus.o slave.o mipi_disco.o stream.o
> > > +soundwire-bus-objs := bus_type.o bus.o mipi_disco.o stream.o
> > >   obj-$(CONFIG_SOUNDWIRE) += soundwire-bus.o
> > > +ifdef CONFIG_ACPI
> > > +soundwire-bus-objs += slave.o
> > > +endif
> > 
> > I am fine with the change, but we might as well rename the file acpi_slave.c
> > then?
> 
> Srini's change add support for DT for the same file, so It does not make
> sense to rename. Yes this patch tries to fix a warn which is there due
> to DT being not supported but with Srini's patches this warn should go
> away as sdw_slave_add() will be invoked by the DT counterpart
> 
> Sorry Nathan, we would have to live with the warn for few more days till
> I apply Srini's changes. So I am not taking this (or v2) patch
> 

That is fine as I can apply this locally. Could you point me to these
patches so that I can take a look at them?

Thanks for the reply!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190814042428.GA125416%40archlinux-threadripper.
