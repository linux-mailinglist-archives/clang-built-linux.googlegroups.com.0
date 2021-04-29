Return-Path: <clang-built-linux+bncBDYJPJO25UGBB77JVOCAMGQEYCJRJ5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2FE36EF46
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 20:03:44 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id a19-20020a194f530000b02901ae58050516sf14787642lfk.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 11:03:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619719424; cv=pass;
        d=google.com; s=arc-20160816;
        b=eCS4F+oTLwhIgEwEO6wdOu0BWkLmhGbdn3pRKbOXvwo7NDKjzKBOAZ9eObSlcCWdNP
         zq44bpuDThmuSSxaO0v6xY3m5qchtwAzFf93sriGwrBLAgqiPEikZVP/kMBYZ026XzT/
         IGYIA4CS7i2CGDLoJ4KFdmgskcSXs/B+YlCmQJC/2vXwVIZDshn1zvkQYGI50o5u3d7U
         C5dx8zPWiDg1PnzdVElumBft0V/FsBX9W5KKPbQDunhDbiXFMRO+xWJ7csETb3vt14fV
         KEMF6fnLQokzumSvKOadUWw4N8W7mQBa45HkpzWm5UUCT9jiKDJapOfLQWqzHOWFj2ex
         58KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ke71LCNHCa9OtoXriQtyq4FAQ2nXexWb03POy/Lv8hQ=;
        b=QpXvZWkpss4vswR2J8WdgBSPka6t0R/KmZRI1UfgWiyrIn8AOI7/Hv2RcijKhyCFM7
         jwQy2l2/9VYiDPyIuc3jX5ekY/Ad9epUyGA68gUAqoh/ttomVHT8ElweenhXTuloncU3
         uo1q14v2JAz0LnuTiqOjNxYHCiWC2dHzz6z9L2v67s8IJTyvYDHCPw/prc4tCg+ouZcw
         W8vY/6Xvu3+gx6UwII1w2dpNDu41Fe6dycdFRkb2WfKTnq6c+LMS5CyxX7cFgUBgbFF7
         z6KwnfLenzvmDXnv1uWIiqZcaAM/Z3ubzPneJ+7K25JQ0+b0JWUTsLRMhGPV/2lYKLsu
         770Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qq6adNp7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ke71LCNHCa9OtoXriQtyq4FAQ2nXexWb03POy/Lv8hQ=;
        b=BesiwmmPUTZnrPxppUjHjG+lXFwCQTY6DoNFRI+5B649q3qZ5vgbv9bffqXfS7uXkg
         v/tTSCb4k0cjjPd11qa4DP6pm1i0hifjiDmoTT/8krwomxw2yaBr5Nf9sL46wRDljt7n
         qy1V5q1FhBucPdsNRgMFBxzLpUlY4mGd8xw1owXKpEc4G1cXVFRH90tbxCePKhdZXO4e
         oxuFJTibDT3OPfC3IYAp9D2Odbf8eJ9cP/tyUerd0N+mdVCDnx/kfASobzx2rhJ2c73n
         K52SHXqOxKrKBcmhKqWgRPpv4STUDZJH0R5rRpB3pc+NXf3nftK1P7O7Ro5sCDghbuXR
         SVUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ke71LCNHCa9OtoXriQtyq4FAQ2nXexWb03POy/Lv8hQ=;
        b=RrET9Hr4MQqf6241nqgJNRZzJCKYPt/NMty2hqRqpv9QUkLd2BUiAvKTpBJfVcyxNA
         L/FZjURuYdrbhwO+2npT25oDsGum3mHWRfI11M1nRaZURvpWC2IQwamg/Afhx4JxKESj
         MSP58defUYk/aFJ3fe62jrQI1e6YcomzMGlldZKJiLJaVnSXQVz7OZCET1HbI7JTVEfO
         AUyThO+ErQEX5FZ46Yh/5fJ8YrHoVqFSjTcwAyJb3+OUBIhoYahlUxfyW9ozqlu6pyJ1
         ndUkSNOOjX61yqsVmissaspl5tq3vkKkV1ru+RFspw9SZfFj93ahFqm4Lm9HKKj1rNpQ
         CxmQ==
X-Gm-Message-State: AOAM531lxzZOi40itWD76GwZY6bErvLph+AxZ3ftM3DX7fCmE7rVfscH
	1I9kz5IqoWGEQof5qZvi4Js=
X-Google-Smtp-Source: ABdhPJxzLdtvLz6R3iQIziHhAxCDJ7/JSrzK69qhA4DNvQeLvX8wTHUTOP82AF0f94+sMSa0CM+4DQ==
X-Received: by 2002:a05:6512:22c2:: with SMTP id g2mr514130lfu.535.1619719423946;
        Thu, 29 Apr 2021 11:03:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls806841lff.3.gmail; Thu, 29
 Apr 2021 11:03:42 -0700 (PDT)
