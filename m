Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2UFWP2AKGQEPKUTUKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F141A135B
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 20:14:04 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id b12sf5117727yba.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 11:14:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586283243; cv=pass;
        d=google.com; s=arc-20160816;
        b=uoQlIFwAWqhr3Xhlvi3qZ3VQUQJ8RP2kgg3IZBdwZ7kj2+kTfYygVb9mMjRih57oN7
         7C7zifTyBkR+r28+h+LCCWXESUZtkdnmL75fcRkyA36y7pNmkxjV2Dl+FnCIzPRQoOJq
         S/4Wwt8HinoVYbIuu3CmUXHTe6kjZMkEITVz5ErDSoElU/kTUfERSsGklYA9VbOfS0kx
         1ONMimwc+bKllT31vQlsLBQurqqQquiQFy/qrL6MyePx/T9I4uxEJQ4MPoYEpFjObM80
         5/kFpN9UzdAX8HPD/AIQF0hJ8MP0Kobv0HoFZNpO8EAEJhucOZP5oG89jPhixClct+Rk
         9V5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eSi+3Z/Pg3R5L8cJBAp+G8fzHX62WRooAL0m7jZr7Lo=;
        b=Ma1im9cInYhwS6qa81vqKlZqzeSYHq2uhzekG/+2oEArbLqXajI/SeFPU+XqOEt4AZ
         gtTEKI/yqDLivvBYDfyiYnTDVS0G2BV2RltKlIyuiMMGyT92s5lyXw8QilQc77g2CJ1S
         bDjxhU8njkD4a1Qy8z+jEcDcRALPZacJoO5CbwUHoL3ONsQOUHOPtt3g7VSkbZAFXXRk
         qNAhE/MNm4UcWstuppMlLFRA73m4kN2YqRgfA1+4kDsVRPDmKk5Mod+rSk5ycgcKlFPn
         9h15iGBSYVvI5bvM/pdX6Bv/Q+oNr517kWxRyT/GODulUdRMr2Upr5O01U/LdgYlAzYY
         8AAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Y+PUf4/I";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eSi+3Z/Pg3R5L8cJBAp+G8fzHX62WRooAL0m7jZr7Lo=;
        b=fw3hbu4P1gEzYbqXvA7UJD8WwFpQNLsmsbxbibpPwr3YRdXGXmikK9GJCuu6vABUk+
         mfzT5jzWqTqUH74kB6TevgnL7OzKerogAI28b4jCVM+/Vslrnx/zvfSWoxePtZL5bceK
         FXJKUbKinPd+/sju62Rj83Fk6xx+WG78K4JYnolaBxp/jLXCTiad56Ie96HlMu+z1XJF
         nNrX2LhtpI3sRVuPfcHa4PqnZZK+r1L5VLtGk2TH6LOplKxD1Iyalg8n3MRt8W6oD0t/
         xyrSWheqw/2N9Qo2IXLTfl5tSu24rjvE3l3E4BsByQSLEIUSXk0bP+PTK89cX4WRtk1t
         iyog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eSi+3Z/Pg3R5L8cJBAp+G8fzHX62WRooAL0m7jZr7Lo=;
        b=FaI4f6a4+AD33HNqVcJOIQzir1UfqisBq5GUrByBmLBm/twHq9Sue/8f1Sdmkg4tY8
         HeO0XVM5JpdidDh/068Vdh+VNPuf4EXVlmne0pbj22GORSbVXvQxOMgZMW1BkuTO+ONN
         GPUyEiBMwJeGn7KCytLgqvgeqh2mzotV9KbM9ZAVEjahu4bIfW9c/XLj0Xs3i0Pd/NG+
         gTDOP0MLaPwT3WCX55TOIEHkUFTldVQybg9mxmAPhGwntx1RfJagtlrit9u1e3K0vOcT
         TI1JSoilbg63u/BoMGPjoF9Hb7w0K1iL97eUcV5O4qgCX9R0EQjhJs3SjveFDn0Q3/yS
         cCdw==
X-Gm-Message-State: AGi0PuY+rVUC9MsF9gfQxbw7aSZcwCmcvWFFZaqA17r1W1a9/ceq8JU4
	qajQWkTbRQ3eLEbVGQ5Lmxc=
X-Google-Smtp-Source: APiQypLqRlNuePLomaAhz9zFnEf8A/7+Z8jNu+MWpf6unNiHOTvMyHw5FCyDly+ro77+fPojBxcBAA==
X-Received: by 2002:a25:d047:: with SMTP id h68mr6126104ybg.257.1586283243003;
        Tue, 07 Apr 2020 11:14:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cc4f:: with SMTP id l76ls1562945ybf.0.gmail; Tue, 07 Apr
 2020 11:14:02 -0700 (PDT)
