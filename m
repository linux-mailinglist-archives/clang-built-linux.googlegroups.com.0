Return-Path: <clang-built-linux+bncBCIO53XE7YHBBGFRQD7AKGQETUVCF6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C772C5D3B
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 22:05:29 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id w8sf4206868ybq.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 13:05:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606424728; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Dufs+MQLi0Oi3Nv8oO1pLUHJ2RniI6i5hNdQeq740AZb5IY8F80Mai+EZSvTcNIR/
         DF4g3XO4B4Cbl68k/ao9ELdPReBGAq0sJKsEO8cKilftBESBxE6fMuxJdy+5g+a6nWkh
         HpcH0CtxeSH56o8WKMWRdI2IfftoR1mnfxOU+x/eCDv37X9noYdhh+6i5ZXv9MbjH4PS
         Lv6ofG++WsUItaJXzLvE47UIEZOqnlRT/XDUk9eKw2EniyLqD5YPwtCzJQa/yUS2syFn
         CQLoVT+tV6qdbbdreUh2ZOEI+E/1k7+gxFmzjnhIZ0t94GldRtOi85jzzmRN6jvL0M3n
         iIAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=/QfB2FYALhiPNG5uPttDZouDGxzYlq0fXYKWXEFlND4=;
        b=QLmmxvBpdx4x0zGuCzBMHTY2+XAvO8AD/YmZYBwb+S06ZMIjSbj4NOdDYsQFW/ctoj
         Yb5vt4mCPhsNqS3hpmV21HgYxgtB44lBfXe4/F0JCgFuCBQ5mTRmUD3TfgoWNK/dkSmr
         T/pPiVLsUZUagbkZOXcXMb6p9+omum3EMeJcMmJ5pygOM7nxYwSagwBq+ZSW81RjvnBK
         vrgMAaSQTaY3D1ZKmyD6jjZrSjj7ZZLqKw88WZpiafyjEEfa5tzIqTvQvq6+MR4NdNcQ
         Ed5E4luDvWpBsNwhbq0tqGGe7znPBa9A8its/JHYNXIvB2S3j6dme97TXcwxgTVmADFq
         e2Tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gAPsXnYR;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/QfB2FYALhiPNG5uPttDZouDGxzYlq0fXYKWXEFlND4=;
        b=pfJJdrWBBI0VgFpZoCJX/tg9/SDBGZkgrXnGbv9wjpPBBDkQSy2IvzOCxEQxKdrZgY
         BFNg3HRLoZ3ND6yOuwavtG74ujNC4DVTV4pGf2FoGhjbPGCMOYtQ46a3NhVKxeZ5ugT+
         gitHX/4EKZuO2BvAnUK1b0yFK+ZSt45dT7n2NXEZAhi+0AvLDB5gRye8r6pyred+axqY
         yNIl2Dg7zEu9/o227oypOb568e1rGHAoDmXBAtzJGNaZbbDMdDtMxcnWQ4+95RANmDQs
         Wd2OEKgAxq4bri2kiXL/LVeKyeVY2kKpacBX45uKRne8kQrol53bgML9LDUXGRR6wdQX
         bUfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/QfB2FYALhiPNG5uPttDZouDGxzYlq0fXYKWXEFlND4=;
        b=RdtRFtRqiBNkK4Nmmi6k1czylGjBpSz4mmBc6A2nHSVBVGTCojLm2dFmDYWzcDgQ+l
         JEhs64pRbKAKPS9lEdTYTbi4nNChe3x8DTc2WByV9aLQ9JXXkXQkBHoE7Dzyh34zCHjK
         t+detRFRzHyVkb/ZaKUl4CefFTf3tS4Z5+m90LGtmTZSnbytNaUgzhwUBXd8f4DZFjGX
         OUPOylCqE7gMqXAi+8eDCsCBKTXjr2x1dLfIWqS21wqorpUnjuTo3uR57uFXQxLCmD1r
         IWszt6fh4cpQhfCDvpxes6I6vutJ8vruywkYpOdJHy50N44mvi6bJiDf/5JZlZd0v8Vg
         j6iA==
