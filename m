Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBVXG4CAAMGQE66TNTQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A08530AD40
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 17:59:04 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id z20sf11883389pgh.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 08:59:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612198743; cv=pass;
        d=google.com; s=arc-20160816;
        b=mDrqdCE4kj+yrbAgoPBJHMnwfw1tx2TILw+LvjLMMfA6iQtiLXtV0DSNHucnrF73+M
         aknZ/53R8rfjqklkQKEaxAK2MJuRSduWmOr4+Lz/E4t81i/S4CR4bTzeIwO2gOeyBYwm
         0Qlu05uJh30OXr8fnC4FVepnhSoT/pywLo9PM/9o4jzFWWnfrj0+6dfmD9wv30dB8nAP
         DpQrNKDdS6Tix/s9LY/LdeSoCp/pK2g5JGH011MoktOVGdnMODz1IJeWNc9Z/Wjvawjp
         d+z3Q78UYQrGmsHUhwA2bcYTNOJOVucs9n3bolKpgo9iM3BRUxw5xmB4AaGDSpIEAayS
         iBRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=i2cO7JYPKUxjwJJ5YmpDXa/HDP+oPe5Un5xVtEdjCD0=;
        b=teLsEEEK5DwJTNfOdSx4wozhgrvT55TV5ZD9jeei1SJY8EcB+YbT6fBQTL4azKLi7b
         AONA6p1jZ6XZfNweO8VtO5IS1kJDDHFbJWIl0rp45b9UvuLjAJbDwa1ta/fFS58q9glF
         eixwe1ovJNNNNHpsPVVsrUt/IOykdQ5wq8VeTCMEN8qS2cpQkWCcpJd6Yg8HF32BZUn6
         oq8rvEocc3jZiylUGmJmCfKQYmC18ZttY8zLhzg60qnDS7vxLZx7Op1r/+dcnfAJiywO
         TM01txQniu+7twjVtT9JotF77uKzAELVt5fNcfBLoM3M7Mb4gU5rqJzOE4SJADOSPnez
         h54Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i2cO7JYPKUxjwJJ5YmpDXa/HDP+oPe5Un5xVtEdjCD0=;
        b=Knce/OdTQJhbnsBTWlNKjmDl+VKTT4VgVCCZT/CGHaD9GmPY7MudITVUrYRTlPOqgH
         uZJLFLoIlekBVm47OWWZRgCusUKDZBVQbHcMyX5c7HKu9RLNgwICQnS3ZDfCHMISnsGZ
         Vp+J6a2j8LWYSIeMItrK/6uxrgswA+pZQnqlZzDFbNPtmbJUiMNdFmfH8qg0iBbgVxTa
         NzkuKb0yAvUht9kHAWQJ4GtO6CmjoH3y6jApY6cBuLaYHwtx3VvN5hdOamY3Hw/u8sAr
         ZYMGo69m6lRzUTSf7kSz3ev+aMtYjy1utQwwnYGTW8i+2l5XvoqFqa9LSUuCgTBPBLA0
         Mw5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=i2cO7JYPKUxjwJJ5YmpDXa/HDP+oPe5Un5xVtEdjCD0=;
        b=PUpX67JnDJTKjkyxnpHa6H8W41sx0NIhIuQmLfTFU8ClHiyqmHi0aZlrzMwhAPAijd
         AXC4APy4ArD1uh2yg0VbBQMrwTKndInDueHtlZ3ySx5Mp0dIToq6n+r51EyzM+suDNp0
         ZBy8bSa85rpTyK9/leeUWwacmt0chfYfzeYUi+dItc0kWzVodb+LrRMUGma0a/x/fh9J
         HlS3c8/XI+EpaZvwq7pY6jYumVacl9qx44Ds7bkU4epjOECrz7K4u1WQHmMxOi+ZsXAj
         qiysBYCihQOjhcM2MRapeOSNqUtEQiKCgVTA0i+7msrBtRhldlm3hHJO+6hokdsmpuU2
         KjMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532i0WtcUja6WdP4D1DkHlmQRQCaQFuH0P/hDKfzYhjbGPMhYTlH
	H+mgFCmHJV5nDdbjRypVg3o=
