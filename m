Return-Path: <clang-built-linux+bncBDDL3KWR4EBRBWNIXXZQKGQEBAALSYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF411868EF
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 11:26:33 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id c2sf2332880edx.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 03:26:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584354393; cv=pass;
        d=google.com; s=arc-20160816;
        b=tjuaZ4oynQCf4DWpy84bl85gYezGbp/MOQn9j2GfuOHeXzSdz+G9pPuHDyIB4brFlc
         hyJcOihyOwRPEWRMuyXfDLxHrGOf8Zg9PK6LBpRVztZHUbD1IgjllMQbw70k3xO/y3df
         p3rZfHFdpjKFEEZBWM3hgRbRiSyuzGKkLeaEAjtLtFBPOCfdi0gSieemQ+jV9RDKq7aP
         5YtO+oIpWIILcBLkrJ2d1RwVMCK59WksT2hxWv1SJQZdLnhZ6fQi7IPjA1qOq/+xU726
         0wgiY0BbgMVtDpJWzIbTtTo2p5vjjJLllb2x9O2NWCRlKCue63wQsL7Zf/uUcYYtYwlE
         eg6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=q/PO9pu1XZ1x8ttazJTXKm59r1S3Ei22tpFoh2YQkkI=;
        b=Pn8BBdDTXHzk9iHUxK7KCXdrrXuC5Vcydy2x/tZprF3FVCKrdWBS4kDUuYF291//nZ
         NvmVlxsuL/2N2W3oGa6xaze89VJaUZ/eL8aVhb6ufbmxs4SnRn2BG9PqASfPFEUoFNiB
         GcJELDwyHF3SxUFPmzYErN4jWSGohDjEA54RfJN9zNlcgWzAyy0BULoDLf8QjdXZa1ml
         PfeBOEjsAJxej4Mf8a89/uh5+wwDY8MNXXGzDC/1UTx9HZwKFhf6ZyrpVXd61hB8dZmp
         7qA4OLF6diOb6x98fz68f05YujNr7ew9VxWB1xJs3EywCX653fLrjrZTPJn3M233c7X4
         QSpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q/PO9pu1XZ1x8ttazJTXKm59r1S3Ei22tpFoh2YQkkI=;
        b=XGb/NMmKyyT9GS1yc3tAcbU1NqqI5nAuWg1XCds+8LC9CAKB59LklJw3+ORXEpEDfA
         gik4xTSsKFhK0TKcoA6PJmSutSH4YiaewgnuWtG+wa212hs/XoGH8E1ApcJ8EUyaLesX
         GKoeBmv9dTC3wZ4ivcdaF/cqFm9wS2py1VKnWZ9dIJHgRmCeO8/JFsgs91p8znf+/QW/
         2oubgr6v32ieLuXtAU2cMgAnIp3lZ8jc7802GuLJApCVhkqW9OG81evrONjMIgYyOAsl
         7s/sCdjosx2iIpq3eUkgSt0B46ZFglTJgQfcJ58Vd+ry6UpvHN2QiiVjeck+GmWT48Bd
         d3lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q/PO9pu1XZ1x8ttazJTXKm59r1S3Ei22tpFoh2YQkkI=;
        b=pYkl2YOP8UH7px8Cs1vrPrMjKkIglptvD3ebqn8tmjcx0fdrKlzONB5s6dR0QiE6IO
         4EtM9v6sMd4AMx5PIRxDkTtzH5hJFCJOsTZbl0GYrvimvG9vJRnhM51T8c386Uj8Nq9b
         fG9GMZb9U4UxPFWwZlq8brtn13CgBfcKdjJtojg3+q+wSQK1WY4fakOkfdZU/xSFu3bP
         fa+7gJy/J2MDJ0rLSkl0TppW38bPvsseXHDu1WnKpj0q+YsAvBYD2vNy/7c9RanmK8ba
         YzmqAVYnVfmlcWfh6CcTPt6jeiJ07WVY5IM0ApAndisUDRQMfNpWeq4GMq8Vnjm9+gpe
         TPwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1uJKO25RGscNZQKbXJmsgTO4Xf99OSOkyb2LWgT6EGgqwABkSd
	Q8PlfvnhTQ19Bh9U3QxUu8s=
X-Google-Smtp-Source: ADFU+vvT9i2LCjUkUa3qpvcbRwVkyQKV0x89dyfgQacZW31guvvuYRcneJaLX1ck4MTOtNpCGAAzvg==
X-Received: by 2002:a50:a285:: with SMTP id 5mr14678036edm.360.1584354393282;
        Mon, 16 Mar 2020 03:26:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:83a6:: with SMTP id 35ls2593699edi.8.gmail; Mon, 16 Mar
 2020 03:26:32 -0700 (PDT)
