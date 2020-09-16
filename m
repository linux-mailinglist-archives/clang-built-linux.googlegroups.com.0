Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBYVHQ75QKGQEG5TLUJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 766B826BFF8
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 10:59:15 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id y17sf5537551qkf.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:59:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600246754; cv=pass;
        d=google.com; s=arc-20160816;
        b=q33ts0wFMzJOruXP8xCuM29ZR1zDIsk6a9ayygz/kK4s5RiUxo82ZC/Rch0ib9vYlm
         Erp1hkJMfFQTaA7p/jYPB8Tj2qVVtS02ylgScIqDHtpvoNLK0+CBQ0J2VsVeRbur5B5X
         4pEOoiZVOJk16pz2txNkU5voVNDd5koxCHVuHbnn5hygVGnPlElfsbzXIFYdnKZUj4Rj
         93vhWydaycz0WRUPV87rEKN4xm2kVssVd0HlYkAfXWYPOnr4gFt4ujAakrleChAdzw5E
         B9LVU3Yvn0z41crDHHFSME51r4sRPJbp+8pkUrWbSZM5ZoDdEkkJu+qiu3ezrgU5tf7r
         sacQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=d7jGlVzedQqknVrFDfo8rA4tat2+ySZcy7/P2dLq4e4=;
        b=i4bdJdsXFdTRghGZf87+7sNHDAzVcurr63K1XfrMP5jZ0E4SZrA5GEcUd8KbgZkzl9
         YLXdBa6jpr2426O/dIB/2mwzZpLf6sf+/ZDqqY7nzh27731GLThXkyzN1JO7PuM0cd/q
         lYO6qvm+tUOYQSvDWv0tG8EZCqRo/nbWPCJaZxBvwNfwC8/+GuqyGdiSv2wyH8aeQqLV
         YzfZiVi2451I7dJjya4Id/KI70FzvVwiHZEe8TYOvGqRamXXpKkNdXGnGQArwL/ra/Id
         7L3EAKtOVJ12cGWlhXdzCqCbazNUXpd4SQDlaOsA8kCx01/8xXRgH1/GcaOwDaclEUWR
         S3KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kthdyxgm;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d7jGlVzedQqknVrFDfo8rA4tat2+ySZcy7/P2dLq4e4=;
        b=RNuyklARKQ4sPtumEWehT4tgcheZbGi3h5vicWuRDMpeTtomSvgIVIOs0hcXFozA4L
         V1O4u3loVtIp8/hUY8bveUdwFqBgUnRHxXiU9uvMobGDB77qc8sfo1Iqob7VDWpDq/KU
         Yql4QACDkLCYWyzGCyDEcR+/PatNqMvWcpv3msYV/9fE5De99NzHqcNXb+i928vwpPig
         pW5IXOi8SvLPke+7QpAmWTvIfCGPNJB4R5s1HPL1/j3EI7/rfqZYRAs2FtFvIHZuEebr
         Vr75Oul6bSj+M5NQgeSFpIEoUggmrumWKtLz2x5CbGLBBXVl7MVj/LN++5/r4oForIdz
         6xyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d7jGlVzedQqknVrFDfo8rA4tat2+ySZcy7/P2dLq4e4=;
        b=ouMdR9lVubG64OyXfq5wOHSy57MmRnRAqFtgB942VUdODrefCdAsd+ahqGPuYlPYXy
         Mz7GypPhmAFgqDbQKkMi9YqftFKt6NC5RJRlMX2NvLRr9qKR2n+lUgNwlVtm57TR9LBX
         Br8/txMCvKS/VObihPa3xXJhqZB5bHG3lck+Iek2ry4r+BarrLICN6CfgfXADdIhbcoT
         ThXPIKtjx9xmBM/KhM9TUPHghRBYHh99ptl8BLPrbEZqvJzgGDGwIFtTGeaO4ALRd4KJ
         fAbeWYvGBt7OgP29ztGgDc7XayJR1nh6o5qBUkkifgbyyQKdm9zPxzz3ZxoSy7FI3UaJ
         lqgA==
X-Gm-Message-State: AOAM530RDgZpEaufIEN1cjuarou9AhhurZ65jDZJKGyBrh3uBxoJymZ5
	OGL6Ezyg5hGbDGfxN3+F318=
X-Google-Smtp-Source: ABdhPJwMLHJyhzCn5CIt2npJw9pmL7DqYSwiAubDax+Od0lwhjIina4HiCd7f3Kilxo5hz++4JqSGw==
X-Received: by 2002:aed:39e3:: with SMTP id m90mr22509286qte.43.1600246754441;
        Wed, 16 Sep 2020 01:59:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4ce:: with SMTP id 197ls801437qke.1.gmail; Wed, 16 Sep
 2020 01:59:14 -0700 (PDT)
