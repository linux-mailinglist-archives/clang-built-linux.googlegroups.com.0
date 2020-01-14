Return-Path: <clang-built-linux+bncBCMIZB7QWENRBSVJ63YAKGQEMF5MN3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8140C13A5B3
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jan 2020 11:15:40 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id l12sf15670534ywk.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jan 2020 02:15:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578996939; cv=pass;
        d=google.com; s=arc-20160816;
        b=uX68rN6SFPOpwdSOjfu1VmhJazsgtqPDId4r/8Le4LmSt0LeFYVNTh0OvC0se7J2x0
         ufoMHMG0447Iyd/nAqoUG4h5x3GI927H3muSZVaWngL2duZWGcYFot7gVgc0yJD6edte
         QVGcwRgXvWz7+W7dS5FysjX4eQKdXiwfJJCAyDiX/yDYZdfGDYVm330b8HElECU7g/ba
         BuuMLqIrO6fe7K/96IZ3bgWi/c7lwQgM5Y6xKlTvL7EmccS2f7zNnxPAqnt4yvrQQygr
         3Nf/CufJdG8yjJbjfjsOWCLaJmpsSQi3Ly5vR7r7j8nLMRHAYZIzOEt68yJY+0oRUZoU
         mIBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Hkemg8QQuT3AxkqyJ9gmgX1sMbAUIF17btn/2Wmfsig=;
        b=GDV/yYnK/eYrj1qdDtH6DDw65bR/ZhMdJo5/h3XeiVRNEGBDDhltaCAOpvOLQgDMaN
         30hHyMEikSimszbfoHIonaAsb+mKE3zUIZ4+13KE9NJXMcqqDK38/YXjhAScOqrdNpra
         6VyFCBPUEnhpJrfnqzeN4BRhqzAPg6MVa8QkiMulm0z8S2i22y396XW33Q3JACW21uHb
         3dF8yAlAZoiULKC1lysLwRFpl4/Um8X5MCJ2OSyF07hT2ap579dMrzRWLZ03N35w2FrN
         nMRWvRGfScIQLuECsKVHpnJ+RbiOAwkI2SH4V1WlNSIbV6GEH0E9iKhfOK4j4eP0/wRq
         p3QQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JrWid8wp;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Hkemg8QQuT3AxkqyJ9gmgX1sMbAUIF17btn/2Wmfsig=;
        b=AbKOONGfV+VehfXdFBaD18jQ8AfkVl1OXIBD7aX8fgzNMX267GmA6eAClxcn5DjQqF
         cBlXNoVIdMgljjGTK2ZB9lZqUq3eUQX67lMC6UEkFnSGTRAgu/Tmvuc3QzFu5ZAekpl2
         MAI84/8YzTkFxosq1lTertmCDpOLWlZAuNSr/3O7hEGaSIH5gRwD1ZtE1vFvm7xTSe7C
         CBud5k5kz/Ex9PPB2kwLNOIbtuMNtApoDrw3VXTnFg8NXbHSAmTu/87ZwJu6adNx9oF+
         LVcoxkaWKfRRv+BuaSInmNRdqG7jwy4xEUSOQ8mOwt5HuCj14n4Q+5EoYs1lhE1R8PPz
         5SJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hkemg8QQuT3AxkqyJ9gmgX1sMbAUIF17btn/2Wmfsig=;
        b=OmedMHPNcFNR7JM7Jfg1OKYvccvveWEPlq5G0A+AwacDuwG2gd4KEwxsLV0TfH7MN3
         /BrgSfb0k33YbXYpJC1+rIbS39w/blv24LWmj7wfdQGh7WTj71u+pBXsH0k/MQqgKZJu
         ZGa3gLyisx3dUjMSBW4Dqb/d7lDndHLlqH1ft41QyVpp7BGwdoceaIIXCb16foQUXorZ
         mcNeyKGmP3z8fmiDlCWsn6v51T7e4zNMSwULz5PC3RX13zWkjSJEqZ6d48qR6WNrtD1/
         vAiL3GBHd3NmJ7gzI7/B+doW5xxBur/if0wyuVvduGljGomDUl8c3COI+5nY0/08LFq9
         Bngw==
X-Gm-Message-State: APjAAAXp+XXXO1lfepHRHfCmcWITrrSxL7Em9xQQxsc6gAtumhevs855
	Oclz/nSo71UZyPn+pSjJTNE=
