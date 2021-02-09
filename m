Return-Path: <clang-built-linux+bncBCCI5LFKZYOBBKHURKAQMGQECY7DSOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2493153F9
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 17:36:59 +0100 (CET)
Received: by mail-ot1-x33a.google.com with SMTP id t8sf4330235ots.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 08:36:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612888618; cv=pass;
        d=google.com; s=arc-20160816;
        b=MuV2ZuuS7KeIZ9BEz7JabTfFQWO0HDdUTOY2Wowz7nvuHUejZ75ABtrK6/lip/1nzy
         A+i1vQQMnHA69xyL6Q0MfLizvkKDzhuKT5iWExzEUY+Nt3TU/6u+1aJl0iHg2NV4DZqp
         xVn5rKsDZGdjHlQ40n2Otylp6f08D75yZKhz8ATedEUTAPCbEOQ56Oy2AklyM14UExiz
         laMUsXfsDrDkD1hhcQibntT4WIN/pU/2LGSwuDq/2NdcrZOPa0F+xO0tL2a/Kx3wNX+2
         fBRkHVbKN1j5eDpZIgX0c1CL55lHyf+gw0381Cu6YCs5/qrHMZmVZF4uuThDMqiXTeYL
         BxTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=L1dIxahuQ0WBS59QuOkLKCI8UhfFbE3SveUTLq17pHI=;
        b=y7cxOvKTqqaCrZbSGbhkgkcHfAUztisWGMylRhDCnv0skRCAKLUqjHkMHSXhlmMfuR
         rdVcI5OU8bmwxUC+jZ5ZKR1SxL13G3yKoBWGI6xaNBZA9hBdhM26ngO9FM5QV7hSMjkc
         6UKtilnsfksZfuwIsHYq3s1hG9CuePBjQEp5ZGC8uHYXS27R9MgYdV0FDHaghQIZT2Tu
         VXTtNe3zAhi7Ig6V6efJ+4Y6LzUmfglLS3c4IS+XL93tXAR/+m6+XDPDUUB71ooPh8vK
         tbf0IiJAoYY1ugbW5majf4RW48A+4nKGGzupYiVHLyGZbwdt9v2eL2m7Rx4c7pWWDcHr
         W47A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eVY8EJZh;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L1dIxahuQ0WBS59QuOkLKCI8UhfFbE3SveUTLq17pHI=;
        b=Ky9aY5NQ9rTRO2CHZW9EeJMKI/Kjotok72oYbQhWzUVaPOvVa7OYWIsUHirHV15cCT
         dlG2zGCXWP9lGEkHU89cu648TLpqYV/x66yZuF/o8nfoKZ+YmEHAGeFK8+cRHadf6LGP
         fdfO5HZy1cAEgS5F5PTsFCNqcgS60lCII/g92oF8CcdTITc6HvmIegDkBIQzh2qyBQf4
         RXjNFgwKHh8GWonxeCaaxtLlxp8TvLw6ZLzyfwnYX2p4Dz4NQDf8Ab+DqVz19OK4Tb+s
         I9kK1q5mWEIdKHptOG4JTwMP9XO8L6KBJElgX/3sHV7/Cdf6CU+yvm0l8Fa57uHk9n76
         rvww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L1dIxahuQ0WBS59QuOkLKCI8UhfFbE3SveUTLq17pHI=;
        b=dxwrWQ42CnjG0JqgqbiS+vAJ/M2lirBHJA+ilDZaIT7dW9qlBh6njgPLW6VdhgbRPJ
         y1Afebsj1zETfLyLjzH8S7vmrpHlvR1y8PnWyaRPk0Bo1jZLggVKhGTrxi0BeRpCfFYW
         7yKZISRd8iqU6o9a3BgIcpMsgayaQqaLeBzPoMYS3MrPJboYJaDHGrWx++7Ez89u0GQa
         x3by+AChHBrzb+ws+rOVpwNtTPsUu08+s+n5/bR00Bfkkz4/ILv01Brw70VCapWemBzH
         2XpzjcIQGxUpAd8cgGlRDiaMTdqwFwSciAp7+595fmHuybP+7zbVNw+59FZU2nzRY2QW
         bEZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L1dIxahuQ0WBS59QuOkLKCI8UhfFbE3SveUTLq17pHI=;
        b=sN+wRf7lCZNXnxYAAjxrX8oH/b0rozux2rn4Uy4n76mtuhOwiHWpeFP44a1LQVFdZd
         UzeQl7MIAdPh5TPMaqL3BStFrMrUjJdNq0b3IPnqDgS+ud78H80WzFFmbNDJbyqX7V34
         OpDU74AxuoJjPMG15q7hmbGxUPXxr9uYeJJABAv0T0coH6mxFtgDWZNFvNlxAHsgGr42
         eCDNmEiY/Dlp/Z/S8Ho37sXfP6K73ft3XD9D3m+wUvAOhrIsZoebakDfCYs/5s8eDEfK
         +0DX3iRbV45tgR2i3jjjSFqi4MUAkkp05IEyCL5pxtLsUaPYXuG6IPVo3tSYkynLvJIg
         a4Cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gTy90/zOcymJDbbXXtDVNDc21Ac3S+X/JXxDfctHBC92xFESb
	FgsiKdncAVt/bvwJ8y2SVt4=
