Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYGURT6QKGQEHYC4NOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 282F82A705A
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 23:25:38 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id s12sf136916pfu.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 14:25:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604528737; cv=pass;
        d=google.com; s=arc-20160816;
        b=GfjqnxA1lVdeCEAzMTaejF+NdNCQZUKOn5Nh8h18wCqTILqG6is19zcys4wPEuAhIa
         gq4X4t86MOVUckcXb314ynwUWxuF9omuMpesumzsMwY4vqUrmIFtHwHhC4DxdZWFcG0G
         bk3SEBSlDUuEHE8GXXjp7vsbag4ZO2POCqtgRi7RuA9wWwLTEKTJMI+0WmV6/0jKYP75
         Zi9Mk3yiMVdxuWF8DZtVscp5o803Jf6ILN0vMfwvgiHuVpkvjuZYu6WySkTFcGfj6XOP
         R9kD2pTypqRt/5kR9V6kFhY+6fSIf8PxEevBaAPgcggYPPIDbWJBHBi19FMLzRyJ/I9O
         ivaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=SuS8wSmPxvHabVKfdbaUwicCNUUxKNv3lCfqlRmW98Y=;
        b=wuTxcpz44L9iV84igFZq7B9IAFrLfgwcLGvXImwbIW+513SmYjEYTweTIx7oNMk5Fs
         2URYjNGZlHFM6qNcNviqIGgw0cqtUtv1fuY6cXczcjEi4gAgmR6p0avx+kX9s9Ybc5Vk
         JtYM8Uut8v5YA9HxUlspEl4jkIxkjO+45Bc+lYQPGwLn72N8jvrOt4FK8eBCW2yfiEcd
         VlHzexBSMdiD77doBr5ig5wdV/9Z7ycTUGI2l57gg5NlYmxV8wQ/3AQxJGnyfkPpQLej
         ldsx2Co22sa2SYah6vX5FINIGfzfZvFmUjRzJ1DE2qKpRa6LsLqGum88YZ6ath7O1gSC
         BS9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ddHaevwY;
       spf=pass (google.com: domain of 3xyqjxwwkaeqtjkyg0rtokxymuumrk.ius@maestro.bounces.google.com designates 2607:f8b0:4864:20::e45 as permitted sender) smtp.mailfrom=3XyqjXwwKAEQtjkyg0rtokxymuumrk.ius@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SuS8wSmPxvHabVKfdbaUwicCNUUxKNv3lCfqlRmW98Y=;
        b=mi4CYVzCeB5xWLd93+eiDpW6uvZpOXao8Svc0gowoKG4IU8yfUt1prk4J3Kf0BoP0+
         QXDwusqfo8O3KbXzM+XSSs2SKvFo6VBDYAqH6KaxzFXJ76WSccDc3gHkd8tGHOZPxN2D
         9d1zI1mNlam3N8BybNwKXssnzfYT4ilmCy+vJhWRP4krvGI2GnlcIAUjNDh1bWpvrYuH
         fIepaCZZR3KCvWM3kWvwSsjPYpdlzazg9ecq7smtxIDwMOQfMG4pz2RPwcbsD5ZePtDd
         Kgtv2+CR5irjQ1rh5icxguQcCm7vxyzDbYxqfbWi0zU7YMoH/o1PZAwOeUUCchet6q9T
         eiEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SuS8wSmPxvHabVKfdbaUwicCNUUxKNv3lCfqlRmW98Y=;
        b=X4k8YeZYMXZjrIeGeloI0d+sI4DJnqsDCR5mr+3LDYN4Tg3mf5iebYz9MFT2OUncaf
         iVDjAetETHvr/xyB4y+7TuXdVuMOK1/NRN1W1PqEt1bsThJ7texRr/FepdrltVke10Q/
         wIQzAqb1qhLtzKSjquFuCpP27dVcYvJEB0ysHbb9X2mxgNk9Io52W0/7s7e1W8VP8OWu
         FBEsCnGhnAADBsZFk4uosqDtVu1+Ck+iRRQfyYRmE8GehM+qfRh3ruebCYeeZvUbgtMD
         yr9UDPg+SLiUfdXp4a9Z+uja4ufrMGqbanta50ZlTUbXNUFSD2xh9Yl6CtJnaBmvm/Rm
         S5xA==
X-Gm-Message-State: AOAM531PuqhSuz6a2D/iFnLBKMwFQoE6gMInCYdg7vsbxWlXWFthulTY
	jUyEKMefIUV33S1DfaVDANg=
X-Google-Smtp-Source: ABdhPJwWUig3eP8x71OhHddkyA9sXql+jXROV4WNfGWzlPrgCM15s9ZjABKt/IiEhnBERAPinKhfVA==
X-Received: by 2002:a63:6585:: with SMTP id z127mr158571pgb.210.1604528736783;
        Wed, 04 Nov 2020 14:25:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bd82:: with SMTP id z2ls1882889pjr.3.canary-gmail;
 Wed, 04 Nov 2020 14:25:36 -0800 (PST)
