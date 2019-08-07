Return-Path: <clang-built-linux+bncBAABBHUBVXVAKGQEBK7WBHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCEA8550F
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 23:20:32 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id e22sf17838666qtp.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 14:20:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565212831; cv=pass;
        d=google.com; s=arc-20160816;
        b=K/u4J7H68qZh2MEbFwLrx/2deeZK/pDK/S5aa60nIqf1hBvGiItqaWGRbY5aU1JMfV
         e4TX/b4F2H3TUgP4TOo7DtHFe4GBPvOjUlhSbdcUIj2WEArY8xj9cvO5hxfZyEXv/uA3
         apUvOg5qkYuOS6OIGukoC1CMHKhci7XS9EjNIiYT1yidNSIBKGhRG2VhKzHcAuvIHxL+
         4pO09QfV0qm1aNryGABx3YE5/9fvKUelrvIKh0hQZRkvGHSAtjEEYDdmTezWu/BwQu9E
         Jllo9bMtuFSJoLdZ+BKirwIrfY41/Ddg1n6eOXmH70QOFlc30Ch/Pa144IJ/IJFQQCtC
         RdUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:user-agent:to
         :subject:from:cc:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=02Q8YP2W5yMbCCau0Ake0aRMI09MJb615TrmQ9uUlgo=;
        b=rnHCcqgtxDVwf996vXO4yLEZsegn1EgBJth9s2/mEBhbXU7rOa96wfXCCNn7g6SHBB
         xvUWOgEhsk6sc6H266U/+xZOO6DeQGv1SPZxsi+68OMu9T+PqVyyqErvplTCrBGork+l
         TAxH7XnKqeBAM+Hv2AKtyzyoYNyxSwlojSabjqdVdfLQuRhbyLfLLT8gQDraXSftmv0z
         twO37tCFEh/+ADx/NC5CxOJZ+GhbGyxG8VnFAX5FRf5Y8k9FfT5uc2SbJ1y/BEmhHaGy
         PmQRZgNt4lUjTOWfQrc8y++lasMLjhzMoOkmR128qzd1u8UtRIytrTJ4qf+XXWhuanL8
         e7XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2F2JZEh7;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:cc:from:subject:to
         :user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=02Q8YP2W5yMbCCau0Ake0aRMI09MJb615TrmQ9uUlgo=;
        b=ZUyB7bl7Pddp+76c9G0HNZCJFVf+mBspQGsJbt7KFWIxpNUUi3qjjdECJPueuwUZ20
         m6sK7YaymGUB7MyVTgKtLguN5w8axtWpL25rtkxZdPLSNr/U7XEMcgSBDuSt0k6FbgTS
         HWJVfUlYjyYNyedJB7bP0cNWEkrKs4yat28egtW52G0QE0qsIPRa5r4FbR5kS2uKsBM9
         fgZuS/KMG780frrvO6wWt9RWnrVAPG/tbHhuDJ0dolyRHHKEfrBgvHtKGiQY6Yi1Urkf
         HVMntJ1Q2HNtXfH0/93Y+sT9/efAKeukYtz/9IeDADaBr/rh9mpvZL0dbUBEHIU0RFDx
         1wjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:cc
         :from:subject:to:user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=02Q8YP2W5yMbCCau0Ake0aRMI09MJb615TrmQ9uUlgo=;
        b=Y3IoVl/n3W1tNXT0PMaHk51VEVZCoSefhbDQA07YAq+peV2Eqj1h1AkGEMy3qJIyCX
         BSn3Mh/Tf0aUSpB116JY+NzrxWClInS4+ELi6jTDMDfk2+H9w/YpsVF+Ry8GOsjFrv98
         ZgJ+Z1CcFMYlH26vfI5yjEMRF+ajw6tNwdOIBJdQL0F7AMtjbDeXgog8VoD8tDpdcUER
         TN12aLsCsvluH5yVlccnt7ortx8T1VCopaeqRW+wHixLQUIwpsYmafdsVmfrslwmpAtg
         Cam6ta4O02nCwaMcaHlnCkVNEm+nZihZcEwo4OSwYu+E6QYkKrvof6IothEjtzzJ4pDd
         CksA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXxgV2/tQkXvxnBo8SYV92exE7BBzrQTzLspYoJ159FqgVF/bdb
	3Ipz5/pIX5xrNkJ6PV7Glbk=
