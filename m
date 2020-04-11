Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDFGZD2AKGQEBSZ3MAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E88661A5378
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 20:57:17 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id n26sf5648343iop.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Apr 2020 11:57:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586631437; cv=pass;
        d=google.com; s=arc-20160816;
        b=O1x56H8WQjpCSFolA3hgMSaeWI4LrD11Zn/FQeZb6H1dwXrbnUOE0x2wHYa5Bwr2gs
         V3ZvXsv1nV/3KudTNn3cQHl50ZtHQYAhF6E1vuFueMFFSHjVAg1929vW+uRiFWREQ22m
         yt4C2zDuo+YUhPEIt70whiO/9MbZJk3OJpKnHVt2+59z9AHADQB9APZbKOHQLsQKHRa0
         vD/6+TSjT7BuqZDY3ENpgCEwbf0iy4JONzDcHF4imt6b1/RwUhWNCB40wGvOdwNbmlEJ
         EmsZcXpiAzTypsY8XYatKxDqMY28UfnOYFc0KnCymE5ZwgYcrK3qn2QU+dx6DA0AgDCK
         BP9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=93yR+n9nXor+HJoQqe5GAG0KlTOZqmvG6zNKCycs1uE=;
        b=Fr8HrsgcYWq9IR+Bw0PQAfBcrta3ZAYvQu9w/lCP/ovnLeb0SMO+J1jYA846ieYfbY
         AvMvwOWPkIvWBXECn3Dov/J4bbSKiF/oS+6TX5alpbEJjKnwmyeD4QIpmEqF2u/O3xp9
         MltPKFL2ZWdJa9iz+/s+d6RvJnEaewI0qZB+mP+h5SEA51ABfQtEMzDRJeh2/ecGeRaO
         08+gGqq0BfZhuxnHJsUBObjUSEAr4mXGFEszRE/sFF4XfCHUtD2KNqmoRUE9ly5kUXMb
         kDOBHKv8qHPpVDJwJlogrCNuoaVhPZ0mX8km5qwFZQqgPaScqdOOhhCY98JTv2NhKZo3
         fusw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A23+takW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=93yR+n9nXor+HJoQqe5GAG0KlTOZqmvG6zNKCycs1uE=;
        b=bKD4MFvTgBCLUpwRcVFeWJgvwy/ClFOuS7RWXKir/3z8R5WNWgNSujy8Up8VQFwx34
         aknppD9DKEblQwfdahel3a+m4yOecOb5ukY1WoU8fVz1+WWq4VoXNsVa+56ohAZemmRB
         FdoZrMJB/r10U9ozTbHCEFtTpQnUXDXgdPzRjBG/tDfeTQpw1n0IpiwMB7NTCfW1ZRvO
         9k4PNyPWhpMKWC5+DJ6uB7iuoNz7OGz6FWT2E8IQx20Eo4Fi3+yUUxcPLbsygmNUZTe2
         I8lMkEVGb5Qs/QevSt/KRLQTxJqBQehVKVUNDy7O65Mbpz1l6FiciR7gcdmFqi1CD116
         nhHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=93yR+n9nXor+HJoQqe5GAG0KlTOZqmvG6zNKCycs1uE=;
        b=tkc/YRGnm7rOQ3zHJcd7k6UCeThoMznnEW8gHvrs3cv9N/4s6rWmQ6Ahl1+ymss4a/
         cenfzkRdXluAQiXcZF5u/+Fss9DEdZp3grw75GvPhygSmc6KO/zHRNd7g8/JqyYC5/K7
         PUgl65puZd8no9Efro3zS9U4Y5Ur/iYVzqT58c/IUcR/aapJoNiNaynkjkhL5hOv2C0n
         xZ98+3d1dqkDUCeNUqhNkG58UBhKY075OiBcI1JzPCmroNkjlSSt6hBgjEjMNumM7P3C
         jxqr4RW4qrvBUlMlKyGxdVfj/KpqXIm/8MKza7uUH1tDUyKpWEHYlyGaqoBw3O6OR5kU
         GpWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=93yR+n9nXor+HJoQqe5GAG0KlTOZqmvG6zNKCycs1uE=;
        b=MvxKhuY/RSHimpt1Olb+egKCKZD92KWL+hGitVZ2dwL48P+cHaLBfj1Y/55wVer15I
         yx16q4VRN0tPKKWvZF6nmF1hctSlpo28EtFNTK7Az0xhK4GOqV73kWjP4EoX+DtcDsu9
         hvKbJvWIky8kQ1xSQB/tXVc80Z/NkYheOSVAHMgfPKe9535DQKi6mPaWqcksCJ5OuRiP
         0ZVBeRfO3zfa3zHNek0vzQRiTCIFasYzONmTkemQHvHciVcGP6f7u/vS69N7lXKfRctl
         ILn5Y6j5+vaml8XHV5sqJU7XDOzlTq+zuGFjQm3MM+IVo2s9LSg6APyV+rwxZVC0FeG7
         kKfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuafcmcWkL3ivLTNT2PkAhCwSPaupCmdKv4EQPldzd6ghPnZRwex
	fZvkoVxelaI340dq7czWfx4=