X-Google-Smtp-Source: ABdhPJwhiBN+gOsyAmYgrQQ9qxz9MrKI+05A8652bFz5w6XE+Zx3pVd61cjM3qt0h9284Twe5Ke8nA==
X-Received: by 2002:a63:9044:: with SMTP id a65mr11596919pge.381.1612198743122;
        Mon, 01 Feb 2021 08:59:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:2311:: with SMTP id d17ls3717049plh.6.gmail; Mon, 01
 Feb 2021 08:59:02 -0800 (PST)
X-Received: by 2002:a17:90a:f0c4:: with SMTP id fa4mr17116206pjb.132.1612198742444;
        Mon, 01 Feb 2021 08:59:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612198742; cv=none;
        d=google.com; s=arc-20160816;
        b=0dPvfJjcW5Gtby8s01sAQtGDEWcu9WdtwGHzwDu8dHrmEsiG1jrQXyAUg6OH9yog/S
         M+4GAcMt6GJEXOBoaw7QCgq4L0EjPS0D3bED6O774Tc/xsciTbzpxLId74UFRZVHFTbG
         VOlUZ9IepMznCpN6Cgf74pliiaLAluep+D2wEPGvgUo8NrEF8xnZTl+zKLMkUTLDFJO9
         fsqhf8M+sFnnH8sQ4Lup/fHjpHF7hf3JuaEYo5sosM0ZCsi8Jr72mC6tfwR2McfydNiD
         GyJ6Z2idxVPyCIFuEerJ27kWwN++v7r2y/pw5vdG8euOJrepKWpEDPwjjWFxzBLGVAQJ
         DKJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=/Rz3hycFvU+J4WUyt6/Ji3ZSPY41bRCdbCyDQ69dusY=;
        b=tfaQFz/CPl3+iReig/3ZVtSZ4k3qLYKEvd9+Qq+co0vv5FKQcx+D7XLkGBLXv3Rt+r
         XSpcIsZD72lmOBUb4ZQBhCbftMbJblfF529DLICW4zTc7YxVySps3QzXZX6xXhh2+IW6
         Ex6Ajos2imgVdiXMcJKpTw3Lf9nVO9D7JDVrqxE0m+wPxhYUD5x8tAh6OtlKEo7J6ELV
         ZeZHzVI/4+lcIt4vaDb7BwpH6sxGjQHAY7Ar3veOsGGAOofcy3x9YKsMPpTGERipuQZS
         F6bzlZZPNFRU8sXZ8UT4G6sGRr6F58OrIDJlc5x/fUivVhYwa+GyEtjlBHBSo472yAsg
         tZ9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id nl3si10301pjb.0.2021.02.01.08.59.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 08:59:02 -0800 (PST)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 111GwwfD032019
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 1 Feb 2021 11:58:58 -0500
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id 2EEEB15C39D9; Mon,  1 Feb 2021 11:58:58 -0500 (EST)
Date: Mon, 1 Feb 2021 11:58:58 -0500
From: "Theodore Ts'o" <tytso@mit.edu>
To: Christoph Hellwig <hch@infradead.org>
Cc: Vinicius Tinti <viniciustinti@gmail.com>,
        Andreas Dilger <adilger.kernel@dilger.ca>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>, linux-ext4@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] ext4: Enable code path when DX_DEBUG is set
Message-ID: <YBgzUoq2Jla7pXAG@mit.edu>
References: <AAB32610-D238-4137-96DE-33655AAAB545@dilger.ca>
 <20210201003125.90257-1-viniciustinti@gmail.com>
 <20210201124924.GA3284018@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210201124924.GA3284018@infradead.org>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Mon, Feb 01, 2021 at 12:49:24PM +0000, Christoph Hellwig wrote:
> DX_DEBUG is completely dead code, so either kill it off or make it an
> actual CONFIG_* symbol through Kconfig if it seems useful.

I wouldn't call it completely dead code.  If you manually add "#define
DX_DEBUG" fs/ext4/namei.c compiles without any problems.  I believe it
was most recently used when we added large htree support.

It's true that it can only be enabled via manually enabled via manual
editing of the .c file, but it's *really* something that only
developers who are actively involved in modifying the code would want
to use.  Sure, we could add work to add debug levels to all of the
dxtrace() statements, and/or switch it all to dyndebug.  We'd also
have to figure out how to get rid of all of the KERN_CONT printk's in
the ideal world.  The question is whether doing all of this is
worth it if the goal is to shut up some clang warnings.

	      	    	     	   - Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YBgzUoq2Jla7pXAG%40mit.edu.
