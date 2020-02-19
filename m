Return-Path: <clang-built-linux+bncBCUO3AHUWUIRB36AW3ZAKGQE4KOOBLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D9316504C
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 21:54:08 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id l19sf2820449oil.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 12:54:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582145647; cv=pass;
        d=google.com; s=arc-20160816;
        b=a0CEQwF4sR9rclb8GymiQFNknFSUYgg5pyVjS93//+aIF30vHew3T6ZP1m2BRNlNk9
         bJe/IB1Fo7vnjQSlc3dw5izZRJuKJ5ivErZdqpGHoJV5J2acvxOCDwGJ1mpNhU4uzopD
         fWdKVGjpKZQI8UJoIxOaLtr5YCbcMxdy9tTQmsqw3qD9fJxfsdxLnpwv2aW1tNqtay1U
         9zfJE0YaufsZvSlNJtywD6KdH86bVOaqgSibZC0OdgUZWlLlyHi7jfwI48w7LIG8H3hv
         3+Z+TSMA3v/BiXfnrqcLKPuxiw9K98XOC7z5H2H+rom4DdzAAbm9WbxhuWni9moPZhO+
         PnrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=z+pddousTdOB5vKizgNtoDoDvTubO+aLXwdNFTcsmgA=;
        b=beMF+9clKwx7CmUEwOw3SHCtWlxz0z6xTj2tFyFyJY8jQnD3ytEChu6h5xDq+P0qey
         qej1lJyHwWGu4CXED/fEJIf7nR4RJbs9toGQRRiEJgGukCjJa8c8sBPZwawsnVaCE9/n
         nLEgEh6OXq9obL+iVVaztg4UkzpavUrgjROzJYFIqKIos7kbMHfjfVfeeSw5QQl34FyS
         hi6Er+kOK759PAt2BS2QTG0U+buyTEIc5Ct6n27jHLRz/CbBhkB3vdXC09pr3d3krrMu
         xPux3XdywQfx1OpBxorKvo/Vf4nS7xqlrTlrq8jMDlzc+ARw79srgndH30k6EdyGjC2e
         nntg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=dl7RHlWF;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z+pddousTdOB5vKizgNtoDoDvTubO+aLXwdNFTcsmgA=;
        b=KcLja9VW80bqie4a+dEjqqnKIOrK72TOSKTl7Ir2yM69IRfH7z+kcrtEvvoMJgjScH
         xvcWS6nrYmY4zkcY7YSLEuwfSp79K+ZBELF1jJ59bt4ITUWISiTsxsnlldKZXWqqcaem
         fl7YwsdUHd9norgZ/3Gm47Pz7nRsMz+0HKTnkg3ULAWXO9XbAvZIQet2/C/WUi17oAyU
         LDZeOgmV5y1d58lHO2sXkGwV+JVLFZe6T430hLJArt15X7HN8mmPBybk2o6erGObBQmq
         O3djEh7V88OxDgmnVNZer4GclsukNnNcRBlxwRkwidJHDyjfPY++BHdJvhdhwx4Io77/
         biZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z+pddousTdOB5vKizgNtoDoDvTubO+aLXwdNFTcsmgA=;
        b=Mi0bQjeJK8wujcLAHuYuTP7Y0Ap0gOXqpTrm9H4QDVfW8Le0bmH476tqnmpb8ifiEH
         /W+PDc7P/IxtbObLoBxvpiyMoUBBCSrMWqJfgWGStfH1isnzj3qPfkJiYTiyD71czh1i
         cruHEJujiYtS3nCcLm3uK+5BMbvS+IgGJKqv7PpSuAo2Z52CU6e7pSBx/o0Ya4KMaKFb
         wALf6PYGZ/xNDjbVVWh3gtWc4rmWWDTN+AoUhnDLwmV3W7bT9WVcnJ6efcSPmy9GoMYY
         Lp13HxumWd76gMA8yFOEjYHGqK9QDUneeE7VBQOacSC4dtl9f+HKDNfFB+TBhiOKk4ib
         mDiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVRJJ6gVREtZDdQYpCMVBu/OZqrSXtp00tUMTWTiQz1Vkn8QMkl
	DfL2Vz7v2B6IDh1bxhJxtic=
X-Google-Smtp-Source: APXvYqwD57Y1zB9oHEFQ8jmP/V5DJ7g15tR6mbuhBa3AMqTKvkiDfASBAEjuGLc9OfW/1F/xoTzPPA==
X-Received: by 2002:a9d:4d99:: with SMTP id u25mr7565521otk.216.1582145647328;
        Wed, 19 Feb 2020 12:54:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7296:: with SMTP id p144ls423312oic.4.gmail; Wed, 19 Feb
 2020 12:54:07 -0800 (PST)
