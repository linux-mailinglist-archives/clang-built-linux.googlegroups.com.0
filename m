Return-Path: <clang-built-linux+bncBDV37XP3XYDRBLFKXXZQKGQE34QJXTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C3D186912
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 11:30:05 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id w11sf8806775wrp.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 03:30:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584354605; cv=pass;
        d=google.com; s=arc-20160816;
        b=0OhamODIg0BHYRgcbc0vigRaoFE3xwOoueCqYBRRY05mlYpe3r0FNhTU46qw1Hz/zJ
         BNYDQ3aBJ2sOYJFuZfwrCGD3eEV/IeF2pzZYQcLsA5KkbYpKmL1kebAWhoqV1zyPc4o/
         sWTJTUj/Z4Kb7FWfaG4Dn3vP844ANC7yh8tlLBHFm/y9r8RqaAHYhYVh+DwUfO6+bX/D
         rcPoLO4y1RVq5VoSN1pPfHiuuNPj32AOxPHxU2OPIdpfXnIGVq2JzfsOgsZ/+lLQXqoG
         5rc4InyzQOP21bAF5MuDMo73lu8NQ7wxLDpWQqugDlK5d3zPCV1HgnyljdT83SpoxyA1
         J+6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=V6QPe466eMsR9NJ79socnOROuw9bXu51dSv01v+svoM=;
        b=NyC6BPGMHWEHIUcn7nlj+WdtsdtqjpqXoV2vmv+4kpISBBVNBqkVn4+NZ+pcv4iIgN
         LWBL5tr0QvnLELs6Nc7E0v0bl43xzr/jW0duykDHxRjoBmgeCrIp96yS/rT3NvIx7XfE
         fqC7Sr++Rj7AI9XvEe5I7gRC0gZUGaVmY4Mrubvl3FsZaT/ls7nbdxyh9H7ITjOKJ4U0
         I42acXqZOKLtN+SnpJEJby/H5XrseW1FNCUsFzy7qqkmRFn1tU2qkiGFFPiIOl12AHJr
         VtNK5ZN/khSPbm/M7FacfgnI6D6tCOqTJG1bezGaqHJyRvmfvb5Xgvcwsxu90shnXKBY
         WYJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V6QPe466eMsR9NJ79socnOROuw9bXu51dSv01v+svoM=;
        b=TOqjuFBtR7FT8eSSkhgjvsbkKBy9UabqvacdIRmoJAfNtuhcbayRDW939+6NEg2qkM
         2Z/0AvMGxkxzST1ZkQDtMreE2PsGTiH795Zi9bDYeWb7mSvMyfiFqM/neGQRzelwlaew
         0NHPGsBuG7DBhRgAwiKhRt4K9wJHgWDc3BFef6mLfDQXGATB1s8PWQT+oJdB7fK+SOOz
         lsq30Uc8cQDJ61LMe5vi1p/JUU6YF32En7+x4LsETTj39Cl1FoFdbdNRv/snjR/E9iT9
         shOOInLF/ccY7Wy2sDyutsAZkWk+j9BM1+rK6SzeZSAllHLwoP1WoHqcbXmxG7YW5uKz
         GyiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=V6QPe466eMsR9NJ79socnOROuw9bXu51dSv01v+svoM=;
        b=RPHkWGr+3f/7ycufKb5EAQTuvPE0rSvLccEJIr6fmCeDywU24S7dT+0Czg0uDrPSz6
         Uu5bOrmwc+Tq/r0cdv7sBFqcuWGVx+eVK0P8KZfOkNwh8hCB3Vakc/BSTPfBnfYyASla
         itDz7UPrK4ja0FeKus1/BIuV7h+qfuOYEZ996PcG0iZolmIq1YoFIi/Qi65wDDjyBp8V
         it9pF6sfEEMq17fRrwGYTrd3x75V4ciZTxFo77kdbQL3XHlH8FkiE8cqli9yy1oJBfdz
         MTLKZ4JYQiJ71mpsS+Sp/kjJF32rUawLJt0u//uhv44ykyWTP8gLyau68+o0QKNfJefY
         8B+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ13wCO9HyMp6KOcdDdoj3qt9SLBl5WKpVrYmjwiX2GYwQ+Rkv8G
	OHizI0YQTsVjDHn7QGQWwbU=
X-Google-Smtp-Source: ADFU+vtXMhQvhYhJS2oiHweLkCes1Fnlja3lI5NheDiM/Ubx59RpmzpwIK6AY8l1ORxuss4nP7NlmQ==
X-Received: by 2002:a5d:5446:: with SMTP id w6mr36733287wrv.419.1584354604888;
        Mon, 16 Mar 2020 03:30:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls6383072wmf.2.gmail; Mon, 16
 Mar 2020 03:30:04 -0700 (PDT)
