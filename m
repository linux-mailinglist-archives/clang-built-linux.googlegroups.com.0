Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBCN7T36QKGQEOYNNNQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1D72AA9F3
	for <lists+clang-built-linux@lfdr.de>; Sun,  8 Nov 2020 08:34:34 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id f11sf2672624wro.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 23:34:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604820873; cv=pass;
        d=google.com; s=arc-20160816;
        b=ki5IVO42q5+uJVfKZSO9PM+VQ0nnx8YL0qMhAPmVvdYyz6XnBhdD0+EmDeZDt60ByJ
         4vraXHodVWTV28Z4skcoCJnmE97lzWVALuSzQ89wTVmreaVn4DEY1bKu8zy7bCN8Vhni
         a/Bua6vBJXJkC6C8iTd8mEKjMNgm9XU7cYn1X11j02jZo5jdC0/BoqzmToRjJ1UZCGLu
         ITZnGl/Je+o9R8DnIDuMFL1eE5eZptXkSJnK2y63ZWiiNkpMFG1EO1O2GwrJUnyKkOsF
         zxmAWWkLOPamb9a47f2pzFuh8NOWtSKWp6KkEQKFziCJAvkzqrv3Lgmh6Hc/TH8eko48
         RCMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=CGQ/Ra1F9HN6hOD2VmiXIZK53bps5U5RzwPxon99V0c=;
        b=qtgIAkNBIyNaPyKhDfZOvdt28PxFOTKHw5mWBQqdx/dhKdq9x6WU8hexI7MDGeEMBj
         Zu8GEsmWUpClqU4zTeGsYwYCEyF6vOdhn/nlRg+UPC1OC19dvxGvKNzHKS1NJs4Aa2YB
         tlmYR+4V9ZPzEZKCfRSxHMKziR3QsWixqr5fudsnP3AlyUkiE7vwIEWLQRy+Lpn6z2+d
         QzmIh3StsEt5fRv9rclOcPsFlLssERRVEqDrcWaE6+iSatet3NOetx/p+JZ0Uoevyow2
         NDiakM/YahZzl1o3XY/afIAtpPR8kdGj3+6wEHxN1mRyAeYbiUnAnw4ZykmKIgr58gEs
         2hwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZnE/glUA";
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CGQ/Ra1F9HN6hOD2VmiXIZK53bps5U5RzwPxon99V0c=;
        b=T1Zqo7U4EIxllh/77m4H7kBaAax5g8EppJSZGf9KMfMi8hAQoNEkc1mFpC2xpfpwUD
         rk8W+azdX6RSa8jbkCd3YuCPLw0iMLCMhPj+p3zQrMF20EjOHZlS1FGYdBVOUE8853iv
         ES0+zKCKq8uRuKyyjuu3ihVJWFNMzYQLIQWth9CNn1j+U6Qjx+KXEOhUIBgKAPhActUI
         XqzIPTRqDpmOKHRxzyb+8z2ESwYVh+yG3t+kQaRKXCJogpqRzRIDoxpm3Go8M19yNqSP
         yvJI4dxhZz5cJhbGsTRc8EpdiKIHKyI8P/XphjkhCPePzph44PcpOA47tFbEKwMZpAea
         XkkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CGQ/Ra1F9HN6hOD2VmiXIZK53bps5U5RzwPxon99V0c=;
        b=B8CGExxYJT3izlgt93OCzs4T3ibSEapzeQ6i+kkeeTsh0OLmVvFi14934nus++FZCe
         6RqOeR4tF4aXt9zrXDXCMXGBKZG80sccn5DGtoNRF3csEjwf8CJyTvSPJ69LEDfL/0zR
         Sd27k/JFRlFXHCze/bLz8cx/YoZvqX+OrXPuaJSwe0ladc3wYaBpaikrNP1hb1Pzg2iO
         +0nDuZA5lP2Lj8MZR/z7lRtRGFBKOZ3CWoiTX6vD/8qBQJcCzZIyK1wpmPp3tE/9MtmV
         U9gu6lk3Jbmq8Ohgh0QWNbiDtsUqTnzQqJ4dpxik/b9/nwHati+4H0eLritVOk+bicKF
         ACKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CGQ/Ra1F9HN6hOD2VmiXIZK53bps5U5RzwPxon99V0c=;
        b=fLRUXoVo0bOJHmFtjkrQ5k6AGQcU8kz03vcXAiFt1yhKSUNYP5u52LZz/h1IPu1Feb
         KaBgNM6AafYdSL94Ui/hkONRA+yWK75INqytmRX10ojcsOoko1Npp2DIE7GTdGTMBC3z
         r5WRbQ6MqkPPqgueHf/D85THqVbMnSEnylfMKGMMKATgXoWGGUk7qumjsP4LbtG7FRaP
         CFKr/2vJeFaHSL6droXaIpwvH4rhRYux2HBrKwE62uktXqyEHtmV5qlkoLSvil0dTW15
         Z95wycSOSGp4r3LmQQaGe0IF3+NVENbE15Qo39Hcx9vZgn4SUQx/BQA4zvr0FyMzw2Pv
         t2Ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313YivJMfz+cZdLkYGBzhYry97QJo/Ep+qcH/i8/SozokgN9eTW
	0xGcpmvRdxHzUQLIYQ9h4AA=
