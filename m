Return-Path: <clang-built-linux+bncBD2NJ5WGSUOBBRXY7GBQMGQECVI4J7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CC93652BB
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 09:01:26 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id 91-20020adf92e40000b029010470a9ebc4sf9315059wrn.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 00:01:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618902086; cv=pass;
        d=google.com; s=arc-20160816;
        b=yj637t5WokhnOdUREhKEPOteFrWDM9B2m4XRxHaLiYpGJZ64AcfT/m4DVX495Ivcnk
         Kkh635lOZts5Lc2dROQhyam3srQhFOptTQTidOtYG2B74C7v+X3DwICM70tyk08Fgn+z
         H787IiLX8y02A/ljrXzOKMX3a+8R0t09ukNtr8FJYrSODTLEeZFQCT4LcW1+51Sho24X
         2gWXz6iQYjbNfiPPjQbCje5cJop4eeBgViNxh+DbwkTPPvZ7yczqBhZc2RJNT+7XmUFS
         IJk2Ff7ZIserOEaLnWakAow58qzN2XIq0slkUuvjjzzRQL6PuBFeFwmw5FPUXntH5mpO
         /70g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=5fo8F70ZQcT/vP/dVyXB2Fw+9zqTjIW4ghNzRv3AoZc=;
        b=L/48/ywzTUlU+j7GT4E3F1QAGhc90V4A3o2XfWhRXTtFeoYQmCt1pCHtaxwV748S+6
         3/CGJrTud35R+FtEIKi3p0qAHjx4b+OLKup6dissICleih35Nn0tApkrv+Vj1OyFZPgr
         JJnwyBIakbxfyNKDyD/+RcDyJUZPXumONmYxxBJmMQRmkiu5rVScHSD8ruGNayT2ZZiJ
         ecsdet5f/rJra48jzYqQTYRTSNTEAcRlXOi0ou75fUdQIAwkMicSyNQEn4WMi5T8CTg4
         yzdMmZT1uwCx2xHCvimaeOvuTtdGtmrvNFLL0loB0wje4EG7T0LZXJ+smC9VUy7my+Cx
         d4ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5fo8F70ZQcT/vP/dVyXB2Fw+9zqTjIW4ghNzRv3AoZc=;
        b=a4y9mkexbYErk01i31PISzrrNJUZBvfIbiGSKiXeRlXMEaJx6a1eO6Vz+y90xyIt2S
         QkUe+EA6RTLUknyv6oZRENa7hl6ou7lFYauczEBy/5ZvP1Nh47PNTqjv8uI4pr8TSDaF
         03imxWvABoXFLZJ+HBT0RrrZjA/88mARGrXUYCXhXuN15z1XYi39+PSErS++AtwdRomL
         l/gtzYlrx+IvjRg9K1hxjK2oix/JYQEpIjb4XYIUWggXuLrvQyFbAhtTg478RN5Cmr4w
         kK2znfZPsnO8s6PtxbsiLWvgipYzCoFsiQ4gPQS4JdQWBtpIKjcDsX1cCfuBrmCcq4ii
         Gu3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5fo8F70ZQcT/vP/dVyXB2Fw+9zqTjIW4ghNzRv3AoZc=;
        b=OJSGH7UaLtlycAqNrzxQb5IbPKBOiOPjre1G2sDJx3PHd549qH454nbUOdy+1xyBZI
         3tebLYNnCuRp4bXZgb3ruGJwsZyur6mla2/sLfgRe8lpP3EZrao8DmMYvHO7YbGNJFba
         aKxYC/5H/uqbSP/CQaKusY9aeghyo9AZ1AJLoVyPz3ZGkMFdsS/qTiDw1WxZuOkGkpn5
         9CIcIySxB59PJOKWEROXHKbyaKd7f88gz/2D0ADKzQJYE4xju1hZLrJR62wkcqsKxUV4
         jMypiwUA2Ek7vsv9VyU7CqwoOZMxO2b4HTt610CKrJGspnTNd/FZapyLO8WZ+2SH1kIt
         bvGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531h5gyg6hr29Ii8FoxhA9dh22yU+0LJITmYuz0NbQVqXGQO3fvB
	P+7QdP4xpm01Dsd46W7mSGA=
X-Google-Smtp-Source: ABdhPJyXfBC86E3oH+sauOEeYKernjUp5vQLkly0fLm4OasjTJRmQhQUp6OGtgicikBjNgPAMTrPTA==
X-Received: by 2002:a05:6000:1789:: with SMTP id e9mr17564196wrg.110.1618902086693;
        Tue, 20 Apr 2021 00:01:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4e12:: with SMTP id g18ls1028146wmh.1.canary-gmail; Tue,
 20 Apr 2021 00:01:25 -0700 (PDT)
