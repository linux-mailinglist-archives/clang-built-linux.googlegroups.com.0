Return-Path: <clang-built-linux+bncBDY3NC743AGBBXUAVD6QKGQE5PLEM3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB092ACB4A
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 03:52:16 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id z18sf8121663ilb.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 18:52:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604976735; cv=pass;
        d=google.com; s=arc-20160816;
        b=J1iVgMmfur/fmZehaoZvM00phqIQd7qMBTcBXEvTyDChicYuA3kys2Q2qJODMB4Krl
         ip/C2VehG7MNf4Q85O6c5DSFPHdXPRD8djua+b9kgsYwS8ANgLFd9xtPSI6l33k943W7
         4bYDK+bcNTTrs6M4OtkI/Hv7F08A0wUOwnJNiz0rG58EPQe1+/LQvqs+MxOa//s75K10
         aX8kLTQ5xFZepenMjSODOkMWqHAlAyW5du7DGjW9Zt9AINEUbyIoTxO2AXb+zd0lpmuY
         IVRsNoYUcGXujl92+SnyZHvA/nbf/RN2uOb9Kzk3B80t/hCb1qv4i5c1BPgUm54RpcgC
         aqDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=bBT+SGDZMPjI43BfCjvPwPol0oLslTybC5689bXi2Ao=;
        b=QjMwV0kgRxcI/WycX4GtBE4v//W46vtVKhBNjECtII0TzWNzSQ+VBKhIRiIg9N2DAe
         lAtVR+tXD5gvCImOwpDxRVbpqm/alL8kHobi14xRWJIwLJMdLESl48WZpB8ZdGOE8jb7
         IqN54RgwgILxV0CM9WMV9BwD2or5vMBQEVjAituVW/FCB81YMcTZPMyCmbhc+rh0bOiB
         KjVg/0mcruQP4UlLBr0a9uyn+K/HwvsIYsk6mZah6BQZkW5zQkRerSbE1jAjm9PKcZrm
         gutu7Wz37IuG/W7uFZGT6vvLYoqTfCvYWUw2Xluc4AMcdPFBYdi1SoNLuZcnRSgYzsC6
         cKkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.90 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bBT+SGDZMPjI43BfCjvPwPol0oLslTybC5689bXi2Ao=;
        b=ncvjqXyzcc7Lk+etq9ARdAnLmUZyfei2mK9NlFIrtRINwQXDnpeOqtfrhi+Yj5vO8N
         79q5wUlgaNeeTTas7ykQ8h1+EvnxZkecvH592MhF2zpmqOiLBHrfxr2UgNirhg4XxXWN
         1APMN64uS2qAG42KuRp3Oo06TD5z0f3J1CB1brf8ImZdwLEJ854dQ9nI0YXYRpwH3qTc
         Q3Nq4vcvTFmdPBXIbXcAUT3bu25LRvlz1c8hWALPS4SnxNgIJkumGGt7wzhMjaXpytq7
         MGdSQoRBgxtGGNrjNWPaBe4sp0F0SqHoqyKyl8p2JGizEU67svAPEs4mJAN3qzvWk1Vt
         O4Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bBT+SGDZMPjI43BfCjvPwPol0oLslTybC5689bXi2Ao=;
        b=GZaaBymOIT+sFPqNtBOzObMj1aBFD19kGD2i/Z51kft65MN/ms3VoYQbQvhnvnohx2
         3XvqXlcEeE0BIkGT70r3qFx+mtJLdqf/QDX0BE4+6/zR9KxrbqesWZ2PQ5fvApSroRSr
         1cGhuRsLZhPQ/YBkxCJ2+WHymW70h4zTS7mHVRdZLoJah9aLZdJ/095QSKIuzn6kb+Vh
         zZHDHxfXkIFNZ4ufvLSYNgZyxNzPRrZgzP7xK85W/jmAaxF2LQAAEzhO3wGW6lVEDf95
         UGvVo81FYhIAgaI7/R8YPODP/+3nBZNj957fLvndk485ZA0Ol750mbzYLCiS+AFQcX+6
         zHEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531uj/+GedGip/++4y2V5tOi32DZUOhjeTwU0NeyXp+ueraawjVv
	DSAZhWFxTeKgR3MGJvK8Hjc=
X-Google-Smtp-Source: ABdhPJy+kYXTbTSwndUXX45CkF7mg10WRz0Z9OkxUxLhAQT4qZr6DKteXBgBzdZ5OoKxwzYd1XaoEA==
X-Received: by 2002:a92:ac0a:: with SMTP id r10mr12699100ilh.205.1604976735056;
        Mon, 09 Nov 2020 18:52:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8c86:: with SMTP id g6ls1475918ion.0.gmail; Mon, 09 Nov
 2020 18:52:14 -0800 (PST)
