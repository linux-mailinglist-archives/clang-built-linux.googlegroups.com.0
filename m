Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBK4FW2CAMGQEWI77SHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ABC3707E5
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 May 2021 18:32:44 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id h13-20020a05640250cdb02903790a9c55acsf1086868edb.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 May 2021 09:32:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619886763; cv=pass;
        d=google.com; s=arc-20160816;
        b=KIs8svWE6p4HIUFFv3KtpclYZ4Fpxu96N0pfJyqTcjvxMXJtE+y7zpwE9CffjyhAla
         rZOsEMw9mIx4ijjVY2D6z6lRPARVeK9xvj3ttC3HfNl/mdBae0ZJgfbrSr0wiEP41s82
         NHBSnDpKxsAq61GJ+/+m4R68dbenvzc6c4vN76YH+1SsDZxFR5EtKu0D6Dj/aBB/thMn
         tYZa1A/P2dhmXviw/Rih16963M7LXTJofK4biPdCNc+yR2QXKailEtb17Zbl5KAfYk7U
         WmbWtZtOC8bY503Tt7ApfzEqX89GihvIGR2SPvczf92rgPkOE7j7PJ3VgObl/kNlQqWt
         mU6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=chnl/wg/3SHhm84e8vs2H5g2qR/3zDbfwHZY44+BVNM=;
        b=pVzm89jxlkgV67jwpTvYqK8eJ8qV64FoI+Rb9zFyaWNZhCCK+eCYrCUUbqSuH6uCvv
         qCyzLOg0EJGXJzqnKyPmLrlagnGAARLHBNumbwWoJGftYs3HRX4MUpdEJoQaNYQow6D/
         7iTosnVDMQvBUPPzRI5HGvXL965r0/VP43CYP3Zb5FyWFZ3TJ/ckdooJ4lEQjB7AG3WK
         IcxRTfItZLzNCjobqs6r+ZXZN3AkKWvxBxGj40gvsdPdaWHjQh41mEitXc4/YsVTqyWP
         4cITvFwbBnI9P/39qiUW+2Q2FtujmztjZd7Mmnf72IaduXHkB1Me0lrntTCSXl9VeTll
         ywRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=eFriZnXe;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=chnl/wg/3SHhm84e8vs2H5g2qR/3zDbfwHZY44+BVNM=;
        b=k1E+IxxUwu00F5EQEsP/jyt2bgyFo2C//QADv2vj9wVm4ERxyAncESOuB8Pa7RvwNv
         8z41s/qiuyKiDg1pLvNw5SrsO2GuykFTlGDn7Ma6eccCugj7+X9XnPOklpOxzWpniSKb
         4Al0Low1lZWgRTjlWJpFGuWP/v5jJcNrmuDGI60LCkzV0AzOZZLgC1koOhE7RGjW+Pp9
         YUvGTPMeTTaScLMfVGfEQPZA3GqtZFBRztD0ojJCJa/ubbE3PMI18yZIqo3eclA1CbPa
         U7Y7YKp2LaysPlJDjIGZcUQuzUzy3JWDQZeaPOLV61AfVStl2z4sj9pJZISL0vwrCDQj
         dMfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=chnl/wg/3SHhm84e8vs2H5g2qR/3zDbfwHZY44+BVNM=;
        b=fAP7c8SmtiEc4tshmQ/EuyexvfyfdEh0Vy+KvsQrwtg3Hc7PPOMuuC2DZZHRBLAYsi
         iHppMFOJO61FUfiQNO+LtcrBeN141ELb/YJbw6EnyG1MM6eVYy1J5PIHMNnLpO9ll+u5
         Nsm1j2A7/a+VMIsiu0M3TZMs0YjFuQ1gcaR7/iyGO8l+V0bS6uSr7BqOKlzU4mZIQzzz
         j/9VnMXpGUNW7MYZmXwJZ9sS1cJQdUEMEEISCtJD1wIOP822kDso090LHlVGRkzZwPif
         7iIUTzJf4qd1x9mhVCShFl9BZN1gRRf5RTffG3HlaHAIS9+f9F12q86FfPbqicLiaMym
         dMbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uzDoTZ9lTT6bEGPCveyAF5SecN0Vq7kAZTE8UWfkpDH7kgNAd
	J00wqdSXbqT3NwOl6h+Nh0s=
X-Google-Smtp-Source: ABdhPJxTnypR4T2an3PAoe0xfQBm1CrfgbCBdxnj7Bup2Xp2FdXNUFjS52GHf4Et/Nk1WEWTg8FLdw==
X-Received: by 2002:a17:907:1c8b:: with SMTP id nb11mr9053367ejc.327.1619886763762;
        Sat, 01 May 2021 09:32:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a194:: with SMTP id s20ls4508293ejy.9.gmail; Sat, 01
 May 2021 09:32:42 -0700 (PDT)
