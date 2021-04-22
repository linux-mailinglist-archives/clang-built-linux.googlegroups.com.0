Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP7YQ6CAMGQEHS5ECJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C7736891E
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 00:44:16 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id b21-20020a2ebc150000b02900bdf5989812sf10672828ljf.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 15:44:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619131456; cv=pass;
        d=google.com; s=arc-20160816;
        b=RA/z+9Hjv93QPq+F/Gl/Si4WG4HuVDDCxXLTq5FHaLMFudBHKmmk7iR2BqlljMhjZZ
         RIsCpaDEMWez4CnHoJYWG+CKRicW2x9m8JDZ0EabGzrexrSeVCE+fu8wCdeOWTAf+6bk
         7lkiSwT8Sa+1uC7/bzkOrsFj9aFfa6zoeT14qSTypMzcAcudhSPXPy82HwfMI+HfDtt3
         HvFLDTPcdMUUV45NyRBIyKUigcHX4Ol7naqu8P9ff+I2olNbCvIEYfug5Bke6J2Ej5z0
         IDcq8/95Wlac+awNzXMPtDSFH0DB/ULhgUlmYGd/97aUN+uq9S7Zrd+YWpKOuRn6nDCb
         cAqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/vDsBH4Ku+I3LHKNQjIcjX82JsuGmpO7jsSiwCbwGQA=;
        b=MfPFFjGEpKiWFqUBrB96hY3QLCorxMf0h+ovtyglgYy7JVyoVH2d4CZDxk8GQeRrDV
         37CqGJr1hut0weBMnRLpBPzbmwTqccaqesshWjhcSPNV0MHMPL8/UTVg/EIjnIL3/7Vr
         cKb5CQVEKe4B3+bZXC7eYtif8cpol+yYd8uoOrnkJJAwTzDaT/xhViHAe5vPRIMMk4L1
         KvcYUlOwtGJ/ajA/Xp+BsFe7Fu6VCBVPFglkm3z54XE3z2PssdqUkrJ5ZWztPUB9MtFi
         ZYAfzRI0q2q6VVt1AFQjKQ3kAkrNJpnDMe6JiKBIQFG6kk7yZPvKjcnciRTwUf1JaUeP
         EAbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J+EDgb6l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/vDsBH4Ku+I3LHKNQjIcjX82JsuGmpO7jsSiwCbwGQA=;
        b=DhUzRQGucsx51GVpYaB1W2OQxclMisgwki+oiPdzQDjDwMP+J4DH/sYQm73KAO+uKe
         OC1+aBcINgeEUpA96zuax3ZdS3r8DElxrzvf1EpAapKB+8ID4fjyTru7zaWUjEhxFyNe
         KD8g3nkFf0in1j1YJogPfhHDSMNfkXn219o7sDEejnI6VQ6+Q7P2xzykdchnq6TCFHSo
         UJZadZ4Rj3+fBlVaHXt70u2dO6ioyNiC/qIzAW9smnUE+q4HUk/4ndeS4sXFAufL0uYq
         9RZo7o/DpwSY3GQNXcFtU+fQ1U+DvcokpK8G6R6gnGbuT7q3iBHVhvaE8Q8rvTDc+kFJ
         H+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/vDsBH4Ku+I3LHKNQjIcjX82JsuGmpO7jsSiwCbwGQA=;
        b=MJ0Xh09qRzDudnrcwCp9ZDVqdV/ZWmRtB95WL0IZ31fXRlpOZF1KdtNbojt/g37W6N
         f+BachdM+OyAhrfEDzgD9F27gSDznc0vivDjfzcCDKt6DUtLmZ0JjhTBQW8DLJtGHgNn
         KvAYG9ThE1qJsjs01KZwePop96KFLUhMzCv6x+qtm/fAxpt88gY5NPgtOYcl3ONmG85/
         hcFVTNPMdd6diKtyP7UwO9ah1IAnoFZwCA7RxKbYTJEAoBfgaqnhlHZjZFUvZkR4Q4uS
         4Q/nlqjfSUu+xxS+YA1SpGMvZXrNcKfzshA/uSDK/SaIcwgv1YEeIQQSrf4bGZr3CH69
         dDLg==
X-Gm-Message-State: AOAM533rNX8mhOs2u2Si6+IW5e9XxVBA2Xkcie8yINHwPq5+oMKrwOrp
	fRfUfwKWGKQixzbdz3sqico=
X-Google-Smtp-Source: ABdhPJzUWBc7AbXHecoDhfxHRCJ2AV3m0ZKRXuxtl7JWlLRUM/OlLGGy7VnjaSCHyxRJ97rsD2be3A==
X-Received: by 2002:a2e:b44f:: with SMTP id o15mr720208ljm.19.1619131455955;
        Thu, 22 Apr 2021 15:44:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5624:: with SMTP id b4ls2025497lff.0.gmail; Thu, 22 Apr
 2021 15:44:14 -0700 (PDT)
