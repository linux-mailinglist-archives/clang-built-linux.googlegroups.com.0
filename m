Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBG6WU2AAMGQEK4NXZEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E24E2FF02A
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:26:04 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id 18sf1554020pgp.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 08:26:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611246363; cv=pass;
        d=google.com; s=arc-20160816;
        b=A/iizU6m5siiti/zlh1d6Nj5o3CQ9m3R6fr4NEg3cnYXLdcCBAR/Oq0tpadveyz0bM
         Vh/a44s4UBXCVM3Bb39D7ujc3ucNixAIs9/S/tcwO1dvs3K18IHxbH/BObINQX2oa1Bo
         CaZ6ufQsz7dm9uRBFVyTv2Rd3Q6YBQEBqYeLIPuUprCIsvTSJVBalK6ehcOsopbJOa2p
         E2upKjc6FuhM0StTl4aWlwWK2loxsIlDseEZd3sdZi/opezOJXPy67lt443l5i5goExU
         VkkXVRxjHwObzyW9U6d6Ihm39pddxl/vZHSyJW8YpiXO5pVLzx9bS+71d/3/Nm44JyqH
         M2KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=pQcXs4+UFxf6CJ6giHr78G3fleSum6gA8zvdxwSGqYU=;
        b=jmcG+9EjD6oj/37bwXN4I3n299KsGQK61vvB809TyVhVFX3mVtWvgG9VUj1fxJ5CWi
         rTwDgvWAeDRjKvGs0vews6MyR5fR67arLplD/PoYwPVefwzDijArfomo084nDWA7E4uJ
         7R9YIKIBv8i6HJxffL/oF07Sif+M1qv54O+1oMXkqVOdDHh7c8mWDghQZ+o7FRedDxYL
         MttW5P4jxvIxwtP2wDTWhZrMwZAcHtzQDWrQ4r0Xgueebeq0LkXyVLk4EurMbHcvX/k+
         ofYX7vdZ73lDPFXnHQznAXuWAZtu0SGCrIEBOee/59MaCRpqhwVBIfon9A2+FyWY9V4X
         x3mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PwgJ1uAX;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pQcXs4+UFxf6CJ6giHr78G3fleSum6gA8zvdxwSGqYU=;
        b=VzUJ9eM75twl+ttsqEEYOHVJT6p6VtUT6FfVkfyzMq1O6Zn7MZWiKMuGMcvJ7tWQg4
         Qk926IR7l2/k0Vy6ekmmfwJxLfl5RK9Nnj5Q5LGhNzYRVWJ5Do0LuqYJ4uG+NiEebkn5
         I11skgfxa5NWjmNE5jC9ZuG827uKJfcxOy3ryEshO9hLaZQwhQYgd/M0vp95iRd9k+2S
         E5x1De+9nBaCAIeeaP7Bx2ph15ztBH3KlpWHANoYtbDMAe5nnLWbgu21IzvQStjMw2Hy
         IRJn7xDKrpPx7dS31XFoyfwjg43o2jVzoa6lK18/TVlv88URLq3tqiuIvR7XqJ/hGPEN
         q30A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pQcXs4+UFxf6CJ6giHr78G3fleSum6gA8zvdxwSGqYU=;
        b=L0klivjmSeown3x/X8BKCchPmfuMPm0jvkh1WsGgjSfHB9wEfS2OiIcC7JY8MaQaz8
         maiYCMhGwV60wFRsOdaGrSgCWmdNJrl83vXVfsD3cTctEGT8GhlpNLyDKqKyg5dnvFKv
         BzJQh51hglQH8bo/hIW71P5Cl3phLpN62oMrOIn/QiTmmwQkn2DzHq8W5qhQ4b/XCq0Q
         nO4/sWGMsXybzs0qtWnoOTUQd6x8BKR9no/qnvQ9H9Zku8/LE/WBSbRg4hLkc85By7Zn
         OFWhPRlRqBOVqOuRTpa6Iq/6DOmKU3f8vfnvSjOLiefqcn8pxODmLgrYULTMggOKko5p
         B1BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pQcXs4+UFxf6CJ6giHr78G3fleSum6gA8zvdxwSGqYU=;
        b=mdQ7BeryyENkVjBPqCIy38BPYIxm4HlDfCyeWdGlLrqtxfksrrj4exqlC0PX0ea4Q1
         24TuIM1gtzjBxU3zYh7+AjEjVD678c2bfG2VFqPrB47iFNhowBo8PMwIFfmg8wFHPqEW
         iY1ctpD/D/8PBIGek+QeqN5M8vxNiy7ImomdXAWU9fOKnPoLC1WjWB+DtQ/yWh4EoDAx
         CsxG/04ufI77Zd8PUrzxd5d6u2kxAPQT9We7xFBmGu9ztecg34jbZvRqhNFSEVAANinf
         e9Bq1288QZmBQfByjvywq2oQ75iejQ0RqouD+IzXEf8U/iAqOtJKdCxA+CEgP8k9x30d
         oUYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329yJ3uHxTb207IGefNYCUDc7l1VSQWvctXAoovFd4zX3C6Pqhg
	jhLNYVgs296YDqXxZsjn9Cg=
