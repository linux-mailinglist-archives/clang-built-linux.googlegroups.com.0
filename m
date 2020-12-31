Return-Path: <clang-built-linux+bncBCKYNX7Y3IMBBAM3XD7QKGQEP7BUDRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EBA2E8181
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 18:42:26 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id m67sf12224378lfd.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Dec 2020 09:42:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609436545; cv=pass;
        d=google.com; s=arc-20160816;
        b=pczau6VYr4TXZSRQPWFeB9xILvQjM5pSAR/fSVriHVp5wAIhxEsGjtEd8J5Y0OlMBc
         xh/jXpafMCd4rtBnmLSs/VDE50RgiJNEDP5gRRC0YEVVq+3elQKms3JyOukpTxMD1tJU
         iO7j2EnoCzrEHHBvxasAYvlGyEgVDGxfs/V8/XLAh2UImYbNOWIMEqvB28Bxi/qlcccF
         pS7E9rDuU0O9i0DdZGWR7neJw/Hemb5rHjND2eFuj6aIJy1Fnp0OFKX20DiUMLklRPsv
         YKZ1VXZUVYrLxm33OHrl3w7nFoe21ozhnHFIurROOeSzQba5B3Y9fiHZH/NnCCvp/eR6
         EKQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8s9QswImfHjG2hGeNglG5jTUzlzUcJGXcbxmngvn4uc=;
        b=QexXi2B8N66sqLm1J+TrdCUvFMPlBoL0n4hBRwlL6Q9k9ZNBMOG6NvSz8n2U/biuCb
         9r6UA7zfa6GTrqwG9rNl7H09H4CbclXWD3z7SjyCERvWO6gW9aLNx77Lxbi+oDYdqdxA
         depsxQvX2ph1GPsv2toBdjbN8FkBJFPWPaGmAnqftdPguivqCmSdDlo7KwOAthuCdTEJ
         Ju4gJojnoDqjr3nB1Z8EUBVtLFNr4bwIV5xyn/sS7tJuCZ0tPTYpPThQ+tFsZaClnQQS
         TclA/opN70GjCvbumffV5BbNhyhUxFUX0BA3V3IhyMSZgJ4Qx5SmHWpMtQXr1zTlguED
         8Rcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandre.belloni@bootlin.com designates 217.70.183.198 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8s9QswImfHjG2hGeNglG5jTUzlzUcJGXcbxmngvn4uc=;
        b=gBo/jMT+1BHSQ78V8RZvqoOrlaa6APy9jGVRmYsedQqlH3mxnY34iPtZRB0rKm2rPN
         JE74c5bgyw2iWeVdzLdFZZI/KmPYnlGUuVGhHFgyhRHWCIKJnI5rb4dPH3D0d7u30uiC
         tuS+g5P77JynDN1c7tQ6RAve0eiOyN2gNew6g89DTVVyyUKsZI+Igl4Vw3Bg5K3F3k9s
         WvcYRlcP34y+Pu82e0hlCv041ie0QjdGEDKLjw+nv/xwkDb1OPe2SrDKy0NYr98apdZN
         Zh+9mTsAEmOrM/CssA5nT2m5hO4ioYhC3Y6mCQRKsOglOZnMkGr7yHwhvSkLk6wEFa7K
         bZfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8s9QswImfHjG2hGeNglG5jTUzlzUcJGXcbxmngvn4uc=;
        b=REOb6wwR6F15B74RFX3N47IAK8w8j9361QcYVSmPB9e18bLzvWiQS8yG73aMa3VXOl
         pnd+BUOlRTKF+lzbI7aRAo6VIEZLA+LBCbBf5TzmgHRwUMWN7zV7/PPEOHqM2hG5nNSI
         VzO5kIiQY3AR7PVU4RONUzBJ3JwUC9vpuwDso9wqJ30rsF//Y9meMJxn08snoiKDoR5W
         ycuk0hRytw21coWyemLAd8sjnKJwHsUti9zcbvQ0hYBzEbjDanQtoZX7X1ubc56Vb2Uh
         IAH/x7hWAgFA8pF3c0NQs1Qlft+YracGJkDI2CeWmcUHpPbpnIS+ZwdjXlWbZPYM7+Jw
         FvWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53210Yw82z+EKlkKvQJ+z/PQw0cv3stYCumBg5K6hakdQl6P2K3v
	SmQnxEMAB1Vx2COtOuccY0k=
X-Google-Smtp-Source: ABdhPJwcGnB4NXVT9VeljwiAkF7b5RilRTaUXwQ2BmmK7GJH+zotCJzy97t8tH2htx2Ukj2wlc3N3A==
X-Received: by 2002:a2e:9357:: with SMTP id m23mr27923148ljh.195.1609436545674;
        Thu, 31 Dec 2020 09:42:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls586973lff.0.gmail; Thu, 31 Dec
 2020 09:42:24 -0800 (PST)
