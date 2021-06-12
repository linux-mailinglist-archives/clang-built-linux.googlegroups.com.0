Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBBCMBSCDAMGQENO2AQTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C543A4BB9
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 02:32:11 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id g14-20020a926b0e0000b02901bb2deb9d71sf4464867ilc.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 17:32:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623457930; cv=pass;
        d=google.com; s=arc-20160816;
        b=KUb9uzvvkqCwal6jenuCPE5ySPaM1iikh1wpDLC4oT13JF3PwZeZtTt39D3UuXqWNn
         84cQRud0YCBMc7SnDHigLgZ5AxdTpSEC5n3ZgAo4eqA0zkBkqaZb9lla7Jp6ULQJDAgd
         pcJ+YXkIs3CLlhmKPII3RPR7vPZyA9OCoqhjsNfn6K3IM6HGE/I9XMGP9q1M7tYIK4/1
         odAhA/Bhu/dWHFc1VH9L3X1n3ZfDi3L9cz1mgAXZFLexK5GuV2hO+AmvO6M9RCfVbXor
         2kNv5gnvtvlBTmIpecTXbXCqsLByhv7nfBqDYrDX7306ajbNtECSXfpLFu02nZxersdQ
         gNbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8TZNRyk90mHwR4I4MH5iwqZ0yJSfppVUVuO2xIRs0Dg=;
        b=zkm8mRoNKBDROD2KGBQrmBZwGSqKgEdpCKLPxe0EMLm+lwY1vdRa8d46gDYL6SOPcY
         Y36iz56foJHbQ0LKprdRBJgq5sFwmRaXwusdoNcwNCY+yQ8mZJn428pYFGiXS4R1aIpa
         vdkw4Sv2hpXay3aujV2M7JJWO1iQgWe2IDarwtwr/R0lzREe57PpCEzREqNIsRo+V6BP
         bBh40nN0hTV6dL66lF/yVBK17LgJ9YVjigZ3rvdqkrwQejsWBflZ7eFHynLI9GqsllPX
         ICpZ+yHGd03LwfomX9wosHlWLcpyUN3CNPHBwMz1ML7DJEkbw7JKmGSX5igDSYntIdpn
         5U3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eloI4URe;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8TZNRyk90mHwR4I4MH5iwqZ0yJSfppVUVuO2xIRs0Dg=;
        b=gxns+8slsstrBij9QUqGyxL/AxIFK6jKxYrRGVdHStGWeImy0z8RMTZH9ecCck6Q1N
         l6aeehX5IvYH9WrDv2KaqABaNs88zG9rCDcO+HgkaWPo3k+/uMHkPZrBPaGkhRvi14yk
         aA0l1qxl2udNHk5AXwHSzv++LXb/Qj3eYx7cjZ0xVFZHa4zvxG1mceOvGVgaoE377+7E
         KO/dqx4gU7FWzm2UdPs/O37Qac/3jOFfnWfKF/wpmZrcr3aC3J4oHRWryV5sVOLLqku4
         VOFzVe1z4ijv4uR3eRYHJk1Pbd12AYhKJ07IgUxDf8g8hOM35BBLwh6vEkkIewhHTSzc
         K6dw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8TZNRyk90mHwR4I4MH5iwqZ0yJSfppVUVuO2xIRs0Dg=;
        b=Q7Arqh4tsulmWUJMTmW7NgZNyQWtd9XUsxURPSzqqAGY1exBJnqb5FzphxuA9RIvEO
         /Jo6RR66RZOeXphxbNU6Yq7+tit6JFL6Co+fOeo8e4MD6hSmp51W8SmlqjlpH7yu+vch
         60H33jqbc2WhrRYWgZ1koVbXHPQ3ti9kpqMi07XnMtK/nytBQBktebo4OqZx5Gd+Pd5P
         rp9w4Mut0IKw5+4/YB1JbM9qbdvlCEwlRtvHEm4xJgThWM/CxmKmVA7ZThlDqjClHmbV
         onrRq22jotXQ2sz/4Y9LwzyWNOp3LetbKF1x4SvKg0xWwAGOkJlOIfy4tzg44PLzYQVa
         QaaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8TZNRyk90mHwR4I4MH5iwqZ0yJSfppVUVuO2xIRs0Dg=;
        b=WjuomrVf0Kho0wJBgsNxJecIZyeKzwAFB/mEExGfPIAJQGexIzPB/Y3M/++g6hfohx
         Fs1iXtZXwRqg7McvlZllZS2aAIzlf8+D9HbxE0MsHIVfcLhMHIY2vadsKjJEchgtYSuJ
         c5Bp4dzgNIXvchP3UKSsiVubYcAwjqJimkrW9Se+LT+C+cGdr8+CgF5ZqNSTDocxisbu
         lalRhUfNrNNYq0b/ax21kwBniw49kS73V6Ok3XFVk8lWXtLHWbBBr2jdQN+FrBRntlyv
         JiBQOHCfPRbbYAwlHlsRROfv75iDH0OJLyt0Qel5QN+nogMf2I9YRvTWKujnS9Ptv8GA
         m+TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zARY+458pBhX1o0U4caaJTExUHueoTdKOA64yjBgIllhIQnQv
	UUenwWy7tCacc8yA/DsEwrA=
