Return-Path: <clang-built-linux+bncBCLI747UVAFRB3E2XXYAKGQEQLZCCAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D0912F91C
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jan 2020 15:19:25 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id j9sf10032162ywg.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jan 2020 06:19:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578061164; cv=pass;
        d=google.com; s=arc-20160816;
        b=LLyBmAbatkESlZSq1aQC4udwtXkRA6avf3sIHKyzKMIqJ1NduA98DWCblhiMqFSbxl
         Zy49MFMWGuurHFBtJQF5Wj0q2u/Vwhjs5AphE2P9Ss6Y/vgXe/VwyYvysYWBzugrKnDU
         a1ZEGS2F+ieEoTo7rMscAXv9s5LmLBAjkjzNMfeItliQ17jZtiOubwinsEdK5RCWXK6j
         W0XqUw4JE3hLjbGMIHJjlqJZifZe+oBoKqk0HJwOaDHh6FRRtJOGxH1dGr1c5xaDTCji
         Zmg/gUajHxkrTQY3kGEJdZXbU8JbVY29sIjehgAVjP6bMOtx7dvLRW/XWPHUAcbAHDhb
         dghg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:to:from:date:sender:dkim-signature;
        bh=d/HBXTREiqQ9s/zPjjizyGlozIehB2NPDhiLyB9r4jE=;
        b=jc4a+Rclq5pCNEyLYqC82HOLimOsaKs1UedawqZzglrQoc8+pd4sDyCpMXXw0+RAue
         e/jWYivQ35CKEHtp3bCeEr6O5JLvEtT8i6JHHYilc8isEhjuzNCW5DaJy3tgQUe9k5HY
         nwwKKetubQFLFAHfP0GWdrqrP2tTjVuItnGP52ycVPr6jRyOjis0fqzni1ij91LSpErl
         Vc2wZirvnY5CLdOZp5Y0gHOLAdeFe0MMYYZmrXsLgVv2mOUuSRlPZZxn8cUZ970g8zSk
         DjQDEnzn7aSropZzTlBhOGir0SmCNzhAj/0Zz/tFnqIozK2pnZCB0/rQEw5H41Jaikz5
         5GMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=IMatEYnc;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d/HBXTREiqQ9s/zPjjizyGlozIehB2NPDhiLyB9r4jE=;
        b=sg0wbw9ESmjbntIpbBJcH4ARbabTM4Ufzv4DJ37FSkaX2lnEuE+Ng6DPkLsjnZ6mDT
         UVY9YF6VAfQLCQB/noZXM1y9eqmc0vQxMf99pdQZ9tyubZBbHD/pOGBR1Zl7986sumWJ
         /Uk9YkVWEdVHB2B1ruGFmN1Ihqz4uqVn8RzrqcGfjwkg/+ubZZ+p/adwo5g5dCeNZKWw
         T4F0TRa1IaNDoYFXvm3BjbGxDdLk5Q9W02oNIpSiQNQo5aIWiYJRwm2aLTOorVN5pouS
         VKl5BLHpSWTb/ab4QNv+3VMsvrAeW9l82zHC8zq/gSK/cXCFW77wTibqCJf/sew5F/jw
         spXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d/HBXTREiqQ9s/zPjjizyGlozIehB2NPDhiLyB9r4jE=;
        b=RyzkgJ25pkoeYpXr3Y0h3rXgkAUyCdtLEnRUoauMO0QsWwXAUo+U4Z9ChZOl4sdB3g
         Cy8RLFNulT7D9uiJwxSLB4bqR6hxlZSQpoegAbRcMQt5tpdtxNenD7s3Jmo8ij6sCrMg
         uA/5t6nYAkhYDP20XgkdzyuCUSGd9BCe5HjFbg1OQmYvvrd6qq3FNf5lt+DRxML8q6ud
         ynB+zxlCuEfjwoEXsC2QLVqlxeOKc48D3MrGj5uD3pyMp1IuLz81AbovKhSyDtSBB29I
         S8FeDl+hByITbXt/yeSDSc71Dw2+Cyyb1XDedUPDH8zFej7zh5YELmQvxIUDJBEQCtx9
         F45A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUzkU0DssB32C9vre4Dr9IuDnBq/2fde0mtbm72OigIMJ9pZa7U
	IE3R5/R0XCXjVtCJdnj8SqA=