X-Received: by 2002:a17:906:248e:: with SMTP id e14mr9236521ejb.249.1619886762705;
        Sat, 01 May 2021 09:32:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619886762; cv=none;
        d=google.com; s=arc-20160816;
        b=gBZyTSuTT4HliGW6rC4IoFzdbP051vpQLS9g6r9+vHihMR4WVVmK3z5FG3EJE3iFfC
         AYTtDmfKnEbhmJVKqU2pdu23bKYn4q/zzyvxL/z2w+Fb2f48MXJ+kcUnVz3GvfAKXFzm
         pVT6xDLWPYT7FsqWUUFda38cPTAA0oaNffmRYCu90Qn45SNnRLV/Igh3U3UbbYa+vN7Q
         ITELtyPe2drCAGHrGVTpAwQ5Jiu3LxtGCJ0XprePmBoBKK/PVzlvHUSAEHjDWuz4JBkT
         m44BLb2zabaWqOoA6Q1MI9LRBTfrhYCs1Ue//BFXcDj41ouvyPKkmkiOpz9DXFn4/j9/
         T+CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MZW1EyHy79UfqUVwrUmwZE+wtdLBfVdkxB4jvLroyEk=;
        b=OaUreQyZEMBdTN6NXF1CE8upSjy65q1guzVnull3+lQ7irX6ou38kMKXxtil2hMtHe
         anqiAbHkWyq7cEQIarjuCN/c6m97D956jQaWiEUsKvkCEPGgbf+1RGkzkfpm1s75ID/t
         MGddZ1Z3eRaFKESmKEfagqqfxQRvgq2qyy7frlq7nzNYcsJQ0gjxj1ARt01mC29Dedwh
         pREkaCTrBxGKn6lMycfK0Vc+yYzFWFixg4fRAZPvrkUYLZJr+Sw6+aMma3urUUhTHl++
         6zLKurzGpySDsXmxgmlBb0CrFEidQaOsxvpCwQYqqumfi/+CDXRlbyvZeJPICrvmpaZ7
         cRyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=eFriZnXe;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id r21si800869ejo.0.2021.05.01.09.32.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 May 2021 09:32:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id o16so1822239ljp.3
        for <clang-built-linux@googlegroups.com>; Sat, 01 May 2021 09:32:42 -0700 (PDT)
X-Received: by 2002:a05:651c:1026:: with SMTP id w6mr7327849ljm.167.1619886762253;
        Sat, 01 May 2021 09:32:42 -0700 (PDT)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com. [209.85.167.50])
        by smtp.gmail.com with ESMTPSA id q2sm631293lfd.40.2021.05.01.09.32.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 May 2021 09:32:41 -0700 (PDT)
Received: by mail-lf1-f50.google.com with SMTP id t11so230719lfl.11
        for <clang-built-linux@googlegroups.com>; Sat, 01 May 2021 09:32:41 -0700 (PDT)
X-Received: by 2002:a05:6512:a90:: with SMTP id m16mr6986867lfu.201.1619886761106;
 Sat, 01 May 2021 09:32:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com> <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
In-Reply-To: <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 1 May 2021 09:32:25 -0700
X-Gmail-Original-Message-ID: <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
Message-ID: <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Tom Stellard <tstellar@redhat.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Serge Guelton <sguelton@redhat.com>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=eFriZnXe;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Apr 30, 2021 at 8:33 PM Tom Stellard <tstellar@redhat.com> wrote:
>
> Yes, it's intentional.  Dynamic linking libraries from other packages is
> the Fedora policy[1], and clang and llvm are separate packages (in Fedora).

Side note: I really wish Fedora stopped doing that.

Shared libraries are not a good thing in general. They add a lot of
overhead in this case, but more importantly they also add lots of
unnecessary dependencies and complexity, and almost no shared
libraries are actually version-safe, so it adds absolutely zero
upside.

Yes, it can save on disk use, but unless it's some very core library
used by a lot of things (ie particularly things like GUI libraries
like gnome or Qt or similar), the disk savings are often not all that
big - and disk is cheap. And the memory savings are often actually
negative (again, unless it's some big library that is typically used
by lots of different programs at the same time).

In this case, for example, it's true that a parallel build will be
running possibly hundreds of copies of clang at the same time - and
they'll all share the shared llvm library. But they'd share those same
pages even if it wasn't a shared library, because it's the same
executable! And the dynamic linking will actually cause a lot _less_
sharing because of all the fixups.

We hit this in the subsurface project too. We had a couple of
libraries that *nobody* else used. Literally *nobody*. But the Fedora
policy meant that a Fedora package had to go the extra mile to make
those other libraries be shared libraries, for actual negative gain,
and a much more fragile end result (since those libraries were in no
way compatible across different versions - so it all had to be updated
in lock-step).

I think people have this incorrect picture that "shared libraries are
inherently good". They really really aren't. They cause a lot of
problems, and the advantage really should always be weighed against
those (big) disadvantages.

Pretty much the only case shared libraries really make sense is for
truly standardized system libraries that are everywhere, and are part
of the base distro.

[ Or, for those very rare programs that end up dynamically loading
rare modules at run-time - not at startup - because that's their
extension model. But that's a different kind of "shared library"
entirely, even if ELF makes the technical distinction between
"loadable module" and "shared library" be a somewhat moot point ]

                        Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwhs8QZf3YnifdLv57%2BFhBi5_WeNTG1B-suOES%3DRcUSmQg%40mail.gmail.com.
