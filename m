Return-Path: <clang-built-linux+bncBCS6NPVSS4JBBWXPUSBAMGQEOKYKWHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6223349C3
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 22:19:23 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id m22sf11735545otn.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 13:19:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615411162; cv=pass;
        d=google.com; s=arc-20160816;
        b=ShT+963snoDUPYgJyM8noBJCGswuUnLi9jUouv0YvuhTHaELXJ/pL/goekScSqzJwR
         VhtW0bltudVvGtctzX63ptIob6iBvM/TYzjGOFJJFyPiCYr32dsJyhVEojxxqL58RiN3
         /QfC8ZHlanp2etiK5x4cWCsZ4nFeAFVypVpldVf4VarT2/I+XXBPqtv/t9sN1h06et4y
         79rQ7o/H58WJlgVU05jlnM4vjzXrGYinIIoxcNRZFjghM4SrlsLM7V65Dny0VJx35wPc
         /JM3hNDJzRfoiIKjFfDmUgbUOiDOQZHE/uT0iur8iS8EcCDXdUlhX5IAtfs0/8Lvoyw+
         +JhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=imc3aHLH3fzMJFE0MbfHEw0M7qJuZ6VLmJdho9cBgqI=;
        b=VucMWlK0YqZIZEPj0T+ydyPMnJonU/500OsUyWUuekLHof4B635lLD1+QD5ICaikP0
         91jVoZMjO/N7oW3fcAva1E/EJtHBvz6Xv8+NmjJtr/RHv08Ohl6ASI7hrkHhfixa/MBL
         nrpV8vZypD/ukm7DDbRlHGxnk/tCC+nM+OskXYm5UP/MXaksVdCucoeR2XeIpux1JfRd
         HD3x+dFZ4i1KB8NFpdiANkokwVpfjTA/61+RBLfV7vVcZjklGMtsx1j9IOsGnIOs5B6v
         a0fGQGG0PXvrn8iHqaZ8gxnfQN6VDjYGnGK9m01i4gfXCdWf/rVjNWZuN6Wk4AEy/v4x
         tXRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=mBw3ZTHL;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b="02i/XrhG";
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=imc3aHLH3fzMJFE0MbfHEw0M7qJuZ6VLmJdho9cBgqI=;
        b=qL12g+G5I5yRMz4OGzCjI0FhZLHbUI6EVUNs2iq0j9a3qcfyBXztqzJHYlG46HpKd+
         soojVgoaSytWDyJZPdWCQaf2+nrc38KwdvyTbcXj3TyD9cbbrYsYfxaJXwR1qzt5QO9Q
         mQZ2JXjCCCbxfntUf8oiWCbl4J+jIn752ZGRK9bjukUwn2f/zZoH9oix/GmVB9oLRFaY
         rx3ch6GBiFCkfhfnLz2BaxN/gdWpc1lRF3UzFVa7G0Z5rh6ShBnajyA9yTWeEbYRWnue
         ZIUDa6A/xCgcwUDyV80Hlr/fbWGHW/NEp/KG32234lPv7WLqzzQ06LEemqRtIVjoILnK
         sd+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=imc3aHLH3fzMJFE0MbfHEw0M7qJuZ6VLmJdho9cBgqI=;
        b=KoTkT7Mam/OBy77JZWe+g3Qp5eVSAhG/tApOdB01foVSZZEHMLoSzvrzTLXIY7cJPt
         gv8O/ayss0X0P1NTRdL1nau4scuFyejPv1Rfj9EGwxcWHGDrvcsa+QrliUa25ovM8SGW
         rufoIfuAdRsV9BrNDGlNe9dVeN9+PA7rxGsxGgyxhybErL439bH06xBCoUm1FHbYtCY2
         aDLfoa9kccbeXjIjwK0Q2RZwUHQQR9L695BHsu7HlTgV+xxJPExaSSwUOcfOi5eTOOhx
         zVVou6u6iAU+00QM1+4Hnmtud+UMHyaBGfb7HbVMWTpD6FJnqB8to0PA2owY1teyKG/v
         ZK/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kvlcvVHCNZn5VdcFtBhla1CpDqS4qn+nHM/BW25X1X/T9uTK2
	RQYQ6wSQ7YgTjQC4qsK8l78=
X-Google-Smtp-Source: ABdhPJzK/Bu1uzpOKGm7yxORFnWfXngQ6GNbC0toB9HtFRhONFt1TOnxKo5e+HTptm/VO/ainT0YNg==
X-Received: by 2002:a9d:6196:: with SMTP id g22mr4153941otk.74.1615411162297;
        Wed, 10 Mar 2021 13:19:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5551:: with SMTP id h17ls889998oti.1.gmail; Wed, 10 Mar
 2021 13:19:21 -0800 (PST)
