Return-Path: <clang-built-linux+bncBDYJPJO25UGBBP63W7VAKGQEQTBU57Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB3488575
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 00:03:44 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id h203sf72385705ywb.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 15:03:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565388223; cv=pass;
        d=google.com; s=arc-20160816;
        b=YojxWzD6etBvsFJtkdpV3p4m/E6rbuoh02SMwIZNwTt3+i5/f7Bu9yygRJzpNwoFK4
         7FTLPF1qQK8TszThJ5EMwSY/jVTKOL809TS3653McpWB8ZWnIFzZwkfG7EDyM3ErXBnL
         Z29r40uyosGXQYNSP1KEYOIWWbLqOOF0aBh8bNPdRahHZnJMqlX+g3En10bUZb5hqUQE
         8silAAbcNt1rV4bJkEYvxd372uLOOZUzMjSqrJRPHF6JGE+Z0pWcUxuInRnhDjqenxJW
         BuWVKxS+tWsQgENac0B8lurkVl8IrMu9iCh8Jcsk2M2BvLGwmulyXLT8iiPlo5YJ5nfn
         HT2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PL8LVlyHMKxOTn2PdNZGuQuMU8Kr6PgSNT09q6nXRhg=;
        b=gknVkVBImYzN06/8DIpSu3ydksD/6KTjDYfiq3GIJ5zTDmvQ9PGkgFzmEB9uPP/pdV
         cBQtIoaJqWddGTkRIrROiYcqs5a0b+arMVx5sDI6sDFwBShFQAanAZI+Dq5uiwCRHQ+f
         a4TVlvm2qltvpOle4gY7JKGazKMrk85VhzR6ywiNpRPQNUqRovwXRcbNjjLihjLLvuB/
         RHxBdR8jfi0+h8yseHJcuf+RVEjdA5tdCYeXT8hnY1yCL2U1NnJ3ubPalUGiCYcThOBw
         fCVW2Edue3P18K1g2a2d/mkWZ+qEbK2WXvlh+YKNKpnqdkDAqX/ZaMrzQCyE5+CEimYr
         Nceg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F2iKZ4lO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=PL8LVlyHMKxOTn2PdNZGuQuMU8Kr6PgSNT09q6nXRhg=;
        b=cACo0eWiKhYkFEg4Et+D5mtq9KG0DfHuBsJCa8rdrOFUlV86XhDU5Y9HDLBh+oUOt6
         aeQoGENLSjORVAYEu85Baxm2fFJpOJAKSAxPHWWELqLFCVDlDE2XYp8COzlkxazJ9UMH
         XIOOFtxtSbBSukI9nCh2f746MJyX4A7dUNOITtMc3kjTRAIsGUZw7ga4NxB3fyc3o0qV
         roW1/xB+Q/p8Kw2Jhsa2kCW0eirPqmlZHoU9aDEj+wl7TTw/Y5kTbTDxrOMcDznhgvsI
         HTh3HlyAFXk0e5gdtv+CGV0CQwOLu+hLaQMuWF4Jxv1GksGoaopR/sx9CMUx2v63K1/O
         UpLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PL8LVlyHMKxOTn2PdNZGuQuMU8Kr6PgSNT09q6nXRhg=;
        b=M+wbw8628mTN6gTgFpRmB4rUqRdOxblIPQOQ9x78LIoHwrtYHQOelB/AA3IsmeGFGh
         Mnaz0tM7YRx63pEXqTcK9V6ZjFS3kCTll4fdciWMnCNTULEki7pMovkmTeyUn6vVikPX
         SweU4F2f+IB0Sk65EiVTgjOzDJqyK5pBLt9csB180v89L+8tW2D+SXOtaDx0VClDx9x+
         guyOenfmP7XmNUZfaFLg4xqzUcoNMPlKumNMgFGyR1Z69N7TNVC64bwN4YpqV1NQfNmr
         QpLgLzSW7A3N8LouX+dBHSkgPbawFy/VGsSYxU24ae3pAyJrVBLSgLZr9B+XJlsh3VpV
         MwIQ==
