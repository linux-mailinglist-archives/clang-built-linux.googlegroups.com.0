Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNGNWSDAMGQEB7BNQJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 539C93AD59F
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 01:05:26 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id v1-20020a372f010000b02903aa9be319adsf6971725qkh.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 16:05:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624057525; cv=pass;
        d=google.com; s=arc-20160816;
        b=rW+aFWleDI73QLP+bw4AGarsgWD1xBZktqnWoM56Ay3THGOfhzYey/yEC5ySGSsIsE
         0+/gvDEt1wIOa3C+DVFJqr2wKEpO1E7NsasfJ7fqexH1cfWbH3T3/W6ERrZtAFlENIms
         aDp/XtEn09ATKA86rZIe/nbk6vI2vuGphqdr/wh7pl2e+l0nUWzFMXrvXxVqo9SegPTL
         nrK/luGXfcLwDCFAFyj32OGdxkPewtf3bXYT+J/9H8KZQYxG1FcQUJnqPRhOOEIY82Es
         PRf7MnfiW5NbqcTPOLohOduyhXNMZxotIN1r1LgNu9gQ4k4kkr7FqtEfq5gWx1t/xbV6
         4SAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qGUoajjaBctl+PcawRmwriJ8gpwdvHC6uVW+wQS6hS4=;
        b=qFxgEAkWvVPOT3MRa0BOgC4YgZDw1Uaxv0BhGcsP9CTAo0Jq+A0aFenUIyplbrKTlL
         XK+kVyDkkjwMi77IJ14oembKRsOrSfiV9VhSov0y4ZpbvpuOSDJxS0FX5GZ746EIgRqO
         WCf94n04txagfDMexW+wP+vGcUJwM9na34kNewKTfUl22BD9+qWP7/K6p4SQ29J2HSXA
         kmmaJrnHRwMaPe0B8Whhb++CFti63XvsCMj3+Xfn/ylXaejiUyGfb38Ut4lulcpcESZN
         SFrkqDXoUWUCoYNL87JX0KsSZcm5Nym6hVtYtLPDyY+l7TTknns/q3vdRkCtJ8UNEUcA
         IQ5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pOi4gQgx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qGUoajjaBctl+PcawRmwriJ8gpwdvHC6uVW+wQS6hS4=;
        b=BwqsaXqTfB2eTnrYVjrsGw84P9bPhUMPRqZOM+uYiV4KalMfwnipfWpgrvstcRR+IH
         SdhEVrFV17nI5whvlsE8qcNKkjeN3iCz/Vhd1qUI09m2Mf+efOLvrYrOOl163UIP+WRA
         dOT6rYtJu4F7V7KSPLQKqavsRtgLjjLhbt2Og9VhOMWk/E+skk8JpeNniccfrBEQ2sNb
         YuLDoHzjmcnnWuVFYnKoltycT5OQcQHRlA4OSdR9FcZDb70tGXzGuBoz+WCPSZ+X1is7
         qynwK4GmIvVof2oBmJWaeoMUpUqxuT+N+qDCksTLgvtJgScf6kxTiKsksRm/7Bp3mk+O
         YYVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qGUoajjaBctl+PcawRmwriJ8gpwdvHC6uVW+wQS6hS4=;
        b=FxoYwhryJhRf64G/wJv7YKrwyUyhKLJDgYR2vTiNRWnSXn9wuNVMXln4YE6lZG2fKD
         ShEGmcnUo8Fm2LLAqANlb3KO6TCiZAG+QWEFhsCFTL/jC8qunvKXy5wp1HzGOTbFnM67
         fQrB/fz5p8cSF4dlWJ0eMeGwicKnlGIkdyEGhrIpnLlFsupKi68fpmzzv84TdykvXbB4
         TdSevk2E63r0i7x/TZJhc8Kd0um9naJ7eKBt24B0k43HXJn+JcHpTjfzPD+6x68/nwPp
         +fRNQVfs4NQvafHrZiPD1+Um1I4ckATVYt160PUaLksAvCls3w55vlc+1VjyPnFDQy4P
         /ldQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Uru0hlvY+PZ6GF545jpCHFgN1fdxSS18Lolg7IV0Y1awmzWzZ
	AXoAJQeDfQWR1sqtzjuAakc=