X-Received: by 2002:a05:620a:cd7:: with SMTP id b23mr22196870qkj.192.1600246753984;
        Wed, 16 Sep 2020 01:59:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600246753; cv=none;
        d=google.com; s=arc-20160816;
        b=AxT434Obc0ImDeQr+WY/Ea3jKREJVJNFMe5ICeqZVXUOLIDsKTue5/CrfQl5jLnHd6
         O3945piLMbz3TNvtDPw9nkRhO2urgbP7EmoeX6zrQft26UK/Rz0g3J+fpPYhUDpsGQYN
         nUWHfeB6++Q5zQSoLque5y0Idnckkcyp3IJdYSl/ONSqi6ojC7jG7GYgC4AAPZKCU2h5
         I5+2SNcjuvGvlihsjbOUcyvQhM3izscdTx2Ltj4brfdNvvZw+jovotP15rwGe/cNvMmf
         pLH+P07BVjje1hy2rQJne6lra9VrCzLoZp477wZzKuqvYaGA1rwouuabCoF1xKaYuEC/
         QCQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6uStEpmfYMuBQTe8ptduZVCplRWwuY/KSnqm4IT/S5I=;
        b=zeXuE4Cr/tWORMAyBdAXkXlDqfn+uChqlPyOepiaSF2Tno4gW4iYApyIGheBLOmvRO
         7vskWPuK+QgEylH1F6w6HSOZiy2hpLn3xkRWOFu6BEBIhpLsTUMyQAiukq/JXDl5etxe
         BkPNj9dk75J4BKyr2yYwNrXB5p76se2tIUhS1Gt4s/fKbOa4bttymRf3DJN710CxMrnD
         N7NV+aY3CcfQm0/fjkJTw7S5YewuLt6O5n6rNLwQwYyI6liiKmT6TlMDCtfjaxQLWhnP
         IIqli6K9BiK7ysWEauFQp1mKMXZLR2wpUN6qFC/rLZoN6McHQ0AHemHp1gZLI4bBG/6t
         EsNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kthdyxgm;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com. [2607:f8b0:4864:20::c44])
        by gmr-mx.google.com with ESMTPS id q5si908031qkc.2.2020.09.16.01.59.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 01:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as permitted sender) client-ip=2607:f8b0:4864:20::c44;
Received: by mail-oo1-xc44.google.com with SMTP id k13so1473227oor.2
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 01:59:13 -0700 (PDT)
X-Received: by 2002:a4a:a58f:: with SMTP id d15mr16956575oom.36.1600246753334;
 Wed, 16 Sep 2020 01:59:13 -0700 (PDT)
MIME-Version: 1.0
References: <5f60c4e0.Ru0MTgSE9A7mqhpG%lkp@intel.com> <20200915135519.GJ14436@zn.tnic>
 <20200915141816.GC28738@shao2-debian> <20200915160554.GN14436@zn.tnic>
 <20200915170248.gcv54pvyckteyhk3@treble> <CAKwvOdnc8au10g8q8miab89j3tT8UhwnZOMAJdRgkXVrnkhwqQ@mail.gmail.com>
 <20200915204912.GA14436@zn.tnic> <20200915210231.ysaibtkeibdm4zps@treble> <CAKwvOdmptEpi8fiOyWUo=AiZJiX+Z+VHJOM2buLPrWsMTwLnyw@mail.gmail.com>
In-Reply-To: <CAKwvOdmptEpi8fiOyWUo=AiZJiX+Z+VHJOM2buLPrWsMTwLnyw@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 10:59:01 +0200
Message-ID: <CANpmjNPa8FuTURfO0btWir4ax7jBy79P5x7Z5h08e-Ybea1Fnw@mail.gmail.com>
Subject: Re: [tip:x86/seves] BUILD SUCCESS WITH WARNING e6eb15c9ba3165698488ae5c34920eea20eaa38e
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Borislav Petkov <bp@alien8.de>, Rong Chen <rong.a.chen@intel.com>, 
	kernel test robot <lkp@intel.com>, "Li, Philip" <philip.li@intel.com>, x86-ml <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	Ilie Halip <ilie.halip@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Kthdyxgm;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::c44 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, 16 Sep 2020 at 00:34, Nick Desaulniers <ndesaulniers@google.com> wrote:
> On Tue, Sep 15, 2020 at 2:02 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
> >
> > panic() is noreturn, so the compiler is enforcing the fact that it
> > doesn't return, by trapping if it does return.
> >
> > I seem to remember that's caused by CONFIG_UBSAN_TRAP.
>
> Indeed, if I remove CONFIG_UBSAN_TRAP from the 0day report's
> randconfig, these unreachable instruction warnings all go away.
>
> So what's the right way to fix this?
>
> CONFIG_UBSAN_TRAP enables -fsanitize-undefined-trap-on-error  (not
> sure why that's wrapped in cc-option; it shouldn't be selectable via
> Kconfig if unsupported by the toolchain).
>
> Should clang not be emitting `ud2` trapping instructions for this flag
> for no-return functions?

I think this would defeat the purpose of this UBSAN feature. Certain
UBSAN checks are done fully statically, like is done by
fsanitize=unreachable, and could actually be enabled in production
kernels; trapping the kernel in these cases would be a reasonable way
to avoid further damage to the system.

(You could in theory force it to not emit a trap by using
fno-sanitize-trap=unreachable, but I think it's a bad idea.)

> or
>
> Should objtool be made aware of the config option and then not check
> traps after no-returns?

I'd vote for this. And it seems Ilie implemented this already.

> I suspect the latter, but I'm not sure how feasible it is to
> implement.  Josh, Marco, do you have thoughts on the above?

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNPa8FuTURfO0btWir4ax7jBy79P5x7Z5h08e-Ybea1Fnw%40mail.gmail.com.