X-Google-Smtp-Source: ABdhPJzwSV3ZM+WOJZPHImlRtCei1Im5/OIfT96CxNN7iZ5PIzOTIS37qmE2arE9XmSJbMXycQDXcg==
X-Received: by 2002:a1c:b70b:: with SMTP id h11mr8739127wmf.185.1604820873763;
        Sat, 07 Nov 2020 23:34:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c689:: with SMTP id j9ls3628117wrg.0.gmail; Sat, 07 Nov
 2020 23:34:32 -0800 (PST)
X-Received: by 2002:a5d:4f07:: with SMTP id c7mr12005764wru.296.1604820872767;
        Sat, 07 Nov 2020 23:34:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604820872; cv=none;
        d=google.com; s=arc-20160816;
        b=dg1Tn8o7PuahqFtFCxKiaMX8JivW49GyfRVALt/KIaLvMg4sdOfi0a1aGoELmscmuO
         u5oFn2ydn9HFoVjB2lLcgpn7Xc3I1pcZqi/E/FqkLLxAZ6ahAUxCpbHY4wrmr8vdqoyz
         eCm6WAXcyKxz8p75DthgZmQF7KwLTCiQ6blxX+ERpMVGNz73fBcIwSOKxJW7OgTXbTJs
         DXudzfJmrJYfWUqAVzIqDqlzUc4iLJCZqE9brrgKLMfSrb0Dt5zy55FkbBg1r+MoPwk6
         h6TODgY2EVOcbdOnCeGSEvIYkUCEu8R2makx97oa5QQZf/WraPi68jbj17XVwxm2L8tb
         hroQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=EtaEzhxwenaqaXTQFj3napoTw7vDymU9qv/CcKvdwmE=;
        b=0ZVN0QlHE8qn0XsH9VKi1/YqcVSjwHXJ0u4+Z4rl7cdmavXQFVGLAab3NaQK4/cL7w
         +5KohdG9XJ06/3PPCSrPrti04Qtn+/dlN3hhlPSRMBxWegUptlyfIKTbMmcnnlj83J5K
         lzQ2K+bS0MdsD9Is6+PQSRMgge4TzXg/rinjY+gphvdAOe2YzQB4j6xqPlJcCa8pr3lX
         oFGcvFMM5xIeHEwBewPBSPMbXLHHw2DNDz1CYknhVEr0lvdd3ZNMzvQSDfd7ywK9loaU
         HygM/d8Fcr/71Gef+tfig08W7CkClz14Y7pVLxpY29/FHDAqisWQqE9QhbC4fyN9Zq4W
         qDMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="ZnE/glUA";
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id y187si163205wmd.1.2020.11.07.23.34.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Nov 2020 23:34:32 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id o23so7790040ejn.11
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 23:34:32 -0800 (PST)
X-Received: by 2002:a17:906:f18f:: with SMTP id gs15mr10050425ejb.474.1604820872490;
        Sat, 07 Nov 2020 23:34:32 -0800 (PST)
