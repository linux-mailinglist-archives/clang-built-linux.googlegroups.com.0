Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4EL4TWQKGQEESWYQTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A21AE9557
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Oct 2019 04:39:30 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id f18sf405768vkl.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Oct 2019 20:39:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572406768; cv=pass;
        d=google.com; s=arc-20160816;
        b=gysb/j0//NwVwANXr/OArtjPzRz+PQ0Mo2z3WGdA6mhelb8vtbRF7ksxTV8lM1Zy3G
         J3khNXmfwsljkMv5GzIyDct9xfG1Cd7VxfsfYwZtXUK71k/JyKmyTDZJRQT6MqBALoiD
         zPWoFnwWQs/VwTETEoAEJQDUAWTDIbCWsE/eSrGEqI3nwjL3rhwdQEruSLjMc4FwEgQH
         p0cpiMUQOL37WzD+BHHN/pdIeHTgL8TAGX4Y5DhoLKb3/neSrDGdCVxsARu6N3SBO8Ds
         kdiRb08RJRm2bWoQJ4pfsRy3x+jqr+cbbqzqjxDeT6pQBXR8EYk7s9Epwsnp3a7y1dGF
         B1GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=eyiD5r7BIHo2lwmTj9qnrfOmxRbHnxiBMYiW26JJGEY=;
        b=QxxBdcMHlVb8/iubD44tZp82FKFv5/ZF3ZhYaTUZu8St4VZPohQjfXDnfB0DzC92Bw
         MG0dhBkneK2mZt3v1nJjP76ejY3rnrQhL9nOxu4e5BUSCpxiZGPMibbEBe7nKcZ6AmJe
         5zYv4SycUTqOrSx8nOieO42FXJCsf7fC1SYA+dF3bfDSpoCZPGZvfAqBmmhMWvP97fF8
         sAmrcCOQuYoF9JSKguob5Maz1Ai89gMgCASJftj7uVFHLYvZh7K5nTkueikOITENpaOu
         jYHSMo7A+d9b1WMACy/daK1eume/fMfz335LzWh+DTJEbcpxy7RZ0E4tuMFCdBQQC2AO
         B76Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tThprWO2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eyiD5r7BIHo2lwmTj9qnrfOmxRbHnxiBMYiW26JJGEY=;
        b=rnRxPJ25VMK2f4MxBNqgrWH1XRwo15gmgkDx2igqt6iv9yjbO8J21r/P3R1Vlju85/
         tOjmzy7dMlccfY6Sgjs6lprJA3DyGygpwBv/RJMqL8fDubriugMNiObppenY7Cw5HW8V
         R6f9kKMVINninXqGzpB/2jwhOuMEk0uLDcTnAjlfs8pTxIzB38QnwXY/bGAJSg+fojHE
         MmD6NmPdd1m5cRbmt70AalTisJRqxZiMw7jZ7vVQ5NZFIwJB8GEIN4DfZP6sBnv2bXjt
         0UpyXtmoBMuEVFwA0kk02S/5uQIfUl1rwbbg405Qs5f2ZjjGtvmcNe4ybMWu5o/vUUHz
         a7ZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eyiD5r7BIHo2lwmTj9qnrfOmxRbHnxiBMYiW26JJGEY=;
        b=oPfxx9I5lRXQeP6vVToDMMcloOyz+PyBQpy3VVVW/XUBtcsnpiFLXaIMQo8JPay/g+
         oZVFejXL6zkB11lsrZoatr4pvIV7JXK7dbohO5Z8hdAiGHypDVrt5PGc/0Fb2shm7pDg
         x/Lq9ZvBSd6UzGqvWfalgveIkv49gGCk00aDvqP0oVlJFLpc72gxwx78ox3sxKcTb/3c
         imzWk37JVGi/aDymUpKAOVAbQdh+zLNJizBjnetqPhFRoXHfCSNg7Z9AhHgp1Tx+RMap
         XVeP45qfvacfX3r7q0NCyle7ggpjf08dZnuAmwrbeo1HXF5Og1OLuWx2t5JwUkKV5bvl
         qN2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eyiD5r7BIHo2lwmTj9qnrfOmxRbHnxiBMYiW26JJGEY=;
        b=WUkWaN5cIzlsTTOXtFjNyN1X4RMoarmCwXkdy0EkNys5AeWjO04fcibcrbsk+xnjT7
         NZX/ivp2m14mYA0ZTdkNKcJsWStr6R/gEjtV6wASj888ODdW6n/NaqJn3iDjuuQsw0yL
         LTMzee1lmpo3VCBQNkWLh6+iKFIVfVQMRUExfn6JN2q9Y8wt1r2fM1IdXrDFEJXweMbT
         xbzpOMuCjNt5AOXah+8Le/zTS+QEtCwarqeeOff9YAqt45y8m/d+mLM70PkoQB8+lowR
         UmWW6RAuLMaICqpU/WdP34TvGeeEYeOZVfQC2Pl5yLpUeFnlxGG6zQ5MYYuQ1Gjyf+RF
         H3rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUuFYPcAD/1wszRpv+OFaZpxst2CqMoRJbjbhoUQH19z/Hhdqvk
	17QYsQ7Aux2b5iQTbZP44A0=
