Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZ42ZX6AKGQES2JIGAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCB52978F9
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 23:38:48 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id c6sf1964077qvo.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 14:38:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603489127; cv=pass;
        d=google.com; s=arc-20160816;
        b=meUEG3ZXZL4ETBKF0mqFPPOjp1eiHvgiNgCWk+FQVX7TjncWIxCU4f8D9TMTXnMR/x
         6f4suAPrZY8pUJ0iu6SJaDAEd22tz1KLKfVDknfajUBQmVBiq01Kkne5cj1lTbGDOnHG
         oOSxvOOujF2C7K4HSJyN4flZTt4Cg844nP2ySvi91bmKXYsl05h/BA0Ld3wc/P5PH2++
         lAB+X/rwu54HPrgwjXlJQBZo3Kn1oflczxTWxH5bZfAfHePiuf+KGnYHCYOnW9PL2PAG
         EtkK3vHlGeEBEiCpBfy2eRu6EgpILIw14LVfXM0VDOTgfDvlFv7nQ/p8TXDhnoVGKHZn
         8ARQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zeAgVLVOLCAjD07Bm4TdClx0KOaPzqQ/t/5wZI/NdM0=;
        b=iwLclbx5avZwL6t5APKTVYPMn6tIFSgUzBYjTv/QmyoDfzrQpy4EyhkC8iDiCZSvx4
         nsFanCOZKdjHx9eLwtiZ7KGub91GkGVBwuG4QsHQYOYZJMZFeGoi8gEoS3nDpn+17YCK
         SnUwG4slfHTfVmtlUf/0rUDwytNKtRnb7yVaAPXrlNNGplt6oFM1Qg+kqo/LNMN/vKSz
         63Hbr+GzrZLN88p5eBBvxNAwuXxzhhYKAvNoTnKa/ZzLm0WYyoJ+Eo85IqAkLaFIE3JU
         uTkxbjB1X60ZOh5L+gMtCSdqgk6KFT3NEeUsHxwd1fVAtzEJ8iScEYVT8YdkEWbmghF6
         V5lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RYLUeJKY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=zeAgVLVOLCAjD07Bm4TdClx0KOaPzqQ/t/5wZI/NdM0=;
        b=GvkGT391Ip7gba5sFZEkkbwqp3xNt5UUUE9sARknuCGIo4UdbCmLDj1dmDn4GuQRjd
         2scsip2WoIuxKaeoZ7TycI0dmrmR/i/6OwG375tDFyN+LSaSyNh6HXAbiamMZ8PwXwOh
         znsp5wyYkMIvNEo6h4frlTK2WmA1iOfICodeUwBjgyCuOlxmZGwgIF+zAQLrF5nzl1+K
         RTdh0ynaqGpzP1fp45KrW8cpJpf6VIwKEtGvzDn8zfBQzWz5sqLJwMMkriXQgvNDYvwO
         hE92RytU2j52kP61ExhjT/oGs4309jyfPhldQY6pZuq3O1g5Kspp1+N0fJbvshaRqJdh
         43hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zeAgVLVOLCAjD07Bm4TdClx0KOaPzqQ/t/5wZI/NdM0=;
        b=lGXNlPm09Ca/PwKpz7vCPTyv9jhG7VkgwgjwyIKDbDjsYifq4eKbwfPYZXS2+OhTQV
         9hNGsqyu9Qk7uYOmwweEtA2aiPKPoHX+kmCQr1ykZJHez6loaPdlxH5bjEe6nXfXY+Pv
         JFUBrCtYi8AZ+9WZUA3G0ExzuNh2n2dzKfLlrdWA4535z189t0mj6GkyW0CSD6kLgCkv
         tPhKn5IpCP3TjToOoaEADfayAJmDvGDjC+qtvxc5aYug6mbY3UkdckTbitTNepD+z5Of
         a1J2OkN87amajvOwDLjwfcDi0qg+HFg6R0Xdy1gfJkoOZRlz8wLJloJb8ce0s5tBzpD4
         QRXg==
X-Gm-Message-State: AOAM532cwASMkMr7aXm/WoHXrf4q0APu8trJrzBQn6cm8iTCO7LNTCrF
	eNB/VWsBCI439Y+Ln0aAOYc=
X-Google-Smtp-Source: ABdhPJzqlOhk4deZfLeXeIqdP0r5F+4jLuju3hkV7lMXdIrFFHdV+esDfgfYLywEXb2+zhp5Ztonlg==
X-Received: by 2002:a05:6214:148a:: with SMTP id bn10mr936783qvb.51.1603489127574;
        Fri, 23 Oct 2020 14:38:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b897:: with SMTP id y23ls706321qvf.5.gmail; Fri, 23 Oct
 2020 14:38:47 -0700 (PDT)
