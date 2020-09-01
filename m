Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLN6XP5AKGQEDUU5P7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C76B825A212
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 01:54:22 +0200 (CEST)
Received: by mail-vk1-xa3a.google.com with SMTP id 186sf935181vku.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 16:54:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599004461; cv=pass;
        d=google.com; s=arc-20160816;
        b=lApN3faJiKgRKFhzyggVm5A5m+9Qata0+Eh+oelgf2Bw8LmcFYivNU12kU6WZ/1pxk
         iZOPTY9Fk7RspCHT5CsCVcUXmOhv3q/Rjb/3hOeRG6un/aPeC6at0y2+v0LzXCAthenv
         glz4caFOTr/Mcjv3hO5WE/w+JPHfbR7KEft4l0k3LOxk3+zJt4K8eVDXDP90gCsBhByN
         OUtCWH8nRuHyrXrOiBt/LalH3NUKM6ZBNoNUnXS66ibIDGDz4/8H1Ug4Bt56ZzwVvCop
         zzJy2FLC6JjiiUm7QNzW6l6Cmd5WASnFkXEZERw76WxbMMiqTIj+nT3TFG4o+A+DIVQN
         V3jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IcAjUEyEuoAnawprljxd1lOw2mZ6aLNAltTHPU6HGMg=;
        b=N18T8HvoQvjK/1fKY7EpVCP0XXyp7TNFaATTE2UJswjdxF1HcnFDGBcZSKzrx6QrQI
         dqjoDYFVCU/hHI3TPDIfEtMcCTyVNeKYWoe7uqcZ47l8z+ANz6+2x1KbJn3KtjjtHKSq
         eoiS3dGQKLxBP8lRlY6JDDaCAH9U5xbRFfPVfmRh7R7WQGbZnrknG+C3IDM21Hv+pri1
         gq69HXRVQuCP7O3wjMQG/+YnT67lXeu//ul2ZzMdQaZgtOD62dmGkOGuemj/6XGNPTSs
         7lwX8hn/5HxKblRtxEb0c32ysL1k+q82u8zNUQ9BnfIMhc7sfmnYtkkzhi7r9k+52NkS
         AvKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uz93oa+c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IcAjUEyEuoAnawprljxd1lOw2mZ6aLNAltTHPU6HGMg=;
        b=ondPSZem0zzLYskm0lCI7O1RfjpSAG9q3Bf9ldagroF4ybRFU4rQUzCR+vtnrg41uk
         ICF9UVjRezNVDksBnFuZYSkGUeJj1Xtrh9D+AXbMTh54DeuQ7ZFRwce+msTv9r9C7gP8
         TiOx9lP9fnn5m0ZB/3KHKPuT72H0bjFeszxPvxCh4qBAU7il+ije7nPuqsRmLyT9SifM
         fJJ2SGg320U6dxKWK86CYN6YJAMGYPgmH+FAvlcjX3DPgbP5I8dZAN+dHAyLSmmDUANn
         QNYy8Qo88jGHrNeb43PJLyTVyf/7q8Nn/nc+Ctr3eSp8ppj6Y1Mi2+hFM4epa5hxuxxR
         B0Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IcAjUEyEuoAnawprljxd1lOw2mZ6aLNAltTHPU6HGMg=;
        b=NW5p4OdbkSDVAvLYiDayZjyuOLS0GxF5m6zGAPzQ6bwXe6Ci9BeBjhwM46unS+6HXo
         +yroXT5tXJWqXLDH4fKqv2ojQpx/YCZDuHmHOAec8MVu/PMHE87GTqX5SFA1993HoDpF
         YV0p5peyBxYNe5E/k3W2pkJqLtnSKk9+xo0mPGiaSIwW/HRethxGTVGPlkNic+Veqwpd
         xDN2XfXWC0GgRJIqFkYOxUlvxAV5BS3EOl3w66nIeE57VbXW6gyLaIoNyExBkPn1FIYM
         qcPclD3Ty54tSHYwNbryzUtHf3Q93fMwIXVUacfzRw6a1q+askC+ZqVhrp3HGVb9AV0I
         qQeA==
X-Gm-Message-State: AOAM530GcjJYmpKIcKE40ZEs2Zl75Okl7EhOYwdexaDTLRxbmdVxMR6x
	MOIu+fGy4sknlAcKW15HpG0=
X-Google-Smtp-Source: ABdhPJw/uZwyllQlQajzckOie3KORQAlhKF7adEA4pWg+rsW+sMX5mEfD+frH6HmO2MnJEEfWaZBGw==
X-Received: by 2002:a67:f947:: with SMTP id u7mr3795764vsq.135.1599004461705;
        Tue, 01 Sep 2020 16:54:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2bd7:: with SMTP id s23ls43252uar.8.gmail; Tue, 01 Sep
 2020 16:54:21 -0700 (PDT)
