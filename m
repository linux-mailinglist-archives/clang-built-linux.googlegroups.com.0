Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSERYL4AKGQEOGY5YTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8450D2228B0
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 19:05:13 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id l26sf1266117vsb.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 10:05:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594919112; cv=pass;
        d=google.com; s=arc-20160816;
        b=LKE16DhULzkvzc12mJsrw9UDeCK6ZKYxDCep0ZYEP94908HVCLInYxtlYp9biL5ooR
         521QYusm8HTdr/b9DTp+0HTEKu9VuFjGsqk95gUbp9mEA69Jy0QKD1VAjeHY5XgG9dkt
         nRfjx2kSy0u40Qvz5HEtnqIpQEAdVIHQSAavVVy4oIKbN6YgVb42x3+VrjgWY/ZEIy9Q
         Gt+OeA//HAPpsicvHpc+D/jeTTJVhJLZSWBq2CC3kfN5hXb8DEa8XrNoiXKu7rOvE3NM
         UHdZweDxtOv2xTVLdTWrwEUGG/mqSUnJGK6YEkea3uWMEVAfx1I59Egd6FFfAayC8TlU
         Lkdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=t9wO6tigSEXm8zcDUdrkp+5YVYyd1OQ79QgQkg/Rm3g=;
        b=LIag1syaoBryEl5/dyZY3FsyOE8vcO4SAPK1KcOI/1B+3kpRJigBOgkYRvjSUi+jva
         gCF3wtJXDO5Jfz3/wCtDN3ydTXg+oN6l0C1teOAg3dlnMIsgnhmUoVCYupnnlKYOo6+t
         j3pcas2ktvd9lP2Qj8afHZg53hq0r+wM2lJX7c9p2zUCdj2/W2ImmsCtbdvYSSLHkbTB
         vvMIMcmX/rkOCTyDCADGc9n093SYK/f/qNDSTowRhflkGQ/BRIt7MMT1CeAEr7Xcu/eK
         3DlVX0rXCujBIVysG7jhPxyKfSJUozQZA5lKL49knIac60IybZDmRHDvjmUMlFFf3ik7
         GYEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FKj1PFU+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t9wO6tigSEXm8zcDUdrkp+5YVYyd1OQ79QgQkg/Rm3g=;
        b=iCJgirS+Cqup9hotYso0Yc+xyeAl6gohwzJVF4RtIXd/y32rRsJbH3wm1TM8wCndS2
         Fu4MCj7GKYXFyhLUYfM8M6t3zT9mey92tKmP/0SpW0hKElW3uggqzIufak6fNbWVhfAI
         G4/j9mgOB342/3zwfGitRDcVfCzyle6iOxeF3Q4GLggXMjO9rwplBaQmBlRqAzjz22I4
         tpSrbIH6Ue1Yf9bIQgc4nm90nr3CCujmfT4Mlc3jlrMCt+jspu9cIzagyyYiMoemzmER
         cgPxHoZQDGalpWkumOY1NCb0XQsnNYEwDtzGFaT15IqXc1yG8q6i03+J8tX5vaw9bJ/c
         ItDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t9wO6tigSEXm8zcDUdrkp+5YVYyd1OQ79QgQkg/Rm3g=;
        b=kfaowSWOQjVZTrf88NRZ8T2VYFC3u5zYmWor47OhM9PGTLGnmGMfT6lGj4G1QIKBIz
         k2+77LGvIDvKkc19SYOWorCiIcFeatIUD/DaPbE9s4ba+KJGPM48uP9CbwxOOsEppf7D
         ykQErNpU2umNP/TqG/WQy2RufPi3h/ZgHEBhwhdGrU+4e5EaOU6rzu+16HT2ioUx5ODW
         s8RQSBMqXnMRy4aJ+bbPy9+lX6pwQ9iNylPTPjFotCXAPJn3N1vcH7tSLuimpoaUicln
         qddtKydvtdazfMk9WaoXW2oTCTnu+Kl1PdQ8K5VaUEJhsmggQ348rtIkdQAmxJXCWNb/
         DVDw==
X-Gm-Message-State: AOAM5304oJP/maZE2gcjEBBaq/n0gTlYlj96RnhwA6+FLcPEDaKTgie8
	xIfPyVIQJaxmQMdi+xtyqrw=
