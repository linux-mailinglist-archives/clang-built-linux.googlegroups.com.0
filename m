Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBM72GAAMGQETADNUVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0E2308C20
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 19:10:14 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id x25sf2680563vkn.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 10:10:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611943813; cv=pass;
        d=google.com; s=arc-20160816;
        b=wWQgmRSN+ZyMkcnrseVFXceOapUz7khNY6yyr969ViNx68BLgEkB4Z7mDE9v6wf8pK
         CZYbOs675DPeQw/fvO5mHlsAh40UCNqSKj10AgF3zC8GT4uMR9lyrgLatlW9mlBunQ+/
         5nImVJ+B/TMYsLcz9lIiPbHTMtiAb9OV2K7oDVWkAu0E+1r+iYa2W4KbfSbXUO1q9E48
         EogAmZNAVuGtKzbq+5lqIKr6bbAozF81q/mho9zvBdBnCZOfiuSbDfeE709ZD7QFVx0Q
         J/VvxNSflqO9hw8DAJ11mAihc6ujdY7Nl36rQmdZ3QDBcEq9rYjh9vAA5dzHlQmhQzI1
         J+YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=lDXweLN88/pzYHtqHMBJ06WVIb/j9phOZ1k9xqDIbSA=;
        b=gX82vAavKa1D8EIxM0GjJG2tdSbLx37F88UMOsY541mJjUZZJsrfMbgVdUqaQ7t/fB
         M9yVyIXm/Jj97TsfcTjaIPU9fymzTrKcujn1BZ1JdbKyX3RY+WFCFCF+eBH6cHXQvpCL
         mzBPMfyDbZhmxmIQoF/rjty+KXwB2DTTwswHWw/W5+nTlKuDUA/dxNkCKoEFbZGn5ePA
         iPNRcwF+WqKADk1Q+BmaEDlMUxOQsHC0+w2hJGNjh4zn1nX27p5pljwKTFbNd7qejXCf
         ntJWgm2dGtJcgP9ushsyf5zCnK23hV+0DogAtTD5+mu5dofqv3Y7KTNvq3oisl81Sr5x
         I/ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KvqRCWR7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lDXweLN88/pzYHtqHMBJ06WVIb/j9phOZ1k9xqDIbSA=;
        b=EwM3g9FVzLO1ZZBkwzlPDghpkgWJ33jd3NXx2ObK7JirjE/5scotNrKLaD1My7G8Mr
         Rdtj2AiXJIPUwykZnkrJcG0C9xOvUlCYkEiTQ/LV0kUlxkf0NJRe46mgS089i03ixgXH
         9mg/HOvZhi9DK8sR+GqL6GvADkitTgvXxRFesOXE4K6KsMhZs/bFOkK0cez/C3zyYfuX
         2cng/3ckYa9dL4D/Zccx+OlEGEy45p1gHbRxRo72fpdsWs+SEz02+okGvdfsZWZXDVpk
         VA7F4SZliXsKSgPlIhxBLHIn+NjlDuvn9BbksalA6LdLEYq+SBi7AK5uxun0tK6JQGXJ
         8bBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lDXweLN88/pzYHtqHMBJ06WVIb/j9phOZ1k9xqDIbSA=;
        b=gz7LL+RyD4xKRU8QrsNHfBDR17FVYPyVd0Jv3HduZnVQW2TXSQ+upajmTOsfFH4yRD
         sTkWVCMdFuqQ9FPHmoiUdB6bvVXepjNXINifW3aulGsPxzmyjWtQOGGB4EIha2kKDHKW
         T9wz8FJTYZdTxFdOD/e8dZ8OprIlV5PjpmQO9wuwK5HjPSbiyX1m/LEE8YB1yQOMqCgp
         j7kL18ncFDbGSHit30tnZziu4av27NxDAAAZiDnKpqNpQ3U7vUx3M9o0SRJ8T1b2Wl2X
         23NZWQhKwuoQjCjkl9CGIQo/bD3r1tvkLaU4opR5O9iNYwjEYuFu07l+qyEGa0XOy/Us
         CAIw==
X-Gm-Message-State: AOAM531X6zx/6WUuB3U5Rg7PAw9eluj0XOocu7Ncm8YhPyOHRhwSvswd
	ktamil4nclddYhcK3xqmg4I=
X-Google-Smtp-Source: ABdhPJwRhmpqLKKwh7bIpt9xQDDE1oXbObw2UBhNVGr7jlYUgig+homLi8QX8Pk7j4ZlunFBToU0Rw==
X-Received: by 2002:a9f:35a1:: with SMTP id t30mr3559854uad.106.1611943813307;
        Fri, 29 Jan 2021 10:10:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3641:: with SMTP id s1ls775475uad.10.gmail; Fri, 29 Jan
 2021 10:10:12 -0800 (PST)
