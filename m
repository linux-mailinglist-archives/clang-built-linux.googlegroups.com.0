Return-Path: <clang-built-linux+bncBDYJPJO25UGBB66BZDWQKGQEEP6RFWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BCB9AE3ECF
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:09:00 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id e14sf81301iot.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:09:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571954939; cv=pass;
        d=google.com; s=arc-20160816;
        b=yukVOqswRm4nQPI6ubS0xu49kE1HxcM5Y1GPlPgbtZ5goxpgQabYrAhgpa/TTNmdfI
         26u5vaaFVX9uoqWCAjRGISx9liQRw+i+BqlxRLuDI/XAokzxUVDrGfUbFvtLv/5Dumkp
         cMszvavBAAqNNucLAIzuVdOpaUXiQzFacwlU6RCDDahy5Wbx+XG6p1JPfZZc111HBLJG
         +7xsfytjOC6TdEeyeoq6Sno+/iPLxREQRmI8FvqicF6KGUO8HO/bjYwc3ce4yc+ihQkB
         1TWvXkvbOlTXGEOpvHUNnP3a+tCzi+YTOKhEv8nqKgkyiQ0DQi8RjRIH/MpfpSAsvgOz
         jHRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ixPfeVXTDVvqpybauEe3DkoFlyGoWiMqtfF6msQNUFc=;
        b=wIvq0L5UbG0kziGo6CufWqYplgzcBhiEFwUoWdoYJzOsYDRaH/AfbXSZdKnrbfA3N0
         n1Qdl80dA5wxNwS86+gDVd8mip/e/ZAtOl2vepL+wWaOPqnKnZ3G4npCjJRVc81JX8Bz
         cltdqD54KJVoOkR55LwZjt637ViZbiL11y47efhQV6hg6j767tveqBtdYttyjtbneCy9
         RT807cpyxqHXTzfdon74T0WGY3QuG3JMiyWZCRKvUECJbbXTwFc+CA6NXqmUEM9eIYuy
         gsvw2Un1R0izh6lavWZktpvjCkBeKw5iK9aIdcvZozJY+50du0S/Q+69SbUdzG4gFv2v
         VVfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hZV5ThvE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ixPfeVXTDVvqpybauEe3DkoFlyGoWiMqtfF6msQNUFc=;
        b=PppTE1HxXuTLz66sdu5MLPoRAT8R8vcgL6bnSuiCAA8iqFliUafA5sgRBF6tfECdt0
         RemNxEIeoyQnqUIe0rBPfQ29EvYcZ+Z8Jlj1PEj7I2nq6fxEDKofWFFUfQ3wnAAEbAlt
         ypAY058VlCSPUwF4fHlOeluJi+1NhSvJKvAPB83M1rEfbWXuaQNQZ80WP3xmLpFPHB72
         LU4j30i3q3MuAMWhFyAHAOf8nSwDButYZXOTd0vdjXpqHyo8A7OzPcv2FpSaqDUm/OzP
         au/epg/v0FK6AO6E1vPpm05vmKbCP0ymA7+PPdoWhxaoabIX5aa9k/VCtI/zsbwNnq4L
         v52A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ixPfeVXTDVvqpybauEe3DkoFlyGoWiMqtfF6msQNUFc=;
        b=OrivLNh/QqPJy7NizfIgBWC2VPidTPJd08dHGVmSUUhmnHXHJ2gXsbYMRv+mcDLzhd
         nhGFIwNx6DlA3PhdOSaiGQqaRkUcIuob+VrINbjuMAA6JctnwKnxnO2XRaaC7T6Iwizd
         nNOff9fia8dSuiz9MDcJTPi2iD1on1wGVZ4y0ML/svZnENr7lyoLs1u4yKgqas87DrIs
         Qzftv51gtR6a3xvOg1qo6JHT6H0MC4hpo4x1S+6jDLbHE4Dc49NL7v531MNqdnQCY1xf
         JYGLh/JVW3jwZETM2toAz0m8mIgTo5K7ulgptxrOhEUEd5c5K43CkXnzIHYvm4XgYcFN
         RKVA==
