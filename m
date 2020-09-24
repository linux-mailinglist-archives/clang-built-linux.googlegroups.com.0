Return-Path: <clang-built-linux+bncBD4LX4523YGBBFOOV75QKGQEC3VAR6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id AA60D276502
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 02:23:51 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id s204sf679176pfs.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 17:23:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600907030; cv=pass;
        d=google.com; s=arc-20160816;
        b=wOCR29LrTbY1GL26kDz0iZLgm0tijptgYIxLk6MsUk1jLP8wZkO/SMXifqpqxixHMO
         /1L61y43LN9yXjtNCbrgiwk3bhW0LIOHmOt/AraMyz9+3Pf/ah1gQik6bBvnCLvXZ17y
         wFukCt2zps+vMlrpang1h80l2BhvLwO0CxB9UeyRAsIoGddbCJmxdTdsHAKBieRercNv
         TMLwLdKZ8abN4tt5xFlTvhCdWtZ/eTwDGuD6uZ1cKkaSiITV3xoXayVI4fEnnkeTahEi
         BjsRckrtHZG52SuUvrkDT5vqRSCOJJ5srnPaIVabCLGWy5tpowh77lLPNdvJ7Fw3aNue
         dvZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Rv0457fqsKf8BA8iRw37hAR2uwluaJY0wu7cwwHnDWo=;
        b=eTVy5Spl4JDdKOr3a6DAsqmRPNeB2mBmK7XY6JnYSwd1TmEqfZgw1Nm9dV+I7FyDoT
         +MfynUIWYpoNNkucAiQlMETgFnOBGUjTScA3p5PD2ZZ248NjPGwQwPtALAtTS6Vlr2Wu
         pjK2dEswJqDeJMakVyPLGIC5fyj9SG+RB2m5r76gXqBEFIfZSbKy3MqvrDhKiprfinpK
         bicETZ31eeSSg4g5ycSsYk8nZImvo2Vzl00dZ4YrTj5Joc8fjTrm+QrAJ3mnFv48D/uC
         chBSMhbUjXhXclR8PxZeBTILtmBeLJQTVRIItoBdS9W2eIRiqALoBBX11WK2dGaKjbOa
         PgXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rv0457fqsKf8BA8iRw37hAR2uwluaJY0wu7cwwHnDWo=;
        b=bR7QB7xvYQr+cSOigOT9M7pllqEbGNhgKnV1fuUNIop3tBFNs2KnnxAB3u1OQWWjfj
         EGUqnXhur3RVmrMBNV4dLqGJG7rT6ZKP4wWNDHhhQm7frLeVAKAhCy6yyHB//x+ZM/Gy
         vj6qDLML0klmqdqcIzUZgyG4y4hnYamvAmvv5ZGDYiV4uEJO1JiIGTbHfBiY5nR16DIS
         qkEWRlk3C6USJ3z5/W/0FNjyYUxiiyAZkpDbPokUai+IwxODKVlRFPkJL308fIp3KPRz
         Bk7G3pOt47Zoic78UQHgrpJkpR2+l0+6K0frihTbKiXqvic5SmL64k0jedDJGh90rHNE
         VeRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rv0457fqsKf8BA8iRw37hAR2uwluaJY0wu7cwwHnDWo=;
        b=FdDne5w13W8uRTmRZAs1sG8smw8MtRgexchhtwZy5q/K11hVLRve7c2nSDR/jxVcID
         LpTkGwvUlwFQy6akwdxfNEp2pBHFeYR696c6lc9koyBTlzxahh9Qzd29Hg4bw/SVw9ig
         94vWsJHjnsjYb3ZfbYMR2/KLmh70vHDFI6vNhSjyvyhpA+2Z/x7qEF6EV/E4f38oTX38
         FXa6WheRrSwyigADZ+KxVtcMMNMzDMGtr2QHjjzRKva5pfS8JOsBCP6BzHeEh2p5zf4E
         J+znhxxnt84n5Q1HfpVeWZPRAkl0Y3ca7LmWE3pV9cH27p6iehfO5g87d5GseLz8lsrV
         hhYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314By1qOXKmcdIOH3IjbxcPZFVpE/J4jVdZHeP1OYUHghw4jQjh
	wj3jdL6tbeuvaMgUm37CG14=
X-Google-Smtp-Source: ABdhPJwovIjUIJR0JhQW5rJzIzu/whCIYuaH2JS9UgermSyR3lfmsQfuJgQF0H7tG3kynvSfBN/Z6w==
X-Received: by 2002:a17:902:b685:b029:d2:1e62:4cbe with SMTP id c5-20020a170902b685b02900d21e624cbemr2129668pls.58.1600907030135;
        Wed, 23 Sep 2020 17:23:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:562:: with SMTP id 89ls523606plf.4.gmail; Wed, 23
 Sep 2020 17:23:49 -0700 (PDT)
