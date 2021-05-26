Return-Path: <clang-built-linux+bncBCQ45GVI5EFBBWOYXKCQMGQECML3F7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D1139214F
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 22:15:22 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id f7-20020a9d5e870000b02902f479dba730sf1242600otl.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 13:15:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622060121; cv=pass;
        d=google.com; s=arc-20160816;
        b=a2vLNToMp8Tpg4PxsoHikKbtvL5WeXPpf3YA9jaEZ7QhgqohBYxj0nMuO6yoBnEtLq
         Z0jXFv5VbcLhDooY4IEr1KErh3ibV8niXoBhRgtOLBt1Sxj5xMerxvnfHS3P1gvIE2PD
         6bqeBeJDfcnNpIkov0kJ0V2UQvjQuCoK3XJ9p2RhSjBnLJlmmL5XqN9v7eg1h3dHlCQK
         q7/jg3ZPM7O9EK+CJaLsC4sQ5EvbCk8c7whg7AZ9GhBMZ7dPNl8p65bCaUH4KE5gI/uv
         /q63QTkDdbW3ezH1DRE6gPJaCHJ5sgTSRXNwtO4a/1Kw0c22KmeCYWISWDHoEhIamuqL
         Le2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=YZ0w92qvqlc7O2Cnsp4BYMCZmkub99VCow9743aUurg=;
        b=kema4pdCwNf+5/mWhxm8rRVbbodJjD98BrvjbogfJ6PLV5wY2sgg46IYMpiBZtZb9c
         O42IGClvTffisiwz0YcwI2yI6IjSnUFqG4sjSng2GahEa30yxs1e8bUuFND6KHTjWne2
         0QA+wRzfzwVKI3sfU7viiRC57aybmIdNYYRc7tukXVQIVlSCRBNLe4S6Cvq/JF1CuS8f
         3eJ5ou+NJ027sb/0uId0jkGSIw0WxA6rKNpp1UaSKSJKnnwxgsTcDlR4JjJvel5nIY3T
         CelavWanreg3Gz276fK+comUHN30P378ON9Xxrh/nX4Jki5ATykpLyfdvqqEImNitPNu
         JJdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pkwh6jKs;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YZ0w92qvqlc7O2Cnsp4BYMCZmkub99VCow9743aUurg=;
        b=PnhPylff2WSWbAnyWCCu37HyxYdIN1rPaTpRFnB/xV+32/zdzcTx2SAAe92icCiKkG
         EOBrA32dCP4e3TvnhRw3NcTgvl5SPL4XMlZbOsTjkZ2wDXlY2e58ox9qL4+un1MuWB+p
         4Ey3bFSfu9vjnQOOVQJZObLHApyu6WePSvY+KL92kDlm+OLCjP5qoIqbR/iRyrrJGEfs
         8geZJ3S4rvAfTcR4cNo+UelYleNKKl2PMPUDpQch92CVFYWdi3/3z6ccRAiZUI1e0L4v
         JmQiGPQ2p2VML48PP/I08nTpw900hcooaeFf94yFGdlP+08PvE/W3NLZTADFP1sRsFR2
         KUKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YZ0w92qvqlc7O2Cnsp4BYMCZmkub99VCow9743aUurg=;
        b=OJvGCC//MqyOcmneQ/GcnEZb1Z3sb35t4XAYZ0L3FXD/aERy6tsuG1tYfOyPG4/4D9
         7fypqBhjLD/e/TJYlZN1r7MMGPsr3GJk80i8GopiIPDt8RtNUVWlu00FpKFEvdmxqW9I
         h7Ktm8Ss1tNeuDvIAmzQyoqrxwdEY0Eto8ctKkBGSniCVN20u4Cqb4iLYEaYsPo5c4C0
         G8tR3FsuXYZFF3rwrQ/pGEJ0cBLWxl2ITnsdvXZuH+cf9bUMDMEPM0wn6glzf+MJExnn
         +UFfbkXWxY4DCyoGt0bSGXC1gnqUj7U1Ov8oFEUFrPfO3ZdpFJagc1K40+1xPddlnAYm
         85CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YZ0w92qvqlc7O2Cnsp4BYMCZmkub99VCow9743aUurg=;
        b=c3W3WPl64ywQ0vKdVD6OonajJGOmhG03E9C96ZpBqll2pD/vdRJqkEy7oIX9IHtbkB
         ya7GyYpIdRgwvj/aifBZzJ13DLYH2XVFVTdab2RLc6CK0Qt5lpmb6pbxABwXtz994st8
         kU4N+FObrmG80bZfd0duX0yyIK4PfwotMCQ0p+qzuKeoF1vZWl4MJC6Axle7OiYXkizI
         9MRTxE173oTFDorP2RzG78eEhOvhgj7rGQWQVG4OsVFkoWzJVbw/Sd6G7K7hh5Lo1D/k
         O5YwjuIHEbyJmi6R8OCJJirnfMtoxFZyTziKMaHX3ID3fWn8lxROAh99mjGKNXDWEoW9
         pnZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300Mhsf6Ec7gBVPJ5YhY7HdabEy6dv66JySrDJ0ml9RpwZ4HKme
	AxzMXEBH+9fK/gqvWJMHTJc=
