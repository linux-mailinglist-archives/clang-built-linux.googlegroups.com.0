Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBNXY5X5QKGQEMWP2LAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD7C28403B
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Oct 2020 22:04:07 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id l1sf1941326ljj.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 13:04:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601928246; cv=pass;
        d=google.com; s=arc-20160816;
        b=GvhcA7V0GkzizMK6CDhG1w+OBe3cJJ/jtQLJ/r+oI3M/WLXEolmzdH/mjYFf7EwiYX
         z6XWBTXfmyJGVXtuBdmoifja+dz7vjasQ8LbUF7asXxN7SZwLT6fXUfhp6ZAR6g84VEr
         eeOXuS7WMuMcZCCDrU8QgNotb9kV0nUHVxVqWadeUy5553AzncJIezkSshCvY36LWIk7
         r7N9UbxNxvJpyCxUQcYWgA05z2DPhLyCsk4jr6dQlfNzJOKaFXCa22hFpxJ92fiD2snx
         9Kd9ljvXRsFvL/rAG5MrNVHDjwXhNbCv2pwP5HmRc2RpnAHnX1QqeIWZJXz+OpgS9u1+
         iL7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=U6BrKFi+GLh4u3abSlbdUXFecdkAQW7QfVqpLdgz2RA=;
        b=ElMiKfqAuVDdXT21epO1ae6bRpF+q9JH2+AyjW2/C/SONmbDMnNxR5Ly1WLUft3Ppf
         WGW4Z7g3dS8T9t+L/1+gf+Ozb875AuhKg5yZ2HFrrQ5XdiI1Fqq8/Yk4qLxM8gpDZ33v
         n7SV8WHm2wWRxyDu37e2M5IHfpVIUsO6/qRxdIBvDeoneIENbkMhGWrk//5Rl/QuGYBz
         CrrRKl0dHj4XMTuRiN+SBLl+tknyz8kTH73FVKtxjpmaerELRahn8CdWBRbSJJPlQKyn
         +Xk6x1OBILii3jEKxdZDyYYepO9xkhWwx5eQOR8mlAD/AJ4d/vnb7Bm2cRW2rhmr0dTC
         TheQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U6BrKFi+GLh4u3abSlbdUXFecdkAQW7QfVqpLdgz2RA=;
        b=HRvP0WDhHHuEq3fWg4W9xg/dq73bX89HjS0zzJf1YkZ+9l7O4QUpy4fhrHMwednphg
         Sygw0KNGe2Y0hkojp8emfxvhL86+393dmtQd5AN81D8aovJqoS7a+0TeAf1cth/Nsrsl
         LN9h/p1pxIQZIE3+vbh5bqrtyRlXsbR/+VDzbQcbnzmdGPjFptjNeuHdLKalVqPb3KKY
         eTVNwYBuylKp25voyTeR53b/salVBwNBdtW0H8ABtF29d+6G4PVCw0bJXNfQ+S0/26ax
         ourmxb2VzkSLUX48wsUsv2s1sHA7XOEedQXXIn1uXWHcxWkUDVRBokk1zD4Fej2taakW
         E8gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U6BrKFi+GLh4u3abSlbdUXFecdkAQW7QfVqpLdgz2RA=;
        b=pXzRIAqG/qT3M/8UA+QXrfjVxxitPrjTEcNGMYtgaNkC38YfWknH7lR0SqL9Oo73EM
         mr82GcrjAQ/S6UNFR2FHVGinETQJEr+KKGktP+xPDAOPP1gnizcwbe4xu3DYizgZpfG0
         RCPl5zTnhiQwSP6RtbwN/YcEt9AZ7iWEJhxG04Iji6iKAudJ859pmakxel0FDJNcPKkP
         RjHlemsqalPcA9MBNOhivm4O/A21DpQRZKMQFlBvdTniSnwkBB3asr6ezyuL5I4NY2WM
         0NTtPlGnTRUaGV33zhM49JkJF5r1ARS40/w6PqKPgKemIEMmxBrn6H7mE8jiBkjjLYBF
         mUvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339umljalVHrxKiyfEv2ym6zG9cEBPIQd150poh7H80c934npmv
	Y37OBzkCD19GNREEBNhetJI=