X-Received: by 2002:a17:902:8f88:b029:d6:d62c:e437 with SMTP id z8-20020a1709028f88b02900d6d62ce437mr184730plo.73.1604528736112;
        Wed, 04 Nov 2020 14:25:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604528736; cv=none;
        d=google.com; s=arc-20160816;
        b=SlUTAJJz5NW7GBKVb7WNgsv01hjruE5afP+eyaGUK/nwBcfDZJOROCwb/N5i62/RDS
         TKA0lWq+tti3jWZKywVzdj/hKIPj8gf9L8PJKnIIUz1uvXADvhX+SSCXyluISHemy7oD
         li5un2fDF61uZ7DKNAZfXeGzYQzmVQA0wyxB8dVHSD8aPY3QvDzZ6su/qad8PSlXmKZa
         TCMyd1tPFa9rEMMlEdi5l+8F/aISWYawPyNQrztgiqJTxsD0uBThqyZaRpWAF04QLJdC
         yyXYlkQ0QzbmYQ8s9Z+LxYrltdrER6OCUg119IQN8iOws6Dhqqv+cSnfa14vqvoW/M6v
         aVXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=C1CKy8ErhjhaB1c1N9HIkJRYAggcbLVX5/G/XUQmHps=;
        b=Iewg52yakZcRmJBG4e94mLYN2yp1qgIN6kzBQSJ2kZiK+inYRuwApkULHdiAgRQlhC
         3YAylqdn3ApcUruopeEWuJ3apNCwKZ4xL057k/FSw2u+9xDOj55WLg3D4hTa/ihMj/1N
         7DKOugOYe3+bfGTNRhERA0Z6DBbBArlrEjA/ukhOuRM7OS0TIkSx/gsgzPLVtw0veooU
         Wssyh0CkSo/dYE0YJI2CUtFgoEES+crQXZ4SItGkPRrgddyhdNwYHPPqQWxMnQvFhi1v
         pNWKr3klpuPXv8A6QsewLJLorKpaQ19KHOosBKQOITDY76MhMOGTGjozibgeMhPUJARH
         HSig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ddHaevwY;
       spf=pass (google.com: domain of 3xyqjxwwkaeqtjkyg0rtokxymuumrk.ius@maestro.bounces.google.com designates 2607:f8b0:4864:20::e45 as permitted sender) smtp.mailfrom=3XyqjXwwKAEQtjkyg0rtokxymuumrk.ius@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe45.google.com (mail-vs1-xe45.google.com. [2607:f8b0:4864:20::e45])
        by gmr-mx.google.com with ESMTPS id v24si205399plo.1.2020.11.04.14.25.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 14:25:36 -0800 (PST)
Received-SPF: pass (google.com: domain of 3xyqjxwwkaeqtjkyg0rtokxymuumrk.ius@maestro.bounces.google.com designates 2607:f8b0:4864:20::e45 as permitted sender) client-ip=2607:f8b0:4864:20::e45;
Received: by mail-vs1-xe45.google.com with SMTP id n21so22560vsm.11
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 14:25:36 -0800 (PST)
MIME-Version: 1.0
X-Received: by 2002:a67:1101:: with SMTP id 1mr23482vsr.57.1604528735124; Wed,
 04 Nov 2020 14:25:35 -0800 (PST)
Message-ID: <0000000000004a6b6f05b34f7589@google.com>
Date: Wed, 04 Nov 2020 22:25:35 +0000
Subject: Clang-Built Linux Meeting Notes - Nov 4, 2020
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000004a6b5805b34f7586"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ddHaevwY;       spf=pass
 (google.com: domain of 3xyqjxwwkaeqtjkyg0rtokxymuumrk.ius@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::e45 as permitted sender) smtp.mailfrom=3XyqjXwwKAEQtjkyg0rtokxymuumrk.ius@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: ndesaulniers@google.com
Reply-To: ndesaulniers@google.com
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

--0000000000004a6b5805b34f7586
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


Nov 4, 2020
-----------

Tom Rix clang-tidy for tree wide fixits
https://reviews.llvm.org/D90180
Prodkernel rollout underway
DWARF5 WIP
https://lore.kernel.org/lkml/20201104005343.4192504-1-ndesaulniers@google.c=
om/T/#u
Pixel tracing issue
https://lore.kernel.org/lkml/20180725202238.165314-1-salyzyn@android.com/
Re-fixing again now via SELinux
Pixel upgrading clang version
-Wvoid-pointer-to-int-cast
SYM_FUNC_START_WEAK integrated assembler breakage.
https://lore.kernel.org/stable/20201103012358.168682-1-maskray@google.com/
^ x86_64 specific. There=E2=80=99s another patch already in mainline for ar=
m64, and =20
another sent for perf.
Stack protector
https://reviews.llvm.org/D90194
https://reviews.llvm.org/D90348
https://reviews.llvm.org/D90353
LLD offset bug
https://reviews.llvm.org/D90520
IWMMXT
https://sourceware.org/legacy-ml/binutils/2006-07/msg00324.html
http://read.pudn.com/downloads78/ebook/297953/WirlessMMX251669_devguide.pdf
CrOS thumb fp unwind bug (userspace specific)
GKH bug report related to io_vec
https://lore.kernel.org/lkml/20201102135202.GA1016272@kroah.com/
Probably not the last we=E2=80=99ve seen of this bug
Kees is streaming on twitch!
https://www.twitch.tv/keescook/about
https://www.youtube.com/channel/UC6zmTkbgwe2q6l6TNjABSCg

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0000000000004a6b6f05b34f7589%40google.com.

