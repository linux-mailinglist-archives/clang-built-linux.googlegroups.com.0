Return-Path: <clang-built-linux+bncBCU4TIPXUUFRBNXVU2JQMGQEOCTR65Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id D162E5124C9
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 23:50:47 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id v10-20020a17090a0c8a00b001c7a548e4f7sf4021703pja.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Apr 2022 14:50:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651096246; cv=pass;
        d=google.com; s=arc-20160816;
        b=gR4f4kStTrwBXCZOvBF0sluxdmnEANqNntgZzBH1KH1AVYVGBpdT2zWoA9CsIm73qu
         JUkWtYfKkZMecHHaaFUPIWp0zIjmHi10LyU8xklaznxqY4tfECOlofcLz2zbrYOHp+bk
         hYYnIveSSQ5uxx0dkhQr9MSVuUtfyUUSWAfpqXqqkb4DZ3jQ+glMvaNTZLa900VtGZMf
         WF/4QnAoO7skG25u/Gzl/ZlN2D2uju5SurIyCd9XnC4avcPZ5d4wiGhtZngYpx6bjwAv
         FQv9QQf6hFIHe/wwQiZRdAop+2lDIYN0TERKkVqLGez4V54GoYM33msLCh5v8t4gB66p
         ySag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=GKdrcIp0vD7ab4SRU8YY8t4YypTf+vdU2L1fIWeSJHQ=;
        b=ICeDjrDRWcPzUaayOqtzlQDbpgrPKcpbgrO2hnHBM3B+X7WocYliDN+pIeKgaWJLB2
         Buz0erWUpNcZUB6KC+fCHIzz0inCmULkYQyXcTE0DryEB8XutZoHCRYJgr3iaJbKhgdX
         igSAheVILpO7/t1Klz1AxIz9rx3Mpze+EFxT5PE78chl7Ffy7KOx+Unj9nkBj3I1nRoT
         EIasDTeateJa2+g7+7OBJmZRaccVAQ7pJVVMJ2Kp3cg8bJG0WSchc3c84Q3IcdCmBRaz
         AKERW8QBUezs3zC8/ZW8p43OABB1ZDZ1wH35HIt6xvBNshJtbjN75yU7O3zyyPNIkh+F
         7ZCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VQA2Sxt6;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GKdrcIp0vD7ab4SRU8YY8t4YypTf+vdU2L1fIWeSJHQ=;
        b=ltkyQ+XfVoHCr34hnR+EZn8EoxbBPUa4hEIsZvSBTtjOnnVlSnE3J5OQ4nsnEaYtpE
         +E3FlD56EGMy3vHUFxQpPx0YlCNTBIW0My1bKTStfW1pQZ1mDyPMefB5Qdp3rVojp1Vy
         bYi10HFwLoy5E/hTGG6EzYpt6Fz7k6jxU3EEEoXUweoigHjHuOVDlO9tJ7NqwWFGIK1W
         V2FUw/n6totq9Vz6segdGFYsr07neBKtYfh0FLSdXOeT7QMUkvzBWDtXWiYh/jrKyX5w
         46EihmZhwhTl+7seqfg07XRPyHjBnJrrv/ycpRk6d+LIaH3SylIsqs3w1ajxIdjfvJlN
         lT0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GKdrcIp0vD7ab4SRU8YY8t4YypTf+vdU2L1fIWeSJHQ=;
        b=eqC3jlDM4u8jHeTQzqBq2pvs3fZguiXErVgoL9XzcciH3+R+zQYAa+0nEKH0Wo0sRq
         TRP7Hw1jN6B8F6Yko926b6NplwrT5Qvo6n0TzBCt9UOR9BHNPaHeSlcccHFXNzU7jF0j
         K6huU8qC+cArC4ALpszudUYob8Ihxdh1WCUf3lrr+HzGcdSWaAe4vw92dTAY2BReKnuf
         YndQr3XWHBYKDIMvcb0vKNdlJGffDeCqfdtOgklX8uIHVwWcik9LwxU67/YBdipCuheJ
         zOYE2ln6XMXJx5IGFa7KZXVtkqv3jFRajFk5inT6tKLov6eolsQlvm9ayfRwsjmxJe5Z
         C8oA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tYVAKP8lziQ6CLv47Klsfnba3VrGfyUdNhp8f65fD8QMRJvOI
	B3vzmZkclbgc9Rf6JKabOhs=