X-Google-Smtp-Source: ABdhPJyhobaypEIJUDkoL1RVLjIVdsi1HvZd7tZ3OTkWO+mjcfu2VDVwP4+ZTOJqjTwLCAeFqfDb7Q==
X-Received: by 2002:a37:8143:: with SMTP id c64mr6021012qkd.134.1624057525091;
        Fri, 18 Jun 2021 16:05:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:9042:: with SMTP id o60ls3947660qvo.7.gmail; Fri, 18 Jun
 2021 16:05:24 -0700 (PDT)
X-Received: by 2002:a0c:e912:: with SMTP id a18mr4784701qvo.39.1624057524684;
        Fri, 18 Jun 2021 16:05:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624057524; cv=none;
        d=google.com; s=arc-20160816;
        b=eq+KvWZoS1FcG/zyGPehd+/rU43dXxQtBekgSkAVQiQMliJMJgjhK3SmgnBOJJo6eh
         JQ9PGERarqZN3P4uB5hSgi+Q8AFQft+9qlG4eZbLgnYBbCJue8GgOd/7EX+3ufcQfosh
         mGPoSsr6JUS5uviT1gITxhLP7Nnqha+jLS9CkXZRJiksjDzxvJixLVv1Dg0OuH4ZH3EP
         e2+sgK1+o16irBAbsXEBuB070eqJtF2lxDiMpcbYvo4LEiDQPVO/o+hjt88/1p3KIVEf
         q/bS+qV/oxqZ6QDCqNzF/70gC07lntBQU79DWY8+W3aM+v2RCIfe9tkreIYT8aZb5ZHX
         /HsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kSRlo2WaW+USjt5OQOkU3mKaeXvjBmhWS2pkpkDjbyY=;
        b=LEpq0vianHOhc9jdbz8thgGg06X4XjrYeJqflcOR1r9VSm4OFQJJKoVIngQCqCDpm4
         6P8CNPAXZ0B8GOF4CUMwoIhffOcMGdnZbeEaRY8ZNjlPoS2mbIM56QnHTp88tKCdxbcZ
         +IFzxxx2ED0kybE1+iI22nQsxQaUNHKfwbr0OF0y79Mwmex0p3rVY1HkU7bSerEF8qvb
         VNMj4IFV0RSJalbSMdTqQ3xOQtw8ppDfQMAMS9tgZrkS3+fVMmHyBdQjK3twH/7GODAV
         Yna281NvTw+GYaVBIpOaScwrk95FoCslCHeSrqloqgbEb2P4PaVEm450L6BZP8TCv2AA
         9LyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pOi4gQgx;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si673205qtt.4.2021.06.18.16.05.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 16:05:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CF02961078;
	Fri, 18 Jun 2021 23:05:22 +0000 (UTC)
Date: Fri, 18 Jun 2021 16:05:17 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Matthew Wilcox <willy@infradead.org>,
	Naresh Kamboju <naresh.kamboju@linaro.org>,
	linux-next@vger.kernel.org, clang-built-linux@googlegroups.com,
	lkft-triage@lists.linaro.org, linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [next] [clang] x86_64-linux-gnu-ld: mm/mremap.o: in function
 `move_pgt_entry': mremap.c:(.text+0x763): undefined reference to
 `__compiletime_assert_342'
Message-ID: <YM0mrZIPM+sWTDHf@Ryzen-9-3900X.localdomain>
References: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
 <CA+G9fYvvf+XTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA@mail.gmail.com>
 <YMtTdU2b9fI3dnFD@casper.infradead.org>
 <YMuOSnJsL9qkxweY@archlinux-ax161>
 <6f3c5317-2877-9a57-0126-e9305f000269@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6f3c5317-2877-9a57-0126-e9305f000269@linux.ibm.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pOi4gQgx;       spf=pass
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

