Return-Path: <clang-built-linux+bncBCQJP74GSUDRBNWDT74QKGQEHAGCXAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id BB99323A27A
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 12:06:47 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id g7sf1422823otn.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 03:06:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596449206; cv=pass;
        d=google.com; s=arc-20160816;
        b=YyqhwbI3Jco0wMPChrNro6RC8pmlrCZINAgoEaVhBGxqvmgSvOo3lRdFDzceQz4nMj
         Z+TXTzd0ltkx0s7NUqR2Wm11i8RybZWBbUy2YdSkWcKXXg9ZYpSFOfkArxjqFtxH2D4q
         goeKeta0Bnlhigk+mexnT6MCdgz/M2yzqk20BJ/fTZy0cPJYz/BLs5OLjudm5wBOXfiz
         itcPw5Vk8J1GDg4jpzC5WV0zOBrThpQLGHhtOgxUOzh//sqemBh/0gZXE+2Q03Q1P+f5
         kPILt8MXTwZw6FP8UrNbsyBOIqo4ItGGjHv45aFgo2y4k3gUxBPHNa+d+/fGTh6RyrKU
         dAtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=oHMm7hr7UoQngwelZ7Qp3Naq4eVOzboUN6lHwwXzzZM=;
        b=Jw3uJxQwtymsp6USf/I42JrS7QhEugMf1U3jeHattNZHMjZnLNtGlh7heG8DJRIZHi
         /pmDWfvtJxHf2UaTLG6IaskHNVoid0op+NfJWV+HZdh7mNCJoS1U/9fajj9wesDGrJRp
         P18A5dFB9SwiU8WBdXSms7XLDKB2sno58wdJFBa8WH9Pf4MKKAdtMO0c16LDvG0oAQXX
         3kcZCDSzGsvJXVmgtJdI4bpDJ0sBdDkE9rt/Zb67YTdNTMMxTHedDzqoN9ce47U3BMXT
         c1DJXbZuFfbFuGhvzoBPJqDTGLvRbNtaf2PMCbNa0dx/0j9a6Lweo7PPLAF5C2Vfhjnc
         WlVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oHMm7hr7UoQngwelZ7Qp3Naq4eVOzboUN6lHwwXzzZM=;
        b=SbyWRQ9v1lf42xUDKFi3Ap+g5V2X+jerY4gxz5S/PEwJ08on2CdnzEKAQyqhqhShGa
         fQROO1rlgy+MbjrR1T9auLDC4MHoZIXEM0DA+ZZei11AZ9S+lRXeVdUmCr3kazTvznzw
         OhL4rLvky66UidiiMj4v+x1N+42YB2Q++ncVEu5D+4hc0iCiqrV7hzcNQtlHVzzraIc3
         sH7/kUpVOe58EYtH5OtWwxwS+1/6AUVJjD3dlkhwHnqYJ3MUCD6BG7Tyv5zHQWrYzg3N
         UBI5NiYVyrC9HkqNtG8GPLgO6SBFjuE/tRA9StFgnY0eD4h9y3jAyFr6wpTdD4yGGTA+
         +USg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oHMm7hr7UoQngwelZ7Qp3Naq4eVOzboUN6lHwwXzzZM=;
        b=fbrxfvbQzNSi7VIoPdw+8U/oEM10Tc9BqQI4bumH78zB2s9haUI+osbFcA8oIpKXhi
         PV54HtRw4IBwNl6jL+aX2JAMxAI2sWspKCD9grRI9wnAGmWY9K8wmg2QKgxc4wdAWbOX
         sJ5VZxkQgzhZ4mbKvBqwuFytIim4nSoTcI9DSxA3pwBfHXS1e0A4U9U/lLtkGM5kZsfw
         PpV2YqcrGFhB45eNrBnSCLi2isVP8w/YoDVwNJ0RGCc0sIW2NAKOuuTPVyH9W1wKznF6
         bUwyUzuImmrN54/pG5Pg6260Dr84ALQtetG6HHcvpg8jamlQ1Y8czBN73iEXbfV/K0k/
         p7Bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533icoMRJEWkrZV4xi0X28V+cgOOftKb9P47ZOdQEJ41Xgjum29s
	w0KUGf0R3Ua/QYFmsxgs4q0=
X-Google-Smtp-Source: ABdhPJw4CIAfrZcbibvobfj0bucxAXJ+Mxkrnr1TEWhYeiM11genHDsZFAf7j+lRTCF9pzgvEHBBzQ==
X-Received: by 2002:a9d:6b0e:: with SMTP id g14mr13041255otp.171.1596449206434;
        Mon, 03 Aug 2020 03:06:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2103:: with SMTP id i3ls3242762otc.3.gmail; Mon, 03
 Aug 2020 03:06:46 -0700 (PDT)
