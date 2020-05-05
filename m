Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBSUMY32QKGQEXRRNTKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3031C5B26
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:29:14 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id cb22sf1412654ejb.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:29:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588692554; cv=pass;
        d=google.com; s=arc-20160816;
        b=RY/+zN3w0z1IxUI5r+mVdabeS4G05weJjWpeZpFF1+gKU9Vl3Wx1frOgUXQEHFPmtA
         IUtoFXA4Rk+MI3gn9PVrNYKUFkdBBCPDUloR/+H72EAyco3GJhQ1ADChmTaqXrvYySeU
         +mCszPb63pEeTzLJw6+wl+ruHCsBiVjFiL7UjN88fM7p2DVsGPGmREPOenS3Mz2Lttjv
         QjMvFRqB512aE4IocACsiIop42iQQWFiGTQVNHXgNJOpbc9IUzHsKOpz5c281g5NyQIY
         Ddxq2nVqbIN+T4UJgFpw0buR0dYRvdaAUODdoh4/Xjpyg/yphSsKTp9Bfq3rjd7wttge
         pb5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LE9FiBHQBzrI1GlfmWr9ervm7G5q0kHiIEJ1qwmbl7U=;
        b=RqC/tBsY1LWMzFOACSUzYX0PNQlersHCQ5Ii83ZW2WoXPz9x00djXjFrevkJfeNo/A
         VDThe2LIwFgyRVQsQGnU/9G+NHW+23UBpDx9oMAPM66gEzt48r5BOtOd53BQfZNo1IGr
         Ov8BH9MQAfw8lr6ouS1HH8HVFuLQcZ8/oPqYc8P3QGsIcxl5KNrFsEi40sSpo0xUfN4Y
         pT7wxRIbDnSnNh4KkLigdbBT55XtJJB58UBGiWj4ve0WGeEQ84HgF1XoE01wEIoP09ht
         atM3Pes2Doa934ZP9D948v1qskedEsuwgDyuHnyaZk/AGFHjS6JvMemUeg/DK3Wo1ci3
         L2OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LE9FiBHQBzrI1GlfmWr9ervm7G5q0kHiIEJ1qwmbl7U=;
        b=nu6Oiu6t2wcUCc92VdRoSjfLcWbeJ5QPyUI9WHMyb9hrhEyxSJonH0IvLswIa18vW5
         K/vlWX04DLjXgPVLXljnLNjspZKGETT94c5kHzLPF1reYrPOtOGcDfuWf6RIBIa+a8Ne
         ULiSac+CI9uXUJis/ibSnewG5FtHSqb7k8ksdfillyKDxHeKQYsmk+vAvgZw1DRbohl9
         BSyn/Qmsy20iM7S6JtPgn2Hh9RHEhV/2ntUICWQ3EM5o8Pa3llZHuCaWnPmbE0lvm4Gp
         jgkBZuUtsZuyl0vKD8yyXU/9YKOPsCztjBFMvOok0JJ7ebN33GlMeFrxgnuO+wdlrXJE
         6aIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LE9FiBHQBzrI1GlfmWr9ervm7G5q0kHiIEJ1qwmbl7U=;
        b=n71rSF4U8t0MQWulGagYhUP60V3FaSv1muc+Tum1kBcbcmvBrSEKpVGgbtDMdqpiyv
         x4SPniTycIMENDXcmaqAz2Uv/174M9CbUV2JgkyHL9eh8n/Ps+bmQjAh/UbPoi+QgAQr
         a7BdTLRAu2+3NTUQH5w8jaYQS/jpqyZd+iokVyeKt5DHBtxXXxvH40nkDI2tjavwLzTf
         J9o05HI4fOtMGJxR0x7I3RQxkGsEijkNvqC4ibwqJFIrFQ5ygX7O56VnDeq43QZpEF32
         NtNC0qa9iiyuC0L2aerZBiS/mxqCAXpKAdMkJ8w3woZxPPmax9JsDdePrIhKaVUy6DYs
         GUyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZCzisMPSWZb8T/y3iyRZNH6JHhlaik25VeBc0JIYVrvqRK240x
	Klo4mIEli/v8Quw+m18j+ic=
