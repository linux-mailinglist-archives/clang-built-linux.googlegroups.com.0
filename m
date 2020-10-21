Return-Path: <clang-built-linux+bncBDYJPJO25UGBBW6NX76AKGQERLWYCOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBA0294910
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 09:44:29 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id p3sf791479plq.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 00:44:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603266268; cv=pass;
        d=google.com; s=arc-20160816;
        b=kgIroMoUBE2gQbvsLQzBO2Y1aVg0rrHF1Ryg6EBA6JUxe016y6koShyaejIoQRIdvV
         X0Wcoe4nhem5W4EHZukBn4i4YMaL9z55SKEK3ABqEp20KJS+pSRT94dJtAZTYm9Ko+SF
         sFtI+ZzAwwr3iIoWEN21fDH3/80+g/Rx1CxoSVrSyuDd1MWAgeNEFUKb7z8QCh6NzpMu
         lCnhlQyN7PzZ5SMJWQzjh4TavPUaBwat6kijdaHUEjxtFzuqCFlG/ZiTrmBWjFib37rW
         el9zZmsSL+Ox7eNiPamU6lEcdKB+h1HV1HxGAo6BB6P1pqvoTmyaAEI5azVcgLvb9hA0
         rn8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=t5fj75KMmWB7UCAY9qG93fFaNFcHr7l+TRD0AU/oRBA=;
        b=llpfc4h1vsI6qUlSmyMbl79yRoPQ3KmgelcrFp8b1qut4gkjdNqfsZoacmxVYXDZMu
         QK45kXfhc01jmf7b4R5LvRMe2r7XV+m3bM6zEa2dbQ+PAJh72j71n8A50uxgaZqdT28Z
         k24cmwp75ffahsn86lqQpzE6kHU0yvDJ8xXAnQ6N4Yh1Pghde+MY5xRQ2vLCH3BK6EoI
         H+bK0RFejH5KUvPHnBqQ1oD7NGgNln6vdZgmaPNpHkeeulYfnxD873Gll+EgK9K6XqR8
         HFboQJ0x77F+vmoZnxyjr2vnkG8smXmm/W0dYMlnOXBfT2JxBHWfbmzHbcwhiuADCBdq
         As9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YjbWQOEP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=t5fj75KMmWB7UCAY9qG93fFaNFcHr7l+TRD0AU/oRBA=;
        b=EgIdvB3+ZUwwfneb38dSfGyY921A1IQTL3qyReYqcax7itPIa1kLDz9PotK8TW66oQ
         VzQdpFCFZz0CRy+ge0qTiAjVGrfaXi+F0ZlKm18B0oRVTCKlJ/zUUWgCSsqA4udo2c42
         qCzIFz0LXFxe63QgeTVZQXQNw+xXdS3LrmIEniJ3IeBqYMbHzHijaT0euScvy37X5Gyk
         R1DKTzrls/xPBRlZrGlaYi/D3z74Nr3iuVhcA0aZDY2xF06Zfxz22FjAptvDcldFG5BX
         uRB/CVgh/EEWNgEqK8/o+sS+S4Z70IgWdgI9tHHJIsOMNLGFTjfTxSLRDFq2RlbTvkjC
         rgMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t5fj75KMmWB7UCAY9qG93fFaNFcHr7l+TRD0AU/oRBA=;
        b=O+VjKZohq1qVOVdoSz+eTeUCw9Vi029YkTh4F3bJ8sslM7Nxg7Ubf10EgmlnRejza6
         jtAMgBX59uznJfCw6uDoj1YiL7PDzrIglXffmf9mQ1ed8FuJuI+UdvXk6Z+DTsKP/8AH
         VFdEeWk6D/0hKwGodTTVaTzgc3amK0RvURuvOw/w1ZMB/0BIFSN41OnA7OqXOScmLCEl
         UPwJwp8m3QMN/qmnmXT3h9P9tEILsUl+l1+w72kGvtAMkvwJplgYXSWdtRoO6RHkDJ2x
         xhQYDeN11Lo4C330IhC5/Ym782uxhJQtsVheK/KglroTcgbROCH/ow2EjmdgdBdkiHrg
         gUHg==
X-Gm-Message-State: AOAM533Rw7C9ysYFcoq5str3+VBrAOM4pr7n+E41DMgioPcUzLku4LX1
	r59pQJf0231ivYDOSbSjrBw=
X-Google-Smtp-Source: ABdhPJz8JcrY22mt/Ho0oPcu4y+TFnPn7Hg+1ZLGXGLuPmGAtK2IwBxtc0uwXClaD9PcRjRh+mDYcw==
X-Received: by 2002:a63:fb4a:: with SMTP id w10mr2146239pgj.285.1603266268098;
        Wed, 21 Oct 2020 00:44:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:86d4:: with SMTP id h20ls1764690pfo.7.gmail; Wed, 21 Oct
 2020 00:44:27 -0700 (PDT)
