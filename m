Return-Path: <clang-built-linux+bncBD4LX4523YGBBC6ZZ3VQKGQEXFU54XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB5FAC6B9
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 15:11:40 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id 2sf1225655uat.20
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Sep 2019 06:11:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567861899; cv=pass;
        d=google.com; s=arc-20160816;
        b=SkM9483bE3dB1feleUp0a896T94d50vERvD4OkJjCzBMp9T1epJduT+e0hoLRqjmP3
         QbFtRUxhLrurDSPQNec63zd90kizFmWMlx07TzgrlqIu8Pj4mv8tRy5hqHexqJrDXWpD
         ryZsbZNIbfuT7bkXZT/gHnyDW4xwMFcFm2vXqpw2SPZJaYhFbUp3WfyQxHFK1M1E5sVP
         6prbUXnvk2G1YlYoymU9qsPbqMXrC1SV3b8LoFvwb+BicM8+RVwQbxjL70hCI/HMZnYl
         R+ywdWJNDAsDgyEB+J0/Lq35LZm8/mB57ohtyWoUJNgmMkmY8lME6xDJ5eJVKT3zLc5z
         P30w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=AzMDmI5h24fsJfusvDKB660e/0UnzL4+Cz44/GpPoc0=;
        b=uQDyOnOaq6+QLlVh7inJ4gWf/1p9sAPv/C/W8RVvR3KrgXe9ixOFIKRj0emQh2ACwo
         Od2jvwYBCq6LJ86Cmnfvkq9Fx9/SzC4IPHRpAeXzoNrXBIlcOrD+DNlDPZUOi/ll78QN
         1c66Ju0uCUr2d7qS7dlMFIMnhN4BVWNKujwXfu+M0QfEkMrq4gPUOwmu8KO5xcmEhNEb
         TM4DXjrOv2j13TZSbYMrrhF4yjbEYRfXLu2dGMTQqJTz2V0/rpNgh7sDs36FeJxU9Y4D
         lYfxuOk+ggy66S8dTObjsls5fv/6TjToUhNuZa02PlEsaIKzhmnPcjR51K7FGlZ0ZBqi
         9/1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AzMDmI5h24fsJfusvDKB660e/0UnzL4+Cz44/GpPoc0=;
        b=NgCXWdBTi+GYa95vIoborZUmwbBA3UJpC9E1OnFYa0xxSBU1FJdLQvmFckQ8Bt4IYy
         OCX9ueaJvjKkweoNooU4b4+u2MljOV3CaYGin7VF4DYNIitPIyy7OJyN9gbAwKudC5WR
         M4F7JS76fGx2vzHl46Gxlj1qVymV8TmRDf3jkXjBPWRQKVYmZtL5pLm4G5Gqw4t/mLXf
         UbldH8FRVCcHq3qcRbvOTbhDEwqaGqM0wGAEtUTTIiR5GiFD5niztm64AjTvCAowkeoa
         8BWpvEUv1xTXz8E7PD4O9N5eWoNDAROhR2Xz+inekMeN+MupMC/HJEp0/xMh2hq3xQhu
         aD1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AzMDmI5h24fsJfusvDKB660e/0UnzL4+Cz44/GpPoc0=;
        b=ETXRleJDj+ZKqCRJwI5HzZ7xOpnH50dq+AZpQEk621xseyw6Z0S6rRUCBAZ3EiDcIl
         8YXJZMcmBQMIPnxTBnTRqT+ps1GU6Sao6p78gMUCFngQcxlRK7A0oRJ/WZw1bnAH6ndP
         MEZuQIutO05lrXXdVkWcxkvd/CONmI9YbZb3pSno5jrEFw0HndezmU8Rqf2rLlHFE8pO
         uesKDxhspwkrMrf8lix+tosp+VUDsMFA6T2BQQrAlF+1BWDur6+P8S2cI8nOyvHZTK2I
         eVIbKLz7yitgcEyNF6ckxlDuPCwQte9BfSbJeMy/SGmF3ItqJdzVRR2+MIZLHbvBagg7
         oj1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW4XdDTAIwWKeZL9rQv9Uu6UvvGvfwH0HK4Y877gwbspvZheVOU
	GU40hPDz1nJFm5YoMcsTO30=
X-Google-Smtp-Source: APXvYqzvWLeBlGLCeCys1dK4fk/S6OKvOQSPYEn7VgD69+9Fi2Mx0dw8rpvW9jP1umiFzHWgd1bFQw==
X-Received: by 2002:ab0:72d2:: with SMTP id g18mr6706745uap.112.1567861899207;
        Sat, 07 Sep 2019 06:11:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c28e:: with SMTP id k14ls922495vsj.3.gmail; Sat, 07 Sep
 2019 06:11:38 -0700 (PDT)
