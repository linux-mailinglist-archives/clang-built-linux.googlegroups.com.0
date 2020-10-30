Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBXWU6H6AKGQEIXGJPLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CCF2A0EB1
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 20:32:47 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id g14sf3240621oov.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 12:32:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604086366; cv=pass;
        d=google.com; s=arc-20160816;
        b=LN9JcQ+mQgbjmjxMYqUKgAhbDx997m8qKcNqdItunJMhaw/uxKp8Zhb3RAVNmcqyZE
         M/BRucdMcKeNuyAHDgmOh+wj6+18e37gfd00Fq9Kqc2FaLkt9hb1QegzfoFTQOAvn68Y
         UR7lYDvUKf3/AltbSiv3QAdkNuvl991t44NiUgFzHh4P7slnF6EgV0Dxf76mTp3Cdptx
         8fAzGzf3wBB+sqdVYkKj5LeisAtbXviNxjQnafU6cYf58HGZ4xctFhSacXxHPk6AnNLB
         I7v2Ob9o1R2n1NbJHMa9Uy9poVfCMQ7sx29beqkJObVrJkyDpgfcJA3AZ8jGsepmM+ax
         QtTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/g9Ckd8naETve7uLXmA5cKyVzR/AjKtGg6P8tKAqLhA=;
        b=AvAg/9tWvJyZzJMZdsm5rANQPlXs82VN6vwLyGXMeytB2kpcUbbD12ynoLTR3Bpdz+
         TxAb1XNfrerouZ3qdHBF1moOh7X6Q7GCfxRz6bJ+9kCnCoY38FTG/yUuJnziFvHcxqQF
         71TdPSEVZeyC+L7PnrGra1mgzcEV4+A2JkBmzOKKwQ2iU3AYEt3Uff8hIwKSwT37q+J4
         S01gQ8YTcaHTrH+1LlIWTamxiET/tvLU+z//xqXH9rcPKbtOY9wxMxNEmwVkz1stIyP8
         0wiI98X5v+aluEQtmhUGJUSdQ72yKy+JifJ3oPoTy3rqg2ECbu/sL7vPVOuPyq8HVyy1
         fVAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NuPok3Jr;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/g9Ckd8naETve7uLXmA5cKyVzR/AjKtGg6P8tKAqLhA=;
        b=Iin2bdI5RSOgVOF4ohDi/8CnHsZ/5w0xl6p4a9rgFzc0jiOhrUz6LSa+E4kn+iBavx
         slJ1MJuctm3Uh22OIJZMZ4WgzVkd1bEEHLky3alRHcLJz3qcGzHFamQgFVy2FjAyUuoP
         E5Y75Zm4miCkYUifp8JqbVumOqe1yZP+UEFQVg4Q3ia22PLmU8ZnNUvHqcOJQjDSrCoK
         VZsI5dqDuAyxEj2xnPTxoCgJSTV2sIdOvG2A/tEjvzHw5RBOBJR6ITbWi0ISSEZJGj7H
         f84BfvWlal9Zk0rxB7Nn1aeRtVjbTp3CEO+XkLD4XxPDBHfBhE/SFq+I2WdOTJXmm4sD
         uRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/g9Ckd8naETve7uLXmA5cKyVzR/AjKtGg6P8tKAqLhA=;
        b=TWoGRw8p0fLSAQ4PKKHoyUx6cXfOqL68GbGQQujowCHUEoqtQdm2Rg0ejlU9T8vEKH
         uCwExdHm3z8pW/gMwWIFsx+4OtlPKOsa+jhbFJwuRDgq610xtp7ctE5Tjfxo3hv+Weti
         bdXvCo1jTQzySB/tMdB/eMy77ENZDzAKsuqaVF0mcFYVEl6TdC9TfLz8+EL90rz8FMtf
         pajLG0aju2Wr14GtJ2nO6xbLFfpzdqNJRTfQ/boZ7i7D9ypPmbws0RckEqG3zUufZlA/
         yxJv2hLOaMZrUBsV/+qk6LDBupXS9LVCXto6ZE++pti7hb9OdETeGscBW0weafbx0h5W
         VKOw==
