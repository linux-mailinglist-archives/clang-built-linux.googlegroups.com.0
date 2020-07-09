Return-Path: <clang-built-linux+bncBDFN76WSRIGBB3GNTX4AKGQE52RG2XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1518621A742
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 20:50:22 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id 7sf923863vsr.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 11:50:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594320621; cv=pass;
        d=google.com; s=arc-20160816;
        b=ABxwd4BfhTeCQRTU5dBhEaAu0sdMNJncAfg/toELCiuMwuiv0n31ZO0BLep/Y9LVNM
         WN8wPUK11xHXRyh+JW0+d6YxrSCKAEEVlJkK2wgGxAL9HjaVIzaJNpSK5f2h0wVUJJMa
         WT0iOlg1VKagZV34eBk6Ls6M9R+dZGETOkAirC9yP0ciYiQj6ryY73Hsq8AcxEFnBBdq
         IA/Iw4qzgjlGvfF4IjNEL0Gfan5UIM+tjByxRm7WkMQuvgOQuBS+xaDqzKQ7Hfruuk+S
         vQiBJu2jAD8mvXZVoUYUxvJ67JjbsnAAtJeiwuWawd0RpfbLhCIBefGDByOC/kp8MCMD
         BgAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=u42+EY1KWXJNYi3Qr9hw2MMleCVT91V1RpKW+O+SmI0=;
        b=ou2COOYMHA1VjUcL3si9/EKDtuH6XmaJYRgS+xRKa538kJxjgSO00gNh+ecr2BAQ1w
         Rfb4n9C3mW99bDOrRXMgPasIYNkGwrO3kjopHauT4sv1/KeRRm/G5fxySdJYdM2F101d
         IlhQ6v0ZfwMb15l2LrQlw4I4IhA7so75At0yqzIvDVElgl+c+O/US9mrvQb/oWP0jwZk
         4Jp+eeugOEA4Zvp4Dws1KGPDEU7tQfUSNQX1taObn9U7gGap68Y5r/xywbxPKe9l46x0
         iy6JgLt+fbgM1KbQ9g094a4SrMZlWMZZDGoiylTncwCRk0x11pMT6BIry2ZcNhfz3AXh
         zEtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kq9Z+J+v;
       spf=pass (google.com: domain of alex.gaynor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=alex.gaynor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u42+EY1KWXJNYi3Qr9hw2MMleCVT91V1RpKW+O+SmI0=;
        b=Su8gGVo3ykafvy67Xe5URUEL6cBm/6egvzIprtuda25DaLysW8akq+f2Hb8/SWjO8c
         UhOPiZ3jmqdeKSpHCKp61jsM/ABiAkmQ1Hzp3D4puHwjHTA56hy7/9xKvB2Q2O3HhX/Z
         3Sx8Va4TFJl1Btn96mVWUtXDjB7Lr8QiCdd0mNRNETDxL6U+zMU10eUoNOqf26ht7rqe
         xGwh7Q9Mibsz+t4JEDdmokLoThhxt31beLTvqraKsmqDfhwKBtzuZGKcT/5NHTStBCad
         L9g3l50//579GwTa4KfBG+GBrflnnQcXGZ7vU+d7OPy1uPoIZ0vIng9k4z9RyCisqQJb
         i8dA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u42+EY1KWXJNYi3Qr9hw2MMleCVT91V1RpKW+O+SmI0=;
        b=lOulplM4CbSEyUj4kZlqjKdg+Fu93uVRTSUvvtlZm6sSCZiGGm0uibZsrKUEbO0tdX
         Qbl6MoYrjjVxY/CHcKTZ0POK8Z8SfVTQoeoV3Gtf8+ebUxJjtZKEFEYR+XWOgufhDSUN
         q6fnfB2s4b0iVcSYke2htPYtCC9oIvZao1/+dNGIBJLvAP7yRgPMw4xlEJt0j4uilX9s
         8fzY3dJc5xC/lLJDRgCw5IM83BOsz2+NjWYfsG4+PASSj9IIFrmgrQJCKXEbs8Hr5+q1
         GjsrfvFIWpqWyneucIafIXN/xOFMIIagKoprARRngwNOXjtUwqZkY/4muM9TCCcYrpGE
         pkTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u42+EY1KWXJNYi3Qr9hw2MMleCVT91V1RpKW+O+SmI0=;
        b=q1HFesHwvbh+xDIjBfbu16aDw86lnsp48eKSwHo5irNWSNHBiyo4qLxreVJq4ZhtRL
         sYlK465e79rDmRt+eOfge/Z1UYvgY1oxZUZF3+S9lASfi9E9TrIFR5SpUIsLxdFj3VmO
         pmJjr+y8rRvq9FxmsuQAI6BIDUDzEK6FRcvE/KmwAxzPoaYh/N0KRDzUpEEmHZMw1v3S
         WpVO/h4hDZMGyob8qCQwYhQnORA6U9hpBpJkob2ui2/RWXasqtlAs0H8q8B0q3FxZRqt
         2XixEQiCDwKzYk9EJbSlKNdoHetfAluXJKPrpka6RKGnvicpMhbxd80hBdQRXJfaWXl9
         1HaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LJFmJPfAFlWZVJZto2sb3ZVy9ee2cWWgtncoR31tGMLsr9B4C
	rI3i/xZ+7KhWa39xG6d1yJY=
X-Google-Smtp-Source: ABdhPJyFmjdwsCCq157d0zZDbrumuAO/VDwEt6/b3AfQV53me22KYmqmr+e9IBabCZjhrcJyfqSgIA==
X-Received: by 2002:a9f:35e4:: with SMTP id u33mr17116150uad.115.1594320620837;
        Thu, 09 Jul 2020 11:50:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:211a:: with SMTP id d26ls500641ual.3.gmail; Thu, 09 Jul
 2020 11:50:20 -0700 (PDT)
X-Received: by 2002:a9f:37e3:: with SMTP id q90mr13107908uaq.137.1594320620447;
        Thu, 09 Jul 2020 11:50:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594320620; cv=none;
        d=google.com; s=arc-20160816;
        b=0dAd0fRKY61TDQJyC9qztM9CC8mhmITOS5SIy+Lfa5eNGxGC7vvWQkL/V5syrWZAxu
         R1Y8mwINFx/2uTovQjWI5BdkHm6xXwTlmbiE/tgrBuUcCzl8jfbG7UYyyap2Hu3AFjkd
         9RfmPE5RBKvcoSvIxaOdbX4xjfgQOT86UK6BxJ+MwPSwj1gjyxJrfTudaH8h7h30A2Gv
         WRmAo8Dbgz03aARfz9VZfmCoMVyZOI+uYaLtoTtCaW2La27CpNiWMKGNdmfrWOVC12Io
         6Bk6fupHcsp16owGDAdQs27zc1U1sGSK1/AChNPc2GL5mngH3okf40tH/HLkHNgtPa2h
         58sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fuaRgvq0SZvrcYflAainUIN68EZQJeLqADgLk2pTJms=;
        b=CgQakezLWUhBoBljlgpBuP3Fczyxj7KhTmpqnUvhjW1I9HwfoCJTy3ckjfaA9twr1o
         LpMlSghZU4x2hC0TGUtUMMQD8bD6UcNSh/mkrM+PWINkv9qZwYShAZZXo5kT7PhehsU1
         WEBzZkvX5NoM0MtO+wjwF0baWSsOTFnYXqpVVg0/xC0HwaELuYZ1Npo6lIZs3dq+XIJs
         l/+UxwcAFlXXUv1JnLLcuBGfXUzpOvrVj4tI0FEhNlYcx8d1EhlmQ4Dl5IGhSb4/KZUd
         6a5+1N3QyrWNFRIWHuwr97OSTzzn3eNZqBeyLJNO7lvmqQrPJUGT3ZYhsVbKFPHCQD2J
         tZmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Kq9Z+J+v;
       spf=pass (google.com: domain of alex.gaynor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=alex.gaynor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id o66si235439vkc.0.2020.07.09.11.50.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2020 11:50:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of alex.gaynor@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id t11so1380817pfq.11
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jul 2020 11:50:20 -0700 (PDT)
X-Received: by 2002:a63:4f05:: with SMTP id d5mr38587022pgb.298.1594320619331;
 Thu, 09 Jul 2020 11:50:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
In-Reply-To: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
From: Alex Gaynor <alex.gaynor@gmail.com>
Date: Thu, 9 Jul 2020 14:50:07 -0400
Message-ID: <CAFRnB2VF=3HejbNimCay6ZzKjkrVgiG=138ThVE-jEMaYhO-LQ@mail.gmail.com>
Subject: Re: Linux kernel in-tree Rust support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Geoffrey Thomas <geofft@ldpreload.com>, jbaublitz@redhat.com, 
	Masahiro Yamada <masahiroy@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Greg KH <gregkh@linuxfoundation.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Josh Triplett <josh@joshtriplett.org>, Steven Rostedt <rostedt@goodmis.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000002c707f05aa06b2fe"
X-Original-Sender: alex.gaynor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Kq9Z+J+v;       spf=pass
 (google.com: domain of alex.gaynor@gmail.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=alex.gaynor@gmail.com;       dmarc=pass
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

--0000000000002c707f05aa06b2fe
Content-Type: text/plain; charset="UTF-8"

Hey Nick,

I had not planned on attending Linux Plumbers Conf, but if there's
interest in talking about Rust kernel modules in tree, I would definitely
show up for that :-)

Cheers,
Alex

On Thu, Jul 9, 2020 at 2:42 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> Hello folks,
> I'm working on putting together an LLVM "Micro Conference" for the
> upcoming Linux Plumbers Conf
> (https://www.linuxplumbersconf.org/event/7/page/47-attend).  It's not
> solidified yet, but I would really like to run a session on support
> for Rust "in tree."  I suspect we could cover technical aspects of
> what that might look like (I have a prototype of that, was trivial to
> wire up KBuild support), but also a larger question of "should we do
> this?" or "how might we place limits on where this can be used?"
>
> Question to folks explicitly in To:, are you planning on attending
> plumbers?
>
> If so, would this be an interesting topic that you'd participate in?
> --
> Thanks,
> ~Nick Desaulniers
>


-- 
All that is necessary for evil to succeed is for good people to do nothing.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFRnB2VF%3D3HejbNimCay6ZzKjkrVgiG%3D138ThVE-jEMaYhO-LQ%40mail.gmail.com.

--0000000000002c707f05aa06b2fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Nick,<div><br></div><div>I had not planned on attendin=
g Linux Plumbers Conf, but if there&#39;s interest=C2=A0in talking about Ru=
st kernel modules in tree, I would definitely show up for that :-)</div><di=
v><br></div><div>Cheers,</div><div>Alex</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 9, 2020 at 2:42 PM=
 Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.com">ndesaulnie=
rs@google.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">Hello folks,<br>
I&#39;m working on putting together an LLVM &quot;Micro Conference&quot; fo=
r the<br>
upcoming Linux Plumbers Conf<br>
(<a href=3D"https://www.linuxplumbersconf.org/event/7/page/47-attend" rel=
=3D"noreferrer" target=3D"_blank">https://www.linuxplumbersconf.org/event/7=
/page/47-attend</a>).=C2=A0 It&#39;s not<br>
solidified yet, but I would really like to run a session on support<br>
for Rust &quot;in tree.&quot;=C2=A0 I suspect we could cover technical aspe=
cts of<br>
what that might look like (I have a prototype of that, was trivial to<br>
wire up KBuild support), but also a larger question of &quot;should we do<b=
r>
this?&quot; or &quot;how might we place limits on where this can be used?&q=
uot;<br>
<br>
Question to folks explicitly in To:, are you planning on attending plumbers=
?<br>
<br>
If so, would this be an interesting topic that you&#39;d participate in?<br=
>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">All that =
is necessary for evil to succeed is for good people to do nothing.<br></div=
></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAFRnB2VF%3D3HejbNimCay6ZzKjkrVgiG%3D138ThVE-j=
EMaYhO-LQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CAFRnB2VF%3D3HejbNimCay6ZzKjkrV=
giG%3D138ThVE-jEMaYhO-LQ%40mail.gmail.com</a>.<br />

--0000000000002c707f05aa06b2fe--
