Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBGWOXH3AKGQEOYIDWBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id BF97F1E42F5
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:11:55 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id l17sf22598554qvm.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:11:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590585114; cv=pass;
        d=google.com; s=arc-20160816;
        b=K+9ghVYYh7T+7uiMElQejE3kM4OYwXgyaa0V8Nf+QXkdEgX5gpLY1LsZj7RJc9LuLp
         IL0dzKjNi81lphi1/FTSp3gXitKvpr43HefMljHcOL4K/YNjSu/h3hLaAJSveLLWkCnw
         W/ffHMgEmv6Rhq1sqV6uhNC7BaLGCHnsdUJJSBpDy8p6+1dQvfblvFRml4GuWigu8GtW
         iha5j1JBLX46ZkfxyDuBiZwYoqJg/2bu76ym33+AdpaRhBo/PJHuk42JqLtQseG9INpk
         s5mAojn5kbOZlBYL0uVdu7m04H7XZxoiGbFmKXvRfMmmve2LnxLfxN4dG8p7dmNMTA0u
         gZAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zhsN3tshrqm3k5uoAEWwOvM8vbDGtN061q02ksNxPBc=;
        b=q36LpoQ09sJW+TI76OefPO87/aIWUFqYYCEngl0yxMze8kWxGGbAknhVCOcI5Kt7Xj
         Brk7NuYNwA0/g/rUZuigHjqP1DkemTryhbevjTWBlilazSySiGT908avWqcOntIFWKoT
         dQzx5RsnCmyyV7kpS8GYdz4RRCJBlJZN1ktDn40q4BxvrHp39PKjsuThYnwzaWQZhXeJ
         ivGVYXmbzSUYqXUQpJ+ZG2VO23FSSLCRW8RHDK4YszHfK4hltinnbCFW8KfUmNXdCdcU
         xUwoN0nrbuNC/M8sR4r3dgvJ2yblCo4LNenN6Tu6/Hfy4pO7LJkTfAnrmy+8XjB/7x73
         Unaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t0Us1PcW;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zhsN3tshrqm3k5uoAEWwOvM8vbDGtN061q02ksNxPBc=;
        b=U1waonX2wPyRe0zyDrVqICy6dYJXA3SeEnI+N1V2h8gk6vcR1hy6YuED+mjMKOJsth
         MNX08kM2xHVtNxVVrKLaTEXSR8IQL2QOG+j/GHGAqYj9nQGekYCsZpVh6sO8hfYhcORb
         KgSodlkWS6zLm0Wq3/mzyjOChoTT6UaMIhW5q0l32XsWVO4giinHtPttiOujOsXv7Vyd
         0jrPoddXASoK5zOkByV8WCkAuTSPIoLtgZHIiXZuIHcZYpyw5HKnx8ve05JMMbKDNoVi
         vp4Ub1VLzcVwhLZSP+PNdLZ8menVQ0K/XV+Zz/llSErsd8t5GNX40aIeqCB61RtTJnR4
         4yLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zhsN3tshrqm3k5uoAEWwOvM8vbDGtN061q02ksNxPBc=;
        b=k6K/MaN15uh7Wrp59MMHQDSZJPUYSUx7t7ZIL7QRQ794jZL5y0OkEEZzCqtZwDT/Nv
         niWoAJrWCUKDhC5ghmViqPOsyIYWtW8hz6VuionFvJ6o2gml3C4PBb3xnsWxlQ5dssJL
         0nlogoQpssBj/8sxdt56fgJ/1Xst+7IQdHzMeFrVHF/x0F+ycOioPs0jkHI7UFj3ez+C
         cF/IOZ1/o8OZc9IpVzEk0Nn7usY8IR3NOtO1zGQRdsdMpzN+x65Ut0pkvNjLUFlZhs2e
         E4RzNCJ93cKsTnQsWFobUjBsh5/wWEcaY41sskyH5HvjYEJ+bG4cxKzUBt4lN5DvpE8U
         ITGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zhsN3tshrqm3k5uoAEWwOvM8vbDGtN061q02ksNxPBc=;
        b=FJ2nfM5NnT6UtPsAInZBfGBUDc2yiDclN1h7qVCA/5w9tPjHtTwzQMhyWhQJM4SNTu
         Mw44OwtLQKK226VjJIXpasXVeFiz/NDuw3Wzu4/+u60A3Y4jtlGdWjm7Rtkleikl+IsE
         +88HTxtxeT/MwqU9CPB+7Hui3X8w458uTZwCiu0Uiw38SlbeNF4sccGJCqOnHeda5w4N
         kCiurSfVCfegkImbtsym2rAktt3R5LJPBWmfX2zwJ0k0ayQExXUneQp1YnJbeHBkSd9g
         5tp1JYrHO0+rHGIDz6Stbk4pVuaYzSD1BmvrEKfdoRWx3b9l9tLeRf+o3aLXyY7lZudd
         zGNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53167iPo1kjXCsUkt4OLWOQv59IV1OJaPa2D8LcCspsIMPOacqjf
	IIwo8oRTL1rXzh9T/MgmXTA=
X-Google-Smtp-Source: ABdhPJzSjBVTbjlF/dH/VAraHkwRDR2XB5WJQqGlfBL7hGmXOOHx/Pxpfz+2/3jvVrNiVKVFvR8auw==
X-Received: by 2002:a37:8187:: with SMTP id c129mr3898768qkd.211.1590585114505;
        Wed, 27 May 2020 06:11:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7406:: with SMTP id p6ls1992920qkc.8.gmail; Wed, 27 May
 2020 06:11:54 -0700 (PDT)
