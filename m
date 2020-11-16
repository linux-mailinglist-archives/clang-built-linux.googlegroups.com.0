Return-Path: <clang-built-linux+bncBDPPFIEASMFBBVGBZD6QKGQESQU7M3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD6E2B3D3C
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 07:48:53 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id s16sf4854716ljm.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 22:48:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605509333; cv=pass;
        d=google.com; s=arc-20160816;
        b=06wlkxhCqY/UUvZTJIIily+BkkzGwhgjO1rQIWthsFCC2l2sJW/tpl7aK5bLa38x70
         aIYcjZj6cAf4ESTUoMafO2C3OkJTl552ydawjgEyaAZnhiEgIMUXX0s2iTcURGMKiG7+
         QGvwGYK6gw1gflNPpQg5qPtXoci8myY1PEY9ictzzBHasBjXklt29AFtWDaqibem8YCf
         M+42ykNoywGM7g98Iys+ezRnbcREYao/xSoA9KidGLQb99+Z+ucRAnG06dZ0TpEsdNYd
         /02pCj58M5iaDUj0Yh/G8ZOlL2TTIy1fn0ithoKAjAwE72/U6MOH79RhSvm9Z6xoEjjR
         53IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LSLxvdBcd7bMs2pXKnjlG7TJlTNIPT3HU7EQ4YH0W1g=;
        b=MVYKV0XhSZelXWS+MbEx3Apss8izH1Vqs0IKydqaZtTbe5xdDzjU2vYe/Mw++yg4/3
         ycKGAeSn+uxpGFzKEwJpb3NnfSNSYyY64EFoCEmw/F9VxJ9KcK3wv7EtX1mB25U4VONB
         uAZSA35a/GEAiqGhBt5qPyQpslTnONXDWH5Mng6d50RKEpk2mnKNF+6hr1aj7vJgAvgP
         xhL/ub2uR3bow0cFTbT06H8CQc1fXHJk6OBtTJdyQX2oFf80fZw9LEVsXPVXfrBNh/gH
         HUOCiad9f4e7xldZX04GDFb3AJV3itEXOSAwDTVWhbCDbnO5an7M6XrSNMn7eMmB0xMP
         FjoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uSUJVyjf;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LSLxvdBcd7bMs2pXKnjlG7TJlTNIPT3HU7EQ4YH0W1g=;
        b=mXn0LdtaRZQApaIAgXWEowQA0C11+8Sq45E2iy8elK8kXSuicDT/u8BhXZyvXDyKgQ
         +C7YlXhgJU3wDrGqDbGktzCasrvkTEb/9qq63fidTmlH9LPmwjBL1XRdlc7no3qUSlzT
         tAloA/CqCuhBFxxpoppg1vhL+Dt6NzaUo+m8y82vaGMzzmGgf9EJkcQnIJl8eyGEMgv/
         SANjUPFRUxBD0WcVOEOMNN5kmISsmMxRnFAQwnl0cjFJU0R00dfucfcaufxOi4wkSWbP
         ZGaH019z1BYGaK/K8TcisZchgQ0RX32iD0m6HNtInSNtLtLiL0Aj69c7Ynzomcsk3NtG
         e9Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LSLxvdBcd7bMs2pXKnjlG7TJlTNIPT3HU7EQ4YH0W1g=;
        b=dxE9IT+oyzM5pDjVAUhpp91XDJG2UOVZ2inf/otaSlh7WZtItECzMT5s/qp2hHCIGw
         Ekqo3UNdBZ+3ROyfTh6xEam8nAovmkKQ6ADBiUwzVuRPySg5i2HOKE1yKEILG308CLRO
         ok6FpU0saPnJjf3akVHE+u0pk+lynDq0/mI6iD2shoVhraUHNHET82kl9gSDHMCREyiJ
         eYL4GCUZnKzBNEc3PS+8Bh0u94YEBU13xdvp028p9HMzB/cLeJsNDXGaGSifIoP7Zbay
         0x0Fh2HiaiweIDHn0qIhsIhC3MoBx75JRgofVCqWMycrC5SunS/sthlE0CAKlmzNA+Lq
         fwmA==
X-Gm-Message-State: AOAM533GYJu8j/VwxXSa8yBlvQOCGOct6nRkmp964jJDLEaV3ICr8hoP
	mN73k5+VUgv/s/TJHW7dX+Y=
X-Google-Smtp-Source: ABdhPJyM4UXsGEmeTMHBLFHoqZKHit8Vdh7JGH1W+hmwtpOakmKAR/AKFglQPeuccDxj3d6LQdWK0g==
X-Received: by 2002:a19:4a87:: with SMTP id x129mr5958588lfa.104.1605509332958;
        Sun, 15 Nov 2020 22:48:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ccc2:: with SMTP id c185ls7788808lfg.3.gmail; Sun, 15
 Nov 2020 22:48:52 -0800 (PST)
