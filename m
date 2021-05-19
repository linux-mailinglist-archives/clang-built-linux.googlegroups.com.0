Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6G5SWCQMGQEIURKJBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 90701389754
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 22:03:05 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id 12-20020aca120c0000b02901e9c963da89sf5533184ois.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 13:03:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621454584; cv=pass;
        d=google.com; s=arc-20160816;
        b=FFTSdZPMZzvoHjpUqvglJQqf/nFu/ZSPXfh8DgskHyug53jqwCJfNZB1kzP6zrZdA+
         wXeCs3lYvMtOm+RPNIMKhnCqvBfXT0MO6/eZMKUxDdfVMDFk1ZsJFd2xNce156C0gbSB
         5NnkoK2KB3uk/XUHUXbh5SraJs3vER32LZ/ZvL6Fu5B2eY/rb4wg+ORhpn6ejUL+fvfa
         SncSYYgWVA2MlDOFZ6YMmVR3Fu+gObE3tsE+i8X51SxUXaRrSbdY8QrQT7jwWGmvfG3P
         GHQbE2noLnfE7ZuGwhYuPtl2Bh4bG9pc9jucTTfCHuAbJgBKMv/1/szo9QGDO2/dlZme
         dv+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=5ugvzSamdb8EhoJb7jHWwnH/c0Lzld2lQalOA3jvFqs=;
        b=C/XamumLOyZV2xYt1G6EEP2Tz2/z1NiaecPZGoPmTUhQXg/4T2jr/mL7AV0ZItyCvq
         B4jVH9ru+BWTgKrctq7i/V/YU/zPa03Y6sKzoV2KTwfKm6RSRnFnZqCKdL9JjS8E+tJH
         z7+tVUo9HaxG5V6rQBbo0g3Kc+I9asuF6pHRi/gcON9jZs7Hxmwe0+jEHh/amkarkVDO
         AIs0BQxTqgOtDDHk1/mMI3xuniC8WK/MCY6jNXO3ZBpCwbx6ZDRPRQ7GKVYH0pgC05ny
         TchEGGRH75HS6uuXS1GL09vfPyU8NqdxftpDqlrNwCcXtMnEKzYDpHkIjyRjVCBL9w6c
         kc1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qVDqesTR;
       spf=pass (google.com: domain of 3926lyawkahyhxymuofhcylmaiiafy.wig@maestro.bounces.google.com designates 2607:f8b0:4864:20::146 as permitted sender) smtp.mailfrom=3926lYAwKAHYhXYmUofhcYlmaiiafY.Wig@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5ugvzSamdb8EhoJb7jHWwnH/c0Lzld2lQalOA3jvFqs=;
        b=pb/H08GcNBkmdZV2LtR3pbnbaKeJ1VHl/Tz+cqzzG2XEjivM+zDHo7SKPBqalfK5/Q
         4BafSjmJCUiYfa5bpidmv/xfBPdPM3yvOYp/khzjGC4GPhJXdAVfOqt9yGKE5I5FxqcY
         dw9ugzSeidJSdoM91yM93jUYpBJtBqp1bL/+vVHoASsYt8WvPera0AQJ+BAXOjyrQ0jE
         WYF2qj3eQLlqdr1s1DAhQzRKPuh33IGSe2fMtlboYDyA/W5eYtc3iaOkwsuR+XJISbBv
         D9qohQ3GVF4PZF6Sv/I1MKiETKM9Fo7WPq1t6QudIHEmEflThft8OOp76rSEc0LDddsg
         5HPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5ugvzSamdb8EhoJb7jHWwnH/c0Lzld2lQalOA3jvFqs=;
        b=HTwWj4T2WGk8if6J7apTFNvvsILTu91pmRJsmTHsmGA7gvMnb2VwNddbo+6tdxenel
         gipf/7XBU1BEAT9E5A1LnJLsuKFd/OygLhZfzze7Wy4xMgz/1knI8c59fX3SfIHWALfh
         BfscDbhR8NTk2Ad8g4QnjDTeHy+g6LZrq2vsYUe4AOzOv4/D2HYcTjlOETfPpAJcFL4Q
         5R79/2c6/VGfHghW/w7I3a4AJnSXVbYMjK4vFbRMW0PoK+N4EjWb+qSDx22wVBbcJ/MG
         pcrk2d6HbVnSOdsR43kex7MwamlrOOe82VCA1f8N2j+NTMlQDZD/LJD9H+CJz3LpJF+A
         8K+w==