Received: from felia ([2001:16b8:2d34:bd00:5df6:61b:5ed6:df51])
        by smtp.gmail.com with ESMTPSA id f25sm5202614edr.53.2020.11.07.23.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Nov 2020 23:34:31 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Sun, 8 Nov 2020 08:34:30 +0100 (CET)
X-X-Sender: lukas@felia
To: Joe Perches <joe@perches.com>, Aditya Srivastava <yashsri421@gmail.com>, 
    Dwaipayan Ray <dwaipayanray1@gmail.com>
cc: Nick Desaulniers <ndesaulniers@google.com>, 
    Pablo Neira Ayuso <pablo@netfilter.org>, 
    Jozsef Kadlecsik <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>, 
    "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
    netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
    clang-built-linux@googlegroups.com
Subject: Re: [PATCH] netfilter: conntrack: fix -Wformat
In-Reply-To: <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
Message-ID: <alpine.DEB.2.21.2011080829080.4909@felia>
References: <20201107075550.2244055-1-ndesaulniers@google.com> <4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-296194858-1604820871=:4909"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="ZnE/glUA";       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::641
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-296194858-1604820871=:4909
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable



On Sat, 7 Nov 2020, Joe Perches wrote:

> On Fri, 2020-11-06 at 23:55 -0800, Nick Desaulniers wrote:
> > Clang is more aggressive about -Wformat warnings when the format flag
> > specifies a type smaller than the parameter. Fixes 8 instances of:
> >=20
> > warning: format specifies type 'unsigned short' but the argument has
> > type 'int' [-Wformat]
>=20
> Likely clang's -Wformat message is still bogus.
> Wasn't that going to be fixed?
>=20
> Integer promotions are already done on these types to int anyway.
> Didn't we have this discussion last year?
>=20
> https://lore.kernel.org/lkml/CAKwvOd=3Dmqzj2pAZEUsW-M_62xn4pijpCJmP=3DB1h=
_-wEb0NeZsA@mail.gmail.com/
> https://lore.kernel.org/lkml/CAHk-=3Dwgoxnmsj8GEVFJSvTwdnWm8wVJthefNk2n6+=
4TC=3D20e0Q@mail.gmail.com/
> https://lore.kernel.org/lkml/a68114afb134b8633905f5a25ae7c4e6799ce8f1.cam=
el@perches.com/
>=20
> Look at commit cbacb5ab0aa0 ("docs: printk-formats: Stop encouraging use
> of unnecessary %h[xudi] and %hh[xudi]")
>=20
> The "h" and "hh" things should never be used. The only reason for them
> being used if if you have an "int", but you want to print it out as a
> "char" (and honestly, that is a really bad reason, you'd be better off
> just using a proper cast to make the code more obvious).
>

Joe, would this be a good rule to check for in checkpatch?

Can Dwaipayan or Aditya give it a try to create a suitable patch to add=20
such a rule?

Dwaipayan, Aditya, if Joe thinks it is worth a rule, it is "first come,=20
first serve" for you to take that task.=20

Lukas

> So if what you have a "char" (or unsigned char) you should always just
> print it out as an "int", knowing that the compiler already did the
> proper type conversion.
>=20
> > diff --git a/net/netfilter/nf_conntrack_standalone.c b/net/netfilter/nf=
_conntrack_standalone.c
> []
> > @@ -50,38 +50,38 @@ print_tuple(struct seq_file *s, const struct nf_con=
ntrack_tuple *tuple,
> > =C2=A0
> >=20
> > =C2=A0	switch (l4proto->l4proto) {
> > =C2=A0	case IPPROTO_ICMP:
> > -		seq_printf(s, "type=3D%u code=3D%u id=3D%u ",
> > +		seq_printf(s, "type=3D%u code=3D%u id=3D%hu ",
>=20
> etc...
>=20
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/4910042649a4f3ab22fac93191b8c1fa0a2e17c3.camel%40perche=
s.com.
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/alpine.DEB.2.21.2011080829080.4909%40felia.

--8323329-296194858-1604820871=:4909--
