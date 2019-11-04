Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBBGJQLXAKGQEZMV6CNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4F6EEF7F
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 23:21:56 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id d16sf711353ljo.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 14:21:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572906116; cv=pass;
        d=google.com; s=arc-20160816;
        b=qioqJPWbBzsMc9gGgj1D77teEbQ0rkLuqdzPNqjb74+JS/IuC28GEvHVpKyaFFlnTn
         KHg58WOxxeaPArRDhPNtM/8pa3V3uFI7/cnywiEAELvFNmepvJYYD/tF+A74whfJk2B2
         X98THb/n0VuqUTxvcpvaiD8til+jJ3Vzq48BvIBlQp1WfGFd5xhXGOGif6Qg1wcWnnWI
         3uoTJfpgaDq2LcDMjr+s3to8YnMaJTAJsWZa50Tys+UxU3bzfodpbWUAKRDBy7nrs+Mh
         1VpeLV0mnpk9m9xVuUBetTK/PBBi+tK89kEScHi9yURlSJVFQdLRJAKFEuAeK0FKW9ab
         483Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:subject:cc:to:from:date:content-transfer-encoding
         :mime-version:sender:dkim-signature;
        bh=BVhFjHT9v72xuR6QKSlr2l7DewFjuyqdpE0FnRiEEjk=;
        b=F4zK7HhaM+pyV6tkDt8/OIXBGstrjKs+zrCT6Plmeg9P8YlYfkIso3Nl5PyB+DIgf2
         8Hw9D6BpcJB/FSujJ3DSJzm1CpnT2NGhbnf2Lwvn7ZvgMpZNMYzwO+8dwYQvKwDdMBjb
         G4Tpyk0LLlS0Waqu0SiJWR56OvNkWfQ0KoLroX1C0CElh9FmbV65Dnhr2yjN+JNven/i
         Cp2l9v7kguw4qxlE0YAr0Zw38U8i8U62zehLRduNnj61K4BasdqARIbJGZw/Q1Z1AzxH
         vbC+AYMfqNgalkIIYknXKqGJWTdtapEYhQF9saEkEgYe+HCqucGwEffapmf/XuGqqaUY
         OvoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=WIBsHmYy;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:content-transfer-encoding:date:from:to:cc
         :subject:in-reply-to:references:message-id:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BVhFjHT9v72xuR6QKSlr2l7DewFjuyqdpE0FnRiEEjk=;
        b=IWcfnYJai6WTJEmKvsvYCKlAAOTV0Wo+OtHDyjNJoGnK1P+n/E7ffdOUOoUohYAUVN
         q0k+5RC/zWWB/3H8M46y6/WygNpJvweB8fDi1NPIA1K3qq/78cn6FTK7OyhExXSLBFD2
         62FYMUC2vWNc52kng7Yb4fa3hgFDpsdgV2FLS8p0bbI8H1Hp7IQ44d2YHygiM4SJ4ZFS
         RjUcv4PBb8z9HditZWaPupFgQvtlLRiUOizT2l12K3FuK2WrsWA+VjbyOA+Xy/yXwp9n
         wjWKw6iQ8E2GuxTjuYQ6JIvprw7PlEv5FO7OhVdufvi1NS6C9Mp0nzRAig4/PDa66zZk
         IZcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:content-transfer-encoding
         :date:from:to:cc:subject:in-reply-to:references:message-id
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BVhFjHT9v72xuR6QKSlr2l7DewFjuyqdpE0FnRiEEjk=;
        b=gpnRrUboKmJ+yLFGov6Y2WVTIHydJInjaovoVmVJcL6215nRvgGZXenKKBFcX6HZpu
         JAc7S8gRTkqDHG7dMjHKRNSoG9I70eeYKEf7ybJTK2IRHdof3ju9fxxonPswluBqn2HW
         c1LodkwBtqwuKF8iBHBWmOWBTuCdwC+ya06swUFl05IxncDvgJ5Cxox8s9H2kFqtXw/P
         Rfsycz7V9th8M8SY08WN3MuFlqkkNBQB2h+VvmGEtpgjLUB1xeXcO/tduEEv6QI+hRbJ
         4X933OKZqlFFsb4kAgFH06sRV8wInhlp2lzOe2qkQZoOWPkK/25A7LoBPxk0I4TvVILO
         Rutw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVg2OvRjx7iEcj/Ot+IlnmUJW4ueHRGk5AynhNnacIA2afVjIa0
	wjnxBS3fQ2MAIlxWh8zfuCA=
X-Google-Smtp-Source: APXvYqzmrBm1lDIqzcA5ujYdTA/IWgjh26Vu0LCDQB9JowgQ+ix21m+q8oXw8ixQ39l3FhXy3/TZeg==
X-Received: by 2002:a2e:9a55:: with SMTP id k21mr6975722ljj.251.1572906116468;
        Mon, 04 Nov 2019 14:21:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3101:: with SMTP id x1ls2035566ljx.1.gmail; Mon, 04 Nov
 2019 14:21:55 -0800 (PST)
