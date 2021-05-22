Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBLXJUGCQMGQEJEGHZ5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9241238D330
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 05:04:15 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id x2-20020a9d62820000b02902e4ff743c4csf14392959otk.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 20:04:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621652654; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/cijiYlFYuSlJk8nOoeeDyvRwFVheEFuWTC+xGFIPyd46mpctWO6cfxfdVJTDh0/L
         ZkrNhUxy605jEM7A0kjtFE+DttF1ugtKu+XGYgm+HOV1eNPD0j/5/zpvItUEhBTuZkla
         AxjmBSDuoEAX4RvIvVtXtGDm+GBWnrOfe589JjgCrxs4Tu40E80905CLW+kECP6mgr9B
         qgJwb0pYOZgXGDfabzUjeAmndfIznaSql/KdSsL4SxysiO6xaMff3TqXYO5Mk65joD3c
         Srn9RCbeddlj3Ny3gJAHDDJjoT2tCsmce81GVpLfHEbyYlNIy3r9C3/VkgRb/yJgXiRI
         bBCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=UaSNnA5AkcblenitsFShD8B6edlv4mElAZQHQ9rIaBE=;
        b=zWazJx+dMLDoKHDyQgV7a+o8p9wamCu4CAoamq4tsPo6H3e8Dvf/tOrND3G5qSrqCn
         SgKoXnE850XytYHf+m8fWyLdZNoJ8A/wgzjo4zb48BjDe03DitkBCf3cVT36N/oRrnuS
         FuU48EQDwVyRvrZD6tdZqOkDmyVCXzDz7RMGgOrnuJ3dexUNy5aj3cduscQMwLiIgkxk
         PjdlfsPHFwM0N8lmCFit0YGwF1O+IQ/Zt4aJeWiBx9/Sa+pyELkt26RCzU0xC0KVAqKE
         b7cKNPfAyRj53/C1d3ZwZh6egKeKzUzDF4NdueY3yTYLazxgxQvriQyglg4586VUd7Qn
         hZJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ytBNA3gG;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UaSNnA5AkcblenitsFShD8B6edlv4mElAZQHQ9rIaBE=;
        b=jF637Umpr8ts5fbVZs7vmFOu3j4PAR11M89TSlXKQWfMsS8C5zstvnP/hPNw0/U04q
         Rp2/+cYKu9pk7kVnUCPl7y5x7xEi3xTGODlZ+5R7Dh6NORUh2LE99rcz4nEbD8jBFIUi
         jiLUfWCs69Q1JkCIyCLXzzeSJg19d9B49XE1u/mjAhTrLahqU4tjj2CMm6a1d8Fir9bu
         BA62HK7HH6Ur4DurJ+h8BHFJvDpWiVHlkMmhmzgmhiYVrN9iX+t9VBb9LU+gI45C21Db
         lFZykKlZSzNTPWBjxvQvpHgLW5yq0EQY/aG+xXxfJxZ2qjvFCbS774sc4F6+PTepq7rQ
         FJVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UaSNnA5AkcblenitsFShD8B6edlv4mElAZQHQ9rIaBE=;
        b=s5hr3SjxzbZxVXRAw95hIz0336kcKwJhkMRGic6CFOc6I6hc5NrV2mqpvuQh7ivHkk
         ZW/ilZIRo72zUAVwz2NenCdcpk2Fx5Sl1WuOrSoK9oMyJ4r78O2DMbnlmmWHF9NlWdbz
         Ro1grx6vcT2YprId9R0BdSg/eK/UBOs7oE5BBkS+HEnk9HwV349UX19EHC7fp6dECyAM
         KAJmEegSJoamXVVJ7pTa7/74hW+ddyjjQUjOfS5Pde8waYKkZx2A2Xb1e2/I6yYsMKHV
         HXFjKm3IZYeXT9r93N+N0C1uXdA6qiRU64fZWCwCuGKdff7UtHVjBeRpV/5iYTtkYDr9
         Ip4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533I+Ga6dN/kjK7xYP8NQzkiwd/AwUqXRqloSxHbIxEWC2tlBS2E
	C6rhCxZwLrYaGRG0LxBcFYI=