X-Received: by 2002:ac2:5f19:: with SMTP id 25mr473609lfq.328.1619131454899;
        Thu, 22 Apr 2021 15:44:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619131454; cv=none;
        d=google.com; s=arc-20160816;
        b=AKdjGgy5RXIKt2Cnzep9dgPBvB/6SRZoICJb9XpgUokKpL2F+/7eHajRcOCv7ej+AA
         8QwEvySJUcW+QGWvrkHH7krNVQAcIArogiiqu1e3FdO62KJer6DtZ3Wgn6t/WmATXOSl
         dU5WTdSm3AkXYphLweugqfUgdrkkbo9QMq3g5yyOxRqJ0SrSVJuyF7S4LbFE+3F03mIg
         Rgrx/7GkZvQvIWO5ShLOAhyGCdQXeHg5BZdF1pngxv+91r+p7VrvgcNqUsfOxjLIOOzR
         7Eh/6e6Kxpmdj+DnCJmzVu5uelTZTZLckkwaRfZyW2ak87hhMhrXwtR07DcpvDXi4ltB
         hjCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eVWWvugI8DB7tGc32EIZh1dbZnwGe5Bt+f006OvhJS0=;
        b=Oi2h+I7ZBt0KmDkNo7gluQcjUssfifmZnGNCWN+P71KhG/xdr12FXxVQiDhVkEFnbj
         ge2fxurOnL8kN4viymiKgvk5yY6oaeIYMDgRqkAH4qSdClykaNdd2lkDpgufnYiKkBxN
         /rNFZtd+xEbCJue0EOa2BTCsl32nwMZqWZjxSbgER05OJHiK5TRTL1q6smafov+pzhgD
         UZZq1TD8UgcPs7aCNPdKp57i9vY5W/bsUnNE15xQIlZQtAV55TwLLLzVUUZyS0AqSOD0
         QnGUtYaab+l4OJRNCF2qj3/8LzdQPg14E0Dt6Vt+/Q1Y6q/NqiA4QxB0bA9jqO010fdJ
         mdDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=J+EDgb6l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id r2si444699lji.7.2021.04.22.15.44.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 15:44:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id j18so74678594lfg.5
        for <clang-built-linux@googlegroups.com>; Thu, 22 Apr 2021 15:44:14 -0700 (PDT)
X-Received: by 2002:a05:6512:159:: with SMTP id m25mr454486lfo.73.1619131454440;
 Thu, 22 Apr 2021 15:44:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200901222523.1941988-1-ndesaulniers@google.com>
 <20200901222523.1941988-2-ndesaulniers@google.com> <87blio1ilu.fsf@mpe.ellerman.id.au>
 <CAKwvOd=ZeJU+vLUk2P7FpX35haj7AC50B9Yps4pyoGCpd7ueTw@mail.gmail.com> <3d837a36-a186-6789-7924-eaa97f056b68@csgroup.eu>
In-Reply-To: <3d837a36-a186-6789-7924-eaa97f056b68@csgroup.eu>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 22 Apr 2021 15:44:02 -0700
Message-ID: <CAKwvOd=KP5CZ5wOrczC6qPAzN7DdFCJ_XvU6e=zvB3XpQrp_-g@mail.gmail.com>
Subject: Re: [PATCH 1/2] powerpc/vdso64: link vdso64 with linker
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	Joe Lawrence <joe.lawrence@redhat.com>, Kees Cook <keescook@chromium.org>, 
	Fangrui Song <maskray@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	Nicholas Piggin <npiggin@gmail.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=J+EDgb6l;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Wed, Sep 2, 2020 at 11:02 AM Christophe Leroy
<christophe.leroy@csgroup.eu> wrote:
>
>
>
> Le 02/09/2020 =C3=A0 19:41, Nick Desaulniers a =C3=A9crit :
> > On Wed, Sep 2, 2020 at 5:14 AM Michael Ellerman <mpe@ellerman.id.au> wr=
ote:
> >>
> >> Nick Desaulniers <ndesaulniers@google.com> writes:
> >>> Fixes: commit f2af201002a8 ("powerpc/build: vdso linker warning for o=
rphan sections")
> >>
> >> I think I'll just revert that for v5.9 ?
> >
> > SGTM; you'll probably still want these changes with some modifications
> > at some point; vdso32 did have at least one orphaned section, and will
> > be important for hermetic builds.  Seeing crashes in supported
> > versions of the tools ties our hands at the moment.
> >
>
> Keeping the tool problem aside with binutils 2.26, do you have a way to
> really link an elf32ppc object when  building vdso32 for PPC64 ?

Sorry, I'm doing a bug scrub and found
https://github.com/ClangBuiltLinux/linux/issues/774 still open (and my
reply to this thread still in Drafts; never sent). With my patches
rebased:
$ file arch/powerpc/kernel/vdso32/vdso32.so
arch/powerpc/kernel/vdso32/vdso32.so: ELF 32-bit MSB shared object,
PowerPC or cisco 4500, version 1 (SYSV), dynamically linked, stripped

Are you still using 2.26?

I'm not able to repro Nathan's reported issue from
https://lore.kernel.org/lkml/20200902052123.GA2687902@ubuntu-n2-xlarge-x86/=
,
so I'm curious if I should resend the rebased patches as v2?

--
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DKP5CZ5wOrczC6qPAzN7DdFCJ_XvU6e%3DzvB3XpQrp_-g%4=
0mail.gmail.com.
