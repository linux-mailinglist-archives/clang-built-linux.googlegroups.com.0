Return-Path: <clang-built-linux+bncBCTZ5O62V4ORBKXE5GAAMGQEBTUDGCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5DF30D6B5
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 10:51:39 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id z22sf5885640lfd.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 01:51:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612345898; cv=pass;
        d=google.com; s=arc-20160816;
        b=s0j5cIMRAhgVrquqvrvaNg2Y5uuA9e+LlcDt9jmyKmTwCpx5pk24lLCduWlgX+c7r5
         9l+/oid71JCVc1DaSqy44KesGxg0J1Zth4oftNV3Bd5xAU6Gu3h501IILlR2lQRz/MC3
         PtGkKcPHVdmr+0yPU3GqGD/ar3Wi4bNPp8+qcUBFO72lrmnE84sWu92ukRN8vdlbVM8c
         AFlZNYKpw6MXBNuFB/9pw4ARjfhmr3igI9oykIIw94FGjnck1awR0xjiUcgDkZ3JAk2g
         ywK8O6ArTm5dd2/uHQgG2nWiDN8W0cYi2V9QL2j7LgfNUHrF1HFS6y6ZoiFJrYcAQPle
         Fzcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=A059gvXvA3eVwJD7ycIgdQ3+nHyrbj3wRwQrPH+/ln8=;
        b=Qz5pgEY45iApVfh6EGjti/tl/aMqO2w3Qse/avecKq7CKnkhehDCJVsEBqoy4bHhHG
         RR9ClKBc3YED+T1Ghk/UD1b1aeWWCrSyYAxF3RyDX9KgOe5ckeTWOMVO4Daq49X/lU+D
         7KJS4EhuQKceH9KFGJiEYvGgSyHbDiYbg6Q/Y2/nPNBfji7R/b1+OkgwrmtGd+GDA5xh
         OS5SjBUNk2O+YCnyfKm6ZUovNb63bDMi4YdeRz0xotd4Qu8jJmxQziPtgSsv+40012y0
         u9ZE6pnzWEpss7vPNzzI8wCJdrJkvtl4QGTz4vKBXO0X3wVfvb/G9+/TzrWfUNnTicgI
         erkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AidCjKbL;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A059gvXvA3eVwJD7ycIgdQ3+nHyrbj3wRwQrPH+/ln8=;
        b=WIjkyLWHU2PyiUlSx6KqGalPy+kExT44FR06Q9Y8wZ1oLGZyx4QwwfvF1zIrEIEMa8
         RTKBpHUde96NVpFsBY9OA7fvSUCw+U+J5WNnK4jnPPwoJ2Rw/8Gr/dIaWEeJiog78ZCJ
         ibjnXXbOk+ZjhpMaO3URh1ioX/XqDp84LiKXoM5vDIp3wjH327do3bLuHlqIFzimA88v
         kVxFIht8xl67sckR+1HnxXgeMzMO+B90GFnkwI3hWWRR7qM26uRM6YL/ZcsRMU3frZZS
         021/Oc0PUAlMRwMb4erU1hqewms6VwRrgPy1u7QULLchdr/2W+T26YDJTxvmI+nzb1gc
         Ic2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A059gvXvA3eVwJD7ycIgdQ3+nHyrbj3wRwQrPH+/ln8=;
        b=dOZaEiHPeqcrv5WsMm3t7OdIzgnen8WxFOVRkDdQNVU8mvDLw5OnjBcP0+0cgFNOS2
         2Q/45X5DRXCIj0KMiZ9m3GV9/bmXRxld8lC3JfrEm+tJ5HS/i4qFcA1TDLf/FpmSqZ3X
         wNQsZ3HY1LXTbQ1ZidUPqlWDSfgwZLXLuJmqn6gYIzcY2FaDLpc36m4RdtveTRtSw9sZ
         MUWw9lRctvI4V4NZEJmpOGrv4ZELy78yI3MVaDMkpkoJOGXXOmcqoCSmif1vBjSrMZno
         BqpA6TVrFObI5dr9+k0C5Bwe35LCpRNxntupDQ3NZazxhh/W2qnUYxrBfnnzchixv6qt
         d3Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A059gvXvA3eVwJD7ycIgdQ3+nHyrbj3wRwQrPH+/ln8=;
        b=Duc0C18gmMaqQ9D9cqstkXokudyoJ+hA5M816TsWnSr9sfr/HZu7D86Eubq/cVghVe
         Ij9/RAgCrFPqALzNvDGC/9i1zFGap2byLfxUPKTGK2TSfnUW0OU7eWJa/qqNTO0RCjUH
         Dmi6ga9xdK8Ta9URZ62PSIn8GqdQB8uNHTz+LKbeHgl5+MmXmt12+0gEi5Mswd22lkuv
         LRZWOIbdkiN6UV/rVSDITXlEnTKiYt+t3iusCIrL304bWCR6gL0Kw86pid5ugr8fUJEO
         R014klvxQhGTmf84zTZTWboWBne0SB2XU9HjgbUoUaYJJWws1Iz9iysSyP+Y3962+IMJ
         BFJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533j2p6ABtMHKspxXd/LEVQfTm2zOXjFC5KT67x0HD2Fj9M2mYtq
	iXff9dqHXFpDRd2aPHQ+pxU=