X-Received: by 2002:a05:620a:7f0:: with SMTP id k16mr3951398qkk.18.1590585113921;
        Wed, 27 May 2020 06:11:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590585113; cv=none;
        d=google.com; s=arc-20160816;
        b=Gb6PdnirueIhMGuDy2bF2m/d8rGjGTqZSFm9nZH1+lQIyRr3LdkzkWkL6vt4kFa1s4
         Mb77L3c3LLbOaWIPFkz8nq2kOzbEuyqedcdeh8tjE8DuF85+IjITyuZyfr6L6FzKJrdA
         TLvIMpFvHCIi+5gYNlQxaUCSApQXB1INlPO9VMTFG0zWF4raZBLDHg5HsNgXacTTIPDf
         5Wz8CBAvqzQAR5G3qZT4ZbY+th8mtZKyoKOQqRutp2iq2Qh1qp5lyd7myvZSbBV3rZze
         5XzazEC8BJemLl0XkXs29aKQ3/qIKEsmAa1DD+Agy4Rks5UWyXy5rMR58AZXGLg7y2UF
         naeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/FeAxSqyr5/D9IayOmiy152xGFi7mH1sffMEBtId3Bk=;
        b=vCHjoQgTN2HgVUUvqYVfBwAmiU830m6NyPFxyz3BKRUf5XE+7rdv1PGDLqoX/NQ1xZ
         jNPy8OrmT5DaAKcHXBJdpeTAr6Da55EtmQ+xofnTUQz9ZGIAKpW0Q6VYQHgp9nuWiDX/
         PKZ2MZMpKH9g7p+wchenCVtS1/IIEVhneMZA/twZzCtIssQmwXwmQnu/t8nqzb5SPFlt
         LYrEMtz2sCXUo3k7uZbI32TBGWyg0P3idwT5RM95o4et0WgQc9rYkNkGz2IbWfst94ky
         ytOGIFMGG2kylhk/7yOC6XCvTRkUyZj1Mj0xVYMJ5iIEmgyAWqWpMQtlV77SRlfEx6MM
         HU+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t0Us1PcW;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id m1si202000qki.3.2020.05.27.06.11.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 06:11:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id y5so2998864iob.12;
        Wed, 27 May 2020 06:11:53 -0700 (PDT)
X-Received: by 2002:a02:a494:: with SMTP id d20mr5442362jam.23.1590585111991;
 Wed, 27 May 2020 06:11:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com> <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
 <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com>
 <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com>
 <CA+icZUXVSTxDYJwXLyAwZd91cjMPcPRpeAR72JKqkqa-wRNnWg@mail.gmail.com> <CAK8P3a3i0kPf8dRg7Ko-33hsb+LkP=P05uz2tGvg5B43O-hFvg@mail.gmail.com>
In-Reply-To: <CAK8P3a3i0kPf8dRg7Ko-33hsb+LkP=P05uz2tGvg5B43O-hFvg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 27 May 2020 15:11:44 +0200
Message-ID: <CA+icZUWr5xDz5ujBfsXjnDdiBuopaGE6xO5LJQP9_y=YoROb+Q@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=t0Us1PcW;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
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

On Wed, May 27, 2020 at 2:50 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, May 27, 2020 at 2:35 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > On Wed, May 27, 2020 at 2:31 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Wed, May 27, 2020 at 1:36 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > On Wed, May 27, 2020 at 1:27 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > On Wed, May 27, 2020 at 12:33 PM Marco Elver <elver@google.com> wrote:
> > > > >
> > > > > This gives us back 80% of the performance drop on clang, and 50%
> > > > > of the drop I saw with gcc, compared to current mainline.
> > > > >
> > > > > Tested-by: Arnd Bergmann <arnd@arndb.de>
> > > > >
> > > >
> > > > Hi Arnd,
> > > >
> > > > with "mainline" you mean Linux-next aka Linux v5.8 - not v5.7?
> > >
> > > I meant v5.7.
> > >
> > > > I have not seen __unqual_scalar_typeof(x) in compiler_types.h in Linux v5.7.
> > > >
> > > > Is there a speedup benefit also for Linux v5.7?
> > > > Which patches do I need?
> > >
> > > v5.7-rc is the baseline and is the fastest I currently see. On certain files,
> > > I saw an intermittent 10x slowdown that was already fixed earlier, now
> > > linux-next
> > > is more like 2x slowdown for me and 1.2x with this patch on top, so we're
> > > almost back to the speed of linux-5.7.
> > >
> >
> > Which clang version did you use - and have you set KCSAN kconfigs -
> > AFAICS this needs clang-11?
>
> I'm currently using clang-11, but I see the same problem with older
> versions, and both with and without KCSAN enabled. I think the issue
> is mostly the deep nesting of macros that leads to code bloat.
>

Thanks.

With clang-10:

$ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang .config
 BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
+HAVE_ARCH_KCSAN y

With clang-11:

$ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang .config
 BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
 CLANG_VERSION 100001 -> 110000
+CC_HAS_ASM_INLINE y
+HAVE_ARCH_KCSAN y
+HAVE_KCSAN_COMPILER y
+KCSAN n

Which KCSAN kconfigs did you enable?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWr5xDz5ujBfsXjnDdiBuopaGE6xO5LJQP9_y%3DYoROb%2BQ%40mail.gmail.com.
