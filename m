Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUEO22EAMGQE4DRFY2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 828A73EABEA
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 22:40:49 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id f9-20020a1709028609b0290128bcba6be7sf4499432plo.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 13:40:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628800848; cv=pass;
        d=google.com; s=arc-20160816;
        b=PMsxUhhsAChSxc3Kfs3KhBjCTsNuRS2tGSrK0EuVB2o8LmYyU1FTo5UiSndGsFwkTB
         +TUXRgZrARu4hmOssMU6LDyc3l4dcIkxbGAOFzgSKlYWQD6x4lYyWQZ8joFmsQbS+XKq
         IHZ8GZYA+1pGijIVkvivwa9vstISCra4+7mzro7UpbqgFPwaCAGpo9jsTo3CpyvriwC9
         kEocA/5RWRUJQpLnSHi8YU5EplC/JKDdaiVnwKyq5FZnZ8+YwL4dSrmnQ//vfLCwSoUY
         AUssrSjJoABd6yf4glFwwxkHULMz2C3NhhaR1SIlnaQyCvO+kRCCljjfN1uewk+owHXz
         x5HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hfD9JHTc/CjwwIckaaRkhJ2jOKdamN/gs0j5JYcdTRU=;
        b=Gm7f6f0IrMG/yyjjLalpiWR5+5Kog/w3JrHlC7W542+WuZ3TD87jMxkKh2uyOKh/si
         kjnFUoUM0+6ZXpgpR7b6MLGxdQtN9ubOuStcOuCwKmtY/TfoUDPsgCpJJxw60vnvldw4
         T4oCwMGyLmtrOTpEaIHufLUkE96OLJ7lX06eeSgTbrVLiblX9edL6wvF9Ye/G1tXahuE
         NGMzoLYgFhqrc5jGe6clpgACMtDKVWwXZuXsHGk87sCSjMtnFtyEq+Virru3MheUUt/w
         0pJ2fgaQxrLMJybYdHW9Ok6P4atN4jmhOL43QzZY0VNDlPdh9YZJscI7viHKg7k6B5nG
         /Dnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=G+m6IC7F;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hfD9JHTc/CjwwIckaaRkhJ2jOKdamN/gs0j5JYcdTRU=;
        b=WDq8lD64829JCclS2AoZEryD2aiegapOvJvigQvCHYkPMeVfaoHOF9ZYs+r/Sx5an2
         hqqS4BzBZGhu0Uqhj/MzP0IJN+8kUSHCkK20D2XrEl9xbVPhji8+nERCDdfyYb6xFapH
         sgBiBq/fPBa7Acy+8GGQbV/aPWQG/vlmhLXwH2TkLX93lHMDrs1QasecagG4KIs0VQje
         j9tBD0A4uGMhEwndS4naAVGRMNSliJbPo8O7KDxCXp7unsWk9QQi/nd+sJbPILZVbrOg
         ZVD1fCxJpJgHGz8As7NQtogFMHBKO0rf9Jb71/buJMSOy59MLgSKjMoPiF6WFH8PskVM
         dW2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hfD9JHTc/CjwwIckaaRkhJ2jOKdamN/gs0j5JYcdTRU=;
        b=NdKs2a7XHymowBGwOq5iEaggX99M9OIo2wj8W11UUvAPQ8wXNjQh6JhvhY0PVmBM86
         ZKHG3dGxb4/MMHZrtBXLOjNm3874P5yaA3kbU8uVpBmdQUZxT0XnAXKDsyVlz3kXBiPB
         WAR5Ibp93A9HIRnKFIX7li3o8RmE1IxJ5brXT4ZY1ZrOs5lqY3vbLpgd4t+YK72aBVU7
         ZXF+aJBlMRAybt3IqzNTZ1MlOIU3/45YDhs079KC859Ozr/BoffXeYakdI5Nt136K6nb
         n9IwtQVVCl17W+EZSMCYe40yO287+YFer2P+ukRb7OhhInvFYKvWh91mCbmyhwFU6bRV
         Gnng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AKpKspmmfA+U/1Ug1lCGTV5yT651pRbTwJC80+OaRFuYP1ZVX
	Oo7nOIJSKEx0qFTS5/TNCVU=
X-Google-Smtp-Source: ABdhPJws/nMCaT3eKlW1zez+WUArzEA6e7wSB/9YijbXyllxd9DDYEkqq4pQ0Nw5x+KVEnY6knUJDw==
X-Received: by 2002:aa7:8585:0:b029:3c7:e8ce:20a7 with SMTP id w5-20020aa785850000b02903c7e8ce20a7mr5838848pfn.64.1628800848242;
        Thu, 12 Aug 2021 13:40:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:4094:: with SMTP id z20ls725445plc.7.gmail; Thu, 12
 Aug 2021 13:40:47 -0700 (PDT)
