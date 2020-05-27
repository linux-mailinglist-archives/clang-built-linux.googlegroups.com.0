Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB3XEXD3AKGQESATSRBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E8A1E3D88
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:27:10 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id k185sf910852wme.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 02:27:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590571630; cv=pass;
        d=google.com; s=arc-20160816;
        b=pD3mKYiqcMwyjlZMljwZ7pkdm0E1AvHyb5Y8wFo9bAHUrfnIqZZTYBEHjZCEXZbtcl
         erSox/KXxH5BkbB1wnTMPPV6zrAD54ugAAefZb24KZPZ056oXCAobBvqGiVwS16bxFps
         zpqGsYrf0TXMY3YRQauj8AI9h4jg8dcjTNz4EQRSgc3ES2Ve9rlMtGw3nT1xIE86SZkL
         VG38c+gGQBZvbfOW46SUlMU9PYGnjGah5bElewBu0imlVXFfClpLq5QmX+tU3ijAbmbd
         VRTJRrzzGT9AoSjacpZG8mQUJv/Dh9PnEF2MQEU3ttFIymBVKfq3SpiRtzYHexRsFjc1
         aPTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=cGj9yvIHtpOsEp4n0nxYWq+7YUt6atUm5SN9wOCbJm4=;
        b=zKdcOrjC62ycdH2kE/Hsv1MxP+jmgkMCsEnDjotz9dqrG9nGxXb3fbSFTAExKz2VuS
         LHYTnC/rgXYoVKPqrPTfnI12fl0Jye2OxjeTyPJQvecO65Cl8Zt9oLvHsAE5708z7S8r
         3RIrNoJYzqs64y9aTHW4v7zAR7n1CHfpOw8Oa1duX8nz/Qo+hOtboBnfYCwB0eTvIMVe
         gm5LeqJZg5IAlbRH8Wej5+ufalkLrx7itq6jB8SrbJ3PCZZ6zmKn3V5W3PdB4WbDOsye
         daorueD0117YJFm1mITyQHr3mPvhkmJBMcDkmGeYOcDCViiyd1ZCdLYG2Vwe7yvwEWT0
         yt1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cGj9yvIHtpOsEp4n0nxYWq+7YUt6atUm5SN9wOCbJm4=;
        b=LAWpJid5uKnhcTh44V2NlsojynQJwG6IV9hLFeELwQ7fjeous4AYOYbn6Fd/iMpqsN
         Lgfb8TZLIbl+zUdLtoevsK2zQ5tJtnS2xzzsdT4d6xuB00VDagD+3jhqjUfRrGPZuV3l
         lxja/E8/bohm0du4MbmAnocVNMbcVf68F/bCsVkZV4IDJKRYKdresZq3OTBuSufckDXW
         AaggLAAqi7W+lCq3d2LxgSv7sWK7DwTp72cb3Qvqmb0l3JoctVIJdgYR2WLtYT6sf3QW
         BGdoqKjDOWI7e+tfwEj5jt8ijFSXewfQZbVdfUl0z9EuQ4lTZskWZWN6IG1rnusuC+k/
         UeeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cGj9yvIHtpOsEp4n0nxYWq+7YUt6atUm5SN9wOCbJm4=;
        b=qyt4FxR9a4v6xcht7rTfse3ara9BHTGI2GWYaosWzP8zCBUZdrr4LhmEEklSO25bdh
         nj1qIOrod/3DoPhK7C+FGJkvKJ0GuLfofT9EfnNCpndFa4kj/y4Z+VxW5gvIBPsnpkke
         f0BflAK+rUNPFpNL+VPmGK1rYkbne2aV93sdqquzyXpeGOSabHUu9h+RsV6hzphP9AyO
         0RqOEgvl/rT0+ZgfjNz8nfNnVTSaXOeJtRNJKtGxKzhIWu6rifAYQ/eSXGCCcQUomBgQ
         1O7oyjewV4lCtqqmsXqi9dR7eIC5ir5cy5SMsSIBBZIW7Xk5V/t7CoVHjuDhyElypZrz
         3zDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Z46GEH+4tyTq/WLNFsgvgV1IeDbs3PufBKSPF3PRyZ4rZ7rHQ
	5G4SvFAdYYkjNHzprSf4LwQ=
X-Google-Smtp-Source: ABdhPJzCsjZrvg56dgT7Rq+KAzGGKCMwJ/+wfBRFok9EYchqGwTF7cNPaRZNwEuGwko6GyYnPIXW2Q==
X-Received: by 2002:a1c:dc05:: with SMTP id t5mr3574615wmg.112.1590571630403;
        Wed, 27 May 2020 02:27:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ce:: with SMTP id 72ls2642348wrc.1.gmail; Wed, 27 May
 2020 02:27:10 -0700 (PDT)
