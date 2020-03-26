Return-Path: <clang-built-linux+bncBDYJPJO25UGBB57C57ZQKGQE5YAU22Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEB31934D4
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:04:10 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id f206sf3335243qke.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 17:04:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585181049; cv=pass;
        d=google.com; s=arc-20160816;
        b=NPm0eSGQphUjwoiSPS/Wyb+ZMoeDHnKRudPNP8m7bdNOY+qu9H2lSVnPi0XRKjP4bz
         pYkrwfJ7vU7uAmW5gy/d3gIZCaUdtOxG+cS1JOIAOigIvYVjmSlW4cGpe5RHBoapsCgT
         MiYFA59TNNTVXKTD2sq52KEehvTeK3+bCrIFq4ZnqtYMalTt5PjAem3ttqXvgpph7iLg
         8xhyQ95x38s3TYHBwkD2LLJMqo/wcNk24lbqIwu1zmHk0ZkpY6BXKz2c1lQdX+OK3Fms
         kbfErybsiB1oUl0Zql1a2dcoan43wXG7Y18gax6429+U98sJJPG31IaFqkQ2ghWhOmKk
         m7yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bWOk4xeqhnO5wJm80jtGh2rZ/KbpA7MQTQVKUASjWx8=;
        b=Ae7Xa1H/keGg8iteuO4DBzwplKEguZWGgiWsmR0iyCXzQ9HUASk62WfnCl2JxcODeT
         lczZmiRlXCVeLjdzscvD8zeXbdbL1aq+FO87vEhMcQuuoldeX14Gl9PEJG1G7YTGk/kM
         lhQc/5e1X7R0np3cQqPUihts4Qj4QwUaudyNZWcVrDXErvuOJHRbkBCetxXqWX3D46Q5
         I55+bJZybUxWtspZ39DPwKcTfXUNfNb+wwd+K2786PeaFDm6rms625oEO1aKAl11sxjb
         o+Uiv7/uo3cFWBQ+wsP/uivhvOERTpkEY4AI83yOdCMfvFrMRbgLiQXFAkTx2EUwBxFS
         jwQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="YJEY4Nj/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bWOk4xeqhnO5wJm80jtGh2rZ/KbpA7MQTQVKUASjWx8=;
        b=VJomR0FfwewdA/59MMez/urs7kh2sPY+8f/y9vuVSDxOKiUhxnOZEFXYrgliYrQ3yL
         9rxZzD3Yox6ThSJaRtaHidBxFYb5yePl8SibYOy4vH5Nx+t3nIckyMvGQGHU30bVnrTL
         vce4cywrV8ssaj4jR9CWcdKeikr15Lo/2lEtr/1ZM2afKpqHcTVUKBtdB+YIDsaxp36z
         XM0lWFEFY2Hoiy+l9BKzGMdghtDkeJA4CrYXWzHvtusEIpvT0CJs0wKDpZzff/ZVa+/U
         JLr0S13zYoAseSWHsBv5m1h7RpCcV81TKZQkCEnX+sN+2+wAY0AxmnMTJtjS3FksqUhY
         hSlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bWOk4xeqhnO5wJm80jtGh2rZ/KbpA7MQTQVKUASjWx8=;
        b=cF0rHs02kClB/Hr82eIWeb/fwQwqmpllfVcFjVGGyJSZW4WdFkDVX+5Fsg1OpfTY6N
         t1g3u57rmGv5gcKe1eNLDq9L1K/q6nKCK/l5+6wxVRhlnvz5Kmbjs023B+4cQiPiAGnc
         uRsJaOhcfnxvIcPjmbXyNEcUd77hvB7ZnTwnT95hdGHBj0z5ZCI6nSLTb0i93x2CYNG/
         MlLtFWsg8d72s+pHxvTVtMezs2uRfOE5+Mv76GCV45W8SrcQrb/37jZAaDZlpYQU5SBV
         AEl25P4nf/w9HtuF3RXGwLX/po93QQs5jXOy+P9tJzD4ogKB9cwZBd5Hrgc3FZ66SkHc
         uShg==
X-Gm-Message-State: ANhLgQ18ulobRnuXjzdUV9Vl/beodd8WO5NacYw1Hv2HryO93KEmdW12
	OeWpL6j4lj308NmYJxgNAw8=
X-Google-Smtp-Source: ADFU+vsbNc4gbUn6dchHZ4DRlbYIhafW7nAJDV8ZOcdghv6XZ0JBKQQPWuUo+UjKAWJ5NxVa05wjiQ==
X-Received: by 2002:a05:620a:111a:: with SMTP id o26mr5652740qkk.328.1585181047685;
        Wed, 25 Mar 2020 17:04:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1971:: with SMTP id g46ls1481979qtk.7.gmail; Wed, 25 Mar
 2020 17:04:07 -0700 (PDT)
