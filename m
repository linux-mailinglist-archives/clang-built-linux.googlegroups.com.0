Return-Path: <clang-built-linux+bncBCCI5LFKZYOBB3M4R6AQMGQET6PTJXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2065131665E
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 13:15:43 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id x11sf2194842ill.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 04:15:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612959341; cv=pass;
        d=google.com; s=arc-20160816;
        b=q4r8A+vPIs+1phegj0DRDv43xTTDjvUr3ureoVTJI+nS5YmPmUuGkOeZhEJFABhEl8
         K42SO3WOKuQX9zTMkD/zfv1e+k9AMpCacUUi34SMOei2II0v8nkGHPghAOdJlfd32LL+
         r5aJ/baYTrYm0Kce8MMge/Ee2Vvge5qfWtQ2XnN80/CI6nJ3KJvaP+9bCAsiDXdDuk8v
         0j7WC5Y8+AF5YsWxfZQrQmXSv20bMGNKsZdfTjp7/Z2eOdPwMUt0b9BQt/ZB0/ALoGdM
         LyQMPEi6Lf+kSXzD27JqjKdk91z/d/+tO3UbFg4Zqee2oau/QnT/CaTGbzithfdVQ4Kk
         YDaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=IS5by2Kr5G3sf6XTlKeXyRKRQQtsCFR4psgXOS/aAC0=;
        b=mR5JL935omjXHBL9TP4v9beeKwdkjfuFD1bPxHmG/29PcuAdymvcOWR0qPcAX5oSms
         jb+QF6HVGhbMXIsG3ps2f5sePXMSw0ZmIjT+eWdd5p7orwr3g7g7SW+i/RGuE3d+lU9D
         MclFHwEfdo+scKmRkC2R2dv9xqRwJrO9UBc/Xq+9dQkn5OGsXrcg486nCBUEkMFk8tzy
         noquuXKNpvWCuin+n8j77tqSq4wAMQ800B8s88ysHdsYMj5K+svquxQZMS/grPgj9xQS
         xGKKdMFxZtGU8DZH2AwmQvrFH6c8GnrkH6fVi0YR0m0nRYXJ0lUI2ls0JzVbIGiD2LBm
         XDkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j2LdMjNZ;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IS5by2Kr5G3sf6XTlKeXyRKRQQtsCFR4psgXOS/aAC0=;
        b=M+ZWOmjOmK63vmktX2Qqn7iWlwzIJ5SSNm9EOTHN6R0ZNwqokTLlTqX1mJOH5zx7Gi
         vZpGJ7FCW/IWlINsieDdNM4fuGd5gXVqFtMc4fMwnNtd4CsL3LaLV/zy3fGX40IF9/Vf
         BgXRwwyfLhmpwELcCoUJxvNjPcuDzwxsgXG9DcT7j8DJy5/OJMjj0zFa7XWfHm3M4xQJ
         xTmqrizfPZOlzVn0jrDDMi9oQbO86p2nIN6K4sowupspy9hjy2wD3G5oL01CpjKyFz0X
         VePgM4L0SbsLpWqIAglc0p+8NcL13Nm8oA/csdx2jkYLCQh8fI9CwmLQZR/AXw1RyWA/
         xs0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IS5by2Kr5G3sf6XTlKeXyRKRQQtsCFR4psgXOS/aAC0=;
        b=RFeUBfc5GEoKO/N2C14lKxC7371LN/NJ6zOnURLuqKcpeGEz80SBPkJGZANyoiCXBl
         2ogSe4oYYpyepzBS1DSnL7vysxXpz3DT9pIYzVJIOX3YMsLMZ7iSBplz3E7GzhVjWjZR
         AE9XFIcJ7qY4ac8I0Fl7+8faBx+uRem4Q/6s/OqmhKmEHnVYng0upT/DB0F8y5hUggBW
         7OYgYERCcyDBdThLe6yWWNDlxXh1diNqbWDsE/SmIj/x0hs+MUlvxNi7knnL/Pr8f8b9
         g605QzBsPBHwVB9W02aGGBA0kNfPF710kTDjaVHFh1uBGVth59o0G1Negjr1g9Ydtpgd
         mKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IS5by2Kr5G3sf6XTlKeXyRKRQQtsCFR4psgXOS/aAC0=;
        b=a3fcvmljJTunnjsnPwqQDYEGgG1/8FkZ6w1WDIDxtDGx/OldoBRXNWVzjzZWC/KbQI
         WAUOVprgReeBNAP8yxUAct8IImPUvpkr3eE4ZQE8QrWR4VamW9rsqEGc/eewj4BmrOl0
         nIdDqDL08U8754ayEtEqNaVs0NjFQ1w2uD7aNMwuXynlDRVjaVAF3KQx1sr2biJTkTPv
         9QXjl7EXNE07sWogiaG6lE23SjMsPso2PKLiRQsaHQWeiDSH1vGUvtyB08pteCPSCMjU
         pLvZi+d/023O0tHgh9R+qXcu40YNZRsLB9RM6ILB8OUF8uBYY/UtLLwy//rU8UxVrSb6
         dcXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zUQVhMCpczkeIKf/rn+JQFCACDGmYfUourIg28ZDO2pWTxTly
	HhUYf9uLNI1z7stX5dBY4i4=