X-Google-Smtp-Source: ABdhPJxGb7HtuP1otmr4bLCnaZxiFs20zUTGxOISwtw4Kpx9AvCzwONEAVMVHo5tzAXZAZHog2Vk1Q==
X-Received: by 2002:aca:c207:: with SMTP id s7mr4211634oif.9.1621652654195;
        Fri, 21 May 2021 20:04:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b102:: with SMTP id a2ls2620135oif.5.gmail; Fri, 21 May
 2021 20:04:13 -0700 (PDT)
X-Received: by 2002:a05:6808:a02:: with SMTP id n2mr4214869oij.104.1621652653832;
        Fri, 21 May 2021 20:04:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621652653; cv=none;
        d=google.com; s=arc-20160816;
        b=tV1RxqradQsxpn8mKwkxtsKjALNGXXbnWuPHcK4Sx6jAd0nVRZFtHHZMRFfwzH2TYc
         Re0sgBE1Up9YIap7IivtvMoNDgxP9H2xvbCi1BNmao3huE2K18EaMid5ro2yx69ol4iC
         ODMw0Hesxgrra6n9s00nFIWMTgXHwmUzUDiGlrkERY7avyvLKTTSXyxYEw3BJkjSmLlP
         QHp885WgclX7DJ+CttZxUHI2eO4B0bj0dmuGUvlkavlebkvuXVW2EjjxOg1IAma2pX6k
         hZZDzo1vdfTF/awxqCpiTcpHNMAI9TzQ8M7nfgZYXJ/LuNn7HRWlp3MeZF2OXJVshRIl
         TDUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=YGP0GO/05S1q3RgfS4gVurm0s0DX3V4DOhOSb9eSQmM=;
        b=Bb1mCHoX6WUgEJl0tAjQ0qGwFp2w3WDJJApfJ0fIFSqPA6Pyy5ZCo/B+WrSDEZxizh
         x7BR/2XjjqBqm9r2dOdK0L117XJystzMOKzKATeGrwnqU9ufY9GQSclhXA8PZOD8nNmX
         fd2Wk6JNyGiEydEOCpt9OmXSUSDGopvvF+TM6eInHus4qjJjigqKUxubeIsSKz63CLvU
         SGjoMGWJQwhvjBqHF/i2biBde+R5EZYb+GlXZXluGEnND9Oy10gJrTGXw0SGaxehOFq/
         k0Ml4mWU2fZELadvzaPqXGK/QVUXHPHkYATyqg8MGNd1od+GuVCbqk8KlyAhi7HnE52A
         W0iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ytBNA3gG;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id o7si1486717otk.1.2021.05.21.20.04.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 May 2021 20:04:13 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 14M33vuo020976
	for <clang-built-linux@googlegroups.com>; Sat, 22 May 2021 12:03:58 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 14M33vuo020976
X-Nifty-SrcIP: [209.85.215.180]
Received: by mail-pg1-f180.google.com with SMTP id l70so15704324pga.1
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 20:03:57 -0700 (PDT)
X-Received: by 2002:a05:6a00:158d:b029:2e0:6ae2:17b1 with SMTP id
 u13-20020a056a00158db02902e06ae217b1mr12708778pfk.76.1621652637185; Fri, 21
 May 2021 20:03:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210520231821.12272-1-maciej.falkowski9@gmail.com>
 <20210520231821.12272-2-maciej.falkowski9@gmail.com> <CAKwvOd=32_yNvAWRjyczOoEjsWje9SfaB=S1s9kS1bRFZhuU8g@mail.gmail.com>
