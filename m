Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBG5K6D5QKGQEFLHBY5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 33058284662
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 08:56:29 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id a16sf8099308pfk.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 23:56:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601967387; cv=pass;
        d=google.com; s=arc-20160816;
        b=vHG+1SpVFCuMdbkKH/1S9K8vjg1MQ2C8M4DTs0GV37epiM0HiYOKugKadpsXhQG9t7
         c1z6vtLTjyOu5Gs4WHRVlgAWzH9SgjgqoaDoiAxBywX2srL415rP3/R+HaysKP2pppxi
         65IJzdipQJYm7WA/9Ez2kOTXfhIPLj9Wl4cDXAXNMcweXJ45ZZJFg3+pESjoDaKkIcwj
         THLmZEXxKvC20fhvllu1BAqioErOLboD84Z1aTnMGt+l2l1n2GIQ0Gsbc7Uy+YF5xF6G
         mvW6FDgNQpX1bwc9B/4wLPwLWJ29rXYSpemsbOZfUWFz+cY5usPB3bMAYDCGotTe42yD
         G9Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=tZN2BFauEGKce3lMY6arSfP3JOiXlV0KNkqBLderACA=;
        b=Rwl5biA5QC4htKXYKaoHIOrbYDKu4uSH8bIvSEUxowq0/4j0+LGUePAeAyHQRCL6sa
         lFRjJxzWWSJWTTYssYKWjRhUsxITOIbPfCllObKFzkE5UEwWUyMLulO5HkGVdxDHL0WZ
         r9+3+gQa7wgiWdpaaA/YMQsXDA66G9/oUjS+mGlIZ2Np+Dl1jR+uCg4A6Yjj027yaeDj
         sPoi1YJe07sG5ajznzmT7KOOkpS0HwVWcen0CDYv4K9v4ZxQqAdr51reVQV+sVujk/dC
         AxSgavRASB+oqxr9fqLwDXyk0hrCHhyIj59NL6JsTHDnu0Lo2dWEzlRWDcuWB5fVilV0
         gBlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kgJHrKjS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tZN2BFauEGKce3lMY6arSfP3JOiXlV0KNkqBLderACA=;
        b=ATpO2NpZwRYn0gb9Uumq7FInzg9eEd6hA8GfGxACd98iguKc0ycx4q++3rR0QCkqA5
         qfPgWiATd1KDTneYtgqgYMpenLm04fVsbyMQlpXUQ5+8LPVU3XJdNM+ZF6uysFjWu0RO
         w8nVyUqiGLdCTK7AB3TfvKvmx6lt/um7BXxIu7oa5tLcdXQxGU0H3T9LyhYiS0ZfPZ1/
         TxMzaxnRG/Dpo6rx+sqIRUnPPNuAwfTqKuFqLndOLWS5xfnPmykfxE1OizRpwD8vSv0x
         c881a+VEziwvB5B9k97B2OMStCsBINRq/DamugJY8g5R97v1f1fJWQncVi8KdLYsrE0J
         cHnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tZN2BFauEGKce3lMY6arSfP3JOiXlV0KNkqBLderACA=;
        b=IiiklDHb9MXaBKNy+N8FGVvb6XQcUZ6jUV9lBv/7eS+ppnmqvftLEVbhHAhajfgcal
         +neA7OdhWbyo7QOnw+2wUkjNSK37fOQEnnjaREE6NU1Qz/waR2JXFLGoKtlCSYP4uWQ6
         JVnhwzWbPCcPegzQAI1djm8ei0+sKGjCytBU3STUK1oA7ABLkAzQaonxPHPq5EMsqRu0
         RPuC11oUsX1MuSEmwrcsrT2b3BH41Ank54Nm4D5eUkgPUaQ8JQKAADlpJGPNTc0RDT/o
         z7SY0uSgNaY088eTpuO3SXq+W+7ihtRPfi4zmC5gnZnuWPVq1/T+1bq4l1vR+izFEikK
         XdDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tZN2BFauEGKce3lMY6arSfP3JOiXlV0KNkqBLderACA=;
        b=JxHLiMm+okIjZHYoJwP5mL6zsBIopBytJ/94JCVRYQYr29p/oXohq0Mc0csAK5zqYM
         xodSvsATPDtQo9L1wBzIKhP2bjYFWs1hRQFkuc6kYHV0bE2Z5izyLXHzMcjvckwAj5Ey
         Xy7Ev4Pmrr+b6VeNhSvX6Kl+Y0eu3CtrsYeoEYrsa/wxjtQdXIHdKsJ+SeqxYfd434/g
         43rbjPEmb67DGMl7mzdthBfmHtiB5HIxLPvtnfZ/v5ks3eV3ZrxlhCCYgo3ZFjE+5us6
         noUSAK/dcERwZIQrUpUsHcbKPh29J8NiJkHiBmU8dWL4o5CzHF492wGD5Ngz4B+PjC5e
         oJVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Kc8Uz19ud2NfRkOSKySPfwcJahv2y96+/WjzEn1uGnSGxFCF0
	p3FnpBB3SFWeQoCL40HfLEE=