X-Google-Smtp-Source: ABdhPJyOeRG4HH6PauUZkICB7nBGXGQLmO3GNRaCJwFkolHJOqmcer+ojUFEwroGJrAoNt4x2WeYvw==
X-Received: by 2002:a6b:e517:: with SMTP id y23mr5192277ioc.71.1623457930032;
        Fri, 11 Jun 2021 17:32:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:8d50:: with SMTP id p77ls2014215iod.4.gmail; Fri, 11 Jun
 2021 17:32:09 -0700 (PDT)
X-Received: by 2002:a05:6602:12:: with SMTP id b18mr4970566ioa.115.1623457929666;
        Fri, 11 Jun 2021 17:32:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623457929; cv=none;
        d=google.com; s=arc-20160816;
        b=vvokz7SXYPcovtkO5xGGwKP3Yoqybz4xSunF4PehJ2WiGtCeR1hp6zzkQfubquc3JU
         GVF2CDzxME8fqxxM1r3pEHzqulmXU4QVtaPvm0bTRLvFjn/0417mETSmiL7zhIG3zd05
         yst7DccT43wPuG0CxshVKU4rAU2Btjgquds1Nnq8Yog0m5bFc9qhsEDbO2mRXdcA55e7
         79NwTqVxysHO79ljsKwrWPBPI8mKw2GlLBE56boT7okiu+mHSiMm2MzMckqhKP5VBD/4
         QFpGCBLS1pgN447mYZva6RlGYn5YX3HB8Fd24oAqjtJqvQCwWkK1S9V5wsxOIQ6FqIQD
         1Ztg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BzY4XDgBWed7bO/Eixe56mN9w07810mPceqGipGdIao=;
        b=zFnOVMBp08Plv5ZSc6yFP42Y5d3q1CJtsY68bNLf7gMbKK0JvCXZLYbmtEsuDdF7jI
         W4zuD29FuAHT8mqf4Dtf09TjwJ3fsQh/4zkOQpHmsjC95EAzkeqEEs5y7hllHowP35ta
         aYT9OjEz6OKwlZms19DQPPCSfAQprGvGGeNPJWfRRfCvIAP/BlUOJn608o3sHQUYYuBS
         D3WQFalZUEViEe0Vdj+yag65nNYqUWP7pDdsN83idbgurPCwJJ4vdimItK5krfEgu2jI
         onosZLP+ndV4OyD8OY6tPIx9SA92XYuT2PAw/xguoshDbaLlY73N3ZA/vRBJN0mN0wmq
         gcfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eloI4URe;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id 1si421020ioe.4.2021.06.11.17.32.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 17:32:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id 11so3630090plk.12
        for <clang-built-linux@googlegroups.com>; Fri, 11 Jun 2021 17:32:09 -0700 (PDT)
X-Received: by 2002:a17:90a:b10a:: with SMTP id z10mr7177905pjq.226.1623457929276;
 Fri, 11 Jun 2021 17:32:09 -0700 (PDT)
MIME-Version: 1.0
References: <202106051442.G1VJubTz-lkp@intel.com> <20210606110839.GA13828@hyeyoo>
 <eb652efc-7695-ded7-350d-4373dad94460@suse.cz> <20210607122550.GA752464@hyeyoo>
 <06af75da-ffe9-7070-1da8-bcb2cb7881d2@suse.cz> <20210607154957.GB927582@hyeyoo>
 <6e1d48f2-409c-0a71-4d04-a907fe4183b8@suse.cz> <20210608170528.GA28015@hyeyoo>
 <2d2d792e-e189-99a4-36cb-f1473a4df9ad@suse.cz> <20210608184501.GA5505@hyeyoo>
 <513f82e6-175c-d040-691c-5d0e7dacfb83@suse.cz> <CAB=+i9StdrGQWXXoQHKU5oLK3eKuNcuCAbrd88kPLzM_Yw==Jg@mail.gmail.com>
 <99de1f59-1e38-6410-86ff-0ea1f016c49f@kernel.org>
In-Reply-To: <99de1f59-1e38-6410-86ff-0ea1f016c49f@kernel.org>
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
Date: Sat, 12 Jun 2021 09:31:51 +0900
Message-ID: <CAB=+i9RJgjHP9RExixQx66hkWmEuK64nAaD+wH8SeDjxyMoFsw@mail.gmail.com>
Subject: Re: [linux-next:master 7012/7430] include/linux/compiler_types.h:328:38:
 error: call to '__compiletime_assert_183' declared with attribute error:
 unexpected size in kmalloc_index()
To: Nathan Chancellor <nathan@kernel.org>
Cc: Vlastimil Babka <vbabka@suse.cz>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	Linux Memory Management List <linux-mm@kvack.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000002eaf6a05c486c17f"
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eloI4URe;       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::62c
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
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