X-Received: by 2002:ad4:58e2:: with SMTP id di2mr1246036qvb.32.1603489126909;
        Fri, 23 Oct 2020 14:38:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603489126; cv=none;
        d=google.com; s=arc-20160816;
        b=KLdkOh4vMvaU4CfuqzerEy18/YnnnA8bLA/aUuXvj4Bz7w34frlcwnFLg7PCH/SKdH
         pCZmiru+WCy1P6oUbSS387xARb9LeVUuzbKTjcpkav05gym4j3XjH+rSXnX0A1BFFkAV
         rjJ8knyYaFzV6P9naiwBz2pZTV8viauSl2jylgLkVxy0kfZco6rM7mqoZkPnnJgJkEuS
         GoLkgzY8WZelFEgPOU95pZ2J6KyEIuTuMwc1hn7N1UZWXUmyNbLmfm1OIqZ94JMR7kdP
         khDY9Fdhu88DY7E+js070Q4B6UDDUAIm85a+u0gn3g8cKYlDIADA0T+IYrk5pSUf8I8q
         Zehg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hVQ6c1EbGAsYUTkUkvlpk7gp2AcoO022xsBGSkFnhrg=;
        b=R5RCEd87OeKFa5ZNB18JajQRQqH06ryPo74Or3Yd+NB/s2MI9atHckO0nis1wSPie6
         7yEYN2GBMb9HBvqLGVoBzd7Edx5bwfey/AG6Uei2ODU3+bJbwb31n64O92v2rkRlcsnq
         Tq8XjPREhXa1Mh4iDgB/Gl89dXDRcJjZ3hkE0RieRl8Z1LcndMGIJogUr1hF7fzEvyBV
         L1lEIh4BtmcLIVz6DrFXVe7Bml/mBfSpTdqJX1TsAr4WNGiBxiQFlPNLgsN5kDQtmB0N
         XdWVVRCaM8O7hqWQnEGYcRFJNzOu/T2b6CPo8imIF9Z1haD7OkXofGv5cZGgrcAL2rK3
         tGEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RYLUeJKY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id x11si147132qkn.0.2020.10.23.14.38.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 14:38:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id w21so2501908pfc.7
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 14:38:46 -0700 (PDT)
X-Received: by 2002:a63:2f41:: with SMTP id v62mr3547711pgv.10.1603489125800;
 Fri, 23 Oct 2020 14:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkJc5xp=k_gHNtoY4Es20vj557B4DCJ2Qinvx=ojkHPPQ@mail.gmail.com>
 <eb3142ad-61a8-8760-c808-58bdce0a6561@mozilla.com>
In-Reply-To: <eb3142ad-61a8-8760-c808-58bdce0a6561@mozilla.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Oct 2020 14:38:34 -0700
Message-ID: <CAKwvOd=9BPpPy1yHqChhj8dGGVrq8-kG7z5nz9DjA7CV_wpN8A@mail.gmail.com>
Subject: Re: clang-12 debian image
To: Sylvestre Ledru <sylvestre@mozilla.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RYLUeJKY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Fri, Oct 23, 2020 at 1:48 PM Sylvestre Ledru <sylvestre@mozilla.com> wro=
te:
>
> Hello,
>
> Le 23/10/2020 =C3=A0 20:27, Nick Desaulniers a =C3=A9crit :
> > Hi Sylvestre,
> > I noticed our CI has been red a few days in a row; I had reported an
> > issue in upstream LLVM that got reverted, but I think our clang-12
> > images stopped updating?
> >
> > Our latest CI run
> > (https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jo=
bs/404327921)
> > show version:
> > Ubuntu clang version
> > 12.0.0-++20201018052613+ce619f645f5-1~exp1~20201018153253.195
> >
> > which looks like 2020 10 18, ~5 days ago.  From the thread with
> > KernelCI folks, it looks like the problem there was with clang-11.  Is
> > a similar issue affecting the clang-12 builds?
>
> Yeah, it was broken because of a regression :
>
> https://reviews.llvm.org/D88922#2331869
>
> the revert of:
> https://reviews.llvm.org/D89041
> fixed the regression.

Oh, upstream stopped building?

>
> > Is there anything more we can be doing to help maintain these builds
> > with you, beyond being a canary in the coal mine?
>
> Having an official job with the same option could help.

Well we only hire Mozillians (/s). Oh, wait, you are also a Mozillian!
 I'll see what I can do. ;)

>
> Besides that, there isn't any magic, having help to monitor the jenkins
> jobs and
> fix issues (or fill bugs) is the way to go.

If you would be so kind as to point me to the Jenkins, I can
investigate and chase these in the future without bothering you.
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3D9BPpPy1yHqChhj8dGGVrq8-kG7z5nz9DjA7CV_wpN8A%40m=
ail.gmail.com.
