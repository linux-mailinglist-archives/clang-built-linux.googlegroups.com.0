Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPWVY3VAKGQEBFYZU6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FAC8A557
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 20:06:54 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id b12sf64966897eds.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 11:06:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565633214; cv=pass;
        d=google.com; s=arc-20160816;
        b=034O1Q6kzXhVjFL+p+HYnH4Dgpz9QZrP2zuFwx4eOL676qDeYzO3Fz2DavROp5kngU
         uINgmAJC5jSvZUB7JH2cIgCVehrR7hJMiIN2Jwxkli7aTkjIQR+xaw0sGISk+3PaItWY
         1Y08hgWpVclJHZdBKrPmCln7HpyYuLsu4BJgjpP9cW7gCh3OwjFlO7smmjL330ydHvHj
         2qvoO+BCFze0kIdvyrLpDGmcK6DqvY4No1WeN2SMuEE5prTwrRHzigIh1bTlamlPeeeq
         x8AvW61OUbo/ZoIqsaMHahuEfrY2u6z2sJLZMkVGZZZOctps4VirB/xArAeiF6UiWkrz
         Q8uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=yL6VsZDLnyQn9F1qt0ihrtsokUxEqjameSGe7JkoLmk=;
        b=lRWtC5Z+1qry8EQVKTjGfUH+/I6IQs5DYGEhoL/s9diekuRasxD0rYi/mnp4o2lKYg
         nRVEDH8LbrveO2i5j4zLJm0V4twbXqV6O3ErpI+1MsCSSurQmSkSZDP8WBU5plTeJ4Pd
         7sNhe7aV3krxl9/I59soXQSJTumwVCL0djlU4ZDn4pxIF1j3UvW2N5GAmEV5Qlul+sB7
         YTRX2dTQXF2sW+2bfD8kUCpF/42jvT5LRP8CHp9zBq5k1lhKtgZMXY3pH4oU1mYngWta
         hRg2BuSw+PtUJTUCnP8LBKOjWd6rKrxwlSXXFcMRHUyPggwNphcIwDZhJ1+F2jAtpdqP
         tWlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZhngPV2A;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yL6VsZDLnyQn9F1qt0ihrtsokUxEqjameSGe7JkoLmk=;
        b=d56Qx2S5mudavGtsWsvgPZjJEGirDECKrYM20CGyDF92ZIh4KK6EMgA7QBd6QRwDg7
         M2hgavtLcQ2v0Slp+AJB/IJsFl+CjYEPOhSB8wTpaLx1WQ0Lbc4vKmnRCDJNweknjobx
         l24txdVeI6TlnlnWdAIoy9SYIq9w7JTI1+o3UG7vzAKhVNPX5yViQVNJSLpOIiD8xcKM
         Y1klglXG7vuT9IxCmjycSSeW7fmfQuKgryRapkWLMLJx+Kgm2zq7IB4KiGxyCqKemifT
         GRWdtGJ4+4wg3HI7O0/ty3sVnmRsfxTvO21zILvtModbqpGXCwHHvETGRqpsTea++Tqq
         /Muw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yL6VsZDLnyQn9F1qt0ihrtsokUxEqjameSGe7JkoLmk=;
        b=GGBv1okCxm+g/pqBvme7ossMpORqHxh6JPr/HbT5M0/fz5pziasxVC8+r8pccxEMbv
         uoHS7Y23PNStyiHKqYbU5tIvc0sKMOSspp70CdZVTgzQkiYNESxyKvF2KI3WlSfU6acK
         t6So54OPyeSboGq01D1/7Dln6DH7wtRs9DiX4lfhSS3g41dxLpAM6X9VXLRevUTiwkOF
         1B4RrKjImDExG8xSIGOTbOxLeUoSnqjwPEvapyMjTDYYbX73l2NWOc8DBJeSzShHwaYF
         XAlf8lEYcUgXzYDQH868nF5XOTVLpnwfQAUHgBbHwFDI043HDAzUXWRmNNah+Eff18YJ
         Bx+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yL6VsZDLnyQn9F1qt0ihrtsokUxEqjameSGe7JkoLmk=;
        b=L1Sz4iXrl6JsWy3u61IMlpp+RV5xFpppzKdsG8PDWRb35o/OVic/viEtOCpfdBDl8w
         o92gbynnIZzadOGFOSYQHyYUerOks0Mw4APZk9wcQWOXaKk2QbA4AUBv4rNMQFaPerps
         XE3jLJMaKSw+E8IzcTpi6/f+1FFt4CFboOyk8guxLt+pQ1AbIVrvdUmXLbN7ikk+++f1
         HcAqN7lxFr+DTLrGqigkOuiQ7wmtbLwc+pTcKHBjqMSPEspttuPn0feN8GR9Qwo3ZXHN
         HNdabv1f43oJjj3/c9kM46gm1Nmt2rzpJEnUABA1tac+Fei3wZZ+l1U7ExCgycJhErVA
         GqkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUshKdFH0XgPnfz1iOPWyzKwZ2Opp7x/iNeDKQh08o+7Uj8Slse
	YYEG7ghZHdeoylIpuViddwo=
