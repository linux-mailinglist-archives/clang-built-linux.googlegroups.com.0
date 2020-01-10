Return-Path: <clang-built-linux+bncBCCMH5WKTMGRBP7P4DYAKGQEZ22MCUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1237913690B
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 09:37:20 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id d7sf250616lfk.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jan 2020 00:37:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578645439; cv=pass;
        d=google.com; s=arc-20160816;
        b=HnEiptDwWemCzJI04rUUs3Nhn3KCddK77IZVfi0TxufRGEeRH6KmTk/64WGukp2UyX
         YHvq4ZHPLkzJfYIEASP96o44KWcVELiUa+54S2xOXQibCL82vYY8Oio/pjPlgS4ZEto0
         qJ6bi9cgliK2YYtR06e/GroNuSVReDu5qra7Or9giu1SDlpoiQURujrLq8eHOyVqGSBa
         Ax9cKXgNxiVd3c+m/QZqa+xWcX0eTb/SmqWueD5RPzync0pW2PaNUrbe35UfWzDFzwxw
         D+XWixEni8cjyfTm9cNPF1GqlpCDXmSvqrU45XfOL6wCWbK7UzlMt4vndq80QLI/aWdN
         I45g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ndbl0Ls/BmFo4U/CN7rMB/oeTdo26KXIYKd9p6jmgUE=;
        b=gh4m1tzne2s6v2E8JWBE+9gxvT39RSo1vmlzZPa5h4mHIvY8mH1eXqzXKw+qWTKLO8
         1SyjEvv4KWsWk2IVuKAGj2/5fK+AxX0x9b5PQL72b1MCyrMH80nLJuJEekQs67svc/i4
         uppV6Op7vX6Dl1+os4mgyLWPPrspdMuawJiocrgkm/9CWIFWYVHldWyYlvGamXbk+Jdy
         MdYz3prBoX+nGlcd9jiA+Jm7Zlwt9w5dypeluvXz+YwfzJexCgxAaf5vmrIysISsX8tS
         K26+0DMkQYDIzHa3G4Bav9zu1l6j3UD78GbaZ92yBIXtYzOqoE/PxCk33nJVahGh87/g
         JPnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bJ2dpBuS;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ndbl0Ls/BmFo4U/CN7rMB/oeTdo26KXIYKd9p6jmgUE=;
        b=YIOwhSzQUhLXu7TIWk5DBRT8nE9rsJS4g6X//3Bf+ChFDQuTY1/NYJhuE/BuCEYLSY
         wVdMMBQpAPIbANlUZ4hCrE9+HiG3YJDcAzLyA30rYh7x7qJDrruMfQHlFSgjrbKdDY1A
         HGmdBsR6VByMP5dI08GqgTeOlituJdsF4Fx75muaPGNIQ7z8dhRNDflWMh1ZGwG8gLSg
         d+jsiCdAz9/D2jctwFCdbUJeYvZKhHFA4E/vYfNxcOzturfOGLQqI90A0sw02EHe2LIr
         RVcX3R6KbFFZRIOdccgmeaFpVdBLuYnzjfZDMX5U/jrPL8gdEmW84ZWG216+n1ZAx6Vq
         SEtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ndbl0Ls/BmFo4U/CN7rMB/oeTdo26KXIYKd9p6jmgUE=;
        b=mGZEBfJ6ST6dwzjJuBV1idTr01Vs0zvSfJvIsHD293ZXgqTcfCs/8VSVdS1CoP0Tlj
         +2TRimp6E+nJCNsWzGZk0MRJpvFFX8wymFGLjCWRunTBgY4DMD6TYQ8FUAPwMyejxA/B
         w9RIOM9sroO4AqRnXbmtjJ1iSHZv6nE74pGr/V/b0fjnxwV/5OS9rjeJVgZGWurx5TUJ
         +0Q57k6iNa12JjwoYzb90axaSBSXX6Avi32cgSogi2GqvQiJq5WbDQ1ASaLvymhXxPpH
         Cv15HH7wWbdsQmB5A7WlD6VaUUIIDHN9924TfF9JfqviOhTCRMV0M5zDJacpum/rV5pb
         eRHQ==
X-Gm-Message-State: APjAAAUSnNo7HGwEyho0GQ08J+DDdpF/Kj90n3cBi4F/n5uux8pYw/IN
	lipdXrx2yZ0tkkks3XdqWY4=
X-Google-Smtp-Source: APXvYqzj0Mx4uioyBsUd9NNPFSjRycPDE0ouqY2JtXyEb9ZPuLgV+cTNOyKQjbxfuyh24dM0GqRlEA==
X-Received: by 2002:ac2:57cc:: with SMTP id k12mr1550217lfo.36.1578645439616;
        Fri, 10 Jan 2020 00:37:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:3f0b:: with SMTP id m11ls427038lfa.0.gmail; Fri, 10 Jan
 2020 00:37:19 -0800 (PST)
