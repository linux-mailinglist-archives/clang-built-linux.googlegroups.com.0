Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBG4E3OFQMGQE5WT43FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 148BD4398D9
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Oct 2021 16:41:33 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id w13-20020a62dd0d000000b0047bce3ae63bsf3783486pff.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Oct 2021 07:41:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1635172891; cv=pass;
        d=google.com; s=arc-20160816;
        b=L2KK1A7ckhOSkFgQZLPvZ7PpkxACMBkJvd8Jxi5MuRUdHzWonnz+YQIrAwux5m29Le
         OVBQtzOOTUvDEkWEbh2w1GxxFpAg1gDv7uQPOBPbdaL0Hon+gatO08ZwA7GKHVkkZdoH
         Agol9/N5HRuW0dgJ6GgF1MMwPxisPvf5TzV3kcZe4TdIurryBCAZtDvP02WERni2+cMV
         r+Lw/83Xf8zoKU8jau/xzuUIFm7ZipZYOnoSHxFqp3X0EIrep94oF+Xk1zUVOusZatpx
         CJvgrxciVb87YUWxv3sD5gsth5lw/ebUSxEWOmogYPimRiwZvgu7V3Q+uLtdMzgUa1ib
         0BVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ahv0/KrJbgHl37JOnKLlPgVgdmmdMISnbz+X9phSRlY=;
        b=pKpyXY0qxw/WvSPjADxl7xBqUqa1gVKnNK22i+9u96lPYM+O5bzbiu6A4hEf+JHWqI
         /ndsWwuTbXSjnmfC6nd4+s20/dU+FvzLKYOm8ba/G0esg58bhmCC+InzUjDmWZVimy5n
         B7WTFceSY2xzFQGQd12Iyi/I8V2Maf/ln9cPT+eB3rC4J8qWqzTbNdyYxyMQeiH78vIc
         AU5pWpqwZuuk9RoeVi4mKdJP5s5+wIFbX+S/1zmJVrmnGIzXljdGrAnD1YHJ2WIbz6jz
         lHQdruJGkk5AQYAno41c6t7GnHCETPlh9x8nXlZ1ifyFM8zzkVsv+C6R5xRCkFwHiyzt
         LoZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i6sta3S+;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ahv0/KrJbgHl37JOnKLlPgVgdmmdMISnbz+X9phSRlY=;
        b=NorEAbzEWgppeZnjIN24j15wnShG5Ij2N7cSwQWEbA8ekR12GEIGyCKdJ3JEuIYeO4
         8rdDrSEW+H3m3IvILqalJsKym5kze6PuxPg9Mi2CF5C26mCyAzUCsbiGpeRmeYCQDsCD
         hTjQwmY+/SE4xJTGPXfshf0ESdZeNjkzuzqDBUXNw0mlaiOoz6kNgW93eimF9TUlVlV1
         KaBkWR01VKAoXXGLq/pP8YYhyY8McpjwGFaKqAfUc7M7Uut7NRp2XKgL0KF3TnDcrTUJ
         5NDbZil+6lV0UOR8AEyaLqhtYALAbUkVayHYH8KK1ktltzpwpZg3JDhDFZxr8o+Lqp3J
         rv6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ahv0/KrJbgHl37JOnKLlPgVgdmmdMISnbz+X9phSRlY=;
        b=enhC4w3g44lO1X/VOaMcx6JIOpBzhsd4zqtpHjQBu0BRqhp7b0T/Iw5/+fYUzc7m0K
         1x5eIsmyVsEBiWsmcS7UmX+PesExU7G3VsR4jg/J2hLPUgMMiOp4yyVK1DGfy7QawPbs
         c7W2NbDAgvWxl7MRYLvaqYIT/B1854mobfxlFT5dwajUZ1oO9bLW2esAjEDqKL058z5s
         EiJl0TtzMo1p8DjnYEh8oHPx2+Bz5VVutCJb7kcpKBeAoqx/tH4kkBsL1n92gpSKq4aj
         848Qxy44n/UvLmDavuM+6r2snhA8xDN+ykIa2/x8lorrid7wAMskL70n101jaYTJHYIN
         ps1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eVLjoYXEOnMxL5d7GWObit4JAPKG9oBjMJdS7J24SYwkb/roQ
	iRAozkv3BW6b6bYyc9b3lY0=
X-Google-Smtp-Source: ABdhPJx1nDwxDh2RgNCHyUkrUb5QRsyvS9SJ8Sh+zD2kNUMRMnWArQXjPkUxDkO4XgDVcxel0yh42w==
X-Received: by 2002:a17:902:768b:b0:140:25e1:9914 with SMTP id m11-20020a170902768b00b0014025e19914mr17064463pll.1.1635172891418;
        Mon, 25 Oct 2021 07:41:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ce81:: with SMTP id f1ls2539729plg.1.gmail; Mon, 25
 Oct 2021 07:41:30 -0700 (PDT)