X-Google-Smtp-Source: APXvYqxmnQZZTUfnFmLI9kg6teuXvI7L88v0HoUHmNTnn1OhDz+qQ28ibkTO/uorPq3gmMj/aeiovg==
X-Received: by 2002:a50:d65e:: with SMTP id c30mr21125776edj.38.1565633214133;
        Mon, 12 Aug 2019 11:06:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c456:: with SMTP id n22ls4844507edr.0.gmail; Mon, 12 Aug
 2019 11:06:53 -0700 (PDT)
X-Received: by 2002:a50:8687:: with SMTP id r7mr19580619eda.137.1565633213754;
        Mon, 12 Aug 2019 11:06:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565633213; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDPBXT5YUFDPrNkjUbnpFOJciOS+gDiLDL9G+8XUBexTvx6B8z9pI6pP6rcjhhYlNr
         Sa8g/6ZP5xP7b57f9xJQwuxMAyPjOYCK5h+nHx0S5KkAJzu9gG5chMA4wLMla4xVsHC+
         UpwoEYFkaT24CphQDoKG18l/t1vJYZjGE3IVjnwzHuIPh+Cf85PP7dQ7uSfNOZ8EZ1Go
         xN5lsImXWhu3KdT2xxrOHyWZEV6XRrWO/5bmqmX7LIylGOAo6J0DtuHJQwDowj0ZW/h3
         g1cy7LzojrUAM2bnGoY5naD3xNDYMCkVSSl021epVl4H6UCOS89V7cTdG1/KJH2e0Ubu
         DVwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YCHrCCxAOjsbIXay7tsF6FoE1f2LRl9z8wsV1QiIXgQ=;
        b=BQoVe54dgm7ILWppUWN2gb2n5NyM5mZbEJp03SLP0CIVEQKNV234WQTHnKSrcyy86V
         +OrsnQ/m5AJjAq9GmT5FOtydAWw6pay3x9wDOzp8htK4JjQ3EK6RaFAThAkM6pcAYPLP
         pYqCmB6jdvWc5O+rvau4+MDmnKBAP843QTan/V8brtsCNvzHi1wta/4v3NeUNMjNoZP5
         aeemlDB7ED0gQuISWop4SOq3O4grcCbFL6FvatlFv5IhxCQYXh0p2zx5cmwFqL0zDWPd
         VcP6o+biFgUV+OUDUTTF+zwHH0LK2gkSS20XxCXKsBNtAvyF69guuCJlGHsqlM6tuY5I
         1eKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZhngPV2A;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id m29si281990edb.3.2019.08.12.11.06.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 11:06:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id 207so407607wma.1
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 11:06:53 -0700 (PDT)
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr542116wml.175.1565633213083;
        Mon, 12 Aug 2019 11:06:53 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id u186sm366132wmu.26.2019.08.12.11.06.52
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 11:06:52 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:06:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] btrfs: compression: replace set_level callbacks by a
 common helper
Message-ID: <20190812180650.GB116715@archlinux-threadripper>
References: <201908130102.djRQydrg%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908130102.djRQydrg%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZhngPV2A;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 13, 2019 at 01:36:24AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <e23e0b52dce1fe0ee2c78a0f54ea7d722d0d34c3.1565362438.git.dsterba@suse.com>
> References: <e23e0b52dce1fe0ee2c78a0f54ea7d722d0d34c3.1565362438.git.dsterba@suse.com>
> TO: David Sterba <dsterba@suse.com>
> CC: linux-btrfs@vger.kernel.org
> CC: David Sterba <dsterba@suse.com>
> 
> Hi David,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3-rc4 next-20190809]
> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> 
> url:    https://github.com/0day-ci/linux/commits/David-Sterba/Compression-level-API-cleanups/20190811-193645
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> ERROR: "btrfs_compress_set_level" [fs/btrfs/btrfs.ko] undefined!
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Already reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-August/063143.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812180650.GB116715%40archlinux-threadripper.