X-Google-Smtp-Source: ABdhPJwVIGLign1aMZqway/48CGFZFMR6foLKPNkCH/uC8onOcLq0BbKXzNGs05r/MEqhoNDZP3rkA==
X-Received: by 2002:a05:6512:6c4:: with SMTP id u4mr1288799lff.63.1612345898693;
        Wed, 03 Feb 2021 01:51:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:97c5:: with SMTP id m5ls261389ljj.10.gmail; Wed, 03 Feb
 2021 01:51:37 -0800 (PST)
X-Received: by 2002:a2e:3204:: with SMTP id y4mr1306084ljy.242.1612345897750;
        Wed, 03 Feb 2021 01:51:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612345897; cv=none;
        d=google.com; s=arc-20160816;
        b=Mor1C54Ysug/jGVeKZ3FKbQzBRBdAQDvQvPpvCYTDHZGM1hgV3L/dWOHNAEAfa9BJx
         7LtVyKft51WCnvK7eBmhIOcf7dtW5LoYhcXeRM60FAruOms6egJ2so4BSStc/SRBCw2f
         JPFoIMfjKgZ7+3GTNEXSoKbpLUxxyNDJ+WlrIxdXlGUfZm8NbGriGqDKxSEOIDBNhcho
         wdxhsIPG1KWTadCui69FWL7vhNYb6TMIX1x3Nhr8NtIsDRXHbpf3qKxZrlrXTpghQImB
         RQyybfz5YGV4idyfPs1319a9ZmQA0btETK7L/NpgVZRQX2rNhD3V6iuMYDg7NR/MHwPZ
         mrng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CWjEkbuWLlblTtjuIWif0x7AzX7GeK00PJG/7+QyP+g=;
        b=CTk2s2udyi8baHjJqyiS1oN8dvHip6jOv/+JyFrxi0M4oh3aCWN/wAWeL7mPaKiOOF
         sk5W1+blB2nsQmuOIIL3hiYNL2T+okbKqA26PTZHgORsQeGOk+bCx91uC4sMY7Wlp4Yy
         B1CIBgO7tN4Zcd+HuuLrmCXZrXaiqP2aIRParhV/4MfDUVlHZb7buHyZR2uY5/8fzNFV
         pXGop7rVVWPaGsZ8yMoSqWr8vMjngXP4NMU+IVKmyqHGVs49xr0LigKvXHq/M4PhTAHp
         XTSzNkDiAH2Anv9iqBJXMp4u/cF6996msAbaM4FC0GJtAzUsdFMj5UWA1U1OYtN0Eklf
         dHkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AidCjKbL;
       spf=pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com. [2a00:1450:4864:20::433])
        by gmr-mx.google.com with ESMTPS id b2si64397lfd.5.2021.02.03.01.51.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 01:51:37 -0800 (PST)
