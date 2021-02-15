Return-Path: <clang-built-linux+bncBCCI5LFKZYOBBZVZVGAQMGQEYURHMBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id EC53A31B817
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 12:37:11 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id v16sf6411317pgl.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 03:37:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613389030; cv=pass;
        d=google.com; s=arc-20160816;
        b=U8s+VPsJsdyiClJGLXb0DRFjhnFhO+QuRolmu5rgBeUTzGl+43xEJsU/HkpPmMQR0x
         7j3Cp21NKklsN9AyJ9fZ4J1qU2AvYxcdjD7YAt5JEf/h+uSdFma6woRQubbVTbfrt3IH
         oIuTmrZnWrhBuKSsOg+7M1e2nPRGBN03V/RsH22J4FhfMeQNZ5j3qpRe7eW4muiPRgxV
         JyrQviZojoCzpHqdOomBL/qlfCuDKedMY+VsECb0dgR+y9qBol38bkzBr5I1MaNfQ+xX
         ixIghixc6i6P1CP/MjYdTfi1SkCxonVcDWpo1Gw8Iq1KX/TEkIiQo30i9clWZPDB4b5d
         eN0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=6+Y2qcvNCOgFSAeAKAAJFVJttF6NtNBwf51uid+AdlU=;
        b=I5bEEcOVGq9d78a3bFqpFkdtwENjERqzOktXc8jmTGF9pOghGJsgVjp5f/hN16RSes
         jWIdW5OwFxO+fSFFAhmAwoN2whd8oqgSWwEwTzTnn9i0NYIw9BbtUhxWtJ3stxLMJZpw
         +GQ8g0UYxoHVA+Bnan504eOqrO/AYqLu9GgjbatKFqQZK54ZLtD2Nq3wpn4WhdpbdVAo
         PbSbSoSiqUxq4UW8qLOfN6+UTXuEfMrGMNumCiO6RBTnGWvMjxwfrzZNNd5R91jSTMAy
         2JaHaR4nSO19KAnkH4jwWDSgly5tq8501KVlb4qlKippRt2qtI1McaBES/YkOvuOgUww
         d4Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JOG10Mwg;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6+Y2qcvNCOgFSAeAKAAJFVJttF6NtNBwf51uid+AdlU=;
        b=BxG8UBDt7T90trgaUct54x/bAXssISAWIgxIlNKyA1YzBjgm+hnict7WHULhCqOtq9
         r8ug5TNZ2KNNFoslIjOXkHILMrD6qsxy62Q/f+EXOjeVZqXr/Xs/kFemCknk5+GKMWnU
         nzRvbDus4Ma+UwseAwdRRMKxx0jVI5TIy7TZfvQykWebxUzRZ+AjtP80YeP9LvSgLFb9
         ppiRRWokX6PwI0u/Og75d0OBlJZK9KLncw80jOlQjga8/XL689V9eUS0O4Ms0f9iNeHO
         DCvWQ3qbGQk5hcEHm3OnLIJ1J+DHmTWIq+6tL3vICWAQCebM7TgKepN6rOAvTspKYsBq
         uZlg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6+Y2qcvNCOgFSAeAKAAJFVJttF6NtNBwf51uid+AdlU=;
        b=VHRcsXPcyzfYUfI9T3Jk2BLvdlieYE23g+CC2ugBlPlTEGPxMLDWjjSniN8gmgI0+b
         XChOaxyj/qKo6Sz2nZfhwFoHeFk3xQSpkXLK5RxFBZGg8Hq5weyfl+2HNrPlavEkzuIb
         TynncnPhR1ZQUnLOrzv4msqq8l8IskXv/mKuzmdXVb+95xbN7J60Y6RDv8zLwGPuYb1F
         eVhYuf7JZIy04nuMTLRL/t4OvBR6GWM4dKKDDtFjVlNnJ7NPrl7Lc9jzs7CKvsD7UvuR
         9WuiuSR7CF8vyTNLGJi7ArwnW3wsrHe5Uj0q2HJ+iQGg0J1X7F57jAisEDqWiKUnMr9a
         OjmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6+Y2qcvNCOgFSAeAKAAJFVJttF6NtNBwf51uid+AdlU=;
        b=Fb53LtRc15HNTgu/wPauWv5eQYAAdZq3aO+ZnDcDp6cb52RcSaHf90jlcGCAv6Aafn
         waSr028eVTvzpLPcIjHt7TwAJLhYrFqfFfjoR9L+8k4xffvyhQPyKFKq+/tKX2q4cwbG
         sh2Q6rrk5I9WTNdvWlyvksBWcG3Hg8L9D0NTAyl4L1SxspP5NeLUWE/LTZD2zFPdjB1r
         z1kJgBpEWuGScQbU5ayNCuRsW/t7br7T/7hlg9JuhsrbsYhaJedCgJjBLAk81CCcVTTY
         8SyBjh7I+nWFLT0tPBPph13roGSLZ11vl944bCogrErq9CtmAJqINdJkwgorbKPnL+yd
         0stQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TT36mXRncANV5kvFQeduIDCmu07JJRu5YSvR2pG6XH94bajpM
	a2e8PZAW1EoHRckp10jzw34=
