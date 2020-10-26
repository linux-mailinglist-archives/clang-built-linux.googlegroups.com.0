Return-Path: <clang-built-linux+bncBD63HSEZTUIBBJM73L6AKGQEQEJ2WYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D9C2988E2
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 09:58:15 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id 41sf2491005pjz.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 01:58:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603702693; cv=pass;
        d=google.com; s=arc-20160816;
        b=1Kl7YWuBnG7SWSigeBd9Y3mQtCu5nb/gRFWoUJ9CC9AyISwuPfvwl/ptgjizNX6Rgk
         xbew16Z2Yi6sE/DnjKO6SiBQiQCZLACEAbE1suRPxPjb0YbGW/JMfSNyLjMIQGfVc4JL
         XS8p1ZmOI/fqHAx1A1SSU6+zLcUVdcnwvIcLILxVqOM0ZfEwGdbgOkXa6VREH0a8ZJoo
         OSamzIkBzUV33hxxjwpZ6jfomJWydi0SJxumrtV4Xco0CAz6xEbR4rCrNGQJJaQ4pLEb
         Qtrv4dkELcaG5JDgydGMNrWq91hlSjDNgnLU0HcNzjDTM4+h8l22Mi0tJnvC9BOo4F5b
         l2ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=we8lm9LxScRADQHz0Y5bqmlGHCwdQFIR0LagNJo9nUU=;
        b=MGpT9Le1iQy2CbtIQPGvX3akDI864liHQwgEzUBZFzpP9jXY47xhvoWdeZ3jQBOkSU
         nuD64bym66sIbJhBmWbLPJaaDu+L1+IFJY5lHwmB/tiFPqwmTu6hM/LsqktvJ1YMx2RF
         DBplqzEw8xyDiWkv7avtFNrJf5X6ZlShSNpsXtMYV+iHaBtrX0Lwjh3FG5v21lDnNVFc
         uWl0C1HbYk9ITGmRY3+xEYC6qbHC2h7Z1XQS8uUI9NvGz4nUPRBQ8KJsFcSdnGEeV7Tn
         YQQH+ynIfyZIYwRBMoAkTlABZWfUce8Y1/tNvXr3H87NlWCpGZioIFlAFwVGEcRCmozm
         wdOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SSha1Q9M;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=we8lm9LxScRADQHz0Y5bqmlGHCwdQFIR0LagNJo9nUU=;
        b=Bc0OMCnijFZEYgfeNfRRHHLJDAf1xuf969FMJW5GRgRbww1YvJH+UQdDDlMfXOlXYM
         GUGQ0xHnw13FGziCtpXnkcCHF/2L8LRL09IGhuilKLg0wkUPL+Mde3DQNc58NJaA1lAa
         wOkO+gOlhkSTNuDf1Bvw2HbaTLOq259gYNd0kQpH+Jk9qQWWHUfhHFJgwo5NfhsPnVWm
         95UKkqQ9uKW7SDI0DvG+okwwppBRI61LNIR/R6mzOFjAEzX/jzAhQkKcWe/uDXZ9v/kW
         8pM9uY8X+PitpjojCblw9j1O2RsVn1L+CNBsXd663uWMbCPyIioBhvnLvalDU+yTP1mk
         3uUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=we8lm9LxScRADQHz0Y5bqmlGHCwdQFIR0LagNJo9nUU=;
        b=GS6aexiB/qkA91MTqM15tyWKEi1/lsiz3+4YfsMCMSSNrQFEoJID3vTgq8MXkthtUy
         TXw8tbg/0nZfGwz1/99YPklatW8sIDmnP/OhoC7RIlA6UyVEfSPIu41bdDCP0XdjyYOD
         lGb0EU80KWNjWFwLpQFt7SlTAVdCkplzMV1TgX/X21tiQCD+CHZaT5zzCJgdY71mqBco
         60e44xdkMut6SfHOoGHSynD7h1EqvbUTfNXjz1o97geTluDXFY3S7Vf41Bb/ATasoHuu
         5NRw22Ufy/8rlyZnQhiyvPSnCDVAjOtpADDBNpP5KYR40SluUKXGWOUgdAagqWZ6Fal+
         aKnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+bvl+/eYTUoJvUTUocV5wMKrQuIAcKP28n01Xy/pwpFtFErwS
	E+IrET1chEfZxdEV+QZ9rAc=
X-Google-Smtp-Source: ABdhPJwik5bgYftemJqD6EC5mI9dZNks+y5/w4nryogEUsLMEryf5xovjQtkSILHhFjc7vybivMYSQ==
X-Received: by 2002:a65:6a4a:: with SMTP id o10mr5531672pgu.210.1603702693138;
        Mon, 26 Oct 2020 01:58:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:ec1:: with SMTP id gz1ls4245122pjb.3.gmail; Mon, 26
 Oct 2020 01:58:12 -0700 (PDT)