X-Gm-Message-State: APjAAAVo4OGsxVUGhZZFjXO8a1pw+VTl09lRqO0M91bWJnUjx3CnkZPG
	K0MVvrxjxAIJTv9j4dI6OJc=
X-Google-Smtp-Source: APXvYqyp7Plc/Hw6AQhpM/ygiEAxJmdaaI0HmXNlH6JecOy1eNK+ImfSfJ04/Thgye0BFw1gHs00uA==
X-Received: by 2002:a81:a657:: with SMTP id d84mr14565378ywh.447.1565388223669;
        Fri, 09 Aug 2019 15:03:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9382:: with SMTP id a2ls5615900ybm.14.gmail; Fri, 09 Aug
 2019 15:03:43 -0700 (PDT)
X-Received: by 2002:a25:7608:: with SMTP id r8mr16880538ybc.150.1565388223350;
        Fri, 09 Aug 2019 15:03:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565388223; cv=none;
        d=google.com; s=arc-20160816;
        b=ZMwPuCNFaSGShkl0AuKqekgUDLd1MXX8Qbtap9ZBc8Mdpivh4ofvufZemU+MddTHRs
         ONajQnQqJv8s5NhaujSiGUCqRbPkQoG6a5vAhTHSqa6pI4C59OvQQGiKhKQ7zv6A1wk0
         mvyrLM57fp5snLs1zwNiO83e5rR8FsvMqFHUCB76clx12OP/rg5KOajrv9JmCBeqM4Xu
         rkz1jKwznZiv3mF6Zbwq138w/6jalpkpiMQE5fDirmS6AFKB4CXaQcTzjQJyVVrZmKt4
         VctMDA/B2tj+kaUiikCWCYvi1NvE9yXvHFtKPyOE+EbAIR5vV7AgeRfJ+UOXfMcAqBtF
         xN0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4YE5LFpbQmY5CUf9HiiZAitomsRy44hXFJVcN3+uc3g=;
        b=jjIjFY5Sg0xe2PNYsgU+fdvL0p0rL+MbOke34PSAO5TmvwoM4hCT3t7cRqOV1+V7yP
         NlRCr4vn8ctWRQCnceWXZRMyAOz8DaOGxH4dG2VhX1XSfVG851Z4IVFmkCP/YuUZ0d4r
         gQ4gNeTamBvo5OMIhZJWjTdY2bqcsPCHWLwWdHouuuZ+RMLDRfhCj0LkF2ssttf/CaSF
         oETICwBo/fI2lJxdZJD/rH2ZtYVppTPc5+RPVlrBcuu6lQkuikVcbO7jjIux5NVCbjwi
         Hn0oTIb7pTnQRuDwt4F9SHMToprRjgEYSh+9GcEyr1GCocOpVj9JuXf8PQUbWDV3UFOf
         c9lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=F2iKZ4lO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id j15si4267560ywa.3.2019.08.09.15.03.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Aug 2019 15:03:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id n9so40268417pgc.1
        for <clang-built-linux@googlegroups.com>; Fri, 09 Aug 2019 15:03:43 -0700 (PDT)
X-Received: by 2002:a63:61cd:: with SMTP id v196mr19675034pgb.263.1565388221708;
 Fri, 09 Aug 2019 15:03:41 -0700 (PDT)
MIME-Version: 1.0
References: <87h873zs88.fsf@concordia.ellerman.id.au> <20190809182106.62130-1-ndesaulniers@google.com>
 <CAK8P3a3LynWTbpV8=VPm2TqgNM2MnoEyCPJd0PL2D+tcZqJgHg@mail.gmail.com>
 <20190809220301.Horde.AR6y4Bx4WGIq58V9K0En9g4@messagerie.si.c-s.fr> <CAK8P3a1AwmAe+PpHTRmN153fhG4ZkF_pb+240rj1ZAg-S6SKeg@mail.gmail.com>