X-Received: by 2002:a5d:4b4d:: with SMTP id w13mr25545445wrs.178.1590571629985;
        Wed, 27 May 2020 02:27:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590571629; cv=none;
        d=google.com; s=arc-20160816;
        b=quoVvaLr+YHDYmRHD1tLg3VOOfIce4qzACmn7SutCLD/gM8Dr+IQUAzagBZmfH72dJ
         aMHU77/Ll7hmyhyfqqogzh/u925HyrBxQWNMyy6m+1hgzQSZwyxfHVPSZYhJiD6OUjtZ
         NaEQX+Yrd5AOB05CVKhE/KKPoBdApAvF/MaZpjpNP5daaZgQ0qx8DSRbn/UfzQJ8t7is
         ltuwMMVBM+DCtZCeDRvfb7enE7uZgXwKTSBWJm4borxzEpaZiWhCst0w64AqVcof5E/s
         Kb7BFnN9JdWxDcNMLHNIHfhXZQy8zAUWbSBWMDWOIbsb8rZj10ytiSR8teyCf1qyc2n5
         rofA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=S25vVde9yiEiJGC4pstAOIXqe7k8wnOQKj8y0xY81d8=;
        b=Hk4Nv/FzCr+sWnfto5v9eHq2wPSurllpcNpMoOj6mGhj5mNHV0w+mkVLbRrj62zgWv
         9QzIsaD4nCQmnP5jWSVBD8uJKboYUVduERV0OBRZdiOOpRzlRwfxujwWNN5pEBnkgZV7
         jae8oBPKUMZ+q1Dp1FD9Rl00U5n7Co48T5No7tuD+FHdksHo3UFfq9XaaayJDVczU5uG
         RzArpXSD9ykc5Yz+Ry1XAo4yr57aJWVYiak59bo/ZImMVT1uMik2SrvZnhUBlZJoYLk0
         HEWXoXVt/YD9kiYoyW7pizajRd6E3xUaO2rnYnvl46FWqeoSnCh0v9zIBOzV2gAgSD3F
         M23g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id y71si151014wmd.3.2020.05.27.02.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 02:27:09 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from mail-qk1-f171.google.com ([209.85.222.171]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1M2wCi-1jaaY51dhE-003QxJ; Wed, 27 May 2020 11:27:09 +0200
Received: by mail-qk1-f171.google.com with SMTP id b27so13661989qka.4;
        Wed, 27 May 2020 02:27:09 -0700 (PDT)
X-Received: by 2002:ae9:c10d:: with SMTP id z13mr2828308qki.3.1590571628188;
 Wed, 27 May 2020 02:27:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200521142047.169334-1-elver@google.com> <20200521142047.169334-10-elver@google.com>
 <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
 <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
 <20200526120245.GB27166@willie-the-truck> <CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP+BzhM9H07LoYQ@mail.gmail.com>
 <CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com>
 <20200526173312.GA30240@google.com> <CAK8P3a3ZawPnzmzx4q58--M1h=v4X-1GtQLiwL1=G6rDK8=Wpg@mail.gmail.com>
 <CAK8P3a3UYQeXhiufUevz=rwe09WM_vSTCd9W+KvJHJcOeQyWVA@mail.gmail.com>
 <20200527072248.GA9887@willie-the-truck> <CANpmjNO2A39XRQ9OstwKGKpZ6wQ4ebVcBNfH_ZhCTi8RG6WqYw@mail.gmail.com>
In-Reply-To: <CANpmjNO2A39XRQ9OstwKGKpZ6wQ4ebVcBNfH_ZhCTi8RG6WqYw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 11:26:51 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1BH5nXDK2VS7jWc_u2B1kztr4u9JMXhWF9-iZdrsb-7Q@mail.gmail.com>
Message-ID: <CAK8P3a1BH5nXDK2VS7jWc_u2B1kztr4u9JMXhWF9-iZdrsb-7Q@mail.gmail.com>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement expression
To: Marco Elver <elver@google.com>
Cc: Will Deacon <will@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:OKhXd5sauaVhy9yPy9q+1hLD9XO7k/02k5bDh0/XnEr+XkJ1o+e
 u2SP+OCnnreggI1HSoiXYjwNEZw2U69UWa2QqpORVoUbfCEQmiL0y7ROsUJXp/HHu5wcHBB
 6g74U5hPOj9N9f/+KIQRing2mL2B8lmrUJnDQm+vTMiUxaF5m0y2GC01a/aZA0B/FKePblN
 EzzKgovOSK3DuLeRI5dIw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GSc5di7Wdg0=:QJGaIvhp132N8AvTVnfDcD
 Za3G8pfgssZdEtO8XHz3AAxIGupexbIEE+Em+O7HdjjvoqW1XVAZRyoPlRlYcFKoYc+gBjGkY
 MsNceLOKddJJLdTVEqmvXt35QuT+Bla5lzVsctRuqMLQhtEo2CmCId6Ad4rF++cFAIK/bvJz5
 r65rk8KtjrinWgrYitXzooC83B2uSStuTZiYLXFv82gqfUH6HSrzUlMc9zDXneMgc/srZ3PEh
 kqYcgfppA4s3Zk5K49hs+JDjURXg7CxwBd6qYViUqs8x/R2W21pOAHC7DAUk5P9swek2TE2kD
 HVPuhGXarh5kxV2qZLr5ZkwJH+VRkBGXXB1ODLFQr96TuoSsxKsyLiP7czNgPczjWVG7oQL4I
 YqGul1qM4GogTS9kwo4cZu2egrbbo4o1v9jAU50NHpngaXm/eEfZ0CZFfmofb3MsWqfikd41t
 pvp798OuL/1hmKYsmerWA7qQuebNNCdi2r2Ibozy1g0yLIfMLe3PbfrQFLe+ldYlcvM3P1+el
 7XvgzewmZA49Mpeo5NsWb9XbpkauayH1+mTjDN8IGGiogrYsd95q7ycWS/ZGRvbWVVAvJljee
 At2kFTU2yef+GqvDWySMKYHoqkEEQP7kzWMAstk19DWdfCBzfzk41+lApNqURvWE+mQPDznRR
 hphT7AkePjacQ5jih4u5FzWJ9XtdfuJioIwp2EIC2Qww2rydcAkTpLMesNZM1INQjOF77My6y
 00gMI+nXdXzBmemrsRhPbJNwmdvVVNqVN0VJhd5ptynTJGv6hByMEzWJJk52vLxezXzpkpbKk
 UppxwD+ed9RmUIeSAAohur/IrUdEIpSDZDPBnQwel3Loj54sMM=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
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

On Wed, May 27, 2020 at 9:44 AM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> On Wed, 27 May 2020 at 09:22, Will Deacon <will@kernel.org> wrote:
> >
> > Nice! FWIW, I'm planning to have Alpha override __READ_ONCE_SCALAR()
> > eventually, so that smp_read_barrier_depends() can disappear forever. I
> > just bit off more than I can chew for 5.8 :(
> >
> > However, '__unqual_scalar_typeof()' is still useful for
> > load-acquire/store-release on arm64, so we still need a better solution to
> > the build-time regression imo. I'm not fond of picking random C11 features
> > to accomplish that, but I also don't have any better ideas...
>
> We already use _Static_assert in the kernel, so it's not the first use
> of a C11 feature.
>
> > Is there any mileage in the clever trick from Rasmus?
> >
> > https://lore.kernel.org/r/6cbc8ae1-8eb1-a5a0-a584-2081fca1c4aa@rasmusvillemoes.dk
>
> Apparently that one only works with GCC 7 or newer, and is only
> properly defined behaviour since C11. It also relies on multiple
> _Pragma. I'd probably take the arguably much cleaner _Generic solution
> over that. ;-)

I'd have to try, but I suspect we could force gcc-4.9 or higher to
accept it by always passing --std=gnu11 instead of --std=gnu89,
but that still wouldn't help us with gcc-4.8, and it's definitely not
something we could consider changing for v5.8.

However, if we find a solution that is nicer and faster but does
requires C11 or some other features from a newer compiler,
I think making it version dependent is a good idea and lets us
drop the worse code eventually.

> I think given that Peter and Arnd already did some testing, and it
> works as intended, if you don't mind, I'll send a patch for the
> _Generic version. At least that'll give us a more optimized
> __unqual_scalar_typeof(). Any further optimizations to READ_ONCE()
> like you mentioned then become a little less urgent.

Right. I think there is still room for optimization around here, but
for v5.8 I'm happy enough with Marco's__unqual_scalar_typeof()
change. Stephen Rothwell is probably the one who's most affected
by compile speed, so it would be good to get an Ack/Nak from him
on whether this brings speed and memory usage back to normal
for him as well.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1BH5nXDK2VS7jWc_u2B1kztr4u9JMXhWF9-iZdrsb-7Q%40mail.gmail.com.