X-Received: by 2002:a17:90a:1188:: with SMTP id e8mr18876846pja.61.1603702692563;
        Mon, 26 Oct 2020 01:58:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603702692; cv=none;
        d=google.com; s=arc-20160816;
        b=gwiRJXGyep42Z+KVZ2I5BsUnEbmNgatQmWFN77HjF6YOYlCszjVBdizohcEv93ix9V
         cQbgo56nr6PxVLWrgDclIbiLfqF44WXWtylqCXT8sOjMbh7SmBF8/gZ3fFivNc7EF4l6
         PRkH2bXN+CnpOrXMBlCvFGv/ii40m/tUKSMVktUVrTwM92PsRxRCeV1Rg7yIqZB/fL3f
         jU9BF0nSuGS0ZkstehJ+5GOsqdq5HMShy1V/AXiacQ2Itn9gYGfDhuDX0uCva+3mi6zH
         QukCNaFT8Dajv5MhdresJfRIAJgTlgKrNEYDWGjBGG9Lk71yU5GXfluB6T2WokOAcKJn
         KWLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/hC2hDXhjxYTfA7M2+J1mk0htV1LjsKCtseL/Hz5ERo=;
        b=TJ5kOQFA4iIJxc7Zb1LFOwixSPTbV8VN8kAQFksYRWyUjTV+eIFXA4pTBj4W9c8V0m
         1BIAMbtrq9xD39dLD7edyhjIBmpRrWzMajYm5BSNUBUF73iENhvGl7vSNoTMZXeDHxL9
         Ab9zirM29LIsfiq+IFvSaCNi84CBnLNLEY6TurA7C3/U98QCctMpeb0ff0IScmHH2Ruf
         czGoVXd7aJQUxU/hfYPndIdn4Sh3BzuUwZXnPXQUDQhRoZj2GAxS86BOnUwunHamB2LT
         nEqNknmvKmMW6t6mfgnU1eRUSOXyIJDGaPpx8J9csdIsSTt6lRPsQkXON8rWLJ9gwOnJ
         /k3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SSha1Q9M;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p4si562503pjo.1.2020.10.26.01.58.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 01:58:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1DD3120795
	for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 08:58:12 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id k27so9767010oij.11
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 01:58:12 -0700 (PDT)
X-Received: by 2002:aca:5a56:: with SMTP id o83mr9667824oib.47.1603702691362;
 Mon, 26 Oct 2020 01:58:11 -0700 (PDT)
MIME-Version: 1.0
References: <202010211637.7CFD8435@keescook> <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com>
 <202010212028.32E8A5EF9B@keescook> <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com> <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk> <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk> <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
 <20201022174826.GS1551@shell.armlinux.org.uk> <CAMj1kXHpPbwS8zjsr8S65EMj9XOwPxWiQ5WN_ok8ZAFZg9kSAg@mail.gmail.com>
In-Reply-To: <CAMj1kXHpPbwS8zjsr8S65EMj9XOwPxWiQ5WN_ok8ZAFZg9kSAg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 26 Oct 2020 09:58:00 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGok50R+2FZ=LqRAx5N3otC3AvC26=+NUqNC6kSvY2-Lg@mail.gmail.com>
Message-ID: <CAMj1kXGok50R+2FZ=LqRAx5N3otC3AvC26=+NUqNC6kSvY2-Lg@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Dmitry Osipenko <digetx@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SSha1Q9M;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 22 Oct 2020 at 19:59, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 22 Oct 2020 at 19:48, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Thu, Oct 22, 2020 at 06:33:17PM +0200, Ard Biesheuvel wrote:
> > > On Thu, 22 Oct 2020 at 18:23, Russell King - ARM Linux admin
> > > <linux@armlinux.org.uk> wrote:
> > > >
> > > > On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
> > > > > On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
> > > > > <linux@armlinux.org.uk> wrote:
> > > > > >
> > > > > > On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
> > > > > > > On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.c=
om> wrote:
> > > > > > > >
> > > > > > > > 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=
=D1=82:
> > > > > > > > > On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromiu=
m.org> wrote:
> > > > > > > > >>
> > > > > > > > >> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenk=
o wrote:
> > > > > > > > >>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=
=82:
> > > > > > > > >>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipe=
nko wrote:
> > > > > > > > >>>>> The vfp_kmode_exception() function now is unreachable=
 using relative
> > > > > > > > >>>>> branching in THUMB2 kernel configuration, resulting i=
n a "relocation
> > > > > > > > >>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vf=
p_kmode_exception'"
> > > > > > > > >>>>> linker error. Let's use long jump in order to fix the=
 issue.
