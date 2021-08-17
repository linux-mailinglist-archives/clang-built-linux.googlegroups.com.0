Return-Path: <clang-built-linux+bncBCS7XUWOUULBBWHA5SEAMGQEBSUQTOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 512233EE52E
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 05:43:21 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id y27-20020a05620a09db00b003d3401f54cesf3643780qky.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 20:43:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629171800; cv=pass;
        d=google.com; s=arc-20160816;
        b=fB+v62bYfqZ1dJN+fY+ret/ZwIJIemKODj1zuRvWe0I9Itn1dQQ1mFFM93C4uXps8t
         bOa81HJVuqz0vG/kIyS/C0lRkrjEiYhXZBHhtj2N2PZQa5Z0zfzjgBo+ccBre/68ecGQ
         yhMHtQRGWD/qw+1XmjJPWn15unb3xXct+bqUQcxEVW/IjhhFtI/NY6k2ulzurt7mb5Od
         lnuqiJifxbIvq5y3F1L3sekgNDtCC5bIGR6JzlNF1QGAYRxp0Wwutx9bRTdlQpijtdKE
         3pRepw5kcsBUqIg7XLwG6KuDlWuTneHuI+eDWK6dNZmbvMCNnMuQzS2Fc784EL3DuSP5
         GNgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=fQlZWhBoB0ilbpD+1LGzNx9n5gvshAarvpK1+9NFitg=;
        b=isktbZX9TMb8Z5kgTEFRcY3ns/xi34unVy8c8yevWkycBWbJgNsNhOcpQtuQCq9qnf
         VrFXwt52NO9/Q+q13aR9bMDa9I3fdUGzaZh7jmaiWPUjvUN5NPLJ6GlDUDqW79lXGr2+
         n9DoMqWKdIRt0W4WUEEYVUB+CbyEDhri5tQ8fo9tZhTFrZhayXe/ZqgXMCbmBHxvTJry
         hN/xTWSjP+vB16OnTbs/LiwZKL4Pa4wrpbYLYBKIaE0XKwToM7berpr2BI/+rioMMa3g
         1X1OzDEfFmYH8PsN8Hmg5j5anT4DZqtLfVt2EeeggaEbNG8YlcmZH6j1M5Kh4g5ODF6l
         abkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sTrgdXk8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fQlZWhBoB0ilbpD+1LGzNx9n5gvshAarvpK1+9NFitg=;
        b=AGzyNxpmnINDjB9pG7+Hhx+Ce7cPeJ14a6ZHk+7qbZpLVrbQfNlDNHbhRyIRJ/Otw3
         HSCybSo3t8l7WOy0hgsflGorLNQWEzHUlnW5lc2ClXT1U+156Lvr+mfnVody5DAKZMgu
         D0wCh9Er0NEZg3WAKb/NxtPRGgUJC3HOm+nZ/QgbpB7GFBu+td4P+v/IMQTuxRsWpyQR
         p6aePxTyTffVjxZCpIMJHBp8TObUubjnjyXUNmZ37zwwiW2KDiBTdZS9fpgHXUUm9rUP
         0rYj8y9WenYjU1uQQlbeyOUKGLPKM6I1FR4nfTqhZ5Lb6WAKo9rc9jSq8IcPX9kZH41c
         e87w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fQlZWhBoB0ilbpD+1LGzNx9n5gvshAarvpK1+9NFitg=;
        b=fP+NufLmazD0XxDG+TMvemrlkEk5rMdMrVN/AmM0PBaGDjYIlC4wZdHHkhVrxFBPtc
         zL/9F6bK8qSvlu2UAeyT+SohSzAlu/DfzLEjBJQr6Nw6JV1ogmFMGzzLG2wDnQ3iNidR
         gSYO1kCPLHqlb7tpe+G0qJK2yZP/MbvZlP1cYQyq0EU9cFYS3ruUXHvXYLIIGQn0n78T
         j9ylpSRv6DaNb0CV/RxzBP9w0uH+YwokY0TkY/SHV8alk/0uigPprkgx0R2SvGdT0kTh
         YSbrAkPCNTi8O3PK+DRv4MCNgCS/juxOwOQReLbgWk8GbVC9LRIuAF9kArZ9gAVYzBSg
         R5hw==
X-Gm-Message-State: AOAM5301MUdPX2pz8sEDuCP5vN4FVmPk9p8SW5oQvLv5a5VSv5EJSc5r
	cKEra7Cl1gJUVfeoBeTutwk=
