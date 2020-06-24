Return-Path: <clang-built-linux+bncBCV4DBW44YLRBEWOZ73QKGQEIZQY7XY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id D033B209742
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:51:47 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id a2sf391233uaf.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 16:51:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593042707; cv=pass;
        d=google.com; s=arc-20160816;
        b=e6cz0WbV5bZfnxscVp2p2S3vRiBfZ4Aw2LqRuGi7OQDN0eRLJjyYUQx1hghbi7EGkq
         tYYtMMSvTGedVR4BhO0fWlXLZtBnp2r1fCSLcKmwjls8HOlWUQJWznMSY6gsI1467CuG
         NtNYodmMPh0kTqrjNQwroawe9YckazI7S9hlZHdMaw6lwKdb8+GdGYqsLwW8CxjKUJPC
         5zkgHa6c5qVUWMmKBP3JXCuu3uDduUo+ZLhUvTxS8uHAdxLjNbcfx8UIRupE99B5Kipo
         FNxYSUQgDXdfvXrw2AL+07SEhm83kUFz8aC/vMkKKsDI5Zu9M2ZBODDOjxg2r03bUHbk
         jNXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=UaQyYFbrLQ9XSm4RejIrYQYW7X0JJOTdCJT88xkYPyM=;
        b=nTMwboPQGHD/zLzfjN+0qZ7/6p2V42ikB6/0EBZsqdHa8jLgiPin8vY1clkldhAL0h
         lF1Ma44ChWNTrkiZLHgKx9agJyl6vxyH0CMRnY027OGDq4TgLFxqX54rlg7IAWEYR/1G
         uHqcVNzkeLLErt2S0Gg2L/Vgt37SS+RkQ3Y4tBKQtotJ4A6sXUH8vi+B91mWlW68NgJd
         txQKT6fTjy1j0SFGYQ1+SHGAx4mbORKEmX2hUwYvfy3DpQqFJ5xnjBTT5zdRLnpuXC3V
         QSRkOwYHvScisQxM2N4z4OXUanJFiLlPC9P3t58X1h8X/tkD44qUopH1q9V1Cwzrcdmb
         lhFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ak@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UaQyYFbrLQ9XSm4RejIrYQYW7X0JJOTdCJT88xkYPyM=;
        b=AMLGHIC2xCaMAczU2LwfXFpMLa3aUtfn0P/LXzMiReJ5ajh8UiF1+VkZTd/LTeDRnY
         fbb92jaObr8Ub0KnuMsVTF0Qst7BKW99KSU205B0YS7liSNmZzdwwu6y+i6m4o/GeWZ6
         3p5cuXyE0aeYVrHsxr3vsFuuP7kYA/qSS7QI+GALv4A6re93qP7UMhq0+p51ciowkLma
         UUdlfgYXffkadBg9gc68IKWeQtIENbApvulxLx64p7UJF7tdcCmx04w04vY5WU8x22ei
         zumVDYi5fXQS7XCPVQlwRg6EENhoZcFNHuP9bwXgX2bo6TI+eaRBQh4AWCyy8JhAsJWt
         /ZiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UaQyYFbrLQ9XSm4RejIrYQYW7X0JJOTdCJT88xkYPyM=;
        b=kPiPjJugc9yd/vd5Se44osT9VbFe0oXytMpoHhAuZHNzixEMfb5qr/bgjPk8OI1V9i
         rbEvCoifjNValru96eoMEf8SYWwpnKtqc9Vq+xuxlOFsaK5/LyZzCC5RZpasezWH4Azf
         pmmKHOZTcOOedK15KEqUHOCBjo/JTUaySPM89BCxFYsibfrKShnPdEDZn8bbpXdp8Byi
         xFClfe4zx70dRpTxldRl9RHqiDGYQED/snW9vkcdHqx2eguCS2ju7PPCFgYwZtrM/iCB
         0HzvWRpH8mvNc8WFUmLRd1b30hQLvu6gDGw97WsN1xD94iA/YTOEw3h8G4oNsSyNSuwc
         AhXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533lh+JjtvsvoKSeO/nwOrU7Za4saTt+nQ4ibtloJrqSLGarRpjX
	2WSUn3OZogTF6EYSlAPUmOE=
X-Google-Smtp-Source: ABdhPJwcEmgflwyAZfJau8GLtK8FismsjemJmkPpFwNq2nXQp4slXYhww5VBvWp2Ny7fSXKx+W5JrA==
X-Received: by 2002:a67:f455:: with SMTP id r21mr7966379vsn.110.1593042706899;
        Wed, 24 Jun 2020 16:51:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fdd7:: with SMTP id l23ls470588vsq.4.gmail; Wed, 24 Jun
 2020 16:51:46 -0700 (PDT)