X-Gm-Message-State: AOAM533MaxET67vZs7Ny0zwM2+peo0F+I4p6UCix2axK63b8yqW1Vnno
	5F2XyzRqDeXP/1KP05tmKe4=
X-Google-Smtp-Source: ABdhPJzK5Sde5MGfKwra6UHkJ/LoZD89EDqRU13AXetF57u/UV87QoKSA8m2M7Cw/SARyt9PEvAF2Q==
X-Received: by 2002:a25:3603:: with SMTP id d3mr4959345yba.170.1606424728369;
        Thu, 26 Nov 2020 13:05:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b581:: with SMTP id q1ls1577466ybj.6.gmail; Thu, 26 Nov
 2020 13:05:27 -0800 (PST)
X-Received: by 2002:a25:6801:: with SMTP id d1mr5707926ybc.9.1606424727799;
        Thu, 26 Nov 2020 13:05:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606424727; cv=none;
        d=google.com; s=arc-20160816;
        b=Hc3LjHH+Y3Q8fWcjfHIhPsI64B0qp3Qddw6P7o32tl5SdO+y2cOWA+8aJtvMpOSU4F
         T7hb1pG7TwXtIDUyiEdKalwJVKjtqiQw5BIRmaSc1UnkWG21PkT+aOesInp+AIyM8Xxh
         +3gwSGsxJuDy7bIjYEadxX2PTbayIhYimay/ulIyhu+NdI0LH4vpjg/QzO64vmIG8re3
         aR7zbUO70d/PcMibsCzSzQ4pYVkTXet9DYzpDdVe0TiP6FiJcg64SczrvwFctKHgICUv
         PgesqDoXn2PQGQzOtiLhommLZ5cpjLGGPXWP26tvfVVsfPOljW2YbtKQgIaJnTKhrrfS
         SKHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=rhNvO+PO17FtQkmZDRzpsDH2wK48G3y6QHjOb/b+wVs=;
        b=Y91bn7Do3e7Qh7lwDYnV5utYTf04B4FKxnRJPEivmlqrCnf9rBQ2C8R+HDVR16Mgsg
         Lo1d3Y1bp0Oppi+MshYRpkwJKbdNlDVy5v8zlmOuxWGZPiG+FCy6ZSBOwzRhzRVU18fO
         0hUsMHSKQUw7IDL9FFh09vn1Gwq2JQ42YfzuavYxaS2tPFTyRHxKl3piCFrLal9gS/hz
         x0a71T7V/4boMYLs+K3Tp1M9Wrvo5PQV/TTRpB5mtfBxdLJhxQ8Q6LsqJJz1mJ26k7zX
         +M4rdssadELUPp7N/2DsFtGEwJxmwviXMDjb+ZeKYU3/avELNRAVuXB1/nKW2a/TMDcA
         AWqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gAPsXnYR;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id n185si256591yba.3.2020.11.26.13.05.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2020 13:05:27 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id d5so1985666qtn.0
        for <clang-built-linux@googlegroups.com>; Thu, 26 Nov 2020 13:05:27 -0800 (PST)
X-Received: by 2002:ac8:7083:: with SMTP id y3mr4922403qto.267.1606424727309;
        Thu, 26 Nov 2020 13:05:27 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id d188sm4014763qkb.10.2020.11.26.13.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2020 13:05:26 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 26 Nov 2020 16:05:24 -0500
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-toolchains@vger.kernel.org, kernel test robot <lkp@intel.com>,
	Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [RFC][PATCH 21/24] x86/entry: Disable stack-protector for IST
 entry C handlers