X-Received: by 2002:a2e:89d3:: with SMTP id c19mr20637074ljk.201.1572906115867;
        Mon, 04 Nov 2019 14:21:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572906115; cv=none;
        d=google.com; s=arc-20160816;
        b=pkpqruQ3uA3fLrG+KhwOD0LpC0JeWWQC8fVFw+/VsPkBY+kMAVQl5u5/KAX558X0Gh
         rWE+nOAJYpFkbqPUK85BlQNGe3WPdrrFtZeFMqzOyXLpUHYTrUaWrckq7cciubPH8hzJ
         AJTv82Ka30jCo1imxIxiF+ru77hlP7xhF7TanrgvP+AYrrjT072h8z1UEnwJChzB9Da5
         VjhAdKzwvQgkTygGHpOpzd0gK/aVfRQgGTACwMMV0qOGHo89XgxZTnh7qgUC5S/CTdxP
         EfIRgJfm8PQ74WrjotzobDrtcqP8tZVqjCyDqObNPBahY5Iiq7aR8l+AWokO92+XTcdA
         3dAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=jjAKanh73hCnEECwZ1oEUfND69hb0nzaiWfYnjRyqls=;
        b=C3n92tMwnEfrD+cUyWfrUcfNBYmNKWBnZstu+qGvOK76WoUk/T5XLE89mgEKtjuCoM
         bEILXCcrfli68+MK6gCGMSp5HHuZutwOYEgGTl2Rg7tqE5HCLZxBmfLaGDpGgiTMAP0A
         GY205Zv95/J+oTM2ASvOX9YMXFscPKIX2dHC3rheS4MorOH13Q7i0ebVdASQ1pjLjO2y
         GeSPOCZ++2NAGvEpUnzJw8sNJ83lOGDpXTNFixwtwmr4KV6g3HdVTXLHPgChEX9EiZ6w
         2D8JJAM1dTraWpfFsDrOcaI6kX/iPTq5Mti/I9U4Q189xho6iqm6yUbIhC3fLAp85WHn
         HWVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=WIBsHmYy;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id f3si20861ljg.3.2019.11.04.14.21.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 14:21:55 -0800 (PST)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id AF9625C0A84;
	Mon,  4 Nov 2019 23:21:54 +0100 (CET)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Mon, 04 Nov 2019 23:21:54 +0100
From: Stefan Agner <stefan@agner.ch>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Bill Wendling <morbo@google.com>, clang linux fellowship
 <clang-linux-fellowship@google.com>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Nathan Huckleberry
 <nhuck15@gmail.com>, Behan Webster <behanw@converseincode.com>, Behan
 Webster <behanw@gmail.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, Arnd
 Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>,
 Dmitry Golovin <dima@golovin.in>, Peter Smith <peter.smith@linaro.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [Meet-Up] Call For Presentations
In-Reply-To: <CAKwvOdkUdYXTiQQqYohQ+kZN4BQ4DFexDRqO-8SpOkkNkfXeOg@mail.gmail.com>
References: <CAGG=3QWPXoYMwWcDMu+sAGgdJPXULw2XjZB76Uhjcx+z6yo9rg@mail.gmail.com>
 <CAKwvOdkUdYXTiQQqYohQ+kZN4BQ4DFexDRqO-8SpOkkNkfXeOg@mail.gmail.com>
Message-ID: <226674be48cc39127f83fbbf87f928da@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=WIBsHmYy;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

On 2019-11-04 22:19, Nick Desaulniers wrote:
> + more folks, explicitly
>=20
> On Mon, Nov 4, 2019 at 1:06 PM Bill Wendling <morbo@google.com> wrote:
>>
>> The Official Clang-Built Linux Meet-Up Call For Presentations Announceme=
nt
>>
>> Now that we have a date for the meet-up and people are starting to sign =
up, we need content. :-) We are looking for presentations you think would b=
e interesting to people. Your presentation could be an hour or half hour, t=
hough I wouldn't focus too much on the time aspect.
>=20
> Hi Bill, if time permits, I'd like to do the following talks:
> 1. welcome/intro/background/history on the project
> 2. LLVM: how do I debug this shit?
>=20

I had a talk about 32-bit Arm specifically at Linaro connect:
https://s3.amazonaws.com/connect.linaro.org/yvr18/presentations/yvr18-505.p=
df

I could prepare a updated and a bit more concentrated version of it. Not
sure if that is helpful given the audience :-) But could be a starting
point to discuss around 32-bit Arm...

--
Stefan


>>
>> If you have a presentation please contact me and Nick to let us know.
>>
>> Some people have already mentioned presentations they would like to give=
. If you did, please let us know again just to verify.
>>
>> Share and enjoy!
>> -bw

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/226674be48cc39127f83fbbf87f928da%40agner.ch.