Received-SPF: pass (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::433 as permitted sender) client-ip=2a00:1450:4864:20::433;
Received: by mail-wr1-x433.google.com with SMTP id c4so20693243wru.9
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 01:51:37 -0800 (PST)
X-Received: by 2002:a05:6000:188b:: with SMTP id a11mr2459195wri.151.1612345897392;
 Wed, 03 Feb 2021 01:51:37 -0800 (PST)
MIME-Version: 1.0
References: <20210202080508.GA3550351@infradead.org> <20210202162837.129631-1-viniciustinti@gmail.com>
 <YBo29/SdgCkZZinT@mit.edu>
In-Reply-To: <YBo29/SdgCkZZinT@mit.edu>
From: Vinicius Tinti <viniciustinti@gmail.com>
Date: Wed, 3 Feb 2021 06:51:26 -0300
Message-ID: <CALD9WKz-Jgmz7inOghv37ZwzD_8sVPT_-YZUX5FpQE5aKrDJJg@mail.gmail.com>
Subject: Re: [PATCH v3] ext4: Enable code path when DX_DEBUG is set
To: "Theodore Ts'o" <tytso@mit.edu>
Cc: Christoph Hellwig <hch@infradead.org>, Andreas Dilger <adilger.kernel@dilger.ca>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: viniciustinti@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AidCjKbL;       spf=pass
 (google.com: domain of viniciustinti@gmail.com designates 2a00:1450:4864:20::433
 as permitted sender) smtp.mailfrom=viniciustinti@gmail.com;       dmarc=pass
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

On Wed, Feb 3, 2021 at 2:39 AM Theodore Ts'o <tytso@mit.edu> wrote:
>
> On Tue, Feb 02, 2021 at 04:28:37PM +0000, Vinicius Tinti wrote:
> > Clang with -Wunreachable-code-aggressive is being used to try to find
> > unreachable code that could cause potential bugs. There is no plan to
> > enable it by default.
> >
> > The following code was detected as unreachable:
> >
> > fs/ext4/namei.c:831:17: warning: code will never be executed
> > [-Wunreachable-code]
> >                         unsigned n = count - 1;
> >                                      ^~~~~
> > fs/ext4/namei.c:830:7: note: silence by adding parentheses to mark code as
> > explicitly dead
> >                 if (0) { // linear search cross check
> >                     ^
> >                     /* DISABLES CODE */ ( )
> >
> > This has been present since commit ac27a0ec112a ("[PATCH] ext4: initial
> > copy of files from ext3") and fs/ext3 had it present at the beginning of
> > git history. It has not been changed since.
> >
> > This patch moves the code to a new function `htree_rep_invariant_check`
> > which only performs the check when DX_DEBUG is set. This allows the
> > function to be used in other parts of the code.
> >
> > Suggestions from: Andreas, Christoph, Nathan, Nick and Ted.
> >
> > Signed-off-by: Vinicius Tinti <viniciustinti@gmail.com>
>
> Thanks, applied, although I rewrote the commit description:
>
>     ext4: factor out htree rep invariant check
>
>     This patch moves some debugging code which is used to validate the
>     hash tree node when doing a binary search of an htree node into a
>     separate function, which is disabled by default (since it is only used
>     by developers when they are modifying the htree code paths).
>
>     In addition to cleaning up the code to make it more maintainable, it
>     silences a Clang compiler warning when -Wunreachable-code-aggressive
>     is enabled.  (There is no plan to enable this warning by default, since
>     there it has far too many false positives; nevertheless, this commit
>     reduces one of the many false positives by one.)
>
> The original description buried the lede, in terms of the primary
> reason why I think the change was worthwhile (although I know you have
> different priorities than mine :-).
>
> Thanks for working to find a way to improve the code in a way that
> makes both of us happy!

Thanks for the feedback.

And thanks for all the ones who reviewed.

>                                         - Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALD9WKz-Jgmz7inOghv37ZwzD_8sVPT_-YZUX5FpQE5aKrDJJg%40mail.gmail.com.