Message-ID: <20201126210524.GA1418826@rani.riverdale.lan>
References: <CAKwvOdnvhyNs1arkVO1=pw9GB9NePKUfQYAY+Q0Ur9Qe9HJ37w@mail.gmail.com>
 <20201113234701.GV2672@gate.crashing.org>
 <CANiq72nKMd_BOOowqowLAn0PZ5tu7X8G=8OrpG34qYHGLDGw6Q@mail.gmail.com>
 <20201114002624.GX2672@gate.crashing.org>
 <CANiq72n7R5Pfx4q4F9QpTrLK3Jxm0_hFu5FTvM-JcoZgr4SxRg@mail.gmail.com>
 <CAMj1kXGb6LGrDiM-oSxnt6zcCouKyhkNC+vK_PLCCWQWOSPpeQ@mail.gmail.com>
 <202011251156.055E59A@keescook>
 <20201125230010.GC2672@gate.crashing.org>
 <CAMj1kXH--kzizmzy8kFZMJkR5R17zr2aq-O=VN0uN2Viq1mFwg@mail.gmail.com>
 <20201126202207.GE2672@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201126202207.GE2672@gate.crashing.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gAPsXnYR;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842
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

On Thu, Nov 26, 2020 at 02:22:07PM -0600, Segher Boessenkool wrote:
> On Thu, Nov 26, 2020 at 07:40:10AM +0100, Ard Biesheuvel wrote:
> > On Thu, 26 Nov 2020 at 00:03, Segher Boessenkool
> > <segher@kernel.crashing.org> wrote:
> > > On Wed, Nov 25, 2020 at 11:56:40AM -0800, Kees Cook wrote:
> > > > On Sat, Nov 14, 2020 at 11:20:17AM +0100, Ard Biesheuvel wrote:
> > > > > In spite of the apparent difference of opinion here, there are two
> > > > > irrefutable facts about __attribute__((optimize)) on GCC that can only
> > > > > lead to the conclusion that we must never use it in Linux:
> > > > > - the GCC developers refuse to rigorously define its behavior, so we
> > > > > don't know what it actually does;
> > >
> > > This is because it isn't clear at all what it *should* do, for some
> > > options.  For others it is obvious, and it works just fine for those.
> > 
> > The problem is that the distinction of some vs. others is not
> > documented, and may change between architectures or GCC versions.
> 
> And obvious is still obvious.
> 
> > > (And we do not rigorously define the behaviour of almost *anything*, not
> > > in the user manual anyway!)
> > >
> > > The interface has huge usability problems.  We want to wean people off
> > > of using this attribute.  But claiming all kinds of FUD about it is a
> > > disservice to users: it works fine for where it does work, there is no
> > > reason for people to hurriedly change their code (or change it at all).
> > 
> > What do you mean by all kinds of FUD? The kind of FUD appearing on the
> > GCC wiki? I'll quote it again here for everyone's convenience.
> 
> <snip>
> 
> No, saying "ohnoes this feature (that always worked fine for many
> purposes) is so broken that it is super dangerous to keep using it even
> a minute longer".  _That_ FUD.
> 

In the context of _this_ thread -- newly applying the attribute to an
exception entry vector, it is about stopping new users who may not be
aware of the attribute's pitfalls.  You've got to admit that "quirky" is
comparatively mild language relative to what's in GCC's own wiki.

The breakage we've been trying to reverse/avoid isn't even about the
bugs alluded to in the wiki. It's an impedance mismatch in what users
are expecting the attribute to do and what it actually does, and it
would be good to add a mention of this in the documentation. Eg, in this
case the programmer expects stack protector to be disabled, and no other
effects. But the attribute will actually cause, eg -fstrict-aliasing to
be enabled for the function even though it was disabled on the command
line. Even outside of any bugs in the implementation of the attribute,
this has potential to subtly break kernel code in unexpected ways
because most users aren't aware of what the attribute really does.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201126210524.GA1418826%40rani.riverdale.lan.
