Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSHARX2AKGQET3ZXOKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id D078F199B95
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 18:31:07 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id r11sf12064642ioc.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Mar 2020 09:31:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585672266; cv=pass;
        d=google.com; s=arc-20160816;
        b=sn+Cu17MRV3oG9TzD+QtRYnguN9Oo1TFcq5MshNmiTynVJDzwLnHBYF0jfRUpGmQcj
         1f4EOwCVzE3OEeFIMh982GKC9wfrlPrKtKawulSI55gk8mAqicAyhJFL7sbH0MNDziyL
         v+xoW0CfbOgLMNcqp2bzeTDngfHRJhfC+eaKOdV6kGtI+sOCXApEv5fA7qbpl03/8FZ3
         kPHhgIxTqwlOZbWCnXeMvBUJ5tSI759Iml9q/ke8cMXmH4ljVq/lntD4yVpORZLOjtRm
         SSf+M3fnMcoBGNZ6fl5vym58ZhQw4ZcrbEE0N6lgI4ovJG+homWiQwj3Zkqls3itzDDZ
         IfCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vHwfrtgby+j+bf7nXhFww3tojUTtpNvgLSdg4AXUSM4=;
        b=Hw/Xckyf5o4S1L/LcWiVl72FTm+leR8e1r0BMj1XBlzsdhss8yYbZj1YItRphJH+Fd
         RfazlzECRGFBt0WleUQpeLvVzTvxyYPNfQLw9/u5SdVCyNRBfcIS/WFqBCMygr8vMRa2
         JOZY5phJxPUeX6vHtW6J6EryrIFz30lyGvNjATjCTivFocA5L5YYurzWSrnKW02UpYwI
         Oyj3n+qelBl4Zq43oVwTS4I8iKf2L4ucHrWDsNp/3kTA+MBi+1NdeAaCeK5Ge0v0ztrO
         QNBRWxhuKPfpFyQ8yzdxi0LCHukOphAxn7uswa2pPgXXa31OV5eXpug5+LJlcPKwH9EA
         0Jww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jB0Rz6hh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vHwfrtgby+j+bf7nXhFww3tojUTtpNvgLSdg4AXUSM4=;
        b=C8bRqN0INilJ3nYjE5NtetrcuwiQFHOtdFIJQXz3BQyU6JZLGnnNYrjyMaE9R7FzMX
         Phv4ewr0mO27JjlwV5DGh8XuFDX7JxQdBl1WE1LYb9AGe0cYCefj0qM1As6gc/rgrang
         KRIe8vTVLDAdONxrpcwjtNlAUieVEhvrXA+yP8DDHnremBhmnHMMo5B9aMKCqGRoR6s5
         oC5q627U9YL+el2yExO9ZWqkS7V4Kg4oiqNpvIi9BhCXdi3Z/FSqrhB03FyaD1jE1sAQ
         xDuo32evyjoEQWKmBHn0DMB7i3CySt400gu1lGS9dMCXDHFBMnJrbfQ0N5WPfgmxW/gI
         clrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vHwfrtgby+j+bf7nXhFww3tojUTtpNvgLSdg4AXUSM4=;
        b=mAqv8FxN3l12o/eHv59Z3ZE3rw/t7dnd0kvwnEsLWaEQzEidxF3VksPHXrmw8ecAyJ
         mJjDMJ3NAcTGd0N78sozt1D5EnYi0DGDLDcBxjnGwRYXgbr/P/gaYKmLh8kwtFJNBQZy
         Ugli/FaeoPuBImfcE9NPFM3uqAJrR+slmIz91UUKDEjDRg45QEkTAZunwD2amRwYvza9
         r8u+HwGUofO6ZFsGU2Ci8A2rjcHGf+wkYzia3OMbqwLrjOSXWj8mRuyTCHhdo9+RBV94
         LX1zeI7HWFJ5ZBa2QhgtarCvckZOkVZFWbh7hmUQ9LKiSpJRTFrzBPl18raJJmWhgzK8
         0oew==
X-Gm-Message-State: ANhLgQ3LMH2k+pCWw5qpUpWzf+Qqoqc042ZsZk+9mzjpPuU1aAE0w8T6
	HK0Pnyu0fEMXwYZxoquzaIs=
X-Google-Smtp-Source: ADFU+vsRliY2sqdV5ar9yezocq9riBcDGjYvNdkozRfiAxZHSgJ1pjuJm/3UftjnyX2dBzu1ambOmg==
X-Received: by 2002:a02:954c:: with SMTP id y70mr4987358jah.16.1585672264961;
        Tue, 31 Mar 2020 09:31:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5ec4:: with SMTP id f65ls1938359ilg.6.gmail; Tue, 31 Mar
 2020 09:31:04 -0700 (PDT)
