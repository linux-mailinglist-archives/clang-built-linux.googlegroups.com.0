Return-Path: <clang-built-linux+bncBDUNBGN3R4KRBONVTP3AKGQEA4YZXUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id B74F71DD78B
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 21:47:05 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id x12sf2322482ljj.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 May 2020 12:47:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590090425; cv=pass;
        d=google.com; s=arc-20160816;
        b=B0nls4YrBOd4x4rKD7Ie8PysD3zOLeUM1H/wiKpm3F7rHxZbHyS0Wi4hB4uXjU05xh
         UWiAsCoCuBxxtNR2+ntlFFnc+zKXdnH2AqREq/92rYU5rCfWxw7XwRiaEzu81qrjDT2Q
         c6llZ33UTN/nH/j+T4V6Oj8cIAJHNNyoelU8ifeOJYmu70nYFAd0WO5FNM+/7zghOWam
         LMvyADjTktCi1N61z9PzsRUJv4yhu9jNBGSGPGro2C683wO+ZQUob40p3QN5GFcugZe0
         8RWXtZRcxQ4aQ/USszsCAIVcps33TSOJcr4J+Byx0b9ViFD6XxfmmbCOV+T5Le1yZ23e
         GD7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nw/4HG+/8HDVO4vHm/xQ5m+01lSSg9MJLdMgdzeYhzw=;
        b=aMMDtE+l12gDnGrSRCqQQrYkP1aM2wACyzyxR/dMAvhKiqd/95xrpNIpF7Luj/RyAj
         AEO1znUxr/o7vCojxCTHlZdi72VfP9JXj6Zw6peB/L/DVwQ5kcI2mzh4TAPix2j/l//g
         JcyTl40pQGS07ye+8hEUAKmK5CvJ48Hmi5NkhGxzdjxhyfn3SUFcUXApevTtGKyK+0sr
         gWIR+F/7G7DuLaJKfw2eohlNgiUIS/kP/rHr+tnk7M9hW3D+cQ4w6OCf8hbuZxQM0RAD
         yusWoXm3IGWCCY/4w5dRMx5CdbWFENnz0bxEVxEvsL4QTrvcdEXfh9gJgP/tawr1Degx
         tQyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nw/4HG+/8HDVO4vHm/xQ5m+01lSSg9MJLdMgdzeYhzw=;
        b=fDM+70VMCz4o2hYmv2ZsEzNQFcoTIYkF1XpIVdKx4+HLAOqdNcaVL652NDbiFrMnNs
         vPQcnW3WBFvfR8me4zcsHEHayLBdYNIFq+TxqXcVUhjtcr4jZJTu4ol6jNgeePAWQmbj
         NJa92LVluA41qmxGkcB5+tULUReWH8KDl6MINYEX9TAF2Od4nsCadUO0grx9bKQYTZKe
         qb/VxViSkpHFazwB382jYdTlwDrwh1oeqWGWVzn5B3mKYBMvykDB621MVHMlEmD+aLxe
         /9xMb2DTk6hQkjjcAwIP6kaAhIa6PSGxQzoj0Evq1X02KMakCkL7TvSUW0p59f6hHJHh
         O/Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nw/4HG+/8HDVO4vHm/xQ5m+01lSSg9MJLdMgdzeYhzw=;
        b=R1TuvtWp5TBmjpC8dHl1VQp/aeMdM6U/K5rhoUijDltiwxb1tCJL6YOQvYh70WhqLG
         vWkxhA1Pc/I/dqL2slIm2HxXSzw6ux7oWYGBO0kggRwy3cST8b4GivwyJ/gQcAWchdEl
         tphZUON3I/LfsGhPOvdBTqjWtRUbbDuXcc22T6uFfXaS/qfwdEfW6BRqSDDbAKlNiir5
         BiV29wR2d3HfwoteS6CqyQjpjQ65s5tTzOeJUu7jJ10h6A7TcyZ4PJ01h/y1s+/jPby4
         iBbRhpWYjOeSLPgGLHAeNhYelR03sxMKamxl8MbRjRfmDWaln4BX23nbFGXrIa/Mu63W
         pNXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533z72o72bVvWLNdU61EOrD2YvjJHvJ4fqlO1V1y3ujORys1zjjQ
	qYjW8/eIuD/I7pFb9SK1xK4=
