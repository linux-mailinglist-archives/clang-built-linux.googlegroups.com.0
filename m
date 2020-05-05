Return-Path: <clang-built-linux+bncBCLI747UVAFRBQOVY72QKGQEXBSUWUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0CD1C6406
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 00:37:54 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id m7sf2773104ooa.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 15:37:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588718273; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLzsmKmw0bvYkaOhIppIpKlznQIo1IwYbMVstzeSTz/c5TWWtYq7/nY01Gti59a0F8
         LWMdGg4ooIQOHrZWEVkpcjZ67Qb7ZIiDRlI0xajFTQWxCrpf7NjbEvN8BkghAk4fuQhs
         Bvhx/1yTuidXPldeKUE/dBg29fPlAP7EyDLs9nYflCL1yclCiAsqxKcmXxYFhkXWWCLm
         OWtr4btXWLqkjzQGK1BIyaEKQ0L7xzRQjsV+6bYH89NWQr8Qpict+nJrkOCJhq4tO7Hy
         gD0Wvglhk/c+Y9hpDXsO7Fm1E31gvR+huIxhHHTapnbjA4WidCg4jPvpmgBeBE0swbLv
         DkSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ppsKcTmuq/WO/c/1bC4HpIpQkab6y/70T6SeRc2CT3o=;
        b=m8KfdCGwQmpDUy+eOqGcw9ecCmJY86sAnJP9tiipllKV6HiSeQiwmEJSEia4OL1JVg
         cOr7488/uHUKC1tAafqq5a9Lg5xA7Aj8oruholssCQ4ewVdPW7e43MoCBjA32WOxda9B
         /HTXlOriAyyV5oa6+eD3dixMByYXsYKEX6kNcS3PUIlnPvBaTqMFZxMUWyPhGJfW37sB
         J31OXNiKDVpyv+b/Y4JQzePR8EPhxFNSF9yN57RlJd4s0OMmmqcM8jvRtnqO+frfksmQ
         p6/5R5LgCp359EIpUwppKD5TAhi1wGtivGJMmTyxRD5Cz4ukxK/AWjX1jVqxW/hnario
         xYkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b="fc+sEK//";
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ppsKcTmuq/WO/c/1bC4HpIpQkab6y/70T6SeRc2CT3o=;
        b=MQ2auH/RTNwQTuKQ+UDKhGs1DB4aLhUzVjIKJFYRdrBx/CiOWdydm35NJgjBXTL4sN
         H1GLN7DpisZcvWAUP2dqX0xQpq1Hwf4Q3ROYgxAOtgWuKmUyBACe5eKazdnDI1EkWV3R
         D8zXmLnn1o84KsYXEoK5Ddrnx4BmtSlvT0biAG6jSEKCnb2imLTwHikkp3Ors4QPUZwf
         Qe8poM1PV1B24zKg6p+0gyB4lo9xhyQWaX3je0OTz/o4vxtMRZ4TI9Eppw5TU8dKlNLH
         OKkGkprnYLoZgiyXgR3YSCgXwbJpsYTJE1Q11RPDM/1h8E+fmE77znbrh98gqlhZYgCJ
         UcsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ppsKcTmuq/WO/c/1bC4HpIpQkab6y/70T6SeRc2CT3o=;
        b=JyFf0oZKkLAU4IC4mPqwLYzvxNB5+BRnqFM3WGfSedaVpZegIVYMyCeQecW0/7SFTP
         7gAt9cIS9Ch2p+ibMySi3JqQis9cwEb+RnhalAJKCgyr7Sp2mGmop/AjdiDt7kymIF97
         SOT7Y06a4HAW+ZdeUlFDf8ltZRLbZvKdBZFU6XueMufEiOrMKPE3JAkj8M7qeI+Jp3fd
         fuc9RFZggpOzhJki/7El11cYFITi8o82p3gNp1oqbAcpFoO8B0KV9rUx2g1froNUQzER
         L8xtSHXE/uaeUsEH7C8w/mzQUtur0BzOmu4pURJzCu9ES33XBcNHwbaogj5NdcMazfVb
         UnRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYc4QsryfsWimv4V7pkiISYVCYAUWvQZJ4ytRipB2DYrTy4xx62
	JKUXsSQjy0TCwc+tlNrs9dQ=