X-Received: by 2002:a92:4896:: with SMTP id j22mr16437146ilg.158.1585672264541;
        Tue, 31 Mar 2020 09:31:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585672264; cv=none;
        d=google.com; s=arc-20160816;
        b=XaIEhf/Zq6UQGpauLY1rB4Te6G8lwk0Z6heFsS0V5WG46xqn+xvnJBTSIEKCbJECG7
         UqXZPqHKHajiMcYqWnSHoFZmEbebDP8BXEBopKr1xAi+7EOeDj8ff5F7glQvod6LOCw1
         yThRyBMrUdZ2k6LuDtYZLlPWg5DPjS9v7PKCW0WNAb8ciTc9hK3rlTIOQSzDnrG7Khzb
         P8BNmTqnFvvrMAIgnoMZRqvMYmO7u/29L9YbDMWhTUtZS/1toD94tDPIJZhJ6MuJ7mHR
         EiE2sqveqGgKflCs4sntGCn1O2nHmehU+TXpc0OsodPDkAeYeOjASHpJ4azuYPT1Gkxm
         NC4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=LVVc0xKc93eEODpflumcV+58ysZrIBiy8kunB9hpY74=;
        b=mZbPIzSgmR1mnG9rErIO1Jd3zddhxWL/Yv6y28xhQHiP1EncDoayOBNeIU0nuu75RU
         vlseiV/Vb2uY+/I+Vt47LhbwgLB4SzOnQZb5ofUsyoOAK/bd8yds76j+GEigcR+N9PSX
         u5QEzLTL5njJJwyb1MHCWjhyLLlX3UsAHLDNM3iQzbU9hbfwLvJXw7dm8uUYJsWPJlsM
         OZWYjRSJZ+pskF49HfEJNd7+JoP+b3l3a1IipUayWMGqILUzZ2ZO+qBxXZLvRhSMPu+Z
         I+trIaNTy1ni1QaM9DWWgZkhSFAzt9USglng6axZ1G5z0EeCMgpoFuIMbjnhfYg1SJCq
         xPzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jB0Rz6hh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id t125si1403889iof.4.2020.03.31.09.31.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 09:31:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Received: by mail-pl1-x635.google.com with SMTP id k18so3506078pll.6
        for <clang-built-linux@googlegroups.com>; Tue, 31 Mar 2020 09:31:04 -0700 (PDT)
X-Received: by 2002:a17:90b:8d2:: with SMTP id ds18mr4559891pjb.186.1585672263593;
 Tue, 31 Mar 2020 09:31:03 -0700 (PDT)
MIME-Version: 1.0
References: <5e7cb175.1c69fb81.d10e.6d4a@mx.google.com> <CAKwvOdkTh+uHOK0bd5UGGfYiFQU+MkeT71Yy7Ggof9FkQHCG-g@mail.gmail.com>
 <64828a9f-9983-d731-d52e-3d753fc035f6@collabora.com> <CAKwvOdmRN6H6LMSc2o=XYVzrzSqDCW3JqLMxzWDiwa+XogyggA@mail.gmail.com>
 <8dc8d1f3-cccf-d908-2ed1-c24b1387e362@collabora.com>
In-Reply-To: <8dc8d1f3-cccf-d908-2ed1-c24b1387e362@collabora.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 31 Mar 2020 09:30:52 -0700
Message-ID: <CAKwvOd=PQabz1q3SJsa6VQ7t+KcfN9PgO1GjyMUHn2+YXD-g9w@mail.gmail.com>
Subject: Re: next/master build: 227 builds: 17 failed, 210 passed, 41 errors,
 497 warnings (next-20200326)
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: Kevin Hilman <khilman@baylibre.com>, kernelci@groups.io, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jB0Rz6hh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::635
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

On Tue, Mar 31, 2020 at 4:59 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> Hi Nick,
>
> On 27/03/2020 17:56, Nick Desaulniers wrote:
> > 3. I have to click through to see warnings, not all are listed in the
> > preview (example: allmodconfig =E2=80=90 arm =E2=80=90 clang-9 on
> > https://kernelci.org/build/next/branch/master/kernel/next-20200326/ is
> > red but says 0 warnings 0 errors. But if you click through in the logs
> > you see a failure in modpost).

^ thinking more about this case, not all errors are necessarily from
the compiler.  Other host utilities (in this case modpost, but on x86
and maybe soon arm64 objtool) can fail/warn/error as well.  Maybe the
UI is predicated on compiler warnings/errors only, and not the other
host utilities?  I can point to some objtool warnings with Clang; it
would be good to highlight those as they are typically bugs (sometimes
in the compiler).

> > 4. clicking back resets the filter, so you have to open multiple tabs
> > to the reports.
>
> Thanks for taking a look and providing this detailed feedback as
> to why the web frontend doesn't help with your workflow.  It's
> very useful as it's the only way we can improve it, for you and
> others in general.
>
> > Compare the above, to ctrl+f,clang,ctrl+g in a daily email.  It's
> > super painful.  It also makes the current email reports useless to us.
> >
> > I'm aware of every bug in
> > https://github.com/ClangBuiltLinux/linux/issues that's open and every
> > bug we've ever had there.  I need to be able to quickly spot if
> > there's something *new* on the Clang side and file a bug to follow up
> > on it when I have time, then quickly move on to the next fire.  I was
> > also able to quickly grep and see if the issue was observed with GCC
> > as well, or just Clang.
> >
> > I strongly agree with Broonie emailing that a successful build
> > occurred is noise; we disable this in our travisci:
> > https://github.com/ClangBuiltLinux/continuous-integration/blob/a0e363f2=
68dab899a6b259b24639d02b73401526/.travis.yml#L211
>
> We need to consider the whole notification / visualisation system
> we have to better design emails and web dashboards, with enough
> flexibility to take into account the main use-cases.  It's good
> to know that in your case, listing passing builds isn't useful.

If you have a dashboard that shows builds as a field of red/green, it
doesn't hurt. (https://ci.android.com/ for example).  For the email
reports, it might be possible to filter those out though. You
generally don't call the firemen when there's no fire.

>
> > But I'm afraid this change throws the baby out with the bath water,
> > and it really really hinders my ability to triage bugs and slows me
> > down.  Please consider reverting.
>
> Yep, it has now been reverted as agreed with others on IRC.  This
> is already effective in production so the next reports should
> have all the details as they did before.  Sorry for the
> inconvenience.

I appreciate it.

>
> Moving forward, we should make sure you have a chance to look at
> any changes to the email format before deploying something in
> production.

Yes, please @ me on the github change and I'd be happy to give a quick look=
.

--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3DPQabz1q3SJsa6VQ7t%2BKcfN9PgO1GjyMUHn2%2BYXD-g9w=
%40mail.gmail.com.
