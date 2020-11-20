Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBE5Q4H6QKGQE76H527Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2762BBA6C
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 00:58:12 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id i6sf7967081pgg.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 15:58:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605916691; cv=pass;
        d=google.com; s=arc-20160816;
        b=DAWd8dD3NfA0dPeY6mhPwkJCvkeftL76wxE8unBVnVydhCgYKFDiTgYkyNmzIIRykv
         ZQDnlomkbV7p4LvEp5tNmVY7rxXWWk4eXfkjM5cCQ+o9Xnt7+1TlHZKnzdooMnRmGvMS
         l8/x4IrC7xJPZ0hh6qtuBZD7uv2mkmddTkQBZgz71zvUdSXxepu2NT5wi+Ib6ZVunpmX
         srTMkyvj7xzoubFd8W6uJg+ZAsJmqtdJ7DfUbgt1KZjUmGfu0gkcrpTvZ9NP7/v4S0FB
         ua78AKXhha2W9A0eiG48AXWbFUhfxtHuFvk3/NDJNRbdQkYR/FQCE2dTav68TogGJVCm
         fgpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KdN1bKxaNES/DQ6KDI2nXMOFTbmSxXZDIS8lxUy4HyM=;
        b=Z7p7/EhGoP4AWSp01hYHcOIQ61qzvq0SOsOA+DN/K+db/w/zZxV3VHvJoZnj8aMrve
         PPmYjv4mRovi+Uh3SDJ5nQM24bur5MZpbA0V56an0vrqM4HKZ6xfGUdVJPCz2zjWbgLq
         dH4ekXIOLCr/oh1ZapUgD2My0bYnkrOXrpjgSkTtqX1bUvqkA7WgDoSGuD4HsFd6KYF+
         vWhw429U4vMriKttyUdaJkylqIu3JwrERNClxBSVKqsjzcczL9xGKdl9BXkmWqO5u5Vo
         dPM0T7dbxP3e5BaygzV/4eEA4oig4F1WXv6UVocEYRP3NsMNvi5ua5ArIRRJS+msAD/D
         Qb/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QG7NcOBY;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KdN1bKxaNES/DQ6KDI2nXMOFTbmSxXZDIS8lxUy4HyM=;
        b=cAFpwrIM7FznPD0MHeheK3Psin3MKtoB3sMGyzcCy2PFG9FJy5zJqF9ab6J+vZEEk/
         uBFVJTxnrsUtqVNtf0N1OMHCTXh6955c7/Xnmp/5XoYwgT/9RS10hX9WEcFySEftBtmX
         0T4MIZ+g87A90iJUElg65Npy8g3IZLz0f8ZuI+eFF79GbXO2pLMI1vPTc4+1bFkoFP/X
         bus2nhjurAVtwizatwB9HEaWJd7LVIX/3DyMKQIJD0YGDGkrKEXZJmaL6SavfmokuNBk
         29F/iB7Q+fZrcmUvMz/eqs48pVr0sbvsuJetYfEr7Vr45jvRcpOqiQrp9OQ4swDIisp6
         a4BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KdN1bKxaNES/DQ6KDI2nXMOFTbmSxXZDIS8lxUy4HyM=;
        b=DUu38+6H7b8mh183F3g8K6mrEVv6nO7pqFSecmst+qK7Cn9TOuCSzQ9p6nQs3Nghw7
         nJu0Ki8AEwGIUsBeV5iuTXsz8Yj0fuLrPM3iI9NwmGhs4VHWyHJRhzPZUAhJwwg+gL0x
         jetbsGXT+hZqxtSZAUVsPon/yvfxmS4gjPSCJHUQSbtSRFkjIhI8BncCjaSzCRv/gBqb
         4MT+F/ZwweZsBNzSHO1+Lc9uNeYyhMm1M3K3u5xiJdPNVfO6M9gJD4IBMywELZTkKD9V
         0aDVkziPVnHVCudyb5dEWTqclRleXUQcnzmZknhkeTdoGo8bvqs7TPDEZ6Eh4uOG8jT4
         qXDw==