In-Reply-To: <CAKwvOd=32_yNvAWRjyczOoEjsWje9SfaB=S1s9kS1bRFZhuU8g@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 22 May 2021 12:03:20 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQtnX6x1AWUU8+7MtUo4OkCrhKjoP=w0-cbH08u__wGWg@mail.gmail.com>
Message-ID: <CAK7LNAQtnX6x1AWUU8+7MtUo4OkCrhKjoP=w0-cbH08u__wGWg@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile: clang-tools: Omit printing stack trace when
 KeyboardInterrupt is raised
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Maciej Falkowski <maciej.falkowski9@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ytBNA3gG;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, May 22, 2021 at 2:18 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, May 20, 2021 at 4:18 PM Maciej Falkowski
> <maciej.falkowski9@gmail.com> wrote:
> >
> > When user terminates the script (also implicitly through for example
> > `make clang-analyzer`) by using
> > Ctrl+C (or sending SIGINT more generally) the KeyboardInterrupt
> > is raised printing stack trace of the execution as shown below:
> >
> > $ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_commands.json
> > ^CTraceback (most recent call last):
> >   File "./scripts/clang-tools/run-clang-tools.py", line 74, in <module>
> >     main()
> >   File "./scripts/clang-tools/run-clang-tools.py", line 70, in main
> >     pool.map(run_analysis, datastore)
> >   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 364, in map
> >     return self._map_async(func, iterable, mapstar, chunksize).get()
> >   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 765, in get
> >     self.wait(timeout)
> >   File "/usr/lib64/python3.8/multiprocessing/pool.py", line 762, in wait
> >     self._event.wait(timeout)
> >   File "/usr/lib64/python3.8/threading.py", line 558, in wait
> > Process ForkPoolWorker-6:
> > Process ForkPoolWorker-1:
> > Process ForkPoolWorker-5:
> > Process ForkPoolWorker-7:
> > Process ForkPoolWorker-2:
> > Process ForkPoolWorker-3:
> > Process ForkPoolWorker-4:
> > Process ForkPoolWorker-8:
> >     signaled = self._cond.wait(timeout)
> >   File "/usr/lib64/python3.8/threading.py", line 302, in wait
> >     waiter.acquire()
> > KeyboardInterrupt
>
> With this applied,
> $ make LLVM=1 LLVM_IAS=1 -j72 clang-analyzer
> ^C
> Process ForkPoolWorker-5:
> make: *** [Makefile:1902: clang-analyzer] Error 130
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Thanks for the patch!


I am not a python expert, but is
"Let's suppress back-trace when a user presses an interrupt"
the common coding style?

If really so, do we need to do something similar in all python scripts?
I do not know what is special about run-clang-tools.py.

For example, if I press Ctrl-C while building Clang
by using tc-build, I see a back-trace.
I have never thought back-tracing was annoying.

The exit code is 130 regardless of this patch.


BTW, I prefer not having "Makefile:" in the patch subject
since this is not touching Makefile at all.

I rather like "clang-tools:" or "scripts/clang-tools:".







> > The patch handles the raise of the KeyboardInterrupt and exits when occurred
> > with code 130 as documented in: https://tldp.org/LDP/abs/html/exitcodes.html
> >
> > Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
> > ---
> >  scripts/clang-tools/run-clang-tools.py | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools/run-clang-tools.py
> > index 38fc311d2e03..eb0e0ecfce24 100755
> > --- a/scripts/clang-tools/run-clang-tools.py
> > +++ b/scripts/clang-tools/run-clang-tools.py
> > @@ -77,4 +77,7 @@ def main():
> >
> >
> >  if __name__ == "__main__":
> > -    main()
> > +    try:
> > +        main()
> > +    except KeyboardInterrupt:
> > +        sys.exit(130)
> > --
> > 2.26.3
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQtnX6x1AWUU8%2B7MtUo4OkCrhKjoP%3Dw0-cbH08u__wGWg%40mail.gmail.com.