X-Google-Smtp-Source: ABdhPJxt1FZrTC+kbu0iC9vteWNuUtSJXpgDAR5gHbLLh/FjsdA8EYvh0ZoZmS8M0+VGE6grquh3Rw==
X-Received: by 2002:a63:ee4e:: with SMTP id n14mr14444664pgk.422.1613389030448;
        Mon, 15 Feb 2021 03:37:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2249:: with SMTP id i9ls6370886pfu.6.gmail; Mon, 15
 Feb 2021 03:37:09 -0800 (PST)
X-Received: by 2002:a05:6a00:22d1:b029:1b4:9bb5:724c with SMTP id f17-20020a056a0022d1b02901b49bb5724cmr15171964pfj.63.1613389029898;
        Mon, 15 Feb 2021 03:37:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613389029; cv=none;
        d=google.com; s=arc-20160816;
        b=pkNrwz3V8hBKaBhXpr28ok24osXCWKakWPgNnzKMyNrxCTjdDS3j+zDL/lBrnyb4Js
         mF//ev/OtDLhTvnD+WT7HXmdfJTKB+weH70kkhLdphl3lZPavwt/VtVMjO9FlmLiPGyT
         2V+wM/+asvAreXMckkqH0K2CzS9lOH3EIIR91cJENqUrHVbtNwO9/xM447ucsBc5VWk4
         NKlNOtG0wcc76va1G9t26zeXNZJfVK7gwyLu95N004sSndkgnwI7At5C82ZMWKx2XNc8
         Yw58pVt3xth6GsrhxRW+k0PPgXXTQtZSDpKLQbqXRaxpkBCAnNfj/1wslFj5nDwth58h
         oxPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=B+jVS23cudsZ3/C7Np0YEsBLyRvAeO7S41/Z3TysYA4=;
        b=de0XqqMtw9l3r/Cjk04OFwIOhJYULixaCOKW18558BH/IPLD249MgyydmYm63VNz4E
         5VzIno4LddQIrSyw79IUEm2fPxdYsRL5fRfY83XJwKRu2+PAmfOESawHKykDDLL/7gSY
         /qeQofjiqlQg7eGY80YOMeaXllxBSgJUL7F2hol+SHM46unRqXlaIFe0oL5RQpMLc+W5
         NURSqrp8AHN/C+m9yYdUdklLi4AtAWUa/rdyh8D8EmiR8l237eDkj9sTGuBsmB9clVFh
         O0CNb/vPqohmq5hHAVclukzxO6niWicVe7iLMgCxOXlJWQ2AOwiaJL2JuWTDkWw9Dmbq
         gViQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JOG10Mwg;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com. [2607:f8b0:4864:20::b2e])
        by gmr-mx.google.com with ESMTPS id a128si208999pfa.1.2021.02.15.03.37.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 03:37:09 -0800 (PST)
Received-SPF: pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b2e as permitted sender) client-ip=2607:f8b0:4864:20::b2e;
Received: by mail-yb1-xb2e.google.com with SMTP id 133so6844552ybd.5
        for <clang-built-linux@googlegroups.com>; Mon, 15 Feb 2021 03:37:09 -0800 (PST)
X-Received: by 2002:a25:e08b:: with SMTP id x133mr12997895ybg.138.1613389029240;
 Mon, 15 Feb 2021 03:37:09 -0800 (PST)
MIME-Version: 1.0
References: <20210208195439.GA1097868@ubuntu-m3-large-x86> <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86> <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
 <20210210182400.GA3502674@ubuntu-m3-large-x86> <CALuz2=eSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew@mail.gmail.com>
 <CAK7LNAT+CG9zqPpYLoy9_1eA4caZWzxyQACcOrhbg9zfArEwPQ@mail.gmail.com>
 <CALuz2=ck_=M6Dd8oFgWxnRGdipWOsdL2KODZQSmodh2N7Z8T-w@mail.gmail.com>
 <CAK7LNAR06H3Ue5SG3=6u1veyjg+kXXb2isEBsHVQEtMMJ3d2Tw@mail.gmail.com>
 <CALuz2=fHXZ=NrVdRNzyromD88wp9pAzYC9nffPt6y5YM=sJniw@mail.gmail.com> <20210214232820.GA55343@24bbad8f3778>
In-Reply-To: <20210214232820.GA55343@24bbad8f3778>
From: Stephen Zhang <stephenzhangzsd@gmail.com>
Date: Mon, 15 Feb 2021 19:36:58 +0800
Message-ID: <CALuz2=e6F62G8z+tupLnSMT6gFi_St7EQHF-1ZPvQfGb2Ndirg@mail.gmail.com>
Subject: Re: [PATCH v1] clang_tools:gen_compile_commands: Change the default
 source directory
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Tom Roeder <tmroeder@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: stephenzhangzsd@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JOG10Mwg;       spf=pass
 (google.com: domain of stephenzhangzsd@gmail.com designates
 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
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

Nathan Chancellor <nathan@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=8815=E6=
=97=A5=E5=91=A8=E4=B8=80 =E4=B8=8A=E5=8D=887:28=E5=86=99=E9=81=93=EF=BC=9A
>
> This will actually work for the regular build system as it uses the full
> path to the files when O=3D is outside of the source tree. My comment
> applies only to the tools/ build system, which Masahiro has explicitly
> said he does not want this script to support.
>
> Cheers,
> Nathan

Thanks for the clarification. I start to get what you mean.

Cheers,
Stephen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CALuz2%3De6F62G8z%2BtupLnSMT6gFi_St7EQHF-1ZPvQfGb2Ndirg%4=
0mail.gmail.com.
