Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB35QZP2QKGQESEZ4C5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id D01311C74EB
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 17:32:00 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id r14sf2923842ybk.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 08:32:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588779120; cv=pass;
        d=google.com; s=arc-20160816;
        b=tDFJ5bTluMi4MiMsOCu0iXzueQ065CIOPCC5ReO25dCAImiI0IpjY/4+Yvpkpvlbkw
         GCUHnmkeaBiLyHEm3r8VQdhhQSyx7bBIDGqjitygj+ZqcSIxHF4t8XlxKsL0y8UTmuKA
         9PC/FBAQXFEmjmnRtXeVxwYneT4JphFwdLEZiQaXO7xhd8B1l9lQrrmS3nGFgrU9sfmZ
         epuZQOm1/LWL2wE0B7WpHSKdJNx7rvlyP83+XWsTAcMh6zx5pclLFeXg7uJ72kgyVYRk
         hZjc7To7kdC8I7E9UqfzCr49+/nRmYsOqCzLl/WZF0lJyd0T9ueuu1Je1Rlgrgx1N5ka
         6VNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=7XKbnDwmD1n9zPWnHNQygKkZ+URF7Q5suyMihiAuZEs=;
        b=Yf8zeE89zjndl3qOwA+jAKr8/mzJkYKVas//5rF30u/oxdinmZzZC8QCooz/QoijYN
         Y2YgMTaWg4wC9K4iBA/O1XxNCS5xFcUg3uaRsynFMdJ+H2yYVTNq6ymWN5tHHHzAnuig
         GD5+X62DW42IQgMkgrZqzEPw9E/5zd0kJKwzuhbG8BVax3O2hfns/srymGsM8gZLf/G8
         O77ga2Ji5srr2trnJOk9ack8SD1WAbteHjX0b8HqfrApYZy3hMxAWZYmGyEWcvimrT1x
         /cfdwEqkvJemj6fgpu/2bvBc1vpiy4uGCcV4rcob7zc8uDNr7U+SEhLhuATIUpJyIOk6
         1zSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ft34+Tuj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7XKbnDwmD1n9zPWnHNQygKkZ+URF7Q5suyMihiAuZEs=;
        b=c+3Gcxa+lVXdzWGm5ghiuPBzRHe5l9oaj9r+DzTjt7IzWsQEJe/GMO/iMBpMxx5AQT
         Aw0+Chryfqxh0OYhh14T2H+E7nvwhm/J76uInCJGgddODS1Gm0Mtm9OgYvTKKDViVvpL
         xvIMePP4dp/Hy/AtVH83VGBqA2wdGqT8U4ekVBBvZCHOk7UmmTndaPi+zLiRU9HwMoJc
         FteiZ9Bh0Zfhom2/MVRoxEDV4ui0LaCnxA2g754RIc7Tm/T7hs5q9X+IbkPiadn4wGC6
         nTyD1k1ZP2jNpCFfThG+BX1tYuANLFQJCQVn3QrLJ/HULqB8ZUK4NCvTXUfNKOQ3fIha
         OGSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7XKbnDwmD1n9zPWnHNQygKkZ+URF7Q5suyMihiAuZEs=;
        b=OObByIjt9UxmUDG7VHeOIx+33bNAQuyWZUvqQSy3Bxqq9NZiqg/zRtZ5OsUnrhbAr5
         Yb8XdfM2V82JJcRJsFu4DEaBJ/I9GR//k4qAXNOlRh8p1To4C0ZqtQ3dLOOe/L2t4BVn
         f8kzYMGC1smw0av6L8RlhXmnOy0ABx50S8fyhwpS0QnA0sjj5U/b31xk+Jc7qYPusAXm
         +/TdWfM77IMuC2OPkRv3K8c3EiR7alDhVSiMAG3HfJ3LAxuXWQTYdFGs7TSYotGntZX8
         Zy2MdObvdZfAaTelNMSuz248LJxFhoQ6VYOOCL/r3r/9nVZ83faENpLjPTKAnBykF5hE
         lFWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7XKbnDwmD1n9zPWnHNQygKkZ+URF7Q5suyMihiAuZEs=;
        b=axIYJp4DHvKqJO5WqbC2XHhKWbut/cKh+BL9nXd6hu+AcQ4VS6iNpDJV5WyBNCVC98
         uoONfl1vkx9sorLJiB2IxpzfMltXNU4E4KwoMvxavsvur9fp/6coxhUgA5MuKWczkcuH
         n4DfqqszZRBHCnlGGjfoxQLkSOy4un5IS7fREbxFkKd7SI3xcuw/sLFyt3/et34VB+Sv
         +vOHj6rCU2o7RFFFHWJWjGxrUjgWV2sCtFLIp+06BvRGtTrPpsOCP2RIYMvYV/U+BAoO
         bfuEMciJOUghEE4eg+akUDyRVrOjdv+972xrFQzqi7BHFUcp9mW6tIpClJu/2adoMC3r
         50/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYHuTSc6CWZf3gO5R1dAtNZPvA36ti2cxv+n7kfODAXVSi1ufls
	YeLV+0uh+9RIUfH5TYgSxeI=