X-Received: by 2002:a9d:6e09:: with SMTP id e9mr4091515otr.195.1615411161939;
        Wed, 10 Mar 2021 13:19:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615411161; cv=none;
        d=google.com; s=arc-20160816;
        b=SkqQ5nm+aycEHeYeGcAiRsbj65qBNV46CdeDxVjre5Gzdmyxo7DXjtuCRJPPg8heQ5
         9V/EKYCAXmKWeAALA3YSoOZWC7SBcrJ9wn/x5pT1A72c/E1bLpe476UoUZaO/shxQjvV
         i9wWnYHKG6oAglrHsEMRTs+LwF6kOAdSjhZFW88mkSPJcLA0lI0WPM3YYgdsPQKNIoIX
         FgC0lYG9UbCtaBMhYSTktX4MBZ3vNvpBAzLNZqgj/Itvm68v3/5LVjNLRt6Bjxw0+yoU
         pKxFWDgc/hfmyaantIqR6EnqZvy3G4u4jhslnyUjkA0zGx4id/YhIJDzFq/GvdQQdGti
         mPfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature:dkim-signature;
        bh=xAlZ/oO2/43VGJPmtSyJc8A+QSimWRXMp4ub/kDeuFI=;
        b=mHMBRGS/NngD1ewDDVLjqJ3L5yExYQc3zRW/ZPns/pIxFtVr/ne7kbfr1H4uI5JaAx
         tzYRvpSDkv1qzDi4g51zNJWa87dvLLLzGHUaUH+x9eMOTc7LoxDCo5yo6psz2WDNFd/+
         Pnm1vslR1hl+mH7Qotdwr/lvFrb4Oy8QY/M2N3QVfGSODR283YtRVdYFpT4YchhmCvrY
         uCkPEyrDaUtNFSbmHjCMyBQFR4jV62PUfvOQQjpQ8CmcWv+hCz0vSiJGA3o5V3sr9Af/
         ksbZKaEtECPb7V/VB+YlK39TWCA3pnEAE+cofooW/k9yBOBRUnA7lyGRBjI++ItrLwd5
         Mawg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=mBw3ZTHL;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b="02i/XrhG";
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-sasl-trial2.pobox.com (pb-sasl-trial2.pobox.com. [64.147.108.86])
        by gmr-mx.google.com with ESMTPS id q10si100700oon.2.2021.03.10.13.19.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 13:19:21 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 64.147.108.86 as permitted sender) client-ip=64.147.108.86;
Received: from pb-sasl-trial2.pobox.com (localhost.local [127.0.0.1])
	by pb-sasl-trial2.pobox.com (Postfix) with ESMTP id 3C0B2362D5;
	Wed, 10 Mar 2021 16:19:17 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp1.nyi.icgroup.com (pb-smtp1.pobox.com [10.90.30.53])
	by pb-sasl-trial2.pobox.com (Postfix) with ESMTP id 1A606362D2;
	Wed, 10 Mar 2021 16:19:17 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 854AAB49BA;
	Wed, 10 Mar 2021 16:19:16 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id 89D8C2DA004F;
	Wed, 10 Mar 2021 16:19:15 -0500 (EST)
Date: Wed, 10 Mar 2021 16:19:15 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Nicholas Piggin <npiggin@gmail.com>
cc: Arnd Bergmann <arnd@kernel.org>, Fangrui Song <maskray@google.com>, 
    Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
    Andrew Scull <ascull@google.com>, Mark Brown <broonie@kernel.org>, 
    Catalin Marinas <catalin.marinas@arm.com>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    David Brazdil <dbrazdil@google.com>, 
    Geert Uytterhoeven <geert+renesas@glider.be>, 
    Ionela Voinescu <ionela.voinescu@arm.com>, 
    Kees Cook <keescook@chromium.org>, 
    Kristina Martsenko <kristina.martsenko@arm.com>, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>, 
    "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
    Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
    Nathan Chancellor <nathan@kernel.org>, 
    Nick Desaulniers <ndesaulniers@google.com>, 
    Vincenzo Frascino <vincenzo.frascino@arm.com>, 
    Will Deacon <will@kernel.org>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
In-Reply-To: <1614559739.p25z5x88wl.astroid@bobo.none>
Message-ID: <3o63p7pp-50o9-2789-s3qo-99pp5nrnnoqp@syhkavp.arg>
References: <20210225112122.2198845-1-arnd@kernel.org> <20210226211323.arkvjnr4hifxapqu@google.com> <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com> <1614559739.p25z5x88wl.astroid@bobo.none>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: 450A1582-81E6-11EB-8521-D152C8D8090B-78420484!pb-smtp1.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=mBw3ZTHL;       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b="02i/XrhG";
       spf=pass (google.com: domain of nico@fluxnic.net designates
 64.147.108.86 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Mon, 1 Mar 2021, Nicholas Piggin wrote:

> Excerpts from Arnd Bergmann's message of February 27, 2021 7:49 pm:
> > Unlike what Nick expected in his submission, I now think the annotations
> > will be needed for LTO just like they are for --gc-sections.
> 
> Yeah I wasn't sure exactly what LTO looks like or how it would work.
> I thought perhaps LTO might be able to find dead code with circular / 
> back references, we could put references from the code back to these 
> tables or something so they would be kept without KEEP. I don't know, I 
> was handwaving!
> 
> I managed to get powerpc (and IIRC x86?) working with gc sections with
> those KEEP annotations, but effectiveness of course is far worse than 
> what Nicolas was able to achieve with all his techniques and tricks.
> 
> But yes unless there is some other mechanism to handle these tables, 
> then KEEP probably has to stay. I suggest this wants a very explicit and 
> systematic way to handle it (maybe with some toolchain support) rather 
> than trying to just remove things case by case and see what breaks.
> 
> I don't know if Nicolas is still been working on his shrinking patches
> recenty but he probably knows more than anyone about this stuff.

Looks like not much has changed since last time I played with this stuff.

There is a way to omit the KEEP() on tables, but something must create a 
dependency from the code being pointed to by those tables to the table 
entries themselves. I did write my findings in the following article 
(just skip over the introductory blurb): 

https://lwn.net/Articles/741494/

Once that dependency is there, then the KEEP() may go and 
garbage-collecting a function will also garbage-collect the table entry 
automatically.

OTOH this trickery is not needed with LTO as garbage collection happens 
at the source code optimization level. The KEEP() may remain in that 
case as unneeded table entries will simply not be created in the first 
place.


Nicolas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3o63p7pp-50o9-2789-s3qo-99pp5nrnnoqp%40syhkavp.arg.
