Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBW5L6L7QKGQEUKFDKKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B022F1DC3
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 19:15:56 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id t16sf401324pfh.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 10:15:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610388955; cv=pass;
        d=google.com; s=arc-20160816;
        b=pcNeDpiHFn4o6ZxwzsCiq1sUow/r/kt8tacsFtc5w+notiBsIbXsp2+UQcflfStYqu
         F5HqK230vf/tkbz9xo961olqCyker5mbNvZrRA8tHPuXdcwVwTPHnKzvP0vS3fnOtnWT
         CzOmRLsSBQn35KL586vHkZ5wqjeQvTb4k9LDC/e25bmtV1F6Sa0t7SQDaLbEY87g/4by
         mVm2i45yQusCaRM9vedQ0SNe+g5t5+5jNjlBamIsxFtRF5/Yc8KYZArRCbbvUQ+zFSHn
         RvusemqVt++hCfzVHFPBNqZZA2H8O/vGKaddzqYy48XUPE+c74+pJGbZ8hKRvdiTr8Jw
         iJsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3rLfEFmZ4FbZ1bwC3IK3xdIYQ/qrrusnkmTt5xEhYjk=;
        b=KABB0br9JYFFUrC1A8zx7ugoahstZw7NFv6Et1iVDpMirc6DAKL/FovIVBnhj4H8qN
         Sr4MmJV1KI0Pj3Qs4sYz3VeHHvcXGcZ1FJ8taa1n0OOptIATVVK/CAYwpf7I7KKqCh3T
         dmCn25dk7gw79o9pGDedhF9JiwKNnFntJuhY7vfPWmyIoZpecuLIzWxeTe43j6jdGEQJ
         vxeffejhc5bu80M0KYhc2OfFSJjNRs/sFMDtaY5Pt1uL53ixnVoK9gsUIjwIDThb9a0G
         j6eB2eq3GfUn6WridZj7IfwOqDb+8NNR7nKeeBNnbpSctDBxBf32ukHe78sU17onE+Dk
         x17A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JmXROXOo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3rLfEFmZ4FbZ1bwC3IK3xdIYQ/qrrusnkmTt5xEhYjk=;
        b=XGiG4SJRbaoRZI6FFRhYtwizz80gkP2bW38NCpSSFy0BxX5ggXpAyJAZ0XqSG+h1bO
         lDayRGeTxAb4PvR4lSPANkMmoUQ6pc/aDrnfiLb/6NFKAwwT5b2XQxoggFTyIj0sjv17
         rGIEqSn/EUtVtZtnm1J2EMbI9LUolPQrxWMU/fVljYRvHdrVKurSA1IXuhv7SNo1cc7N
         INWznVrYoiDPmT0thD0EZN+dW3u8W6mvbbKSSfpQVOLcT+CRAtwSfaX4Iv0DJIPs544m
         yWUvnX13gT9QXk7kDc8BZyNZoU4PS8sOpiQkgsTE8QKHULdH5P1j/iXE1RhGHQHV2jRz
         vWDg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3rLfEFmZ4FbZ1bwC3IK3xdIYQ/qrrusnkmTt5xEhYjk=;
        b=rL4gE6xYme027F/J+H7Ro6xcEgR1bgJiHxhZPiP8zVsPbsp2d6wyXk9FXwzBKN9hTE
         sHSEilNW+/NF/srgD45dLvSacsnx35ADvy/9Qxl+Q/2qlXcgQ+YF9bs/7P/nqQpIc1zC
         JqAFi5sVcDFmozM3Ln1a3VBfOMShp3zhH/xMK9DgppU8L+covFDK2md5clgSOO0uzLQ1
         3aMrielKaDcHOOXAYp+v3r0vhALLr0RTUYYa81aFd6jXjiyeB0QLVsd4zX/CMzlu+v81
         5HE5j2KT1Y/1BEWPom7xgN4pNwoQtfha1gTzn6quvTTp63mbdOg3HAvcAaKqL7cUSpsw
         eDig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3rLfEFmZ4FbZ1bwC3IK3xdIYQ/qrrusnkmTt5xEhYjk=;
        b=lYIVh3D2sjuJLft2HysRmXZWUCeO6MNB5+sGJpgGoy4p4N3Mf/Ka2zWCdid0QSFX2K
         UVHlmADSZGtuD04uMTRby1ycAro0syBz2MLrJUDd8zgTUoYshkHKO3vHjTRtNTJpfBdM
         +tHyO1jK5shYc8DOFfeL1cZHl/Lme4mASs0EjHqF+nWxt51ARzGICeDQ7sNfoV5UYiGP
         nH9VCFniFhtxQsxHc+K+o3SWcylXiofretbIOsnLaay9qDC7YagZ7KJrHFbbfYGwdDCo
         S20Yk5f4fIPmMRjX2EB7wKpIzY8L/Bm8Glf7vhq4Tlx9zQ5syTPQ4/Q71XQpC+hrVQ7Z
         PCoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uBCNo+wGnMGrm96UVLmwkDxpc6Gy6K5WrdnABpsEWfh6csITh
	6VSsGy56sYFqKfvlf2gTQZs=
X-Google-Smtp-Source: ABdhPJwlY2xTiGy+a7yfHjRDpsuF9NTM7Lz7ye5PUhlIEm087YxVCFWOvFt8q/GUmf5e4KH/+SFf5w==
X-Received: by 2002:a63:e4a:: with SMTP id 10mr748778pgo.45.1610388955431;
        Mon, 11 Jan 2021 10:15:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ee90:: with SMTP id i16ls34192pjz.1.canary-gmail;
 Mon, 11 Jan 2021 10:15:54 -0800 (PST)