X-Received: by 2002:a6b:b3d6:: with SMTP id c205mr12602745iof.68.1604976734558;
        Mon, 09 Nov 2020 18:52:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604976734; cv=none;
        d=google.com; s=arc-20160816;
        b=GjfUJfn29pEV2rsF1ZMQtr1qDW2kH+dGxEh+Ip+dWZilkmDg5YWFBe4ZkoVXpJHBFY
         lU0W2rx6j7cDsfp7FPXinHWmYQT1eGb1Zz3stwCAejp2Kv4YvVifKBtiuJEbFltj02V5
         jLvwOcLny6WXbFXXZH/8lL21Azntth9xjrc/C2ZerlH0o2snLtufUicolk2EWV9YzTy8
         lwpFxP9CZ19PT2x93LqQ23Q+Pf8FWAJaZeaVRT1MJ15GmnSRyavZ2JV3Vg0YKZg5m4pL
         RmA5JMF6fOEQIyg2CnU0QXpWv4H4x51qruFAMG7UtbjItPDIuY9ZzjDqvrtPFhDn/BCi
         4rEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=3lMRQVzJd+9aWJeV8BKEHMvpRYporiaiNWnbybMNWRQ=;
        b=vOh8v+aFqyr2ezhXesY3YTh/dIL9eR1ZWSqBSiYqKHS/Ae//8hQxzwroxs/CRnqjtZ
         vnMl5zoYfpqv3j9F9/s3jrFGC9FQsDEH+bLJWOP0raPyM+D+ZDQ+BCp1AoYoaFHd7vdL
         35QCu1/HKOCXxsHG50Or6EbKjt7BOydbM1U8kFMvF+Gjf9ToMP4BaXZfoYFsR2fR6ydk
         JPptt0N4r3wxtS8EHmyR3A/hUmZLoYq0MKm6IJ0+du6oH8AnhZpCRsTEajs9xp6iSA6A
         e/yc0FENTV3AdhkypqJ1c+0W0T5xHRQEAkCdptnuV31AiqwEecsY/xgM6V3E9c2/03zt
         v7SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.90 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0090.hostedemail.com. [216.40.44.90])
        by gmr-mx.google.com with ESMTPS id f6si592527iob.0.2020.11.09.18.52.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 18:52:14 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.90 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.90;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id F008012CB;
	Tue, 10 Nov 2020 02:52:13 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:982:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2693:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3870:4321:4605:5007:6117:6119:6742:6743:7652:7875:7903:8660:10004:10400:10848:11232:11658:11783:11914:12043:12048:12297:12679:12740:12895:13019:13069:13148:13230:13311:13357:13439:13894:14181:14659:14721:21080:21451:21627:21939:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: ink22_1714ef1272f1
X-Filterd-Recvd-Size: 2439
Received: from [192.168.0.160] (cpe-72-134-80-165.natsow.res.rr.com [72.134.80.165])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Tue, 10 Nov 2020 02:52:09 +0000 (UTC)
Message-ID: <3c39c363690d0b46069afddc3ad09213011e5cd4.camel@perches.com>
Subject: Re: Subject: [RFC] clang tooling cleanups
From: Joe Perches <joe@perches.com>
To: trix@redhat.com, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, cocci <cocci@systeme.lip6.fr>
Cc: linux-pm@vger.kernel.org, linux-crypto@vger.kernel.org,
 qat-linux@intel.com,  amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,  linux-iio@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-mmc@vger.kernel.org, 
 netdev@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-amlogic@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,  linux-rtc@vger.kernel.org,
 linux-scsi@vger.kernel.org,  linux-aspeed@lists.ozlabs.org,
 linux-samsung-soc@vger.kernel.org,  linux-btrfs@vger.kernel.org,
 linux-nfs@vger.kernel.org,  tipc-discussion@lists.sourceforge.net,
 alsa-devel@alsa-project.org,  linux-rpi-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org
Date: Mon, 09 Nov 2020 18:52:08 -0800
In-Reply-To: <20201027164255.1573301-1-trix@redhat.com>
References: <20201027164255.1573301-1-trix@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.90 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Tue, 2020-10-27 at 09:42 -0700, trix@redhat.com wrote:
> This rfc will describe
> An upcoming treewide cleanup.
> How clang tooling was used to programatically do the clean up.
> Solicit opinions on how to generally use clang tooling.
>=20
> The clang warning -Wextra-semi-stmt produces about 10k warnings.
> Reviewing these, a subset of semicolon after a switch looks safe to
> fix all the time.  An example problem
>=20
> void foo(int a) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch(a) {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0	       case 1:
> 	       ...
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}; <--- extra semicolon
> }
>=20
> Treewide, there are about 100 problems in 50 files for x86_64 allyesconfi=
g.
> These fixes will be the upcoming cleanup.

coccinelle already does some of these.

For instance: scripts/coccinelle/misc/semicolon.cocci

Perhaps some tool coordination can be done here as
coccinelle/checkpatch/clang/Lindent call all be used
to do some facet or another of these cleanup issues.



--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/3c39c363690d0b46069afddc3ad09213011e5cd4.camel%40perches.=
com.