X-Received: by 2002:a67:e10d:: with SMTP id d13mr26148381vsl.27.1593042706543;
        Wed, 24 Jun 2020 16:51:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593042706; cv=none;
        d=google.com; s=arc-20160816;
        b=mNU5WDYnubOtwXGLzcAC+6G4YAECT7PAhR5eZodjmRKAK4cFROdxsE/tjpnMQqMrbp
         G4isPYspyYLOMN36uAa+zIBzuLlB3m1o+xvIGPnemH1zyNeOkAK/6XesJ/GbgZE45NWN
         a5X1KY23EMIMBWsVGFFBFyhHl4vNJjd9nPK0iqnKqanvg3w+ly2R8FnikKw6qdJPsW9C
         Hfa9QRq7UJLH3ZqxTBlLqa+J39Lb3CsIKAFxACJ2Y4+n6fLBz0i7fPO6AN0kR96cWTte
         xUP3nlmStjKC4FvnANbhG8s1zkbJ/S5htdpYIkYxFQZjgW+j0eEeC7OCMO3aK23HDVXG
         Kc8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Zo6TrvrdjyodrxzHJi5V7NwgpSm6ez0vMNM6Xs5Q4uI=;
        b=dd4Q6RLUe62KvbbW/PeoCsGlbLvlVUxN29OlIZtkVaP8c0D15TLWlNUK8Oa1JTpP0t
         MYDCRKI1h7b4pShRy49BOqn8CkCyHOusDuBfaAIlr4GftrPmy4vt1bN3WGfnHz5ZFr9P
         3CIT3+BqtNKfFP9w3HNpXFOlOZC/qeCwFaafvetpWEvKyUHEJPb7fi8cdSCMAbcFYUU3
         1AIDsLRHs11TEVi8zcPwQ1WuvFA0D7zRO53f6B2j7A429TzWuiNs5tjoamYEkO1gAKRt
         qmrdL53Hd56CfeiRjZwFT7BPMplE7OFWfQwH4zp6gGeiB6V++V3CoRapuj5gewbU3muN
         oZPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of ak@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id f12si1131010vsr.0.2020.06.24.16.51.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jun 2020 16:51:46 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of ak@linux.intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: ptIV1Xw54lEqDKDgNUnbhF4R+zflD6rY4dHwFD+tIyA1b2DZ4VIPfmv85nd+G5YyTfSQjhb5nS
 Z69bF89pnqUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="124921031"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; 
   d="scan'208";a="124921031"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jun 2020 16:51:44 -0700
IronPort-SDR: aIRwRfjfYOdQKt3phW/InEgXxtOGI/IQstcHLZdz056+zuNv6rXZAztOwLlpT5Cd5ScDQD9lHH
 /YX4kqyPmgHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; 
   d="scan'208";a="423544015"
Received: from tassilo.jf.intel.com (HELO tassilo.localdomain) ([10.7.201.21])
  by orsmga004.jf.intel.com with ESMTP; 24 Jun 2020 16:51:44 -0700
Received: by tassilo.localdomain (Postfix, from userid 1000)
	id 463F2301BA1; Wed, 24 Jun 2020 16:51:44 -0700 (PDT)
Date: Wed, 24 Jun 2020 16:51:44 -0700
From: Andi Kleen <ak@linux.intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 17/22] arm64: vdso: disable LTO
Message-ID: <20200624235144.GD818054@tassilo.jf.intel.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-18-samitolvanen@google.com>
 <CAKwvOdnEbCfYZ9o=OF51oswyqDvN4iP-9syWUDhxfueq4q0xcw@mail.gmail.com>
 <CAKwvOdm_EBfmV+GvDE-COoDwpEm9snea4_KtuFyorA5KEU6FbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm_EBfmV+GvDE-COoDwpEm9snea4_KtuFyorA5KEU6FbQ@mail.gmail.com>
X-Original-Sender: ak@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of ak@linux.intel.com designates
 192.55.52.151 as permitted sender) smtp.mailfrom=ak@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Wed, Jun 24, 2020 at 02:09:40PM -0700, Nick Desaulniers wrote:
> On Wed, Jun 24, 2020 at 1:58 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, Jun 24, 2020 at 1:33 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> > >
> > > Filter out CC_FLAGS_LTO for the vDSO.
> >
> > Just curious about this patch (and the following one for x86's vdso),
> > do you happen to recall specifically what the issues with the vdso's
> > are?
> 
> + Andi (tangential, I actually have a bunch of tabs open with slides
> from http://halobates.de/ right now)
> 58edae3aac9f2
> 67424d5a22124
> $ git log -S DISABLE_LTO

I think I did it originally because the vDSO linker step didn't do
all the magic needed for gcc LTO. But it also doesn't seem to be
very useful for just a few functions that don't have complex
interactions, and somewhat risky for violating some assumptions.

-Andi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624235144.GD818054%40tassilo.jf.intel.com.
