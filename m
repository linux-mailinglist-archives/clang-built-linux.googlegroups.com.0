Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRPNXT4AKGQEGXMJ5HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 802C5221316
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 19:03:02 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id 64sf1253714oob.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 10:03:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594832581; cv=pass;
        d=google.com; s=arc-20160816;
        b=Heb4EMQPwZ7FWt0lDZb3fCiOQ5MacGxRMtzaOxvrZgxzNlef69p/3iL5PPaZdzKIUE
         9hysiKwtNcZtNkSgg3HT8o3n3p+Y94HCsk3c1h+bMG2WK2J5AT5YC+oCa3HP7JeIliVt
         iE0XpbuVDyFD8Ak8mRfAV++Gx8qiGmN/6AcBSu39ogCyKtIWqv1tKUNIT0S0/kV8eWKi
         ttFW+KNtt1ubbHAxsdl/3/tPAAa7CYZecPFznqBOwtiGvusyArivHoDFgmxoYZgeEsZj
         QMVm47fnUBeSnTbv3JxEmKNE2RwvoGi6dNilcKuEaTUfKBSh06NAHb506owBsibEmTBa
         EHaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=CKTHorpWyIY1N/9KLI1xZ9Sm6UysM1uYw2lTACr51cc=;
        b=GmWtB6zh1nzQ58RG8f1y8mQtkg+Q25hxiyzvshbKcWvCpjyRaEm/WOwzDWECfpL/Qm
         ViSevKAd5+xuQJow05XoygKo9+VKRBNi7/7X5LtUd3AsxfbeYl2l33bxjIoxQG0tjT8U
         we3VXPhZDEYse4yc3a0ouN8KiGrSmgwDPKPuXbdFuxCljft0lFo+CehTi/ur54UAVPap
         GEcvxesp2FvvxqN/14VSWW6/gs1r106N94w7UUDvX3P/6nJp1LQCgHx3J4vqh3uQdkIN
         yJ/gtZPJYozKeHpO4nRW3qdqvgpFZY/G1Ex2X444nCCpGj88KmGBgGQM/oPwztw01O4h
         8Qbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=obRDuUAd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CKTHorpWyIY1N/9KLI1xZ9Sm6UysM1uYw2lTACr51cc=;
        b=D9Z0HuPSIIXOxs5P/m/KLK0TK2hj3b57USfqTlUpsDs6j77ObJsGcr9KOH/7Vm2Ih1
         rUNZHLT0GHYz6Nn3RPdFHBvvXziCCedIcfvb4gmAk3YWsfpNsL6bpL0tFZ6TG6ZACqmA
         pxdl12XF26L5j7fy+bXMDdloF+xuHsgwppZi9dgoaTvDbmD2D0siR1eFc5EwFzhsLrjT
         berBXeDYMdPOHlgPY1SUBCcht6C9vHC40JudTce4KOyVeVCrcHVg3tfX0+GUMLKg5cL5
         4/UXlnGMn+uYsTQRsby5hejbRZYW4SblQHi2mxkKCKCkYvU2+du5dop1zYsrQEY2t2hK
         y7aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CKTHorpWyIY1N/9KLI1xZ9Sm6UysM1uYw2lTACr51cc=;
        b=DbE1IK6DQDIOOBsscoUMdIm+l9g0ukRIVUKO7Cs9HLnA5DuPWIWXUsY+v9b7/hNERO
         4+gaYOPUDbvgY3P0Xw7wIh+/gKTUegZM5DNnXTOfb3i2lvmNwnm33ljAY6U0gUFLJxdA
         1XlNos55a6Kus2jX2ev1Km5a0bJaneiNI727IH0mCvY9pntx8uQEp/9tIM90vvItmzzJ
         qIBHZGE4TVof8AV0Yb3NtP18rvNRosjqEW30P+8gpi3RMsabxOJDG1cV+s+Vgkggkh3r
         hwlAUbwM2k8L/M0f+Z6Ssfbl17Ns5JDsuv9d72LLMMHnukT8z0r9p5UCCWPJFSLSeCjJ
         gAXw==
X-Gm-Message-State: AOAM530QrVb0UInKzY427x/dMEgjcwBZnDSWtxjpq6U4SaWnwuplpy00
	eBp/wgwRUaqyqGtPVdMZ6Gs=
