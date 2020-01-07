Return-Path: <clang-built-linux+bncBD66FMGZA4IJFGWP6ACRUBDQIGPX2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id B6137131CAC
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jan 2020 01:13:07 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id h18sf1405489ilc.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Jan 2020 16:13:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578355986; cv=pass;
        d=google.com; s=arc-20160816;
        b=XGkSz0KleQwJdFd3NtObItXNC+h7Dt/nTBXMRXpKxWEcuGbjqLt75dlqPn8tiGLQg2
         bGv1v9EWvJZZHc7hC14aZplX5TjBpjG8ADkkTSsrj056OWu66QmD+587zAvr/lChznq3
         4lye7SPopfYzKmkSViZdSeDEd93903Zd8rY6Mjs81lQK+BO7jlgtgD2UwSG8/JZBPN83
         kuooPJdYWFuL2cSRZrCgisxyLbWGlWBHoBGULgseNX/8tZFncDqSHnTcl3G/QG33oQBy
         aXANElIACY45axOeAK8+rcjt4EYfX4DaytWrmmYvHiA23NMoMRHZJfkVz8ReyeOOdhi+
         fBiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=cqtfWHHRmUGI+BxlGCMNn5yML1lMEXvWecfMd2w0RCQ=;
        b=ms9LJwWkcHqU6D7vrfJxE/QkcJdqpWm9Rc8Td3tGOKXc8x7kHSiYxB5sJxVyn+qS5N
         nLXJeqxM7MMTG2xJEdDI2YqIY8sbxvVkbx6CZYqW2Dbv4q8IAXs8JyphZ1mHJ7BOTZoN
         UMvF9P6Azqf4iFp3cndst8j+5B86DXXCfwSLXyqWTaFJ3y6VYwWjgUtjN06Xc1y9hVXy
         Aad3vxa6wZxWm+yY7w0bYuPl1VQxI6RN6WakW3d7Zje4I5YQ/r1wOU2exMWjSQ9jf+rD
         q+NYqj7Z3UY6mdjoPs9tVsJh2D2RVD5f7FF6UC8ZUwPTQIKzl/odSWrLVJCntYDUd6k/
         GRCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JcRylbeF;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::92f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cqtfWHHRmUGI+BxlGCMNn5yML1lMEXvWecfMd2w0RCQ=;
        b=Yqm17TR+Q23k2B16ELF4CJ8bca+tfpQshllWZF32r4or+Kk/nnYwiAa6okobxlnKxI
         7zbzceZnVrOKWpl9/nm8tU5qLBlLK3NaMoh5S5xGDA5hMcPVXTjPn6WovQGKBotBjhf8
         iT6CkskZ9fzntC/NnlsP+1vEPYnAvPE3WwVNGMfii6qqHBD7sjQJ8VyArpYC8NiNtgWr
         YS4uI3W8GUvmSKdR3QaGHkIiTHSiQ2K7qaDssvT384EVHUPDxr/A6GhpYwhKKs8lulH1
         U9ClFOIiiccOmW5Vaz2shBLTS24/n9jSbuAppzJ4Eujm4lmBkKYqcfo/VqDz/ZF24Ca4
         KOuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cqtfWHHRmUGI+BxlGCMNn5yML1lMEXvWecfMd2w0RCQ=;
        b=LPvDYLgcdN1StedCOQ6F26cHlYbYrnOkRubw+E0wbQiSm1DLKojdIRKn5ujJFaVzpz
         EgpzGTfv8W0I+sBT4icfNvGuVH1rAtD8DpS8lUE02yFL/+afK8xioEs+F77PwfDLdl/e
         BJVi9PH8UcRVhP/TVL3I0Gfj+Xe0FR8jtc0VLmc+a+BAxRy+MMw6ZWF2/qJwFRt8Qbqn
         a5RdKqUtIm/sSBNJdZkFxbq93he4f01WWxwir2jmdF9rtQDKYpeKcwEg65QnlecLMmpu
         izD9IR6T0NJQcHcsx+0AuqMC1OzLOJZ8tSAPlK7fChT+9YEovwych/gdsWvYS0c0fGkM
         xSyA==