X-Google-Smtp-Source: ABdhPJwQuwp18cFX4iezMgpI/cNJhPFPTWPV6YOFfzrqC9MIpSmJr2M75rKeEE/9NsZbbrgstBhAOg==
X-Received: by 2002:a05:6830:233a:: with SMTP id q26mr15720658otg.151.1612888616580;
        Tue, 09 Feb 2021 08:36:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2a88:: with SMTP id e8ls4856343otb.6.gmail; Tue, 09 Feb
 2021 08:36:56 -0800 (PST)
X-Received: by 2002:a05:6830:1651:: with SMTP id h17mr10128372otr.363.1612888616295;
        Tue, 09 Feb 2021 08:36:56 -0800 (PST)
Received: by 2002:a05:6808:10c5:b029:df:6bb:110a with SMTP id s5-20020a05680810c5b02900df06bb110amsois;
        Tue, 9 Feb 2021 05:56:33 -0800 (PST)
X-Received: by 2002:a5d:9653:: with SMTP id d19mr15117993ios.65.1612878993352;
        Tue, 09 Feb 2021 05:56:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612878993; cv=none;
        d=google.com; s=arc-20160816;
        b=vfXCvtOeW/WxBh1ji8NdqMlANroBnT+k59aQb6/HGJduF9HHbPtqJAWVqaMfdOY8Kf
         eWOP1hsUKqXpPt2XYyW+uZJ2WEMXFlEcRtTqDTOYlH4pM4bIkKI9S9Mk8JXPRcH2XGd5
         zDjBvLTeFobztiQvtb2g4DvkrmvesSaWUkKkWYZBzsW0+0nvBlD6YnxD7/rHFPOpyoAX
         fyqsCDn1SMY5OhTmnvmQBVcwhbt5hKT09WOnHMy9NQTRiYPFN+O83V1mquoWEPWkTPE6
         z8reZwX/3gHW8kokiISNCazvz8d0AAeeuvpjaaabc9UasvjnlE2JC7Jv4EiOqmhW7U3U
         b1qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e72WGaXgmUdrKb6dau86OH0YNdyrrF90QghdGKWRbCM=;
        b=c0MV6B54liIq7RRgvHgMtH0NzBLa9eu8e5jK+RimGza560zE0/KQX85+j6li1eoO86
         vWJQHAGghshB/AkxkgCAo6Cf5+8jwRpRfgVXt2WcikOn4S1IPka2emDEToxpdla7PBv1
         prrsHDyfhS6ikHJ/h22N49/qMlJf5fKzIXAMRieL9ZNDNmv7d05JZTBYTFyQ49g/w2T7
         J1Uj39gF6/szpTwvsAbEku6OX5uBJTjYBTvHDfdB1hKhriBmpTavWv7JBHLlR3TyH8Wk
         zqyGdnQswTe5f89I5YXqG0kvlwyGPc25MFFvSkQO+PD8ksOyJcR5yG/3X1yDMJXaNX5k
         h0SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eVY8EJZh;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id y16si1090933ili.3.2021.02.09.05.56.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 05:56:33 -0800 (PST)
