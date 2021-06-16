Return-Path: <clang-built-linux+bncBDYJPJO25UGBBENZVGDAMGQE5W7L65Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBDA3AA512
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 22:18:26 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id t7-20020ad45bc70000b029023930e98a57sf442591qvt.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 13:18:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623874705; cv=pass;
        d=google.com; s=arc-20160816;
        b=c7/+JnguA0TcRJW+AWAIQWIb75uTpIDor6JwkYlUae6B/Ai7lw/0rJ9KkCOjpK0sJY
         EqhrIcaiA6NlqVuEExMg7bOKyS4DCpQnbvZjh1Bwlc0FlG5+R5wFF1vVZRH6tlomPdAJ
         aQyx+8QHQ15YoyRZLiXemUWplsLjVEiIR304bYGqfvexQrRyI10ezJMECPS3O23RBCxY
         9LedfeQr+x5AHxAvVyQRdAqMeoqnMYKHsUVtUg1U4oPfsiIPXWpGDSbK3AhON04T96PP
         NfTeVYu/fmM35XMZNhkhsapWZcwLfZuxkmlR+HUFrzNDdHPzJyCPQ0TBuxpl09HpHMq8
         LSfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:from:subject:date
         :message-id:mime-version:dkim-signature;
        bh=rrNL00QcuumtxAYMxdJs00KPsOU50pYMM2bGy6GRHoo=;
        b=A2t4bwxsBy0GOBNXfOGCjcjN6o7iRAZYDbG14blOUS5ZQRJ1LA1BvADK+GUeHzJlre
         PMpDJ7xx9Qtoo2jR6VAWkNQ5jQRdnLKiA83w7jLQvHGZ4Vh188S9BZNK/DkRjIiAiYTU
         pxq3e8QwdrHl4UUCDznVJ1d/gLnO98jWYqKDSjVkhWFnOvWn9LMmhStal60h9xqnw8mK
         QYSHcS2YFiTkYRaiDaP/9q4TRvV4DuhzlEmUIwsCJHkFa22tcxX279XpnzUMhXY+NcLK
         HGHOREwGXjppzFqqRIIIoZYgwkSDxsGTxLSPCA8y+6qlimTM6uAjqKdZmtRh5rXZPRqm
         qQ3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EuGBMz71;
       spf=pass (google.com: domain of 3kfzkyawkah8qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com designates 2607:f8b0:4864:20::a47 as permitted sender) smtp.mailfrom=3kFzKYAwKAH8qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:message-id:date:subject:from:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rrNL00QcuumtxAYMxdJs00KPsOU50pYMM2bGy6GRHoo=;
        b=EJPhGaenlLn9fUBrHMltWbBvAkzWRPOeTvetSFryyoX2Ff0wMo4kMT51jW3kqeuY4M
         3ncNWBsI7k8hk9tJ65yhidAKDOPygjXbIDqN5YlBZILhCb5iqlp8uItjqYfKlEJm5vCo
         /R4L7YAZ+f8FocXLYkO4L0xR9G8tpGhwr0WJCxyGB7YxUtszCBg1u7z66e+qdW14sh4s
         Eo0M3GaeWq46zBhnX2+AfIwwxYsbfG/XTC/biTIPElTmrza+7b2mk2/vCN/ITjLwvChk
         jSP75RmOHqYTbnwTWnZbbMCjm4DgypbqsOnWGvOlkvaZTObr96xmnBgrpU3ydiRE42z8
         9NSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:message-id:date:subject:from:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rrNL00QcuumtxAYMxdJs00KPsOU50pYMM2bGy6GRHoo=;
        b=Pr7Djy7ZmQY/iT1LQPyErPzceRWAqypRacMOOxjqPCtJgsmWdPpjOlbiQrFPokfbwq
         qjBWXzq0RuocmsCEPO/KTy3JEXOQeUd5Ev3vbFIfKGLD1nKRnnD19OOiYb1Ls6sS+coF
         iMVSQ6S5J4ubfVCh1XCQOYa+bRhkKciCqfgI/neqJaHjX7OfE8hiWT/17lpKQl5LmpCX
         PEZEIfq+m9Sx+HHqaW2kwmUkJmCRz08DGmfws89zx7pFl7Jxl9MQZSaCtOz9Wv5R2cPw
         UIhqaZUoent1zoNdNCRDmdcGg7vGfsULAR2HCAodcnxkkLZeLTkmwGHvI8/uGLNO+e/3
         aimQ==