X-Received: by 2002:a67:fc88:: with SMTP id x8mr7678941vsp.78.1567861898921;
        Sat, 07 Sep 2019 06:11:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567861898; cv=none;
        d=google.com; s=arc-20160816;
        b=aW/AK/ez6KDcmUBGs4Uts+2jLEMlag3WD11m5EZWQ/wTk6WXzTNu4+FNg0W1Tm0fLp
         CEoH7Iwp9GaBPR36xNYMdfNdROqpZ3fZ85XHFnl4gD7h40JXcZj/j+oSzM7dRmiE5Hfe
         IWit7IK2vv7KI8c+HDknJZaVDytb7qqlk8ozzgZr5r4DZR1RhhzX1xNSoKXuOgGhtpLc
         ZeM+GxocXZhEsdhDFZBpV8wWyxu9FNH8FENY1a7u93wLOs9qKK1vM3dn9KUhTNr2QLlv
         tkE7HgYZJd1AQU4q2nn0SStJ4lvUJWW4FVR3EMiI2rmP/rlhBaSTnbOBWT+rV/LLxemK
         bQ/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=VDVItFcZYmSAFSNcPzCVhOcFaSVm0GeVRzE/xezhOGg=;
        b=wO3aLvOlx+GUPl5eLS1aa0CCYeo3DaC8HQNyQ4WtVfpee4g5q4950NF6QT//ADxeBS
         sIdeeGhKM2fmMWa6iYUjhIXBxYaBeyehoL4vaJsIDlTjKJwH9J7SmZxqqFOsTat6+1iy
         ZzS0AC6CFLNLfkBpf/65GQedqNVaZnijqq9AVzOgEJrE7AI0L40p5W3mkGbEn839525A
         Kxkkt7D73LCucx9FRrqa9g7D9d7dHpUJElFsz5+nf9rZyhb5/C74sm3XseTgggs2b5C7
         GBeO3PpV4Dli19Neyx50Y2dL9QiC21JjMnvQKfO35MztnD164MzfHB9QYTv2i5JQb1sn
         DVHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id r72si15423vke.5.2019.09.07.06.11.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 07 Sep 2019 06:11:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x87DBShZ025586;
	Sat, 7 Sep 2019 08:11:29 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x87DBR20025585;
	Sat, 7 Sep 2019 08:11:27 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Sat, 7 Sep 2019 08:11:27 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Jelinek <jakub@redhat.com>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "gcc-patches@gcc.gnu.org" <gcc-patches@gcc.gnu.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 4/6] compiler-gcc.h: add asm_inline definition
Message-ID: <20190907131127.GH9749@gate.crashing.org>
References: <CANiq72=3Vz-_6ctEzDQgTA44jmfSn_XZTS8wP1GHgm31Xm8ECw@mail.gmail.com> <20190906163028.GC9749@gate.crashing.org> <20190906163918.GJ2120@tucnak> <CAKwvOd=MT_=U250tR+t0jTtj7SxKJjnEZ1FmR3ir_PHjcXFLVw@mail.gmail.com> <20190906220347.GD9749@gate.crashing.org> <CAKwvOdnWBV35SCRHwMwXf+nrFc+D1E7BfRddb20zoyVJSdecCA@mail.gmail.com> <20190906225606.GF9749@gate.crashing.org> <CAKwvOdk-AQVJnD6-=Z0eUQ6KPvDp2eS2zUV=-oL2K2JBCYaOeQ@mail.gmail.com> <20190907001411.GG9749@gate.crashing.org> <CAKwvOdnaBD3Dg3pmZqX2-=Cd0n30ByMT7KUNZKhq0bsDdFeXpg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnaBD3Dg3pmZqX2-=Cd0n30ByMT7KUNZKhq0bsDdFeXpg@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Fri, Sep 06, 2019 at 06:04:54PM -0700, Nick Desaulniers wrote:
> On Fri, Sep 6, 2019 at 5:14 PM Segher Boessenkool
> <segher@kernel.crashing.org> wrote:
> > On Fri, Sep 06, 2019 at 04:42:58PM -0700, Nick Desaulniers via gcc-patches wrote:
> > > Just to prove my point about version checks being brittle, it looks
> > > like Rasmus' version check isn't even right.  GCC supported `asm
> > > inline` back in the 8.3 release, not 9.1 as in this patch:
> >
> > Yes, I backported it so that it is available in 7.5, 8.3, and 9.1, so
> > that more users will have this available sooner.  (7.5 has not been
> > released yet, but asm inline has been supported in GCC 7 since Jan 2
> > this year).
> 
> Ah, ok that makes sense.
> 
> How would you even write a version check for that?

I wouldn't.  Please stop using that straw man.  I'm not saying version
checks are good, or useful for most things.  I am saying they are not.

Predefined compiler symbols to do version checking (of a feature) is
just a lesser instance of the same problem though.  (And it causes its
own more or less obvious problems as well).

> > > Or was it "broken" until 9.1?  Lord knows, as `asm inline` wasn't in
> > > any release notes or bug reports I can find:
> >
> > https://gcc.gnu.org/ml/gcc-patches/2019-02/msg01143.html
> >
> > It never was accepted, and I dropped the ball.
> 
> Ah, ok, that's fine, so documentation was at least written.  Tracking
> when and where patches land (or don't) is difficult when patch files
> are emailed around.  I try to keep track of when and where our kernel
> patches land, but I frequently drop the ball there.

I keep track of most things just fine...  But the release notes are part
of our web content, which is in a separate CVS repository (still nicer
than SVN :-) ), and since I don't use it very often it falls outside of
all my normal procedures.

> your preference).  I'm already subscribed to more mailing lists than I
> have time to read.
> 
> > But I'll try to remember, sure.
> > Not that I am involved in all such discussions myself, mind.
> 
> But you _did_ implement `asm inline`. ;)

That started as just

+       /* If this asm is asm inline, count anything as minimum size.  */
+       if (gimple_asm_inline_p (as_a <gasm *> (stmt)))
+         count = MIN (1, count);

(in estimate_num_insns) but then things ballooned.  Like such things do.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190907131127.GH9749%40gate.crashing.org.