X-Received: by 2002:a19:702:: with SMTP id 2mr4829513lfh.347.1605509331903;
        Sun, 15 Nov 2020 22:48:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605509331; cv=none;
        d=google.com; s=arc-20160816;
        b=FrIdxuLXCh45hlo8tbXQV5YgrUafrTGY7ED+G17nXRmtHoZJd6C5K8AZG5624kh4rQ
         brsw/npsPIq8QdhNl6GDNBL1hOfAG/K/PH+voqAH2Lt9dTVL0rCwjwnb2NoH3Re1j+ko
         1Z1gnQyKgm1TywjfzNPCzEpsup0n1jr1U/EyBBaK4qCkLlycV3weEqRz3yif7XGMQOyW
         1nFjFJx6YGadDgf6VV8goWclTTqcWKGjC7qs0on4P9hhz6ri5mjhXcM2eQ0IfgOojdKH
         mTjYKH92rmUEAPiDIXZVDf9PWYoX9qDOFwjAYJbgOel7K2GMMwbZTH9j25kUm0rt9twn
         j13g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QSYJAo24+wz5c90ZnTpdecmMgX5S7aWZmhQaScRsUUI=;
        b=T1SEBXjJ0Lg+KN+8GDxZqyaEnwuJn6DBj2WHaVgUA/emKlBQgZxQLEfgUHawpQMzBJ
         vm+ri4bgj+G9kl7Bw9WetHbfsd7fTdJBJGJLCreOHHSZMbQDK/jb36deCNIsQ8ARaG/O
         6SbeUJ4d1ztM4jlzVKhCDG1pcmbsuagB1cT3Qu5wghMCuBGi+iQlnK76Dz5KH4ElcWnr
         ef0pJlRt1TLmo9kp6hjXs+hQBlnOmzEIDySb2HFx7Uzk1WuOyHgkHsc06BtzWIr8r+Sy
         T8O8OJ1pkdEKjfRnw5Yx9xqsxNR0lI2XHWrDkG8biMptB5b0IbBh57M+IE+/vNflG7ND
         IxmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uSUJVyjf;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 26si580983lfr.13.2020.11.15.22.48.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 22:48:51 -0800 (PST)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id p22so22661411wmg.3
        for <clang-built-linux@googlegroups.com>; Sun, 15 Nov 2020 22:48:51 -0800 (PST)
X-Received: by 2002:a1c:c203:: with SMTP id s3mr14087000wmf.77.1605509331237;
 Sun, 15 Nov 2020 22:48:51 -0800 (PST)
MIME-Version: 1.0
References: <20201114000803.909530-1-irogers@google.com> <CANiq72m=OK2bF2Nc-ht=ibNa2m6RcBCjFuhrv9kyoxE6yaMqVA@mail.gmail.com>
 <CAP-5=fV0xe-8GEbnrh8Y4C8nWK2E2mGo1iiNpRCs+590VwJVEA@mail.gmail.com> <CANiq72kV-hcmf17_rzywuKXe5U0kwCOb52SihwZHUK0z0AsECA@mail.gmail.com>
In-Reply-To: <CANiq72kV-hcmf17_rzywuKXe5U0kwCOb52SihwZHUK0z0AsECA@mail.gmail.com>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 15 Nov 2020 22:48:38 -0800
Message-ID: <CAP-5=fU1RM-O4=OGGLkn2+jF4B=m+yhwqo3hE2EHSWRxQnGBOg@mail.gmail.com>
Subject: Re: [PATCH] perf test: Fix dwarf unwind for optimized builds.
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Stephane Eranian <eranian@google.com>
Content-Type: multipart/alternative; boundary="0000000000005fc5db05b433c583"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uSUJVyjf;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::341
 as permitted sender) smtp.mailfrom=irogers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

--0000000000005fc5db05b433c583
Content-Type: text/plain; charset="UTF-8"

On Sun, Nov 15, 2020 at 4:04 AM Miguel Ojeda <
miguel.ojeda.sandonis@gmail.com> wrote:

> On Sat, Nov 14, 2020 at 9:14 PM Ian Rogers <irogers@google.com> wrote:
> >
> > Unfortunately no GCC version actually has this fixed.
>
> Then we can say GCC <= 11 does not support it yet or something like that.
>

GCC [0-9]+ :-) Perhaps just a reference to the GCC bug rather than a date.

> This seems overly complex and unnecessary.
>
> How is 1 condition more complex than 3 different ones?
>

