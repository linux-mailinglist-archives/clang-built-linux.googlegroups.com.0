Return-Path: <clang-built-linux+bncBCIO53XE7YHBBXML2HZAKGQEIBI76JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id D42D016B336
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 22:53:34 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id z39sf10471262qve.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 13:53:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582581214; cv=pass;
        d=google.com; s=arc-20160816;
        b=kpy1Fgn8Uk1EuCt+IehDhhccqG3VoCziaY3+B8wQfO6BQMoHyITdkpWWGpxxgKwV2m
         ALaQq2U4BxA2whnSCEoaSPx40K315HEqokNPci0dq1F///OlA0ISih/9f9wvEZP1XHv7
         emU1GI9LFH7XTlYATOQnMDyWaHwY4UcOFXzjvaMHKbP+01W/Bv2Caj4iDV2Qy2re94Mr
         +4ut+NaYRLDjusbMoNI0dk6O9LAT5YmvLW9D3sd86YwZNjtUKewYZSujLDxVStw+BcVM
         jvX7bUuRDUeG31r9tl78TVCeyPgvm3nhR1vbujRoHS7cEAl1SjzgfozNBxCU+VefkHNQ
         5ymw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:date:from:sender:dkim-signature;
        bh=kz/MrFFyUxiClLkNJqQ0hXWdnZMEPfn7Hzhn/FiopJw=;
        b=HikGz1uFSBgTJRKE2syHXjsE9KDoLubE/5J/JGG3clJiAvE2gBPioF2Vut5ZTrIlzV
         DuS+QwJEjYTy4MhnJf4S1M3SNt1jpdvh/Xk7xTWFsOonaX2gkB6dnbC02OKZ+COx+ydh
         519hAnt7S/ZZGQkhqBBspAz87AnfPX9JnBCH+I5JooESdlZ4Bt46KhNsMBN+3DV7JxWv
         /MoQYoBDg/JcQYSiyyYLcT9M45rIOKH/c0ZzcsfOiBK3ZSckZ7LDeGegQHPB45w2hI08
         gaii1EYroiJv1d7xJ29ZaP4yoBFGBjYWo7/R/q2XTEpCA8X/YZb7H7KgrmD84cWcAvkW
         oS+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s+riR0kj;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kz/MrFFyUxiClLkNJqQ0hXWdnZMEPfn7Hzhn/FiopJw=;
        b=W+rHJAEciC5vVjj4Zouiks+GtfZRetZRJaVOC56N0wtzC8/O6IshPxW9NsF906Y7vl
         zZtBaabHpLO3nSZn75hs56owHIqptJ1fRFUvIxqhsW6kkag63zM0AxKlNxwXUF3yoIJo
         ClQlXaQbUir4XvWBROKsyxAPfw5/vfBenGyfW1elA4iuAQxdD9Q87cs0/q4S03gdUaY4
         tlqdwSJXZELpcsKBO+9NlqB5wBXhMkUeaJJ/Pr5gcyFNbi/3CSDO8P73zFDhFkFiI/rf
         DjYZPlOsOkQWB7Y0Ub3NUpLOfK2Gp3yNjbTQE3aMwAtHnHbj1XQ1t86vUTit/lX7jxg1
         BwIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kz/MrFFyUxiClLkNJqQ0hXWdnZMEPfn7Hzhn/FiopJw=;
        b=d2OZ0wj6+oHSrLAsSjF+dXBgHEVOL2msx026f8RFP1l3zrxkpGJjbfOv6c/PpPOs3L
         LXBWafCAgT8qgSqqeCqE4UPeF4SNzCbGji2p3E8MioP5MYZhV8IRYdGUXrz4EL4rCMpu
         nXAyNsB8Isg3Qsc/t9vzizlSoU2RKVb77ECM3K0eQg2JMovqMf/AD/G47NohU+S//BK0
         dGiCWCX4Uq3XYxpq9nkF7g1Kzpqu2xOVcNvZdEXiKQ3n42isvLQ4yBorGi5PrmXE9Dvm
         jgLLLrUjm0z7ASBOqz4U7xy07s0BTWq+qxuYf2yUNyCnn9QKo27ucftf3YxhVVb3FSkh
         5BPQ==
X-Gm-Message-State: APjAAAWRHeRI7jDXxzHTLZz3eaKTsOcCjlBvepXqonJ+eCZoLzZHV8rn
	PLMbrgnwWsptOciP/yoEqzg=
X-Google-Smtp-Source: APXvYqwoJ1JM/mSAnq2kFMi2N0tc42mw6p8dOjOxFjMPgTs8W//JUMWLzwOF8hudAYrPnBXlUUl27A==
X-Received: by 2002:ac8:4616:: with SMTP id p22mr51579245qtn.368.1582581213927;
        Mon, 24 Feb 2020 13:53:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6116:: with SMTP id v22ls5501611qkb.8.gmail; Mon, 24 Feb
 2020 13:53:33 -0800 (PST)
