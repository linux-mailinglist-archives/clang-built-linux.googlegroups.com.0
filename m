Return-Path: <clang-built-linux+bncBDPZFQ463EFRB2FBZXWQKGQE3TG7SQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id C913AE549A
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 21:45:44 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id 6sf1626369wmj.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 12:45:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572032744; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ur839ksX9ZaQgmkPNJuFk+Nco1yb2c77r+O88ED5VlY55oKWPXtSE1gXT2I5UpnNN4
         LhtZKcxMbq7zneuuocZ/npO21ZAIAxFkgCjxvZm03SqfvcbDU5L6jWaiSYDMAaVO0Xq3
         cYNXwEVw3ORIbRwCXTUkgM/k0Dmdn/TDdgbAxjWHgJw5km7oSbKB2fJlIiUq6L/olv3B
         d+yNPLIPiYe1lOQhgbHSGdzGfZCmYYus2oBmV+OGAzg97V3L4TYARcqgnuKhPdp7Ts+1
         3QJHeT1wOX4g1DcwjQvNglAgavhdOjPsYoscBM1rdlMo8a7nsnKt5vna1HP/x+6sm8os
         lQpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=5l37VHK4tkg4sGISzmWMr+34N/27nOMVW/D1IBPsIcE=;
        b=qpUKNETgPXfzHxlHrbEpuWrQPVvSXUW8dO2rUYnfMLDhRCqYwIbqBrbeQf5a0RgMER
         ZQWxU9qE5E71BFMf2/cJQ7vbpqHDk99EC51xX88Pd71m2kvhlaWgYb+xFy/79m9+1bV6
         GkCxsNtOYwOYms9TYpN45rd/X8a09b/ohuw8FIlFQfbTGRNRGkCFPY04fPn6OiGVlctR
         sELyhAv8Bf2LC9iCf+vCMZQllgcuwkr7A8thGREbgz2GIsiY3Kgx+Rwmz85FnUcLWCDA
         sXkpSjzgpOoMLC8jScmWssV/uQ+VXqw80KrO4hbDX9asXhh0hWV72r74IDg7lIH7FaMl
         zcrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tN3Udkn6;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5l37VHK4tkg4sGISzmWMr+34N/27nOMVW/D1IBPsIcE=;
        b=Lh69nOUmFppLuZ5WPgN2vNPTOTQDoJaJuFbTG/cf2wh2N6u4wwCkKq3vkH3cXiuHVc
         YblCTKOlmLBUQuJ7vVXQTQV7TOPEIwMuaoDEUfwja+dw1PH5x9CfzX13tVbuTxWPk7qP
         C9fhFhFqVZE2BgusOLcU9UjgzbKDYjpc4emg3YTnXqpT7C1nVgJK0bS3pYhmS3uRy4NE
         TMaBNv8I+fq9PFglpwjltTVvjIWPFQe5whW+/SbdmAMVhekBsHHAv62b/FUNAEHnTMf8
         Y5XoyZbiParWqzPtQIA5fmlxa7yNQP9LK4Bpr2IxoelOiF+Xv+rPdD+TUPOrDCYwCghm
         iC9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5l37VHK4tkg4sGISzmWMr+34N/27nOMVW/D1IBPsIcE=;
        b=gCHcDbUGPXNG30AC+gG6zQX49aZ2JzzrjiFMDzabLpVRd4H7QtNs9kl6/QLXuvovIn
         MBgAlZ/fv8grEpKdaDYdldmvByQg6eowSkq+kv9yMq6EOq+wNT6SWDAoJ6FD3RAuYfUQ
         aJbvFrzORdMs5zAObxVC4BYa6/FZKIn7Li5t2jZcBnRKy25APMzs6LAGP3S2/8Ee5HK1
         k5tm4GfI3RPjxyzX9voL7B7kn/cPwRqbzKalgTp/HvwinOKW+eb5XFY2aEpO1jrMMznb
         cz9swmXXa7NDIprlxCobiw5WDSSlZwueHNCLEc04GsKAW9XZit+kx57khdxCi5aqNtta
         wjnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5l37VHK4tkg4sGISzmWMr+34N/27nOMVW/D1IBPsIcE=;
        b=SA1YQcc296XvST0yMYu0GXW9Eac768EUbUfbR6UobSEVi7u0kBkR/WQ8sTMPY0Mm6C
         YqJGbv6YV1xaVJ5ZbG4rB1PxJzslAJm3HSdw1EARyJY3J9igtf3MGrRH+stWs3/IM6pH
         zN8fhV9HoCT9DtVAqO13j0R4uuFK99YuLx/AFOYC/WCmqoKmsJ1TfTJC3kLpL2o0jHlw
         2dWjdjbRvV1XHvrNvXb6l0DkgQUFUIldu4osQk/vlA3CCHNnlQTgcTNdtxMiNaiLdv9w
         Af+4c29tF5dElPMC1EhE/5hd6uwH1vQpvInVR6TkDw5g8iOam+3zkyfkVgTJ301gQlcV
         VPdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVjMLM9+7nwQ1Ke4kOF/7JtTZt6akWoYNoGSis5RhZwVXPvVX30
	UD6vwnI69jRKNekW1yaIpAk=