X-Gm-Message-State: AOAM530+nMhiW4A+WECAghXKTu8AAReElmAJRKyRsJokIGxzaH3/y3Fj
	53W/Wz3o2Q3+UEtv6+5KAHI=
X-Google-Smtp-Source: ABdhPJwn8Fr1iGEmGjWX2DIahJKhRGaR0w9n/MZkKQPKMJZm1gvCweDfwQEm9w1+8IiHAD/5dG9upg==
X-Received: by 2002:a63:cc50:: with SMTP id q16mr19956048pgi.246.1605916691182;
        Fri, 20 Nov 2020 15:58:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c253:: with SMTP id d19ls4371109pjx.2.canary-gmail;
 Fri, 20 Nov 2020 15:58:10 -0800 (PST)
X-Received: by 2002:a17:90a:5309:: with SMTP id x9mr12754632pjh.98.1605916690535;
        Fri, 20 Nov 2020 15:58:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605916690; cv=none;
        d=google.com; s=arc-20160816;
        b=BYgY1Wih6DK1h1ew71dewjZRWtFru8fcZLvdos72UoTnTeRWHU+FmqOJkZa33DeX6A
         1Xff3Lykw65ToCZi7nNYhoXvrmIKw3rhEtV4i1B1E9bc9WLsRfoyfAdSwsfqHKn7sz3w
         DZ+52U4nVs9/BJA/ZUalEfip0bbIHxOpi189x5TtfrPPg7Lf1hTcyBSxDHCx8y058RaQ
         Dur+3m59Om4ndLtyZNxTYrtN1r4X90gTnGuTvITSF6bhnVEFxn+jx7marmCp69XAtdiC
         eGabBWlVTu6K8zNWOlVkkWJTFZ15iiGxGaj9eVHmnyAZoBTEdIuhg3hnDGf1G87Dh0j7
         5Orw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4Dbi+vkbIkEmap+Q/rdwNz/UUSy4EJeRwsiSm1rxFRE=;
        b=YUorJadTmC9OjVaZoLj9+LzE++vqp0aUNN38OnPlKw7Hho7nSy2g+vySpwEiX+2ILS
         BaUm735U+9PDZn3nIGVoH70z+xCaRzwtLcZN4GPG9iWAnbDz24r+W5WxIHBXz25nzALs
         uVk9VEjVCU7U31WGqLBxA1bg/J99VJNtXy4lPsN9HjyPnGFGnW28vGUK6JAhOuA4s/1A
         3hzgdZ7EHTaJV81wVYnug2aSb2sTUO2idqSf6dTkKRt9QPCNduCEocr5/PZfpdIRrA49
         jcrcEXncOju0ZrbuBAlck37lfNSRtY0nT3rVXaab28WyStcAjdwADSuv+WE/qbpbPByO
         69tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QG7NcOBY;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id v17si244666pjr.2.2020.11.20.15.58.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 15:58:10 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id b63so9390960pfg.12
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 15:58:10 -0800 (PST)
X-Received: by 2002:a63:1a1d:: with SMTP id a29mr18731306pga.19.1605916690123;
 Fri, 20 Nov 2020 15:58:10 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=9iqLgdtAWe2h-9n=KUWm_rjCCJJYeop8PS6F+AA0VtA@mail.gmail.com>
 <20201109183528.1391885-1-ndesaulniers@google.com> <CAKwvOdnxAr7UdjUiuttj=bz1_voK1qUvpOvSY35qOZ60+E8LBA@mail.gmail.com>
In-Reply-To: <CAKwvOdnxAr7UdjUiuttj=bz1_voK1qUvpOvSY35qOZ60+E8LBA@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Nov 2020 15:57:59 -0800
Message-ID: <CA+SOCLJTg6U+Ddop_5O-baVR42va3vGAvMQ62o9H6rd+10aKrw@mail.gmail.com>
Subject: Re: [PATCH v3] Kbuild: do not emit debug info for assembly with LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: multipart/alternative; boundary="000000000000daff0f05b4929d3c"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QG7NcOBY;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--000000000000daff0f05b4929d3c
Content-Type: text/plain; charset="UTF-8"