X-Received: by 2002:a62:7d4d:0:b029:152:1b09:f34 with SMTP id y74-20020a627d4d0000b02901521b090f34mr2329238pfc.76.1603266267538;
        Wed, 21 Oct 2020 00:44:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603266267; cv=none;
        d=google.com; s=arc-20160816;
        b=zj03gDYZqkelCaXba/qq+l3f1E1nLoU2LORU/tZYO+/OmdB5Scr4uDFe6oCunpWHdy
         gVa9z3k1OFOxH/kRZiDgVvlrtbTp5V/wtX76tyAmBgmr2fcO3LzNsA/lIEjGdwbvJwqp
         hf9Vg2vd8ftvS4yF0Z1hDkD/DB7WwS4r3/PqnDFQzlF5XA7CwoROOVE7eODpybwQekE+
         TmzafutPW5RKs3haoB7ZHT97bknCMVsg4p8ciNDUeAR/bgJ/+VuNGDdw1VOaHqpqsoEd
         6lwWP1Z/xbD0UH/TfJfULPeAmZrihbA/rmI1UyL66+3/RIG1KBCVxoXhTxVN5J3B0Oh/
         L41g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8rCNeZIAThrw7g6BokzhBxxYvaD30bGZJoy6BAULZGU=;
        b=I1wqnpKAJPSC0zqMP2xwKha+3T5knn3nLcisdNT9j1VYsNUeMn7yx1c3AdgaNBjnrS
         FcqEJTBAmwLuzVS+K1JaC8EGB0aiwofKXCGZQYl2MXTDOLX13sXxvZNOOow5c3WRPVPn
         kRBG/2aZyQTs1DjRE2HipAeXX5hsh9MhvWX4o+4NVSvLV9Tt+yb2YS33Q0itjIpCbCIE
         unmquK6MFBAcipiy3NPq5pf4Hf+cP5RiaD5jBMQqFhfO8NyMkUeKFXFv1SVyKbk8BgXL
         L5HYd65s8PIApcr9ust+c7DswIOLjBNdj/GykA6vVD+o483wK4YrlKIhyGqnY1c95wNY
         yPjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YjbWQOEP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id j63si67072pfd.1.2020.10.21.00.44.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 00:44:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id y1so788863plp.6
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 00:44:27 -0700 (PDT)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr2139253pjj.101.1603266267025;
 Wed, 21 Oct 2020 00:44:27 -0700 (PDT)
MIME-Version: 1.0
References: <9263a93d-bbaf-451f-9c2d-369351a3ee76n@googlegroups.com>
In-Reply-To: <9263a93d-bbaf-451f-9c2d-369351a3ee76n@googlegroups.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 21 Oct 2020 00:44:15 -0700
Message-ID: <CAKwvOd=d=OnY=SH7jowx-79J=ows4D1VDr=YX69fZxnK02nQAA@mail.gmail.com>
Subject: Re: Userspace coordination on ClangBuiltLinux GitHub space
To: Tom Stellard <tstellar@redhat.com>
Cc: Clang Built Linux <clang-built-linux@googlegroups.com>, 
	Bernhard Rosenkraenzer <bero@lindev.ch>, =?UTF-8?Q?Tomasz_Pawe=C5=82_Gajc?= <tpgxyz@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YjbWQOEP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62d
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Oct 20, 2020 at 6:42 PM Tom Stellard <tstellar@redhat.com> wrote:
>
> Hi,
>
> I'm working on doing builds of  Fedora packages using clang, and I'm tryi=
ng to find a way to coordinate this work with other distributions so that w=
e aren't all fixing the same bugs.  I would like to create a GitHub repo fo=
r storing build-fix patches and also tracking issues for userspace projects=
.
>
> I could create a new GitHub organization for this, but I wanted to see if=
 this community would be interested in hosting something like this in the C=
langBuiltLinux organization.
>
> I don't have a strong preference either way, but it seems like there coul=
d be some benefits of sharing a space for this with the ongoing linux kerne=
l work.

Tom,
It's a great idea, go for it!

Some things I'd like to see:
1. encouragement of newbies to participate. tagging good beginner
bugs. example: https://github.com/ClangBuiltLinux/linux/issues?q=3Dis%3Aiss=
ue+is%3Aopen+label%3A%22good+first+issue%22
2. involve OpenMandriva folks and encourage other distros to
participate.  I'll try to bring more Android and CrOS folks to the
table.
3. Let's consider use of "teams" in github to split folks with access
to userspace vs kernel?  I probably should stop granting folks owner
rights at some point...also the default of "watching" each new repo in
an org in GH is a PITA...

You have the keys (access rights); go for it!
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3Dd%3DOnY%3DSH7jowx-79J%3Dows4D1VDr%3DYX69fZxnK02=
nQAA%40mail.gmail.com.
