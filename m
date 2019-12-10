Return-Path: <clang-built-linux+bncBDCIDJ4RTAOBBJN6XTXQKGQE4O4I3AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E6D117F02
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 05:29:26 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id y21sf3567211lfl.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 20:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nhfVuUfyp9mFbbHARm/6+tkUl+vQB4ryZpc6UlBu2/I=;
        b=f8bpvN+3voxghRvfp6FpFNF6SglTdfm5zXzRyPB4c6XbvaHIaw+52rreUOia99aXf0
         ju3I+tuNth1g2PhxOReMuW5+7sbWwcSDt5rVuDC55L97uHFKcG2MaW5hNeTCpEkDFfj3
         //aEHx8VYtJHLYjerpvsduRFu/B4Y37G2Mka93NAjEVIg2GZKBfh0x0WT+f6Uy/C1VBT
         Wpb7VQlvdvbHmhW32W7dT6hYYiwrMqM2mergkxdE8bOjADpXYowtoZX0GiyySSn9JD5q
         kQOS0Y1LmnGht6U6+uMwpwdMHl90NzY2bxtgaXg2SqRo5J0J2ZIaooA0pCghP1Aou9sF
         g9PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nhfVuUfyp9mFbbHARm/6+tkUl+vQB4ryZpc6UlBu2/I=;
        b=qOQE3+kcYq6ie05UBuPGDhlxrfVsPjyweLVCQLqSHE2vL90TGgzbLBErpE+4XocfjN
         5lpx1URy/FxYE2ux2T1U5kPwQwN1vsqHRmaD3IrdNHLVwwAb1DjN0sprkf/4ZMt3Kd6h
         AyNtUXFgfF08pm2ehR18pjeYCykSZ86Z1LeB3gIvhJS0iaUMWbd5Hv8LxjoXKyjNDpjj
         l5zzbpmQddvYUdyIuJSVvDqcGsRb2kL+RP8M6KoOK7I49yr6mBZFsoyOUYoVRl+8Vqmo
         o+B6ogynkV/PvtpfgkTYA3iweE5x+kmECGvBTfPyuaTBJYX6v6zk800/gvBYZm56Qcxn
         5u2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWsz8MEDN0f60dCnk6V6f2fEr2ltIAaYjb0wdq9urmj6zSClNFc
	jljUOzX87S8m2O+3X/P7r5s=
X-Google-Smtp-Source: APXvYqyfEfs2Uvpc63WwWx+sGXT+MQqWoDbHa7OKWzTEmPUXRPo4uYKeMiMX7XlmKhrIPkS6Fk+Nvw==
X-Received: by 2002:a2e:3a13:: with SMTP id h19mr19627462lja.16.1575952166074;
        Mon, 09 Dec 2019 20:29:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b5d9:: with SMTP id g25ls824962ljn.9.gmail; Mon, 09 Dec
 2019 20:29:25 -0800 (PST)
X-Received: by 2002:a2e:9b55:: with SMTP id o21mr17648305ljj.147.1575952165427;
        Mon, 09 Dec 2019 20:29:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575952165; cv=none;
        d=google.com; s=arc-20160816;
        b=dKCAFCHdY9HsCsZe0QDMRPxz0SzpfyFzH6uAl9vQOzGElablJXbEzEPn4AM7UoWMXN
         Y+kxWxki846+2u2xRw/UDK47uZKpABf5L55vVGgYgHDgsEr1LCjeJ79LeaX526UCIH8Z
         Li8CQnEna0ZSsioYwNS/aYQXctQ+hN5odSmLUxkQlBJC0dnMcUvmcL4Y8UgHmsq9WjFY
         HTZwEigLMOupTItTqbwBRDKLlDEYDiesMMgEXlgzoGSqnqysalvfFuvuxN9ij0okB3ZO
         R8GS28qTxUk6jvjm/M4BjZPOCt9G1yg3z8Dc4s+JNvKzNubuYfmcsC8E3kobMsNfyRgX
         CFrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date;
        bh=nhfVuUfyp9mFbbHARm/6+tkUl+vQB4ryZpc6UlBu2/I=;
        b=rEadLpoaixZldD2bXkgiabL3ER67YiWTNk+PuGP6RGjJOnkI6hcrCYx2eJu5a1GTg4
         Rj7uU1Os3mHI0hmRcfxiKnBQbFcJvaxM2QJGexJRwxqzqy/sdlHmUhhatO6+4O7BNNxH
         G3tA3sHjcMie8aRrlc8R/ALiR6dNgV8PhezsA+m+bsxeNXayyHCaYrquKocEb0gpWkQI
         pXbnh+rAUCVZMZX29eQQGpIku5JiauSrxkgAtwGAIGKOoBj8dR9cHCDchZYtBma+EnhR
         6zu61IDgxYND2dSoQ9Oi0hN9MJoV/TapNdbp0jg2kBrhupuPH1dinbcwJcgGlPpe4uqN
         Y1cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) smtp.mailfrom=davem@davemloft.net
Received: from shards.monkeyblade.net (shards.monkeyblade.net. [2620:137:e000::1:9])
        by gmr-mx.google.com with ESMTPS id b5si95462ljo.0.2019.12.09.20.29.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Dec 2019 20:29:25 -0800 (PST)
Received-SPF: neutral (google.com: 2620:137:e000::1:9 is neither permitted nor denied by best guess record for domain of davem@davemloft.net) client-ip=2620:137:e000::1:9;
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
	(using TLSv1 with cipher AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	(Authenticated sender: davem-davemloft)
	by shards.monkeyblade.net (Postfix) with ESMTPSA id 49291154F0CC5;
	Mon,  9 Dec 2019 20:29:21 -0800 (PST)
Date: Mon, 09 Dec 2019 20:29:20 -0800 (PST)
Message-Id: <20191209.202920.1031568566965416683.davem@davemloft.net>
To: natechancellor@gmail.com
Cc: netdev@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] net: tulip: Adjust indentation in
 {dmfe,uli526x}_init_module
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191209211623.44166-1-natechancellor@gmail.com>
References: <20191209211623.44166-1-natechancellor@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12 (shards.monkeyblade.net [149.20.54.216]); Mon, 09 Dec 2019 20:29:21 -0800 (PST)
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
Date: Mon,  9 Dec 2019 14:16:23 -0700

> Clang warns:
> 
> ../drivers/net/ethernet/dec/tulip/uli526x.c:1812:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         switch (mode) {
>         ^
> ../drivers/net/ethernet/dec/tulip/uli526x.c:1809:2: note: previous
> statement is here
>         if (cr6set)
>         ^
> 1 warning generated.
> 
> ../drivers/net/ethernet/dec/tulip/dmfe.c:2217:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         switch(mode) {
>         ^
> ../drivers/net/ethernet/dec/tulip/dmfe.c:2214:2: note: previous
> statement is here
>         if (cr6set)
>         ^
> 1 warning generated.
> 
> This warning occurs because there is a space before the tab on these
> lines. Remove them so that the indentation is consistent with the Linux
> kernel coding style and clang no longer warns.
> 
> While we are here, adjust the default block in dmfe_init_module to have
> a proper break between the label and assignment and add a space between
> the switch and opening parentheses to avoid a checkpatch warning.
> 
> Fixes: e1c3e5014040 ("[PATCH] initialisation cleanup for ULI526x-net-driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/795
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied, but it's really crummy that the tool gets tripped up by the
fact that a space preceeds the TAB.  It's what the code visually looks
like, not what exact kinds of SPACE characters were used to get there.
