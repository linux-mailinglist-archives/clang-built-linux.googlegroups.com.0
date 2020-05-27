Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBLV5XH3AKGQE2GH3X4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 248D81E4266
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 14:35:59 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id d64sf234053vkh.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 05:35:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590582958; cv=pass;
        d=google.com; s=arc-20160816;
        b=sjvSnyOW69a1BPK4RINnsetMV4+TSSqYZ+rP4FbVs6Q0tPf7WNn+itYlz+bpzO5qF1
         m5rKteo/nae29jwuK6zl0GzzgajlaxQOy0ujdBYHyxwBLOBQAMaEo84/13Q5udwaFM9h
         PTSz2zmKa56x7HXP2q+oXGoOEx1DbgN5KUn/ENrZHeH41D0P5bFq5SV6GiU2Sqjq2xtB
         8+EPP3NSrYkobgEr2D9ZTWetr0oj82/cXP81xf9ediUGnnKO1f/izkUU/4np0A6QJM8r
         pksBSru+g1OnyB4ZsQVloBwuIoRORBWjcGem4hZeOBGkxWLZxfPni1Iym4+TiUEfE0Y8
         23PQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=94G98M1sM/SUkM9o5SrnBwl8xv0oDY6ApeR8wY5Noi4=;
        b=oWKJZ+Tdym3Az/BMsa86K7WtgqlUJH7v7H0aRxpEvtN028PPx3uvT0NjvknufXIxk9
         XqE8odX7JlcJiZ4FNnIl87Rd6xRWnek2RSaqGFq4uNfwm2RteboFoZVGeGw3SAIX42Nn
         tAurFoqDWoNLeCqZdv9GX35ik0INIjsjXUcFB9cFPEn5GYqr3agJMmi8CGX7I32Xz7LA
         ICmZgbyeXrGJftsTjfmb9UZmwGPwwhAm+hcYwZyoGn3+zhYuVibAC9efJRBcv9Ki4t3b
         fcD/oE2eMbgjnZS6BcneANn7eHEqBz+qOh+dv+O9tF3bZlk2KJP7zusvY6J6Qm3TTi9I
         Lwtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pvb7cjeW;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=94G98M1sM/SUkM9o5SrnBwl8xv0oDY6ApeR8wY5Noi4=;
        b=b2mCK6zFESwWrhMmyabhbDBw0F9MYH+dWkBPeunUL7o/VNnRLlBjpRitFbc+pXS0xd
         uM6gqJikQ81tlS3nPLSrHGRZVOYPOammqkEoAmKV4PV/rR1X578HjCbhgz3TshoLR2zT
         G3WiLkA+q6+iLRaLep5wTK9g4TzhqXaXaoGLBpQM1700oLxRehDeOOem7OdydaNP0mNi
         nSkZ79+Vuts8d9wUnnapgn5CuNEfzsC7b53odVMpWl6rtx8ATkRTRJlTKfNdpY9tbFXA
         R68IzXPUqXwG6oH1d2GCGsUW3m9Xh4L9zsMpihWdGppIQYIc7uqTG/mPjwsUqVPcuD3b
         wGrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=94G98M1sM/SUkM9o5SrnBwl8xv0oDY6ApeR8wY5Noi4=;
        b=LCLyEo4obxh54GDlpxq79WctcppgpnIZDBY7I92g7xyzdjp26Dz/X0gjWbQQoBZQsj
         3LrrZz60yYyl6uZNwFruFC+pmzA2it3oCZ1f/dgeQbVIACphSvADs64HmdKKOB6cS+Uv
         ekD9o/W6Vb6M0LU8WyGK6/yL+8xqN1HDxdQjvh7g14yQevxcdywe7p0JaJgpZCUt5z3M
         8Pf0Y4dCKU8R/adMJETUJcNAaLEwjNIWN77d3hgRgmuvoGhvXjfF0JlCCtUefFE6MwVl
         HxnXeAhNoaGUycZIVWFlC3E3sq/2d3vDV2QuUYTClyIcuWh1qPYINUR7XR6uACozKpyd
         /h1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=94G98M1sM/SUkM9o5SrnBwl8xv0oDY6ApeR8wY5Noi4=;
        b=jChDQmwCP7FgQPbERmdvKXy3w/g1DATh+62DFAUVcbJZneyA1G2PW3Qj07ZC8X+cYH
         SVD6dWEO5xV316ywJhnoYWqlViiFqRqSf8BpMg92dIpx5sjIISRLUTzGezNW4mKtFQG/
         LggBqnFRJcZWPbQ794OPd6a9gAsUuSy2MOBhUKsKGAyjwxCuBY3mOOoiqQTGx0hACYPM
         5yamrqUVK9jwa7mGaQz0nyLFNEuaAlZVcD1eKsPIg58uxxu88x4eASf+2i6Meslzr2Xo
         EkyAJvPahOqEb14QQeLqL3Kd26a6FS0yf70K9dwguw41lj9sxtzziv26YKpcoEVf+HEc
         MeUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532a6EeQjNLJOnUqWubzjbWQHryrNIvHI6fWeEIQEhphTAP5Hnwo
	No0gqV+9r6jHdRpnF5wmf5s=
