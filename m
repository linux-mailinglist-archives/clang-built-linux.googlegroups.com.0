Return-Path: <clang-built-linux+bncBC53FPW2UIOBBIM246CQMGQE6MWP4QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id B555439B30F
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 08:50:09 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id r17-20020a5d52d10000b0290119976473fcsf1321888wrv.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 23:50:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622789409; cv=pass;
        d=google.com; s=arc-20160816;
        b=ueaxjynC6iRJk8s6cHwjwuipoqRzOqeGaW4fBsh/44CSQYoRDm65Nt5ZM+H8tb+ffh
         yF7rbovEF8giGOkR8J7Lv0CCA9OqpB1UU6pewjdIaS2w+Sft9um5kn7MoQlXiTuoxWeJ
         3HDy5KLtE5SmWDzLWfDaivLXiLu1VnmoWDPhg3hkpyr+RYyHlVhnJjDQR0Rd57q4NOjw
         BBGaXiL36D8p/7nntFt3F8LyP2GZLkYHZBvAI9DYRomWet6eUrjxPP1TDY/CSWwl84wa
         IbS0NGEecbkRXMdZb9jpS7jYrKWR79cgSw0j9bIBZ05VUKLkDJCcM4qM00yiHADWthpC
         5Plg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ZNE/idgKwVA8JGxTzHsbr+Xo5CZYR9mRMpoz2tgJLKs=;
        b=qLGLxpiqG1sQ5fa67GbdPhNTYTrK4g+adNj25I+TMXPgNPm4O7acbdi2UOxIyKPLdR
         Bxsy1cN/i2HWT0febEn+q1lVdPPRccXPJgkxrqFhjP8Ay4c5zOna9trooysaGikQcY94
         j1OMPnrHqSx4B66ly8LmZUGvAM6eVU8D7f1rrrAyRzcFsU9KtcxLaOfoYPIwjW2YmKju
         jPK9v2gMRGTI9Ya/+qhQ/GgWoGrCPhzB/Ocz5l7kqnN9QDnYMl3G7A21SvYog7BrTyXw
         Yi7zhve1FL+/yZF9N7+qpSDANv6Bcddbg2JdyNsOK3wsokv2iry8khDRNPE5U9EOcApo
         sIzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PuCG2ygs;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZNE/idgKwVA8JGxTzHsbr+Xo5CZYR9mRMpoz2tgJLKs=;
        b=J67vfhFmUsROoUGyYrpe4q1rtL5UqKHMQtSIW5xrIhqddOtUa50ks6LZSptO74L4mt
         zKZP85qk0vHBRd4aF5aUtYkG4rdguBlv/v03EmDBJm8JVlqyxBx8TL6LuCCplnAQgLun
         qhOorumXaL7YbHkYA2+zeUXrtJe6Q3bONJJGFD59bbeba23y3DMQzBp2gDOjtJ9PeJ8f
         a0KdizTxj/bfClTZtrsdvJeY4ymK3JEw1NV508s/vzOp8mbKeDeDGYJjwRR6xhA7wdaS
         qdVu/aOcZDitJSFaFdxIbUfNzFObc/EU/AXhhR7XvOf+FuL/q9Q1a2n/EPQq4D37+RGe
         89hg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZNE/idgKwVA8JGxTzHsbr+Xo5CZYR9mRMpoz2tgJLKs=;
        b=G74MNV0kyL8vJ2hdlVIKyUMwYS3IMsveZO25oyU4HIMRAivlCC4dbH2PO2yfcbO9+r
         on07thtazXnq9q2zgKBjXF1j1qtdI+2kAy2dsrSF5H6cTFGOhO5272gN4Teal5DIxQvh
         i9A4N69oLt9Luukvk19ys457+3aZ95PMQgVpJ1iy3jVRRR7MomEGdIGJO8MCkpWhuevR
         vCTa5SYID45UaOROa4lCWoGJIBwNKja7y5ZcVaXhRv7japVQxmPTsTfNtpk1RnYR7gNr
         bQiOm7vjk2WMix174UJASmLQWvxzLe0xvd+o8mXAjcVwucjjuG2p6FtvYK+S5zlT9kvC
         YCAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZNE/idgKwVA8JGxTzHsbr+Xo5CZYR9mRMpoz2tgJLKs=;
        b=SsXpwWAFyxQqHLFhWLvYH61lhDYCBdW4Sxdo/JOosNxSVDyNLyMPvSXV8DPx2rQKuc
         +EBVCHr0YOaCfeiv2ExeAS4zXVwMXRjkZ9Oq9MeV8niymPyaXFlDAOl+A6zzMC/lzajd
         Q5HhEdM+S5ARfKGYHooPMECXQzHb0f2u9YzuJ2A6Nd3p7RPUBvydEm93T1Gf9xvG4gaP
         OfUrEe+wZn3HTmWDoYxB6/7sX+CJC071SOQB+fNxx1uWb4BGQ0lufxCNt1Svy4W+ZzZ3
         zCmFCSFENdVxqlTBC4Y8ldqnST61kTSemBEXlAuifq/UxcMQ0FqhBeVHZf9cDRnsMDWm
         iGKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531pv5XFvFTdQ4XNaoyvv0zHRUOthrpsAzxcaX/2eYx5EAkJTJR9
	c0Qv6tCiRlsdT7yVmb2bvSg=