X-Google-Smtp-Source: APiQypIoHg2zcxO5oXog/QRBlLZp8N+oim8mjx4bdMDp4ukmOFAm9JUjVH9/dlqIlEjFNLQAlnRsqg==
X-Received: by 2002:a92:760e:: with SMTP id r14mr10638777ilc.152.1586631436899;
        Sat, 11 Apr 2020 11:57:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9ac1:: with SMTP id x1ls4632675ion.11.gmail; Sat, 11 Apr
 2020 11:57:16 -0700 (PDT)
X-Received: by 2002:a6b:7d0c:: with SMTP id c12mr9425754ioq.83.1586631436358;
        Sat, 11 Apr 2020 11:57:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586631436; cv=none;
        d=google.com; s=arc-20160816;
        b=e7kjM4SpOD02OUYy999xFQ0UPgKJ2RRmYAor4MYIFIasPHtUi47jMV+WCq0/sNR+m1
         9sOz0hJb/ijdtlfWtAnJGF5br+uiXfLDDjsMDvhsAK6qm22FE1gc22XmuDIY4/CTxabE
         RPFCvZyLOTWq31Qq5mbaFoa+HKhSxTC8UOv802yVIU91FKF4RFFd3iieWMryAFVoq745
         i2zSncmsgJzWt5SwBxTmsvx9T4fxgqJ1lVG0qJnGoSednTrL27xup3xMwDjnfddEpuRN
         GWDkknCA4LeHywQvAO/E+G51Vi6jbHoq7NhnAGRH/T/fzTrgnIVPp0NwQCya1RA4++Ck
         l+Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MsEh+v7IPOKrGchnu8ufmug9BuJ+6/j7RM26XsVhv04=;
        b=dP2u9tnS79/eBVoMUlHJaYNKHd6v4stKkDTMwROY9YFGhERPwSimxrlxPoffDChgXc
         qPeMly10SgW8VM4+M52POhZ5AgaS3RpdOJHg/5/8LLZw64jewJr6TxSuJ8RFUXOFMjoZ
         LWMoWspulHbk5bOKiIPUTY/OpAjkv8q/W0a7mFaJ565nwF1ZUbvVkLqHJ4M+V2GKEMLQ
         Y+PiVI80qkruyYmRU0SKAKj4Iijgn7DJhN7C7gecDQYOnQ0NQiWxh/CYiV92t9+G2rZm
         NWmvl+kLQUbzFoIsP/dbxejyKtdfpG7QwEYEgKjff9BZ+ndLRBpygKLVuzELgmaPx0Uk
         slmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A23+takW;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id r8si402640ilj.3.2020.04.11.11.57.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Apr 2020 11:57:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id b13so861294oti.3
        for <clang-built-linux@googlegroups.com>; Sat, 11 Apr 2020 11:57:16 -0700 (PDT)