X-Google-Smtp-Source: APiQypJfyOz5f/qEV3BTOr7ZbwH8sM2o/Ill7yV+fx1BiAOhNhtmXJFMS4hm5i+TYcAOjiu+x+lkfA==
X-Received: by 2002:a17:906:ecb8:: with SMTP id qh24mr3124052ejb.299.1588692554528;
        Tue, 05 May 2020 08:29:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ee14:: with SMTP id g20ls1384872eds.10.gmail; Tue, 05
 May 2020 08:29:14 -0700 (PDT)
X-Received: by 2002:aa7:c38a:: with SMTP id k10mr3210707edq.74.1588692554038;
        Tue, 05 May 2020 08:29:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588692554; cv=none;
        d=google.com; s=arc-20160816;
        b=rZvLhvjp4uVhzgT4mkM3I94EpnPyQcsm1qpoW2Pr7CxHYC2e431mar53H650zgtTcF
         XUCBh9Uontuk18JEweMSPsvQFN31hLcphIfbLd2bQEWpT7GiLjxDrQl4kjh6O7PvtyEG
         lYVnRqKIrE2r60lUIcLah8ko2QiQEbYceZQgCTHdF6A0ecG049fw26PO7j3DHTGFmAfn
         Mp5TcdtAK96iPkePrLhs3L6EIdhzL+ruw5DC7HnjtK6UsufI8Vdg6ZMgHEq8RwuZ0pSL
         OKJ6rlWPkiWDruSt1gF939nxakECdafxC8miBdGNbkAam3OYQ4nb7FtdR5FhLwfLZiiL
         AHbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=mLTAfVYvu6D9H2Ch2Co82pMdxfAUJOTBn9LCzwwrSCU=;
        b=FC5qI63YJSWnXvMpLnx9l8e8RbHSN5wplF2YzLLVpIfK2StwFRXo/gEKO1/Bxi6xGP
         0kj+aRxHJR1ETo56HYyswDGHfWqAdxcSv2iQghtgbyyOVIUkH5zvCHXF/Qw8KzscjRA8
         k15t7scHN7frqjxY7nkzoKcCAq7uS00RWG8WgNjI6EkhVnwhXqjfJQvxXhFPKqofFtt0
         Kz5/x7jNBAjtIyHFmCSgjn7nhj5R2iPLQZ8HcNqIS/bIo+GkUWmPIHlu8gTSQDL+y1Cm
         JYYRgHGqF7hTj8LQYCfNJkjCVg8TPnR7yVkie1MZUWPg7ALP6/WfEcsmIU+Ms40UNcL8
         SWmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id by3si52347ejc.0.2020.05.05.08.29.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 08:29:14 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MqrwN-1ijEdM1lWz-00mqDp; Tue, 05 May 2020 17:29:13 +0200
Received: by mail-qk1-f180.google.com with SMTP id i14so2643084qka.10;
        Tue, 05 May 2020 08:29:13 -0700 (PDT)
X-Received: by 2002:a37:aa82:: with SMTP id t124mr3905009qke.3.1588692552175;
 Tue, 05 May 2020 08:29:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200505142341.1096942-1-arnd@arndb.de> <CANpmjNMtGy6YK8zuqf0dmkykZMt=qkxkZrZNEKde1nbw84ZLkg@mail.gmail.com>
 <CACT4Y+Zpp=+JJedhMpunuUh832eJFu+af-r8631Ar0kE2nv72A@mail.gmail.com>
 <CAK8P3a23XzLhZQNuFbeQhaSNru1abPwXV_mXR_P6N6Dvxm6jFw@mail.gmail.com> <CANpmjNOE+GUG7O=WaJKQg6rdUOn+YMBhdS8enNWkD_8mdtaSBQ@mail.gmail.com>
