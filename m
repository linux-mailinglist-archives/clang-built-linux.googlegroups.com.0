Return-Path: <clang-built-linux+bncBCJZRXGY5YJBBA5W7OCAMGQEHWYWJFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C748381198
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 22:18:12 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id c1-20020a92b7410000b02901bb63d32e95sf787221ilm.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 13:18:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621023491; cv=pass;
        d=google.com; s=arc-20160816;
        b=vQXQUL2yYzGjYYds3okcY17STaBhDhqS2fUhyX41cxvnrwKnIlsaSBhhx6fW5v+aR6
         H4FWVGNduPEhwHvVM1WRWdkeGFTjkTKb/JQO8sWx5xEZYnkXjmGHHqGKapo5tPcqAtQr
         waykocWvoQjN2aQM7b5si138L43FoYjY9pnHGwmaBLekhqXFx8oU92qbFkQJPmveQFHg
         wAoDwAaIWjcpE/WJqXUKJ3xpkMIk9znAxQbzSwB6geGGqNRQ1WuANBENiHHbq7olCJ4y
         T393bBeX8W1KExrzX0flhabNOWtf7sSvMoodftApdVzC6LE/wgEBegpfJPZSd3gvjRku
         xlnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=E4gSXjKQg2cmj3K2h8Sg7aw44HAi+6Dv0BVfX05ry8o=;
        b=fZG7SO37nuaYt09lh9gOfpKGzKQbZgZ41zTt0MAM+uGmKbATLtnaNoI69DzUKUo7T1
         lwy12Y034esZk8Xdi585i/VOVNkehzu1s/vAR7CjK974kRXgvpEGBVV+XE2CJ+wkuXmV
         xAA49mBow660MW+xAzjA57B+z9j/wKbSQ8ddycJUS5z7b9pP7Zdxy/mXZNcbl3mE6qZp
         NbwoAH2E20hmQVyI04ZUwObrioFkU8TYGq9DOOhskrXggswVOZXScpjjtP0bxXUGoXGR
         T0lhMQSmIJsGlU49focmeS82BKgZpfnkcaU9rrtM4Aoc6AgzsAteTHMPdEb9Q0iC50/r
         m1RA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="AX8h9jH/";
       spf=pass (google.com: domain of srs0=/njc=kj=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=/nJc=KJ=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E4gSXjKQg2cmj3K2h8Sg7aw44HAi+6Dv0BVfX05ry8o=;
        b=HryMXyGinLz2ZfpRKMHuCncNhpnzinwPPkhKDrZ5rqq6F113ZRX71vCBVpyo+WJSUM
         DJplv3SJVA4oiRJMEKGctDLjNJwyHpMtGz62zONMVJFQiGHr6tTE6sKh4zNQExUih9QF
         A0MIghJRlQ+XkfSl89mfDnm7H5oL+TYvV2GsNGz0jgbenHD33Jxc3xDjyjFZpphJnRTC
         Rei6vP3HfJqXULgJfdSFQ6A6JlDRvvV7ByM/+YHVJGGJuXT8SFeeEY2uDeZI6SdKMSzL
         ssBkNUAcsMHRmFKzajZEN638VdHma6G/YzKSbW/fIxfDqSXpzskX/o7qL7he3f3/qyLH
         AcxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E4gSXjKQg2cmj3K2h8Sg7aw44HAi+6Dv0BVfX05ry8o=;
        b=hEUfsrwMfXfUJ8w61pdmIz1jiDFIe5H4y+3Pwwr/1n+tXXSS93PWb8jPSnj93iXpIM
         MwNgIfp2kIvVZy08Yg58GI8/Gh7ShvIPZOt4M7j5oDf82z7M1cxiCgNHdwfGdduL39Hz
         6mPM2/OgeV1JbnFL6HrkFqQp7nUzer/KdjlY3yZrDYB5vsyHhvaiEKSKpi1ROvisKTsJ
         9BpQduwa6Em4T9snPrTXH9EcnpC10iwuaX4SOw4wTaZQYWQx9Jsg2WdeAs1oDAnZ6BVW
         GS4xUWItPSbzYQMPFTvSYcg+8FMv4nKK14lXQ3hs1bAK32B0AlYEr3Y11cy49tA4vAXy
         KW/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zITdBCfxYsB95OZ9OnGeo/6YOX6alSSGxLQVZUS6kx2zOG2cI
	ZXDKVD8g5TAicPrm+kOn8ps=
X-Google-Smtp-Source: ABdhPJwvrPojl3sA9tbshlEWEU1nDTOEF+a/xbw7R09nsD8F3T5j6shlJ+UwTGQDf7izFLqyIx00Dw==
X-Received: by 2002:a05:6638:f11:: with SMTP id h17mr43535515jas.102.1621023491233;
        Fri, 14 May 2021 13:18:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1414:: with SMTP id k20ls1612825jad.11.gmail; Fri,
 14 May 2021 13:18:09 -0700 (PDT)
X-Received: by 2002:a02:5b85:: with SMTP id g127mr45028611jab.80.1621023489695;
        Fri, 14 May 2021 13:18:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621023489; cv=none;
        d=google.com; s=arc-20160816;
        b=KIZHVYSVnhesJDwhsyvSdjlOXk4GyvKZHDiGJxy2DYPjMusp8c0ooCtkxgio1F8o3o
         t9Jf658avD/ZLoJ5iWaB8dRPmN0jxfaBGOaXwRsk9fQInKCgI9XbVaXnqoYO02fbdAOD
         Mi7QdPJy7Oj5vyqFyQ/ovX8UX+aVaxAe34MJ0feV03K1V90+nPCS7cbKKKEYfD2q4LmC
         SeSYJEShdvJ6yTtu8IzC6tfQvqhG4Jw5Als3HebP7vFGmcqQu6/sVWotqN8JCIPWMHQ9
         PHK/s1jaTrEH8AKWXni39CP37Njyluns/ciWGMUz7vUVt2WeS1BhHrkrbWd7enjs221c
         +s1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+lZa+ymLvLsGP0D44oY7kXWbIyf8CrKmdu5QviyiOLI=;
        b=kfgr9KyYwNroaMBIkPEeiGm6mgJbEJ2bZ9q+D5euV1f930zVzdiXtgmi7o79dkaOUK
         jzT1gJmqD7zEIhHjQL+8pKNFKUqWUurlN8yJykFOVFEwRY0seTIcxsDdkF7T4MsQXVDp
         IcL7umz/r2mZKuDEZl0p1zLBWFb/w2LQi7qJ8dTkLcgh+bMm5F5gOuNPwSL6OroMZpVD
         cKrVhPDK9lRYdZ7sYmQpFYlNFdwLCewM9eex1uLl+rkv5qTK1M5GARw/yHeTlovEzRmz
         e62rOb6WLiOQvMpJ2y/vehOAO86K1W2RpDbC1Rn0xuSnTg1x0YEYpT02bpFEiNHQ2S8i
         Vb5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="AX8h9jH/";
       spf=pass (google.com: domain of srs0=/njc=kj=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=/nJc=KJ=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o3si629374ilt.5.2021.05.14.13.18.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 13:18:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=/njc=kj=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EF9206121E;
	Fri, 14 May 2021 20:18:08 +0000 (UTC)
Received: by paulmck-ThinkPad-P17-Gen-1.home (Postfix, from userid 1000)
	id B87EF5C02A5; Fri, 14 May 2021 13:18:08 -0700 (PDT)
Date: Fri, 14 May 2021 13:18:08 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arnd Bergmann <arnd@arndb.de>, Dmitry Vyukov <dvyukov@google.com>,
	kasan-dev@googlegroups.com, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
Message-ID: <20210514201808.GO975577@paulmck-ThinkPad-P17-Gen-1>
Reply-To: paulmck@kernel.org
References: <20210514140015.2944744-1-arnd@kernel.org>
 <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
 <20210514193657.GM975577@paulmck-ThinkPad-P17-Gen-1>
 <534d9b03-6fb2-627a-399d-36e7127e19ff@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <534d9b03-6fb2-627a-399d-36e7127e19ff@kernel.org>
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="AX8h9jH/";       spf=pass
 (google.com: domain of srs0=/njc=kj=paulmck-thinkpad-p17-gen-1.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=/nJc=KJ=paulmck-ThinkPad-P17-Gen-1.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, May 14, 2021 at 01:11:05PM -0700, Nathan Chancellor wrote:
> Hi Paul,
> 
> On 5/14/2021 12:36 PM, Paul E. McKenney wrote:
> > On Fri, May 14, 2021 at 11:29:18AM -0700, Nathan Chancellor wrote:
> > > On 5/14/2021 7:00 AM, Arnd Bergmann wrote:
> > > > From: Arnd Bergmann <arnd@arndb.de>
> > > > 
> > > > clang points out that an initcall funciton should return an 'int':
> > > > 
> > > > kernel/kcsan/debugfs.c:274:15: error: returning 'void' from a function with incompatible result type 'int'
> > > > late_initcall(kcsan_debugfs_init);
> > > > ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> > > > include/linux/init.h:292:46: note: expanded from macro 'late_initcall'
> > > >    #define late_initcall(fn)               __define_initcall(fn, 7)
> > > > 
> > > > Fixes: e36299efe7d7 ("kcsan, debugfs: Move debugfs file creation out of early init")
> > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > 
> > > For the record, this requires CONFIG_LTO_CLANG to be visible.
> > > 
> > > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> > 
> > Queued with the three Reviewed-by tags, thank you all!
> > 
> > Nathan, I lost the thread on exactly what it is that requires that
> > CONFIG_LTO_CLANG be visible.  A naive reader might conclude that the
> > compiler diagnostic does not appear unless CONFIG_LTO_CLANG=y, but
> > that would be surprising (and yes, I have been surprised many times).
> > If you are suggesting that the commit log be upgraded, could you please
> > supply suggested wording?
> 
> You can see my response to Marco here:
> 
> https://lore.kernel.org/r/ad7fa126-f371-5a24-1d80-27fe8f655b05@kernel.org/
> 
> Maybe some improved wording might look like
> 
> clang with CONFIG_LTO_CLANG points out that an initcall function should
> return an 'int' due to the changes made to the initcall macros in commit
> 3578ad11f3fb ("init: lto: fix PREL32 relocations"):

OK, so the naive reading was correct, thank you!

> ...
> 
> Arnd, do you have any objections?

In the meantime, here is what I have.  Please let me know of any needed
updates.

							Thanx, Paul

------------------------------------------------------------------------

commit fe1f4e1b099797d06bd8c66681eed4024c3cad67
Author: Arnd Bergmann <arnd@arndb.de>
Date:   Fri May 14 16:00:08 2021 +0200

    kcsan: Fix debugfs initcall return type
    
    clang with CONFIG_LTO_CLANG points out that an initcall function should
    return an 'int' due to the changes made to the initcall macros in commit
    3578ad11f3fb ("init: lto: fix PREL32 relocations"):
    
    kernel/kcsan/debugfs.c:274:15: error: returning 'void' from a function with incompatible result type 'int'
    late_initcall(kcsan_debugfs_init);
    ~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
    include/linux/init.h:292:46: note: expanded from macro 'late_initcall'
     #define late_initcall(fn)               __define_initcall(fn, 7)
    
    Fixes: e36299efe7d7 ("kcsan, debugfs: Move debugfs file creation out of early init")
    Cc: stable <stable@vger.kernel.org>
    Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
    Reviewed-by: Marco Elver <elver@google.com>
    Reviewed-by: Nathan Chancellor <nathan@kernel.org>
    Signed-off-by: Arnd Bergmann <arnd@arndb.de>
    Signed-off-by: Paul E. McKenney <paulmck@kernel.org>

diff --git a/kernel/kcsan/debugfs.c b/kernel/kcsan/debugfs.c
index c1dd02f3be8b..e65de172ccf7 100644
--- a/kernel/kcsan/debugfs.c
+++ b/kernel/kcsan/debugfs.c
@@ -266,9 +266,10 @@ static const struct file_operations debugfs_ops =
 	.release = single_release
 };
 
-static void __init kcsan_debugfs_init(void)
+static int __init kcsan_debugfs_init(void)
 {
 	debugfs_create_file("kcsan", 0644, NULL, NULL, &debugfs_ops);
+	return 0;
 }
 
 late_initcall(kcsan_debugfs_init);

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514201808.GO975577%40paulmck-ThinkPad-P17-Gen-1.