> > > > > > > > >>>>
> > > > > > > > >>>> Eek. Is this with gcc or clang?
> > > > > > > > >>>
> > > > > > > > >>> GCC 9.3.0
> > > > > > > > >>>
> > > > > > > > >>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and Auto=
FDO input sections")
> > > > > > > > >>>>
> > > > > > > > >>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add m=
issing sections") ?
> > > > > > > > >>>> That commit may have implicitly moved the location of =
.vfp11_veneer,
> > > > > > > > >>>> though I thought I had chosen the correct position.
> > > > > > > > >>>
> > > > > > > > >>> I re-checked that the fixes tag is correct.
> > > > > > > > >>>
> > > > > > > > >>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > > > > > > > >>>>> ---
> > > > > > > > >>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > > > > > > > >>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > > > > > >>>>>
> > > > > > > > >>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfph=
w.S
> > > > > > > > >>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > > > > > > > >>>>> --- a/arch/arm/vfp/vfphw.S
> > > > > > > > >>>>> +++ b/arch/arm/vfp/vfphw.S
> > > > > > > > >>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > > > > > > > >>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy res=
tore nor FP exceptions
> > > > > > > > >>>>>    and     r3, r3, #MODE_MASK      @ are supported in=
 kernel mode
> > > > > > > > >>>>>    teq     r3, #USR_MODE
> > > > > > > > >>>>> -  bne     vfp_kmode_exception     @ Returns through =
lr
> > > > > > > > >>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > > > > > > > >>>>> +  bxne    r1                      @ Returns through =
lr
> > > > > > > > >>>>>
> > > > > > > > >>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabl=
ed?
> > > > > > > > >>>>>    DBGSTR1 "fpexc %08x", r1
> > > > > > > > >>>>
> > > > > > > > >>>> This seems like a workaround though? I suspect the vfp=
11_veneer needs
> > > > > > > > >>>> moving?
> > > > > > > > >>>>
> > > > > > > > >>>
> > > > > > > > >>> I don't know where it needs to be moved. Please feel fr=
ee to make a
> > > > > > > > >>> patch if you have a better idea, I'll be glad to test i=
t.
> > > > > > > > >>
> > > > > > > > >> I might have just been distracted by the common "vfp" pr=
efix. It's
> > > > > > > > >> possible that the text section shuffling just ended up b=
eing very large,
> > > > > > > > >> so probably this patch is right then!
> > > > > > > > >>
> > > > > > > > >
> > > > > > > > > I already sent a fix for this issue:
> > > > > > > > >
> > > > > > > > > https://www.armlinux.org.uk/developer/patches/viewpatch.p=
hp?id=3D9018/1
> > > > > > > > >
> > > > > > > >
> > > > > > > > The offending commit contains stable tag, so I assume that =
fixes tag is
> > > > > > > > mandatory. Yours patch misses the fixes tag.
> > > > > > >
> > > > > > > Russell, mind adding that? Or would you like me to update the=
 patch in
> > > > > > > the patch system?
> > > > > >
> > > > > > Rather than adding the IT, I'm suggesting that we solve it a di=
fferent
> > > > > > way - ensuring that the two bits of code are co-located. There'=
s no
> > > > > > reason for them to be separated, and the assembly code entry po=
int is
> > > > > > already called indirectly.
> > > > > >
> > > > > > The problem is the assembly ends up in the .text section which =
ends up
> > > > > > at the start of the binary, but depending on the compiler, func=
tions
> > > > > > in .c files end up in their own sections. It would be good if, =
as
> > > > > > Dmitry has shown that it is indeed possible, to have them co-lo=
cated.
> > > > >
> > > > > Why is that better? I provided a minimal fix which has zero impac=
t on
> > > > > ARM builds, and minimal impact on Thumb2 builds, given that it re=
tains
> > > > > the exact same semantics as before, but using a different opcode.
> > > >
> > > > I think you just described the reason there. Why should we force
> > > > everything to use a different opcode when a short jump _should_
> > > > suffice?
> > > >
> > >
> > > Why should a short jump suffice? The call is to vfp_kmode_exception()=
,
> > > which we only call in exceptional cases. Why would we want to keep
> > > that in close proximity?
> >
> > You're thinking about it in terms of what happens when the branch is
> > taken, rather than also considering that this code path is also
> > traversed for _every_ single time that we enter the support code
> > not just for kernel mode.
> >
>
> True. If 2 bytes of additional opcode are the concern here, we can
> change the current sequence
>
>    6:   f093 0f10       teq     r3, #16
>    a:   f47f affe       bne.w   0 <vfp_kmode_exception>
>
> to
>
>    6:   2b10            cmp     r3, #16
>    8:   bf18            it      ne
>    a:   f7ff bffe       bne.w   0 <vfp_kmode_exception>
>
> which takes up the exact same space.

BTW this code path looks slightly broken for Thumb-2 in any case: if a
FP exception is taken in kernel mode on a Thumb2 kernel, we enter the
emulation sequence via call_fpe, which will use the wrong set of
value/mask pairs to match the opcode. The minimal fix is to move the
call_fpe label to the right place, but I think it might be better to
move the check for a FP exception in kernel mode to the handling of
__und_svc.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXGok50R%2B2FZ%3DLqRAx5N3otC3AvC26%3D%2BNUqNC6kSvY2-=
Lg%40mail.gmail.com.