X-Google-Smtp-Source: APXvYqz7iH5UpHk20xe7P3c7XS4USGa82p9ghjQZaZ0jQ75PXxON0WYnm3oZblebfoqjT/tjPZMX2Q==
X-Received: by 2002:a7b:ce84:: with SMTP id q4mr4674266wmj.36.1572032744481;
        Fri, 25 Oct 2019 12:45:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:efce:: with SMTP id i14ls6700269wrp.10.gmail; Fri, 25
 Oct 2019 12:45:44 -0700 (PDT)
X-Received: by 2002:adf:8011:: with SMTP id 17mr4642468wrk.367.1572032744021;
        Fri, 25 Oct 2019 12:45:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572032744; cv=none;
        d=google.com; s=arc-20160816;
        b=U1kA3Ik6ib1joEPBJU5oqnGgtKc/QhL71MPab5qo3NA43B9cwtq6MGJOb6nGzFcFHu
         Z8WbKbalkZ1kLD1jbdVnGF9m4Vl9S5GOWOz/L45R6ZVDq07W32JyLE/y0RPtTDdyYrgy
         y1Nq8E/126dRs9ahTc7wRkgnPRx6jDaky+RM/FOlKYnR/M4tLKdXrx1xIQRxw4Se9dZy
         uEIf7Xk5Wzf7KNLXo5le1fnjqLLICswTqgs9p/auszPJZo1elX5HGXhflYgrXZ9uDUCY
         mRA5Tv+xiW9ytccuCTq6VphQcmQztNLS/SzQBSaxwnekqv8W9eprLgd1lbzdupVXa90Y
         O6gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=neabhCzzi0dq4nLNqnclhYb/Pn2frsP1v9KepipEQQk=;
        b=daVnrSkcZMdZnaBrkB3223NmSXy1aLGsVY3OOK0lGfuI9u234HRUBuwb7Zb+Ev5eLu
         ZuilBqLvwEr58AIEe3OCxziHTxWhihjkXnP6TOAcZzsN9tLe0K8cYYE9Do5s9vpl5nZU
         4hOzLHICDrPRT10eRjKUCFrBk3jvArRVlmdfps9zUqW2XftxT4Ygedy8UUXBj0hYOZvE
         +8SkXSO/wXVOsPhjHHzx6cEBhVih4SJDg/fH+BF0fJ3rIJFJydTO1raXewb2g35Do9MG
         P8t5iOYjgpcnF/rgyVzIFyrkasSmg5rDvF31cYaFsp+K1xhsgN1ymB9nFVW2s1druOz8
         BOYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tN3Udkn6;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id c12si167257wrn.2.2019.10.25.12.45.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2019 12:45:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id a11so3639624wra.6
        for <clang-built-linux@googlegroups.com>; Fri, 25 Oct 2019 12:45:44 -0700 (PDT)
X-Received: by 2002:a5d:6ac3:: with SMTP id u3mr4688572wrw.206.1572032743513;
 Fri, 25 Oct 2019 12:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <20191016230209.39663-1-ndesaulniers@google.com> <CAKwvOdkDCeNCg7N0jyjo9oQmVX6seOXjSv06DvQDCDz_7qSo=Q@mail.gmail.com>
In-Reply-To: <CAKwvOdkDCeNCg7N0jyjo9oQmVX6seOXjSv06DvQDCDz_7qSo=Q@mail.gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Fri, 25 Oct 2019 15:45:32 -0400
Message-ID: <CADnq5_PbUQV5vvgN6yQuiQVpG0Ssk6r_G9tJEhT8XWKf-fOuFQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] drm/amdgpu: fix stack alignment ABI mismatch
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Harry Wentland <harry.wentland@amd.com>, 
	"Deucher, Alexander" <alexander.deucher@amd.com>, yshuiv7@gmail.com, 
	"S, Shirish" <shirish.s@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, andrew.cooper3@citrix.com, 
	LKML <linux-kernel@vger.kernel.org>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Matthias Kaehlcke <mka@google.com>, "Koenig, Christian" <christian.koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tN3Udkn6;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Oct 25, 2019 at 4:12 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, Oct 16, 2019 at 4:02 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > The x86 kernel is compiled with an 8B stack alignment via