I also verified that with this patch Chrome OS devices booted with either
GNU assembler or LLVM's integrated assembler. With this patch, IAS no
longer produces extra warnings compared to GNU as on Chrome OS and would
remove the last blocker of enabling IAS on it.

Tested-by: Jian Cai <jiancai@google.com> # Compile-tested on mainline (with
defconfig) and boot-tested on ChromeOS (with olddefconfig).


On Mon, Nov 16, 2020 at 3:41 PM 'Nick Desaulniers' via Clang Built Linux <
clang-built-linux@googlegroups.com> wrote:

> Hi Masahiro, have you had time to review v3 of this patch?
>
> On Mon, Nov 9, 2020 at 10:35 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Clang's integrated assembler produces the warning for assembly files:
> >
> > warning: DWARF2 only supports one section per compilation unit
> >
> > If -Wa,-gdwarf-* is unspecified, then debug info is not emitted for
> > assembly sources (it is still emitted for C sources).  This will be
> > re-enabled for newer DWARF versions in a follow up patch.
> >
> > Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with
> > LLVM=1 LLVM_IAS=1 for x86_64 and arm64.
> >
> > Cc: <stable@vger.kernel.org>
> > Link: https://github.com/ClangBuiltLinux/linux/issues/716
> > Reported-by: Dmitry Golovin <dima@golovin.in>
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > Suggested-by: Dmitry Golovin <dima@golovin.in>
> > Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> > Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Reviewed-by: Fangrui Song <maskray@google.com>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  Makefile | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Makefile b/Makefile
> > index f353886dbf44..7e899d356902 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -826,7 +826,9 @@ else
> >  DEBUG_CFLAGS   += -g
> >  endif
> >
> > +ifneq ($(LLVM_IAS),1)
> >  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> > +endif
> >
> >  ifdef CONFIG_DEBUG_INFO_DWARF4
> >  DEBUG_CFLAGS   += -gdwarf-4
> > --
> > 2.29.2.222.g5d2a92d10f8-goog
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups
> "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnxAr7UdjUiuttj%3Dbz1_voK1qUvpOvSY35qOZ60%2BE8LBA%40mail.gmail.com
> .
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJTg6U%2BDdop_5O-baVR42va3vGAvMQ62o9H6rd%2B10aKrw%40mail.gmail.com.

--000000000000daff0f05b4929d3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I also verified that with this patch Chrome OS devices boo=
ted with either GNU assembler or LLVM&#39;s integrated assembler. With this=
 patch, IAS no longer produces extra warnings compared to GNU as on Chrome =