X-Google-Smtp-Source: APiQypL2gv91qdVV1tlHcuh3vOUGisA/Uiojg4+3KwnBfzvM/ap779iMXUVXrj2rl/MBbUUaSckTow==
X-Received: by 2002:a9d:7f04:: with SMTP id j4mr4316529otq.185.1588718273254;
        Tue, 05 May 2020 15:37:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:241c:: with SMTP id j28ls30408ots.1.gmail; Tue, 05
 May 2020 15:37:52 -0700 (PDT)
X-Received: by 2002:a05:6830:1111:: with SMTP id w17mr4186952otq.325.1588718272936;
        Tue, 05 May 2020 15:37:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588718272; cv=none;
        d=google.com; s=arc-20160816;
        b=0M/sV2OipEg/6oU8K3WNDF/FHv3BZfYf7Gc+qfjqaqR8IpQIdkXi0cL0IqflIRx2X9
         KkcNfVyg9PyDcSyYgvKEUD15q40n/YbWR3lX5JOFHxJmwBN2q0xDORdCn8b8Fx6w98xH
         u7T9OobCyNpRZM2g+o8zzFqzwUNK8qKJsQgEyea/JwbNldBOoBxtyQnMhMJSC1Db6MUG
         sY/uHfl8LYmLUnSs05rgfrNQKCdIh2EfcL9yfN102Jqximuv4pfaHHZqUDfSiAJ/43AE
         wabFrjM9pVUyFJtvOsyXFZePTZuOAUV2vKYpEMAGjk09EthAfEHKslbwUkgWtL+px5Lx
         4glA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BKc5sxojKkd7STTusHggW9ruqVvioE2VqpdaP1PV7sA=;
        b=bbkK3L5aIONfdY7l5T7qIiGI7MR7hauYANmgpP9YeCvwxyZrTGki0+bGWEPmz1ezqq
         HHePn8o3vvvHsu2MlG1ijCeU85z3aAyJxGky8jlK8LNG8VsgM8RdGXk6U2W5ssF6bqaF
         qNxOYbDf8H9PRHHOTt0Y0SZ14nYKTZMCPXDXRky0Si6ahJo681tE00zcpW+BeTWmXJFT
         2hNpc8x7iPgId4BU0iEaoNI9Zzz6MfL36Rc8NP8wtXMNe9TyCVl4zXGuymMSBZsAIpQX
         K8lkxMK2QhPukog3ZwBSBfGkeZUTNN3eJG5r/jekv/7Sx3CJz63yvJvKBC697FV7r5yB
         gzhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b="fc+sEK//";
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id t29si21500otj.2.2020.05.05.15.37.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 15:37:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id fe701d58
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 22:25:15 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id cab438aa (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 22:25:14 +0000 (UTC)
Received: by mail-io1-f46.google.com with SMTP id z2so93638iol.11
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 15:37:49 -0700 (PDT)
X-Received: by 2002:a02:b88e:: with SMTP id p14mr5651739jam.36.1588718269082;
 Tue, 05 May 2020 15:37:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
 <20200505215503.691205-1-Jason@zx2c4.com> <CAKwvOdk32cDowvrqRPKDRpf2ZiXh=jVnBTmhM-NWD=Ownq9v3w@mail.gmail.com>
 <20200505222540.GA230458@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200505222540.GA230458@ubuntu-s3-xlarge-x86>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 5 May 2020 16:37:38 -0600
X-Gmail-Original-Message-ID: <CAHmME9qs0iavoBqd_z_7Xibyz7oxY+FRt+sHyy+sBa1wQc66ww@mail.gmail.com>
Message-ID: <CAHmME9qs0iavoBqd_z_7Xibyz7oxY+FRt+sHyy+sBa1wQc66ww@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: disable FORTIFY_SOURCE on clang-10
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, George Burgess <gbiv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b="fc+sEK//";       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Tue, May 5, 2020 at 4:25 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
> I believe these issues are one in the same. I did a reverse bisect with
> Arnd's test case and converged on George's first patch:
>
> https://github.com/llvm/llvm-project/commit/2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
>
> I think that in lieu of this patch, we should have that patch and its
> follow-up fix merged into 10.0.1.

If this is fixed in 10.0.1, do we even need to patch the kernel at
all? Or can we just leave it be, considering most organizations using
clang know what they're getting into? I'd personally prefer the
latter, so that we don't clutter things.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9qs0iavoBqd_z_7Xibyz7oxY%2BFRt%2BsHyy%2BsBa1wQc66ww%40mail.gmail.com.
