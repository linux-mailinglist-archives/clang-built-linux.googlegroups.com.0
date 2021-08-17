Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3UB6GEAMGQEMBDMQLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 790B23EF5FF
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 01:06:23 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id v28-20020a05622a189cb029028e697f617dsf19747qtc.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 16:06:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629241582; cv=pass;
        d=google.com; s=arc-20160816;
        b=xpRhH1SCHBpHTD275N9X0gq9o/mGKX9vy5tk2cWX2RbQsPzSSVMSsm9UNqTFLlGFxh
         3VQWNF4lV5HuSRiawSGPmui5Vl8ZKsFHsdd9lInGZclwh3e9ht/7PC8oqVNmzGxFtZd5
         dIb678d/sIrpIAThR20s2rxAmhimoWkIV24Q0qsdS46N0JFER47Q1tdk22jgJ2BD6VTF
         OJCxhjRV+Yd8KAFXuy+0ARBor6drGZC2QlYQHyqGmcu/EDznsP5aXgDW4FEOO14/O59q
         OvAH84/pUopcA2JBQbWZ28ew/09G8mGoTfDrU3Mebj9NQkAZei/yX6fzCPm0SRd8wyDX
         AIPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=uS46OtuRP2X2A7EjUoaey0VPl762auyWOFycghK7h8c=;
        b=KTNBQoSxL1XgrxrQG7ESIJBMz+Q6KOfVg523sRZW434/2U784Ks3QS1sEVFS5wTIh1
         E2Yr635q5my6AYxkZIa7S5vl00eLCkSNdtCrfKBorZjsDDTk3QixKwdmk0nJmmGl0qCN
         N44wn/65QUJyd01uE0BRoHScPFcmuAkUIRBNCpFeB/weprOQhyHXkhZjNrqZjzL76OEr
         7evNJunpzt/DX/3fauu54Sl8/HQVv5ybcAhW9CynS6CpBjV87Bz2e3SttksUgK3jOmS/
         ha5E9fl0XHqB0hDqN6GGob0wKPJnA+sgjqB38TQSUW1CJCimC+yYDqYgs8fsUGY8i8XF
         tKKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GOFWORu6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uS46OtuRP2X2A7EjUoaey0VPl762auyWOFycghK7h8c=;
        b=ULJDfWmBwzt4VXj13cNG3Hh9SALAjlB7kk3j3zKTCi9ICwNRZBRUX39rzVnrbmzu33
         lGGeH5qWZhBxiXQlnH8fhmlGmyDbGC5rN3JNdw+pzCfubiAebXWCXFluzV8RXFmv11Y/
         Lj5FIGhogzzXsWS4aTXCEinz8VRqBoxSB3sQfXM/3oCxxog/os6uFovJTJTKZ+BzGtuI
         fuE/koHLoqqgfgnu7SoYkFiFAyg5r8kLHkc7Jrvy3feeIWZeeAansYd6D6tk7IQmURMw
         azrdY418PBxtEcKspu4hxJgsQ3+P1Y/3+KxM6RdlX6Efq3CTenSjxSFgHqz7HHqdhfY4
         3GQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uS46OtuRP2X2A7EjUoaey0VPl762auyWOFycghK7h8c=;
        b=qx4aKR31cYRvfu6M2+mbAvf3XLqxgEiO0/QRoI1bCzgB8Wg3B2ZJbWMJ1pYxV7b0Qp
         k/GSbhiSpx1+HNAwXz4n0FDXW0XtTJnqjVS0yrXf2wLmhV4wxbiKzyF/hh7bmXgs9cM1
         vO9cD1LGsLnRUtWrdOV2L904kiFKvfsTfVwKmzQYN/xuRE1U7iw0eDYbAI1zHZeQXx6s
         SWCZOVtvxMPbtvAKBH+Yvfnt8mFABncA9lPNd/h7C1zo8NovpdaiOJR0Pi9lapuKAit+
         wiNO6cT0t/fHMQKrXEu/htTpj9q1dJHeHWO9NeoF0OYtdnl/obz5GQA9towtua8TrX0l
         M5tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aUIj/SsxkYFOMT3aepKTE9WU5Lf/rrrxKxrauYss6RxJXi6Nw
	6jw0+ClUJgTBgEPE+8Y1ejE=
X-Google-Smtp-Source: ABdhPJyYer/AmF43gexZd/oWP5E6/G2lwvneIsjpGouRWm0rwzC+BkZKehYOpV0G8HidZusfG07EJQ==
X-Received: by 2002:ac8:7c5:: with SMTP id m5mr5411817qth.204.1629241582571;
        Tue, 17 Aug 2021 16:06:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:153:: with SMTP id f19ls169446qtg.5.gmail; Tue, 17 Aug
 2021 16:06:22 -0700 (PDT)