X-Received: by 2002:ac8:4557:: with SMTP id z23mr5866325qtn.350.1585181047337;
        Wed, 25 Mar 2020 17:04:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585181047; cv=none;
        d=google.com; s=arc-20160816;
        b=BUjHbqyGRdMM/Gp4tw6aVjxt81/uw9gzwCxXlLcqVTH0qjW76JY+8j/4MTGdTjpk1H
         HJ1wQEGjOcXoGGkN7N8SegzldHO4rOKQGJc04mQor10/jFfwjn2UfCAvgwRsuo/23NyU
         kK7pSBfqVL+DM8m4B64h9ZDNlh9FcqrKq55lTcwCc+tHAQ1jXcAfvVwSQj5smv0pJ90Q
         rGHBjeYhF811UJ+HliA1y7l3wJj603Fk38//xsbiDpr8pHPmmV0DydGTYSoY2IB4ZqyL
         x7lVol9Pm6AL+6f8PqIo+Oh/Bnt4fgb6VvFvCwJn01MbL796kNPypkoGkqsbg0+EyWsV
         rvRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9ofg8uKSIrI/UopczAhYrKg7YkVEGTC8X9resn/U2U8=;
        b=BEWcN5OcnmIzivBwiWsczqXVuuUggoJpnFbFFmtLPcdGr/deALSoCNAL7UJQjvlbkd
         lDJA+Y1nuUWxjuZ3LqwND1PCB1qv8Z9S0q4Jf0z06OpgWh1oP66aJlvX3Z7sKjHNUz9K
         aUgpSTvO8Bda8q+8R8PZtumRDsfO1EYzchweM9fGVqKVO4I3KYe/rtgFxRqUBQ1Avmsu
         TVby7vyzstvb6Yio9C9HyrkNhvU83Eg6h9dTqhHda+qGVOHkd5DrlS+vB2XxaR1gFM/V
         7fiXHwuE1UUq3sfxjlVLL++S107Ks493EyBHWj0Z8adOaktUX57KTClNZNdtUXhzCw5i
         fpIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="YJEY4Nj/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com. [2607:f8b0:4864:20::42a])
        by gmr-mx.google.com with ESMTPS id r14si72851qtc.5.2020.03.25.17.04.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 17:04:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a as permitted sender) client-ip=2607:f8b0:4864:20::42a;
Received: by mail-pf1-x42a.google.com with SMTP id f206so1866246pfa.10
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 17:04:07 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr5739977pgb.263.1585181046070;
 Wed, 25 Mar 2020 17:04:06 -0700 (PDT)
MIME-Version: 1.0
References: <528FDEDD-391E-486A-8095-7385B33FC736@converseincode.com> <20200325162113.1fecdc8b@gandalf.local.home>
In-Reply-To: <20200325162113.1fecdc8b@gandalf.local.home>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Mar 2020 17:03:54 -0700
Message-ID: <CAKwvOd=-mFdTuNhcxf-JJrN++PehpJtWDjhL57a0d4Jmu0EhLQ@mail.gmail.com>
Subject: Re: Plumbers
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Behan Webster <behanw@converseincode.com>, Elena Zannoni <ezannoni@gmail.com>, 
	Kate Stewart <kstewart@linuxfoundation.org>, Bill Wendling <morbo@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="YJEY4Nj/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42a
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

Thanks for the heads up,
I've submitted a proposal for an LLVM MC:
https://www.linuxplumbersconf.org/event/7/abstracts/565/

```
Significant progress was made in 2019 and 2020 Clang gained the
ability to compile multiple different architectures supported by the
kernel. Many LLVM utilities also now work for assembling and linking
the kernel as well. Multiple continuous integration services covering
the kernel are also building with Clang.

This micro-conference hopes to cover the current state, benchmarks,
challenges faced, as well as presenting areas of future work.
```

Let's see if it's accepted.
https://www.linuxplumbersconf.org/blog/2020/ says
`The first round of accepted microconferences will be announced on
April 26, 2020.`

On Wed, Mar 25, 2020 at 1:21 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
>
> It's finally open!
>
>   https://www.linuxplumbersconf.org/blog/2020/
>
> -- Steve
>
>
> On Sun, 9 Feb 2020 09:23:52 +0100
> Behan Webster <behanw@converseincode.com> wrote:
>
> > I=E2=80=99m at the ClangBuiltLinux meetup this past week and there is d=
efinitely a lot of interest in putting together an LLVM track for Halifax t=
his year.
> >
> > Let me introduce both Nick and Bill from google who are 2 of the princi=
pal people in the ClangBuiltLinux project.
> >
> > There are so many interesting things to talk about with the right peopl=
e at plumbers, and so we=E2=80=99re trying to let you know of our intention=
s to propose an LLVM track early this year. :)
> >
> > We=E2=80=99re looking forward to the call for tracks announcement.
> >
> > Thanks,
> >
> > Behan
> >
> > Sent from my Mobile Computer which is also a phone



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3D-mFdTuNhcxf-JJrN%2B%2BPehpJtWDjhL57a0d4Jmu0EhLQ=
%40mail.gmail.com.
