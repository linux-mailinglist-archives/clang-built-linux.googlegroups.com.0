Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOGUXCBQMGQEKYSX5TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 51981357735
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 23:55:06 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id p18sf110702pjo.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 14:55:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617832505; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8zKJES8A9MFNT0hj1hZP15A+Av20eUc78MYVHF1aj9FnxisnM77v++OuWyBYQInTO
         hE+MbWrTcT22il+vuRxfcO5+iJ3feIEKokxXdaJqHwfkuFL/EZAWlt/NUlehH7a9Qyf7
         e+l2DaElXc4/sxVKlLB+xoWmqeb0Uz62+WPa/vghNA6rFrysRK2P+Jw3urlVr7BkK02I
         fJDzQQZq9HDe3tWp+E0O58kox063n9XU8TC3mhYxYEd2xXjcqqDri40KXTsTombodO3v
         kITMB2LSBX/egbayjtLzRG3nt1S1nuFTDVqo08ecCVIhXH8eRuloMLB/vmQC8vW6MGxR
         ZUBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=Eat6bD8+poz6GpUIU5CQS+7NgihF9qYPxqxFk9gn088=;
        b=UsRrL3sfzfLlK5/nz/+PcbUFHoPFP2OUi13+Z7oSrwUQ3cTgZu7lwF1OIjDS+pTtwl
         m2L8sQaPQ50sFJAk/Ctqzg6irJn1EEL9mgj/Ik9uyGiVq0JBmyNn3LnYvQM5JlDN94oV
         CVpqNvtGwFlqeybg4POUYlHZ13kPiYfz7ArUAmKI2XfCSAoOn8bKHcujvsHFgUF1Zy+g
         33SlUT4v7E9ir0247VFgK1wP7IZW7JSnSmQEtekLRyC5fJLbIxWuU8lwTlemSd429QBw
         4c5UvBK7RX6U23pipCOPkzfNLfBqqaTxcI0ZHSxigHSPs77EjhY5muUqoo/KBgf0V7ju
         GB/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HDFNn3Qk;
       spf=pass (google.com: domain of 3nypuyawkae43tu8qa13yu78w44w1u.s42@maestro.bounces.google.com designates 2607:f8b0:4864:20::c46 as permitted sender) smtp.mailfrom=3NypuYAwKAE43tu8qA13yu78w44w1u.s42@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Eat6bD8+poz6GpUIU5CQS+7NgihF9qYPxqxFk9gn088=;
        b=K2YabGx9CO8c5lStU96SKDtbpozwzTHEQBTytd00BjaZFKkIoCDJ+NKEX8NyxSQtvR
         UzpiFOmKJnLko+X5SqObMVR3jkboed98/nZprwyeAq9ZtIgVnMRwQ9o8e8TYJO8OWLb2
         jiz1O4LkiSZTqr1v70+L+XigN0HeAyouXoRoY9yJUlTpJwcLZrRbwLxYESdV9bSA6n4u
         +UjEq/I6oKug+P0KlDxZEqm3j63uu4DHfMABq1dD2CY9d67/GcC5XnzW3ZDPCvskFsdm
         iysTAWWd9qkTHxuV3jjYc5DB9U607NuakhVU2wdGfzUCFfscsFmPRzZyqhk6hSXYc47M
         LqOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Eat6bD8+poz6GpUIU5CQS+7NgihF9qYPxqxFk9gn088=;
        b=tC39dZDoexiqJcZn7jrwGYowWz0EjzDdD7cD9KkRoEwz+QgQuC6BDNqIfMtoLmfsF7
         17Gki8JAsr25PNoIHxdlNSXqIzxVI6ioWnEqwUn8YO3NdCvfgO0We8k0/Q/IHpbALBLP
         9TPnZH2qDfhqvMTL9kMbWXnwK3JEhT9zyUHaMNnPwm0BLTOjNYU87KMpCXzUSKyycA31
         UhABQzt9UumBGoa6V4OibZi6hZheu1urcnzrHVYw1QcuYFTXG+6NloMxZNquMxN/x6te
         LSmkQ7vkKXGSKJ+p6vIuMpUUlYIqEfO0FRVWz5uauS+hDMOD3OibWmmOwmHcRe/IIJDH
         GM8Q==
X-Gm-Message-State: AOAM532ynAd0bs69L4sXy/44sIuFXY5X909yExw3aoFXl9qfXLJksIfs
	rkBfg0F3F/VrpfOpUicvkB0=
X-Google-Smtp-Source: ABdhPJwPl5ocOriSnJqUsRcYuYLfZI1JUxzPJCcjW7ofHpAh+8LqJchMTGCm9j33+ZTeCo64TrsGmQ==
X-Received: by 2002:a17:90b:d8b:: with SMTP id bg11mr5214944pjb.120.1617832504902;
        Wed, 07 Apr 2021 14:55:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ab81:: with SMTP id n1ls1954168pjq.3.gmail; Wed, 07
 Apr 2021 14:55:04 -0700 (PDT)