X-Received: by 2002:ac2:44a3:: with SMTP id c3mr1451310lfm.1.1578645439074;
        Fri, 10 Jan 2020 00:37:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578645439; cv=none;
        d=google.com; s=arc-20160816;
        b=ZdmbJKVTR9O4z6JcE7meFuTF9tQWQQN37Ryc07jcFUTA2kQvg23rlU+Z37uOBY1vrR
         4Bc/5Ugu4sGlJuyD8R1WwTVU456Qqf7+t1WoClhLACNL5Xeimc4lWgUhYSkdeAPAssVE
         JwJRbOYd2gyaqOUiLQwCsZlKIUXR4trGjvQNKyWusz9PxS1MZybvx9CYjXHA1O5rvgGb
         gHfYrBF/NrpOnPP4mug64q3CXc4NzxpMecOflohNv9Bfidkppg0N2mf2cMnYQQDvg/fn
         o3qNtbznnky0xfG4Edo5cjA0FftYh9WSZ1vrqhd6/LjzYgw+hiyYyw3yTZJJOik4mmxj
         jMfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=om0mw7hfO7KryyMGfpDve61XxX/EYx11Q6dBG1khPIU=;
        b=vwuUWkSWJvOf5BIxAvkTIuJbXQrJlqM8hMHdMFh0WiTJJByvosdVaDsmZZxi9zRhct
         UYVIJXrfiLPSRby+3ItixbX1zpMS81VxM5IGe/Ou9BEkNVWDVz5M15PUxihnM7eWLuIe
         Hk3SERjVBizGtIFMkXltfAQGWghrEjI2ifvp1QmizU7xhmagnekfIOdhSxh07oNYi4YN
         rK8hc/qHaFg/yqUnNvMUy7ovG/hPjEqBZmSsKlL2Z+pg0U3T+LnyRGHPNcxF8Yth6v6W
         W7Vp3AFkCNmSl/t8Bl6r02FeMWLc5rmCH1zfGZgWW/ojL+Shh5ksZ6wzy99J4xvTmNJg
         SeHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bJ2dpBuS;
       spf=pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=glider@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id h8si63961ljj.3.2020.01.10.00.37.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2020 00:37:19 -0800 (PST)
Received-SPF: pass (google.com: domain of glider@google.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id d16so914953wre.10
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jan 2020 00:37:19 -0800 (PST)
X-Received: by 2002:adf:ef03:: with SMTP id e3mr2216681wro.216.1578645438209;
 Fri, 10 Jan 2020 00:37:18 -0800 (PST)
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
 <CACT4Y+apeR4GJdS3SwNZLAuGeojj0jKvc-s5jA=VBECnRFmunQ@mail.gmail.com> <CAKwvOdkh8CV0pgqqHXknv8+gE2ovoKEV_m+qiEmWutmLnra3=g@mail.gmail.com>
In-Reply-To: <CAKwvOdkh8CV0pgqqHXknv8+gE2ovoKEV_m+qiEmWutmLnra3=g@mail.gmail.com>
From: "'Alexander Potapenko' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 10 Jan 2020 09:37:06 +0100
Message-ID: <CAG_fn=UU0fuws59L8Bp8DEVhH+X6xRaanwuRrzy-HNdrVpqJmg@mail.gmail.com>
Subject: Re: INFO: rcu detected stall in sys_kill
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, Casey Schaufler <casey@schaufler-ca.com>, 
	Daniel Axtens <dja@axtens.net>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, 
	syzbot <syzbot+de8d933e7d153aa0c1bb@syzkaller.appspotmail.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: glider@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bJ2dpBuS;       spf=pass
 (google.com: domain of glider@google.com designates 2a00:1450:4864:20::442 as
 permitted sender) smtp.mailfrom=glider@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Alexander Potapenko <glider@google.com>
Reply-To: Alexander Potapenko <glider@google.com>
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

On Thu, Jan 9, 2020 at 6:39 PM 'Nick Desaulniers' via kasan-dev
<kasan-dev@googlegroups.com> wrote:
>
> On Thu, Jan 9, 2020 at 9:23 AM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > On Thu, Jan 9, 2020 at 6:17 PM Nick Desaulniers <ndesaulniers@google.co=
m> wrote:
> > > I disabled loop unrolling and loop unswitching in LLVM when the loop
> > > contained asm goto in:
> > > https://github.com/llvm/llvm-project/commit/c4f245b40aad7e8627b37a8bf=
1bdcdbcd541e665
> > > I have a fix for loop unrolling in:
> > > https://reviews.llvm.org/D64101
> > > that I should dust off. I haven't looked into loop unswitching yet.
> >
> > c4f245b40aad7e8627b37a8bf1bdcdbcd541e665 is in the range between the
> > broken compiler and the newer compiler that seems to work, so I would
> > assume that that commit fixes this.
> > We will get the final stamp from syzbot hopefully by tomorrow.
>
> How often do you refresh the build of Clang in syzbot? Is it manual? I
> understand the tradeoffs of living on the tip of the spear, but
> c4f245b40aad7e8627b37a8bf1bdcdbcd541e665 is 6 months old.  So upstream
> LLVM could be regressing more often, and you wouldn't notice for 1/2 a
> year or more. :-/
KMSAN used to be the only user of Clang on syzbot, so I didn't bother too o=
ften.
Now that there are other users, we'll need a better strategy.
Clang revisions I've been picking previously came from Chromium's
Clang distributions. This is nice, because Chromium folks usually pick
a revision that has been extensively tested at Google already, plus
they make sure Chromium tests also pass.
They don't roll the compiler often, however (typically once a month or
two, but this time there were holidays, plus some nasty breakages).
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups=
 "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/kasan-dev/CAKwvOdkh8CV0pgqqHXknv8%2BgE2ovoKEV_m%2BqiEmWutmLnra3%3Dg%40mai=
l.gmail.com.



--=20
Alexander Potapenko
Software Engineer

Google Germany GmbH
Erika-Mann-Stra=C3=9Fe, 33
80636 M=C3=BCnchen

Gesch=C3=A4ftsf=C3=BChrer: Paul Manicle, Halimah DeLaine Prado
Registergericht und -nummer: Hamburg, HRB 86891
Sitz der Gesellschaft: Hamburg

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAG_fn%3DUU0fuws59L8Bp8DEVhH%2BX6xRaanwuRrzy-HNdrVpqJmg%4=
0mail.gmail.com.