X-Received: by 2002:a9d:17ec:: with SMTP id j99mr8529733otj.213.1586631435936;
        Sat, 11 Apr 2020 11:57:15 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id i20sm3179852ots.31.2020.04.11.11.57.15
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 11 Apr 2020 11:57:15 -0700 (PDT)
Date: Sat, 11 Apr 2020 11:57:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [linux-stable-rc:linux-4.4.y 9945/9999]
 net/sunrpc/xprtrdma/svc_rdma_marshal.c:176:9: warning: array index 4 is past
 the end of the array (which contains 3 elements)
Message-ID: <20200411185714.GA16130@ubuntu-s3-xlarge-x86>
References: <202004112251.qy85m2DE%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004112251.qy85m2DE%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=A23+takW;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Apr 11, 2020 at 10:15:59PM +0800, kbuild test robot wrote:
> Hi Dirk,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.4.y
> head:   8b0440867da246ba6a2e4512f6643702f698eaa4
> commit: ce513359d8507123e63f34b56e67ad558074be22 [9945/9999] scripts/dtc: Remove redundant YYLOC global declaration
> config: x86_64-randconfig-h001-20200411 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 7149bb70681a91de5d490b4bb0714d9e55a05bcc)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout ce513359d8507123e63f34b56e67ad558074be22
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> net/sunrpc/xprtrdma/svc_rdma_marshal.c:176:9: warning: array index 4 is past the end of the array (which contains 3 elements) [-Warray-bounds]
>                    va = &rmsgp->rm_body.rm_padded.rm_pempty[4];
>                          ^                                  ~
>    include/linux/sunrpc/rpc_rdma.h:93:4: note: array 'rm_pempty' declared here
>                            __be32 rm_pempty[3];    /* 3 empty chunk lists */
>                            ^
>    1 warning generated.
> 
> vim +176 net/sunrpc/xprtrdma/svc_rdma_marshal.c
> 
> ef1eac0a3fa86b Tom Tucker  2007-12-12  147  
> ef1eac0a3fa86b Tom Tucker  2007-12-12  148  int svc_rdma_xdr_decode_req(struct rpcrdma_msg **rdma_req,
> ef1eac0a3fa86b Tom Tucker  2007-12-12  149  			    struct svc_rqst *rqstp)
> ef1eac0a3fa86b Tom Tucker  2007-12-12  150  {
> ef1eac0a3fa86b Tom Tucker  2007-12-12  151  	struct rpcrdma_msg *rmsgp = NULL;
> 30b7e246a6222f Chuck Lever 2015-06-04  152  	__be32 *va, *vaend;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  153  	u32 hdr_len;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  154  
> ef1eac0a3fa86b Tom Tucker  2007-12-12  155  	rmsgp = (struct rpcrdma_msg *)rqstp->rq_arg.head[0].iov_base;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  156  
> ef1eac0a3fa86b Tom Tucker  2007-12-12  157  	/* Verify that there's enough bytes for header + something */
> ef1eac0a3fa86b Tom Tucker  2007-12-12  158  	if (rqstp->rq_arg.len <= RPCRDMA_HDRLEN_MIN) {
> ef1eac0a3fa86b Tom Tucker  2007-12-12  159  		dprintk("svcrdma: header too short = %d\n",
> ef1eac0a3fa86b Tom Tucker  2007-12-12  160  			rqstp->rq_arg.len);
> ef1eac0a3fa86b Tom Tucker  2007-12-12  161  		return -EINVAL;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  162  	}
> ef1eac0a3fa86b Tom Tucker  2007-12-12  163  
> 30b7e246a6222f Chuck Lever 2015-06-04  164  	if (rmsgp->rm_vers != rpcrdma_version)
> ef1eac0a3fa86b Tom Tucker  2007-12-12  165  		return -ENOSYS;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  166  
> ef1eac0a3fa86b Tom Tucker  2007-12-12  167  	/* Pull in the extra for the padded case and bump our pointer */
> 30b7e246a6222f Chuck Lever 2015-06-04  168  	if (rmsgp->rm_type == rdma_msgp) {
> ef1eac0a3fa86b Tom Tucker  2007-12-12  169  		int hdrlen;
> 30b7e246a6222f Chuck Lever 2015-06-04  170  
> ef1eac0a3fa86b Tom Tucker  2007-12-12  171  		rmsgp->rm_body.rm_padded.rm_align =
> 30b7e246a6222f Chuck Lever 2015-06-04  172  			be32_to_cpu(rmsgp->rm_body.rm_padded.rm_align);
> ef1eac0a3fa86b Tom Tucker  2007-12-12  173  		rmsgp->rm_body.rm_padded.rm_thresh =
> 30b7e246a6222f Chuck Lever 2015-06-04  174  			be32_to_cpu(rmsgp->rm_body.rm_padded.rm_thresh);
> ef1eac0a3fa86b Tom Tucker  2007-12-12  175  
> ef1eac0a3fa86b Tom Tucker  2007-12-12 @176  		va = &rmsgp->rm_body.rm_padded.rm_pempty[4];
> ef1eac0a3fa86b Tom Tucker  2007-12-12  177  		rqstp->rq_arg.head[0].iov_base = va;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  178  		hdrlen = (u32)((unsigned long)va - (unsigned long)rmsgp);
> ef1eac0a3fa86b Tom Tucker  2007-12-12  179  		rqstp->rq_arg.head[0].iov_len -= hdrlen;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  180  		if (hdrlen > rqstp->rq_arg.len)
> ef1eac0a3fa86b Tom Tucker  2007-12-12  181  			return -EINVAL;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  182  		return hdrlen;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  183  	}
> ef1eac0a3fa86b Tom Tucker  2007-12-12  184  
> ef1eac0a3fa86b Tom Tucker  2007-12-12  185  	/* The chunk list may contain either a read chunk list or a write
> ef1eac0a3fa86b Tom Tucker  2007-12-12  186  	 * chunk list and a reply chunk list.
> ef1eac0a3fa86b Tom Tucker  2007-12-12  187  	 */
> ef1eac0a3fa86b Tom Tucker  2007-12-12  188  	va = &rmsgp->rm_body.rm_chunks[0];
> 30b7e246a6222f Chuck Lever 2015-06-04  189  	vaend = (__be32 *)((unsigned long)rmsgp + rqstp->rq_arg.len);
> ef1eac0a3fa86b Tom Tucker  2007-12-12  190  	va = decode_read_list(va, vaend);
> ef1eac0a3fa86b Tom Tucker  2007-12-12  191  	if (!va)
> ef1eac0a3fa86b Tom Tucker  2007-12-12  192  		return -EINVAL;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  193  	va = decode_write_list(va, vaend);
> ef1eac0a3fa86b Tom Tucker  2007-12-12  194  	if (!va)
> ef1eac0a3fa86b Tom Tucker  2007-12-12  195  		return -EINVAL;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  196  	va = decode_reply_array(va, vaend);
> ef1eac0a3fa86b Tom Tucker  2007-12-12  197  	if (!va)
> ef1eac0a3fa86b Tom Tucker  2007-12-12  198  		return -EINVAL;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  199  
> ef1eac0a3fa86b Tom Tucker  2007-12-12  200  	rqstp->rq_arg.head[0].iov_base = va;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  201  	hdr_len = (unsigned long)va - (unsigned long)rmsgp;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  202  	rqstp->rq_arg.head[0].iov_len -= hdr_len;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  203  
> ef1eac0a3fa86b Tom Tucker  2007-12-12  204  	*rdma_req = rmsgp;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  205  	return hdr_len;
> ef1eac0a3fa86b Tom Tucker  2007-12-12  206  }
> ef1eac0a3fa86b Tom Tucker  2007-12-12  207  
> 
> :::::: The code at line 176 was first introduced by commit
> :::::: ef1eac0a3fa86b06aa2d87021f157d13abc1903f rdma: ONCRPC RDMA protocol marshalling
> 
> :::::: TO: Tom Tucker <tom@opengridcomputing.com>
> :::::: CC: J. Bruce Fields <bfields@citi.umich.edu>
> 

I suspect this was fixed by https://git.kernel.org/linus/647e18e3bd0308b38d5341fc08cd70ed1ce28a71.

Obviously not caused by the bisected patch and far too invasive for a
stable backport. Probably will just have to live with this one.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200411185714.GA16130%40ubuntu-s3-xlarge-x86.