X-Gm-Message-State: AOAM531r4d5wyed19mB0V0QptHTshHeJVW3j4wvrk/HAZQqSr3IJNNrI
	wOslsI031W0UPzPcKUSsAc8=
X-Google-Smtp-Source: ABdhPJz1FaSSXd1tUdkuTN3D1xnXs4wxUors/iVf9d1tl7aQKvmkuMVCSGDep3GlLkFWyKpS7vpQaA==
X-Received: by 2002:a05:6214:f22:: with SMTP id iw2mr1867522qvb.27.1623874705247;
        Wed, 16 Jun 2021 13:18:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a08d:: with SMTP id j135ls2526252qke.3.gmail; Wed, 16
 Jun 2021 13:18:24 -0700 (PDT)
X-Received: by 2002:a05:620a:28c1:: with SMTP id l1mr109024qkp.387.1623874704735;
        Wed, 16 Jun 2021 13:18:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623874704; cv=none;
        d=google.com; s=arc-20160816;
        b=tfTSy9L6nDTpXihxBJu86gkCzMAewmbfir1sPwJCZnQ1my+kCnbShf46E3VB6XWWST
         j5bVud2qk+MDFjpMOJqg4Uzyigeskfx4afifUMGAunh0m+3Miep0cp9yteZDVBmSh3aQ
         ywmhHaiKh4tLIs5x4+AGSegs3CFBWOjhBvJlLZmpK69u+s0Xiv2Y/0cGjJ8++sbEqVhM
         k1nIKxA49yq94y/FrmyJaVBH4ivZKsqc3wNz6wblatiMzfgRjclckNeZKtqerMC8k2H6
         6tDlS00KIfob+FDwpEj1mJ23p458RaMikmqJKiJH0Ms+yH6R/S2dvHiqZSHJQx7A0uX4
         DjSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:date:message-id:mime-version:dkim-signature;
        bh=8hI66pGpym/lErLZduFGZuw6YCRUu70eS3YLb08iH7o=;
        b=lPNmNiNoGcEpXz8iDrya7KifUdGawwt7eYKIp4hHLQ1YEwdOOBfwAOrLMwONzfYV7O
         sHwnhnzeFOM+fhdQ+0ZWDtkIJinB4w+BUGYd4O+cLnT2QE3vRmR7avgMKMJDuK8FOJn8
         tDTtbAmY0rULINIuvVkcopDN9Wx8tc0vomRrv0xl0sC6n6EGKCRhR9i8FFPV/fvhSfUR
         a64r49gCrgZw59VBLF2Aj4Q+AjrMWoCrBjHvkFm5PN+aIayELGAwq4AvRYzLR0NYzi6A
         ZB2mANsEu+y4TvbVVMbkxbx85CGBjRce3YE0pK3EpyZhzNXHknvoZte8uff6pAybzoya
         a7lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EuGBMz71;
       spf=pass (google.com: domain of 3kfzkyawkah8qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com designates 2607:f8b0:4864:20::a47 as permitted sender) smtp.mailfrom=3kFzKYAwKAH8qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa47.google.com (mail-vk1-xa47.google.com. [2607:f8b0:4864:20::a47])
        by gmr-mx.google.com with ESMTPS id o23si26849qka.0.2021.06.16.13.18.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 13:18:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kfzkyawkah8qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com designates 2607:f8b0:4864:20::a47 as permitted sender) client-ip=2607:f8b0:4864:20::a47;
Received: by mail-vk1-xa47.google.com with SMTP id g198-20020a1f20cf0000b029023d152b0cdeso964376vkg.19
        for <clang-built-linux@googlegroups.com>; Wed, 16 Jun 2021 13:18:24 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 2002:ab0:2751:: with SMTP id c17mr1855975uap.83.1623874704192;
 Wed, 16 Jun 2021 13:18:24 -0700 (PDT)