X-Google-Smtp-Source: APiQypKFVAES2yunJbhHoEH/z/zRYYzuy1Z6RsUJ24ewNQxJeV0QIN/DCBusJ9b5JbZ79OJW/cAWjw==
X-Received: by 2002:a25:3b08:: with SMTP id i8mr14876159yba.402.1588779119823;
        Wed, 06 May 2020 08:31:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ae63:: with SMTP id g35ls302381ybe.1.gmail; Wed, 06 May
 2020 08:31:59 -0700 (PDT)
X-Received: by 2002:a25:4443:: with SMTP id r64mr13778619yba.41.1588779119452;
        Wed, 06 May 2020 08:31:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588779119; cv=none;
        d=google.com; s=arc-20160816;
        b=cDvmfJn+kyStp8T8jW/nXMOzK8kBUgI/PphNyV/S/kOB6mrZM5/z1a99f0dhzM2c5y
         x6hylg7RDzNY7S/NbiyZC7JBK0aZAmfdjID7j406bS3urb4U4toxXQIZJe2tBm8uB0Ku
         a2b5gjEICioD9Qb5ILWrd93SH3T68YikkBrRwWzVKs+TeXZd4d7pWltO4d8+ap0ej2EN
         EqYhcOJCxNya4dZE/WKkKZTr+aLVwVjCUOIyobOwF7AHobwy32Kxbud/YMrID4fb7GwF
         PdT9Qe+77+ONAv4IbQtM4mjXIDk06DybLlwcgK0glA5Jj2MG5pcfFg+QTu2F83j48fLA
         ViMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HGob2W+jtJ1wxr5TyUwXRK5f3ACyssA5mwEkdojnzSc=;
        b=YCiwXXczXkXeuApHA+6rRiYE+K9mJZHvbanlF5zVsljk/OQS+GbUauMqwvi+BXryGS
         ggC1cdkyMB1XhkDnXBb1f2wvQE2idAZ8HiT4aVu7CEEL88ZnKWgT2CWsQm3Xwvwtpd8D
         EC7awpIlTkIjrz7QCABZxSGuAXcDEFm/U9+TqEaxRGLaDB3dHKijUtOza155c8fEbiXA
         KZGQufCs+FsTuMuNsvSPsKZySoyYASksFzKAxTj4JitGPLTegO/toWnhfvYeSoxSouWS
         O+iDAA/mY3mQJyx4KZGXvViGmJ1kjxjLUpVQKy3B8YTuyqLhRV3PAlbclWmHUeviI/z9
         7dcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ft34+Tuj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id h14si173863ybq.0.2020.05.06.08.31.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 08:31:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id g19so1685658otk.5
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 08:31:59 -0700 (PDT)
X-Received: by 2002:a05:6830:1d9c:: with SMTP id y28mr7465935oti.280.1588779118864;
        Wed, 06 May 2020 08:31:58 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m189sm600819oig.12.2020.05.06.08.31.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 08:31:58 -0700 (PDT)