X-Google-Smtp-Source: ABdhPJwghHEPj7vb6eC3K8vZnfsXxpYIRrXpmz5k7C1C7p8gxY95KxWMLLL3SFLPD+OQSIe7bqekbw==
X-Received: by 2002:a17:90b:d91:: with SMTP id bg17mr2199576pjb.66.1601967387669;
        Mon, 05 Oct 2020 23:56:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d4d:: with SMTP id i74ls3587pgc.5.gmail; Mon, 05 Oct
 2020 23:56:27 -0700 (PDT)
X-Received: by 2002:a63:d910:: with SMTP id r16mr2906145pgg.121.1601967387081;
        Mon, 05 Oct 2020 23:56:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601967387; cv=none;
        d=google.com; s=arc-20160816;
        b=071aHNoeTpZDWrtPDroSU0Vjl/ZeP22lH9B/4QRg+5xZxK/WTsyMn6Ig1+sgrLWqxd
         y09sewF+S3Pte1mo7Q1LSsh5f36w6N0n4hlV9hUHjIq54HGzXw6S3w5pRRqlO0xx5Y24
         vJlv/UO7zL628ju6LNyIrXX93bdzCnm4inatzM8qFWLmGoUiKQV9KgCmb3AE6s1Dj4Vb
         Kb9bo34Auw8sSIZGCX7Ixx3NLutWIk7S/205MW7t/Do7WkPuP2VKm64ARRCgPyzP6aWE
         Ntj5aSZyJ/cfG9diI1wLN/aU4Px1vwf1z1FRdQ/w1DTKcxt8kwRcsqhiG4bvRXtSJJ4v
         oNTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zBFfKBhYyU0BtbuXx1ytS4yKHobNdT3L7z7UjpAJros=;
        b=g2nxJIxmjXqRthmira3bNR5J6ihg5hprW8N3SDP/JX3ALP4Y7Whb/8ysH26cOw5vPo
         QmYD3RUqYTNDfHFGKUrxC4HZar4nni8NCs3pnXvlQn5pzXxVCxA0x9zgzepKwX88Omg7
         luhB4qnXtjI7bMEgfrpdSzi4n0uNz35ru3R1r5Cd3KiyP4dqaVTjhYnf1PonW2ex8Wfm
         LYaMb9PxsDLwbD0fP2BXyNABPN5qbrRdW5L0gPzM2Q3hO9lhMosDm+gWLXa2YkHceGfh
         4vmuYQvylgKJXt2DxZ//q51jmrPPwaBB4cG8IxtLNzahM92gTH07cpZlGUkdJEM73e8m
         iQEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kgJHrKjS;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id f8si192428pfj.2.2020.10.05.23.56.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 23:56:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id kk9so1158211pjb.2
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 23:56:27 -0700 (PDT)
X-Received: by 2002:a17:902:8693:b029:d3:9c6b:ca5f with SMTP id g19-20020a1709028693b02900d39c6bca5fmr1958085plo.67.1601967386593;
        Mon, 05 Oct 2020 23:56:26 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45e1:2200::1])
        by smtp.gmail.com with ESMTPSA id h9sm2042609pfh.213.2020.10.05.23.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 23:56:25 -0700 (PDT)
Date: Mon, 5 Oct 2020 23:56:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Kees Cook <keescook@chromium.org>,
	LKML <linux-kernel@vger.kernel.org>, rcu@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] srcu: avoid escaped section names