Message-ID: <000000000000e7b8f405c4e7caaf@google.com>
Date: Wed, 16 Jun 2021 20:18:24 +0000
Subject: Clang-Built Linux Meeting Notes - June 16, 2021
From: ndesaulniers via Clang Built Linux <clang-built-linux@googlegroups.com>
To: ndesaulniers@google.com, android-llvm@google.com, 
	clang-linux-fellowship@google.com, clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000e7b8e405c4e7caac"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EuGBMz71;       spf=pass
 (google.com: domain of 3kfzkyawkah8qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com
 designates 2607:f8b0:4864:20::a47 as permitted sender) smtp.mailfrom=3kFzKYAwKAH8qghvdxoqlhuvjrrjoh.frp@maestro.bounces.google.com;
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

--000000000000e7b8e405c4e7caac
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
Content-Transfer-Encoding: quoted-printable

http://go/clang-built-linux-notes
Meeting: Hangouts Meet


June 16, 2021
-------------

RISCV
https://reviews.llvm.org/D103539
LTO
https://reviews.llvm.org/D104342
PGO
https://reviews.llvm.org/D104253
(GCOV) https://reviews.llvm.org/D104257
Bunch of objtool fixes last week (3)
https://www.phoronix.com/scan.php?page=3Dnews_item&px=3DClang-PGO-For-Linux=
-Next
Working through last minute approvals for plumbers MC
Started discussion internally about =E2=80=9Chardware for hackers=E2=80=9D
Distributors conf & CBL meetup 2
https://lists.llvm.org/pipermail/llvm-dev/2021-March/149234.html
#clang-built-linux on LLVM Discord

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/000000000000e7b8f405c4e7caaf%40google.com.

--000000000000e7b8e405c4e7caac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style> h1 { font-size: 1.2em; font-weight: bold; } h2 { font-s=
ize: 1.1em; font-weight: bold; } </style></head><body><a href=3D'go/clang-b=
uilt-linux-notes'><span style=3D'text-decoration: underline'>http://go/clan=
g-built-linux-notes</span></a><br />Meeting: <a href=3D'https://meet.google=
.com/yjf-jyqk-iaz'><span style=3D'text-decoration: underline'>Hangouts Meet=
</span></a><br /><br /><h1>June 16, 2021<br /></h1><ul><li>RISCV</li><ul><l=
i><a href=3D'https://reviews.llvm.org/D103539'><span style=3D'text-decorati=
on: underline'>https://reviews.llvm.org/D103539</span></a> </li></ul><li>LT=
O</li><ul><li><a href=3D'https://reviews.llvm.org/D104342'><span style=3D't=
ext-decoration: underline'>https://reviews.llvm.org/D104342</span></a> </li=
></ul><li>PGO</li><ul><li><a href=3D'https://reviews.llvm.org/D104253'><spa=
n style=3D'text-decoration: underline'>https://reviews.llvm.org/D104253</sp=
an></a></li><li>(GCOV) <a href=3D'https://reviews.llvm.org/D104257'><span s=
tyle=3D'text-decoration: underline'>https://reviews.llvm.org/D104257</span>=
</a> </li></ul><li>Bunch of objtool fixes last week (3)</li><li><a href=3D'=
https://www.phoronix.com/scan.php?page=3Dnews_item&px=3DClang-PGO-For-Linux=
-Next'><span style=3D'text-decoration: underline'>https://www.phoronix.com/=
scan.php?page=3Dnews_item&px=3DClang-PGO-For-Linux-Next</span></a> </li><li=
>Working through last minute approvals for plumbers MC</li><li>Started disc=
ussion internally about =E2=80=9Chardware for hackers=E2=80=9D</li><li>Dist=
ributors conf & CBL meetup 2</li><li><a href=3D'https://lists.llvm.org/pipe=
rmail/llvm-dev/2021-March/149234.html'><span style=3D'text-decoration: unde=
rline'>https://lists.llvm.org/pipermail/llvm-dev/2021-March/149234.html</sp=
an></a> </li><li>#clang-built-linux on LLVM Discord</li></ul><br /><hr /><b=
r />Sent by http://go/sendnotes</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/000000000000e7b8f405c4e7caaf%40google.com?utm_=
medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang=
-built-linux/000000000000e7b8f405c4e7caaf%40google.com</a>.<br />

--000000000000e7b8e405c4e7caac--