In linux/compiler_attributes.h add:
#define __GCC4_has_attribute_disable_tail_calls 0
to the #ifndef __has_attribute block. We can't do this locally here as
after that #include __has_attribute will be defined.

The code:
#ifdef __has_attribute
#if __has_attribute(disable_tail_calls)
#define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))
#define NO_TAIL_CALL_BARRIER
#endif
#endif
#ifndef NO_TAIL_CALL_ATTRIBUTE
#define NO_TAIL_CALL_ATTRIBUTE
#define NO_TAIL_CALL_BARRIER __asm__ __volatile__("" : : : "memory");
#endif

becomes:
#if __has_attribute(disable_tail_calls)
#define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))
#define NO_TAIL_CALL_BARRIER
#else
#define NO_TAIL_CALL_ATTRIBUTE
#define NO_TAIL_CALL_BARRIER __asm__ __volatile__("" : : : "memory");
#endif

In terms of lines of code, there's not much difference. Arguably there is a
bit more cognitive load from the #include and that disable_tail_call needs
the funny handling that's here but won't obviously be hinted at by placing
it in a shared header. I'm a little concerned that someone will come across
this in shared code and then go and break this test again with well
intentioned cleanup.

Thanks,
Ian

Cheers,
> Miguel
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfU1RM-O4%3DOGGLkn2%2BjF4B%3Dm%2Byhwqo3hE2EHSWRxQnGBOg%40mail.gmail.com.

--0000000000005fc5db05b433c583
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Sun, Nov 15, 2020 at 4:04 AM Miguel Oj=
eda &lt;<a href=3D"mailto:miguel.ojeda.sandonis@gmail.com">miguel.ojeda.san=
donis@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">On Sat, Nov 14, 2020 at 9:14 PM I=
an Rogers &lt;<a href=3D"mailto:irogers@google.com" target=3D"_blank">iroge=
rs@google.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Unfortunately no GCC version actually has this fixed.<br>
<br>
Then we can say GCC &lt;=3D 11 does not support it yet or something like th=
at.<br></blockquote><div>=C2=A0</div><div>GCC [0-9]+ :-) Perhaps just a ref=
erence to the GCC bug rather than a date.</div><div><br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">
&gt; This seems overly complex and unnecessary.<br>
<br>
How is 1 condition more complex than 3 different ones?<br></blockquote><div=
><br></div><div>In linux/compiler_attributes.h add:</div><div>#define=C2=A0=
__GCC4_has_attribute_disable_tail_calls 0<br></div><div>to the #ifndef __ha=
s_attribute block. We can&#39;t do this locally here as after that #include=
 __has_attribute will be defined.</div><div><br></div><div>The code:</div><=
div>#ifdef __has_attribute<br>#if __has_attribute(disable_tail_calls)<br>#d=
efine NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))<br>#define=
 NO_TAIL_CALL_BARRIER<br>#endif<br>#endif<br>#ifndef NO_TAIL_CALL_ATTRIBUTE=
<br>#define NO_TAIL_CALL_ATTRIBUTE<br>#define NO_TAIL_CALL_BARRIER __asm__ =
__volatile__(&quot;&quot; : : : &quot;memory&quot;);<br>#endif<br></div><di=
v><br></div><div>becomes:</div><div><div>#if __has_attribute(disable_tail_c=
alls)<br>#define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))=
<br>#define NO_TAIL_CALL_BARRIER<br>#else</div><div>#define NO_TAIL_CALL_AT=
TRIBUTE<br>#define NO_TAIL_CALL_BARRIER __asm__ __volatile__(&quot;&quot; :=
 : : &quot;memory&quot;);<br>#endif<br></div><div><br></div><div>In terms o=
f lines of code, there&#39;s not much difference. Arguably there is a bit m=
ore cognitive load from the #include and that disable_tail_call needs the f=
unny handling that&#39;s here but won&#39;t obviously be hinted at by placi=
ng it in a shared header. I&#39;m a little concerned that someone will come=
 across this in shared code and then go and break this test again with well=
 intentioned cleanup.</div><div><br></div><div>Thanks,</div><div>Ian</div><=
div></div></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
Cheers,<br>
Miguel<br>
</blockquote></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAP-5%3DfU1RM-O4%3DOGGLkn2%2BjF4B%3Dm%2Byhwqo3=
hE2EHSWRxQnGBOg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">ht=
tps://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfU1RM-O4%3DOGGLkn=
2%2BjF4B%3Dm%2Byhwqo3hE2EHSWRxQnGBOg%40mail.gmail.com</a>.<br />

--0000000000005fc5db05b433c583--