X-Gm-Message-State: AOAM531pbx+Cgn980F5khJSbVyaBOi6tGcVrY5nYGDSk2EuSZJhh+dh5
	RthHHT7tW57RByxF8Ydko2w=
X-Google-Smtp-Source: ABdhPJzrMtlmJoRKV1NRMMOEGpoZZqEN+KAT89PVgEojMazuTsa80qAwca/F2sREpV2ejmOoEPFkwQ==
X-Received: by 2002:a05:6808:117:: with SMTP id b23mr688656oie.7.1621454584572;
        Wed, 19 May 2021 13:03:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c5:: with SMTP id 188ls238033oif.6.gmail; Wed, 19 May
 2021 13:03:04 -0700 (PDT)
X-Received: by 2002:aca:c792:: with SMTP id x140mr720619oif.88.1621454584138;
        Wed, 19 May 2021 13:03:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621454584; cv=none;
        d=google.com; s=arc-20160816;
        b=c/jORHwaU/xDMeUg5J48u0KbG8DKm3veR0H588tLGxvL526B60rR/R1XL6nPat1xit
         ImZUQLdYL/EBbc1Uc29lHwDrAubi+QdVW31QlXg9QirZGhn6fLqbQrsfoHUIZBb6U7qF
         26P2O3Uzx1coIwCTJcz4kV1zmOMWyS0od2hCre6uMN7DMgqlevBd+HT+eoXeoJyj1+0k
         9EmtcavNRoxq38wJIS/VF6AXR7gjE/W4LA77aHDqC05uT49QVB62SVxZxm99kVruvP84
         kHd1Qt/tz6DlfsJY01cdYIKmifPugPx0blMNI+Nzw5E2HcWMmUt5egFqgz/x799u5t/p
         0wwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=aA6vYc8XyFuebmEXT66MaMjZ9jv7b2YCK/fBAF4vzRU=;
        b=DTgL7pBeN52fTDJZUzW4CNzQJ+rK75v3YSlAnhzb41wfGb6/xsutUeLait8D6XF5CG
         yfptkz23FEgcOyDQLWWpgJR0/caIcrsNn0Mgbcri/L3u814ZmZZu2rE7bIVV2t5Puq1n
         40bRxO9oI/E7Lj+MS3zvTfPu/mP9+2l3tQO/NPvLjfF5VfL13K8ZW57KpLzfz525ZVO+
         4dOelyzIuzLCUNRK3JTjpd6m57swGEpuWIXwmVX+dpqZ6IVouUWCDB3/7/LfcKONpzHv
         l1I0Mp7GO0wBUEyXmwHv6E9u2iUP8ue54EQD9U5heo71pIPiqsu6lAqkYiRxrZxOMehU
         SJkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qVDqesTR;
       spf=pass (google.com: domain of 3926lyawkahyhxymuofhcylmaiiafy.wig@maestro.bounces.google.com designates 2607:f8b0:4864:20::146 as permitted sender) smtp.mailfrom=3926lYAwKAHYhXYmUofhcYlmaiiafY.Wig@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com. [2607:f8b0:4864:20::146])
        by gmr-mx.google.com with ESMTPS id c9si80674ots.4.2021.05.19.13.03.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 13:03:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3926lyawkahyhxymuofhcylmaiiafy.wig@maestro.bounces.google.com designates 2607:f8b0:4864:20::146 as permitted sender) client-ip=2607:f8b0:4864:20::146;
Received: by mail-il1-x146.google.com with SMTP id l7-20020a9229070000b0290164314f61f5so14020045ilg.10
        for <clang-built-linux@googlegroups.com>; Wed, 19 May 2021 13:03:04 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:a05:6638:10c4:: with SMTP id q4mr919358jad.29.1621454583611;
 Wed, 19 May 2021 13:03:03 -0700 (PDT)