X-Received: by 2002:a37:498b:: with SMTP id w133mr51750214qka.52.1582581213602;
        Mon, 24 Feb 2020 13:53:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582581213; cv=none;
        d=google.com; s=arc-20160816;
        b=AXljB0hX8hLBzKOFcFekB75A/ulrRD31uxO5i76659q2F2jzOsHjE50jFy1QjIE7/n
         go6EIyDS4fNzdq2isYqPJ7T5DgewffuBPOsPGzdiBdW5cks9FIbNNS9MFhgYCpScuAl9
         TDwo4/MtIb6e+1r4raGQNCWJ9HFmwLj71H7BLUI4Vvj5G//CQPW5xrmmW8ydrgvrgX+A
         v0kHI6ZqjtNEFY1hFPYKG76TRdifK1vcIVsRasJdJ5r7dsvfHtbx9k4PRbTwe1j8a0E5
         ZvbuDV/HyR2geSlCc+LSwH3YMy7icj8hBL5mwjUJUDO+XDvDH/nvlNDs2riyuKeoR5yY
         47vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=oh8DgJY+ghrUGFSaCOcqO7JdsvvWMKpOwz7kUfngxiA=;
        b=tyvZzgplv+z3VDTMq8/NnQbuy7yiK4VAd/dRYBjyNFuit2QGlWhp6qhv9+BKfPAQMO
         IQTlKEEMg15e17chraNUONQksJpbbPE30dlY9iO21Ew4bi57G88H6YMoFHqQhhkeavVc
         44nJViKD41OEnRlwlUtJr+/iZdzcKqJZUQxAnG0oI+9d7j3WZx/hgz3GeM+CJSLRZJY+
         bRcSt8qVmTAVqNvSpaTS6wET+TxAoQBYH46LhaRnm8YELZCACzFn1b3SQ0w4DgdFn019
         Kz+weT2A4N7xLm9EK2gO5bt8T2a8fJVc+cgxgkIA7WHghzxjjMmxddsYtMoycfZ1bzHM
         faGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s+riR0kj;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id 23si577625qks.6.2020.02.24.13.53.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 13:53:33 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id j8so10099778qka.11
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 13:53:33 -0800 (PST)
X-Received: by 2002:a05:620a:1235:: with SMTP id v21mr18803375qkj.44.1582581213287;
        Mon, 24 Feb 2020 13:53:33 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id g26sm6425975qkk.68.2020.02.24.13.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 13:53:32 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 24 Feb 2020 16:53:31 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>, Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 0/2] Stop generating .eh_frame sections
Message-ID: <20200224215330.GA560533@rani.riverdale.lan>
References: <20200222235709.GA3786197@rani.riverdale.lan>
 <20200223193715.83729-1-nivedita@alum.mit.edu>
 <CAKwvOd=qVmb7UEzUSQ5-MUhpRA9Jpu3fMmmMLGdmydLoJV-kkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=qVmb7UEzUSQ5-MUhpRA9Jpu3fMmmMLGdmydLoJV-kkQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=s+riR0kj;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Feb 24, 2020 at 12:49:03PM -0800, Nick Desaulniers wrote:
> On Sun, Feb 23, 2020 at 11:37 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > In three places in the x86 kernel we are currently generating .eh_frame
> > sections only to discard them later via linker script. This is in the
> > boot code (setup.elf), the realmode trampoline (realmode.elf) and the
> > compressed kernel.
> >
> > Implement Fangrui and Nick's suggestion [1] to fix KBUILD_CFLAGS by
> > adding -fno-asynchronous-unwind-tables to avoid generating .eh_frame
> > sections in the first place, rather than discarding it in the linker
> > script.
> >
> > Arvind Sankar (2):
> >   arch/x86: Use -fno-asynchronous-unwind-tables to suppress .eh_frame sections
> >   arch/x86: Drop unneeded linker script discard of .eh_frame
> 
> Thanks for the series! I've left some feedback for a v2. Would you
> mind please including a revert of ("x86/boot/compressed: Remove
> unnecessary sections from bzImage") in a v2 series?  Our CI being red
> through the weekend is no bueno.

Sorry about that. Boris already updated tip:x86/boot to only discard
eh_frame, so your CI should be ok at least now.

> 
> >
> >  arch/x86/boot/Makefile                | 1 +
> >  arch/x86/boot/compressed/Makefile     | 1 +
> >  arch/x86/boot/setup.ld                | 1 -
> >  arch/x86/kernel/vmlinux.lds.S         | 3 ---
> >  arch/x86/realmode/rm/Makefile         | 1 +
> >  arch/x86/realmode/rm/realmode.lds.S   | 1 -
> >  drivers/firmware/efi/libstub/Makefile | 3 ++-
> >  7 files changed, 5 insertions(+), 6 deletions(-)
> >
> > --
> > 2.24.1
> >
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224215330.GA560533%40rani.riverdale.lan.