X-Received: by 2002:a17:90b:3884:: with SMTP id mu4mr5264888pjb.128.1617832504401;
        Wed, 07 Apr 2021 14:55:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617832504; cv=none;
        d=google.com; s=arc-20160816;
        b=lyVeIE6LmQgowm0XCzpUvk7biyCDh2gYtke4PiWii5ONEhSWamZLvDCbRMAFMQfTsM
         YWB8Nf00BMi0w/InJHkOlF+WBll4m+zil+qc1EvsV/CuO/tPqgoa5IJOfJPSwQ828TZa
         Y34pSRrKRcuict8kwGpGPcVkbAwhTR3e6L2GQpQ907MMEFNnxfHfKRHSuqx6ges5iccD
         wB/JfafSk7w2X8Pzn3rPP+Bmp4G22HbqP6kWoUvs8BG/yIVd22IUguTIw8OmeWaE9KCv
         pk3Aqw10thEcBQ3nP7DoJIInPLq00u8ZLZwrNsVUqXl2+EQm+gU3RNP2hoPLgFrbVfkN
         JVYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=qSj9pasGcwUW0kxOzwgtuS7lG6H6RxBTdiXFr8AgLuQ=;
        b=pWf/ICATf3nkznZ67rGcqsaS5k9UywyyEr/8qbfJG2GNnniPQKBxnryGYWoN3b+NzZ
         2UEgAqs8ub/BDjMSzE+9fDXhlLRErKTqVCCCPjMJT9klGRHaJOZr80TBsQyCEUtrIfXo
         iEN6HHUsphudtTbLdgOaChnZk9NYDV8iTrojPq6rEVqrXgOJmvCg94PLLQ9rNUADVlfs
         hNAjiv7UiLTVE/62H2HiA6XWDXrx1E9yvYoDwVUQ2snCNSK72EvXhRsA07xk4g9SmICl
         4I6lTiI0UExQk6OakucJFp3Wnw9j+UIhpy2h6YOVQG+skitsZrcUSdFNAHOtv4zEzkNa
         BdeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HDFNn3Qk;
       spf=pass (google.com: domain of 3nypuyawkae43tu8qa13yu78w44w1u.s42@maestro.bounces.google.com designates 2607:f8b0:4864:20::c46 as permitted sender) smtp.mailfrom=3NypuYAwKAE43tu8qA13yu78w44w1u.s42@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com. [2607:f8b0:4864:20::c46])
        by gmr-mx.google.com with ESMTPS id r2si528408pjd.1.2021.04.07.14.55.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 14:55:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nypuyawkae43tu8qa13yu78w44w1u.s42@maestro.bounces.google.com designates 2607:f8b0:4864:20::c46 as permitted sender) client-ip=2607:f8b0:4864:20::c46;
Received: by mail-oo1-xc46.google.com with SMTP id z140so21775ooa.10
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 14:55:04 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:aca:4d8f:: with SMTP id a137mr3735555oib.132.1617832503488;
 Wed, 07 Apr 2021 14:55:03 -0700 (PDT)
Message-ID: <000000000000adaf6505bf68fbf2@google.com>
Date: Wed, 07 Apr 2021 21:55:03 +0000
Subject: Clang-Built Linux Meeting Notes - April 7, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000adaf4e05bf68fbef"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HDFNn3Qk;       spf=pass
 (google.com: domain of 3nypuyawkae43tu8qa13yu78w44w1u.s42@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::c46 as permitted sender) smtp.mailfrom=3NypuYAwKAE43tu8qA13yu78w44w1u.s42@maestro.bounces.google.com;
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

--000000000000adaf4e05bf68fbef
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


April 7, 2021
-------------

KCOV broken for CFI (Nick)
Missing debug info, but __sanitizer_cov_trace_pc should probably also be =
=20
__noinline.
https://github.com/ClangBuiltLinux/linux/issues/1338
Working on 2 fixes for LLVM.
GCOV broken in clang-11+ (Nick)
https://lore.kernel.org/lkml/20210407185456.41943-1-ndesaulniers@google.com=
/
Arm32 IAS patch (Jian)
https://reviews.llvm.org/D98916
Pahole patches
https://lore.kernel.org/dwarves/YG3SYoNWqb8DlP61@kernel.org/
RISC-V
https://github.com/riscv/riscv-elf-psabi-doc/issues/183 R_RISCV_ALIGN
Alignment issue in blk
https://github.com/ClangBuiltLinux/linux/issues/1328
Plumbers
Submitted MC proposal for =E2=80=9CToolchains and Kernel MC=E2=80=9D with J=
ose Marchesi =20
from Oracle=E2=80=99s GCC team.
Drop clang-10 support?
Clang-12 maybe released next week?
Can next debian still include clang-10 for kernel builds?
Can tuxsuite fetch clang-10 from apt.llvm.org for now?
CFI needs help testing
V5: =20
https://lore.kernel.org/lkml/20210401233216.2540591-1-samitolvanen@google.c=
om/
Gcc implemented support for asm goto w/ outputs! W00t
https://gcc.gnu.org/git/gitweb.cgi?p=3Dgcc.git;h=3De3b3b59683c1
Compare_exchange
https://godbolt.org/
https://lore.kernel.org/lkml/YG2fQ1tGDIMhyIHe@hirez.programming.kicks-ass.n=
et/
Building perf with clang has some issues

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/000000000000adaf6505bf68fbf2%40google.com.

