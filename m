Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLVJX2BAMGQEAG64T4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 368C333C389
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 18:09:03 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id q15sf9276076vkd.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 10:09:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615828142; cv=pass;
        d=google.com; s=arc-20160816;
        b=YVmdFwdkvM+dVtsX1NKpcAnr2G5byxNVW+rJ9Be4lIIV4aWg3pnet82hHOmXd8Yf8U
         Om1si+DSO+LhZ3UUB77m0DilnJFMiYWu7FU73mZh0b59Mq7IQQssE940PjZftpsSohn/
         FCOkBwnt5IUbO8PsLLh2cvmZ2+ypklDlytdqhkUWEGS3Uo58pcy/zl8/fUYLv+2X9KJg
         zM9YS46R4H6zbxbZp7orJB+CRnBrCwPDgni7aTQn3RJx7XlJ66OV25AuMOlB9ebDsqeV
         T7OqteJwmcjHufdPbF8elOrXoozwJLDpGD7JGPZA7Wuxvss/22GuCji940GhcXLFOAL4
         BEuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pJBGwODvHnfM3iHrYx/HHtJzwJUNgJrs1/XIFYh0NNY=;
        b=kH43F46LrDPIpJrgH+4Z4QTStJcmM9KuJytAhBzn0JA8GWkzKmh7FQzJl9VvRpnzx2
         8ybUb+BqGvZ+rkv6+46mq0FqHogsweRbRXrtmWwyKLEfit3zX/UjGihH3204El1McTQB
         FYIRdclNcLv3KhWR18ayglyM5oJkiPjtB4KZLjN+NBzfnqgUhNApo+Vzm4iPade/v+Vu
         7UQpRjDHChcUnR4f0HaXDoOR7EjL+mYAZzKcIT0f43ilXx8S6IKXeqP0px4fh1edSbqq
         Ad9YTm1GY5BafOsKf5DSBCNEv4nw1SDxJEl57NsxffwXewWywbixB2/SNJNkX0E5Covo
         SMOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gfx8V+L2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pJBGwODvHnfM3iHrYx/HHtJzwJUNgJrs1/XIFYh0NNY=;
        b=h63umraNacKEgCVyZ/+TTf+PSuaN5oFp3d+GkgzE7ftJTWmpgdSy3WFnJBUw7yGLOP
         duihIeFKt8Meq8RTIWbjmlQ2h+NvmO/P3Qvl6omv+J7zQt2NJV6xfNk+9oeKrTwY/QQm
         I/gJsMXkUIYpZMQLYGXWbnUfIn8eMTakvr+1ZgMBxUjNbPajZVcBlHOls9amJ6adxU0C
         wytwVk+Oj5oIgepiKCtHS2YYHhWl37GUaDoLiG8UjrEm0LRctJZKOrHGlYLhUHxNDCYV
         9cSOVrTRmKHS6NRIRGZ9BeatN344L2J7Kj0SZuuH6E1ntQH+5zkPoLFq3QHs26IiRpHy
         KHrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pJBGwODvHnfM3iHrYx/HHtJzwJUNgJrs1/XIFYh0NNY=;
        b=q20SofJCb9okrdCKzjzzTXYGUM9DbSU5T16duOf2ZIOEa17mYpmipMa18WH35Wrsqk
         xDAuwpUFL8wW1GCAqyD2g5RkRRNgMndhjk08SOuslw6Grr9HH8sdm207RY/W5KMrU7wX
         LcpbieUWzR2RrCJvR7gXz8n31j4ZPLJCKqlZwsGASlg4/JW8uXu4gEeAtQSx10k68+2x
         Qhvnq95GtbZygAUeCp1vLxGfGYIvzmnmVnPxXkXEUtjLLxhn1GGLEMjm8mYz/bPNisSo
         XhxRIT1W2EXzIB9on8ASZNIUa9C/mApX9icgCRWvasmE/oOWKmnL8v08ru2mukDSKtOT
         K/Qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532axTSKL5Bngat6lsZRNfVvg4CDWzyIWENqCIbQJY1WPJ2MdXtQ
	Rs6eLUyNGZKyX95ELu7pUb8=
X-Google-Smtp-Source: ABdhPJxCm4JvOP3Q8EOcDfKy55n9on0gqMjmwB6+YLi3g8fwTW0IvLT85aDxSj36S1uWul5M0yMYNA==
X-Received: by 2002:a9f:356f:: with SMTP id o102mr5711824uao.47.1615828142133;
        Mon, 15 Mar 2021 10:09:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:94c6:: with SMTP id w189ls886950vkd.0.gmail; Mon, 15 Mar
 2021 10:09:01 -0700 (PDT)
