Return-Path: <clang-built-linux+bncBCUY5FXDWACRBBHIZPVQKGQEAMUX3KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id A7012AC381
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Sep 2019 02:04:20 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id h23sf4132355edv.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 17:04:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567814660; cv=pass;
        d=google.com; s=arc-20160816;
        b=yfOnYHsN0H61HMeGjKWP+uFmFoK9spCKjYaeQtIxMCZs60sIxWPdHzX16NDmtwnLPM
         IyI6Cs55lYz6Q1iSFW2WwkKFQxVqZLeFTuaydFmtMmpxmss912nCtkQFE9cQlfrvToQ3
         h1HzsU3kSEXCCViH4xqrUbhOnwUK2PntcX3gTg6EkFxsyw37tyr2B3z1P+13b0edeELA
         cKv6rTEJfGQ4Z5yXwxTTpb0WkLTnfgrePXGh5PxzaHG04L+vciJoBoy+/SJWLCQWP7h1
         fsCOVjVDtV0yBLwJY0lHhPe3dvg3i/30wY4vaLhIY09USNyOY054rYJC34fMIXT4qGkb
         xIhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=k+Z++HBc90qZZO5A2GPquIHTsOrJV4SQOoaLi5oBjrw=;
        b=AdrdeC/D132CplE2oFGQPpKI5mzTMo+0y+FBKaKhhJGTnEDzEXLG22dJwxUCCi2gfg
         UqqSBuZHalghwlS99917/sCR35MR9zXrj+24Dk0fh5KyHtT+SL+ABwBeMzVY53qlAqmr
         j4ACm4KYrtItNJGDHKPEaGjHFAWC4Q0uwyA1TeQG9LccneMUslxyrRlPb7CBa+Sw8CTP
         taW1lAoPIufZhY+KCaxBVSLLTELq3XUfJg/573weDYxz290K3mPFTELM0r1N3dIRIa4P
         LiqzBt3P0m/bbK+7SiyAc8rS/U1TTur6ThRMG8w6yDzm5sTcCY4aVXksY8ycwB5K9D4h
         7lMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IzjUXa2d;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+Z++HBc90qZZO5A2GPquIHTsOrJV4SQOoaLi5oBjrw=;
        b=Ck+eItuYbLQ1snqYcJJNh8zcsuR6pS9pgWm+3rQTTRRZdcQ7hWMJriRaIca4Ej5H8Q
         Yiiof9rF01cEg5mZtDS2GuK4Ti4JMpCcRPRmEXQ706wJz07QQKbG/B0xas2KMqRnHK9k
         P6AjlzJuiw85K7QGHQLVg43/XcDrAABKm6Ds8xD2ux3WEHwbZ54JU/nTsnktzioiUwXL
         XnkzU/GJO55UpnnNEv+znRxDMk4ACC9NzysckR/a2vEcAsZ4ixrDbNF8blMlGgRxPtGG
         c2yYMsmlz921l9naTjF00ZgMxbHIPdutdxchevpmMnpBY2Vdatdm8iUyaPmFEId7t+4H
         Vvmg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+Z++HBc90qZZO5A2GPquIHTsOrJV4SQOoaLi5oBjrw=;
        b=ZyGNn964uTiiMR1lP+nOP0t77M5X1pOmqP0uYkKi2xKCAUaQnZXSeHfaFLx68ook32
         YiKfNwzOv3EtkmRULpvRIesQuPWPQ207rN7zN1xKY6nsfPSfYsfZKUEhCMwQ58iNrAwK
         WHb9cMwaIl8ryMDoOBfid+xazWxyCfcYXyI62Hm1LDkdpOCj+S6oQGf3/iKosxySql7B
         nk4OomVwhz0Q5noP+iQ/54LUGBuFvmMyLp3x/5namk4j+iWsIhdb8MTBn7u3MM0yEIH7
         Eg0bJyygvduzvlSMzUfw6xXNNaQMbGsr3nhf+7JBtQ6TjcijyDN+gebQxSy0FnykOihZ
         9BJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k+Z++HBc90qZZO5A2GPquIHTsOrJV4SQOoaLi5oBjrw=;
        b=YPmS9wKxjCjCZx4Wk1/0xNGD/zwJl4cHcZV4b6nWCEg3AYI+5qMjCukJUugra52RBq
         tA7ZCU+pzFBu0al7Srx8WVcZqcnMtW5ZuOopy0myhdjCBmgOCAGhVteZCDg0Juu134/9
         p1N0sazjeGMV27/ddJPPEqvfY4t16Pv512za94NDgk3czhCAl2We3a2qvDOgSsK41Tyt
         /tuRTSrs/LQ/zld9lgx6vw6XPBm1N+Xjptv+E6mVXk/gswwVH/UImnZYMfqzrJtpVgKM
         O2DSdjQE36gEiptFhglTDvivB+Qvj+SEx4PvQtJikbtTkod/K1e+1AiJlCslROPfAfKj
         yofQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWlh9ERqe9+46QDx1mACcl7P10xtMbNBipJ25jnOEGNBxiIcUJ1
	dZVyez5YT8a9n+qaHaSv80c=
X-Google-Smtp-Source: APXvYqyCBP+swK7aYbntLMTDhcrvuSvexlqAhCeibHW2x3Ibbnt4yfkw26WRYi0GQSLntnsrAwMFaw==
X-Received: by 2002:a17:906:a416:: with SMTP id l22mr9424466ejz.302.1567814660316;
        Fri, 06 Sep 2019 17:04:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b2d2:: with SMTP id cf18ls1561746ejb.8.gmail; Fri,
 06 Sep 2019 17:04:19 -0700 (PDT)