X-Received: by 2002:a05:6512:318b:: with SMTP id i11mr23395434lfe.364.1609436544699;
        Thu, 31 Dec 2020 09:42:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609436544; cv=none;
        d=google.com; s=arc-20160816;
        b=TsvwutEB02D05V2olzXDEQJ7C4Ihv7yVYSw0+xsd01FfMLvw+7QAhnncX/dRv9kqcr
         TlcPKC9UyPZJdl4OpqphWPBPQK9tvPeVisUXjXPg8cBnW0H2Gggdibpbgi139tdIl7Rc
         Bcu8p3mjOW1O6qXnwfqcdZSyW3L75YNHBXR2k4rHGFCJPRGHo+b4rl3JyEVeaBrAALzN
         mfa6mrYCFPMkYtoPgBT25NN37iyBUmb5Who6SI09jAPaBx2lZXKMyxyp0V2vrEkOQRk1
         2eBgmu9uKUWtjb1iNbiSNNMLLW3D+SbxKeRmU9dhH8yf59b7IkYc1wN2yzGXfcUFm4CS
         yWYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=jUMjEdGbLDnXMtL7ZQtAd6uBEwt+BnvAK/zMbo8ySxo=;
        b=vBN5LWnEBUQPnQstfzoQzYAvhZLJquJEwyzvDG+0wf+Dw1ONJbnfCEWjnHOW4zoS+Z
         Fjq8LfRxMdZMtrShj66phQkE56Qme5z5t/zOoa6lN4knKCPLWgotsEPKXeUC7Yglcsdm
         3euDemt793RkDKeUrVtYY2FUA2oMZ9nibseFQgfe4De2MHyHmSlYAUte2XsNUTzfE5vx
         YxtJ7iuGuSliuEvqwoxzExcXZpw0niH3Voj/NstjnXi8u0Wk0SHZ5MlnFxgYhEq+Siv2
         DD8UBRZHJZx7PKfp8seJshMNC02rbn6ebozvhGlQu7CCeVdUhQnRh9U58KI9OCXZo6S9
         SP9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandre.belloni@bootlin.com designates 217.70.183.198 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net. [217.70.183.198])
        by gmr-mx.google.com with ESMTPS id i18si1391274lfp.2.2020.12.31.09.42.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 31 Dec 2020 09:42:24 -0800 (PST)
Received-SPF: pass (google.com: domain of alexandre.belloni@bootlin.com designates 217.70.183.198 as permitted sender) client-ip=217.70.183.198;
X-Originating-IP: 86.202.109.140
Received: from localhost (lfbn-lyo-1-13-140.w86-202.abo.wanadoo.fr [86.202.109.140])
	(Authenticated sender: alexandre.belloni@bootlin.com)
	by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 741A7C0003;
	Thu, 31 Dec 2020 17:42:23 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	linux-i3c@lists.infradead.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Nicolas Pitre <npitre@baylibre.com>
Subject: Re: [PATCH] i3c/master/mipi-i3c-hci: Fix position of __maybe_unused in i3c_hci_of_match
Date: Thu, 31 Dec 2020 18:42:23 +0100
Message-Id: <160943653614.132002.12499200411415721355.b4-ty@bootlin.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201222025931.3043480-1-natechancellor@gmail.com>
References: <20201222025931.3043480-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexandre.belloni@bootlin.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandre.belloni@bootlin.com designates
 217.70.183.198 as permitted sender) smtp.mailfrom=alexandre.belloni@bootlin.com
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

On Mon, 21 Dec 2020 19:59:31 -0700, Nathan Chancellor wrote:
> Clang warns:
> 
>  ../drivers/i3c/master/mipi-i3c-hci/core.c:780:21: warning: attribute
>  declaration must precede definition [-Wignored-attributes]
>  static const struct __maybe_unused of_device_id i3c_hci_of_match[] = {
>                      ^
>  ../include/linux/compiler_attributes.h:267:56: note: expanded from macro
>  '__maybe_unused'
>  #define __maybe_unused                  __attribute__((__unused__))
>                                                         ^
>  ../include/linux/mod_devicetable.h:262:8: note: previous definition is
>  here
>  struct of_device_id {
>         ^
> 1 warning generated.
> 
> [...]

Applied, thanks!

[1/1] i3c/master/mipi-i3c-hci: Fix position of __maybe_unused in i3c_hci_of_match
      commit: 291b5c9870fc546376d69cf792b7885cd0c9c1b3

Best regards,
-- 
Alexandre Belloni <alexandre.belloni@bootlin.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/160943653614.132002.12499200411415721355.b4-ty%40bootlin.com.