--000000000000adaf4e05bf68fbef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>April 7, 2021<br /></h1><ul><li>KCOV broken for =
CFI (Nick)</li><ul><li>Missing debug info, but __sanitizer_cov_trace_pc sho=
uld probably also be __noinline.</li><li><a href=3D'https://github.com/Clan=
gBuiltLinux/linux/issues/1338'><span style=3D'text-decoration: underline'>h=
ttps://github.com/ClangBuiltLinux/linux/issues/1338</span></a> </li><li>Wor=
king on 2 fixes for LLVM.</li></ul><li>GCOV broken in clang-11+ (Nick)</li>=
<ul><li><a href=3D'https://lore.kernel.org/lkml/20210407185456.41943-1-ndes=
aulniers@google.com/'><span style=3D'text-decoration: underline'>https://lo=
re.kernel.org/lkml/20210407185456.41943-1-ndesaulniers@google.com/</span></=
a> </li></ul><li>Arm32 IAS patch (Jian)</li><ul><li><a href=3D'https://revi=
ews.llvm.org/D98916'><span style=3D'text-decoration: underline'>https://rev=
iews.llvm.org/D98916</span></a> </li></ul><li>Pahole patches</li><ul><li><a=
 href=3D'https://lore.kernel.org/dwarves/YG3SYoNWqb8DlP61@kernel.org/'><spa=
n style=3D'text-decoration: underline'>https://lore.kernel.org/dwarves/YG3S=
YoNWqb8DlP61@kernel.org/</span></a> </li></ul><li>RISC-V</li><ul><li><a hre=
f=3D'https://github.com/riscv/riscv-elf-psabi-doc/issues/183'><span style=
=3D'text-decoration: underline'>https://github.com/riscv/riscv-elf-psabi-do=
c/issues/183</span></a> R_RISCV_ALIGN</li></ul><li>Alignment issue in blk</=
li><ul><li><a href=3D'https://github.com/ClangBuiltLinux/linux/issues/1328'=
><span style=3D'text-decoration: underline'>https://github.com/ClangBuiltLi=
nux/linux/issues/1328</span></a></li></ul><li>Plumbers</li><ul><li>Submitte=
d MC proposal for =E2=80=9CToolchains and Kernel MC=E2=80=9D with Jose Marc=
hesi from Oracle=E2=80=99s GCC team.</li></ul><li>Drop clang-10 support?</l=
i><ul><li>Clang-12 maybe released next week?</li><li>Can next debian still =
include clang-10 for kernel builds?</li><li>Can tuxsuite fetch clang-10 fro=
m apt.llvm.org for now?</li></ul><li>CFI needs help testing</li><ul><li>V5:=
 <a href=3D'https://lore.kernel.org/lkml/20210401233216.2540591-1-samitolva=
nen@google.com/'><span style=3D'text-decoration: underline'>https://lore.ke=
rnel.org/lkml/20210401233216.2540591-1-samitolvanen@google.com/</span></a> =
</li></ul><li>Gcc implemented support for asm goto w/ outputs! W00t</li><ul=
><li><a href=3D'https://gcc.gnu.org/git/gitweb.cgi?p=3Dgcc.git;h=3De3b3b596=
83c1'><span style=3D'text-decoration: underline'>https://gcc.gnu.org/git/gi=
tweb.cgi?p=3Dgcc.git;h=3De3b3b59683c1</span></a> </li></ul><li>Compare_exch=
ange</li><ul><li><a href=3D'https://godbolt.org/'><span style=3D'text-decor=
ation: underline'>https://godbolt.org/</span></a> </li><li><a href=3D'https=
://lore.kernel.org/lkml/YG2fQ1tGDIMhyIHe@hirez.programming.kicks-ass.net/'>=
<span style=3D'text-decoration: underline'>https://lore.kernel.org/lkml/YG2=
fQ1tGDIMhyIHe@hirez.programming.kicks-ass.net/</span></a> </li></ul><li>Bui=
lding perf with clang has some issues</li></ul><br /><hr /><br />Sent by ht=
tp://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000adaf6505bf68fbf2%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000adaf6505bf68fbf2%40google.com</a>.<br />

--000000000000adaf4e05bf68fbef--