X-Gm-Message-State: APjAAAVkeWS117y2Apnuee9Usev2ZJnLmWO3+004vzs5/SHVVnDa1ahk
	DEDND0kXCJM9HxFLx5i19q8=
X-Google-Smtp-Source: APXvYqx+xsvVruPfBXYJDXAbwjuKwDBSwt3A/GJiji/5Vn3kso/TmyndsblZjP0+Rr0wp96gE3L+cw==
X-Received: by 2002:a92:8309:: with SMTP id f9mr90198158ild.50.1578355986648;
        Mon, 06 Jan 2020 16:13:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ad0c:: with SMTP id s12ls3519805jan.1.gmail; Mon, 06 Jan
 2020 16:13:06 -0800 (PST)
X-Received: by 2002:a02:cd9c:: with SMTP id l28mr80837437jap.46.1578355986297;
        Mon, 06 Jan 2020 16:13:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578355986; cv=none;
        d=google.com; s=arc-20160816;
        b=JuLoeeyc8sZTK3cSgqYfydNUhClDtZc8V8KNX8EWd6k0WBTt/O9UZZ+CCz6o90ysR/
         +NgaNsZS75Px+NbbF5CUYvz+6jvGdvH3VxixwHdxeiYA9uQyPDdHk4gU1c5A2ZlTO9kZ
         Dm+Y26eMlCAis+nfWWcEc8eKw+PBhd+FD0gzPiOjiQ6MGIMCRJ4j45gg0KMYv7cliqnf
         FRLcK7Ib9OFBzmh2dgz4F6lHoHKvX7+sAE/Ji1wLvGHHNt8PagGGzLxDeoXER/AFCeJ9
         1y/8G18sPINOx1C4bFyV2MaNlyw76KsI8xc0E7rCxijsKI2+XntG5iGmLfV46CvfF4vV
         Rbdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=UDfACuUgtg3GWFyX0RF4sK54OKgcRhSQ/wdhJYcZhGQ=;
        b=igj4J46HMVue4FXyBgAdDsP7rT8VwfuzAoF5iIcmUKDtaXIdJD8r+spkJYb2b6W0Dk
         stsnkqdtxM/VOxzNPQS52z4YPttb2Hg8vvXQKHF/siEGjwlnd3NVqFYG8dIdBFOvZe1J
         APwdmiV54sLWvU6x8LxM26ACIhkyME3AXG3EheEDSpDzzhbFPWpKiwvHtfvyf6i1TbWC
         CQWZDlBt9fYGQw8AMIOc9qn6Os2Z6Q3LsmT3E/UaktzZy2bHopzG1YpRGTUt1jiA3Hc7
         4OAza/iX8M7zgSLX6kz3HHEl2Ukr/8ITl8O7K7KGeZurpPdoplPgXoF3jqacNZ5agWRL
         MEGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JcRylbeF;
       spf=pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::92f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x92f.google.com (mail-ua1-x92f.google.com. [2607:f8b0:4864:20::92f])
        by gmr-mx.google.com with ESMTPS id h13si1020238ioe.5.2020.01.06.16.13.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2020 16:13:06 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::92f as permitted sender) client-ip=2607:f8b0:4864:20::92f;
Received: by mail-ua1-x92f.google.com with SMTP id y23so17818225ual.2
        for <clang-built-linux@googlegroups.com>; Mon, 06 Jan 2020 16:13:06 -0800 (PST)
X-Received: by 2002:a9f:24c1:: with SMTP id 59mr58223051uar.75.1578355985240;
 Mon, 06 Jan 2020 16:13:05 -0800 (PST)