X-Google-Smtp-Source: ABdhPJzHj7RQcvMoH9V91u2f+qpVdKmxUpUblscWaqry/l+pzJu2G5mA3ydApZdFi0ttw6SAQZwS6Q==
X-Received: by 2002:a62:35c6:0:b029:1ba:e795:d20e with SMTP id c189-20020a6235c60000b02901bae795d20emr434664pfa.37.1611246363339;
        Thu, 21 Jan 2021 08:26:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a416:: with SMTP id p22ls1370216plq.3.gmail; Thu, 21
 Jan 2021 08:26:02 -0800 (PST)
X-Received: by 2002:a17:90a:4494:: with SMTP id t20mr157387pjg.155.1611246362588;
        Thu, 21 Jan 2021 08:26:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611246362; cv=none;
        d=google.com; s=arc-20160816;
        b=GCsQTLHctKViI4wIURAq2OjzPeakAp3GT48sYSGwrk+J/bk/6lxlpP8h6/oGkJ2WMQ
         /jVD5MA9dJhzORJFpM9+4Qz08VN8Mx61pY1mMraZtNDbdp6v3ugLjkbcNE28wqbF07Wg
         6qlJamjhqg8MutSbfbojV5XdKi85pu2SYevbeEXDXZGx1xr2a0XvjVyiN4a30UaHNIQX
         oR2hlEdj7bN8pe+vQlDK3LqR1eZ/9VYZz35uq0YMATinNcTm2TOUV33cks0mBpaaUFZ2
         aaEXcuO8HYYMmQCu4MLDCKUe2rqB8yFt10FqcvAX20H73DzXligCCc47D0YR6DZO5GLj
         z75w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aaKhKct3ImPnrveXxBya8SOIzEUzRg0gfWNOxlVt5NM=;
        b=cTe6vQuahEdtOoupvkZfRJlAKGSW8i3KNWp8gMekOhOUvNTlUt7KiQSkd4Puu5NOp3
         0bOMzJthtkn25Gx+PSF0feSubcwIx9MShSixHaHzt9/4pkVhbzlxqT4qk2PJBh7YFC2y
         Ude9Cxkc/EoD9XwuBHw8vDo6qltr/0eEjoO+ZHN6w/2uF6aRhn+4ytOlX4UiN2PH7tCz
         W2h+JJXC36dicM2TkZCrD5ENqC8CZh3TfTJFwCYlCIzgsFpeK9HoL2wzgbLZw0sxPicb
         EXxJakhgvU8sJTId7i0nLBkTbsAkMM1/C/4N/tu9OZu1CY+cfdkzis8lnb5gZfSck2Gr
         vjgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PwgJ1uAX;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id l22si919543pjt.3.2021.01.21.08.26.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 08:26:02 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id y19so5141586iov.2
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 08:26:02 -0800 (PST)
X-Received: by 2002:a92:cd8c:: with SMTP id r12mr417902ilb.221.1611246362296;
 Thu, 21 Jan 2021 08:26:02 -0800 (PST)
MIME-Version: 1.0
References: <20210121160115.4676-1-lukas.bulwahn@gmail.com> <20210121161640.GA1101379@ubuntu-m3-large-x86>
In-Reply-To: <20210121161640.GA1101379@ubuntu-m3-large-x86>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Thu, 21 Jan 2021 17:25:51 +0100
Message-ID: <CAKXUXMyrE6OPmn8ETKqRJ9DOaeRO_n3=uUP3vhjAnqmUGmqdYA@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: adjust to clang-version.sh removal
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>, 
	Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>, 
	Pia Eichinger <pia.eichinger@st.oth-regensburg.de>, kernel-janitors@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PwgJ1uAX;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::d36
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

On Thu, Jan 21, 2021 at 5:16 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Jan 21, 2021 at 05:01:15PM +0100, Lukas Bulwahn wrote:
> > Commit 6c8ad4427f6e ("kbuild: check the minimum compiler version in
> > Kconfig") removed ./scripts/clang-version.sh and moved its content to
> > ./scripts/cc-version.sh.
> >
> > Since then, ./scripts/get_maintainer.pl --self-test=patterns complains:
> >
> >   warning: no file matches    F:    scripts/clang-version.sh
> >
> > The CLANG/LLVM BUILD SUPPORT section in MAINTAINERS intends to track
> > changes in ./scripts/clang-version.sh; as the file is removed, track
> > changes in ./scripts/cc-version.sh instead now.
> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > ---
> > applies cleanly on next-20210121
> >
> > Masahiro-san, please pick this quick fix-up patch.
>
> Masahiro cannot pick this up because the patch to add clang-version.sh
> to MAINTAINERS is in mmotm.
>
> I think the better solution is for Andrew to drop the current version of
>
> maintainers-add-a-couple-more-files-to-the-clang-llvm-section.patch
>
> and pick up the second one I sent, which allows us to deal with this:
>
> https://lore.kernel.org/lkml/20210114171629.592007-1-natechancellor@gmail.com/
>
> I am not sure it is right for us to maintain cc-version.sh but I am open
> to it if Masahiro agrees.
>

Okay, I did not see in linux-next that both changes are coming into
linux-next through to different trees.

Nathan, I guess if you send a follow-up patch to Andrew that is the
best way to handle it, or we wait until both trees land in mainline,
and then just provide a quick fix like this afterwards.

So, Masahiro-san, no need to pick this patch here.

Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMyrE6OPmn8ETKqRJ9DOaeRO_n3%3DuUP3vhjAnqmUGmqdYA%40mail.gmail.com.