X-Received: by 2002:a1f:d283:: with SMTP id j125mr3513186vkg.9.1615828141610;
        Mon, 15 Mar 2021 10:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615828141; cv=none;
        d=google.com; s=arc-20160816;
        b=o3EPH3VnGEL0xEAGZzcTN1vQFaoDACvVumTOO5d30YXREbdvDLqiqiqH0j1uUnygLd
         J7cqpS7Cfg7CjMPIlvVAhJdojtcExmjSC8NF2a47K6bcBMeCEXPCeND7WVNos+A1cFRz
         DmLz7E6T3DvpCASotG8t+s56NcVeEuqKGe1SJRRb6Sb1TptS7LZwfISd7HhWVyqBKeCo
         2iatB/8jy0B5i+LUjy62vSUVOb7tZTimhH9V13EWataoc4z8F/Ufm8dlWn/HZFScbcA7
         KbAVfXtgWxEmayZiXEHxo4Wd2ZJHWuyld/ODrlRBlSGBgYeu3bmW7oiTt1y3+BqbnGxi
         xteg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aQDpaLU/OOFQdIju44QOo9K/VXxXe/w9G8uC4lt6rjc=;
        b=Oq+5P8N5gwBprXdqWyACex5L/ZkHqt0B9v7jwjmFCf0YghiFUVMfgdqJiq6up2CF3W
         +OJTVbn5G9/Zxhsgz7GjJIN/Gl3gnE2eUzDA7ahcX7V0mCKlKRho7X4KAsdBHo8YdFdh
         YqAc9x2uQuRTNqhttCJb096Vl+WF22JPbGUuzlMgvLA5gfa3nCPDt05EBI21X6RvU0FY
         nvIutsqUNxVZgta+LjeM9SuUT9/IF3gY0uB0vFYy0W+C2PJkBCv2QWJQMylB9WlgLhCt
         RSo2MUi+4h+EkWOejCr4r2Jdc+Bah1hQdI9TbYWOgcWoSXfeg2MBCu1ULRDsgCCCiZ+R
         v9NQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=gfx8V+L2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r5si648671vka.3.2021.03.15.10.09.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 10:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 377F364E28;
	Mon, 15 Mar 2021 17:08:59 +0000 (UTC)
Date: Mon, 15 Mar 2021 10:08:55 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Cc: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>,
	kernel test robot <lkp@intel.com>,
	"linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
	"kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 2/2] zonefs: Fix O_APPEND async write handling
Message-ID: <20210315170855.tguqrsl7wsbjojib@archlinux-ax161>
References: <20210315034919.87980-3-damien.lemoal@wdc.com>
 <202103151548.W9MG3wiF-lkp@intel.com>
 <PH0PR04MB741614B0DED04C088E0B075E9B6C9@PH0PR04MB7416.namprd04.prod.outlook.com>
 <BL0PR04MB6514205221C23615549ED67DE76C9@BL0PR04MB6514.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <BL0PR04MB6514205221C23615549ED67DE76C9@BL0PR04MB6514.namprd04.prod.outlook.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=gfx8V+L2;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Mar 15, 2021 at 07:22:56AM +0000, Damien Le Moal wrote:
> On 2021/03/15 16:21, Johannes Thumshirn wrote:
> > On 15/03/2021 08:16, kernel test robot wrote:
> >> 818	static ssize_t zonefs_file_dio_write(struct kiocb *iocb, struct iov_iter *from)
> >>    819	{
> >>    820		struct inode *inode = file_inode(iocb->ki_filp);
> >>    821		struct zonefs_inode_info *zi = ZONEFS_I(inode);
> >>    822		struct super_block *sb = inode->i_sb;
> >>    823		bool sync = is_sync_kiocb(iocb);
> >>    824		bool append = false;
> >>    825		ssize_t ret, count;
> > 
> >>    843		count = zonefs_write_checks(iocb, from);
> >>  > 844		if (count <= 0)
> >>    845			goto inode_unlock;
> > 
> > Args that needs to be:
> > 			if (count <= 0) {
> > 				ret = count;
> > 				goto inode_unlock;
> > 			}
> > 
> > Sorry for not spotting it.
> 
> Yep. Sending v2. Weird that gcc does not complain on my local compile...

Unfortunately, GCC's version of this warning was disabled for default
compiles by Linus in commit 78a5255ffb6a ("Stop the ad-hoc games with
-Wno-maybe-initialized"). W=2 is required, which can be quite noisy from
my understanding. KCFLAGS=-Wmaybe-uninitialized is a good option.

Cheers,
Nathan

> > 
> >>    878	inode_unlock:
> >>    879		inode_unlock(inode);
> >>    880	
> >>    881		return ret;
> >>    882	}
> >>    883	
> > 
> 
> -- 
> Damien Le Moal
> Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210315170855.tguqrsl7wsbjojib%40archlinux-ax161.