Received-SPF: pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id y128so18213599ybf.10
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 05:56:33 -0800 (PST)
X-Received: by 2002:a25:dccc:: with SMTP id y195mr13754626ybe.182.1612878993036;
 Tue, 09 Feb 2021 05:56:33 -0800 (PST)
MIME-Version: 1.0
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com> <20210208195439.GA1097868@ubuntu-m3-large-x86>
In-Reply-To: <20210208195439.GA1097868@ubuntu-m3-large-x86>
From: Stephen Zhang <stephenzhangzsd@gmail.com>
Date: Tue, 9 Feb 2021 21:56:20 +0800
Message-ID: <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
Subject: Re: [PATCH v1] clang_tools:gen_compile_commands: Change the default
 source directory
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, natechancellor@gmail.com, 
	clang-built-linux@googlegroups.com, LKML <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="00000000000072211d05bae7a7b5"
X-Original-Sender: stephenzhangzsd@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=eVY8EJZh;       spf=pass
 (google.com: domain of stephenzhangzsd@gmail.com designates
 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

--00000000000072211d05bae7a7b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nathan Chancellor <nathan@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=889=E6=
=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8A=E5=8D=883:54=E5=86=99=E9=81=93=EF=BC=9A

> On Mon, Feb 08, 2021 at 07:28:57PM +0800, Stephen Zhang wrote:
> > The default source directory is set equal to build directory which
> > specified by "-d".But it is designed to be set to the current working
> > directoy by default, as the help messge says.It makes a differece when
> > source directory and build directory are in separted directorys.
> >
> > Signed-off-by: Stephen Zhang <stephenzhangzsd@gmail.com>
>
> I don't think this patch makes much sense unless I am misunderstanding
> the description of the problem. The entire point of this script is to
> parse the .cmd files that kbuild generates and those are only present
> in the build directory, not the source directory, so we should never be
> looking in there, unless args.directory is its default value, which is
> the way the script is currently written. Your patch would appear to
> either make use do way more searching than necessary (if the build
> folder is within the source folder) or miss it altogether (if the build
> folder is outside the source folder).
>
> Cheers,
> Nathan


Specifically,the souce directory is  /vm/linux/tools/perf on my machine,
while the build
directory is /vm/tmpbuild/tools/perf .In the build directory , Execute the
command:

/vm/linux/scripts/clang-tools/gen_compile_commands.py --log_level DEBUG -d =
.

The resulting debugging message is:

    INFO: Could not add line from /vm/tmpbuild/tools/perf/.perf.o.cmd: File
/vm/tmpbuild/tools/perf/perf.c
    not found.

But actually what we want is =EF=BC=9A

    add line from /vm/tmpbuild/tools/perf/.perf.o.cmd: File
/vm/linux/tools/perf/perf.c.

The    " /vm/tmpbuild/tools/perf " of  the "File
/vm/tmpbuild/tools/perf/perf.c not found." is passed by  "-d".

so it is the "-d" which decides the source prefix.

Then we execute:

 /vm/linux/scripts/clang-tools/gen_compile_commands.py --log_level DEBUG
-d  /vm/linux/tools/perf

But in the oringnal code , the default build directory is the same as  the
source directory:

@@ -64,7 +64,7 @@ def parse_arguments():
             os.path.abspath(args.directory),
             args.output,
             args.ar,
-            args.paths if len(args.paths) > 0 else [args.directory])
+            args.paths if len(args.paths) > 0 else [os.getcwd()])

after changing  it ,we then get the right result.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CALuz2%3Dd-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ%2BREg%4=
0mail.gmail.com.

