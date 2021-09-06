Return-Path: <clang-built-linux+bncBCVJB37EUYFBBOHN3GEQMGQENS36VPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C16B4020A4
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Sep 2021 22:14:50 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id h14-20020a62b40e0000b02903131bc4a1acsf3807696pfn.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Sep 2021 13:14:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630959289; cv=pass;
        d=google.com; s=arc-20160816;
        b=bC3i3PrOaxTVf/UxeB5+ic2hCxNAVw3Rk2qXqRCUKkUZfryUBxAlLcMbrj1jcJeCLD
         dQJJmTSUIThIt4T63to/3T1NGrsjmM+dNrDYBM/4JpjqVIw4rEEbgHC6ye18pIBYyURg
         QXW+66d+mQ/nYCPZfCvJ4mexfmJlIRBbp0zWIag9gN3ZNXdXfko6hjuXPV56pZ99fHhC
         B+9v/1dZ+C20vPAlA39UjMaFMS+UWUiSOBM84ie8N0zzbRtTmxy6JYBuC1NV7V/BLfhr
         denW0ocQYMS52pjqk/qTdmO3DdHuwDZfvjrNQACWNoy0tYjJt8yN69nYPlaJDHWMSrLe
         ZDpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=N2hZ1gvh9jn51rwbnVQGpAqPOzKWOYL9PuHva/FS4hI=;
        b=qLJnn6OEJtc3AdrCjgZ0ms4qCtjnx6p/Av3rMehtoLeXT0Cud9Uop/eLOIq6Y+hW/5
         gMDI5I8B/3+PQyvAtAOKJgjYbnUmg5hyvLxLL6LhMfpWgE0NQXDKzDuKRUKMW8a30MrD
         4tPcGIPJLej0ZGED/lufxXm8R/uKj8P2QUDRThwe8v0At5x823V9OGjoNsP6p0JvkgU5
         ILkjpTMw/koftf2OJb6YRQFLoXIja2VbUpwAVs5iLfhoROkZ/mRXYuGQuhoSq+RQXzEz
         foYusRyj025loRi/ocsKwGzoijSMzjddAWLGbcCIY8LVNvkmYH4VHqZuQoXt2WCmnON5
         h7bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AL+QQwgl;
       spf=pass (google.com: domain of jakub@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N2hZ1gvh9jn51rwbnVQGpAqPOzKWOYL9PuHva/FS4hI=;
        b=F3CRoTMB/z5ILtLGtOluqmBwLTzkA4Kg0a1Hcyngw/bzVvmHsYjLuHmoBA43sv+6h6
         oT4WKiNPjCMSdtvYSQQFjcnDCgvp7sBQmYxul1zYmloR3NjVa8X2DB7VoU1rYIfKzkSD
         ILJqTnZqo35hvlNUSKVpJuKjba7AE4l/WkN+GzazXOtpxSwM65wa7jID2e0/cukSd5Qf
         UCTrRKQvu+wCjzbMYYD+ED+dBxPfo4O7lBADv5lhDzEDzWbbPAlPgGYnttUyHwZUHa4p
         aSX70oH74YrWyabhkOr69CPgH8AT1jQbNA1h7oBqTlBzgPVUk+05//0c3aACjsYMsz8P
         lIvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N2hZ1gvh9jn51rwbnVQGpAqPOzKWOYL9PuHva/FS4hI=;
        b=Jn3awhVYOTsCV7D8SPDpKuN7OWp9nQ/qV7xnO31GuJTDxi/JQPRm7Fx8NF6I6t7wOD
         pvMZ/183WnbVp4sE+mVevs294f7KyVIa8/+jymev6xIP65QGyn7r42Fec+f705lCIsQb
         TZoq6R6NvWJ/ldnlWh2tWwjfU+p6fA0S0QZgv6WEml8pDYeu+aS3wC7oUOPOMF/g4lSt
         ry0RY9oFjKMrBcaHaYRKqitovfJ24OmJO9fYHnENYcB0GMky/a3JrGFSJL//n5X9nhCM
         JVNeLxV07o+br25mH7vs9zLQjs4lnVVRx3fs+0zMQ3aj12NBHg1XDLBjIqv4X/pzKZ1L
         SfXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GFerX4Lk4pjUPwm6AiYe2p+Hmvmz66p0uHGCxyHIh/W9BqiDZ
	3eSCi0DIY1qu3UJt4e2jgj0=
X-Google-Smtp-Source: ABdhPJxIbKkI8Gtpl6oWkp7nmWBaPOcmMZeUrNaNL+hEJ9am+geAVuMBGKtvOtNbCEICguQI8tflyA==
X-Received: by 2002:a17:90b:3e89:: with SMTP id rj9mr780945pjb.138.1630959288875;
        Mon, 06 Sep 2021 13:14:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6487:: with SMTP id e7ls3583381pgv.7.gmail; Mon, 06 Sep
 2021 13:14:48 -0700 (PDT)
X-Received: by 2002:a05:6a00:796:b0:3ed:989b:f0c3 with SMTP id g22-20020a056a00079600b003ed989bf0c3mr13293712pfu.9.1630959288341;
        Mon, 06 Sep 2021 13:14:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630959288; cv=none;
        d=google.com; s=arc-20160816;
        b=Dcdr3dD7MRZMxebhKI29ohGwt+1aWhwZJ/kJrFFcXPv2HkSIPawl1oV1dL14pmzgsV
         BS5r+RPy2zW5X7rJXM/VTlG7skZB9q/fczMhL1aXPVsf55rIGFrxVEZ6O2G8FCJQCNwr
         3YitnYzzJ3eVfCJYdoaWrPXEtKenfQe/Iat/H+61HWEisCo3vW3oq8rO1QwEb+r4kIrx
         SfsGxiBsdDReLkMxJIF596187ZT22wtpqq1T6XeyMQm5DQIqWMazezWO6pDHifG9wMkR
         lrTBVPq73WSVGQSpB8VfNwWhaEbLjOjm5DsqLta4oAqsDwXu/uC7cYBrE62C1GqmVge4
         V/QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KOxnjIKbtZLPasj/9UEIQeFl1DhzMvB0E++PoyHI69E=;
        b=XkpdE2Wr7YYf1QKUhZNJt3yHOKh6sL03xcYpCrFPmwOxhn0NQjqVY+8KrJe5aEnjUg
         IezL+br8HNN8j38lem5PiXx0jDLDW5O3FR7bDSsTkK/j1/Rfadh+KTwQdXUwGrRJJoRu
         lW/MnO8ZIa7Z5mttQKg9lkyr2K16OpWIiq7iBzWB4oG7Rhqv2oP3HPb+v/D6e7NkubDE
         m3UvJzu89BHdc8lGqveRJrB6yFNKn11X62DIMQWQNYB0IMlvfyPCV7MgsX+yVDVjvFN3
         FIdU9RsGggoTFIk2Qh7FL7jcFxIvK6hSlHtiJz9o224k0PnvmKKx2Zt3L6xU6jr9QWe/
         gEUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=AL+QQwgl;
       spf=pass (google.com: domain of jakub@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id j12si423089pgk.2.2021.09.06.13.14.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Sep 2021 13:14:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jakub@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-318-rSbdxi3SN6WnLzs_n_XJCQ-1; Mon, 06 Sep 2021 16:14:44 -0400
X-MC-Unique: rSbdxi3SN6WnLzs_n_XJCQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C6A455122;
	Mon,  6 Sep 2021 20:14:42 +0000 (UTC)
Received: from tucnak.zalov.cz (unknown [10.39.192.10])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5BE2026FD1;
	Mon,  6 Sep 2021 20:14:42 +0000 (UTC)
Received: from tucnak.zalov.cz (localhost [127.0.0.1])
	by tucnak.zalov.cz (8.16.1/8.16.1) with ESMTPS id 186KEeTL3025921
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
	Mon, 6 Sep 2021 22:14:40 +0200
Received: (from jakub@localhost)
	by tucnak.zalov.cz (8.16.1/8.16.1/Submit) id 186KEWQI3025920;
	Mon, 6 Sep 2021 22:14:32 +0200
Date: Mon, 6 Sep 2021 22:14:32 +0200
From: Jakub Jelinek <jakub@redhat.com>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Florian Weimer <fweimer@redhat.com>,
        Linus Torvalds <torvalds@linuxfoundation.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210906201432.GZ920497@tucnak>
Reply-To: Jakub Jelinek <jakub@redhat.com>
References: <871r644bd2.fsf@oldenburg.str.redhat.com>
 <CAHk-=wi+XKYN+3u=_fm=ExqpEaHdER0XuKxVauHYVCPKpKR97Q@mail.gmail.com>
 <20210904191531.GS1583@gate.crashing.org>
 <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com>
 <20210906154642.GV1583@gate.crashing.org>
 <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com>
 <20210906172701.GX1583@gate.crashing.org>
 <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com>
 <87lf49wodu.fsf@oldenburg.str.redhat.com>
 <20210906194808.GY1583@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210906194808.GY1583@gate.crashing.org>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jakub@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=AL+QQwgl;
       spf=pass (google.com: domain of jakub@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=jakub@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Mon, Sep 06, 2021 at 02:48:08PM -0500, Segher Boessenkool wrote:
> > This is an exaggeration.  On several architectures, the kernel cannot
> > use the vector built-ins directly.  Some of the implementing headers are
> > very special and intertwined with the compiler.  <stdarg.h> is currently
> > not such a case, but it's just not technically not feasible to avoid
> > dependencies on all compiler headers.  I think this considerably weakens
> > the case against <stdarg.h> because the compiler version is so obviously
> > harmless.
> 
> Exactly Florian.  Thank you for so clearly making the point.

Yes.  While stdarg.h builtins haven't changed for a while (we had some since
~ 1999, changed them incompatibly in 2000 and again in 2002 and not since then
and I'm not aware of plans to change them in the near future), e.g. for the
backend intrinsics, we change some every year or two, the only guaranteed APIs are
those provided by the headers (x86intrin.h/*mmintrin.h etc. on x86,
arm_{neon,sve}.h etc. on arm*, ...) and the underlying builtins are
sometimes removed, further ones added, etc.
stdarg.h is also such a header, although admittedly much simpler and less
likely to change.

I must say I don't understand the argument about uninstalled compilers,
uninstalled compilers work just fine if one supplies the right include path
for them, for C it is trivial and apparently the kernel has been already
doing that through -nostdinc -isystem .../include, for C++ a little bit
harder but we have a script for that.

	Jakub

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210906201432.GZ920497%40tucnak.