X-Gm-Message-State: APjAAAVf/P2tjHQDzH1J3lB950exxGL+MbfEWCkP3P+YfI0Z8j/bqSkT
	Y7HW0Fa7yYAj5cz3HQ0q7MA=
X-Google-Smtp-Source: APXvYqwWWBu5PGUJwuyeb/QvKmoFMjnn5YhW9EfRzS7eezv8RDep5yrxtUdyVkt1bL0B0aFLxcUDQw==
X-Received: by 2002:a02:b397:: with SMTP id p23mr579782jan.51.1571954939263;
        Thu, 24 Oct 2019 15:08:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7f8c:: with SMTP id r134ls399697jac.9.gmail; Thu, 24 Oct
 2019 15:08:59 -0700 (PDT)
X-Received: by 2002:a02:7f57:: with SMTP id r84mr593226jac.69.1571954938914;
        Thu, 24 Oct 2019 15:08:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571954938; cv=none;
        d=google.com; s=arc-20160816;
        b=L5AhAdBlRagzxrtv4zFBa8+6yJWO0KUeYUysrSQdvPkBklBzzmiH5EzVsgmlbmQh3Q
         YE2/NIYkCtRFDlYLOcJvPAFLACGEEM3kHmk/e3trufGaOcdrXwLH5vj82+RWFOo5PwVJ
         lqNFrGzS7AasqSNxw3ey7judsV66cyBXpkApOiIjkvMTyGshELCkoclDT41LoxejsNTa
         0Ls0KFSN83Xr0zhnHrwqgTmDx2jfl/asAgihWKY3VVZjdmKWGK8N6mbPw2zhyCnT5dgX
         wSXmgrjXt1LwYc7MevazS03WniXGRdsu7pYWSg6rI61ikB5GKlCSulz+Za6wxLqiMUg/
         WPGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7wPBWsyoRhhryb3J0bD0S+K3mPGWRQAeLMgGyEAh8NA=;
        b=mPeA5JHVk/mirP2jHo3OppMzsk75T9jLJ3aABchicOEnxZ4gccN51SEyIcPyepj9Jh
         G7CmkQTnWbM4ejxT5WR0VbhPfufDWz3RS9H3sDRuT3QBRL9PmyaTrQqXKm1x0nx4jgqX
         oQyor9tSoUIqbZ97ecWAe5SyEfDZVZuSakhybsu76Sx9yTS6LzWTBxJaSRbjoCgm7Vv6
         EtkIhU+7sdAzPCPfKl2UP+V/cuByKuyNqw5HWI/7L3K+m8gYHejr5JmhDuuzSiasAfpp
         GS80ch98LqyrCJVrosML4Uh/i9z4GbFY40JjZwIta+QNERT+wWYfpMP0SC52N+c8ELzm
         YGpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hZV5ThvE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id n6si5410iod.3.2019.10.24.15.08.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:08:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id s17so120303plp.6
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:08:58 -0700 (PDT)
X-Received: by 2002:a17:902:9b83:: with SMTP id y3mr40405plp.179.1571954937563;
 Thu, 24 Oct 2019 15:08:57 -0700 (PDT)
MIME-Version: 1.0
References: <20191016230209.39663-1-ndesaulniers@google.com>
In-Reply-To: <20191016230209.39663-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 24 Oct 2019 15:08:44 -0700
Message-ID: <CAKwvOdkDCeNCg7N0jyjo9oQmVX6seOXjSv06DvQDCDz_7qSo=Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] drm/amdgpu: fix stack alignment ABI mismatch
To: Harry Wentland <harry.wentland@amd.com>, 
	"Deucher, Alexander" <alexander.deucher@amd.com>, yshuiv7@gmail.com, 
	"S, Shirish" <shirish.s@amd.com>
Cc: andrew.cooper3@citrix.com, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Matthias Kaehlcke <mka@google.com>, 
	"Zhou, David(ChunMing)" <David1.Zhou@amd.com>, "Koenig, Christian" <christian.koenig@amd.com>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hZV5ThvE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Oct 16, 2019 at 4:02 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> The x86 kernel is compiled with an 8B stack alignment via