On Fri, Jun 18, 2021 at 10:32:42AM +0530, Aneesh Kumar K.V wrote:
> On 6/17/21 11:32 PM, Nathan Chancellor wrote:
> > Rebuilt the CC list because most people were added based on the
> > incorrect bisect result.
> > 
> > On Thu, Jun 17, 2021 at 02:51:49PM +0100, Matthew Wilcox wrote:
> > > On Thu, Jun 17, 2021 at 06:15:45PM +0530, Naresh Kamboju wrote:
> > > > On Thu, 17 Jun 2021 at 17:41, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
> > > > > x86_64-linux-gnu-ld: mm/mremap.o: in function `move_pgt_entry':
> > > > > mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
> > > > 
> > > > The git bisect pointed out the first bad commit.
> > > > 
> > > > The first bad commit:
> > > > commit 928cf6adc7d60c96eca760c05c1000cda061604e
> > > > Author: Stephen Boyd <swboyd@chromium.org>
> > > > Date:   Thu Jun 17 15:21:35 2021 +1000
> > > >      module: add printk formats to add module build ID to stacktraces
> > > 
> > > Your git bisect probably went astray.  There's no way that commit
> > > caused that regression.
> > 
> > My bisect landed on commit 83f85ac75855 ("mm/mremap: convert huge PUD
> > move to separate helper"). flush_pud_tlb_range() evaluates to
> > BUILD_BUG() when CONFIG_TRANSPARENT_HUGEPAGE is unset but this function
> > is present just based on the value of
> > CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD.
> > 
> > $ make -skj(nproc) ARCH=x86_64 CC=clang O=build/x86_64 distclean allnoconfig mm/mremap.o
> > 
> > $ llvm-readelf -s build/x86_64/mm/mremap.o &| rg __compiletime_assert
> >      21: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT   UND __compiletime_assert_337
> > 
> > $ rg TRANSPARENT_ build/x86_64/.config
> > 450:CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE=y
> > 451:CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD=y
> > 562:# CONFIG_TRANSPARENT_HUGEPAGE is not set
> > 
> > Not sure why this does not happen on newer clang versions, presumably
> > something with inlining decisions? Still seems like a legitimate issue
> > to me.
> > 
> 
> gcc 10 also doesn't give a build error. I guess that is because we evaluate
> 
>      if (pud_trans_huge(*old_pud) || pud_devmap(*old_pud)) {
> 
>  to if (0) with CONFIG_TRANSPARENT_HUGEPAGE disabled.
> 
> switching that to if (1) do results in BUILD_BUG triggering.

Thanks for pointing that out. I think what happens with clang-10 and
clang-11 is that move_huge_pud() gets inlined into move_pgt_entry() but
then the compiler does not figure out that the HPAGE_PUD case is dead so
the code sticks around, where as GCC and newer clang versions can figure
that out and eliminate that case.

> Should we fix this ?

Yes, I believe that we should.

> modified   mm/mremap.c
> @@ -336,7 +336,7 @@ static inline bool move_normal_pud(struct vm_area_struct
> *vma,
>  }
>  #endif
> 
> -#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
> +#if defined(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) &&
> defined(CONFIG_TRANSPARENT_HUGEPAGE)
>  static bool move_huge_pud(struct vm_area_struct *vma, unsigned long
> old_addr,
>  			  unsigned long new_addr, pud_t *old_pud, pud_t *new_pud)
>  {

That works or we could mirror what has already been done for the
HPAGE_PMD case. No personal preference.

diff --git a/mm/mremap.c b/mm/mremap.c
index 9a7fbec31dc9..5989d3990020 100644
--- a/mm/mremap.c
+++ b/mm/mremap.c
@@ -460,7 +460,8 @@ static bool move_pgt_entry(enum pgt_entry entry, struct vm_area_struct *vma,
                                      new_entry);
                break;
        case HPAGE_PUD:
-               moved = move_huge_pud(vma, old_addr, new_addr, old_entry,
+               moved = IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE) &&
+                       move_huge_pud(vma, old_addr, new_addr, old_entry,
                                      new_entry);
                break;


Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YM0mrZIPM%2BsWTDHf%40Ryzen-9-3900X.localdomain.