MIME-Version: 1.0
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Jan 2020 16:12:54 -0800
Message-ID: <CAGG=3QWPyO3jY+-Py8LwEG5g-ZULu=Of6i0NRaOseHLdx2n66w@mail.gmail.com>
Subject: BTF
To: clang-built-linux@googlegroups.com, 
	clang linux fellowship <clang-linux-fellowship@google.com>
Content-Type: multipart/alternative; boundary="000000000000d4bf25059b81a367"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JcRylbeF;       spf=pass
 (google.com: domain of morbo@google.com designates 2607:f8b0:4864:20::92f as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

--000000000000d4bf25059b81a367
Content-Type: text/plain; charset="UTF-8"

Has anyone come across this issue with LTO + BTF? It looks like pahole
expects all dependencies to be in the same compilation unit, but LTO places
them in separate CUs.

$ pahole -J .tmp_vmlinux.btf
...
tag__recode_dwarf_type: couldn't find 0x15663 type for 0x1d19
(inlined_subroutine)! tag__recode_dwarf_type: couldn't find 0x15689 type
for 0x1cfb (inlined_subroutine)! tag__recode_dwarf_type: couldn't find
0x15625 type for 0x137aa (inlined_subroutine)! tag__recode_dwarf_type:
couldn't find 0x15625 type for 0x137d8 (inlined_subroutine)!
tag__recode_dwarf_type: couldn't find 0x15663 type for 0x13b32
(inlined_subroutine)! tag__recode_dwarf_type: couldn't find 0x15663 type
for 0x13c4c (inlined_subroutine)! tag__recode_dwarf_type: couldn't find
0x15663 type for 0x13c94 (inlined_subroutine)! tag__recode_dwarf_type:
couldn't find 0x15663 type for 0x13cdc (inlined_subroutine)!
tag__recode_dwarf_type: couldn't find 0x156e7 type for 0x13d24
(inlined_subroutine)! tag__recode_dwarf_type: couldn't find 0x156e7 type
for 0x13d4d (inlined_subroutine)!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWPyO3jY%2B-Py8LwEG5g-ZULu%3DOf6i0NRaOseHLdx2n66w%40mail.gmail.com.

--000000000000d4bf25059b81a367
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Has anyone come across this issue with LTO=C2=A0+ BTF? It =
looks like pahole expects all dependencies to be in the same compilation un=
it, but LTO places them in separate CUs.<div><br></div><div><span style=3D"=
color:rgb(32,33,36);font-family:WorkAroundWebKitAndMozilla,monospace;font-s=
ize:14.625px;letter-spacing:0.208929px;white-space:pre-wrap">$ pahole -J .t=
mp_vmlinux.btf</span></div><div><span style=3D"color:rgb(32,33,36);font-fam=
ily:WorkAroundWebKitAndMozilla,monospace;font-size:14.625px;letter-spacing:=
0.208929px;white-space:pre-wrap">...</span></div><span style=3D"color:rgb(3=
2,33,36);font-family:WorkAroundWebKitAndMozilla,monospace;font-size:14.625p=
x;letter-spacing:0.208929px;white-space:pre-wrap">tag__recode_dwarf_type: c=
ouldn&#39;t find 0x15663 type for 0x1d19 (inlined_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15689 type for 0x1cfb (inlined_=
subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15625 type for 0x137aa (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15625 type for 0x137d8 (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15663 type for 0x13b32 (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15663 type for 0x13c4c (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15663 type for 0x13c94 (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x15663 type for 0x13cdc (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x156e7 type for 0x13d24 (inlined=
_subroutine)!
tag__recode_dwarf_type: couldn&#39;t find 0x156e7 type for 0x13d4d (inlined=
_subroutine)!</span></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAGG%3D3QWPyO3jY%2B-Py8LwEG5g-ZULu%3DOf6i0NRaO=
seHLdx2n66w%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QWPyO3jY%2B-Py8LwEG5g=
-ZULu%3DOf6i0NRaOseHLdx2n66w%40mail.gmail.com</a>.<br />

--000000000000d4bf25059b81a367--