X-Google-Smtp-Source: ABdhPJym6rUMFh2JnlrcP4dv7uMs6Sv21wemokWQBGJT1f3WktLcF4VdaJx9C+bisN5loRBHRSnHWg==
X-Received: by 2002:a5d:4a4b:: with SMTP id v11mr2184098wrs.246.1622789409201;
        Thu, 03 Jun 2021 23:50:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:358e:: with SMTP id p14ls515244wmq.0.canary-gmail;
 Thu, 03 Jun 2021 23:50:08 -0700 (PDT)
X-Received: by 2002:a1c:770b:: with SMTP id t11mr2039559wmi.79.1622789408257;
        Thu, 03 Jun 2021 23:50:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622789408; cv=none;
        d=google.com; s=arc-20160816;
        b=VEytkU6n6odLAgEzbA7Q0TH4oRdoDAGb09+PQuavP+qzmHrUpSfiYZZex8kuRSWH9O
         voT6T+yjYRMkKlgx6b2zGX8GbeH+SV5ZWoSNFfhbxhduI7DeQUfuwIDToxBlP/+YTJ7Z
         7dpCdEqukyd0m+yMSl0DvCJUqUFJr8885pHEoOQ7r/+Mc4sxZOEyDAAimqVlK2bbbAbB
         /TfxCjJ6oOH2D8OSZf1EL2f1ik+HnKfSSFbnhmMJwclzf89nC5DOhN0kB0vNhs9gcpoL
         jmOUqDFxnNDpLT9hxMi/qpctd1yMYa1dBXI8ZtMD3/5LO2gxG0eesGG5qFai1Fxn5Lwa
         aCsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZuGh65WVBfWm0HLxD1iWvgDLmlbdF+LIBuhbAWX5uGE=;
        b=BuOAQmkH2l/IJ3tGMWUs1tVCmNS8VVN+vS41d0vs5Ty7PLNwa5iLFH/Z5diIXLK8BQ
         2XBr2vbufWNm61gZB7m6RY2/L4enGGo8LGgZyF5Nj/NJ3TM/AZvR1/ppXHJWNSHfqYLh
         wMHwR41T1TyPuQI0n/G2qFEYufHtjSE+i+xHhi5fWzuh34eJcfuT5JhMhO81KAz4gJ6l
         xWZZ6LYSL/I2B9cfnMInXIhTxy+RIILgf6C2GvQLDj9ePr5b2pjqbHhipzHYDA9Poh1i
         qtw48dEs0BLmUYt8u5RHpEDEkmLtbBBoGRYC4G0WcdCoKd9lvDnr0HeYOCqdrGujuXQ0
         xWQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PuCG2ygs;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id k18si473822wmj.0.2021.06.03.23.50.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 23:50:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id a2so12476022lfc.9
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 23:50:08 -0700 (PDT)
X-Received: by 2002:a05:6512:20d9:: with SMTP id u25mr1881778lfr.350.1622789408058;
 Thu, 03 Jun 2021 23:50:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210603133853.5383-1-jarmo.tiitto@gmail.com> <d7e94352-0b24-1ab1-8b54-b6ffd4347963@kernel.org>
 <202106031436.132E0ED9A@keescook>
In-Reply-To: <202106031436.132E0ED9A@keescook>
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Date: Fri, 4 Jun 2021 09:49:49 +0300
Message-ID: <CAH9JF8vR3TCt3DgOf3R2cjmruuKks+U+ynAr76AyErM=c-oFKQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] pgo: Fix allocate_node() v2
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Bill Wendling <wcw@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Bill Wendling <morbo@google.com>
Content-Type: multipart/alternative; boundary="0000000000003670d305c3eb1a5e"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PuCG2ygs;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::12d
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
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