X-Received: by 2002:a17:90a:f415:: with SMTP id ch21mr1723223pjb.18.1600907029456;
        Wed, 23 Sep 2020 17:23:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600907029; cv=none;
        d=google.com; s=arc-20160816;
        b=vqcbTgyNjIQRCjIu1/d7w4Pc5tD7WndRxAU30BKsSr8u8HRS5hemS+OyfLYPswpVSI
         QJKmnwQxs2WUXPWAYmPNTA+LJSrN+rCW/345BVE+uWHnn0OcV7qAycXmnSpW81CoC/RP
         ojg6GXwJlhFx8plSActC1tHQNLEhcnC6N4ylaERRnMx30IIsL8OOtCUEMsRQE6mSvMsU
         BMdHXxeF+xqPnzfmGWptJOy9aY9aAmAGfKrFU/pWjL6dVBHdY7v4eliHkRhHYsOm9QsJ
         Ev8x9DlO9ZjOhjIgtcw9UmyyZzhOvguHxH9cvgnX8OaIpGjtpeeLzVoaVX566GWkJkD5
         ez+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=k+FzTKeubuvw28ADD85VpC+FcE/mAkXHgcewOZS4LLg=;
        b=iLecskmN8tlukGTc6DmPNqeW74+oVcUel1e/xLMyb+y9mro3ZswG/VuH9JhJsYXsYO
         BSL+OJwkAXob/K7zLNOyof+Wgqodu3rNSeGscpxMyHqIofs8Z8ZtvenDRWV+lIDzNkIi
         pmNEsBKXHtaWcE0rqXSzCKOHjuN1n4VDAveHdIDK0vh2Vo5ShbNb3CoDt90Y7D1XLmob
         Oon+TvTYSqdHODv5Vo3tBbFbSfKg9Rx8wEM6Hw34gAwNtjSsi/fHk95TH3zTOUOTZxOZ
         PZEKBmVSucN5hDlyBwZICnS97dsyyS3DJgPAImRQrD1IRf9eikFrukKUlvxOKp3RbUCV
         tI0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id c4si121789plz.2.2020.09.23.17.23.48
        for <clang-built-linux@googlegroups.com>;
        Wed, 23 Sep 2020 17:23:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 08O0KWux022396;
	Wed, 23 Sep 2020 19:20:33 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 08O0KWV3022395;
	Wed, 23 Sep 2020 19:20:32 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Wed, 23 Sep 2020 19:20:31 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        kernel test robot <lkp@intel.com>,
        Michael Ellerman <mpe@ellerman.id.au>, kbuild-all@lists.01.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Ulrich Weigand <Ulrich.Weigand@de.ibm.com>
Subject: Re: [linux-next:master 7032/8629] arch/powerpc/kernel/vdso32/gettimeofday.S:40: Error: syntax error; found `@', expected `,'
Message-ID: <20200924002031.GY28786@gate.crashing.org>
References: <202009180302.cc60Lfbg%lkp@intel.com> <79256845-c7d4-94df-adee-9cd833fbca03@csgroup.eu> <20200922163519.GL28786@gate.crashing.org> <CAKwvOdmhW_T-J98tQRoMCAgY6uPnW=bujtpDw5KauMnHDE4n=A@mail.gmail.com> <20200922215325.GM28786@gate.crashing.org> <CAFP8O3LaxHqpeUu-iifJMC=YkYmNXSUyxCbRnSdsMRD-pKwMGQ@mail.gmail.com> <20200922232956.GO28786@gate.crashing.org> <CAFP8O3+XC59aJGG4RcSAW_pysftpobXQ=sbjqgeNDoF=TBP7sw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3+XC59aJGG4RcSAW_pysftpobXQ=sbjqgeNDoF=TBP7sw@mail.gmail.com>
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

On Wed, Sep 23, 2020 at 12:26:27PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> On Tue, Sep 22, 2020 at 4:32 PM Segher Boessenkool
> > On Tue, Sep 22, 2020 at 03:51:12PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng =
wrote:
> > > On Tue, Sep 22, 2020 at 2:55 PM Segher Boessenkool
> > > <segher@kernel.crashing.org> wrote:
> > > > This is the 32-bit @local relocation; its history predates binutils=
 CVS
> > > > (so older than 1999).  It is the same as @local24pc (which is docum=
ented
> > > > in even the oldest ABI documents).  It *uses* the GOT (or PLT).
> > > >
> > > > If you do have @local24pc, just add an alias @local for it?
> > >
> > > R_PPC_LOCAL24PC is a legacy thing.
> >
> > I have no idea what you call "legacy".  It is very much an active
> > feature.
>=20
> R_PPC_LOCAL24PC and R_PPC_PLTREL24 are not inherited by ppc64. That is
> a pretty good sign that they are "legacy" :)

powerpc64 (and powerpc64le) are completely separate ABIs!  *Nothing* is
inherited.

(Not replying to the rest; if you do not want to implement correct
32-bit support, that is fine with me.)


Segher

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200924002031.GY28786%40gate.crashing.org.