Date: Wed, 6 May 2020 08:31:56 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Torsten Duwe <duwe@lst.de>, Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Torsten Duwe <duwe@suse.de>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Julien Thierry <jthierry@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Steve Capper <steve.capper@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>
Subject: Re: [PATCH] arm64: disable patchable function entry on big-endian
 clang builds
Message-ID: <20200506153156.GA1213645@ubuntu-s3-xlarge-x86>
References: <20200505141257.707945-1-arnd@arndb.de>
 <20200505142556.GF82823@C02TD0UTHF1T.local>
 <20200505194243.5bfc6ec6@blackhole>
 <20200506034523.GA564255@ubuntu-s3-xlarge-x86>
 <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a24EiEvGAenL0FdgGakmwWi=giReOJuiisnzkgC_SuhZg@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ft34+Tuj;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, May 06, 2020 at 12:22:58PM +0200, Arnd Bergmann wrote:
> On Wed, May 6, 2020 at 5:45 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > On Tue, May 05, 2020 at 07:42:43PM +0200, Torsten Duwe wrote:
> > > On Tue, 5 May 2020 15:25:56 +0100 Mark Rutland <mark.rutland@arm.com> wrote:
> > > > On Tue, May 05, 2020 at 04:12:36PM +0200, Arnd Bergmann wrote:
> > > > This practically rules out a BE distro kernel with things like PAC,
> > > > which isn't ideal.
> >
> > To be fair, are there big endian AArch64 distros?
> >
> > https://wiki.debian.org/Arm64Port: "There is also a big-endian version
> > of the architecture/ABI: aarch64_be-linux-gnu but we're not supporting
> > that in Debian (so there is no corresponding Debian architecture name)
> > and hopefully will never have to. Nevertheless you might want to check
> > for this by way of completeness in upstream code."
> >
> > OpenSUSE and Fedora don't appear to have support for big endian.
> 
> I don't think any of the binary distros ship big endian ARM64. There are
> a couple of users that tend to build everything from source using Yocto
> or similar embedded distros, but as far as I can tell this is getting less
> common over time as applications get ported to be compatible with
> big-endian, or get phased out and replaced by code running on regular
> little-endian systems.
> 
> The users we see today are likely in telco, military or aerospace
> settings (While earth is mostly little-endian these days, space is
> definitely big-endian) that got ported from big-endian hardware, but
> often with a high degree of customization and long service life.

Ah yes, that makes sense, thanks for the information and background.
Helps orient myself for the future.

> My policy for Arm specific kernel code submissions is generally that
> it should be written so it can work on either big-endian or little-endian
> using the available abstractions (just like any architecture independent
> code), but I don't normally expect it to be tested on big endian.
> 
> There are some important examples of code that just doesn't work
> on big-endian because it's far too hard, e.g. the UEFI runtime services.
> That is also ok, if anyone really needs it, they can do the work.
> 
> > > I suggest to get a quote from clang folks first about their schedule and
> > > regarded importance of patchable-function-entries on BE, and leave it as
> > > is: broken on certain clang configurations. It's not the kernel's fault.
> >
> > We can file an upstream PR (https://bugs.llvm.org) to talk about this
> > (although I've CC'd Fangrui) but you would rather the kernel fail to
> > work properly than prevent the user from being able to select that
> > option? Why even have the "select" or "depends on" keyword then?
> 
> I definitely want all randconfig kernels to build without warnings,
> and I agree with you that making it just fail at build time is not
> a good solution.
> 
> > That said, I do think we should hold off on this patch until we hear
> > from the LLVM developers.
> 
> +1
> 
>       Arnd

Glad we are on the same page.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506153156.GA1213645%40ubuntu-s3-xlarge-x86.