X-Google-Smtp-Source: ABdhPJxhUsBhDE/hcXPlPVu57ydpcLXTVdslghYPZRgBBU+FN4li4lFDUJw9nJv3YUOG3zE8sB3nXg==
X-Received: by 2002:a02:cdce:: with SMTP id m14mr3008023jap.85.1612959341869;
        Wed, 10 Feb 2021 04:15:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1212:: with SMTP id a18ls508813ilq.11.gmail; Wed,
 10 Feb 2021 04:15:41 -0800 (PST)
X-Received: by 2002:a92:d445:: with SMTP id r5mr734195ilm.227.1612959341419;
        Wed, 10 Feb 2021 04:15:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612959341; cv=none;
        d=google.com; s=arc-20160816;
        b=TCk/NsYtbDoZqfnKC8TAag/xmHFX99Zm0LpxAUsO7kO1ViHxVKZZfo8MDjOlVOtAbI
         PIuHamelcvbklNY75tiJ2gI/Kfj29lPtdivqiQYVjZm4lHuGlygx20Mypef+K76aYU9e
         OzSeDdNyY7B7PjFoddpSyD4oU1HC5Yx04HSZO0WaPpUNDPcXyuh0rjbJGPkKvmIQjIPG
         6AXWfLcPr+59Xn52zokIHvUMLV8KwZeuR24OcSWCgcitZe+KHn4HJ736QveJeU/QpAy1
         xaSm3kjcpmgM8l85ZQGjOHAZGFPzfCa+enIJkSJud6kAJ6AKKJtqICHwhpQVgxwR7Lz6
         Sdrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Lb9pZCirHv6qBnV6KRSy4Hk+gQ44koeIraugLMRX1hI=;
        b=UWTi1Yx3KFDABq0piPnvF/H4TZfUnlhsfu7CV2kWrMJcObFklNRfJpYPyQ1S5paEa1
         a7V1Y8iCiGk/v6B0k9t/s7DEcCalqL+C3qTu4sfWqOi/Ja4mLdpyrRfjs9hpBkpZh1vD
         WBkLEgyg+KIBRxDcg2Dms4A2YP8XO17r6s7emcfkrNsnaHcPW2/MuxH7CE5lr+kIDBKQ
         HTalEuy/YYKsJL++CRzuvxBj59jEM1XDIUbhbw49rsSZ0Bbc/fggw2cdggG1mRVaswCA
         NaqFNPSBIyrXlQu6DOv4U1chWtIQgkVnIvrNoM6f+EJMsHXYW5GlWS1VElNQXd9m0N65
         tD6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j2LdMjNZ;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com. [2607:f8b0:4864:20::b2d])
        by gmr-mx.google.com with ESMTPS id o7si80630ilu.0.2021.02.10.04.15.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 04:15:41 -0800 (PST)
Received-SPF: pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b2d as permitted sender) client-ip=2607:f8b0:4864:20::b2d;
Received: by mail-yb1-xb2d.google.com with SMTP id v5so1778223ybi.3
        for <clang-built-linux@googlegroups.com>; Wed, 10 Feb 2021 04:15:41 -0800 (PST)
X-Received: by 2002:a25:1387:: with SMTP id 129mr3440224ybt.423.1612959341033;
 Wed, 10 Feb 2021 04:15:41 -0800 (PST)
MIME-Version: 1.0
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
 <20210208195439.GA1097868@ubuntu-m3-large-x86> <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86>
In-Reply-To: <20210209192729.GA820978@ubuntu-m3-large-x86>
From: Stephen Zhang <stephenzhangzsd@gmail.com>
Date: Wed, 10 Feb 2021 20:15:27 +0800
Message-ID: <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
Subject: Re: [PATCH v1] clang_tools:gen_compile_commands: Change the default
 source directory
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, natechancellor@gmail.com, 
	clang-built-linux@googlegroups.com, LKML <linux-kernel@vger.kernel.org>, 
	Tom Roeder <tmroeder@google.com>