X-Google-Smtp-Source: ABdhPJzP3aQfregU3DAJKwLgm0SBuCsS1SvyEc8EAMNwlksPRvYwaeC6BH+elzTM24hBR/f4ssyI6Q==
X-Received: by 2002:a62:f20d:0:b0:50d:6961:7b75 with SMTP id m13-20020a62f20d000000b0050d69617b75mr8160712pfh.19.1651096246530;
        Wed, 27 Apr 2022 14:50:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:22c6:b0:50a:6f7b:bb0b with SMTP id
 f6-20020a056a0022c600b0050a6f7bbb0bls8455194pfj.3.gmail; Wed, 27 Apr 2022
 14:50:45 -0700 (PDT)
X-Received: by 2002:a05:6a00:2311:b0:4e1:52bf:e466 with SMTP id h17-20020a056a00231100b004e152bfe466mr31769017pfh.77.1651096245760;
        Wed, 27 Apr 2022 14:50:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651096245; cv=none;
        d=google.com; s=arc-20160816;
        b=OmPctSXEnGtuJl4+bmHa19/oNRLxQiCU4xwGX4hGJtEhuofw0g/fZETVG29KNuCy93
         pj2QwT9SpYWJRVFJPEd1S2yzp5NRlom/EQwCNaVx0Jof5bIlvgohwcLOApcscqGJQQsM
         RUnB67Z6/MSGYRk8wFyEow3RtNxTxkCInERl1eflwpNrL2ckJTK6w9z0ME1tLcjJvfeQ
         R7V+qnvSUJiP2cU7T3yU6WDUC5j8NPAVv10qTAaiOMgCRGmaoIN/bWyy2OfoVe7Icm7z
         HvBjgzcuE21n30StbmjUQbImk0bLUzDt6fvhxpukc9k/d6XWrvS853WfHQoWSUFIGdzs
         7hzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XArws+hrn43cucPeGgW2roKNgN0BplPJ+bNEftJGJX4=;
        b=U6kLfSsFz0YxyfRgfYfp+CZpZF/dGsikAqih7OyWH9b0NufwpH6vLFsT3pX/kAL39S
         11Br0QterY0oDufsYGLsbgSP6zU869Rz6mRvgY3WvPVTuw22h4CApy34K6e7yt2UuP7d
         sVypXW8gxXAjoKIv/tb6NzlKc5u/xC8DU3xTBJoY+PYnKe/mlWfUJX8Z0HlyY+pjk3oM
         rMyHKTKUxLQHa9XgIyd2jtTiT4DC7s68p9OyhX7vdv44LpeD150T8kQIE5qopP4UoB2+
         sP7HdYBQZuKGJzXOwnIB50zCTDOKeP/6NZrXONM/RoxjUkPAOEpCtd9ZBhKjusm7MfUD
         hDAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VQA2Sxt6;
       spf=pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by gmr-mx.google.com with ESMTPS id w5-20020a170902a70500b0015887731c60si182683plq.11.2022.04.27.14.50.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Apr 2022 14:50:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 36CB961DF3
	for <clang-built-linux@googlegroups.com>; Wed, 27 Apr 2022 21:50:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98926C385AE
	for <clang-built-linux@googlegroups.com>; Wed, 27 Apr 2022 21:50:44 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id e15-20020a9d63cf000000b006054e65aaecso1998142otl.0
        for <clang-built-linux@googlegroups.com>; Wed, 27 Apr 2022 14:50:44 -0700 (PDT)
X-Received: by 2002:a9d:84f:0:b0:605:e229:3c82 with SMTP id
 73-20020a9d084f000000b00605e2293c82mr1096256oty.71.1651096243583; Wed, 27 Apr
 2022 14:50:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220427171241.2426592-1-ardb@kernel.org> <20220427171241.2426592-2-ardb@kernel.org>
 <CAKwvOdkzrTRK9y6zmGqqmZM8RvTktomDkUh7CMop0+fAr1Y8hg@mail.gmail.com>