X-Received: by 2002:aca:ebcb:: with SMTP id j194mr5942328oih.154.1582145646985;
        Wed, 19 Feb 2020 12:54:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582145646; cv=none;
        d=google.com; s=arc-20160816;
        b=JyMEzGQCJOFut7V1rGcSuJQc/YIlHcMwDQUl8zzPi9b4oz+MFdGoZloz96YmTAaLAq
         JtlmIZQEUjFkMWwfDWOPBJLsV6kySSHh0fkQUA4WZctQUK+G7JC94N2qwPBS7LaRkYCl
         lGb+H2bgZ3F3Ptcez3iZr8dtN4VK3nNEkRm4Y3WrPmMLOxmbzQhAB3kNTCrv0LkcjM/3
         vKU53oT+3HAQWNNxFLlk+0ekaQBxWrZX12sgZqatFVTWTNJ9sKFRxjzIt7fUur5OK15T
         g1zBLj5UVV4h9GhdrBgi9roPFt/g2Anmmq7tF+JwFLm7eUHxHscPP9f3GwjaVoHrY3od
         /SfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YLaIAW0Lkknrx7pEhMD4u2gukgtf4c3eSrw1zC53+uM=;
        b=VFBoo5REINRH5R7WgYCPFNzzNOT5pBbtr5UySajLxot4Djvk/DSXEk/45Nv2bIbgf7
         JkxaQ/dlU6HshppukMgw+k1NCAQpSuqx8Cc3C4OM7m7q6UfSDxt7Q3aLqjniQhYY/CPh
         04qWdco04JNol+xlixGhXjstd52Il2kJRwbKaqFsrcPlev5GPcUPcuovGB4nQibglxqa
         mI8mP+uRlvywfJiClQwyQ20gxqIGnHRFmuWqK/arkcTTH7j2wtJpeTqBx3lPxToGoQJ7
         RXNokPefAWgeqJV6PGyitJnLJhcBbkxraoIxJoDvlHyccfN6/nSsSfWGv7NBgD+CYexP
         +sDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=dl7RHlWF;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id 14si84849oty.3.2020.02.19.12.54.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 12:54:06 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id d9so1263868qte.12
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 12:54:06 -0800 (PST)
X-Received: by 2002:ac8:5513:: with SMTP id j19mr23959953qtq.143.1582145646469;
        Wed, 19 Feb 2020 12:54:06 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.57.212])
        by smtp.gmail.com with ESMTPSA id 123sm458739qkj.113.2020.02.19.12.54.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 19 Feb 2020 12:54:06 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
	(envelope-from <jgg@ziepe.ca>)
	id 1j4WM9-0003ir-JE; Wed, 19 Feb 2020 16:54:05 -0400
Date: Wed, 19 Feb 2020 16:54:05 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Doug Ledford <dledford@redhat.com>, Leon Romanovsky <leon@kernel.org>,
	linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] RDMA/core: Fix use of logical OR in get_new_pps
Message-ID: <20200219205405.GX31668@ziepe.ca>
References: <20200217204318.13609-1-natechancellor@gmail.com>
 <20200219204625.GA12915@ziepe.ca>
 <20200219205010.GA44941@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200219205010.GA44941@ubuntu-m2-xlarge-x86>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=dl7RHlWF;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::843 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Wed, Feb 19, 2020 at 01:50:10PM -0700, Nathan Chancellor wrote:
> On Wed, Feb 19, 2020 at 04:46:25PM -0400, Jason Gunthorpe wrote:
> > On Mon, Feb 17, 2020 at 01:43:18PM -0700, Nathan Chancellor wrote:
> > > Clang warns:
> > > 
> > > ../drivers/infiniband/core/security.c:351:41: warning: converting the
> > > enum constant to a boolean [-Wint-in-bool-context]
> > >         if (!(qp_attr_mask & (IB_QP_PKEY_INDEX || IB_QP_PORT)) && qp_pps) {
> > >                                                ^
> > > 1 warning generated.
> > > 
> > > A bitwise OR should have been used instead.
> > > 
> > > Fixes: 1dd017882e01 ("RDMA/core: Fix protection fault in get_pkey_idx_qp_list")
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/889
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Reviewed-by: Leon Romanovsky <leonro@mellanox.com>
> > >  drivers/infiniband/core/security.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > Applied to for-next, thanks
> > 
> > Jason
> 
> Shouldn't this go into for-rc since the commit that introduced this was
> merged in 5.6-rc2? I guess I should have added that after the PATCH in
> the subject line, I always forget.

Oops, that was a typo, it did go to -rc

[each artisanal 'applied' message is uniquely hand crafted]

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219205405.GX31668%40ziepe.ca.