X-Received: by 2002:a1c:2b44:: with SMTP id r65mr2788488wmr.57.1618902085904;
        Tue, 20 Apr 2021 00:01:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618902085; cv=none;
        d=google.com; s=arc-20160816;
        b=fGlAsWtxi6BAKxyApsCVi2XnZEfKVH4Orr0OJDz4GrSJajo2XerRQsNk48XYJAOfv5
         /p3ynZgd1rFsLCHcTT/r8T2GRfjwymrAQ6nFIePglut2I/0Yl8850W17X+4Q28hekXy7
         nDzofQ0UyKyQ6HjPyfXjkQv1npSJ5tZJfpLozpmJ+rk/laAU/a7XhudxF/ZIcewSNjl+
         9bKwepml8AYLtG1AdWRxwKNy4SWiVZ6TgpNMABE2ArBMoY9IKre6javtUEp2fe74vv1p
         7WpgNtWGrRpHLheJdt02oBa08K4b3dnKYGG/tYtPvFmrKO6g6pn2PTf+aStsnPYNRCH8
         UzmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=NycAwWS7NXIMq24dn+hgEYSxDpq9aOg9+AYhvzITkWE=;
        b=C6sZAhuhAEv055SMvMfoY/TBWjH9aKUkA/iQCCa9jQeXrFID3U3yrJhNwGdwy9UR8b
         oztosHJIWGJCMoNYV1RY7R6+C13dS0GfsP9xqiEBcmFimrhRp2TbZd/Du32AUxPAbinD
         S0jk7LWq5AogaowADjG32U53PROt6hAnz1u53psF/7K41Idamcc1PjYth+xagwOfK+6W
         1gMasYOzTKLdgPM9rYn3ZL+Lp9a1dfkwQOC2+RErHeHcw1GmR7WXngJDvzCg5oQn8V2M
         BfsWXARW75coPjPgWuELXtxrA3XiMfzl13Xes10fogq+nrJktK4gGrV1Z/awbJNu3cqD
         3Z5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net
Received: from sipsolutions.net (s3.sipsolutions.net. [2a01:4f8:191:4433::2])
        by gmr-mx.google.com with ESMTPS id w2si467991wmb.4.2021.04.20.00.01.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 00:01:25 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of johannes@sipsolutions.net designates 2a01:4f8:191:4433::2 as permitted sender) client-ip=2a01:4f8:191:4433::2;
Received: by sipsolutions.net with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.94)
	(envelope-from <johannes@sipsolutions.net>)
	id 1lYkNs-00EAPs-Ov; Tue, 20 Apr 2021 09:01:21 +0200
Message-ID: <74494183e65ef549fc5596f314db43a8e792d2ff.camel@sipsolutions.net>
Subject: Re: [PATCH AUTOSEL 5.4 13/14] gcov: clang: fix clang-11+ build
From: Johannes Berg <johannes@sipsolutions.net>
To: Sasha Levin <sashal@kernel.org>, "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>, "stable@vger.kernel.org"
	 <stable@vger.kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton
 <akpm@linux-foundation.org>, Linus Torvalds
 <torvalds@linux-foundation.org>,  "clang-built-linux@googlegroups.com"
 <clang-built-linux@googlegroups.com>
Date: Tue, 20 Apr 2021 09:01:19 +0200
In-Reply-To: <20210419204454.6601-13-sashal@kernel.org>
References: <20210419204454.6601-1-sashal@kernel.org>
	 <20210419204454.6601-13-sashal@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Original-Sender: johannes@sipsolutions.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of johannes@sipsolutions.net
 designates 2a01:4f8:191:4433::2 as permitted sender) smtp.mailfrom=johannes@sipsolutions.net
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

On Mon, 2021-04-19 at 20:44 +0000, Sasha Levin wrote:
> From: Johannes Berg <johannes.berg@intel.com>
> 
> [ Upstream commit 04c53de57cb6435738961dace8b1b71d3ecd3c39 ]
> 
> With clang-11+, the code is broken due to my kvmalloc() conversion
> (which predated the clang-11 support code) leaving one vmalloc() in
> place.  Fix that.

This patch might *apply* on 5.4 (and the other kernels you selected it
for), but then I'm pretty sure it'll be broken, unless you also applied
the various patches this was actually fixing (my kvmalloc conversion,
and the clang-11 support).

Also, Linus has (correctly) reverted this patch from mainline, it
shouldn't have gone there in the first place, probably really should be
squashed into my kvmalloc conversion patch that's in -mm now.

Sorry if I didn't make that clear enough at the time.


In any case, please drop this patch from all stable trees.

johannes

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/74494183e65ef549fc5596f314db43a8e792d2ff.camel%40sipsolutions.net.