X-Received: by 2002:aa7:d7c9:: with SMTP id e9mr24071712eds.100.1584354392543;
        Mon, 16 Mar 2020 03:26:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584354392; cv=none;
        d=google.com; s=arc-20160816;
        b=n/ADjSBalVLJCkYjhhi0GaYUF1TsrPDLf7pOxlvuvOS8uetoPmXct1f3A2zW4ziQV0
         Hrp9S+qiuXg5ldH3J02NNZBZJOX3NRX2Jd5sZjgY3SePk8+/1xGx8L9ssW18J+Cu3O/7
         oNHj4RRYyRsmQiVDtpf+FYlimVIdYJVVLfETDSSMEZw4tl0PA8sVf45cMflzSvxXsJgg
         c+eMnpVNH2A7VRL4+NKoR9ckbnxufqHlgIAvmkR/jtePtEyc6olOOy0zudWWXwCzR6N4
         deg3LIqVjMriv60/tEKuulUOfCMc0DCpV1KYyLvRd6DRETHe9KyYglM3DPpESFVmhGmh
         8F0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=BG60bbEmhXoErpTWLX9hpefKznoE/alVPWlNZJxqVBI=;
        b=H0U3ssN7EjgaZhqNq+0dMSEHf275BeriuFM+UphZODs9tC0+ejIGn5qR5sIDuf57NF
         u9IXzPw0jaAFCMbYUwlxv7Q8td0pvGjd6n7IUxZnRvc3ZDCdXZXEU48ZDuFMQRed3TsW
         oksf8RMC+JhSSP/fSz5if4BI8OExa5H+toN9aKPfCFyPlGAETOgEIInj5dqHPB85Y8iG
         TAsKr3ia0LzEBnFo2o3YPDjqkpLd5log32GWIIBeH+HriakY6/N9lbS43Aip/FccfRla
         YkWHs9g2Mg2m2pRJmJ+ZrwGQXTnq0y2m6Nk6X4mk7zJwO1Hj/WFEPeU9s1v3Q/2PHX/a
         gpOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=catalin.marinas@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id dc25si735250ejb.1.2020.03.16.03.26.32
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 03:26:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D936F1FB;
	Mon, 16 Mar 2020 03:26:31 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD0423F534;
	Mon, 16 Mar 2020 03:26:28 -0700 (PDT)
Date: Mon, 16 Mar 2020 10:26:22 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com, x86@kernel.org,
	Will Deacon <will.deacon@arm.com>, Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 18/26] arm64: Introduce asm/vdso/processor.h
Message-ID: <20200316102621.GC3005@mbp>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
 <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316102214.GA5746@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200316102214.GA5746@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: catalin.marinas@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of catalin.marinas@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=catalin.marinas@arm.com
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

On Mon, Mar 16, 2020 at 10:22:15AM +0000, Mark Rutland wrote:
> On Mon, Mar 16, 2020 at 09:42:32AM +0000, Vincenzo Frascino wrote:
> > On 3/15/20 6:30 PM, Catalin Marinas wrote:
> > > On Fri, Mar 13, 2020 at 03:43:37PM +0000, Vincenzo Frascino wrote:
> > >> --- /dev/null
> > >> +++ b/arch/arm64/include/asm/vdso/processor.h
> > >> @@ -0,0 +1,31 @@
> > >> +/* SPDX-License-Identifier: GPL-2.0-only */
> > >> +/*
> > >> + * Copyright (C) 2020 ARM Ltd.
> > >> + */
> > >> +#ifndef __ASM_VDSO_PROCESSOR_H
> > >> +#define __ASM_VDSO_PROCESSOR_H
> > >> +
> > >> +#ifndef __ASSEMBLY__
> > >> +
> > >> +#include <asm/page-def.h>
> > >> +
> > >> +#ifdef CONFIG_COMPAT
> > >> +#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
> > >> +/*
> > >> + * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
> > >> + * by the compat vectors page.
> > >> + */
> > >> +#define TASK_SIZE_32		UL(0x100000000)
> > >> +#else
> > >> +#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
> > >> +#endif /* CONFIG_ARM64_64K_PAGES */
> > >> +#endif /* CONFIG_COMPAT */
> > > 
> > > Just curious, what's TASK_SIZE_32 used for in the vDSO code? You don't
> > > seem to move TASK_SIZE.
> > > 
> > 
> > I tried to fine grain the headers as much as I could in order to avoid
> > unneeded/unwanted inclusions:
> >  * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
> >    arch/arm64/kernel/vdso32/vgettimeofday.c).
> >  * TASK_SIZE is not required by the vdso library hence it is not present in
> >    these headers.
> 
> It would be worth noting the former point in the commit message, since
> it can be surprising.
> 
> I also think it's worth keeping the definitions together if that's easy,
> as it makes it easier to navigate the codebase, even if TASK_SIZE isn't
> necessary for the VDSO itself.

It won't work as TASK_SIZE requires (on arm64) test_thread_flag() which
can't be made available to the vDSO.

-- 
Catalin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316102621.GC3005%40mbp.