X-Google-Smtp-Source: APXvYqyeTGPBIsmSqYP3gmIpaD9nWPCmTSZn3Pk5XxQU4msx7hsPy505R49YcJYkj6GvsO8tsFdj+w==
X-Received: by 2002:a25:1f82:: with SMTP id f124mr50263086ybf.471.1578061164472;
        Fri, 03 Jan 2020 06:19:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:8644:: with SMTP id w65ls2711088ywf.3.gmail; Fri, 03 Jan
 2020 06:19:24 -0800 (PST)
X-Received: by 2002:a0d:e9c7:: with SMTP id s190mr67144683ywe.429.1578061164132;
        Fri, 03 Jan 2020 06:19:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578061164; cv=none;
        d=google.com; s=arc-20160816;
        b=bv1ynP0kg/F3WWkt6rg+ljByMTS3CrUmpLB2qdoap5Rw/nPNptOxp/jlnE4IrV0ieT
         q9WLMzoZckTY+Dn8FX2sJEZw3R5TbVKvywb7+9s/FORPKi0OOy7ENa05QPyRXtlUaihX
         LyZv9dtLPnM9Fi9u7gJM4f02hPmrNKXgUZ1GWyzyytY4ji3V59kdhadsntjegOD6XcMJ
         HmSomifYFfk9juCGY+qpEb+UJKUkaQUKRYs7z0vFotE/6+aHbUh53UiCcXOYKdROmpJw
         FeJmr8MG2n4Z5CSP9csMUjbZkwLlC5nYOzX82FH7hR14WW/aJpRKhE6jfULUUtJJ/blP
         YUgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :dkim-signature;
        bh=lScLffv/YQMycTroUYKxxU6eHf4tp4xd8XyidK4LI14=;
        b=I/+anAkRFjRtyaFfFJp6C9yewk+/r5WlBMhmP/5C9b9PuC/303TWUKPo1rVFv7cjyX
         RnTA6Ael0Ap7i6Olsy9o1330hxKocL8qirupgUlyRQhCmCwEI6fwTsLgX4grnBfEM+kU
         w9TOrFVbUoEPbtRoQLpvzDf5gtyVxNgzgbpZmVyIzvIuL5mGH/a2+XYor2Rm2ffRO0xP
         pXlQoI+IXr3Ww1LwnfzmDmFpBXmuUlp8KffUREDHENST5O4Gr6E6tV48d3a1ZzlOhHNG
         EGKt+7iDCDELVVhE3XTEhv/uEOWzBRaLvqa1R6AItMI7s+RzBGvFngTYIdWrEHyyVXIN
         hJYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=IMatEYnc;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id s64si2508843ywf.0.2020.01.03.06.19.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 Jan 2020 06:19:23 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 04110c1a;
	Fri, 3 Jan 2020 13:20:43 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id e9256d7b (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO);
	Fri, 3 Jan 2020 13:20:43 +0000 (UTC)
Date: Fri, 3 Jan 2020 15:19:19 +0100
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: linux-kernel@vger.kernel.org, llvmlinux@lists.linuxfoundation.org,
	clang-built-linux@googlegroups.com
Subject: instructions: using clang's static analyzer on arbitrary kernel
 modules
Message-ID: <20200103141919.GA1258456@zx2c4.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=IMatEYnc;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

Hi,

I figure I should document this somewhere. Here's what I've been using
to run both clang's scan-build and sparse at the same time on the
wireguard kernel module:

rm -rf /tmp/check-wireguard-linux
make CC=clang O=/tmp/check-wireguard-linux defconfig -j$(nproc)
printf 'CONFIG_WIREGUARD=m\nCONFIG_WIREGUARD_DEBUG=y\n' >> /tmp/check-wireguard-linux/.config
make CC=clang O=/tmp/check-wireguard-linux prepare -j$(nproc)
scan-build --use-cc=clang -maxloop 100 --view --keep-going make CC=clang O=/tmp/check-wireguard-linux drivers/net/wireguard/wireguard.ko -j$(nproc) C=2 CF="-D__CHECK_ENDIAN__"

It seems to generally work well at catching super stupid mistakes.

Regards,
Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200103141919.GA1258456%40zx2c4.com.