In-Reply-To: <CAKwvOdkzrTRK9y6zmGqqmZM8RvTktomDkUh7CMop0+fAr1Y8hg@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Wed, 27 Apr 2022 23:50:32 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGVE-TJ9Sg1+wQ_e1cN=fkfeBADo7zyUkFc3Kkr6Okhcg@mail.gmail.com>
Message-ID: <CAMj1kXGVE-TJ9Sg1+wQ_e1cN=fkfeBADo7zyUkFc3Kkr6Okhcg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] arm64: jump_label: use more precise asm constraints
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Kees Cook <keescook@chromium.org>, 
	Mark Rutland <mark.rutland@arm.com>, Nathan Chancellor <nathan@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VQA2Sxt6;       spf=pass
 (google.com: domain of ardb@kernel.org designates 2604:1380:4641:c500::1 as
 permitted sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Nick,

On Wed, 27 Apr 2022 at 20:59, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Apr 27, 2022 at 10:13 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > In order to set bit #0 of the struct static_key pointer in the the jump
> > label struct, we currently cast the pointer to char[], and take the
> > address of either the 0th or 1st array member, depending on the value of
> > 'branch'. This works but creates problems with -fpie code generation:
> > GCC complains about the constraint being unsatisfiable, and Clang
> > miscompiles the code in a way that causes stability issues (immediate
> > panic on 'attempt to kill init')
>
> Any more info on the "miscompile?" Perhaps worth an upstream bug report?
>

I made very little progress trying to narrow it down: a segfault in
user space caused by who knows what. I'd file a bug if I knew how to
reproduce it.

> >
> > So instead, pass the struct static_key reference and the 'branch'
> > immediate individually, in a way that satisfies both GCC and Clang (GCC
> > wants the 'S' constraint, whereas Clang wants the 'i' constraint for
> > argument %0)
>
> Anything we can do to improve Clang's handling of S constraints?
> https://gcc.gnu.org/onlinedocs/gcc/Machine-Constraints.html#Machine-Constraints
> >> An absolute symbolic address or a label reference
>

"S" seems more appropriate than "i" for a symbol reference, and GCC
rejects "i" when using -fpie. But the actual literal being emitted is
a relative reference, not an absolute one. This likely needs more
discussion, but using "i" in the way we do now is definitely dodgy.

> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/arm64/include/asm/jump_label.h | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/include/asm/jump_label.h b/arch/arm64/include/asm/jump_label.h
> > index cea441b6aa5d..f741bbacf175 100644
> > --- a/arch/arm64/include/asm/jump_label.h
> > +++ b/arch/arm64/include/asm/jump_label.h
> > @@ -23,9 +23,9 @@ static __always_inline bool arch_static_branch(struct static_key *key,
> >                  "      .pushsection    __jump_table, \"aw\"    \n\t"
> >                  "      .align          3                       \n\t"
> >                  "      .long           1b - ., %l[l_yes] - .   \n\t"
> > -                "      .quad           %c0 - .                 \n\t"
> > +                "      .quad           %c0 - . + %1            \n\t"
>
> If %1 is "i" constrained, then I think we can use the %c output
> template for it as well?
> https://gcc.gnu.org/onlinedocs/gccint/Output-Template.html
>

Is %c what prevents the leading # from being emitted? I'm not sure
whether that matters here, as AArch64 asm does not require it (and the
code builds fine with either compiler). But if it reflects the use
more precisely, I agree we should add it.

> Is the expression clearer if we keep the `- .` at the end of each expression?
>

I don't think so. The add sets the enabled bit, so I'd even be
inclined to write this as (%c0 - .) + %c1 to emphasize that this is a
relative reference with bit #0 set separately.

> >                  "      .popsection                             \n\t"
> > -                :  :  "i"(&((char *)key)[branch]) :  : l_yes);
> > +                :  :  "Si"(key), "i"(branch) :  : l_yes);
> >
> >         return false;
> >  l_yes:
> > @@ -40,9 +40,9 @@ static __always_inline bool arch_static_branch_jump(struct static_key *key,
> >                  "      .pushsection    __jump_table, \"aw\"    \n\t"
> >                  "      .align          3                       \n\t"
> >                  "      .long           1b - ., %l[l_yes] - .   \n\t"
> > -                "      .quad           %c0 - .                 \n\t"
> > +                "      .quad           %c0 - . + %1            \n\t"
> >                  "      .popsection                             \n\t"
> > -                :  :  "i"(&((char *)key)[branch]) :  : l_yes);
> > +                :  :  "Si"(key), "i"(branch) :  : l_yes);
> >
> >         return false;
> >  l_yes:
> > --
> > 2.30.2
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGVE-TJ9Sg1%2BwQ_e1cN%3DfkfeBADo7zyUkFc3Kkr6Okhcg%40mail.gmail.com.