X-Received: by 2002:a7b:c3cb:: with SMTP id t11mr28806668wmj.154.1584354604243;
        Mon, 16 Mar 2020 03:30:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584354604; cv=none;
        d=google.com; s=arc-20160816;
        b=lLzlCVFob2OQUhjCwW5JXifSOk/jtaF1vgHHMfJtljeyKbC/peCjQ2OMvyMCQkwVcJ
         +sDbNjCS2lTxYHHmKdqcpAAG8Ll8q1qsxM7j8wEmKivsbUrw34Nfb0qVA44y38nYtNn9
         K0h/CiLyEzX4rNrXlf9GGVVOc86N1pxIfVZ5GYj0IEthzkwtaKXCB4qG+CsuLmiQ5bQ4
         cxFPZbNlUCTSO8SQ+txz+PzyKdsCnZqR2W7nQfWxfQWHWUiMm+ohaR79eVALyTJrIm8T
         PB9PYtMNDBxKIXtmYZbLCI7RsJRhZnfyko9DZEmbP5NANum8ddiayPncFfXQSNm/yE1o
         O51Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=LEeQ1f+hsKEfii8T4v7l9LxTeTZY9t2q73ZqJbXmi+E=;
        b=IZfcMkTgxSeF6E8EN/hyA5el/AecQv1sn7Ckl/nJvDCdGvpsBaEwaPmrlYeMirL6Wa
         l1RKTmF6inHFEWImF8K4RBmvCLs1ggdRiTuMASv4DsjSMOYpLBxw+8wii5xU3x/5i+ZY
         l20UCItOqaZ+r7h3intihgYSItMER6WPBAVF5Hf2VG4swnLnGDVMqQ5t+5uSJloh+Rs7
         7JIDKDX6Qc2x9kJTVQzwUtWJjbOfN5yjM7RDxlvWZPzIj696cfJBSoJuSS6Mn6m0mjwQ
         FR0VApqpvcAmX+sHcEbyTOrLanFQbjMGjeNYA7oQD50UpCWz8D+05KZYSWXlI5odm+yS
         LQAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n7si937933wmc.1.2020.03.16.03.30.04
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Mar 2020 03:30:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 671991FB;
	Mon, 16 Mar 2020 03:30:03 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C3FA3F534;
	Mon, 16 Mar 2020 03:30:00 -0700 (PDT)
Date: Mon, 16 Mar 2020 10:29:58 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
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
Message-ID: <20200316102958.GC5746@lakrids.cambridge.arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
 <20200313154345.56760-19-vincenzo.frascino@arm.com>
 <20200315182950.GB32205@mbp>
 <c2c0157a-107a-debf-100f-0d97781add7c@arm.com>
 <20200316102214.GA5746@lakrids.cambridge.arm.com>
 <20200316102621.GC3005@mbp>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200316102621.GC3005@mbp>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Mon, Mar 16, 2020 at 10:26:22AM +0000, Catalin Marinas wrote:
> On Mon, Mar 16, 2020 at 10:22:15AM +0000, Mark Rutland wrote:
> > On Mon, Mar 16, 2020 at 09:42:32AM +0000, Vincenzo Frascino wrote:
> > > On 3/15/20 6:30 PM, Catalin Marinas wrote:
> > > > On Fri, Mar 13, 2020 at 03:43:37PM +0000, Vincenzo Frascino wrote:
> > > >> +#ifdef CONFIG_COMPAT
> > > >> +#if defined(CONFIG_ARM64_64K_PAGES) && defined(CONFIG_KUSER_HELPERS)
> > > >> +/*
> > > >> + * With CONFIG_ARM64_64K_PAGES enabled, the last page is occupied
> > > >> + * by the compat vectors page.
> > > >> + */
> > > >> +#define TASK_SIZE_32		UL(0x100000000)
> > > >> +#else
> > > >> +#define TASK_SIZE_32		(UL(0x100000000) - PAGE_SIZE)
> > > >> +#endif /* CONFIG_ARM64_64K_PAGES */
> > > >> +#endif /* CONFIG_COMPAT */
> > > > 
> > > > Just curious, what's TASK_SIZE_32 used for in the vDSO code? You don't
> > > > seem to move TASK_SIZE.
> > > 
> > > I tried to fine grain the headers as much as I could in order to avoid
> > > unneeded/unwanted inclusions:
> > >  * TASK_SIZE_32 is used to verify ABI consistency on vdso32 (please refer to
> > >    arch/arm64/kernel/vdso32/vgettimeofday.c).
> > >  * TASK_SIZE is not required by the vdso library hence it is not present in
> > >    these headers.
> > 
> > It would be worth noting the former point in the commit message, since
> > it can be surprising.
> > 
> > I also think it's worth keeping the definitions together if that's easy,
> > as it makes it easier to navigate the codebase, even if TASK_SIZE isn't
> > necessary for the VDSO itself.
> 
> It won't work as TASK_SIZE requires (on arm64) test_thread_flag() which
> can't be made available to the vDSO.

Ah; fair enough.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316102958.GC5746%40lakrids.cambridge.arm.com.