X-Google-Smtp-Source: APXvYqx/FTj9L5eddo+wgvmAIV8BX3ujUtsrz5zng7SBefeOL8IxLjdNkyydWWLGzEa1OPTHAn5gUQ==
X-Received: by 2002:a05:620a:12ef:: with SMTP id f15mr10166936qkl.340.1565212830979;
        Wed, 07 Aug 2019 14:20:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:d801:: with SMTP id u1ls1543083qkf.13.gmail; Wed, 07 Aug
 2019 14:20:30 -0700 (PDT)
X-Received: by 2002:a37:9844:: with SMTP id a65mr10174362qke.500.1565212830801;
        Wed, 07 Aug 2019 14:20:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565212830; cv=none;
        d=google.com; s=arc-20160816;
        b=VvkDuFvXnMQNR1UmSpbhL7C0zxnB3nwc6xNbhjMVQSkcahrminkhsfbryOY7+L6zQ8
         9sG0GT6RSqm+4PBolRuO1FIvrr1eEGZ3hcac1XzTodm3t4MA3AxUnrGupsTv4zbQ8BNu
         akZ3iLzDaB9n8xX+WVxhHG3zxJT5Jtbqb3BM1B9sJCZjSopPij7GlFgzKxQRxp7W9TQZ
         J2EguJjKO7YYNZ1atKARFc9eazntNz0LCbfSTUMRneKfWiK+Z1x269TjQtwtdNcriTnU
         KPEVGO4LBrljs4YGc8RTuw326QRfiGNUknErkErtMZ1NiotA1HtyxdAWn0P9thJaSSTh
         q+fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:user-agent:to:subject:from:cc:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=qosGCy3VbdTQuSnvcbHZweQjcBCGID5pT2T0T23wJg8=;
        b=miq2uOFitzV8V/5lQfMbEcxBf/s6Ht0OBPwC4cHzzC/DfdmovDMX0FGgEjMQfo36nQ
         Y2JUsSNNJjFyE0Rz57p3zdTGY5PAl47axKX5VjG/pWEhVscwr9bWxQI14AC3TvE4WUqR
         nZdad48CqRwPx3Ffv4+vFy7UFsEn0+xeFbKyGogLVDDyzDnCA/AqhhB3om7JnxEOfQui
         kRs6iN9Lapsqm3F7G8ILQT0Cd9YJyGKdhlFenDYwWWnoilhuLOlgOjdt6p2xT3vYbjAW
         Sigtf3u55JeY7kB6xOJZ2F4AEIibk71ODhdpcbJSmmEvAL+DVR7HxcrRzQ/t2OaEkvDI
         JWgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2F2JZEh7;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z145si4157815qka.3.2019.08.07.14.20.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Aug 2019 14:20:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A5E902184E;
	Wed,  7 Aug 2019 21:20:29 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20190627220642.78575-1-nhuck@google.com>
References: <20190627220642.78575-1-nhuck@google.com>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, Nathan Huckleberry <nhuck@google.com>, clang-built-linux@googlegroups.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: qoriq: Fix -Wunused-const-variable
To: Nathan Huckleberry <nhuck@google.com>, mturquette@baylibre.com, oss@buserror.net, yogeshnarayan.gaur@nxp.com
User-Agent: alot/0.8.1
Date: Wed, 07 Aug 2019 14:20:28 -0700
Message-Id: <20190807212029.A5E902184E@mail.kernel.org>
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2F2JZEh7;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Quoting Nathan Huckleberry (2019-06-27 15:06:42)
> drivers/clk/clk-qoriq.c:138:38: warning: unused variable
> 'p5020_cmux_grp1' [-Wunused-const-variable] static const struct
> clockgen_muxinfo p5020_cmux_grp1
> 
> drivers/clk/clk-qoriq.c:146:38: warning: unused variable
> 'p5020_cmux_grp2' [-Wunused-const-variable] static const struct
> clockgen_muxinfo p5020_cmux_grp2
> 
> In the definition of the p5020 chip, the p2041 chip's info was used
> instead.  The p5020 and p2041 chips have different info. This is most
> likely a typo.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/525
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---

Applied to clk-next

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807212029.A5E902184E%40mail.kernel.org.