X-Received: by 2002:a25:1ed7:: with SMTP id e206mr6287338ybe.387.1586283242611;
        Tue, 07 Apr 2020 11:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586283242; cv=none;
        d=google.com; s=arc-20160816;
        b=vO56X9O3ZiZspauJfEWpLlbtOg5m+dCWZ6/cEKDZhYZHTsKxUeEKlsXVXJN7fZ58Qx
         7whetN6/SpXRkqDJv2Kl52XOB81tdnph8uCujUk281XsUxX+ulNJCu2AJCPBL48DBQdL
         utqpUzkDTwV/sZRZlfhXvUcGKcbv+aUnpK10rODSv7YyfXaU3sNZBkugKwEqPL6cXCl9
         jIcqRs5olFQ20iIYi8zdno8qa4Hm19MkfnjYp4mUIeJXymJtluuKJg3J9x/nnjzokkjh
         uRLBgwST2MNP2Ixv56+3M81xBifyfidEvIA+8VFwJPPMy1k3vUAK7ii/LVXgDj0fD/G+
         VvUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PeiZnJCEZqQc3Rqpk45c1lEucyFQ8/zMMdEk9YtKXts=;
        b=jVHhvMoJUnXcg4sx0VWjrqymUSFFIbn32w8JnDZumpmPA5gi8jPWA5lySlvjJFlZlB
         KDYxSl3mmLjpszUotkkRvZHCznJUa5SuQ3z8xsqhToFZpDWKvrnOsMMnZc0VyeszAx3j
         y7A9n0tQLkwl1wlJwwCsl0eFNn4K06OpX4p2xlNLk1U/VtEXpbz31UfXdi14CajUh6bt
         KxeTyUqMou706VrhjddzdUJaczsDa2IAlSw9mIjTEDoz4qRoXhqnoSNotF8LcImeu6rI
         TKhTHYOUPO6OP4e9yMDz+4D3fY1U3iM4YxUvS72I+L8GcHnKINugSyj81BqitWdP4nrN
         5kAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Y+PUf4/I";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id l141si289262ybl.3.2020.04.07.11.14.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 11:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id c12so1550667plz.2
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 11:14:02 -0700 (PDT)
X-Received: by 2002:a17:90a:8085:: with SMTP id c5mr568939pjn.186.1586283241410;
 Tue, 07 Apr 2020 11:14:01 -0700 (PDT)
MIME-Version: 1.0
References: <29b5043db9a51ef7a0cb6e3a8c69c91e36045cd6.1585944770.git.mirq-linux@rere.qmqm.pl>
 <202004050928.d6QhVcsQ%lkp@intel.com>
In-Reply-To: <202004050928.d6QhVcsQ%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Apr 2020 11:13:50 -0700
Message-ID: <CAKwvOdm5BhMdAmXR0gCLntkbvF7ajaNoWoHVCCio1CqbGzS6aQ@mail.gmail.com>
Subject: Re: [PATCH v3 07/11] power: supply: core: tabularize HWMON
 temperature labels
To: kbuild test robot <lkp@intel.com>
Cc: =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrey Smirnov <andrew.smirnov@gmail.com>, Guenter Roeck <linux@roeck-us.net>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Y+PUf4/I";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Sat, Apr 4, 2020 at 6:53 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi "Micha=C5=82,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on power-supply/for-next]
> [also build test WARNING on hwmon/hwmon-next linus/master v5.6 next-20200=
404]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>
> url:    https://github.com/0day-ci/linux/commits/Micha-Miros-aw/extension=
s-and-fixes/20200405-044024
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-power-s=
upply.git for-next
> config: x86_64-randconfig-b002-20200405 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 62f3=
a9650a9f289a07a5f480764fb655178c2334)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER=3Dclang make.cross ARCH=3Dx86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/power/supply/power_supply_hwmon.o: warning: objtool: power_sup=
ply_hwmon_read_string() falls through to next function power_supply_hwmon_w=
rite()

I'm guessing this is from the unreachable:
https://github.com/0day-ci/linux/commit/b8b2d14ca46ca54257f55c9af58ea25695b=
9ee36
I'll need to play with this some more as I couldn't reproduce with a
simplified test case, but looks like a compiler bug.  Filed
https://github.com/ClangBuiltLinux/linux/issues/978 for me to track.

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdm5BhMdAmXR0gCLntkbvF7ajaNoWoHVCCio1CqbGzS6aQ%40mai=
l.gmail.com.
