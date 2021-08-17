Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7MY6GEAMGQEH4PTAWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3DB3EF664
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 01:55:43 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id w2-20020a3794020000b02903b54f40b442sf511990qkd.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 16:55:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629244542; cv=pass;
        d=google.com; s=arc-20160816;
        b=iGznx57hpxFdKjrmAmMQeiJSDvdZmf/Hht3D81xXkhaeJosSRUWzSMP+YEv1cy0aDn
         jwtMZCxcayAJS/QpcMIvnP+yNc51CPZ+nLn3HHDB5kJy5tMVrp9qk6lTMVgv6BpriFjl
         VkwTXRftJtGwaPGtVX08+vKZRh2YFWd/5Iy+Cftvl3obwX4ow1TcHoeJwxtHArU2eILN
         +4JT3onvAjglACfsQevENDQhFjs3vCdy4/wfXTFNTPiZpqKT690Xb6ki3xJwr1RHD5P8
         ArtJsu2NDKilb+e88fMuqFWyOE8lRif5098XGYtnxObY+t6BlSgQ69JFP+VsLAnAz8YM
         4MCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=Aii1GYRJR3sH6ppRGP7z21tQ7E2yOZV2YPR3wVEqwcQ=;
        b=d3mp3GZ60W80Ps8W0psLbHyAHqoVkLlLib4WUSEPB6kqqbSfnTHdFmyVCnHAZcLoK7
         6OspEt+qvz6W3Gx2ftv+kOpsSG+HJ4EpCG5dG3Ox+HKdeQyr78WOWjMf0iwXplPjFim2
         eJm7oaMs78bNUgr0bOjxf+0n8+4+Od90FFBSTrz4fw7CoqzZiPgxQ1zLkeI91ewVYkpr
         UzOMMbxhv+82gjPKzkNhsXubqxlBHQWk/AZwBihADA9i9dXv6b6BxJUQdS7nKj9wlnCj
         c+CHUA/pSebbPduOhX2eSLHqxG9HY042Ohut1TNAUaIhvh2ytdLMn4ZdqcJW44TVSZoq
         Fpag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ga+ag2Pn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Aii1GYRJR3sH6ppRGP7z21tQ7E2yOZV2YPR3wVEqwcQ=;
        b=eSE0lsvazCIazppsASKNEsDyTyb8cARnwJhfv5m/Zhk3pV0eJn4B+G27TONoQwCRec
         65UMt012AKo3YdXQcLGnIeLgeDrF3iWs5TwrNyTMdodx/kwJcGgz2iq1SEP4p7VU23hZ
         FsV01TLErh6zrw3BcUj/hXo7QEaWIWkwml5d6aoF68XHnyQ+JjwMye3GQiyalY5PVPo5
         cRwz87NNJkam3sGFIQ9p6mJaqDC6m56J224MfpMVHt+ZyEQ1/cT1UnNZ16/tR8vgm8NF
         FSH2Z3al0ZSuEBFfFiLVVOIEizGQCrR3kVUPEv5Lzc7ElluDKaemBQSTzoTqeys+Uc7c
         Vk7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Aii1GYRJR3sH6ppRGP7z21tQ7E2yOZV2YPR3wVEqwcQ=;
        b=BS3sOIWzqutIPQ/julmmvMSw0jf7Pgt96847o0cK/1Txjd+7s7Gj8fKm1z+f6ClD86
         fVwjUdNUAKZCDN33ODSxebseBx5rqkjd5udNrcOsfVP7F7BSOrAJdCf6/98gjDDRIWx3
         GnCS2u/h+8NFCQmbNKDn4nOdBpkOVmCkmtXBduZbm9Cy19s8P1gdJNPKk4JE/Lima5C+
         /ARKHnhPXHxDLbP4GG9TcVzqKy10AMxb0Pzxfh7XOZpR8B6Q75inFftbcnv+rSYa0Uuo
         J3hC/F835BRWZs9OxWcZslUtvxowdP5FVYiK5WVny5bCTYX4gsh7+E2yrpP7Yjohd7qA
         0Rxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Lkc+VOAH/6v1fM2dm6C8Pp1iP367NBLE2IA9uVFamBfRK+src
	5MI8VtJNg+15KBlSKYQTnQo=