X-Gm-Message-State: AOAM532MeEtKc5gnmxdiLZ1gnrd+HO266BluZ9P0fBsvwccU4nOWfK6y
	kmlajntwwQ/nkk2sjOr+mgE=
X-Google-Smtp-Source: ABdhPJwbWQCja6NcPksWtVCjGFzzJI5F+X9nsIOKoRN5eG57lCvzksMduv1pcYei7kEvmkKOnQsPTg==
X-Received: by 2002:a9d:3e54:: with SMTP id h20mr2818680otg.236.1604086366112;
        Fri, 30 Oct 2020 12:32:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:c1:: with SMTP id t1ls1846246oic.7.gmail; Fri, 30
 Oct 2020 12:32:45 -0700 (PDT)
X-Received: by 2002:aca:3a46:: with SMTP id h67mr2786135oia.21.1604086365854;
        Fri, 30 Oct 2020 12:32:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604086365; cv=none;
        d=google.com; s=arc-20160816;
        b=MBP4v66FIQRNLKsdxN6ibsqLpXj9C+FdIua00CB2dJk28a2oqYDS4pCzM3vfxFnhTM
         1xqtHnNS8q83EYzAP+fOkY0IpiFCY3f70uctURwFTD4J/pttMOWtlrxigN5Cz7uJKGCs
         3AsWXkvB53iLuybbFAcZUVcaNTufOcIwpIXFX15JgqPl1sNl5EWxBCaaNfnGdpHw2WeE
         ZjNKe5T3uvkm6O8zM5eE8Fb6zzVVagh+BGgXYKCrVrS9ifZGw/gXLjkjd9c4JAlpei8U
         WMpjwovLaXWUTGlgnIgf0Eu0mzzx4hKRq0jvA8wNmIViGb7CWfwlffFWGgtuFKelzFoy
         l0qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BDKqTp28trE3gantHNBT9WeLJLvt1rwYNIr89Twfib0=;
        b=fxNpE0smuwOes6brVRkewn5OZeTX6xxDoVuyh/G6PKXRYf9gH8mMjZ4f8Gow1sbO18
         oX3iMFMzwpz+eASBuFA+GYu1tAkcodMLH5BW2gyq/QE5Y4PFLXjtFw9+izlsIKtX5BPy
         SVZ6jFpoMgdBD/ubKX92RJ4jTQDJKg53kiosgH1ohIfAlEdprv4XNmmt44pLNHlzdaCB
         wDqB3scj+yyltJhgA44p4aRTcLDuC/7xPa9wq4SXi4TWq+BoSTJdd/498KkRCJww32tM
         iAQiiKvNQFhOy+EZ9Kl+3N5reMTWYseu8OlRQuNk5mJXfuED+/VMm2rQHkt+EbtPiJ6g
         bUXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NuPok3Jr;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id e13si513539oth.3.2020.10.30.12.32.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Oct 2020 12:32:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id w65so6184935pfd.3
        for <clang-built-linux@googlegroups.com>; Fri, 30 Oct 2020 12:32:45 -0700 (PDT)
X-Received: by 2002:a17:90a:d30a:: with SMTP id p10mr4551974pju.15.1604086365009;
 Fri, 30 Oct 2020 12:32:45 -0700 (PDT)
MIME-Version: 1.0
References: <CA+SOCLLXnxcf=bTazCT1amY7B4_37HTEXL2OwHowVGCb8SLSQQ@mail.gmail.com>
 <20201029110153.GA3840801@kroah.com> <CAKwvOdkQ5M+ujYZgg7T80W-uNgsn_mmv8R+-15HJjPoPDpES1Q@mail.gmail.com>
 <20201029233635.GF87646@sasha-vm> <CAKwvOd=MLOKH-JoaiQcahz3bxXiCoH_hkfw2Q_Wu7514vP3zkg@mail.gmail.com>
 <20201030004124.GG87646@sasha-vm> <CA+SOCLJqVjy9QRssE9AZ1nQBwZB5mAcanpVTVOd4kO3=r5jrfA@mail.gmail.com>
 <20201030014930.GB2519055@ubuntu-m3-large-x86> <CA+SOCL+b_qvvEHFz5g416Kdfzy3nZQnizow9-C9k1pw=ZeoKJA@mail.gmail.com>
 <CAKwvOdmK5i9debF+8X6HVmKyAeVYQOf7d1HHFLNUCGN-DhhitA@mail.gmail.com>