--00000000000072211d05bae7a7b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Nathan Chancellor &lt;<a href=3D"mailto:n=
athan@kernel.org">nathan@kernel.org</a>&gt; =E4=BA=8E2021=E5=B9=B42=E6=9C=
=889=E6=97=A5=E5=91=A8=E4=BA=8C =E4=B8=8A=E5=8D=883:54=E5=86=99=E9=81=93=EF=
=BC=9A<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On Mon, Feb 08, 2021 at 07:28:57PM +0800, Stephen Zhang w=
rote:<br>
&gt; The default source directory is set equal to build directory which<br>
&gt; specified by &quot;-d&quot;.But it is designed to be set to the curren=
t working<br>
&gt; directoy by default, as the help messge says.It makes a differece when=
<br>
&gt; source directory and build directory are in separted directorys.<br>
&gt; <br>
&gt; Signed-off-by: Stephen Zhang &lt;<a href=3D"mailto:stephenzhangzsd@gma=
il.com" target=3D"_blank">stephenzhangzsd@gmail.com</a>&gt;<br>
<br>
I don&#39;t think this patch makes much sense unless I am misunderstanding<=
br>
the description of the problem. The entire point of this script is to<br>
parse the .cmd files that kbuild generates and those are only present<br>
in the build directory, not the source directory, so we should never be<br>
looking in there, unless args.directory is its default value, which is<br>
the way the script is currently written. Your patch would appear to<br>
either make use do way more searching than necessary (if the build<br>
folder is within the source folder) or miss it altogether (if the build<br>
folder is outside the source folder).<br>
<br>
Cheers,<br>
Nathan</blockquote><div>=C2=A0</div><div>Specifically,the souce directory i=
s=C2=A0 /vm/linux/tools/perf on my machine, while the build=C2=A0</div><div=
>

directory is /vm/tmpbuild/tools/perf

.In the build directory , Execute the command:</div><div><br></div><div>/vm=
/linux/scripts/clang-tools/gen_compile_commands.py --log_level DEBUG -d .</=
div><div><br></div><div>The resulting debugging message is:</div><div><br><=
/div><div>=C2=A0 =C2=A0 INFO: Could not add line from /vm/tmpbuild/tools/pe=
rf/.perf.o.cmd: File /vm/tmpbuild/tools/perf/perf.c=C2=A0</div><div>=C2=A0 =
=C2=A0 not found.<br></div><div><br></div><div>But actually what we want is=
 =EF=BC=9A</div><div><br></div><div>=C2=A0 =C2=A0=20

add line from /vm/tmpbuild/tools/perf/.perf.o.cmd:

File /vm/linux/tools/perf/perf.c.</div><div><br></div><div>The=C2=A0 =C2=A0=
 &quot;

/vm/tmpbuild/tools/perf

&quot; of=C2=A0 the &quot;File /vm/tmpbuild/tools/perf/perf.c not found.&qu=
ot; is passed by=C2=A0 &quot;-d&quot;.</div><div><br></div><div>so it is th=
e &quot;-d&quot; which decides the source prefix.</div><div><br></div><div>=
Then we execute:</div><div><br></div><div>=C2=A0/vm/linux/scripts/clang-too=
ls/gen_compile_commands.py --log_level DEBUG -d=C2=A0 /vm/linux/tools/perf=
=C2=A0<br></div><div><br></div><div>But in the oringnal code , the default =
build directory is the same as=C2=A0 the source directory:</div><div><br></=
div><div>@@ -64,7 +64,7 @@ def parse_arguments():<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0os.path.abspath(args.directory),<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0args.output,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://args.ar/" rel=3D"noreferrer" t=
arget=3D"_blank">args.ar</a>,<br>-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 args.paths if len(args.paths) &gt; 0 else [args.directory])<br>+=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 args.paths if len(args.paths) &gt; 0 else [=
os.getcwd()])<br></div><div><br></div><div>after changing=C2=A0 it ,we then=
 get the right result.</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CALuz2%3Dd-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb=
3zZ%2BREg%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CALuz2%3Dd-ENRbWgGYaO_ESEaw5eOV=
SwkQmkeYBJ-w0Vb3zZ%2BREg%40mail.gmail.com</a>.<br />

--00000000000072211d05bae7a7b5--