Content-Type: multipart/alternative; boundary="0000000000008f3b6705bafa5c49"
X-Original-Sender: stephenzhangzsd@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j2LdMjNZ;       spf=pass
 (google.com: domain of stephenzhangzsd@gmail.com designates
 2607:f8b0:4864:20::b2d as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000008f3b6705bafa5c49
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nathan Chancellor <nathan@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=8810=E6=
=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8A=E5=8D=883:27=E5=86=99=E9=81=93=EF=BC=9A

> Just as an FYI, your email was HTML, which means it won't hit LKML.


Thanks for pointing that out. The existence of a GFW makes it difficult for
me to connect
to the mail server.  so I use git client to send patches only and reply to
emails with
gmail  web client.

$ mkdir -p /tmp/build/perf
>
> $ make -C tools/perf -skj"$(nproc)" O=3D/tmp/build/perf
>
> $ cd /tmp/build/perf
>
> $ ~/cbl/src/linux/scripts/clang-tools/gen_compile_commands.py --log_level
> INFO -d .
> ...
>

According to the code logic, the source directory is specified by
parameters  =E2=80=9C-d=E2=80=9D.

def process_line(root_directory, command_prefix, file_path):
    ...
    abs_path =3D os.path.abspath(os.path.join(root_directory, file_path))
    ...

The "root_directory" is passed by "-d", which finally become the prefix
like  "/tmp/build/perf/"
of  "File /tmp/build/perf/arch/x86/tests/bp-modify.c not found".so the
command is:

  $ ~/cbl/src/linux/scripts/clang-tools/gen_compile_commands.py --log_level
INFO -d  ~/cbl/src/linux/tools/perf/

Maybe we should make an updated version, in which the help message of "-d"
can be changed
to specify the source directory instead, or I am just misunderstanding the
code logic.

Thanks=EF=BC=8C
stephen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CALuz2%3DdyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ%40m=
ail.gmail.com.

--0000000000008f3b6705bafa5c49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Nathan Chancellor &lt;<a href=3D"mailto:n=
athan@kernel.org">nathan@kernel.org</a>&gt; =E4=BA=8E2021=E5=B9=B42=E6=9C=
=8810=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8A=E5=8D=883:27=E5=86=99=E9=81=93=
=EF=BC=9A<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">Just as an FYI, your email was HTML, which means it wo=
n&#39;t hit LKML.=C2=A0</blockquote><div>=C2=A0</div><div>Thanks for pointi=
ng that out. The existence of a GFW makes it difficult for me to connect</d=
iv><div>to the mail server.=C2=A0 so I use git client to send patches only =
and reply to emails with</div><div>gmail=C2=A0 web client.</div><div><br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
$ mkdir -p /tmp/build/perf<br>
<br>
$ make -C tools/perf -skj&quot;$(nproc)&quot; O=3D/tmp/build/perf<br>
<br>
$ cd /tmp/build/perf<br>
<br>
$ ~/cbl/src/linux/scripts/clang-tools/gen_compile_commands.py --log_level I=
NFO -d .<br>
...<br></blockquote><div>=C2=A0</div><div>According to the code logic, the =
source directory is specified by parameters=C2=A0 =E2=80=9C-d=E2=80=9D.</di=
v><div><br></div><div>def process_line(root_directory, command_prefix, file=
_path):<br></div><div>=C2=A0 =C2=A0 ...</div><div>=C2=A0 =C2=A0 abs_path =
=3D os.path.abspath(os.path.join(root_directory, file_path))<br></div><div>=
=C2=A0 =C2=A0 ...</div><div><br></div><div>The &quot;root_directory&quot; i=
s passed by &quot;-d&quot;, which finally become the prefix like=C2=A0 &quo=
t;/tmp/build/perf/&quot;</div><div>of=C2=A0 &quot;File /tmp/build/perf/arch=
/x86/tests/bp-modify.c not found&quot;.so the command is:</div><div><br></d=
iv><div>=C2=A0 $ ~/cbl/src/linux/scripts/clang-tools/gen_compile_commands.p=
y --log_level INFO -d=C2=A0 ~/cbl/src/linux/tools/perf/<br></div><div><br><=
/div><div>Maybe we should make an updated version, in which the help messag=
e of &quot;-d&quot;=C2=A0 can be changed=C2=A0</div><div>to specify the sou=
rce directory instead, or I am just misunderstanding the code logic.</div><=
div><br></div><div>Thanks=EF=BC=8C</div><div>stephen</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CALuz2%3DdyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7=
WrX87XQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CALuz2%3DdyA_ki98t8VNe2L1UcBXrSoJ=
T1r6j1puEmLn7WrX87XQ%40mail.gmail.com</a>.<br />

--0000000000008f3b6705bafa5c49--