X-Received: by 2002:a17:90a:6604:: with SMTP id l4mr82122pjj.119.1610388954714;
        Mon, 11 Jan 2021 10:15:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610388954; cv=none;
        d=google.com; s=arc-20160816;
        b=lpXx2+/h7Sz8EWqMgDPiwFFlBtomDcz9UAhQfThphNafhebsamf35QeGdecueNh+qi
         vyFcrPh106AbYq0VeIO2aKqS0DkPt4OzybAK70gZD6dUBCbn2bVd5e14/oerJQYmPlVT
         WJbCy9Ytea3aCoPgdF2AvUvbws1y6slxIensyaySQj41mSeOCvV6NaFLHClLgdPEu5UU
         FPodZ+GPLvVOucuDDykcLMTYnOYu8+4pi3z82if6cz9Mgob91jjwSwTdQ/LNEuBI/FWB
         TYgJA2JCFCxLSTAFjCWopDy1KNwXwhwymRaaj/P3G3P/VA23k7B9RgMh8J5VuiqaR1fI
         Lh8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fahKTnpBqT4fNOBprE1dQRyjlQks9nETHjYWb7GPaKc=;
        b=eM4dgMYbYaXsK0SztvWGRSIToV8JtacatQn22pyM5nmL5f6URdijma5fmMufZcDA2f
         MWMj7WyPVem7USXw2Rq9SyFGwHktiAv2GhUJlyLzoN6hhIKKF6nfYXpLNJkOucrohfom
         d/zlPz9ugk69dbssilcq9CpkAsi37VeQzsdGfy7xyC1phiZ+mNO+eB45xGXNiWkP+TQK
         GZjbc/tGLIK1l2y4j1hI7Q7fSpFjnizwrWB+mofZ+KE/t9OWi5D7mLwJp0jqomLy8FiT
         T7GpIeU9ZQkqC2xsH2YRFkKej+NfTc4QwUGNy6H8JYAA+/y89GCYDAtH7fbshS0B3SEB
         oZ7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JmXROXOo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id d2si27133pfr.4.2021.01.11.10.15.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 10:15:54 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id r9so544434ioo.7
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 10:15:54 -0800 (PST)
X-Received: by 2002:a6b:92c4:: with SMTP id u187mr389036iod.57.1610388954179;
 Mon, 11 Jan 2021 10:15:54 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <20210111180727.GA758023@ubuntu-m3-large-x86>
In-Reply-To: <20210111180727.GA758023@ubuntu-m3-large-x86>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 11 Jan 2021 19:15:41 +0100
Message-ID: <CA+icZUUfm=bpW3pES-Kn9ETkURqKabORjE4qCwth+RUK4rozHQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>
Content-Type: multipart/alternative; boundary="000000000000906dc505b8a3e583"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JmXROXOo;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

--000000000000906dc505b8a3e583
Content-Type: text/plain; charset="UTF-8"

Great, thanks!

Nathan Chancellor <natechancellor@gmail.com> schrieb am Mo., 11. Jan. 2021,
19:07:

> On Mon, Jan 11, 2021 at 09:27:48AM +0100, Sedat Dilek wrote:
> > Is this patchset bulletproof with CONFIG_DEBUG_INFO_BTF=y (and
> clang-cfi)?
> >
> > Debian has enabled this Kconfig in recent Linux v5.10 kernels which is
> > a base for my custom kernels.
> >
> > It was fu**ing annoying to see I have no pahole binary installed and
> > my build got broken after 3 hours of build.
> > OK, I see that requirements is coded in scripts/link-vmlinux.sh.
> >
> > I needed to install dwarves package which provides pahole binary.
> >
> > I would like to see a prereq-checking for needed binaries with certain
> > Kconfig set.
>
> Good idea, I have sent
> https://lore.kernel.org/r/20210111180609.713998-1-natechancellor@gmail.com
>
> Cheers,
> Nathan
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUfm%3DbpW3pES-Kn9ETkURqKabORjE4qCwth%2BRUK4rozHQ%40mail.gmail.com.

--000000000000906dc505b8a3e583
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Great, thanks!=C2=A0</div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Nathan Chancellor &lt;<a href=3D"mail=
to:natechancellor@gmail.com">natechancellor@gmail.com</a>&gt; schrieb am Mo=
., 11. Jan. 2021, 19:07:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Mon, =
Jan 11, 2021 at 09:27:48AM +0100, Sedat Dilek wrote:<br>
&gt; Is this patchset bulletproof with CONFIG_DEBUG_INFO_BTF=3Dy (and clang=
-cfi)?<br>
&gt; <br>
&gt; Debian has enabled this Kconfig in recent Linux v5.10 kernels which is=
<br>
&gt; a base for my custom kernels.<br>
&gt; <br>
&gt; It was fu**ing annoying to see I have no pahole binary installed and<b=
r>
&gt; my build got broken after 3 hours of build.<br>
&gt; OK, I see that requirements is coded in scripts/link-vmlinux.sh.<br>
&gt; <br>
&gt; I needed to install dwarves package which provides pahole binary.<br>
&gt; <br>
&gt; I would like to see a prereq-checking for needed binaries with certain=
<br>
&gt; Kconfig set.<br>
<br>
Good idea, I have sent<br>
<a href=3D"https://lore.kernel.org/r/20210111180609.713998-1-natechancellor=
@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lore.ke=
rnel.org/r/20210111180609.713998-1-natechancellor@gmail.com</a><br>
<br>
Cheers,<br>
Nathan<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BicZUUfm%3DbpW3pES-Kn9ETkURqKabORjE4qCwth%=
2BRUK4rozHQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUfm%3DbpW3pES-Kn9ETk=
URqKabORjE4qCwth%2BRUK4rozHQ%40mail.gmail.com</a>.<br />

--000000000000906dc505b8a3e583--