X-Google-Smtp-Source: ABdhPJxgZPJP9miWfOH6oHGLe9EGHaj2uaKVGl1va2I0p7ULkEglVR5I+xbGi3cwD2MLUnD+j11twQ==
X-Received: by 2002:a67:7c11:: with SMTP id x17mr4356601vsc.195.1594919112381;
        Thu, 16 Jul 2020 10:05:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:dc0f:: with SMTP id x15ls801930vsj.3.gmail; Thu, 16 Jul
 2020 10:05:12 -0700 (PDT)
X-Received: by 2002:a67:e8d1:: with SMTP id y17mr4237717vsn.71.1594919112032;
        Thu, 16 Jul 2020 10:05:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594919112; cv=none;
        d=google.com; s=arc-20160816;
        b=n5LElxC8WCPiBFWfZI7RMCiXsVl8xx+qVpZ9OA8uoVwpjzNrdHY+hvkhrv3iEApGcv
         rD7WYlzAq9f7Pt21ut1D7vGvMaAIVmRBGqm2OHqQ0VfwthTPQRexjIT2d9phDyhhEACv
         BLkNOoHT8bCOFg0leiMHJXmlmr9ERsFHTKWY2lRWteJN45LaZL+OO8O3k5tI/UOiBpI0
         bEg7ksCPDmwc6a0G+VooNJo4hj3PwsY07KFScZJGUEZoqEgaHTbZz38ok/ZZtc1OR+E9
         pLeyfeOm8kzmbeKp18gGcYu7MYeCSlW/LffdIWzUzPp7A9GHmpqf961Mrqs4asth9fyb
         1wJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=j14+opphqNF4U86DBZtMYzwDu8f+tRjw4XJQRMpPA4I=;
        b=iyUZHTVplCJ1+m5RPgJRUhNdy0eP8I5Qh4iYCMQa9C+fROqoDCAQeiuGsZ1jqBDS18
         TdjQo88tejPSb4EwExeq2j11NGdoTXwyPKKHGNZ1erPaDlg4/JG88AJioPlxF4N4bZgs
         T83OEPVG3Uhb3IRQwXBQ1qZPM5Yd5h+3lgojLGvVBE97Iz+sRg7+S4M20uZ/J7t0KoEg
         7qC0Cp3QwGEDBMOBCQHuMVKdLTIoa/cFHI3Riia53/eoN0T0hcrgiVpYDiU8wr58nZgq
         HVbXXtQNyrzCAoKOx5iL9eycovvr1EwUUFCHXfaJSkoqg5VF8HHUmovA7t3QJsF95Kxq
         yHWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FKj1PFU+;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id t26si377630uap.0.2020.07.16.10.05.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jul 2020 10:05:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id gc9so5120725pjb.2
        for <clang-built-linux@googlegroups.com>; Thu, 16 Jul 2020 10:05:11 -0700 (PDT)
X-Received: by 2002:a17:90a:30ea:: with SMTP id h97mr5949275pjb.32.1594919111381;
 Thu, 16 Jul 2020 10:05:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdn-2E=v_7Uie71pz2jjYCKnk98K1Ly8EkpxzvC6M5pXFA@mail.gmail.com>
 <20200716112840.GC8484@osiris>
In-Reply-To: <20200716112840.GC8484@osiris>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 16 Jul 2020 10:05:00 -0700
Message-ID: <CAKwvOd=_JL3+L7dY0W8LDTSer3iWvcwSqWoLN=_gR6zc86hDvw@mail.gmail.com>
Subject: Re: linux plumbers + clang + s390 virtualized testing
To: Heiko Carstens <hca@linux.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>, linux-s390 <linux-s390@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FKj1PFU+;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1033
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jul 16, 2020 at 4:28 AM Heiko Carstens <hca@linux.ibm.com> wrote:
>
> Hi Nick,
>
> > We were very excited to see your patches going by for enabling Clang
> > support for s390.  Since then, we've added s390 builds to our
> > continuous integration setup.
> >
> > We've been running into a few issues with doing virtualized boot tests
> > of our kernels on s390.
> >
> > I was curious if you'll both be attending Linux plumbers conf?  If we
> > carve out time for an s390+clang talk, would this be of interest to
> > you to attend?
>
> I will not attend, however cannot speak for Vasily. He will have to
> answer as soon as he returns - besides that enabling Clang support for
> s390 was done by Vasily anyway :)

Hey,
Thanks for following up; I got a bounce back from your previous email
address.  I had just noticed your update to .mailmap+MAINTAINERS last
night.  You beat me to the punch.

No worries.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D_JL3%2BL7dY0W8LDTSer3iWvcwSqWoLN%3D_gR6zc86hDvw%40mail.gmail.com.