X-Google-Smtp-Source: ABdhPJyoGr3moUqJH4YwQ7iMGgbxBYhmj6qoTnPOdDC13hZ/FdYjOTaWDj7YHEbdKw2/Wea2Z6w0Sg==
X-Received: by 2002:a05:6830:1083:: with SMTP id y3mr533158oto.59.1594832581353;
        Wed, 15 Jul 2020 10:03:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:18c5:: with SMTP id v5ls101074ote.10.gmail; Wed, 15
 Jul 2020 10:03:01 -0700 (PDT)
X-Received: by 2002:a05:6830:1292:: with SMTP id z18mr581037otp.292.1594832581051;
        Wed, 15 Jul 2020 10:03:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594832581; cv=none;
        d=google.com; s=arc-20160816;
        b=bgulpFf3TGh9BPTWFJYa5oGSqT8XQOinDFBSf3W2NPLBMmY4cFtXiwMI5a6yj3XOjn
         txjbP+Ihd0UuBc7sjZwjj4lNVsk47gtwHpCpYgz//BHZYOkWLB4coNWYDD1ZvJr0qo2H
         Lx1Hm4IAbn4UBqYqMpyX2jzfwoqbPfIbqQ/7qmYBN5lsEvAAHd+zJNIuSKfPotDytV1j
         PxcCrHUaeni9+YdYOnWd4E1bFP4wxjXN5BC+X3NJFpnCq6SCHjA/Djqc3KRKSszitjo3
         OluGrbUhEFJ5ZR6xZ7xrth7welTR7EoBuQCZN6/EaOhiRmXwP43gKynsZyJAF+GS9Kib
         Edsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dHGDqDpJQH4YoOfT6AcOSJnWTTovtZLnMGH7dmTa0Ck=;
        b=By3yitI/ObyEUhCA2yVQ+VygEOnQfjn59zA2hC7i/UcnwYOBt8JTGCQiMrMjsJYoXh
         YDjYWgDGsK8Q+Md7Nfl7SBc67xnHAjyGYaj9tfA3nNhnfmOdFGMLZV1QFbjwzFlgP2IV
         flM7G2xeWbWrgv+62sPp8diXQ4SdYVzbReYg+BWVjsxB01a0honn7A8NsHjZM/vIub9q
         GHGEvkljNwcJNgfeFEcpOv4NKJ/wV6i2D13nncmZn5S5VyIhyVrK39wRMk1Hh1OomrIs
         obXChEWZ92KZeOY6Cc+83zJii8g+MZo4NwVcTysnUN4HulhqhbKun1P/uyE70T5siGsS
         vEBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=obRDuUAd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id d65si114113oib.2.2020.07.15.10.03.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jul 2020 10:03:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id m16so2637877pls.5
        for <clang-built-linux@googlegroups.com>; Wed, 15 Jul 2020 10:03:01 -0700 (PDT)
X-Received: by 2002:a17:90a:d306:: with SMTP id p6mr541629pju.25.1594832580277;
 Wed, 15 Jul 2020 10:03:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200715142631.GA3721@mritunjay-Lenovo-Yoga-S740-14IIL>
In-Reply-To: <20200715142631.GA3721@mritunjay-Lenovo-Yoga-S740-14IIL>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 15 Jul 2020 10:02:53 -0700
Message-ID: <CAKwvOdnTfOgxroWTOJ3RMf9wt8+CsxYCp_e+T7rfh5Y0_1RrDg@mail.gmail.com>
Subject: Re: [PATCH] Modified Makefile to print -eudyptula in the version string
To: Mritunjay Sharma <mritunjaysharma394@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=obRDuUAd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Wed, Jul 15, 2020 at 7:26 AM Mritunjay Sharma
<mritunjaysharma394@gmail.com> wrote:
>
> Signed-off-by: Mritunjay Sharma <mritunjaysharma394@gmail.com>
> ---
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Makefile b/Makefile
> index 0b5f8538bde5..d7897ce5ab23 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -2,7 +2,7 @@
>  VERSION = 5
>  PATCHLEVEL = 8
>  SUBLEVEL = 0
> -EXTRAVERSION = -rc5
> +EXTRAVERSION = -rc5-eudyptula

oh man, I love the Eudyptula challenge. I remember running through it
not too long ago.  I don't think you're actually supposed to send this
change though.  Anyways, good job, looks like you found the right
reviewers if this is a change we'd actually want to commit.

It's usually expected to have more in the body than just the online
summary and your signoff.  A comment review comment is "-ENOCOMMITMSG"
which I think is its own meme.

>  NAME = Kleptomaniac Octopus
>
>  # *DOCUMENTATION*
> --


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnTfOgxroWTOJ3RMf9wt8%2BCsxYCp_e%2BT7rfh5Y0_1RrDg%40mail.gmail.com.
