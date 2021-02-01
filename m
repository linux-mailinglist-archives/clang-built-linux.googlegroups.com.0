Return-Path: <clang-built-linux+bncBCZZRU6W3QPRBXGQ4GAAMGQER3MCPNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E8030B1AD
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 21:45:17 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id h17sf5825490uar.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 12:45:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612212316; cv=pass;
        d=google.com; s=arc-20160816;
        b=nELP5rTlQdnhit1tNSRvAQLjEpK3oOv7x16Qs3ILrXxfJHKPKP+JNQAfpd/jiGMZEv
         MTLNC4numFMCX5ge6qC3qxfvfa2rvMKegDHmTyR0Yu6yO0IdQxUo63OYNQpDWQ5x8RsJ
         cce4unu/7hctrnTWhFHSWd19P+9UwZYVZZERY3sfiic54rDzAxmXoHRQbo3jMk+NsMrQ
         XegVCCa7oxu9npbVEcAw6crI9rqPVcGbC6UjxofbhgL9hLZmqYh2m3uOopMU+vz829QY
         Wpkp+DimeDA1ZKYiZu3PuQnBvtO8j7wxeaHJ+ZeExna422kOS7NuBBDvs5Nt3YlfEmxl
         b9cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:to:cc:in-reply-to:date
         :subject:mime-version:message-id:from:sender:dkim-signature;
        bh=TSiqkEYJYDgmQSggpb6KxUm9ld52bswGcpRcsGE6zRw=;
        b=BIWtSdebPDFmchmFKlhsY3xzGVd92KGt7asH5LSX18gcbseUhUTz6PpyMasJ+rO5UJ
         fE9fMKne9brSXM2TlsCVMxOI3JH+eXsfQy6cDtCElyyBcvIoj7KfnMUR4oPZatnMyqgt
         E/1SePQrb3PMMhvdpV7Kcuwk/BYR2WUfQhHELmUMs1p/3X2ML57q+efayNK87UyY4+dO
         zF7/cr2zTuy+qtBpfyBQ1Qp6b/O+Soo3JhCMpXJgjd/o82vFNhG2t4OayObD+0Wi0Xks
         WLQ079T4Z8JxjTnu+gILxY1+/4xnykHwyoTqTj4WNI/kit14xgheS7xaaujtqzL6QqOu
         LtcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dilger-ca.20150623.gappssmtp.com header.s=20150623 header.b=z4zH5PW4;
       spf=pass (google.com: domain of adilger@dilger.ca designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=adilger@dilger.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TSiqkEYJYDgmQSggpb6KxUm9ld52bswGcpRcsGE6zRw=;
        b=p6+94YrdPPUn/gzg93DSBcJe4hMtr2jra0BvZTut9sQSxfmaAizRNKKabvE1sIq4Hd
         nZzpkWvp5ECI4P2yP/zzYGslVSuR8NsOaEJ0lnbpXS0zbd4qIatFiUBXuBg0Oli8zqqm
         7ZH3x0rDOFpYmlq5/24ci2D9yzJSC0KQswn04GUGt+CZZeZtxUjh+0kvMOA5uDj8+KQe
         AvqNZ6Hq+0r1QVl6rbTgTqE3gmB33Q0g7EagH3L2FywDtByNifPpfXM8p9LiTAmdEEY4
         r1SQDLZpsH8drfO5xh6ApkRY6p2s31t1TI/Oqf8LDj/dUL4y/OfonSkX3VFYjY1Ssekc
         yVCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TSiqkEYJYDgmQSggpb6KxUm9ld52bswGcpRcsGE6zRw=;
        b=tNvq1g0br40joJAlKYgh6bYDSYQtWXIzkHB2PiKVk9HH0UJC9izaYBMLPpo8moiqdJ
         vECWAEGKGwqWXsLzadw4tRccpjzr2CysTrq7HxiLN6/AH3dYzq8elzMV8gUiNH9/9DQH
         Aco2nuhkeU/Oz2hK/DytD5/g5l+y5iuKxytiip1BQteAiOCKn6UmlSaWqdShnAKFmjuW
         8TaGNhYtJYEpzxPqO3F0k8T12muLj5NzSbD3xDoopgL33h3ZGHP/6QmuErf625rV4r3U
         7+Tzt18RoUQgTuosLUc7kEjsv5k+zDG13EfmyXqR9RsUsMM/YQXjr/BIGvT9bIMf54C1
         ZGow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531YjFREEL2FNhE6+qcj4p3t+ZV4z6Wub/oGxdcj2xyNfSzbHJlS
	s4oFHzNERG8PSmZsB8+Nr/s=
X-Google-Smtp-Source: ABdhPJwwZIljJ5oLAphZIHs0ZmeSa9Rge5R/zTsEWfeYIxrSr0r+6rhogTbttCTtb16AqjmDrcgoFA==
X-Received: by 2002:ab0:6654:: with SMTP id b20mr10624596uaq.49.1612212316500;
        Mon, 01 Feb 2021 12:45:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:119:: with SMTP id z25ls2119906vsq.6.gmail; Mon, 01
 Feb 2021 12:45:16 -0800 (PST)
X-Received: by 2002:a67:b404:: with SMTP id x4mr9771523vsl.7.1612212316024;
        Mon, 01 Feb 2021 12:45:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612212316; cv=none;
        d=google.com; s=arc-20160816;
        b=jtdl7xKPvVrm0nqOz6lLe+z4er9pa+j4DpvyeN++JeNcb9tyuM3wn0jf4FsoQA7Sji
         kEE97bIrtgL/jQj2QNrCPoTAXgvg7jHpjuXJVHbIJ4VMZJSI3dbTQDjr2J5ry2AR1q++
         BgQamY7XWt4qgSt+asQTIgDITaHdbIOyg44guRnB+7f/7tuZ6fQQ9ZBKDL7K2MMVr2X5
         Cx67HBy/V2rQU7AHEjB3GQrUZsBD9vVHDvZXKN5tBUSYVXpv/7YJ0+dIEat6k0Io+oRg
         t3XddZTETOsl1rPrXr8Pi1LGGHu4uA4UmTWD9CReSyIASGKZXoS3eWodiSd3mDBXls+Z
         xXZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:dkim-signature;
        bh=qnOOdi752IilB/nHdj6qiwg2B11YaQtOWLHD+Ehtq08=;
        b=matwXbu7fMy+9LBbDxBUzTKST5BjtQgQb9y+s9OO1ukrrloWEjG4+r3emIglrxf7g+
         pVietjmyorV7u5poiAoXyti9kt4CkYGJy3244urHIB4uTgVQ9KDQ/Sxr7WXKLg6QE2/C
         XS9mbvFUvDDB3X8sRHIDQJoHeeLNEdBRvDbz0ETEJXdzCkA49Gj8nlhpLTw+NB3deIf8
         P61H314EXzcuR8dF88XGSUTB6C/SelVEs4TigivoERPMoCMwLx5QXneDfvT4cBhN6wAk
         Xpz2N9WI630VZgIsVpxozgM0Gz4GTQjLXAejOkOor8Y/xfRPiFI458BjIdpHUIbC4qev
         pZlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dilger-ca.20150623.gappssmtp.com header.s=20150623 header.b=z4zH5PW4;
       spf=pass (google.com: domain of adilger@dilger.ca designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=adilger@dilger.ca
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id l11si996083vkr.5.2021.02.01.12.45.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 12:45:15 -0800 (PST)
Received-SPF: pass (google.com: domain of adilger@dilger.ca designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id v19so12890170pgj.12
        for <clang-built-linux@googlegroups.com>; Mon, 01 Feb 2021 12:45:15 -0800 (PST)
X-Received: by 2002:a65:6215:: with SMTP id d21mr18244920pgv.367.1612212315238;
        Mon, 01 Feb 2021 12:45:15 -0800 (PST)
Received: from cabot.adilger.int (S01061cabc081bf83.cg.shawcable.net. [70.77.221.9])
        by smtp.gmail.com with ESMTPSA id y1sm19063318pfn.125.2021.02.01.12.45.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 12:45:14 -0800 (PST)
From: Andreas Dilger <adilger@dilger.ca>
Message-Id: <9CA2BADA-9CD9-49DC-A5E2-063C8A593E57@dilger.ca>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_D6983B98-027E-4E50-A31C-08148A4552B0";
 protocol="application/pgp-signature"; micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
Date: Mon, 1 Feb 2021 13:45:11 -0700
In-Reply-To: <CALD9WKzO53AXQW-qQ82VZ41H5=cGdLTUiEoz3X6BmPkb6XaTag@mail.gmail.com>
Cc: Theodore Ts'o <tytso@mit.edu>,
 Christoph Hellwig <hch@infradead.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux@googlegroups.com
To: Vinicius Tinti <viniciustinti@gmail.com>
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com>
 <20210201124924.GA3284018@infradead.org>
 <CALD9WKxc0kMPCHSoikko+qYk2+ZLUy73+ryKGW9qMSpyzAobLA@mail.gmail.com>
 <YBg20AuSC3/9w2zz@mit.edu>
 <CALD9WKzO53AXQW-qQ82VZ41H5=cGdLTUiEoz3X6BmPkb6XaTag@mail.gmail.com>
X-Mailer: Apple Mail (2.3273)
X-Original-Sender: adilger@dilger.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dilger-ca.20150623.gappssmtp.com header.s=20150623
 header.b=z4zH5PW4;       spf=pass (google.com: domain of adilger@dilger.ca
 designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=adilger@dilger.ca
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


--Apple-Mail=_D6983B98-027E-4E50-A31C-08148A4552B0
Content-Type: text/plain; charset="UTF-8"

On Feb 1, 2021, at 11:41 AM, Vinicius Tinti <viniciustinti@gmail.com> wrote:
> 
> On Mon, Feb 1, 2021 at 2:13 PM Theodore Ts'o <tytso@mit.edu> wrote:
>> 
>> On Mon, Feb 01, 2021 at 01:15:29PM -0300, Vinicius Tinti wrote:
>>> On Mon, Feb 1, 2021 at 9:49 AM Christoph Hellwig <hch@infradead.org> wrote:
>>>> 
>>>> DX_DEBUG is completely dead code, so either kill it off or make it an
>>>> actual CONFIG_* symbol through Kconfig if it seems useful.
>>> 
>>> About the unreachable code in "if (0)" I think it could be removed.
>>> It seems to be doing an extra check.
>>> 
>>> About the DX_DEBUG I think I can do another patch adding it to Kconfig
>>> as you and Nathan suggested.
>> 
>> Yes, it's doing another check which is useful in terms of early
>> detection of bugs when a developer has the code open for
>> modifications.  It slows down performance under normal circumstances,
>> and assuming the code is bug-free(tm), it's entirely unnecessary ---
>> which is why it's under an "if (0)".
> 
> My goal is to avoid having a dead code. Three options come to mind.
> 
> The first would be to add another #ifdef SOMETHING (suggest a name).
> But this doesn't remove the code and someone could enable it by accident.

I don't see anything wrong with the original suggestion to use "DX_DEBUG".
If we want to get rid of "if (0)" in the code it could be changed like:

#define DX_DEBUG 0
#if DX_DEBUG
#define dxtrace(command) command
#else
#define dxtrace(command)
#endif

Then in the code check this directly (and fix the //-style comment also):

	if (DX_DEBUG) { /* linear search cross check */
		:
	}

That will hopefully avoid the "dead code" warning, while keeping the code
visible for syntax checking by the compiler (unlike if it was under #ifdef).

Alternately, if we want to keep the "#ifdef DX_DEBUG" check intact:

#ifdef DX_DEBUG
#define dxtrace(command) command
#define DX_DEBUG_CROSSCHECK true
#else
#define dxtrace(command)
#define DX_DEBUG_CROSSCHECK false
#endif

	if (DX_DEBUG_CROSSCHECK) { /* linear search cross check */
		:
	}

Cheers, Andreas

> 
> The second would be to add the code in a block comment. Then document
> that it is for checking an invariant. This will make it harder to cause
> problems.
> 
> The third would be to remove the code and explain the invariant in a block
> comment. Maybe add a pseudo code too in the comment.
> 
> What do you think?
> 
>> However, if there *is* a bug, having an early detection that the
>> representation invariant of the data structure has been violated can
>> be useful in root causing a bug.  This would probably be clearer if
>> the code was pulled out into a separate function with comments
>> explaining that this is a rep invariant check.
> 
> Good idea. I will do that too.
> 
>> The main thing about DX_DEBUG right now is that it is **super**
>> verbose.  Unwary users who enable it.... will be sorry.  If we want to
>> make it to be a first-class feature enabled via CONFIG_EXT4_DEBUG, we
>> should convert all of the dx_trace calls to use pr_debug so they are
>> enabled only if dynamic debug enables those pr_debug() statements.
>> And this should absolutely be a separate patch.
> 
> Agreed. For now I only want to focus on the "if (0)".
> 
> Regards,
> Vinicius
> 
>> Cheers,
>> 
>>                                                - Ted


Cheers, Andreas





-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9CA2BADA-9CD9-49DC-A5E2-063C8A593E57%40dilger.ca.

--Apple-Mail=_D6983B98-027E-4E50-A31C-08148A4552B0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQIzBAEBCAAdFiEEDb73u6ZejP5ZMprvcqXauRfMH+AFAmAYaFcACgkQcqXauRfM
H+DA5w/+NwuAaMctdbMXqQsHDMc+8lK3fpTgnvWNSPdfWXXowh1ubKGMfCPPAAIB
MJKNY8zp2dCTFYTX8fzJrCdzcjD45k2snHVfHZlKuI8kSsbxe9lUdVl/uKCVwgDn
LFSL7B8HN0yIAWW7gdg2EDTDuc+MNAliJQnDRX7/25dZBqV4Y7TA579NklClOO64
zoTCFYZGanXrtr0UYEQX5vGl6udy/YoftI1miH5mw73th7KxaIvgYHu0tiKTrggc
BnWS74x2JQHFmr+/6dsob/tBDsK0BE/CifcBBgY1Atqzzczjua8zQa3ew/hzLbiq
3g8xHJau+15rOIX+DwfZRWZGFOoGV4jNBtKrFULAUDEdypWxk58t7ZB7bHq/5y6k
baiMYVGBDebneGEvWU6JRSUYJ16cyLlXDtEw39iDlLk0Qz7vzGYCMXyi7wpebY6c
ZB0774XE2kWE1BlWtarIyUpXstwuysG4FwCCnp04HlYpeWGc7PdoFwykXQSTScWF
HGfbF/EYJzyxEeEKBB7Jn/UDzVU2dnUEgfVUJpTdiCZhesRMIluyKKlL75mFI4pP
2gjnnAy79AYMtHY2fiEUrjoJZvbLO6BWN+CS5TLUzcGqTmo5Qi09B5HKeH2BLV8H
EP0jf0us79YH2/pFwtxvZRnQJrDCML7cCN4VtSiIqY3iNlBpBbA=
=p4Ec
-----END PGP SIGNATURE-----

--Apple-Mail=_D6983B98-027E-4E50-A31C-08148A4552B0--