--0000000000003670d305c3eb1a5e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Ok, I'll make the requested changes and post v3 patch.
Btw. These patches were  based on kees/clang/pgo/features.

Thanks for patience.

pe 4. kes=C3=A4kuuta 2021 klo 0.36 Kees Cook <keescook@chromium.org> kirjoi=
tti:

> On Thu, Jun 03, 2021 at 02:14:24PM -0700, Nathan Chancellor wrote:
> > On 6/3/2021 6:38 AM, Jarmo Tiitto wrote:
> > > Based on Kees and others feedback here is v2 patch
> > > that clarifies why the current checks in allocate_node()
> > > are flawed. I did fair amount of KGDB time on it.
> > >
> > > When clang instrumentation eventually calls allocate_node()
> > > the struct llvm_prf_data *p argument tells us from what section
> > > we should reserve the vnode: It either points into vmlinux's
> > > core __llvm_prf_data section or some loaded module's
> > > __llvm_prf_data section.
> > >
> > > But since we don't have access to corresponding
> > > __llvm_prf_vnds section(s) for any module, the function
> > > should return just NULL and ignore any profiling attempts
> > > from modules for now.
> > >
> > > Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> >
> > I agree with Nick on the comments about the commit message. A few more
> small
> > nits below, not sure they necessitate a v3, up to you. Thank you for th=
e
> > patch!
>
> It would make my life easier to get a v3. :) I agree with all of
> Nathan's suggestions. :)
>
> Thanks!
>
> -Kees
>
> --
> Kees Cook
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAH9JF8vR3TCt3DgOf3R2cjmruuKks%2BU%2BynAr76AyErM%3Dc-oFKQ=
%40mail.gmail.com.

--0000000000003670d305c3eb1a5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hello,</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Ok, I&#39;ll make the requested changes and post v3 patch.</div><div =
dir=3D"auto">Btw. These patches were=C2=A0 based on kees/clang/pgo/features=
.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks for patience.<b=
r><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gma=
il_attr">pe 4. kes=C3=A4kuuta 2021 klo 0.36 Kees Cook &lt;<a href=3D"mailto=
:keescook@chromium.org">keescook@chromium.org</a>&gt; kirjoitti:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">On Thu, Jun 03, 2021 at 02:14:24PM -0700, Nat=
han Chancellor wrote:<br>
&gt; On 6/3/2021 6:38 AM, Jarmo Tiitto wrote:<br>
&gt; &gt; Based on Kees and others feedback here is v2 patch<br>
&gt; &gt; that clarifies why the current checks in allocate_node()<br>
&gt; &gt; are flawed. I did fair amount of KGDB time on it.<br>
&gt; &gt; <br>
&gt; &gt; When clang instrumentation eventually calls allocate_node()<br>
&gt; &gt; the struct llvm_prf_data *p argument tells us from what section<b=
r>
&gt; &gt; we should reserve the vnode: It either points into vmlinux&#39;s<=
br>
&gt; &gt; core __llvm_prf_data section or some loaded module&#39;s<br>
&gt; &gt; __llvm_prf_data section.<br>
&gt; &gt; <br>
&gt; &gt; But since we don&#39;t have access to corresponding<br>
&gt; &gt; __llvm_prf_vnds section(s) for any module, the function<br>
&gt; &gt; should return just NULL and ignore any profiling attempts<br>
&gt; &gt; from modules for now.<br>
&gt; &gt; <br>
&gt; &gt; Signed-off-by: Jarmo Tiitto &lt;<a href=3D"mailto:jarmo.tiitto@gm=
ail.com" target=3D"_blank" rel=3D"noreferrer">jarmo.tiitto@gmail.com</a>&gt=
;<br>
&gt; <br>
&gt; I agree with Nick on the comments about the commit message. A few more=
 small<br>
&gt; nits below, not sure they necessitate a v3, up to you. Thank you for t=
he<br>
&gt; patch!<br>
<br>
It would make my life easier to get a v3. :) I agree with all of<br>
Nathan&#39;s suggestions. :)<br>
<br>
Thanks!<br>
<br>
-Kees<br>
<br>
-- <br>
Kees Cook<br>
</blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAH9JF8vR3TCt3DgOf3R2cjmruuKks%2BU%2BynAr76AyE=
rM%3Dc-oFKQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAH9JF8vR3TCt3DgOf3R2cjmruuKk=
s%2BU%2BynAr76AyErM%3Dc-oFKQ%40mail.gmail.com</a>.<br />

--0000000000003670d305c3eb1a5e--