OS and would remove the last blocker of enabling=C2=A0IAS on it.<br><div><b=
r></div><div>Tested-by: Jian Cai &lt;<a href=3D"mailto:jiancai@google.com" =
target=3D"_blank">jiancai@google.com</a>&gt; # Compile-tested on mainline (=
with defconfig) and boot-tested on ChromeOS (with olddefconfig).<div class=
=3D"gmail-yj6qo gmail-ajU" style=3D"outline:none;padding:10px 0px;width:22p=
x;margin:2px 0px 0px"><br class=3D"gmail-Apple-interchange-newline"></div><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Mon, Nov 16, 2020 at 3:41 PM &#39;Nick Desaulniers&#39; via Clang B=
uilt Linux &lt;<a href=3D"mailto:clang-built-linux@googlegroups.com">clang-=
built-linux@googlegroups.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Hi Masahiro, have you had time to review v3 of =
this patch?<br>
<br>
On Mon, Nov 9, 2020 at 10:35 AM Nick Desaulniers<br>
&lt;<a href=3D"mailto:ndesaulniers@google.com" target=3D"_blank">ndesaulnie=
rs@google.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Clang&#39;s integrated assembler produces the warning for assembly fil=
es:<br>
&gt;<br>
&gt; warning: DWARF2 only supports one section per compilation unit<br>
&gt;<br>
&gt; If -Wa,-gdwarf-* is unspecified, then debug info is not emitted for<br=
>
&gt; assembly sources (it is still emitted for C sources).=C2=A0 This will =
be<br>
&gt; re-enabled for newer DWARF versions in a follow up patch.<br>
&gt;<br>
&gt; Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with<br>
&gt; LLVM=3D1 LLVM_IAS=3D1 for x86_64 and arm64.<br>
&gt;<br>
&gt; Cc: &lt;<a href=3D"mailto:stable@vger.kernel.org" target=3D"_blank">st=
able@vger.kernel.org</a>&gt;<br>
&gt; Link: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues/716" =
rel=3D"noreferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/lin=
ux/issues/716</a><br>
&gt; Reported-by: Dmitry Golovin &lt;<a href=3D"mailto:dima@golovin.in" tar=
get=3D"_blank">dima@golovin.in</a>&gt;<br>
&gt; Reported-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gm=
ail.com" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
&gt; Suggested-by: Dmitry Golovin &lt;<a href=3D"mailto:dima@golovin.in" ta=
rget=3D"_blank">dima@golovin.in</a>&gt;<br>
&gt; Suggested-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@g=
mail.com" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
&gt; Suggested-by: Sedat Dilek &lt;<a href=3D"mailto:sedat.dilek@gmail.com"=
 target=3D"_blank">sedat.dilek@gmail.com</a>&gt;<br>
&gt; Reviewed-by: Fangrui Song &lt;<a href=3D"mailto:maskray@google.com" ta=
rget=3D"_blank">maskray@google.com</a>&gt;<br>
&gt; Reviewed-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gm=
ail.com" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
&gt; Signed-off-by: Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@goo=
gle.com" target=3D"_blank">ndesaulniers@google.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 Makefile | 2 ++<br>
&gt;=C2=A0 1 file changed, 2 insertions(+)<br>
&gt;<br>
&gt; diff --git a/Makefile b/Makefile<br>
&gt; index f353886dbf44..7e899d356902 100644<br>
&gt; --- a/Makefile<br>
&gt; +++ b/Makefile<br>
&gt; @@ -826,7 +826,9 @@ else<br>
&gt;=C2=A0 DEBUG_CFLAGS=C2=A0 =C2=A0+=3D -g<br>
&gt;=C2=A0 endif<br>
&gt;<br>
&gt; +ifneq ($(LLVM_IAS),1)<br>
&gt;=C2=A0 KBUILD_AFLAGS=C2=A0 +=3D -Wa,-gdwarf-2<br>
&gt; +endif<br>
&gt;<br>
&gt;=C2=A0 ifdef CONFIG_DEBUG_INFO_DWARF4<br>
&gt;=C2=A0 DEBUG_CFLAGS=C2=A0 =C2=A0+=3D -gdwarf-4<br>
&gt; --<br>
&gt; 2.29.2.222.g5d2a92d10f8-goog<br>
&gt;<br>
<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups.com"=
 target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdnxAr7UdjUiuttj%3Dbz1_voK1qUvpOvSY35qOZ6=
0%2BE8LBA%40mail.gmail.com" rel=3D"noreferrer" target=3D"_blank">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAKwvOdnxAr7UdjUiuttj%3Dbz1_voK1q=
UvpOvSY35qOZ60%2BE8LBA%40mail.gmail.com</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLJTg6U%2BDdop_5O-baVR42va3vGAvMQ62o9H6=
rd%2B10aKrw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJTg6U%2BDdop_5O-baVR=
42va3vGAvMQ62o9H6rd%2B10aKrw%40mail.gmail.com</a>.<br />

--000000000000daff0f05b4929d3c--