In-Reply-To: <CAKwvOdmK5i9debF+8X6HVmKyAeVYQOf7d1HHFLNUCGN-DhhitA@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Oct 2020 12:32:33 -0700
Message-ID: <CA+SOCLJ7uJcCPvNhDmhrvs+LhBKahHQ=+KV6EYMJO92qC5Vdeg@mail.gmail.com>
Subject: Re: Backport 44623b2818f4a442726639572f44fd9b6d0ef68c to kernel 5.4
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Sasha Levin <sashal@kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Manoj Gupta <manojgupta@google.com>, 
	Luis Lozano <llozano@google.com>, Arnd Bergmann <arnd@arndb.de>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000fa159105b2e87508"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NuPok3Jr;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::42d
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--000000000000fa159105b2e87508
Content-Type: text/plain; charset="UTF-8"

Ah that must be it! Thanks for including stable.

Jian

On Fri, Oct 30, 2020 at 12:30 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> On Fri, Oct 30, 2020 at 12:24 PM Jian Cai <jiancai@google.com> wrote:
> >
> > Hi Nathan,
> >
> > Thanks for all the tips! I have fixed the issues mentioned in your
> comments and used git send-email to resend the patch as recommended. FYI I
> used the Message ID of this thread but it created a new thread anyway.
>
> No, I'll bet you're using gmail which has issues showing threads when
> the subject is changed or is not `Re: <old subject>`. If you look at
> lore, it's correct:
>
> https://lore.kernel.org/stable/20201030014930.GB2519055@ubuntu-m3-large-x86/T/#t
> Just that you forgot to cc stable. :^P  Don't worry about it; I forget
> to do that still myself.
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJ7uJcCPvNhDmhrvs%2BLhBKahHQ%3D%2BKV6EYMJO92qC5Vdeg%40mail.gmail.com.

--000000000000fa159105b2e87508
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ah that must be it! Thanks for including stable.<div><br><=
/div><div>Jian</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Fri, Oct 30, 2020 at 12:30 PM Nick Desaulniers &lt;<=
a href=3D"mailto:ndesaulniers@google.com">ndesaulniers@google.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, Oc=
t 30, 2020 at 12:24 PM Jian Cai &lt;<a href=3D"mailto:jiancai@google.com" t=
arget=3D"_blank">jiancai@google.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Nathan,<br>
&gt;<br>
&gt; Thanks for all the tips! I have fixed the issues mentioned in your com=
ments and used git send-email to resend the patch as recommended. FYI I use=
d the Message ID of this thread but it created a new thread anyway.<br>
<br>
No, I&#39;ll bet you&#39;re using gmail which has issues showing threads wh=
en<br>
the subject is changed or is not `Re: &lt;old subject&gt;`. If you look at<=
br>
lore, it&#39;s correct:<br>
<a href=3D"https://lore.kernel.org/stable/20201030014930.GB2519055@ubuntu-m=
3-large-x86/T/#t" rel=3D"noreferrer" target=3D"_blank">https://lore.kernel.=
org/stable/20201030014930.GB2519055@ubuntu-m3-large-x86/T/#t</a><br>
Just that you forgot to cc stable. :^P=C2=A0 Don&#39;t worry about it; I fo=
rget<br>
to do that still myself.<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLJ7uJcCPvNhDmhrvs%2BLhBKahHQ%3D%2BKV6E=
YMJO92qC5Vdeg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">http=
s://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJ7uJcCPvNhDmhrvs%2=
BLhBKahHQ%3D%2BKV6EYMJO92qC5Vdeg%40mail.gmail.com</a>.<br />

--000000000000fa159105b2e87508--