Message-ID: <0000000000007a664305c2b4502d@google.com>
Date: Wed, 19 May 2021 20:03:03 +0000
Subject: Clang-Built Linux Meeting Notes - May 19, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000007a662f05c2b4502a"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qVDqesTR;       spf=pass
 (google.com: domain of 3926lyawkahyhxymuofhcylmaiiafy.wig@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::146 as permitted sender) smtp.mailfrom=3926lYAwKAHYhXYmUofhcYlmaiiafY.Wig@maestro.bounces.google.com;
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

--0000000000007a662f05c2b4502a
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


May 19, 2021
------------

(Nick) Per task stack canaries on arm64 (broke LTO)
https://reviews.llvm.org/D102742
(Nick) __builtin_constant_p fix for flexible arrays
https://reviews.llvm.org/D102367
(Nick) removing GAS from Android kernels
(Nathan) AMDGPU LTO fix
(Nathan) problem matchers in github actions now!
M68k backend has inline asm support
https://reviews.llvm.org/D102585
No san cov attr
https://reviews.llvm.org/D102772
Arnd
https://lore.kernel.org/lkml/20210514100106.3404011-1-arnd@kernel.org/
Randconfig turning off COMPILE_TEST is problematic (0day bot)
Can we move some checks from sparse into clang proper? (or clang-tidy)
Broonie
LTP build w/ clang recently failed
https://release.debian.org/bullseye/arch_policy.html Debian=E2=80=99s arch =
policy
Tstellar
Rebuilding parts of Fedora with Clang
Fangrui:
https://maskray.me/blog/2021-05-16-elf-interposition-and-bsymbolic#the-last=
-alliance-of-elf-and-men

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0000000000007a664305c2b4502d%40google.com.

--0000000000007a662f05c2b4502a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>May 19, 2021<br /></h1><ul><li>(Nick) Per task s=
tack canaries on arm64 (broke LTO)</li><ul><li><a href=3D'https://reviews.l=
lvm.org/D102742'><span style=3D'text-decoration: underline'>https://reviews=
.llvm.org/D102742</span></a> </li></ul><li>(Nick) __builtin_constant_p fix =
for flexible arrays</li><ul><li><a href=3D'https://reviews.llvm.org/D102367=
'><span style=3D'text-decoration: underline'>https://reviews.llvm.org/D1023=
67</span></a> </li></ul><li>(Nick) removing GAS from Android kernels</li><l=
i>(Nathan) AMDGPU LTO fix</li><li>(Nathan) problem matchers in github actio=
ns now!</li><li>M68k backend has inline asm support</li><ul><li><a href=3D'=
https://reviews.llvm.org/D102585'><span style=3D'text-decoration: underline=
'>https://reviews.llvm.org/D102585</span></a></li></ul><li>No san cov attr<=
/li><ul><li><a href=3D'https://reviews.llvm.org/D102772'><span style=3D'tex=
t-decoration: underline'>https://reviews.llvm.org/D102772</span></a> </li><=
/ul><li>Arnd</li><ul><li><a href=3D'https://lore.kernel.org/lkml/2021051410=
0106.3404011-1-arnd@kernel.org/'><span style=3D'text-decoration: underline'=
>https://lore.kernel.org/lkml/20210514100106.3404011-1-arnd@kernel.org/</sp=
an></a> </li><li>Randconfig turning off COMPILE_TEST is problematic (0day b=
ot)</li><li>Can we move some checks from sparse into clang proper? (or clan=
g-tidy)</li></ul><li>Broonie</li><ul><li>LTP build w/ clang recently failed=
</li><li><a href=3D'https://release.debian.org/bullseye/arch_policy.html'><=
span style=3D'text-decoration: underline'>https://release.debian.org/bullse=
ye/arch_policy.html</span></a> Debian=E2=80=99s arch policy</li></ul><li>Ts=
tellar</li><ul><li>Rebuilding parts of Fedora with Clang</li></ul><li>Fangr=
ui:</li><ul><li><a href=3D'https://maskray.me/blog/2021-05-16-elf-interposi=
tion-and-bsymbolic#the-last-alliance-of-elf-and-men'><span style=3D'text-de=
coration: underline'>https://maskray.me/blog/2021-05-16-elf-interposition-a=
nd-bsymbolic#the-last-alliance-of-elf-and-men</span></a> </li></ul></ul><br=
 /><hr /><br />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/0000000000007a664305c2b4502d%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/0000000000007a664305c2b4502d%40google.com</a>.<br />

--0000000000007a662f05c2b4502a--
