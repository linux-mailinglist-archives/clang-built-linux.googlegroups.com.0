Return-Path: <clang-built-linux+bncBD4LX4523YGBBUXD3D5QKGQEX6GX7NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id A2617280800
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 21:45:24 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id ic18sf2675268pjb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 12:45:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601581523; cv=pass;
        d=google.com; s=arc-20160816;
        b=P8skErJs+oWLBT1e3PDchfIVzdpCRbs2V6+Q32xHLRrRN0yW2iUyrX9JhVH6JacTzD
         4xzWzZtU4zucl50EyNrmm1uaURe8u8Gd7roIPclMYpr4ERrVpyWifAyTNd9K4NW7/7OR
         XzdCzA3uNn/TB455ww7uIrYNhOe5v/cUeKVI9wBiNQfOCGDa0WRDs2lY14LYe9u2bah/
         mBV4jEy9oHpEUk7Vylb5I6ur0KXuoQyjS528DLqoUKfhIKxw+mJZxA9b2BavMuF+I6di
         OFimBExV2T/hh5EO8scwnWo3OWp83I5GsQUJfnIzSpESoUPV/+RhWHPs4OyYkXhn2TAA
         4nug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8I+sbiAoT69Oq0I2MAWiLeGNrpV8MMaLk25cWS5ehzE=;
        b=j0l/l6GqSnXEYD43U7QEZyxawaIGufUU44KybyxhigujZiCu3DpHrjfbCq47pI6316
         axfcB7KKErysuJUOVROYXoGvxbZFfGw0IRJDcT+xOyrNMS4Yti1M/bvtKJBhK4GUKiTR
         SoE12innIVs+zbusa+kx0FgRz2hSxDRelqFcMxez+7BsrsnYga8ABlf52t/ZCus1PmFa
         gX6gdF6+Y3dU/XgaorkrWF4zud8rjqkeZOG4hJSN1KHTu2oPvHcR5bCMZTjvx7rreyji
         5Xbl6QdNJddQTfzBD3X8JxKqbA2ybR1LZ5MTmT0OFr7oP1VWNdW6L/CIjaZAGMpFgjEE
         EFFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8I+sbiAoT69Oq0I2MAWiLeGNrpV8MMaLk25cWS5ehzE=;
        b=Esxa5Nunu0rKlCxqLAQv4kfSzxzdd9nnUxqWnagOd58dveqmYvSO7zo026sdAJqBif
         JAb3upqINk7BEokeG4c+FB88AKhpdlFNbTP3lTGIkGyyKHB1pkl5ofEupyP+UYSvJQAp
         Cs3LuPZmhCjpfeZdB9gdFHmu3fHUIp3370o5Y6KMH2NFoCH7Q0C9FsTspxwmaMXHZTw7
         xbV+xmcZlGOWtBPGnA/i6IHsGCQKCueNrJw3S2XmMqX2Z3+XGE84XPUhFrQus3GEFD7L
         7NRY3oE4ZKrrwi0awxVRaTvZck9//MXEMorpYdxCWQdaO2lkcQweU4O0wRzhZgtzx3hO
         qMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8I+sbiAoT69Oq0I2MAWiLeGNrpV8MMaLk25cWS5ehzE=;
        b=pfJ4r+AQtDgnttbMrEtYOfGdWM3pG49v2haWcJrwKgfY+nfjuxKJ+7s0K+KtWk3kaK
         cUGnGTBoOdic21esDjxNSxJPHRHulGzkl7Ja/cs1UaPiy+bRfAZ63/atz4p0TdAPAT6r
         G+yC2LpiJEHThKN4m1W8EVWpgMH5DTAgvFmn2+vbThnaklhjwkp9HJpnLDgiMPICThdq
         D2EgpwmSFBWs0g0WCqR9VH06fQBYmdhtniHS+Zx/RfGf+DcjKbvpU6jeLDa20UqMkFkK
         l7sW4n3YU57/JvZfJNRKocUsg7DMQRj7qskhlGkebnGHkbFn00FTEdUJJQrrdWA4X/Wg
         qVCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XGfTUoxUheOC6epPCk/QValbPT1Qjf7fXIn9JdUf+l93Gx20q
	u2D6Brllp/fo6bgMl6vfct4=
X-Google-Smtp-Source: ABdhPJwwYz1xqEVSDel+5FXsIulmoAZ3WatqH7dWq4PSoIOtfQ9qWaM8zRFcGDYqVUjN32yxFpNiEw==
X-Received: by 2002:a17:902:a407:b029:d2:2113:7f8f with SMTP id p7-20020a170902a407b02900d221137f8fmr4465014plq.70.1601581523097;
        Thu, 01 Oct 2020 12:45:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4c55:: with SMTP id m21ls2114811pgl.5.gmail; Thu, 01 Oct
 2020 12:45:22 -0700 (PDT)