In-Reply-To: <CAK8P3a1AwmAe+PpHTRmN153fhG4ZkF_pb+240rj1ZAg-S6SKeg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 9 Aug 2019 15:03:30 -0700
Message-ID: <CAKwvOdmhUPTUPa3=_AQ04zEDTsScduqOM29TfK656riAb_t=rQ@mail.gmail.com>
Subject: Re: [PATCH] powerpc: fix inline asm constraints for dcbz
To: Arnd Bergmann <arnd@arndb.de>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Paul Mackerras <paulus@samba.org>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	kbuild test robot <lkp@intel.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Michael Ellerman <mpe@ellerman.id.au>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=F2iKZ4lO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Fri, Aug 9, 2019 at 1:13 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Aug 9, 2019 at 10:02 PM Christophe Leroy
> <christophe.leroy@c-s.fr> wrote:
> >
> > Arnd Bergmann <arnd@arndb.de> a =C3=A9crit :
> > > On Fri, Aug 9, 2019 at 8:21 PM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > >>  static inline void dcbz(void *addr)
> > >>  {
> > >> -       __asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "mem=
ory");
> > >> +       __asm__ __volatile__ ("dcbz %y0" : "=3DZ"(*(u8 *)addr) :: "m=
emory");
> > >>  }
> > >>
> > >>  static inline void dcbi(void *addr)
> > >>  {
> > >> -       __asm__ __volatile__ ("dcbi %y0" : : "Z"(*(u8 *)addr) : "mem=
ory");
> > >> +       __asm__ __volatile__ ("dcbi %y0" : "=3DZ"(*(u8 *)addr) :: "m=
emory");
> > >>  }
> > >
> > > I think the result of the discussion was that an output argument only=
 kind-of
> > > makes sense for dcbz, but for the others it's really an input, and cl=
ang is
> > > wrong in the way it handles the "Z" constraint by making a copy, whic=
h it
> > > doesn't do for "m".
> > >
> > > I'm not sure whether it's correct to use "m" instead of "Z" here, whi=
ch
> > > would be a better workaround if that works. More importantly though,
> > > clang really needs to be fixed to handle "Z" correctly.
> >
> > As the benefit is null, I think the best is probably to reverse my
> > original commit until at least CLang is fixed, as initialy suggested
> > by mpe
>
> Yes, makes sense.
>
> There is one other use of the "Z" constraint, so on top of the revert, I
> think it might be helpful if Nick could check if the patch below makes
> any difference with clang and, if it does, whether the current version
> is broken.
>
>        Arnd
>
> diff --git a/arch/powerpc/include/asm/io.h b/arch/powerpc/include/asm/io.=
h
> index 23e5d5d16c7e..28b467779328 100644
> --- a/arch/powerpc/include/asm/io.h
> +++ b/arch/powerpc/include/asm/io.h
> @@ -106,7 +106,7 @@ static inline u##size name(const volatile u##size
> __iomem *addr)    \
>  {                                                                      \
>         u##size ret;                                                    \
>         __asm__ __volatile__("sync;"#insn" %0,%y1;twi 0,%0,0;isync"     \
> -               : "=3Dr" (ret) : "Z" (*addr) : "memory");                =
 \
> +               : "=3Dr" (ret) : "m" (*addr) : "memory");                =
 \
>         return ret;                                                     \
>  }
>
> @@ -114,7 +114,7 @@ static inline u##size name(const volatile u##size
> __iomem *addr)    \
>  static inline void name(volatile u##size __iomem *addr, u##size val)   \
>  {                                                                      \
>         __asm__ __volatile__("sync;"#insn" %1,%y0"                      \
> -               : "=3DZ" (*addr) : "r" (val) : "memory");                =
 \
> +               : "=3Dm" (*addr) : "r" (val) : "memory");                =
 \
>         mmiowb_set_pending();                                           \
>  }

Does not work:
https://travis-ci.com/ClangBuiltLinux/continuous-integration/builds/1226548=
99
https://github.com/ClangBuiltLinux/continuous-integration/pull/197/files#di=
ff-40bd16e3188587e4d648c30e0c2d6d37

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmhUPTUPa3%3D_AQ04zEDTsScduqOM29TfK656riAb_t%3DrQ%4=
0mail.gmail.com.