> `-mpreferred-stack-boundary=3` for GCC since 3.6-rc1 via
> commit d9b0cde91c60 ("x86-64, gcc: Use -mpreferred-stack-boundary=3 if supported")
> or `-mstack-alignment=8` for Clang. Parts of the AMDGPU driver are
> compiled with 16B stack alignment.
>
> Generally, the stack alignment is part of the ABI. Linking together two
> different translation units with differing stack alignment is dangerous,
> particularly when the translation unit with the smaller stack alignment
> makes calls into the translation unit with the larger stack alignment.
> While 8B aligned stacks are sometimes also 16B aligned, they are not
> always.
>
> Multiple users have reported General Protection Faults (GPF) when using
> the AMDGPU driver compiled with Clang. Clang is placing objects in stack
> slots assuming the stack is 16B aligned, and selecting instructions that
> require 16B aligned memory operands.
>
> At runtime, syscall handlers with 8B aligned stack call into code that
> assumes 16B stack alignment.  When the stack is a multiple of 8B but not
> 16B, these instructions result in a GPF.
>
> Remove the code that added compatibility between the differing compiler
> flags, as it will result in runtime GPFs when built with Clang.
>
> The series is broken into 3 patches, the first is an important fix for
> Clang for ChromeOS. The rest are attempted cleanups for GCC, but require
> additional boot testing. The first patch is critical, the rest are nice
> to have. I've compile tested the series with ToT Clang, GCC 4.9, and GCC
> 8.3 **but** I do not have hardware to test on, so I need folks with the
> above compilers and relevant hardware to help test the series.
>
> The first patch is a functional change for Clang only. It does not
> change anything for any version of GCC. Yuxuan boot tested a previous
> incarnation on hardware, but I've changed it enough that I think it made
> sense to drop the previous tested by tag.

Thanks for testing the first patch Shirish. Are you or Yuxuan able to
test the rest of the series with any combination of {clang|gcc < 7.1|
gcc >= 7.1} on hardware and report your findings?

>
> The second patch is a functional change for GCC 7.1+ only. It does not
> affect older versions of GCC or Clang (though if someone wanted to
> double check with pre-GCC 7.1 it wouldn't hurt).  It should be boot
> tested on GCC 7.1+ on the relevant hardware.
>
> The final patch is also a functional change for GCC 7.1+ only. It does
> not affect older versions of GCC or Clang. It should be boot tested on
> GCC 7.1+ on the relevant hardware. Theoretically, there may be an issue
> with it, and it's ok to drop it. The series was intentional broken into
> 3 in order to allow them to be incrementally tested and accepted. It's
> ok to take earlier patches without the later patches.
>
> And finally, I do not condone linking object files of differing stack
> alignments.  Idealistically, we'd mark the driver broken for pre-GCC
> 7.1.  Pragmatically, "if it ain't broke, don't fix it."

Harry, Alex,
Thoughts on the series? Has AMD been able to stress test these more internally?

>
> Nick Desaulniers (3):
>   drm/amdgpu: fix stack alignment ABI mismatch for Clang
>   drm/amdgpu: fix stack alignment ABI mismatch for GCC 7.1+
>   drm/amdgpu: enable -msse2 for GCC 7.1+ users
>
>  drivers/gpu/drm/amd/display/dc/calcs/Makefile | 19 ++++++++++++-------
>  drivers/gpu/drm/amd/display/dc/dcn20/Makefile | 19 ++++++++++++-------
>  drivers/gpu/drm/amd/display/dc/dcn21/Makefile | 19 ++++++++++++-------
>  drivers/gpu/drm/amd/display/dc/dml/Makefile   | 19 ++++++++++++-------
>  drivers/gpu/drm/amd/display/dc/dsc/Makefile   | 19 ++++++++++++-------
>  5 files changed, 60 insertions(+), 35 deletions(-)
>
> --
> 2.23.0.700.g56cf767bdb-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkDCeNCg7N0jyjo9oQmVX6seOXjSv06DvQDCDz_7qSo%3DQ%40mail.gmail.com.