X-Google-Smtp-Source: APXvYqwBmsKja3wwLGYipWldQt1kxFVGatBkskgI2ZAJ71ic3ZY6M2fQGYuPCAXo7CYliMDCGrfnCw==
X-Received: by 2002:a25:61cc:: with SMTP id v195mr15457000ybb.219.1578996939016;
        Tue, 14 Jan 2020 02:15:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e00f:: with SMTP id x15ls191657ybg.16.gmail; Tue, 14 Jan
 2020 02:15:38 -0800 (PST)
X-Received: by 2002:a25:ba82:: with SMTP id s2mr17466891ybg.138.1578996938629;
        Tue, 14 Jan 2020 02:15:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578996938; cv=none;
        d=google.com; s=arc-20160816;
        b=t+lEzLPXDapD7tm/a6QWgel4wAB6xrAyqfzp70ab3SpLDNqyZne79jnU95DZoK/qkU
         DC5LGrdQcSlsywrIP+esFQsbB1XaoT9pdn9M6rxN3+eG0l5FGIemiqpXMnD2r0ueBwPC
         Qp9tmztExIdUAwxZoAwXRuf+7PBFnlJH637fK7+wL4R2NZ+NHReER+jadqVfzP88ewog
         1CJh/J7t4yOWhrZbtKbP7eP2GuTiuU8OcsPVMXRWmi2iT1xrtAC29Q6ICDG+0vtqXnJn
         zDoAHcmhAaI+Dx21VuI23ZbGM2mY/HaMvLKq6poaU/AvUvN6hU/s/wKrwI6x1Q0ZFovs
         ArHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vAww8IXRbacm5VnYWGSAdMWNYd81EOzINN0pZmP3twY=;
        b=TLav2puE//MIpyjVz8RswELVP3qBmc6FocZfN+yIqAq9aX/B80+AjbCJ/uH0LI3JpH
         xq4X1K3CHIRSlbUIfjblwMwUD9TgdQLz+OIpHEFU35dcpAlMofWwSCz7TJ7E2zOaDBJM
         2kgGGIYGXoFrIEgWHrsN8PhBnY+iKFKaqvjbCpI3eTXyqAoG8sdVS/XsxRWpTagPRGRe
         2TRPHRp4gzLNdKCiysTEIRvqY4hj3jRG7iS2ThBYY2Rbao3SCK0uVQRWqPE/UvdIExQ9
         HfnacWjvgsIC+KjnSCw8UfX/v2H0vUP+3xDzNla1KYctH2L7KmxOxp1AB+cPyI5bIuv2
         hP8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JrWid8wp;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id z5si755674ywg.5.2020.01.14.02.15.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jan 2020 02:15:38 -0800 (PST)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id a203so11576838qkc.3
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jan 2020 02:15:38 -0800 (PST)
X-Received: by 2002:a05:620a:1136:: with SMTP id p22mr21161287qkk.8.1578996938005;
 Tue, 14 Jan 2020 02:15:38 -0800 (PST)
MIME-Version: 1.0
References: <00000000000036decf0598c8762e@google.com> <CACT4Y+YVMUxeLcFMray9n0+cXbVibj5X347LZr8YgvjN5nC8pw@mail.gmail.com>
 <CACT4Y+asdED7tYv462Ui2OhQVKXVUnC+=fumXR3qM1A4d6AvOQ@mail.gmail.com>
 <f7758e0a-a157-56a2-287e-3d4452d72e00@schaufler-ca.com> <87a787ekd0.fsf@dja-thinkpad.axtens.net>
 <87h81zax74.fsf@dja-thinkpad.axtens.net> <CACT4Y+b+Vx1FeCmhMAYq-g3ObHdMPOsWxouyXXUr7S5OjNiVGQ@mail.gmail.com>
 <0b60c93e-a967-ecac-07e7-67aea1a0208e@I-love.SAKURA.ne.jp>
 <6d009462-74d9-96e9-ab3f-396842a58011@schaufler-ca.com> <CACT4Y+bURugCpLm5TG37-7voFEeEoXo_Gb=3sy75_RELZotXHw@mail.gmail.com>
 <CACT4Y+avizeUd=nY2w1B_LbEC1cP5prBfpnANYaxhgS_fcL6ag@mail.gmail.com>
 <CACT4Y+Z3GCncV3G1=36NmDRX_XOZsdoRJ3UshZoornbSRSN28w@mail.gmail.com>
 <CACT4Y+ZyVi=ow+VXA9PaWEVE8qKj8_AKzeFsNdsmiSR9iL3FOw@mail.gmail.com>
 <CACT4Y+axj5M4p=mZkFb1MyBw0MK1c6nWb-fKQcYSnYB8n1Cb8Q@mail.gmail.com>
 <CAG_fn=XddhnhqwFfzavcNJSYVprapH560okDL+mYmJ4OWGxWLA@mail.gmail.com>
 <CAKwvOdmYM+sfn3pNOxZm51K40MjyniEmBvwQJVxshq=FMaW_=Q@mail.gmail.com>
 <CACT4Y+apeR4GJdS3SwNZLAuGeojj0jKvc-s5jA=VBECnRFmunQ@mail.gmail.com>
 <CAKwvOdkh8CV0pgqqHXknv8+gE2ovoKEV_m+qiEmWutmLnra3=g@mail.gmail.com> <CAG_fn=UU0fuws59L8Bp8DEVhH+X6xRaanwuRrzy-HNdrVpqJmg@mail.gmail.com>