X-Google-Smtp-Source: ABdhPJykgxtNDZtxwP6FqeRERk/cxK2Q3uLOWENYme9DtNS1sMAf47IA3DBiVQ4zs+2Cd7NvWw0ZAA==
X-Received: by 2002:a2e:7f08:: with SMTP id a8mr3922372ljd.332.1590090425160;
        Thu, 21 May 2020 12:47:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:4b43:: with SMTP id y64ls316317lfa.2.gmail; Thu, 21 May
 2020 12:47:04 -0700 (PDT)
X-Received: by 2002:ac2:5691:: with SMTP id 17mr5872362lfr.128.1590090424404;
        Thu, 21 May 2020 12:47:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590090424; cv=none;
        d=google.com; s=arc-20160816;
        b=CJOyJm+2t50I6CYT25hL2Cz5NNl5s8LnkqvZKhglHnKVqElZUm87X4E/kAnUKpQSXl
         rsEjlwoRYzCDi91GsykdhXHYcKGRRV/RjYDVgdhoa+JAtReoDZH6sha3KHDAPALVO0i6
         zy3mXOEFCc92dDMsr0xWY2XzSwknqdJkoSAe68Mau7ORtksWv+Mh+3DnNHVq28t/pGsL
         c94GXFL0kkp5ftPoAb5wmhQJCVGUaqv7noQFhFl/d2ATJ0BY8kH7qPxCnqynWuuqdRxc
         CYmqiXFUx4A+Suc0SARoO4p+YqLrxT+BSuLkmY7aPDEbbxfLLggAMoxfLaz0//tyK+If
         40Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ASKYgvJX5VsqSHFMIWIVaznLrCm9gBIWP3ptGPh/Xgs=;
        b=0gDIpOH+NxiWfQyRNpNe5jj6OxONhThTtUvjq7TD+j4dW7Po6kTlVI28F14x19IvDn
         c6HElafE1oqb7Jpn4UYrprDig1cdJY2epTOHkbo38lEciDoQ8wnVX8uhf8q0Fmt55mr4
         XgKrvFX7gbqoMuSvruvz2cHiAz5DM753zzWxr9U6tGu/m7/aF/XqflqX8pSNeRyqxcLy
         CnjP4cp4Vf0R7M6ArWdJw6hDTfQMaUvVicgkSaA89AOKvjgMQP+aqR3zlGAH6FJwHNA5
         2zv7rquD86DYicyi9WQRLJe+2K/tS4OnD4syxrVDwSdIQ0l0e6XTq2Ic/wZqV+vSdpUe
         OkXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id b20si293537lji.6.2020.05.21.12.47.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 May 2020 12:47:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id A093668BEB; Thu, 21 May 2020 21:47:02 +0200 (CEST)
Date: Thu, 21 May 2020 21:47:02 +0200
From: Christoph Hellwig <hch@lst.de>
To: kbuild test robot <lkp@intel.com>
Cc: Israel Rukshin <israelr@mellanox.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Christoph Hellwig <hch@lst.de>,
	Max Gurtovoy <maxg@mellanox.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Subject: Re: [linux-nvme:nvme-5.8 26/33] io-cmd-bdev.c:undefined reference
 to `t10_pi_type1_crc'
Message-ID: <20200521194702.GA23114@lst.de>
References: <202005220306.P96iFPve%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202005220306.P96iFPve%lkp@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

Ok, looks like the previous fix wasn't enough.  It seems like we
need to fold this in, similar to sd and the nvme host driver:

diff --git a/drivers/nvme/target/Kconfig b/drivers/nvme/target/Kconfig
index d7f48c0fb311f..4474952d64c6b 100644
--- a/drivers/nvme/target/Kconfig
+++ b/drivers/nvme/target/Kconfig
@@ -4,6 +4,7 @@ config NVME_TARGET
 	tristate "NVMe Target support"
 	depends on BLOCK
 	depends on CONFIGFS_FS
+	select BLK_DEV_INTEGRITY_T10 if BLK_DEV_INTEGRITY
 	select SGL_ALLOC
 	help
 	  This enabled target side support for the NVMe protocol, that is

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200521194702.GA23114%40lst.de.