X-Received: by 2002:aed:3167:: with SMTP id 94mr5298774qtg.15.1629241582135;
        Tue, 17 Aug 2021 16:06:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629241582; cv=none;
        d=google.com; s=arc-20160816;
        b=MN09Gv1riKSXRGxGBzFuT4f7HM54AA8Z6FF1d9NUBHo5zQAlAr/UlxvpqEdAevz3Jm
         Dv2paJHdv/vpQHwX1nDd5M2SdeQ1vD4PSfrBC4RDVBwCBMzCf/XhUXjDcK/60jVItThG
         /YUQq2kFqaggbQwTbeaB9xzObT5GEvLib/RqKPQHUdNuifydNbOPF1GMCYgO2YBOsiB3
         VQmBSgf7AeaIdSTSJ6Pgxv7riSuTlEkiZ8AXCCGIORIDGN+zEL/Chl2IUx+5GTjXYyqs
         EBnglRQv/oYs4x1ON4QjhzFWhNEgleSPqwDygSr6PyMcdYa14eHo6sLFPz04+AkjKdTz
         p78g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eaKngo/8ZlHEBLj1jP+O4Z1mFHVZKSSIVUM++5l/+Wc=;
        b=xY7UqIAxKeKXsa+TRX87WpY49qDptHHKx+asduyZANmnQRnwJC72nyzTlheRxLEmDC
         SGXj+mEQ9mBcPABK1fHHRSXdF0OCHIWDOoZpXzDJ5qHd1IVsED/EioaNE+ajYFQnI1Uc
         GVHU7kkZvWV5LKjGLTT2vFotNBqPjpaci4tcT7ATXb5UnWzgngx/xMixsFB0i8kIw1ok
         PHyH2nBTh29rYfFVVS62YByQMkvzM0HmQre/2v3RN+Pl8P6X5D+c9qE4vdXi33x7wy19
         SKMvT9qWE3TS/jJ9ntrvOHFAFNQWTvthQpr2+UOuUSPsCyyj09AtITaaqXCu7n+geDPn
         1t2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GOFWORu6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id 12si164411qtp.2.2021.08.17.16.06.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 16:06:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Received: by mail-pg1-x52b.google.com with SMTP id r2so248536pgl.10
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 16:06:22 -0700 (PDT)
X-Received: by 2002:a62:864b:0:b029:3c7:7197:59fc with SMTP id x72-20020a62864b0000b02903c7719759fcmr5970693pfd.59.1629241581351;
        Tue, 17 Aug 2021 16:06:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i20sm3958076pfq.35.2021.08.17.16.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 16:06:20 -0700 (PDT)
Date: Tue, 17 Aug 2021 16:06:19 -0700
From: Kees Cook <keescook@chromium.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
Message-ID: <202108171602.159EB2C7EA@keescook>
References: <20210817005624.1455428-1-nathan@kernel.org>
 <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
 <202108171056.EDCE562@keescook>
 <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org>
 <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
 <71d76c41-7f9b-6d60-ba4f-0cd84596b457@embeddedor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <71d76c41-7f9b-6d60-ba4f-0cd84596b457@embeddedor.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GOFWORu6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52b
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Aug 17, 2021 at 04:33:25PM -0500, Gustavo A. R. Silva wrote:
> 
> 
> On 8/17/21 16:17, Masahiro Yamada wrote:
> > On Wed, Aug 18, 2021 at 3:25 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >>
> >> On 8/17/2021 11:03 AM, Kees Cook wrote:
> >>> On Mon, Aug 16, 2021 at 09:55:28PM -0700, Nathan Chancellor wrote:
> >>>> If you/Gustavo would prefer, I can upgrade that check to
> >>>>
> >>>> ifneq ($(call cc-option, -Wunreachable-code-fallthrough),)
> >>>>
> >>>> I was just trying to save a call to the compiler, as that is more expensive
> >>>> than a shell test call.
> >>>
> >>> I prefer the option test -- this means no changes are needed on the
> >>> kernel build side if it ever finds itself backported to earlier versions
> >>> (and it handles the current case of "14" not meaning "absolute latest").
> >>>
> >>> More specifically, I think you want this (untested):
> >>
> >> That should work but since -Wunreachable-code-fallthrough is off by
> >> default, I did not really see a reason to include it in KBUILD_CFLAGS. I
> >> do not have a strong opinion though, your version is smaller than mine
> >> is so we can just go with that. I'll defer to Gustavo on it since he has
> >> put in all of the work cleaning up the warnings.
> > 
> > 
> > 
> > https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8
> > 
> >    did two things:
> > 
> >  (1) Change the -Wimplicit-fallthrough behavior so that it fits
> >       to our use in the kernel
> > 
> >  (2) Add a new option -Wunreachable-code-fallthrough
> >       that works like the previous -Wimplicit-fallthrough of
> >       Clang <= 13.0.0
> > 
> > 
> > They are separate things.
> > 
> > Checking the presence of -Wunreachable-code-fallthrough
> > does not make sense since we are only interested in (1) here.
> > 
> > So, checking the Clang version is sensible and matches
> > the explanation in the comment block.

I thought one of the problems (which is quickly draining away) that
needed to be solved here is that some Clang trunk builds (that report
as version 14) don't yet have support for -Wunreachable-code-fallthrough
since they aren't new enough.

> > # Warn about unmarked fall-throughs in switch statement.
> > # Clang prior to 14.0.0 warned on unreachable fallthroughs with
> > # -Wimplicit-fallthrough, which is unacceptable due to IS_ENABLED().
> > # https://bugs.llvm.org/show_bug.cgi?id=51094
> > ifeq ($(firstword $(sort $(CONFIG_CLANG_VERSION) 140000)),140000)
> > KBUILD_CFLAGS += -Wimplicit-fallthrough
> > endif
> > 
> > The $(sort ...) is alphabetical sort, not numeric sort.
> > It works for us because the minimum Clang version is 10.0.1
> > (that is CONFIG_CLANG_VERSION is always 6-digit)
> > 
> > It will break when Clang version 100.0.0 is released.
> > 
> > But, before that, we will raise the minimum supported clang version,
> > and this conditional will go away.

If a version test is preferred, cool; this is a nice trick. :)

> I like this. :)
> 
> I'm going to make the 0-day robot test it in my tree, first.

Sounds good to me!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108171602.159EB2C7EA%40keescook.