X-Received: by 2002:a05:6830:3196:: with SMTP id p22mr13843332ots.102.1596449206060;
        Mon, 03 Aug 2020 03:06:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596449206; cv=none;
        d=google.com; s=arc-20160816;
        b=gtA8fR1Dy3Q2VKB40cWDaokywgMoqd33s8zZ1WiCXCiyaH4xVR62BsFVPm59benypu
         JjegvBSFF/Az3eS0HtcBjiTkFpj93IfSQC1P80bSRhqDiD6S+fkFpVvBmnZKKM834dUz
         VXzCHsPsoR3OVzGfkJG5rMPPn/yy9mv0G+EooN9kDQ+zSx+becxTCwzpxW0Dfaj/YsnK
         vSQhpPOne+29aLB+S8kV5VgsNYnh2B8Uoio3UHM6xZEnO3NEfzjyBDP/ZLsPPZLAoKDb
         DnfBXI+aydNSSKLOcWr8TS/CAlyKgbDWiWlcHUfnT5RPn5mgNb3bPr9COoWhZU0vFlIe
         ZMpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=OpbEohH8OUi/epyUcg1f5tBFIW7tKev1cp8OSm9Qyi4=;
        b=y3xuGrLJN5BLe8ThAbsoXb1qNzFYmFolCX5LWUAHohZE4nq3BzWji46UHZ18v3ekee
         FHiZyC0FCknGsl579UlVDpcmNow3uYpVfz6k5SAoXNlbNFyCAVGYRzj7G7gEmq1bRc6h
         ma1Z5eEurmCHf0DYzb2QACgmM9/QnaVBae3Y1ajzRIJfPZeDFgq7fQ/ola+qHpe+5z2+
         MViJmGWG9pTTsymsk9WJx2n6NTUog6lR5fZvAawcpwOJi3OEjst8Hot+hjR+Yb3GshEY
         NgvCHAUA/gC+P7ADFofHuMwMc9FXKwhMEmE3D2HGoCUZnFHvOMqjbesXgm7R/eqP+pct
         uQFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com. [209.85.210.68])
        by gmr-mx.google.com with ESMTPS id l16si976396oie.1.2020.08.03.03.06.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Aug 2020 03:06:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) client-ip=209.85.210.68;
Received: by mail-ot1-f68.google.com with SMTP id z18so7017472otk.6
        for <clang-built-linux@googlegroups.com>; Mon, 03 Aug 2020 03:06:46 -0700 (PDT)
X-Received: by 2002:a9d:7d8c:: with SMTP id j12mr13074211otn.250.1596449205821;
 Mon, 03 Aug 2020 03:06:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200624035920.835571-1-natechancellor@gmail.com>
 <CAMuHMdU_KfQ-RT_nev5LgN=Vj_P97Fn=nwRoC6ZREFLa3Ysj7w@mail.gmail.com> <20200720210252.GO30544@gate.crashing.org>
In-Reply-To: <20200720210252.GO30544@gate.crashing.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 3 Aug 2020 12:06:34 +0200
Message-ID: <CAMuHMdUmHE-KVQuo=b2rn9EPgmnqSDi4i16NPbL5rXLLSCoyKg@mail.gmail.com>
Subject: Re: [PATCH] powerpc/boot: Use address-of operator on section symbols
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Geoff Levand <geoff@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Paul Mackerras <paulus@samba.org>, 
	Joel Stanley <joel@jms.id.au>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Segher,

On Mon, Jul 20, 2020 at 11:03 PM Segher Boessenkool
<segher@kernel.crashing.org> wrote:
> On Sat, Jul 18, 2020 at 09:50:50AM +0200, Geert Uytterhoeven wrote:
> > On Wed, Jun 24, 2020 at 6:02 AM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >         /* If we have an image attached to us, it overrides anything
> > >          * supplied by the loader. */
> > > -       if (_initrd_end > _initrd_start) {
> > > +       if (&_initrd_end > &_initrd_start) {
> >
> > Are you sure that fix is correct?
> >
> >     extern char _initrd_start[];
> >     extern char _initrd_end[];
> >     extern char _esm_blob_start[];
> >     extern char _esm_blob_end[];
> >
> > Of course the result of their comparison is a constant, as the addresses
> > are constant.  If clangs warns about it, perhaps that warning should be moved
> > to W=1?
> >
> > But adding "&" is not correct, according to C.
>
> Why not?
>
> 6.5.3.2/3
> The unary & operator yields the address of its operand.  [...]
> Otherwise, the result is a pointer to the object or function designated
> by its operand.
>
> This is the same as using the name of an array without anything else,
> yes.  It is a bit clearer if it would not be declared as array, perhaps,
> but it is correct just fine like this.

Thanks, I stand corrected.

Regardless, the comparison is still a comparison between two constant
addresses, so my fear is that the compiler will start generating
warnings for that in the near or distant future, making this change
futile.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdUmHE-KVQuo%3Db2rn9EPgmnqSDi4i16NPbL5rXLLSCoyKg%40mail.gmail.com.