In-Reply-To: <CAG_fn=UU0fuws59L8Bp8DEVhH+X6xRaanwuRrzy-HNdrVpqJmg@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Jan 2020 11:15:26 +0100
Message-ID: <CACT4Y+ZWvnEVEDQe6c-4WRhdKkS0W=DHcWXe0etONnjjysR2pA@mail.gmail.com>
Subject: Re: INFO: rcu detected stall in sys_kill
To: Alexander Potapenko <glider@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Casey Schaufler <casey@schaufler-ca.com>, 
	Daniel Axtens <dja@axtens.net>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, 
	syzbot <syzbot+de8d933e7d153aa0c1bb@syzkaller.appspotmail.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JrWid8wp;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::742
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

The clang instances are back to life (incl smack).

#syz invalid

On Fri, Jan 10, 2020 at 9:37 AM 'Alexander Potapenko' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
>
> On Thu, Jan 9, 2020 at 6:39 PM 'Nick Desaulniers' via kasan-dev
> <kasan-dev@googlegroups.com> wrote:
> >
> > On Thu, Jan 9, 2020 at 9:23 AM Dmitry Vyukov <dvyukov@google.com> wrote=
:
> > >
> > > On Thu, Jan 9, 2020 at 6:17 PM Nick Desaulniers <ndesaulniers@google.=
com> wrote:
> > > > I disabled loop unrolling and loop unswitching in LLVM when the loo=
p
> > > > contained asm goto in:
> > > > https://github.com/llvm/llvm-project/commit/c4f245b40aad7e8627b37a8=
bf1bdcdbcd541e665
> > > > I have a fix for loop unrolling in:
> > > > https://reviews.llvm.org/D64101
> > > > that I should dust off. I haven't looked into loop unswitching yet.
> > >
> > > c4f245b40aad7e8627b37a8bf1bdcdbcd541e665 is in the range between the
> > > broken compiler and the newer compiler that seems to work, so I would
> > > assume that that commit fixes this.
> > > We will get the final stamp from syzbot hopefully by tomorrow.
> >
> > How often do you refresh the build of Clang in syzbot? Is it manual? I
> > understand the tradeoffs of living on the tip of the spear, but
> > c4f245b40aad7e8627b37a8bf1bdcdbcd541e665 is 6 months old.  So upstream
> > LLVM could be regressing more often, and you wouldn't notice for 1/2 a
> > year or more. :-/
> KMSAN used to be the only user of Clang on syzbot, so I didn't bother too=
 often.
> Now that there are other users, we'll need a better strategy.
> Clang revisions I've been picking previously came from Chromium's
> Clang distributions. This is nice, because Chromium folks usually pick
> a revision that has been extensively tested at Google already, plus
> they make sure Chromium tests also pass.
> They don't roll the compiler often, however (typically once a month or
> two, but this time there were holidays, plus some nasty breakages).
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google Grou=
ps "kasan-dev" group.
> > To unsubscribe from this group and stop receiving emails from it, send =
an email to kasan-dev+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/ms=
gid/kasan-dev/CAKwvOdkh8CV0pgqqHXknv8%2BgE2ovoKEV_m%2BqiEmWutmLnra3%3Dg%40m=
ail.gmail.com.
>
>
>
> --
> Alexander Potapenko
> Software Engineer
>
> Google Germany GmbH
> Erika-Mann-Stra=C3=9Fe, 33
> 80636 M=C3=BCnchen
>
> Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
> Registergericht und -nummer: Hamburg, HRB 86891
> Sitz der Gesellschaft: Hamburg
>
> --
> You received this message because you are subscribed to the Google Groups=
 "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/kasan-dev/CAG_fn%3DUU0fuws59L8Bp8DEVhH%2BX6xRaanwuRrzy-HNdrVpqJmg%40mail.=
gmail.com.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CACT4Y%2BZWvnEVEDQe6c-4WRhdKkS0W%3DDHcWXe0etONnjjysR2pA%4=
0mail.gmail.com.