X-Google-Smtp-Source: ABdhPJwQPn/1QuCCUNq/rLw7EwGGd+lwjIZkqOaXGEvOlq0Bo1tFZguublvBXVhMTGC3fk+DldX63g==
X-Received: by 2002:a05:6214:f6c:: with SMTP id iy12mr1241547qvb.10.1629171800315;
        Mon, 16 Aug 2021 20:43:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:298b:: with SMTP id r11ls747082qkp.5.gmail; Mon, 16
 Aug 2021 20:43:19 -0700 (PDT)
X-Received: by 2002:a37:ac19:: with SMTP id e25mr1730635qkm.47.1629171799860;
        Mon, 16 Aug 2021 20:43:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629171799; cv=none;
        d=google.com; s=arc-20160816;
        b=lPAgb5yKQuKsyZeGRIYPy5E/s0CdqtAQeoGhm2tR3l5jNk6gDmM+hYJq520QsI2kfX
         sTdrsX034Z0+z2hsijxdeZQqfg8+Eu2UUi63IKq07znVv4PqhOc1Hnm2h3T4zf1XXGXi
         2O+Uwpti7+IQhdcdHynPvpRgqO6JLX8MHpVxiDyVhRKuyEoXWQTObm6u+xtmYOORn/ar
         /n5UaBOkB28j5OnLDPPpYdT/hvXCxiVJwR80vunkVPKEYVE/VkGv5m76Hx+CnVPIbwP9
         aLaZobXTkJOZrmXcXBDRhbRqLTz+q20OpjVPsQc14VJcrRhr1nICt3dU4ZKWlBbwmKgI
         xRcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9nZZ7wtiv7NQq1mf/bfMlqq9KDcrOghEMncpgrEyiyM=;
        b=fHmF40UrXb1dI/nqnGqRwmds2rWV58eHA5bQZnJpU5Lx7mGgvCgNyjfxmfCdEWtYrc
         v57/uwO5q9vLRkceej9C4/q+x6sA5pjn0gc2LKQYXFtf9s0TAHlFZzHR5gDF1V9i4nF4
         csY7SrHCX7APx4sgeyHzs8/Dtbq/WsSDQyU7IjDmPTvtU4UfuyGtTJc/E9+2iZr3eWqU
         XEg5rhCEVBxSIcPSfenFbub/wuM/rqen75SAMpgpWW71TonfuhARw+u/0Z4krpRQrai+
         TjrEcdMBUyIJUMWodbW+llfK+MyEYDEOcLxxxFCRRiA1/tyhoJxPEeZRInVO4eOOElr5
         gS0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sTrgdXk8;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com. [2607:f8b0:4864:20::b2f])
        by gmr-mx.google.com with ESMTPS id b1si64898qtq.3.2021.08.16.20.43.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 20:43:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2f as permitted sender) client-ip=2607:f8b0:4864:20::b2f;
Received: by mail-yb1-xb2f.google.com with SMTP id i8so14175657ybt.7
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 20:43:19 -0700 (PDT)
X-Received: by 2002:a25:5d6:: with SMTP id 205mr1708382ybf.382.1629171799434;
 Mon, 16 Aug 2021 20:43:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
In-Reply-To: <CAKwvOd=8w_nnQpbY2Yyg35oY8j+K0yL6K32Cd9wYLp2VTvQjXw@mail.gmail.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 20:43:07 -0700
Message-ID: <CAFP8O3JWU08wi+FvS7AMAo=k_S4+U25TLfuYSkgFZ3_4N0MNGg@mail.gmail.com>
Subject: Re: painful llvm x86 bugs
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: aaron@aaronballman.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Bill Wendling <morbo@google.com>, 
	craig.topper@sifive.com
Content-Type: multipart/alternative; boundary="00000000000062c7ee05c9b91e84"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sTrgdXk8;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b2f
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

--00000000000062c7ee05c9b91e84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Forwarded this message to some Intel folks...

On Mon, Aug 16, 2021 at 3:56 PM 'Nick Desaulniers' via Clang Built Linux <
clang-built-linux@googlegroups.com> wrote:

> Aaron,
> I'm overjoyed to hear you landed at Intel!  I was doing a bug scrub of
> some of the missing features used by the Linux kernel that GCC
> supports but LLVM doesn't.  Is there any chance that you can have some
> folks on Intel's LLVM team take a look at some of the more x86
> specific ones?
>
> * -mno-fp-ret-in-387: https://bugs.llvm.org/show_bug.cgi?id=3D51498
> * -mskip-rax-setup: https://bugs.llvm.org/show_bug.cgi?id=3D23258
> * -maccumulate-outgoing-args: https://bugs.llvm.org/show_bug.cgi?id=3D281=
45
> * __builtin_ia32_readeflags_u64() unnecessarily forces a frame
> pointer: https://bugs.llvm.org/show_bug.cgi?id=3D47531
> * Inline asm constraint alternatives ignored:
> https://bugs.llvm.org/show_bug.cgi?id=3D20197
>
> The last two in particular hurt virtualization; reading/writing eflags
> is significant overhead in virtualization on x86 and with LLVM due to
> those last 2 links we don't have a way to read/write them as
> efficiently as possible (as GCC).
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups
> "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8w_nnQpbY2Y=
yg35oY8j%2BK0yL6K32Cd9wYLp2VTvQjXw%40mail.gmail.com
> .
>


--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3JWU08wi%2BFvS7AMAo%3Dk_S4%2BU25TLfuYSkgFZ3_4N0MNGg=
%40mail.gmail.com.

--00000000000062c7ee05c9b91e84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Forwarded this message to some Intel folk=
s...</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Aug 16, 2021 at 3:56 PM &#39;Nick Desaulniers&#39; via Clang Bu=
ilt Linux &lt;<a href=3D"mailto:clang-built-linux@googlegroups.com">clang-b=
uilt-linux@googlegroups.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Aaron,<br>
I&#39;m overjoyed to hear you landed at Intel!=C2=A0 I was doing a bug scru=
b of<br>
some of the missing features used by the Linux kernel that GCC<br>
supports but LLVM doesn&#39;t.=C2=A0 Is there any chance that you can have =
some<br>
folks on Intel&#39;s LLVM team take a look at some of the more x86<br>
specific ones?<br>
<br>
* -mno-fp-ret-in-387: <a href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D51=
498" rel=3D"noreferrer" target=3D"_blank">https://bugs.llvm.org/show_bug.cg=
i?id=3D51498</a><br>
* -mskip-rax-setup: <a href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D2325=
8" rel=3D"noreferrer" target=3D"_blank">https://bugs.llvm.org/show_bug.cgi?=
id=3D23258</a><br>
* -maccumulate-outgoing-args: <a href=3D"https://bugs.llvm.org/show_bug.cgi=
?id=3D28145" rel=3D"noreferrer" target=3D"_blank">https://bugs.llvm.org/sho=
w_bug.cgi?id=3D28145</a><br>
* __builtin_ia32_readeflags_u64() unnecessarily forces a frame<br>
pointer: <a href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D47531" rel=3D"n=
oreferrer" target=3D"_blank">https://bugs.llvm.org/show_bug.cgi?id=3D47531<=
/a><br>
* Inline asm constraint alternatives ignored:<br>
<a href=3D"https://bugs.llvm.org/show_bug.cgi?id=3D20197" rel=3D"noreferrer=
" target=3D"_blank">https://bugs.llvm.org/show_bug.cgi?id=3D20197</a><br>
<br>
The last two in particular hurt virtualization; reading/writing eflags<br>
is significant overhead in virtualization on x86 and with LLVM due to<br>
those last 2 links we don&#39;t have a way to read/write them as<br>
efficiently as possible (as GCC).<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups.com"=
 target=3D"_blank">clang-built-linux+unsubscribe@googlegroups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOd%3D8w_nnQpbY2Yyg35oY8j%2BK0yL6K32Cd9wYL=
p2VTvQjXw%40mail.gmail.com" rel=3D"noreferrer" target=3D"_blank">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D8w_nnQpbY2Yyg35oY8j%2BK=
0yL6K32Cd9wYLp2VTvQjXw%40mail.gmail.com</a>.<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">=E5=AE=8B=E6=96=B9=E7=9D=BF</di=
v></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAFP8O3JWU08wi%2BFvS7AMAo%3Dk_S4%2BU25TLfuYSkg=
FZ3_4N0MNGg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAFP8O3JWU08wi%2BFvS7AMAo%3Dk=
_S4%2BU25TLfuYSkgFZ3_4N0MNGg%40mail.gmail.com</a>.<br />

--00000000000062c7ee05c9b91e84--