X-Google-Smtp-Source: ABdhPJxuL3rsFKS2rZljM2ufD3I+RaEKkGEY5FqWVN/qKxIR5+gvKTJvpDXbXWioOJWHKFn0NWuVrw==
X-Received: by 2002:a2e:3318:: with SMTP id d24mr465481ljc.465.1601928246739;
        Mon, 05 Oct 2020 13:04:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:804f:: with SMTP id p15ls630301ljg.2.gmail; Mon, 05 Oct
 2020 13:04:05 -0700 (PDT)
X-Received: by 2002:a2e:86d3:: with SMTP id n19mr474604ljj.368.1601928245688;
        Mon, 05 Oct 2020 13:04:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601928245; cv=none;
        d=google.com; s=arc-20160816;
        b=fbmau2TiCY6z+kXanALi18X3vW0ya1F6YDZ2L1ujkVMEVQdTdbK5zqYxeWB5y2aWtZ
         JxUH3dtNluOs89T7LeNVV0DUWs2KaSq1D5icd7CV3SRqfPu0zcv1TOZRL5LpGKrY8qCk
         QM5QfPXuqidbcUEt0YFEq3nvZEOxvD5q/qxkjDw3s7bfjXTSxsTjuOTyJMtpIgHA0cgM
         mUjAkp4TsChaPtYErPQZ4S5DYcjsa5zVEk/qFNu4/nwpVlO0Ktd43gcHGW7n4UPsi6k6
         XZwmIliR5pAemvB7Tta1Eoi6dAjQ2KNQU9qOBwHYSHEkwM10szkuK+w+clrdGDMiG3wA
         X4aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=LGuGJziZ0Pj/dkMaGdQnGe3mSMBDNHuu0RkmUXUoKDE=;
        b=CXP1V9ro6uyNVuTweYjJu7t8tyt4KmGq5gfz57+vX7IR4zLcoiblWi2n0QGH3Tw4of
         6cps9PsEgFqKC5qeN+r1MSOhZolk9MfBI68sLjkEszmdKE4v68q+0YMBvXsn3a42pFUA
         dhorJurfhf4OqKlWJorzVIyqVKuklr9NLudIom421ChHGqIrRjGUuPrFsUHpteg0aSVR
         7q3reyWHrV/oraUM74RgC3UuRAZ9/OkUolDb/9aVgxpqZ48AZiejSHg1J+RDQVMVtTVA
         XEHy3ge/3HgT278qbf31zODUvmcCZfhdUAszi4pR8nT26F44yJ2+mBla4dufTwQ/L+io
         /BWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id k10si36454ljj.0.2020.10.05.13.04.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2020 13:04:05 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Received: from mail-qt1-f169.google.com ([209.85.160.169]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mofst-1kj84T2snJ-00p0fr for <clang-built-linux@googlegroups.com>; Mon, 05
 Oct 2020 22:04:04 +0200
Received: by mail-qt1-f169.google.com with SMTP id g3so10703251qtq.10
        for <clang-built-linux@googlegroups.com>; Mon, 05 Oct 2020 13:04:04 -0700 (PDT)
X-Received: by 2002:ac8:1ba6:: with SMTP id z35mr1607120qtj.204.1601928243553;
 Mon, 05 Oct 2020 13:04:03 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-1-andrew@lunn.ch> <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch> <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
 <20201005194913.GC56634@lunn.ch>
In-Reply-To: <20201005194913.GC56634@lunn.ch>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 5 Oct 2020 22:03:47 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs+DHbL5CNw@mail.gmail.com>
Message-ID: <CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs+DHbL5CNw@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Andrew Lunn <andrew@lunn.ch>
Cc: Nick Desaulniers <ndesaulniers@google.com>, netdev <netdev@vger.kernel.org>, 
	David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Rohit Maheshwari <rohitm@chelsio.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:rkxqNMhIIri2RU/N8jKSy0ormWT7FedNutB8nerH7o1RJ/OBaDZ
 jGMXPa98UhXvQqa9wXZOPnuDb5sLTVK8DXbJzO8sWUCfdQgU3YJEibkOmbWplGGsk289ZMA
 hXDrlXVEPNEGUQUP+MsDbbKGQHfrc3LskVB2Lg/tP84QVMqVjnmvW/4mZKhZUAWIrFCHdZX
 aqH6ngxIeCPlOfKS7HQNw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:B/Y+fUjAr8c=:SF3IT9L7yqGa7+ndhhK1zN
 Ys/FPxv/iAAP+++sPjonPtVSJOeIRc+a6AFcyxXhCRIqGE+CNDEqyuIAQ9QEF1Umj59dL9wqz
 Wm5LwQbhJL7hIb6XXd6+7RNHZIBdfdIpui9TjlK6EV81ciz0IYVyJV8exK8C4+7ZxnSutHnyp
 zQs5L42XayVAgt0JNN5lQ8uh/AsT5lU6n49+Y7Uih+yQ00GSOQCkaFaJNOuHUqKU+qMwkQcyU
 FHi4N3Wim5/mDaYnXCH3H/PxE1SBm565TVzC/YTonC+sBjVKdM00xFnU9Uarziepe1EbwQleZ
 Vfb//dk6qNTdRJNzPKRQarQ73Jzw86xmK2uEOzcGPjtUh2Qf68T7wwE9GQE2fCDz0XEbr74PR
 MY3DvGdVa8n7IWHzaKK4pLq8iZD2UKjdiJyuFgNuzMGHQ8wxVgVvbT9LS2JF2QoRILC+JHu6D
 Uyv283lWNiCf6q8+BiQgigaO4Qxwwben2Ij5/UNd5WErI6CxJQks/7mkTJaA+Ttr/MubbEoVQ
 YjceVfkQ7v6+RUfr2dyVbNgg/FA6+C7ufF2IW+uO0acOzUAtbH8MajUAUULYETI/X/u/Mzy+U
 mdeOA5ecwVmHiHAFgO7nTs11zYZhtZv2ZsGmXygo7QeruppS7Gbuz45yt2VLlS/NEm4+zQv82
 ymaYIDGkn3Ytd4SFisR9Axz1HVahpBn4mUbdINkIvciMSed2pwvO9XsnnuOfwMIwZk0+glEHI
 cw+jB6/gxAY9E1wHqiSK9g4J98qQH2P0FbfrPo4jXdmpgge/ZpYCYKC6EuzgOrqjT21Gp2L+X
 1RAxcM0s+HACTH18e8rIY5pO9lCwF6opKuOekfahKr8zCfwsHkX42phexfxhzTAO1ZJ029c
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Mon, Oct 5, 2020 at 9:49 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > Sorry, to be more specific about my concern; I like the idea of
> > exporting the W=* flags, then selectively applying them via
> > subdir-ccflags-y.  I don't like the idea of supporting W=1 as defined
> > at a precise point in time via multiple date specific symbols.  If
> > someone adds something to W=1, then they should need to ensure subdirs
> > build warning-free, so I don't think you need to "snapshot" W=1 based
> > on what it looked like on 20200930.
>
> That then contradicts what Masahiro Yamada said to the first version i
> posted:
>
> https://www.spinics.net/lists/netdev/msg685284.html
> > With this patch series applied, where should we add -Wfoo-bar?
> > Adding it to W=1 would emit warnings under drivers/net/ since W=1 is
> > now the default for the net subsystem.
>
> The idea with the date stamps was to allow new warnings to be added to
> W=1 without them immediately causing warnings on normal builds. You
> are saying that whoever adds a new warning to W=1 needs to cleanup the
> tree which is already W=1 clean? That might have the side effect that
> no more warnings are added to W=1 :-(

It depends a lot on what portion of the kernel gets enabled for W=1.

As long as it's only drivers that are actively maintained, and they
make up a fairly small portion of all code, it should not be a problem
to find someone to fix useful warnings.

The only reason to add a flag to W=1 would be that the bugs it reports
are important enough to look at the false positives and address
those as well. Whoever decided to enable W=1 by default for their
subsystem should then also be interested in adding the new warnings.

If I wanted to add a new flag to W=1 and this introduces output
for allmodconfig, I would start by mailing that output to the
respective maintainers.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs%2BDHbL5CNw%40mail.gmail.com.