X-Google-Smtp-Source: ABdhPJxCfuymco5gg4tMWeR/NwzDpA+TmyroEeSmFnHZjYM409cBPtAZ1WZKw6Fhc5mkqyLI7MSECA==
X-Received: by 2002:a9d:62d2:: with SMTP id z18mr86988otk.78.1622060121239;
        Wed, 26 May 2021 13:15:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5c5:: with SMTP id 188ls321213oif.6.gmail; Wed, 26 May
 2021 13:15:20 -0700 (PDT)
X-Received: by 2002:aca:f5c5:: with SMTP id t188mr16300oih.25.1622060120934;
        Wed, 26 May 2021 13:15:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622060120; cv=none;
        d=google.com; s=arc-20160816;
        b=W9gFA3Ck9Sy+Pd/Rekb5JDUb0ri5eGlE0ACwwSwlNQsb0bw4Lxeo+VLJ66XUVJ9rmI
         IIhbk1ELsvIyk0350zJ2iPtqFMybjstoWu4QvA8LbhBC/0q6BYUI3hDPWiku+sOBtm7i
         vhjeuVCygttijOT0f2TYJWSJKcJLN434fJHQRRe2HADhHrsy+uwbu+5414NXUfkgOXjo
         DoDt7lyVI6+eDF4gIsO6/z3c0mkjHnN80n6CMtkqZW45LYlk//3glka/FTvQ+63C4wEh
         M94h86/jlhEOq/b5SGLyxE+cZfjLHfwoCUUQ+vfJ9PTfjeiJ8ESA3GKzF1WUTSHDOfmG
         fomw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mEHTP+ON/HEaPzPmfXVTVliKoWahqgkl8b5vxeCCk4M=;
        b=T+XOvrcjcMh3r2iYt9ouPmyVLWJxBlbC+raBDCJonUbH2wk+rXBJiOtDDenoE1Ap3h
         8DP+obElXOhlxyubps51Ve8xx4EQGZl0BL1+0+G589A+LerjZFLfGSzT868qXED1zNEf
         45bRH2VCkF/ZIv/3M712sg899Q35UEPUT8CxmJ/YdzFJ78QTUt3N2T1omsay1br0O1rj
         0UBVrqc/OoWN8gi73OTQqzjfby9ENyLKraOl9vQ8U5tIsf99fvWb67OfD19T/MWrUPJ4
         TIXe45TgN9uIHa/vO6v90RQcCy1d2Gi/pknJrBX03DKVndt3SPytKYoqSDDLUfwLNah8
         k0LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pkwh6jKs;
       spf=pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com. [2607:f8b0:4864:20::b2a])
        by gmr-mx.google.com with ESMTPS id f4si13354otc.2.2021.05.26.13.15.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 May 2021 13:15:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::b2a as permitted sender) client-ip=2607:f8b0:4864:20::b2a;
Received: by mail-yb1-xb2a.google.com with SMTP id y197so3814553ybe.11
        for <clang-built-linux@googlegroups.com>; Wed, 26 May 2021 13:15:20 -0700 (PDT)
X-Received: by 2002:a5b:3c2:: with SMTP id t2mr51207293ybp.39.1622060120595;
 Wed, 26 May 2021 13:15:20 -0700 (PDT)
MIME-Version: 1.0
References: <20210525203314.14681-1-pgwipeout@gmail.com> <20210526122732.5e655b9a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210526122732.5e655b9a@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 26 May 2021 16:15:08 -0400
Message-ID: <CAMdYzYqq0v2hPfmhwfS1MZE5D8x5S7CpeCPR_UDCOKepm6uu6g@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] fixes for yt8511 phy driver
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "David S . Miller" <davem@davemloft.net>, 
	Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Network Developers <netdev@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pgwipeout@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pkwh6jKs;       spf=pass
 (google.com: domain of pgwipeout@gmail.com designates 2607:f8b0:4864:20::b2a
 as permitted sender) smtp.mailfrom=pgwipeout@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, May 26, 2021 at 3:27 PM Jakub Kicinski <kuba@kernel.org> wrote:
>
> On Tue, 25 May 2021 16:33:12 -0400 Peter Geis wrote:
> > The Intel clang bot caught a few uninitialized variables in the new
> > Motorcomm driver. While investigating the issue, it was found that the
> > driver would have unintended effects when used in an unsupported mode.
> >
> > Fixed the uninitialized ret variable and abort loading the driver in
> > unsupported modes.
> >
> > Thank you to the Intel clang bot for catching these.
>
> Fixes tag need work, the hashes don't match the ones in net-next.

It seems when I asked git for the hash for that patch, it grabbed my
original patch which was against linux-next.
Apologies for the confusion.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMdYzYqq0v2hPfmhwfS1MZE5D8x5S7CpeCPR_UDCOKepm6uu6g%40mail.gmail.com.