X-Received: by 2002:a17:90b:1a87:: with SMTP id ng7mr36602235pjb.69.1635172890756;
        Mon, 25 Oct 2021 07:41:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635172890; cv=none;
        d=google.com; s=arc-20160816;
        b=oewy1IZ/M2y5PdjbM6J94BmTZsmwLO6e0gyUNki8Ea5lB3lrpyju5dYsRmAymdD7dg
         15d1AVFjSLZ3RIweGs0IU9vS14cd6aH4cCf5UE/RByPQESgLKJtgUPZJx63TCoZ7Zgb3
         l47zKybbsWtza96ur1rvwXKL2O9xEvV9KYbTzrOQo7bbVAmbO1k4+w3JL/QSLGmxvWNQ
         z/3AG2vzwzZI8vyEwGaMiPRrCRmMLi2XhoeMg0AVxJj0W3CBmAAgKTN/cKJjixr7RkWl
         78qN4keVXjPj7e3m3O3m3DwJ70HRUgFyZLovCDn4eCzwnJNgDWJ83/F3/QSS18jUORqD
         9pgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nK4xkywKpSk90PIBg5k5X+Lqy3EJ9Q4Zt1Mfs98ORtc=;
        b=lYg6jkxjoJq1ZVgsJhhwdOpJWxWXOIXa7G23CwowYsnEVudDshv8H2sv3j4FQYimpd
         4nPHOPaJBGTqcR5nFp235BT4F6CiL+MKMsHQEGL73ZEk2lj1G22y9PuMzIlxDxkJDH4O
         04/IWMAiTnZaXKkgWgSFF68eTq3jpK5l+KHj+MDBeiHvqJA8GAmgESra7yTVuNmzHmOF
         k1BPWwspR6ZkisXErLuqH7BgIyJvRdY2/h2yXmcJMFWZGH+1YDnY3GbtcUHnaH6P4JLZ
         FSKCKr6ThGVWkmCatPtkowcF8KG0PVOnvKRGqK4vP8XbohqGoEYnfbCXgXDFFaeQacvx
         gdlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=i6sta3S+;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mh15si2105276pjb.0.2021.10.25.07.41.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Oct 2021 07:41:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C558660E0B;
	Mon, 25 Oct 2021 14:41:28 +0000 (UTC)
Date: Mon, 25 Oct 2021 07:41:25 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-stable <stable@vger.kernel.org>, llvm@lists.linux.dev,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnaldo Carvalho de Melo <acme@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>
Subject: Re: i386: tinyconfig: perf_event.h:838:21: error: invalid output
 size for constraint '=q'
Message-ID: <YXbCFdz4R7cikpnE@archlinux-ax161>
References: <CA+G9fYuhRwQhByNkWQ4OLP7y5vBTGoWdW4KrJSzJizVsDzWQSA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYuhRwQhByNkWQ4OLP7y5vBTGoWdW4KrJSzJizVsDzWQSA@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=i6sta3S+;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Naresh,

On Sun, Oct 24, 2021 at 08:05:01AM +0530, Naresh Kamboju wrote:
> Following i386 tinyconfig  clang-13 and clang-nightly failed on
> stable-rc queue/5.4.
> 
> Fail (119 errors) with status message
> 'failure while building tuxmake target(s): default': ea3681525113
>  ("net: enetc: fix ethtool counter name for PM0_TERR")
>  i386 (tinyconfig) with clang-nightly
> @ https://builds.tuxbuild.com/1zvtvNS4eyYkOMiXtFgR7n1k0Yc/
> 
> 
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=i386
> CROSS_COMPILE=i686-linux-gnu- HOSTCC=clang CC=clang
> In file included from /builds/linux/arch/x86/events/amd/core.c:12:
> /builds/linux/arch/x86/events/amd/../perf_event.h:838:21: error:
> invalid output size for constraint '=q'
>         u64 disable_mask = __this_cpu_read(cpu_hw_events.perf_ctr_virt_mask);
> 
> build link,
> https://builds.tuxbuild.com/1zvtvNS4eyYkOMiXtFgR7n1k0Yc/
> 
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

I am surprised this is being reported as a new issue for 5.4, as it
should have always had this error [1]. We did not fix this until 5.9
[2], meaning that 5.10 and beyond is fine. The series that did fix it
was rather long so I am not sure it is suitable for stable. My
recommendation is to disable i386 testing for 5.4 and earlier with
clang.

[1]: https://github.com/ClangBuiltLinux/linux/issues/194
[2]: https://git.kernel.org/linus/ba77c568f3160657a5f7905289c07d18c2dfde78

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YXbCFdz4R7cikpnE%40archlinux-ax161.