Message-ID: <20201006065623.GA2418984@ubuntu-m3-large-x86>
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
 <20200929192549.501516-1-ndesaulniers@google.com>
 <20200930204044.GZ29330@paulmck-ThinkPad-P72>
 <CAKwvOd=nabONrWyYFK7Y06TrKBOyHHfNUiiy69VJQ2NtCpbp5Q@mail.gmail.com>
 <20201002205130.GK29330@paulmck-ThinkPad-P72>
 <CAKwvOdkPMSwQneMLFNg3ihM5zHorFy+uGvzAL7y70+hu_1q24w@mail.gmail.com>
 <CA+icZUW_z5nJ1c69JS7Nm1QknF+CH+sPkhF4g2+L=d=H-vxVgw@mail.gmail.com>
 <20201005184910.GC29330@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201005184910.GC29330@paulmck-ThinkPad-P72>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kgJHrKjS;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Oct 05, 2020 at 11:49:10AM -0700, Paul E. McKenney wrote:
> On Mon, Oct 05, 2020 at 08:38:42PM +0200, Sedat Dilek wrote:
> > On Mon, Oct 5, 2020 at 8:29 PM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > On Fri, Oct 2, 2020 at 1:51 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> > > >
> > > > On Wed, Sep 30, 2020 at 01:55:48PM -0700, Nick Desaulniers wrote:
> > > > > On Wed, Sep 30, 2020 at 1:40 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> > > > > >
> > > > > > On Tue, Sep 29, 2020 at 12:25:49PM -0700, Nick Desaulniers wrote:
> > > > > > > The stringification operator, `#`, in the preprocessor escapes strings.
> > > > > > > For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> > > > > > > they treat section names that contain \".
> > > > > > >
> > > > > > > The portable solution is to not use a string literal with the
> > > > > > > preprocessor stringification operator.
> > > > > > >
> > > > > > > Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> > > > > > > Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> > > > > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > > >
> > > > > > I am guessing that this needs to go up with other patches.  If so:
> > > > > >
> > > > > > Acked-by: Paul E. McKenney <paulmck@kernel.org>
> > > > > >
> > > > > > If not, let me know and I will queue it.
> > > > >
> > > > > I could have bundled them up as a series.  I think you can pick it up,
> > > > > and I'll owe you a beer?
> > > >
> > > > It is queued, thank you!
> > > >
> > > > When does it need to hit mainline?  (Your default is the v5.11 merge
> > > > window, that is, the one following the upcoming merge window.)
> > >
> > > No rush, this patch wasn't blocking any known issue, just a cleanup
> > > while I was in the neighborhood.  100 years ago, I was an Eagle scout.
> > > Pretty sure there was a motto about "leaving things better than you
> > > found them."  Thanks for help resolving the merge conflict reported in
> > > -next related to it.
> > 
> > Wasn't there a problem with your "Fixes:" tag (Fixes: *drop word
> > "commit"* commit_hashid ("...")?
> 
> Indeed there was, and I have it noted to be fixed on my next rebase.
> 
> Perhaps another reason not to rush to mainline though.  ;-)
> 
> 							Thanx, Paul

I am replying here as well so that the relevant parties are in the know
but I believe this patch should be fast tracked with a cc stable tag as
this appears to be the root cause of the issue that Nick reported a few
weeks ago:

https://lore.kernel.org/rcu/CAKwvOdm4AQhobdkKT08bjPGb15N58QN79XWxEaQt-P5Dk4+avQ@mail.gmail.com/
https://github.com/ClangBuiltLinux/linux/issues/1081

I can reproduce the issue on next-20201002 on my Raspberry Pi 4 just by
booting it up. As soon as I apply this patch, all warnings disappear. I
asked the original reporters to test if the patch resolves the issue for
them but I figured more visibility on this, the sooner. The commit
message might need to be revised if this turns out to be the case to
make it more apparent that it has a user visible issue, rather than just
a QoL fix.

Additionally, it seems like the patch is missing some reviewed by tags
from Kees, Sedat, and myself. Feel free to add a

Tested-by: Nathan Chancellor <natechancellor@gmail.com>

as well.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201006065623.GA2418984%40ubuntu-m3-large-x86.