X-Google-Smtp-Source: ABdhPJwWNjUix+hL2KmEU1fXY/6M3ZNqXoeThX5jj8xpacFO/++wwBHO2YmB0kL8X8/dzEMvf4eVpQ==
X-Received: by 2002:a05:6214:c69:: with SMTP id t9mr6134535qvj.28.1629244542079;
        Tue, 17 Aug 2021 16:55:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c28:: with SMTP id a8ls99956qvd.1.gmail; Tue, 17
 Aug 2021 16:55:41 -0700 (PDT)
X-Received: by 2002:ad4:4f4b:: with SMTP id eu11mr6012618qvb.17.1629244541727;
        Tue, 17 Aug 2021 16:55:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629244541; cv=none;
        d=google.com; s=arc-20160816;
        b=nk/j9iCxNEB2k/na6cXcq519i64g5owCRtPsScGcf+f43M8PzfeHSl7qhfK132Vst5
         eqB3uG7ME8Gs5R0Sh+R9qPIKX4V0Uvl3scY7DN8ApCyald1lzldKEYemlAyJOOhzwtMb
         iCqJ6m9IpqvIghBAfolzR0VvXqLoYcM70PgWYO0XYoV+ZUaCeElsihNAY9aJopNLaqlY
         gy8icFoaD6muiU54JN9RdD6kPDUgDS6x2SRp6dRcFDE27EosG0jq64FYXvlbHsHbiSR+
         a5zw6LNfxc9fRQKk6O01TyMnIasEeRyP2Wm5++g/am/yI26Ol5yVx/m71g3pjnlHL4On
         jidw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=IAqn5Isriwmwxy2Wsr+/XwNAllFx3YE3+ykOrRTojWE=;
        b=gTAnN8RlXFS0z4qA7BrjVUeJM6tFVzQXh30venNl3rJ3YDeYCSoayOcC5DSsfskAsm
         KTdMewr3IbWvX23ih3SRbCOdxy+F4P4XUR+mlIDYey4kd1CdYlDfbwyetySi5HFvCKjn
         bAQ2XXeIUq2UaUVZgewjwA3UeWLgAyNRJGA3sdP6s236zimGM6uy3+pKFwioJ7BnmpZI
         s3lyUEv5z9z92c9F7vREvRuyH6n+VKRzTxkj+ScLV3jM55iufKYWDuuCBTTZ9S3MhElC
         uAxQG2oP1Pi6RO+wpZq40AIsxovamYG71hTGrg/ydN8BmFcMTIhZVxdDsOh/haxsNhQy
         vwXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Ga+ag2Pn;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n78si203913qkn.1.2021.08.17.16.55.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 16:55:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id E7E3B61026;
	Tue, 17 Aug 2021 23:55:38 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: =?UTF-8?q?Kai=20M=C3=A4kisara?= <Kai.Makisara@kolumbus.fi>,
	"James E.J. Bottomley" <jejb@linux.ibm.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-scsi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] scsi: st: Add missing break in switch statement in st_ioctl()
Date: Tue, 17 Aug 2021 16:55:31 -0700
Message-Id: <20210817235531.172995-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Ga+ag2Pn;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

Clang + -Wimplicit-fallthrough warns:

drivers/scsi/st.c:3831:2: warning: unannotated fall-through between
switch labels [-Wimplicit-fallthrough]
        default:
        ^
drivers/scsi/st.c:3831:2: note: insert 'break;' to avoid fall-through
        default:
        ^
        break;
1 warning generated.

Clang's -Wimplicit-fallthrough is a little bit more pedantic than GCC's,
requiring every case block to end in break, return, or fallthrough,
rather than allowing implicit fallthroughs to cases that just contain
break or return. Add a break so that there is no more warning, as has
been done all over the tree already.

Fixes: 2e27f576abc6 ("scsi: scsi_ioctl: Call scsi_cmd_ioctl() from scsi_ioctl()")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/scsi/st.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/scsi/st.c b/drivers/scsi/st.c
index 2d1b0594af69..0e36a36ed24d 100644
--- a/drivers/scsi/st.c
+++ b/drivers/scsi/st.c
@@ -3828,6 +3828,7 @@ static long st_ioctl(struct file *file, unsigned int cmd_in, unsigned long arg)
 	case CDROM_SEND_PACKET:
 		if (!capable(CAP_SYS_RAWIO))
 			return -EPERM;
+		break;
 	default:
 		break;
 	}

base-commit: 58dd8f6e1cf8c47e81fbec9f47099772ab75278b
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817235531.172995-1-nathan%40kernel.org.