--0000000000002eaf6a05c486c17f
Content-Type: text/plain; charset="UTF-8"

On Sat, Jun 12, 2021, 1:56 AM Nathan Chancellor <nathan@kernel.org> wrote:

> On 6/11/2021 1:58 AM, Hyeonggon Yoo wrote:> After playing with clang
> more a bit, I got to know that
> > compiletime_assert makes weird link error (undefined reference to
> > compiletime_assert_XXX), Not a compile error.
> >
> >
> > I think it's time to CC ClangBuiltLinux maintainers, who work on
> > clang/llvm build support.
> >
> > [+CC Nathan and Nick]
> >
> > I assumeed that compiletime_assert (in linux/compiler.h) will make
> > compiler error, but it makes no compile error, just makes weird link
> error.
> >
> > I'm not sure it it works well with clang, or somewhat buggy status?
>
> I am guessing this alone is why we were keyed into the thread so I am
> just going to respond to this.
>

Thank you for quick reply!

Unfortunately, this is a known issue with clang:
>
> https://github.com/ClangBuiltLinux/linux/issues/1173
>
> https://bugs.llvm.org/show_bug.cgi?id=16428



> As you noticed, building the full kernel will result in a link error but
> it would certainly be nicer if it were a compiler error. Something for
> us to improve indeed but I am not sure when we will be able to allocate
> resources for that.


I wanted to be sure if we can use compiletime_assert for clang. Then there
is room for improvement, but it seems okay.

Until then, you can build a full kernel to get the
> failing translation unit then use nm or readelf when building the single
> translation unit to see if there are any "__compiletime_assert" symbols.
>

Okay, then we should find symbol like that until improved.

It may confuse developer, but it seems okay for our code to support clang
as it meets minimal condition - build failure.

And I hope it become improved in future!

Thanks,
Hyeonggon

Cheers,
> Nathan
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAB%3D%2Bi9RJgjHP9RExixQx66hkWmEuK64nAaD%2BwH8SeDjxyMoFsw%40mail.gmail.com.

--0000000000002eaf6a05c486c17f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Sat, Jun 12, 2021, 1:56 AM Nathan Chancellor &lt;<a href=3D=
"mailto:nathan@kernel.org">nathan@kernel.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">On 6/11/2021 1:58 AM, Hyeonggon Yoo wrote:&gt; Aft=
er playing with clang <br>
more a bit, I got to know that<br>
&gt; compiletime_assert makes weird link error (undefined reference to <br>
&gt; compiletime_assert_XXX), Not a compile error.<br>
&gt; <br>
&gt; <br>
&gt; I think it&#39;s time to CC ClangBuiltLinux maintainers, who work on <=
br>
&gt; clang/llvm build support.<br>
&gt; <br>
&gt; [+CC Nathan and Nick]<br>
&gt; <br>
&gt; I assumeed that compiletime_assert (in linux/compiler.h) will make <br=
>
&gt; compiler error, but it makes no compile error, just makes weird link e=
rror.<br>
&gt; <br>
&gt; I&#39;m not sure it it works well with clang, or somewhat buggy status=
?<br>
<br>
I am guessing this alone is why we were keyed into the thread so I am <br>
just going to respond to this.<br></blockquote></div></div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Thank you for quick reply!<br></div><div dir=
=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">
Unfortunately, this is a known issue with clang:<br>
<br>
<a href=3D"https://github.com/ClangBuiltLinux/linux/issues/1173" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/li=
nux/issues/1173</a><br>
<br>
<a href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D16428" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://bugs.llvm.org/show_bug.cgi?id=3D1642=
8</a></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"auto"=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
As you noticed, building the full kernel will result in a link error but <b=
r>
it would certainly be nicer if it were a compiler error. Something for <br>
us to improve indeed but I am not sure when we will be able to allocate <br=
>
resources for that. </blockquote></div></div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">I wanted to be sure if we can use compiletime_assert for cl=
ang. Then there is room for improvement, but it seems okay.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">Until then, you can build a full kernel to get the <br=
>
failing translation unit then use nm or readelf when building the single <b=
r>
translation unit to see if there are any &quot;__compiletime_assert&quot; s=
ymbols.<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Okay, then we should find symbol like that until improved.</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">It may confuse developer, but it =
seems okay for our code to support clang as it meets minimal condition - bu=
ild failure.</div><div dir=3D"auto"><br></div><div dir=3D"auto">And I hope =
it become improved in future!</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Thanks,</div><div dir=3D"auto">Hyeonggon</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
Cheers,<br>
Nathan<br>
</blockquote></div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAB%3D%2Bi9RJgjHP9RExixQx66hkWmEuK64nAaD%2BwH8=
SeDjxyMoFsw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAB%3D%2Bi9RJgjHP9RExixQx66hk=
WmEuK64nAaD%2BwH8SeDjxyMoFsw%40mail.gmail.com</a>.<br />

--0000000000002eaf6a05c486c17f--