X-Received: by 2002:a63:841:: with SMTP id 62mr7650927pgi.35.1601581522401;
        Thu, 01 Oct 2020 12:45:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601581522; cv=none;
        d=google.com; s=arc-20160816;
        b=r8nSr106pncbzwLt2JbX+m8EOT6gpco5BYXhtfHJ8dmXIZguDYhOfjQZ14hNwRL8e0
         J/pfQotZ66mW8MuZA91/mnp82I6K/nz4RZ0zYeE1QYH3JF7gu/R3XYEKntBafYzpo7Bq
         JdEGHTb2EYOpWIraU1wwAFXTtxcas+5Hhv2MPqqtoAW7/QgUga/WT3qKyr4wHDBdf8Hx
         Qsn/Oz88hPqgk4+38GlV0SRuDlICRFzRe6LV6bD+3ULqXJ3KotUcFMvAdjfCnDrIAKvP
         SrEzeDRV2MydFDf7artq2+UW1Dx4batfHJhqqbuBUxTJvylsK+eGdRZQGxE+Eh0yMTba
         jcEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=HSbROdMKTBhmfo/DGNvBl1fBRXtHnogXUPR3tTQupvQ=;
        b=yAeFCeLe8qLOirlDIq7Ss+aiYg8qbJkVMQZrdM28DSfwx7oTm9GlwM5iwlB9IU24cA
         JMJt8NbeboPHvQ0l8MCJgk1jYeyApqGMK/c9DVVt2sFFyKonHoV3xmsRB6ms2S5YF9hk
         Wr7lCeZ/VoWfXJDT5kRbMlWzI93XIkBznyKnzbpNtPsPC3aRblu/7gC94vK2x68abQPo
         bixRTukX0fHv+HnDOeHSrCpZmuXF1X+L1DcjXzvHnGHEP368Ys/iq51rqLd/efGII5vD
         vZ4cqW9rm5+9SPVhXWUTjes/matFmjNJv35VGgWE+AXAYgnnrTx/GAjcoIUSmRY3rBmE
         D/PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id mj1si99992pjb.3.2020.10.01.12.45.21
        for <clang-built-linux@googlegroups.com>;
        Thu, 01 Oct 2020 12:45:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 091Jdd8m014394;
	Thu, 1 Oct 2020 14:39:39 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 091Jdccq014393;
	Thu, 1 Oct 2020 14:39:38 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Thu, 1 Oct 2020 14:39:37 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Joe Perches <joe@perches.com>, Kees Cook <keescook@chromium.org>,
        "Paul E . McKenney" <paulmck@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Lai Jiangshan <jiangshanlai@gmail.com>,
        Josh Triplett <josh@joshtriplett.org>,
        Steven Rostedt <rostedt@goodmis.org>,
        LKML <linux-kernel@vger.kernel.org>, rcu@vger.kernel.org,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        Sedat Dilek <sedat.dilek@gmail.com>, Paul Mackerras <paulus@samba.org>,
        linuxppc-dev@lists.ozlabs.org
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of __section(foo) to __section("foo")
Message-ID: <20201001193937.GM28786@gate.crashing.org>
References: <20200929192549.501516-1-ndesaulniers@google.com> <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com> <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com> <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com> <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com> <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com> <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com> <aefe941251d5d58062d06099afb58dea1d1d4e17.camel@perches.com> <46040e2776a4848add06126ce1cb8f846709294f.camel@perches.com> <CANiq72mSjs4myQQtUoegjRggjTx9UF70nAcWoXRoTeLMOuf0xQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72mSjs4myQQtUoegjRggjTx9UF70nAcWoXRoTeLMOuf0xQ@mail.gmail.com>
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

Hi!

On Thu, Oct 01, 2020 at 12:15:39PM +0200, Miguel Ojeda wrote:
> > So it looks like the best option is to exclude these
> > 2 files from conversion.
> 
> Agreed. Nevertheless, is there any reason arch/powerpc/* should not be
> compiling cleanly with compiler.h? (CC'ing the rest of the PowerPC
> reviewers and ML).

You need to #include compiler_types.h to get this #define?

(The twice-defined thing is a warning, not an error.  It should be fixed
of course, but it is less important; although it may be pointing to a
deeper problem.)


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001193937.GM28786%40gate.crashing.org.