X-Received: by 2002:a17:906:2311:: with SMTP id l17mr9674430eja.12.1567814659821;
        Fri, 06 Sep 2019 17:04:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567814659; cv=none;
        d=google.com; s=arc-20160816;
        b=jfT9umLURAVXMgnt119DPO84Z7zxzWqECYhbcoIk4zZJNzP5kHwsdJOtJHZihn7O5R
         lzjFchfaHFR6ZS9yyDIwcmzToWPURiFX0dC7m3sQoRtfR9qFrvsNIznEwcvB5hlWocB1
         WsKUlUTZr/fYlPwXzXgwU0NamEXfBWbaTGkmLl5mBMh+dDxPNJFwNmgoteV/Z/UbljiU
         nHnDNcMe6GcIareCtFg/HXC01OwyJhKMUm5Os7se4St1Fgbc7dkOdz/+0WCisgpBFuKG
         eztDJHmAO4KRifvYAFTbxMrUYMsF1GaEae3Q9Q0NXLqyzDBmWkKrJoAdfuPWkqEVqILF
         R8pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zY+b9si/sYGzZHaejL2ql4KHanFrzklavCWIL1aMy6g=;
        b=UX4vULCX6srWdEAoMtFF9r1n4AvD3pvZ90sXatVhkAUcDRqjjEGtDAycfMCB3xDg6w
         OhGespYAbQWF3LpXriaY6gQ6/x2qfACqoIY70ilPowJ6e5lneyk6dN3T+LL86+KXWtbV
         g3hvsKFk+4HHXtSRSIQB+iBCdBXCX1duhsX6TqOaGjghNUjkXyaRdg7s5F1xaGW31XHD
         MgE+qhAcq1TtdVvhZPqvYySLpKlL7tU1nHU3O0gWyTPyhcwxsPhOd3ER9dbN7cUEOx08
         Nfr258cD6sJv7pwuiRj3cKm9PABTQ6fpZZrvpyLdWpVlAQqvrE9IcH3P5bQN1U+gmEID
         pWNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IzjUXa2d;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id v25si500886edw.5.2019.09.06.17.04.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2019 17:04:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id 7so7499464ljw.7
        for <clang-built-linux@googlegroups.com>; Fri, 06 Sep 2019 17:04:19 -0700 (PDT)
X-Received: by 2002:a2e:8785:: with SMTP id n5mr3727248lji.210.1567814659254;
 Fri, 06 Sep 2019 17:04:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190904212212.13052-1-ivan.khoronzhuk@linaro.org>
 <20190904212212.13052-3-ivan.khoronzhuk@linaro.org> <20190906233138.4d4fqdnlbikemhau@ast-mbp.dhcp.thefacebook.com>
 <20190906235207.GA3053@khorivan>
In-Reply-To: <20190906235207.GA3053@khorivan>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Fri, 6 Sep 2019 17:04:08 -0700
Message-ID: <CAADnVQKOT8D9156p49AQ0q0z5Zks5te4Ofi6DrBfpnitmRBgmg@mail.gmail.com>
Subject: Re: [PATCH bpf-next 2/8] samples: bpf: Makefile: remove target for
 native build
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=IzjUXa2d;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Sep 6, 2019 at 4:52 PM Ivan Khoronzhuk
<ivan.khoronzhuk@linaro.org> wrote:
>
> On Fri, Sep 06, 2019 at 04:31:39PM -0700, Alexei Starovoitov wrote:
> >On Thu, Sep 05, 2019 at 12:22:06AM +0300, Ivan Khoronzhuk wrote:
> >> No need to set --target for native build, at least for arm, the
> >> default target will be used anyway. In case of arm, for at least
> >> clang 5 - 10 it causes error like:
> >>
> >> clang: warning: unknown platform, assuming -mfloat-abi=soft
> >> LLVM ERROR: Unsupported calling convention
> >> make[2]: *** [/home/root/snapshot/samples/bpf/Makefile:299:
> >> /home/root/snapshot/samples/bpf/sockex1_kern.o] Error 1
> >>
> >> Only set to real triple helps: --target=arm-linux-gnueabihf
> >> or just drop the target key to use default one. Decision to just
> >> drop it and thus default target will be used (wich is native),
> >> looks better.
> >>
> >> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> >> ---
> >>  samples/bpf/Makefile | 2 --
> >>  1 file changed, 2 deletions(-)
> >>
> >> diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
> >> index 61b7394b811e..a2953357927e 100644
> >> --- a/samples/bpf/Makefile
> >> +++ b/samples/bpf/Makefile
> >> @@ -197,8 +197,6 @@ BTF_PAHOLE ?= pahole
> >>  ifdef CROSS_COMPILE
> >>  HOSTCC = $(CROSS_COMPILE)gcc
> >>  CLANG_ARCH_ARGS = --target=$(notdir $(CROSS_COMPILE:%-=%))
> >> -else
> >> -CLANG_ARCH_ARGS = -target $(ARCH)
> >>  endif
> >
> >I don't follow here.
> >Didn't you introduce this bug in patch 1 and now fixing it in patch 2?
> >
>
> It looks like but that's not true.
> Previous patch adds target only for cross compiling,
> before the patch the target was used for both, cross compiling and w/o cc.
>
> This patch removes target only for native build (it's not cross compiling).
>
> By fact, it's two separate significant changes.

How so?
before first patch CLANG_ARCH_ARGS is only used under CROSS_COMPILE.
After the first patch CLANG_ARCH_ARGS is now suddenly defined w/o CROSS_COMPILE
and second patch brings it to the state before first patch.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQKOT8D9156p49AQ0q0z5Zks5te4Ofi6DrBfpnitmRBgmg%40mail.gmail.com.