X-Received: by 2002:ab0:2985:: with SMTP id u5mr1159883uap.128.1599004461386;
        Tue, 01 Sep 2020 16:54:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599004461; cv=none;
        d=google.com; s=arc-20160816;
        b=BDumEQa10SXm4jMHwrygjtSZxkDqk/t4hmJjXbOsxhESVFBmXCXqisJHaDdocxevKl
         4ZDyGG7ezTPb7fIJVW7H8s+7ml5Zm8qOOFfWVP0X6cDImrmLAeFqfhhOOJgPWwWhgZTn
         00ehFQd1RAsKIIH4TsiBFDtAB4v251F2wEZ5Tk87oGAfMRWkrq94CGrzsJZl8Aa0odMj
         tbDF3SArQ8RaI8QiDPhQeh1BTUTOsOEF+og0sHIN2hecmcXyNB5xHcO355dPKXoFw8rv
         mWc/sVSK2i+wGynFRpbpwqMT8to7PrDEyriNyWcgSsdslueTLWz8/UMAzDg0U8/tdzDP
         /ATg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vr/GRpBoEYmMuCS63slKe/6FyD7UiqC7EOcVZHXrpYc=;
        b=KNNVNtU49WjsYVGKF0FnmVxWrf9SBPDrFMKpCkp/skWb71bbV1g9dHvT8qYzBNMY6u
         qLCPgJfIIKbB9m5+YgdIzgJ8c18kh0ZWk8yi0oydzNFE0cRvjiqjn7jp87boDMp5n/DA
         +BRPUwxqhAsT9SNVRj5z7HfyB0z0QEEHlPOKjbB1M6L+4y/I1OXE3K8Chtdy7ilDFYPe
         WkrRbcN5FxgXUL6n1EZdX8KhICskHIgJxjbCrUdiWSaZuq7O5q57oOPTuK8xka1gTZiy
         cnrMcP6jHIbRxNWrSz7N8bUQThg531OAyLe/60mWTt64o+Fj53qO81AXGmQWvLm3ZS4E
         gncw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uz93oa+c;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 134si131371vkx.0.2020.09.01.16.54.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 16:54:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id f18so1784480pfa.10
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 16:54:21 -0700 (PDT)
X-Received: by 2002:a62:19cd:: with SMTP id 196mr621969pfz.143.1599004460212;
 Tue, 01 Sep 2020 16:54:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200821194310.3089815-1-keescook@chromium.org>
 <202008311240.9F94A39@keescook> <20200901071133.GA3577996@gmail.com>
 <20200901075937.GA3602433@gmail.com> <20200901081647.GB3602433@gmail.com>
 <202009010816.80F4692@keescook> <CAKwvOdnn3wxYdJomvnveyD_njwRku3fABWT_bS92duihhywLJQ@mail.gmail.com>
 <202009011616.E6DC7D54EF@keescook>
In-Reply-To: <202009011616.E6DC7D54EF@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Sep 2020 16:54:08 -0700
Message-ID: <CAKwvOdnDMvECAhKcTVEqcgM9QAUX05Gj27q7fZCbudANX-GWDg@mail.gmail.com>
Subject: Re: [PATCH v6 00/29] Warn on orphan section placement
To: Kees Cook <keescook@chromium.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nicholas Piggin <npiggin@gmail.com>, Ingo Molnar <mingo@kernel.org>, Borislav Petkov <bp@suse.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Peter Collingbourne <pcc@google.com>, James Morse <james.morse@arm.com>, 
	Ingo Molnar <mingo@redhat.com>, Russell King <linux@armlinux.org.uk>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <natechancellor@gmail.com>, 
	Arnd Bergmann <arnd@arndb.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uz93oa+c;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Sep 1, 2020 at 4:18 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, Sep 01, 2020 at 11:02:02AM -0700, Nick Desaulniers wrote:
> > Uh oh, the ppc vdso uses cc-ldoption which was removed! (I think by
> > me; let me send patches)  How is that not an error?  Yes, guilty,
> > officer.
> > commit 055efab3120b ("kbuild: drop support for cc-ldoption").
> > Did I not know how to use grep, or?  No, it is
> > commit f2af201002a8 ("powerpc/build: vdso linker warning for orphan sections")
> > that is wrong.
>
> Eek, yeah, the vdso needs fixing; whoops. Lucky for my series, I only need
> ld-option! ;)
>

I didn't cc everyone here on that thread, but here's the series I sent
for it: https://lore.kernel.org/lkml/20200901222523.1941988-1-ndesaulniers@google.com/T/#u
.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnDMvECAhKcTVEqcgM9QAUX05Gj27q7fZCbudANX-GWDg%40mail.gmail.com.