> > `-mpreferred-stack-boundary=3` for GCC since 3.6-rc1 via
> > commit d9b0cde91c60 ("x86-64, gcc: Use -mpreferred-stack-boundary=3 if supported")
> > or `-mstack-alignment=8` for Clang. Parts of the AMDGPU driver are
> > compiled with 16B stack alignment.
> >
> > Generally, the stack alignment is part of the ABI. Linking together two
> > different translation units with differing stack alignment is dangerous,
> > particularly when the translation unit with the smaller stack alignment
> > makes calls into the translation unit with the larger stack alignment.
> > While 8B aligned stacks are sometimes also 16B aligned, they are not
> > always.
> >
> > Multiple users have reported General Protection Faults (GPF) when using
> > the AMDGPU driver compiled with Clang. Clang is placing objects in stack
> > slots assuming the stack is 16B aligned, and selecting instructions that
> > require 16B aligned memory operands.
> >
> > At runtime, syscall handlers with 8B aligned stack call into code that
> > assumes 16B stack alignment.  When the stack is a multiple of 8B but not
> > 16B, these instructions result in a GPF.
> >
> > Remove the code that added compatibility between the differing compiler
> > flags, as it will result in runtime GPFs when built with Clang.
> >
> > The series is broken into 3 patches, the first is an important fix for
> > Clang for ChromeOS. The rest are attempted cleanups for GCC, but require
> > additional boot testing. The first patch is critical, the rest are nice
> > to have. I've compile tested the series with ToT Clang, GCC 4.9, and GCC
> > 8.3 **but** I do not have hardware to test on, so I need folks with the
> > above compilers and relevant hardware to help test the series.
> >
> > The first patch is a functional change for Clang only. It does not
> > change anything for any version of GCC. Yuxuan boot tested a previous
> > incarnation on hardware, but I've changed it enough that I think it made
> > sense to drop the previous tested by tag.
>
> Thanks for testing the first patch Shirish. Are you or Yuxuan able to
> test the rest of the series with any combination of {clang|gcc < 7.1|
> gcc >= 7.1} on hardware and report your findings?
>
> >
> > The second patch is a functional change for GCC 7.1+ only. It does not
> > affect older versions of GCC or Clang (though if someone wanted to
> > double check with pre-GCC 7.1 it wouldn't hurt).  It should be boot
> > tested on GCC 7.1+ on the relevant hardware.
> >
> > The final patch is also a functional change for GCC 7.1+ only. It does
> > not affect older versions of GCC or Clang. It should be boot tested on
> > GCC 7.1+ on the relevant hardware. Theoretically, there may be an issue
> > with it, and it's ok to drop it. The series was intentional broken into
> > 3 in order to allow them to be incrementally tested and accepted. It's
> > ok to take earlier patches without the later patches.
> >
> > And finally, I do not condone linking object files of differing stack
> > alignments.  Idealistically, we'd mark the driver broken for pre-GCC
> > 7.1.  Pragmatically, "if it ain't broke, don't fix it."
>
> Harry, Alex,
> Thoughts on the series? Has AMD been able to stress test these more internally?
>

Was out of the office most of the week.  They look good to me.  I'll
pull them in today and see what happens.

Alex

> >
> > Nick Desaulniers (3):
> >   drm/amdgpu: fix stack alignment ABI mismatch for Clang
> >   drm/amdgpu: fix stack alignment ABI mismatch for GCC 7.1+
> >   drm/amdgpu: enable -msse2 for GCC 7.1+ users
> >
> >  drivers/gpu/drm/amd/display/dc/calcs/Makefile | 19 ++++++++++++-------
> >  drivers/gpu/drm/amd/display/dc/dcn20/Makefile | 19 ++++++++++++-------
> >  drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 19 ++++++++++++-------
> >  drivers/gpu/drm/amd/display/dc/dml/Makefile   | 19 ++++++++++++-------
> >  drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 19 ++++++++++++-------
> >  5 files changed, 60 insertions(+), 35 deletions(-)
> >
> > --
> > 2.23.0.700.g56cf767bdb-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_PbUQV5vvgN6yQuiQVpG0Ssk6r_G9tJEhT8XWKf-fOuFQ%40mail.gmail.com.
