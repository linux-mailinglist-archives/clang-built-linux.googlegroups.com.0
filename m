Return-Path: <clang-built-linux+bncBDUNBGN3R4KRBO54V36QKGQETORUQGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id E62C72AEAF2
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 09:18:03 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id y1sf586483wma.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 00:18:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605082683; cv=pass;
        d=google.com; s=arc-20160816;
        b=brx6rF07GZf2pB+eNJ4BHV6lOl59pnAF+FPYEbjp++uG+GFzI/E5vBBXbyCAsqepBM
         lOoKJesDguxqr9bBF3e7kVrxRcdJze/9gcGOP487gale6+wS3mKvVOBluaU4KzJVbcPO
         EchiVUlVfPPTD/3l6v0sWfkY2n9RKbid8UwN/ueVhkEeXLsTKhf8S6AKItHjEutmRwOV
         +wKTZuUXZUb8r+FXZxfVpTM2NTeTe7OVjD41e/zlBPlsuNtNjnNybak6MfWS47LUjZHv
         pJK2QdpHxw4KYObRIrvmdekPAviwmqBeQr5ZQgx5PeGnTuCdG2s/BTyev9TLJyjOTb/N
         GvwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=boT9PQDclMYOIfyawcie1rwdWbWcXfxedyyyZpBGJjI=;
        b=Yqc8vfXCoFpOrSraAvxRXmX9ccLNwHnVCuDssRvTJT3WFlRhdJdgVLcshItZ+2Lv8V
         ArqHrmRDFYhWcGrb1PcE87UGCDgiw37VwgQdv5FDkfDR8kklgPqtOxNhvRSxYNItKMlD
         /Wa4kwdeA7TUn/wAjqxHCSSLnJdKdEjHrlMIWYZKgSzoJXE1wTC3lzVQlVqJK3RLhmN2
         M7F+ajc+3kSZ9vcL1gcFJWfILLwbqzxj0n7pH9G6xWwz983Y3jdzNClnPy5ZsHc/WJdu
         rOuQnBNZI0tIMsfpBWG2Uh0YrWPtatL+QNYVSslizqoQrDKegQg0A/m/48CH/QZnP7AJ
         Vx4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=boT9PQDclMYOIfyawcie1rwdWbWcXfxedyyyZpBGJjI=;
        b=d+97k/LwAdvoufUl4ZmjoHzk70qhVQUo9nVOIns/rReFYmyIN+mGHyI+s7qfqVdBbJ
         JA7H+hwwqFL2tAF2EPwNKlvPTLVZB/ePKxDSgeyNacBKFbMPzPrq1F1Uf2YfjV/KmDk3
         YjG1kXRsCM1fSjSqu29sjIv5uSadF19u98VOGV/KHyEbQd5YJdI+R7fLyZZcx890q2d6
         y75I6WldxABVvQicZ1AOYHcl65J77E+4j6uyV4ePRmvTjz8YUhPUs0I56wQjpjOn2XDg
         zjM2U6WTmzRWPUt2xTC9LmmK/ogyIBIEKDPD73HFu1m0PJf6t7ka5d2pa9BvWIhPx0AT
         MT8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=boT9PQDclMYOIfyawcie1rwdWbWcXfxedyyyZpBGJjI=;
        b=szAGpVkdn3tz5DulrdJUC3hwWVIVUCt2QI04SqF6Rb3e/az5bybg6letgYRzK/AhK3
         Fth1FZFgi7yvGgNIhvb7T80QWvq5f8lahUZ03WSrFqb7YmKBZW3jPIPqI8cK9floIgf8
         fiyesxuQimZPo2bUck0xlRLqgCJYF83YXegYxMELAiFZq1SZ5hTOv0bJZNdHUIQxcm4Q
         W4LVDSVR8KZHgTboh9c25yffpk+c5roiHdKEV8wOBfKgbDFZLntUxPvuU01Tw2BZ25cx
         RSBosEWkePviBkVpiWksDOol1QnOEhVp9HSs05mYr5E1l0nq+5fv7Y2YH0dL0sVQU1kK
         9p3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DHiXo9HEbbyer6Q6J9pcEkGKfWRCgX16PbVgP+FfOGNDHfEJK
	B/9BNPchYETP6y2kgKU3Imo=