X-Received: by 2002:ab0:15a2:: with SMTP id i31mr3646982uae.129.1611943812931;
        Fri, 29 Jan 2021 10:10:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611943812; cv=none;
        d=google.com; s=arc-20160816;
        b=ivd1P/w4RLpSoqSBcg9Hk266w5mSkW01t4eIU2eA7q/qT1yOsur4GBWWvR4vWR1c82
         zi9pSTahXDMARGbvTh9+b5yzVhtI1vVqlYs/zntVyRsU+Z7b5xYpXGEz5BY/9uyK6XV0
         dVJdQTNX9lJkrKRB1pBseffI5JqorhXIVEdbrXF2LUQU3Ng7W2chFWl7CxLcPMtejKx4
         Af51jOqRLKNZGz/RiaLlSQAx1M2EUCgdl3esURqwkiQwe+IwmWRRs2iNECZeiVRR+Gjn
         xbDgdOx5f2oRZYB4JinhqWdP0flmVw5dz6f0uSYRrawH78kOHyHwmZmoNh1eymp24bx+
         Olpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=X8bQLC4KTV3CkyE7ZwNAPVrk7LCX4mmpuoPxOJQrWiE=;
        b=0THZ3+FXmVIWkERYfrjeyJnM9rjTswAvOLrUrproHz9VESI0+nLowF69DsMziftIqb
         xvauKLR4IwVGa5eCcCRip726+Rg6wfdFhR+87AMCAz9Hbyjvw6/3QOEFifL8pU6l8kEh
         XfCGoVBSdIWLXnMi8RLIjiSmQeQ0KVaWKWLEwatkxg4O1p0R/tg+TOxlxD3daBJ0dOuD
         8994XGtI4vPhnPfwOQpSCzFRmwlqt4n8Ob61MHqmahc2zqimuglZqRvC06eZuLgONHLc
         /S82483C/5/X3aWlhm4u7cibUMNJrolAPMMptL/VcVEXg/7VWqGVnpcZuuSmmELM6YDD
         Su8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KvqRCWR7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id s196si464703vkb.2.2021.01.29.10.10.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 10:10:12 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id gx1so6796101pjb.1
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 10:10:12 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr5473562plc.10.1611943812360; Fri, 29 Jan
 2021 10:10:12 -0800 (PST)
MIME-Version: 1.0
References: <20210120173800.1660730-13-jthierry@redhat.com>
 <20210127221557.1119744-1-ndesaulniers@google.com> <20210127232651.rj3mo7c2oqh4ytsr@treble>
In-Reply-To: <20210127232651.rj3mo7c2oqh4ytsr@treble>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 29 Jan 2021 10:10:01 -0800
Message-ID: <CAKwvOdkOeENcM5X7X926sv2Xmtko=_nOPeKZ2+51s13CW1QAjw@mail.gmail.com>
Subject: Re: [RFC PATCH 12/17] gcc-plugins: objtool: Add plugin to detect
 switch table on arm64
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Julien Thierry <jthierry@redhat.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Kees Cook <keescook@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	linux-efi <linux-efi@vger.kernel.org>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Peter Zijlstra <peterz@infradead.org>, raphael.gault@arm.com, Will Deacon <will@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KvqRCWR7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e
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

On Wed, Jan 27, 2021 at 3:27 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Wed, Jan 27, 2021 at 02:15:57PM -0800, Nick Desaulniers wrote:
> > > From: Raphael Gault <raphael.gault@arm.com>
> > >
> > > This plugins comes into play before the final 2 RTL passes of GCC and
> > > detects switch-tables that are to be outputed in the ELF and writes
> > > information in an ".discard.switch_table_info" section which will be
> > > used by objtool.
> > >
> > > Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> > > [J.T.: Change section name to store switch table information,
> > >        Make plugin Kconfig be selected rather than opt-in by user,
> > >        Add a relocation in the switch_table_info that points to
> > >        the jump operation itself]
> > > Signed-off-by: Julien Thierry <jthierry@redhat.com>
> >
> > Rather than tightly couple this feature to a particular toolchain via
> > plugin, it might be nice to consider what features could be spec'ed out
> > for toolchains to implement (perhaps via a -f flag).
>
> The problem is being able to detect switch statement jump table vectors.
>
> For a given indirect branch (due to a switch statement), what are all
> the corresponding jump targets?
>
> We would need the compiler to annotate that information somehow.

Makes sense, the compiler should have this information.  How is this
problem solved on x86?

>
> > Distributions (like Android, CrOS) wont be able to use such a feature as
> > is.
>
> Would a Clang plugin be out of the question?

Generally, we frown on out of tree kernel modules for a couple reasons.

Maintaining ABI compatibility when the core kernel changes is
generally not instantaneous; someone has to notice the ABI has changed
which will be more delayed than if the module was in tree.  Worse is
when semantics subtly change.  While we must not break userspace, we
provide no such guarantees within the kernel proper.

Also, it's less likely that out of tree kernel modules have been
reviewed by kernel developers.  They may not have the same quality,
use the recommended interfaces, follow coding conventions, etc..

Oh, did I say "out of tree kernel modules?"  I meant "compiler
plugins."  But it's two different sides of the same coin to me.

FWIW, I think the approach taken by -mstack-protector-guard-reg= is a
useful case study.  It was prototyped as a GCC extension, then added
to GCC proper, then added to LLVM (currently only x86, but most of the
machinery is in place in the compiler to get it running on arm64).  My
recommendation is to skip the plugin part and work on a standard
interface for compilers to implement, with input from compiler
developers.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkOeENcM5X7X926sv2Xmtko%3D_nOPeKZ2%2B51s13CW1QAjw%40mail.gmail.com.