X-Received: by 2002:a17:90b:1009:: with SMTP id gm9mr6142308pjb.2.1628800847690;
        Thu, 12 Aug 2021 13:40:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628800847; cv=none;
        d=google.com; s=arc-20160816;
        b=ar/IeuOBDbslVG0DgwmQkhVi80lHIlO2pZCg85cBQLaiSEOxikLLqvL/cN6wDT2Hwu
         yEUXP1gKJn/Wiu1oChRR6OuS9hdijySxGH72JBzYqdNgRtC76v1hvZQH8cqH+JBrMQnV
         LBboj8fyJ2x3yvwDOcwtcwvwxdmeAdloo5ZINYd80fYmeIcvRAZyZ3jGdp4zi9V74s9Y
         TCZf39RX3zp7IjClUBxxqjfpglDNWYb6FKmnMdK0GER+QDNEcgLRqx4eKCpYHt/qdxLp
         kKdsNuf8tEQWfKpjsylS7/GrjSpX2Ar9MD5DwSmzAdUEIB+l9xGFEzheG8kgYHFxH5EW
         n1lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=SlnzGQW7axixt5X911OZxQZrbiEKPn6lPxUyeOznze4=;
        b=p7BKP0EKw4+XtaYk7RMHElUYNwZWrCTKRjBxj6tGmfcSYVrQCTNAPGeD1jXC5wfDUi
         MdRAd7j8MLEmB4WFJ4jIqMjOJC6ChxnClCsPjyrUPSmjL7a8s27rmn+wWsjmm/wtxsJW
         FOhZvFm/tzpn+nryuzojGv+X4cXzNGgD7PPnutEi+/xwivaKepnGoitypkfelh+y7RNg
         mUoOzVzbZC1FkyrHgt2YPwPmVI8sQkTKC1E6x3tduOPaPbBnuYUa+EMGtenAKDoEME3X
         90IYLTIwTqoPH6clRnMWnulEJ1Fst/Tmz+d3SFPRjX6crrWCf1rQBoa/O2z5SxZ6bx5y
         2aUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=G+m6IC7F;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q10si259824pgv.5.2021.08.12.13.40.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Aug 2021 13:40:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DC46C610A8;
	Thu, 12 Aug 2021 20:40:45 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Phillip Potter <phil@philpotter.co.uk>,
	Larry Finger <Larry.Finger@lwfinger.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 2/3] staging: r8188eu: Remove uninitialized use of ether_type in portctrl()
Date: Thu, 12 Aug 2021 13:40:26 -0700
Message-Id: <20210812204027.338872-3-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0.rc2
In-Reply-To: <20210812204027.338872-1-nathan@kernel.org>
References: <20210812204027.338872-1-nathan@kernel.org>
MIME-Version: 1.0
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=G+m6IC7F;       spf=pass
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

After commit 987219ad34a6 ("staging: r8188eu: remove lines from Makefile
that silence build warnings"), clang warns:

drivers/staging/r8188eu/core/rtw_recv.c:499:8: warning: variable
'ether_type' is uninitialized when used here [-Wuninitialized]
                        if (ether_type == eapol_type)
                            ^~~~~~~~~~
drivers/staging/r8188eu/core/rtw_recv.c:458:16: note: initialize the
variable 'ether_type' to silence this warning
        u16     ether_type;
                          ^
                           = 0
1 warning generated.

This if statement sets the exact same assignment as above so just remove
it.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/staging/r8188eu/core/rtw_recv.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/r8188eu/core/rtw_recv.c b/drivers/staging/r8188eu/core/rtw_recv.c
index 9b3637e49052..8df38db9572c 100644
--- a/drivers/staging/r8188eu/core/rtw_recv.c
+++ b/drivers/staging/r8188eu/core/rtw_recv.c
@@ -495,10 +495,6 @@ static struct recv_frame *portctrl(struct adapter *adapter, struct recv_frame *p
 			/* allowed */
 			/* check decryption status, and decrypt the frame if needed */
 			prtnframe = precv_frame;
-			/* check is the EAPOL frame or not (Rekey) */
-			if (ether_type == eapol_type)
-				/* check Rekey */
-				prtnframe = precv_frame;
 		}
 	} else {
 		prtnframe = precv_frame;
-- 
2.33.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210812204027.338872-3-nathan%40kernel.org.