X-Google-Smtp-Source: APXvYqxN2ksq6ah2duMhBZ0ypW+aLDk5xeRYJYFmARuP2A6gVSXNe7iwbdHWs9ckOeM69bDLqBzHjQ==
X-Received: by 2002:a67:eb96:: with SMTP id e22mr3984180vso.234.1572406768709;
        Tue, 29 Oct 2019 20:39:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ee0e:: with SMTP id f14ls1778235vsp.4.gmail; Tue, 29 Oct
 2019 20:39:28 -0700 (PDT)
X-Received: by 2002:a67:7d95:: with SMTP id y143mr4000455vsc.39.1572406768310;
        Tue, 29 Oct 2019 20:39:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572406768; cv=none;
        d=google.com; s=arc-20160816;
        b=mfAAUmmi1jLynFSyEcBZL53Uxvz9tvOtz/1ZeYh5FUT6IVoygIRQmTewPgs70lAIBF
         nQGnGp+jH7vdCECyIfuejTklxfzGBqjU8qlj5UMskNnFd4uoL806yO6iHsOSGuKtB1Sc
         BqutURgz0+HFL80rHBIDsQzAywKHGraFEVpoiHCXykjSF78OPs3qq3MNbiE0vPK1oDuh
         Rnhf+JHll0RCGQJSMTnb58PiEREL3Z2Gf40Hc2D5XNzRt6l7Br6UjNiNWNMZRoKMILH1
         UyAXN66J301ykpY6qRcPi1rbHk6cB8JE/pcenpXGVUOiQghbsGQhcHxyUmqS33GrSDre
         j2zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ZIcDvtpLg8HeC8op/S3U2vyUOby+pVFkX5vscjP9krE=;
        b=ykmfAt2Ej23sVteMR47DkPsN6HwuEdUrKGMQD5zjfrQOOHoMz4OeR3yZgW0Ewhq4Dl
         vJ4Csex4jSD9i3T8BcaBUYNRJ/Qwm8yY5NKQ3CjQeBj9ZCCXDeYZHpyFaa6j7lsp3ymj
         sgrEDiTzDsNvKYHZt5DP9yvyuGK6kYkjgP9B31RPYhBK8LS+bFfaoyfN9Ncdone8STnM
         nigC4zsoRx2QqLYwwKKfKftY3S+fvrXg+nTZS+oiCGxcNjrcc96phbJGys7KyEu6UmEW
         A4Aic4uGGXBTulcJFvloUIAO6yeLZl63l4PwOEyrhcaBBiMf6VzgltbLCfDbneCbVYKk
         ndcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tThprWO2;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id o206si60832vka.4.2019.10.29.20.39.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 20:39:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id v138so782203oif.6
        for <clang-built-linux@googlegroups.com>; Tue, 29 Oct 2019 20:39:28 -0700 (PDT)
X-Received: by 2002:aca:5982:: with SMTP id n124mr7104721oib.170.1572406767876;
        Tue, 29 Oct 2019 20:39:27 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id e93sm399388otb.60.2019.10.29.20.39.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 29 Oct 2019 20:39:27 -0700 (PDT)
Date: Tue, 29 Oct 2019 20:39:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: "Darrick J. Wong" <darrick.wong@oracle.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [djwong-xfs:mount-api-crash 91/104] fs/xfs/xfs_message.c:23:40:
 warning: address of array 'mp->m_super->s_id' will always evaluate to 'true'
Message-ID: <20191030033925.GA14630@ubuntu-m2-xlarge-x86>
References: <201910291437.fsxNAnIM%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910291437.fsxNAnIM%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tThprWO2;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Oct 29, 2019 at 02:45:40PM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> CC: "Darrick J. Wong" <darrick.wong@oracle.com>
> TO: Ian Kent <raven@themaw.net>
> CC: "Darrick J. Wong" <darrick.wong@oracle.com>
> CC: Christoph Hellwig <hch@lst.de>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/djwong/xfs-linux.git mount-api-crash
> head:   e35c37b1b9987c8d87d91dbeca6c24aade2a3390
> commit: a5a36409da3a608c815b38b0ff2eb5bcfc1adec6 [91/104] xfs: use super s_id instead of struct xfs_mount
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 7cd595df96d5929488063d8ff5cc3b5d800386da)
> reproduce:
>         git checkout a5a36409da3a608c815b38b0ff2eb5bcfc1adec6
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/xfs/xfs_message.c:23:40: warning: address of array 'mp->m_super->s_id' will always evaluate to 'true' [-Wpointer-bool-conversion]
>            if (mp && mp->m_super && mp->m_super->s_id) {
>                                  ~~ ~~~~~~~~~~~~~^~~~
>    1 warning generated.
> 
> vim +23 fs/xfs/xfs_message.c
> 
>     13	
>     14	/*
>     15	 * XFS logging functions
>     16	 */
>     17	static void
>     18	__xfs_printk(
>     19		const char		*level,
>     20		const struct xfs_mount	*mp,
>     21		struct va_format	*vaf)
>     22	{
>   > 23		if (mp && mp->m_super && mp->m_super->s_id) {
>     24			printk("%sXFS (%s): %pV\n", level, mp->m_super->s_id, vaf);
>     25			return;
>     26		}
>     27		printk("%sXFS: %pV\n", level, vaf);
>     28	}
>     29	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Hi Darrick,

The 0day team has been doing clang builds for us and we've been
forwarding the valid warnings along to developers. This appeared after
the commit listed above. That check should be unnecessary, perhaps you
meant to check for something else? Thanks for looking into this.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191030033925.GA14630%40ubuntu-m2-xlarge-x86.