X-Google-Smtp-Source: ABdhPJyvIheWcGuXBOMyRncjicH+evXYFAspEcKM13zT830Q7T8fETouo16QZcqUe7AvBHodFHtGMg==
X-Received: by 2002:a1c:2ec6:: with SMTP id u189mr2666079wmu.85.1605082683453;
        Wed, 11 Nov 2020 00:18:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:5417:: with SMTP id i23ls782445wmb.2.canary-gmail; Wed,
 11 Nov 2020 00:18:02 -0800 (PST)
X-Received: by 2002:a1c:bd0b:: with SMTP id n11mr2619522wmf.111.1605082682366;
        Wed, 11 Nov 2020 00:18:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605082682; cv=none;
        d=google.com; s=arc-20160816;
        b=fsiUCkn4y2OpgUlqzlvP73HcSo7Nppy2JNtnQkdb+SjJZijfJ7UjpEhHc9+xZFoUE9
         3ol4AB1jTPAC7VIlCRxMH2Tn1LTMngBrukoLFW6Gr9EBrGeoTOvAXVHBl1w3lvKu74nO
         KJHWwhzaeipOqGzEP0XW8RigCiJOrtxWb3oO1DO/rWK3sal2GjmbELiDvzEbd5SlluSR
         328yR7h8XVFjr/qY6L6q5+7WDSmMp2Fi5go9bqzwkf24uET2wH73MZBDU0xSiA+rrVWY
         4CumpWl1GQAo+mrdS61TGQ/70OIPuiL2z1Dg5A/KtosuPbn25qUbJ6p+cdo7t4ytBobN
         Ftpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=08XgNQbuUQdMyo4y2K3qTqHQaalOZloLoissv2mOej0=;
        b=bKM8FRBmF2ly4Ik+nX4BHrPrhr92foYn50u/L7hBa8NvzNVmeOrPCS+TDv5dqD82QM
         tOVEWOKkL/XxNcxyUMUmjo+jD69w4XoG/DXY7bd0iEOG3VE+sxRv5KAFThUB70PSshUR
         YvH0gwjLHReiR9ohVEXBk0AQU/6p0OtlCsY/swAcLj38ndi0jRB5+jiighrHAxI6sG6A
         9jyWJmcFlYOYyrGyM5F9nCfYgfpnHjz+hzGXENOUCWe6vtFj+wHjB3Uhs3Hijqas8HHP
         oORXEMFXRClhzMD3CybP6hvbYLqWQKBoy4y+Ofx2bZj2OZjkCU0zGYMh8zzHmA01hwPv
         5WTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id z83si315690wmc.3.2020.11.11.00.18.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 00:18:02 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 966BD6736F; Wed, 11 Nov 2020 09:18:00 +0100 (CET)
Date: Wed, 11 Nov 2020 09:18:00 +0100
From: Christoph Hellwig <hch@lst.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: hch@lst.de, akpm@linux-foundation.org, dan.j.williams@intel.com,
	daniel@ffwll.ch, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	linux-nvdimm@lists.01.org, Heiko Carstens <hca@linux.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] mm: simplify follow_pte{,pmd}
Message-ID: <20201111081800.GA23492@lst.de>
References: <20201029101432.47011-3-hch@lst.de> <20201111022122.1039505-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201111022122.1039505-1-ndesaulniers@google.com>
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

On Tue, Nov 10, 2020 at 06:21:22PM -0800, Nick Desaulniers wrote:
> Sorry, I think this patch may be causing a regression for us for s390?
> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/432129279#L768
> 
> (via https://lore.kernel.org/linux-mm/20201029101432.47011-3-hch@lst.de)

Hmm, the call to follow_pte_pmd in the s390 code does not actually exist
in my tree.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201111081800.GA23492%40lst.de.
