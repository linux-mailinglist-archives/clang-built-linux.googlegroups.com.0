Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBB6G46DXQKGQEXLGK44Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC90127363
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 03:14:16 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id y4sf773573lfg.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Dec 2019 18:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TaHwN3WKBPOF+n7SY0zRblwP1AydxN/mZBeLdB4pj9g=;
        b=fJ7Gce1+5lXAanfOUp1HVSxUuPuYFRLFsDqX6TX1IDTGgAJMU6DZVlXcGxJ7g2Vm7V
         s8K/aSo+RiwlnibNeLIRijkOW9sOZ7kNUxPEsQkc+is9lEbEksiZ9oKzrPjKCp0KE0Ki
         FrAyYz+nQiOQfJRYeBDtXoszhDgcl4HfQmIvrjD3IWT5a59ajl2v2tesuIe+CCdTDUnb
         1vOWHXMURfI9vLpGWuWPU5zE7ZpiRHUjEYe8ou7W3hsP5z0Er3wu1O+G/7BqxUXKVcQl
         egg8kSS5jjSlyxmxRpxMWWEDeW0DyzOP1ef30ndkZOTLt/u3iUFPfEAkVYxnWqRfAZLW
         OD4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TaHwN3WKBPOF+n7SY0zRblwP1AydxN/mZBeLdB4pj9g=;
        b=nXrCk3hV3Nt3c3F2appN1lK1jgR58/pXsxensCzr1UQrrqahmkiHdymEFhchYN7kGk
         X3ORMidaYR0SScPAdO/3EbeymMxYl3PquBzES6T+DgIPlaeLEAb2mhP7emBu0cuEq4aw
         ax/aotyMy2vzIaccMwKaY2NetApdrKJxgFeC7knLwiYxJ2dohxqYWty09H5E/sutzRGg
         2TGJnrUR6nh2krNZrLdrXgARRHBAxA5c6weMrC6nya0k/Vr6SxQANmwSpREA9knjyexm
         eTzoN5a8bl3d1d0FiYbkAjzUTUNmEh9ruhCQ63kvhA+6oeZKn1/lpGX3L6EggHUwNoBR
         u41w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUhmeCKSEnAIO6rUQJKHQhlOdK47X2RO/NjzSJdu5lWtM+mUNgW
	setrh6dNL/FdRDXGURZ5zVU=
X-Google-Smtp-Source: APXvYqyNt6nRwz8ufBOlIp57WKlHT7RQxrEFpwg+u4cwjrtlp3DhAPtjkn/rLI4B0pjaJmv/6Rbbig==
X-Received: by 2002:a19:ac43:: with SMTP id r3mr7474756lfc.156.1576808056098;
        Thu, 19 Dec 2019 18:14:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5219:: with SMTP id a25ls698421lfl.16.gmail; Thu, 19 Dec
 2019 18:14:15 -0800 (PST)
X-Received: by 2002:a19:4f46:: with SMTP id a6mr7421095lfk.143.1576808055442;
        Thu, 19 Dec 2019 18:14:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576808055; cv=none;
        d=google.com; s=arc-20160816;
        b=H9Sbeoo/6okwwZzD1Wxc3lsTlJIZXgNoTaCFeyRgSh8bFFKSv4+VZDgDEb7gsHzq8d
         yyCtVShy/zBYkU4YRaIe5kJ1Yt0rGnKGdBbWHAafgIbLIdoNz2PUcRF9TmyM6DQ80/Rf
         izbNRQg6ABy4lhFYXi0IFwKrEups7DsKTGPCXVOpvZHiTOARbKMCKTpJpDfHjsCRUSe8
         fGekW51TqpJtikeT89ofg0bRz22heHa2jplPWVvWFFtCe57Lm6EfkuhTghEdOb+OwW38
         CizhCP54XHV9PINaP2QI5MwTzrDpedzGDR/CU7Y8yz8JCvc2hS80PLTbj8jS00518iDI
         xn4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=TaHwN3WKBPOF+n7SY0zRblwP1AydxN/mZBeLdB4pj9g=;
        b=Dk1L6CKc1IAoU9DGiHop1b99WxvdU9YZyGb2zZOmdhtPrL4cWeCLN3w7bPl06/yBGE
         /6cyasHNL8gzxZFOVGaFSOZOZevyBsy273Wtg8xBDQ+UaymzqSTrp/e13etBdysX2WM9
         n4/JhSEL4pWIyCxCLEK7D/bTVoEMxqaceue+u80y1Uyk8qoAwOp/101boS8FKSauVpoh
         0wAGcZXq4/427NhqPeHQjLC/3Qy/C/Qrgit62DKxcXSHKonNtmenhnEIt0GWtXcRGOHo
         Ahjz/P3HN1c3/YDmdORyYUo0Yu2Tba//j63jwYsAed4kLkeOmbYqP6N0g1Ewc27t+d3A
         RNLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id a26si292436ljn.1.2019.12.19.18.14.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Dec 2019 18:14:15 -0800 (PST)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 7D55A154193D2;
	Thu, 19 Dec 2019 18:14:12 -0800 (PST)
Date: Thu, 19 Dec 2019 18:14:12 -0800 (PST)
Message-Id: <20191219.181412.1944669600075288939.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
Subject: Re: [PATCH] NFC: pn544: Adjust indentation in
 pn544_hci_check_presence
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191218012152.15570-1-natechancellor@gmail.com>
References: <20191218012152.15570-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Thu, 19 Dec 2019 18:14:12 -0800 (PST)
X-Original-Sender: davem@davemloft.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess
 record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
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

From: Nathan Chancellor <natechancellor@gmail.com>
Date: Tue, 17 Dec 2019 18:21:52 -0700

> Clang warns
> 
> ../drivers/nfc/pn544/pn544.c:696:4: warning: misleading indentation;
> statement is not part of the previous 'if' [-Wmisleading-indentation]
>                  return nfc_hci_send_cmd(hdev, NFC_HCI_RF_READER_A_GATE,
>                  ^
> ../drivers/nfc/pn544/pn544.c:692:3: note: previous statement is here
>                 if (target->nfcid1_len != 4 && target->nfcid1_len != 7 &&
>                 ^
> 1 warning generated.
> 
> This warning occurs because there is a space after the tab on this line.
> Remove it so that the indentation is consistent with the Linux kernel
> coding style and clang no longer warns.
> 
> Fixes: da052850b911 ("NFC: Add pn544 presence check for different targets")
> Link: https://github.com/ClangBuiltLinux/linux/issues/814
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied to net-next, thanks.