X-Google-Smtp-Source: ABdhPJw+kJdhhd3WT718nur+5qeudWJ2MLmULPyh8bJi8FcsONhPgHGhvhny4Lbr+rKhHr+vgs9dVw==
X-Received: by 2002:ac5:c54a:: with SMTP id d10mr4584110vkl.21.1590582958166;
        Wed, 27 May 2020 05:35:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd1a:: with SMTP id f26ls14511vsr.6.gmail; Wed, 27 May
 2020 05:35:57 -0700 (PDT)
X-Received: by 2002:a67:f34d:: with SMTP id p13mr4979002vsm.164.1590582957632;
        Wed, 27 May 2020 05:35:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590582957; cv=none;
        d=google.com; s=arc-20160816;
        b=l4Os9UlCcXit4OjJRWdRCJLja5cW4ptmGj6tG0bW/Iz8Kfdl7HFBYY0TGv4OraofTs
         4w3I1ukIbP4I6sNjGRZyDhBOLnEQLFe/2g2b8LBZln54RYBeMp9poUhmn9fhSeCjYVUv
         z1suHPF/6tvIRaT8JtxhIVrC6P0RUZydiq/wUzXu4gfvgJz8plkxAdHx/ifFpzNfSl2S
         uaooNi8oz2kbUNqFuClfF/gYDbehNiSivz7RKQCzELEPusIo2xwwP8Mqsz4GaCpZTfVJ
         08FnTB1Mx1mmsmwqWSXP1deqSzr735dCBfs0n3OrOHel6YbFTFgBxjifuJlNhLvw7OtS
         zKvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dLQVgKcEwQ1FC39ZISDlNHseQJ/tL1cI3JXpTq890qw=;
        b=gPTv3InFTUeukvB40RfpkDpksJwbpC6yUr2yfu65g6ipIG/LamZyPEiFmV/cgBm0s0
         jitnX/62NVrZJrJid59i8bVXu5fdXJg+lv6N8vzvh8QV21wcZdQY984TV8hqTTXt4gHA
         uNkvPtyf2EUBbqxxNDO3wr1jOn/zqpMfXZG8ugS9B2F+96M3ChmVLiLxjyHOr5eZmdKj
         ghoKeVpUXjc3cYf9ecYL7aUhquq2oVoW8U5dvQ+Mbpx/J4LF7d9OAcdRG9VHKX+CQc/z
         SReLRyM0Gvwfxrlp4Z6iRXxkOSyCHFOouJSzGPss//HMZ+iF0wyYdt6Oygo1mFavF2g1
         1qFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pvb7cjeW;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x142.google.com (mail-il1-x142.google.com. [2607:f8b0:4864:20::142])
        by gmr-mx.google.com with ESMTPS id j5si302421vkl.3.2020.05.27.05.35.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 05:35:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142 as permitted sender) client-ip=2607:f8b0:4864:20::142;
Received: by mail-il1-x142.google.com with SMTP id 17so23817305ilj.3;
        Wed, 27 May 2020 05:35:57 -0700 (PDT)
X-Received: by 2002:a92:898e:: with SMTP id w14mr5303714ilk.212.1590582957180;
 Wed, 27 May 2020 05:35:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com> <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
 <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com> <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com>
In-Reply-To: <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 27 May 2020 14:35:49 +0200
Message-ID: <CA+icZUXVSTxDYJwXLyAwZd91cjMPcPRpeAR72JKqkqa-wRNnWg@mail.gmail.com>
Subject: Re: [PATCH -tip] compiler_types.h: Optimize __unqual_scalar_typeof
 compilation time
To: Arnd Bergmann <arnd@arndb.de>
Cc: Marco Elver <elver@google.com>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pvb7cjeW;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::142
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, May 27, 2020 at 2:31 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, May 27, 2020 at 1:36 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > On Wed, May 27, 2020 at 1:27 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Wed, May 27, 2020 at 12:33 PM Marco Elver <elver@google.com> wrote:
> > >
> > > This gives us back 80% of the performance drop on clang, and 50%
> > > of the drop I saw with gcc, compared to current mainline.
> > >
> > > Tested-by: Arnd Bergmann <arnd@arndb.de>
> > >
> >
> > Hi Arnd,
> >
> > with "mainline" you mean Linux-next aka Linux v5.8 - not v5.7?
>
> I meant v5.7.
>
> > I have not seen __unqual_scalar_typeof(x) in compiler_types.h in Linux v5.7.
> >
> > Is there a speedup benefit also for Linux v5.7?
> > Which patches do I need?
>
> v5.7-rc is the baseline and is the fastest I currently see. On certain files,
> I saw an intermittent 10x slowdown that was already fixed earlier, now
> linux-next
> is more like 2x slowdown for me and 1.2x with this patch on top, so we're
> almost back to the speed of linux-5.7.
>

Which clang version did you use - and have you set KCSAN kconfigs -
AFAICS this needs clang-11?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXVSTxDYJwXLyAwZd91cjMPcPRpeAR72JKqkqa-wRNnWg%40mail.gmail.com.