--0000000000004a6b5805b34f7586
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>Nov 4, 2020<br /></h1><ul><li>Tom Rix clang-tidy=
 for tree wide fixits</li><ul><li><a href=3D'https://reviews.llvm.org/D9018=
0'><span style=3D'text-decoration: underline'>https://reviews.llvm.org/D901=
80</span></a> </li></ul><li>Prodkernel rollout underway</li><li>DWARF5 WIP<=
/li><ul><li><a href=3D'https://lore.kernel.org/lkml/20201104005343.4192504-=
1-ndesaulniers@google.com/T/#u'><span style=3D'text-decoration: underline'>=
https://lore.kernel.org/lkml/20201104005343.4192504-1-ndesaulniers@google.c=
om/T/#u</span></a> </li></ul><li>Pixel tracing issue</li><ul><li><a href=3D=
'https://lore.kernel.org/lkml/20180725202238.165314-1-salyzyn@android.com/'=
><span style=3D'text-decoration: underline'>https://lore.kernel.org/lkml/20=
180725202238.165314-1-salyzyn@android.com/</span></a> </li><li>Re-fixing ag=
ain now via SELinux</li></ul><li>Pixel upgrading clang version</li><ul><li>=
-Wvoid-pointer-to-int-cast</li></ul><li>SYM_FUNC_START_WEAK integrated asse=
mbler breakage.</li><ul><li><a href=3D'https://lore.kernel.org/stable/20201=
103012358.168682-1-maskray@google.com/'><span style=3D'text-decoration: und=
erline'>https://lore.kernel.org/stable/20201103012358.168682-1-maskray@goog=
le.com/</span></a> </li><li>^ x86_64 specific. There=E2=80=99s another patc=
h already in mainline for arm64, and another sent for perf.</li></ul><li>St=
ack protector</li><ul><li><a href=3D'https://reviews.llvm.org/D90194'><span=
 style=3D'text-decoration: underline'>https://reviews.llvm.org/D90194</span=
></a></li><li><a href=3D'https://reviews.llvm.org/D90348'><span style=3D'te=
xt-decoration: underline'>https://reviews.llvm.org/D90348</span></a></li><l=
i><a href=3D'https://reviews.llvm.org/D90353'><span style=3D'text-decoratio=
n: underline'>https://reviews.llvm.org/D90353</span></a> </li></ul><li>LLD =
offset bug</li><ul><li><a href=3D'https://reviews.llvm.org/D90520'><span st=
yle=3D'text-decoration: underline'>https://reviews.llvm.org/D90520</span></=
a> </li></ul><li>IWMMXT</li><ul><li><a href=3D'https://sourceware.org/legac=
y-ml/binutils/2006-07/msg00324.html'><span style=3D'text-decoration: underl=
ine'>https://sourceware.org/legacy-ml/binutils/2006-07/msg00324.html</span>=
</a></li><li><a href=3D'http://read.pudn.com/downloads78/ebook/297953/Wirle=
ssMMX251669_devguide.pdf'><span style=3D'text-decoration: underline'>http:/=
/read.pudn.com/downloads78/ebook/297953/WirlessMMX251669_devguide.pdf</span=
></a> </li></ul><li>CrOS thumb fp unwind bug (userspace specific)</li><li>G=
KH bug report related to io_vec</li><ul><li><a href=3D'https://lore.kernel.=
org/lkml/20201102135202.GA1016272@kroah.com/'><span style=3D'text-decoratio=
n: underline'>https://lore.kernel.org/lkml/20201102135202.GA1016272@kroah.c=
om/</span></a> </li><li>Probably not the last we=E2=80=99ve seen of this bu=
g</li></ul><li>Kees is streaming on twitch!</li><ul><li><a href=3D'https://=
www.twitch.tv/keescook/about'><span style=3D'text-decoration: underline'>ht=
tps://www.twitch.tv/keescook/about</span></a> </li><li><a href=3D'https://w=
ww.youtube.com/channel/UC6zmTkbgwe2q6l6TNjABSCg'><span style=3D'text-decora=
tion: underline'>https://www.youtube.com/channel/UC6zmTkbgwe2q6l6TNjABSCg</=
span></a> </li></ul></ul><br /><hr /><br />Sent by http://go/sendnotes</bod=
y></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000004a6b6f05b34f7589%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000004a6b6f05b34f7589%40google.com</a>.<br />

--0000000000004a6b5805b34f7586--