X-Received: by 2002:ac2:568b:: with SMTP id 11mr510728lfr.393.1619719422916;
        Thu, 29 Apr 2021 11:03:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619719422; cv=none;
        d=google.com; s=arc-20160816;
        b=fSlyoH64IsUH1reyw9IwzLiU9Vrr3/FGG7jisfKHT1TpEh1TrEcBMJg4lSaW2qGolo
         8nt+IY3IKHkbuKZW6JT83s96200AO1ENHUCtE99EiVXfvCiFY1KOnDrIEmYHbsXHarUX
         padedKbtNafsk/WzHRJ+nbcNW+0gRFpF+iTJNCVDUZNM2Xg38cGMS60130KPbby848kU
         aUaFoadDUZ5XWte0AOeEK9ubN/nJQ2pAKCfX8qz+U2XfL2zn7BmDhLsQ/UDGXyxuYwcI
         lDLw71nKAma8hteNqE3ylkfay5WfNkLRFQyGhVCloKiRUbkjacSBE8GMHZPSSkpyNfns
         366A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=s9uDfH8JY6HBWGKtuN2PBCKnwq8M1pisFd01fd+J+Og=;
        b=dOMtH6EuRB0EXShBYyVY4ByjA2UUoUXY0Va6jwqrcVmcglqWa1Xn1YG1kmw7iN3DfR
         HTzsXuY8yMtsekFXmsejaBM8QLxNbR25jKq8m8N8HWKMfc9DZDS7+OwbHT2jY+Ci+dTn
         DhdcDlXzF6O36CTEU2IxisucVbQMfHmWwRKo/xdFVK64PhKk8UDu3dQqKg3kZIoZ4bbe
         sUa6vPQ7Vse1WCZ08Q1T7ce1M25F//CPa/oI8A0YKAT9kcAG5riFBElaC9TV1ZlVEqUs
         1sLz20kPPROl4C/ERWxmyJbCx1axIHefe9ASAuT/NDwheFy4IJ3RXpIeRjPrLhxe3EJh
         OJ+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qq6adNp7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id b2si206060ljf.0.2021.04.29.11.03.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 11:03:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id j4so66743370lfp.0
        for <clang-built-linux@googlegroups.com>; Thu, 29 Apr 2021 11:03:42 -0700 (PDT)
X-Received: by 2002:a05:6512:74b:: with SMTP id c11mr581350lfs.374.1619719422513;
 Thu, 29 Apr 2021 11:03:42 -0700 (PDT)
MIME-Version: 1.0
References: <1619345754-32875-1-git-send-email-yang.lee@linux.alibaba.com>
 <CAKwvOd=-NdUHevj9eBtKmihL8D0BSVyiOr9pMUNMYTWm1Y=KGg@mail.gmail.com> <421ff56c-1aef-c244-00c9-9ccd0894a571@linux.alibaba.com>
In-Reply-To: <421ff56c-1aef-c244-00c9-9ccd0894a571@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Apr 2021 11:03:31 -0700
Message-ID: <CAKwvOdm0+WNHdbzOm18wJR8f3xFvAKuuwDxouNJj94g67ET=9A@mail.gmail.com>
Subject: Re: [PATCH] fs/ntfs: drop unneeded assignment in ntfs_perform_write()
To: Abaci Robot <abaci@linux.alibaba.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Huckleberry <nhuck15@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qq6adNp7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Thu, Apr 29, 2021 at 3:30 AM Abaci Robot <abaci@linux.alibaba.com> wrote=
:
>
> =E5=9C=A8 2021/4/28 =E4=B8=8A=E5=8D=882:54, Nick Desaulniers =E5=86=99=E9=
=81=93:
> > On Sun, Apr 25, 2021 at 3:16 AM Yang Li <yang.lee@linux.alibaba.com> wr=
ote:
> >>
> >> It is not required to initialize the local variable idx in
> >> ntfs_perform_write(), the value is never actually read from
> >> it.
> >>
> >> make clang-analyzer on x86_64 allyesconfig reports:
> >>
> >> fs/ntfs/file.c:1781:15: warning: Although the value stored to 'idx' is
> >> used in the enclosing expression, the value is never actually read fro=
m
> >> 'idx'
> >>
> >> Simplify the code and remove unneeded assignment to make clang-analyze=
r
> >> happy.
> >
> > Thank you for the patch.
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Is there someplace where I can learn more about "Abaci Robot?"  I'm
> > happy to see it running clang-analyzer. :)
> >
>
> Hi,
>
> Thanks for your review, and I am also very happy to see your interests
> on Abaci robot!
>
> Now Abaci robot has a simple report platform, but a user-friendly
> website will need some time to build for tracking patch status and
> community response. If you want the recent report found by
> clang-analyzer, we can send you :)

Thank you, but I can run `make clang-analyzer` myself; my intern wrote
support for that in Kbuild and I reviewed the patches, so I have a
good idea how it works and what it looks like.

But it's news to me that anyone is running it, continuously, and
fixing reports!  That's great!  Is there a website that describes
_what_ Abaci Robot is, or what it's running besides clang-analyzer?
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdm0%2BWNHdbzOm18wJR8f3xFvAKuuwDxouNJj94g67ET%3D9A%4=
0mail.gmail.com.