In-Reply-To: <CANpmjNOE+GUG7O=WaJKQg6rdUOn+YMBhdS8enNWkD_8mdtaSBQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 5 May 2020 17:28:55 +0200
X-Gmail-Original-Message-ID: <CAK8P3a36w+QFqik_sHS3T5+_DZ7XP9Y5BYqT72pnjC67T9Sn3Q@mail.gmail.com>
Message-ID: <CAK8P3a36w+QFqik_sHS3T5+_DZ7XP9Y5BYqT72pnjC67T9Sn3Q@mail.gmail.com>
Subject: Re: [PATCH] ubsan, kcsan: don't combine sanitizer with kcov
To: Marco Elver <elver@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Kees Cook <keescook@chromium.org>, Andrey Konovalov <andreyknvl@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@kernel.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Thomas Gleixner <tglx@linutronix.de>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:yXPjj7RSTHy8nvPh0sjlznjQGUgILFaAll8TjnoW91chldM8MJQ
 RMhhLijyMrp8sdGgF+1PyI0+sdkzQ0LD4fBBwDy+JrBQbirFD6Ki719H4loB5LEeYHuXXUV
 5GVl6b0dxqM5OyN/K0q+Rz4lOQXGspgT41wG7jEu1mQUqBae2+tkWdWJjh9cQXj/NfqnBBg
 zvTNm+6Tb+DCbDFAailsA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4tNF2IvDNKo=:MRazf2aTsNfc+hGbcGVL93
 4WNC7klZLZY7ZIWUeVLBnNA3LsjX9MocBRo8JxVEgAGsmFifn9j96TbKRrdK18+09O9DqBsPZ
 UIcPMazEbIsqE1YZvK1FptzPhmeeSu7tHEhUhywJjhGe38GBN9ylXUg5z3cA0nAiN4vDMXeeu
 kcaZQF7lhhThWvBcr5owmd/vXUWyeqcxuX3MAHFj4h/DKVAnuIbMe9xF/pl5JxehvSko7mcwI
 6zX68q1QMoon8+/tYXvcMzGDhBHmXVw40RchLJE8uqQhjmraGiMs747B6b1YxvtOqYwVuzyK9
 GLIH5rIY/522l4lmAoHeo0WoAIcfaH91kcdUPZ0LPrVUw+YqWJVbX/DkaAVwKee7lNIdecfVa
 5ChSVNnLmz8QegwTK/1EV7xbQVJzC2IYQA8p7/EU5MC5Rav4OnsF43+/rIIey3lz+1pjh+cx1
 pxpcQH2YlRh2wSQ5bwgzIiyot0iTZ7GFMBvjQXvYPtg+8WsZKkUodXeT4Mw4YPaPog8NCv4OF
 okl6lTmlk9LqT8/027qOFC1ORkIgawNRdGZ7oakGpMS9ylm57RT92X1lS1Z14PyXHeTh7iQ33
 b9otO9XfBovv2wY7xTdoMjG1sFkp3WkJGEM00CSC4Gac3OKQP8PMphbssY8JCdM+sTsy5R8pW
 VvPlWIpGLYrHos/WkhekE/h2YADB+6prLSufD4JRlGYItWWf+0kFPJm/wdQMbyv1BTMq7SSt5
 dhOgkTApVyzQ3QY06QGJUpPQSbpkcU6X2J3lJNW64xbUdiH9Mavx6oZjoE8eefZpJaSy5ceyl
 eWKj+E1E/nFGBC/PdpiebGEET+d/12U6OAaGf3UYFljFxquBpA=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, May 5, 2020 at 5:20 PM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:

> > --- a/lib/Kconfig.kcsan
> > +++ b/lib/Kconfig.kcsan
> > @@ -5,7 +5,7 @@ config HAVE_ARCH_KCSAN
> >
> >  menuconfig KCSAN
> >         bool "KCSAN: dynamic data race detector"
> > -       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !KCOV
> > +       depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !(KCOV
> > && CC_IS_CLANG)
>
> I wonder if we can just add this:  depends on !(KCOV &&
> !$(cc-option,-Werror -fsanitize=thread -fsanitize-coverage=trace-pc))
>
> Similarly for UBSAN.
>
> That way, once Clang supports this combination, we don't need another
> patch to fix it.

Good idea. It probably get a little more complicated because kcov uses
different flags depending on other options:

kcov-flags-$(CONFIG_CC_HAS_SANCOV_TRACE_PC)     += -fsanitize-coverage=trace-pc
kcov-flags-$(CONFIG_KCOV_ENABLE_COMPARISONS)    += -fsanitize-coverage=trace-cmp
kcov-flags-$(CONFIG_GCC_PLUGIN_SANCOV)          +=
-fplugin=$(objtree)/scripts/gcc-plugins/sancov_plugin.so

Do you have any preference on whether we should make KCSAN or KCOV
conditional in this case? It may be easier to move the compiletime check
into CONFIG_KCOV_ENABLE_COMPARISONS and
CONFIG_CC_HAS_SANCOV_TRACE_PC.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a36w%2BQFqik_sHS3T5%2B_DZ7XP9Y5BYqT72pnjC67T9Sn3Q%40mail.gmail.com.
