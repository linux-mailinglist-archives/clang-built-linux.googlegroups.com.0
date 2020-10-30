Return-Path: <clang-built-linux+bncBAABBZEA6L6AKGQEHDK3VKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9BC2A0FF8
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 22:06:45 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id b14sf1985739vka.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 14:06:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604092005; cv=pass;
        d=google.com; s=arc-20160816;
        b=XsqVmLQyOlsLp+IsSMlD/Ew45vEraZWD0Odt+tGABhn6QcyzksaZ8DbU6C+aJDcoRi
         Pf/H7tKPh80TNyDdFf+TSP1tUQixy8/ytZ5bjeZs/UVtF1TykkvLxkcRS14Ez5qfpuuh
         v0NQrBVM2bi363rwR6/K8Hol2bmzfiHc2cuyi7mixsZPsPMvQDOfM5CQRR8xCU/EZS/3
         wph8I8SiO/Kr6pzc1Wt8SOw7bN/eomU/W7j5kJWcvLFb3jHSGTAFDcGopYkCj1/D3Pjh
         yRy0F/cOljIG0mfWzkdOplX8m+MLWR5i5aGk0cmpeKKFgql16R2FpcBc6EETAZiLr6VS
         4Icg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=wd23A9oidGRTWXOMwmZlcI62zdWEVhLc8LO3W8r7dC8=;
        b=JoYcOTuDZ7E/1rsIC3Yo3HBjY+Ulk0m8AHKZN1xPnrUVDNDkYGr/9qHdc0bjo/UOiN
         Rqx8CoerrVBUT1iqba4l9uNAPvqCWWnYdWdNQ7EWRuzZ3olwBGn2MKVC+L3GKYeiLcIn
         TuGBKZzUBzIIN2WZQB7DyWGhffCVzvdpkFQ15z5uvoLEChhul6YLDVplGETFv/ARXQI/
         DuILQAthIPUcNS6UMdX3KhT1yDTyuuryqo3Scde2W2cPdHpGHm/CGfl/hZ4BYfqymPha
         y8hX/FokGXsS6vfmuObvvTEBhzTYK476/HXSbG/F0AIkZgIAR+HveMWG/EMltKWtXae5
         X4oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qL1K8eKI;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wd23A9oidGRTWXOMwmZlcI62zdWEVhLc8LO3W8r7dC8=;
        b=NK+ho9qlaKG0XGp9z3txGF6rHchWTkeb0ZFC9euolE+3GsvOxu1g2ofL2ZSTHnspWV
         MBxOicHlge66WiqHKoEcK+FCwZ3298DMgTPXy1EEIzdzzH17Kh2Ij+GJPV/QdtWrdooD
         3i0knKs56FBIFYJeegfqwtJNrG0zuj9gccFb5rOZA/HYF6eC3nYvTgrsC8iDJlPkXlcv
         uNGR6LH/TRs9iOsh2tLTXmHAFi09vql0cjHkt12Q/cI+LqgG2aslN2dw+CQ3vWG9YJEW
         YHhjVAbb+4j2n2dt2WqNCWquElbKbZhHF4QeHJdgBvII2R4R9jSVEnELqDXepTop+cD9
         i0Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wd23A9oidGRTWXOMwmZlcI62zdWEVhLc8LO3W8r7dC8=;
        b=Ll/750sk5uAfutvXBSYRe+GP1UqGkKplBMA2NGf3TCT8nuqn0G9dltvhjx4rBSADQf
         LOYFj/mi1xRlPIdbCUdCB8K1QlqkgRrInm4h2+WITLEFd/RcTv4+FOetzTav/WOZ8zl/
         Qz7/5pz/Gw+KwxVpaphLbG0+6pYh8LunDbKYSO7WFFoLiR16pL7i9rJoDwI6/gZIbmyF
         tLRgK+J6y6vxy19a5waTp9LCJalQ6stU+iLcqKGm4jJrUJG40VbxofVNI4IMBa4AbNsV
         GxYL3XjphDc5DdPy98YEk6+DcMMaqyrrb10IcK7Mlx+C3cgF8KtDXxjoO2vNNttnVHPQ
         YyRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hBY05m4f/c0vyL8o9UDB6Tp817xf3YhKl+jvmPF4T8kG25kvQ
	v7gB33463gaoB2rfR1E96ag=
X-Google-Smtp-Source: ABdhPJyg1EOzrHr7KkVRqBCccQGZznOl7l7yio1j0kAB1wX32YN73bWL0hiwzn+kjve8/V/CqxxlhQ==
X-Received: by 2002:a05:6102:30b7:: with SMTP id y23mr9012893vsd.15.1604092004946;
        Fri, 30 Oct 2020 14:06:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2dd0:: with SMTP id t199ls1136799vst.10.gmail; Fri, 30
 Oct 2020 14:06:44 -0700 (PDT)
X-Received: by 2002:a67:d84:: with SMTP id 126mr9300021vsn.43.1604092004568;
        Fri, 30 Oct 2020 14:06:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604092004; cv=none;
        d=google.com; s=arc-20160816;
        b=TKCYMbNSIYz+THvQ28Aq/QddhMbLk1iyC2aADFJMngUvqwtKvpI86T4aFKJIFlumWZ
         ETcd3X/2pCKpofVQlDFJfZLh2NurJ1Yfkguxy7aIbAZPtTYQUrLnUQZKmk2nOXMi4SdG
         J/Dq4YacShv2vriZM9HgVZNNadEMd+HG0A3b0vobsC+VTGwaOJGRCC3naL5KfinJbpOt
         XlqpibewL0cKwWLr5iTBYIaOrOSBqsF0xakOcQDjDEH6e5UxoK4+OxV+xa7zVGMWi4Ma
         JbQ6Cg/oPpE6oFY+Y4n49aF7v3Znuavsb452F9Tb02/BJlXOgiMEaqWnHjZ+DQCIBAKK
         6IFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=E3ivtMy/w+4BgXIrsOKPKBWjJwW9BIAmGO9HTV1kgDc=;
        b=X2+Z4ZmqJlj1s9WDwIjv3t7sctf2QXvT8ITB2l8swWqIU6w1BOsJwKo4dpNXvnO5ir
         E/JXHi3qCEAsTcCBK791Y/5UuBAQCiG5r/IPaLjJyd+FH8ZL7SHuDkKitty90kmyV7v6
         VWHYhQV88g6HMc48ts8gctJWwOyG1qALBTzUtTOe+DyNvL17GOIQTcoDcxpXQUQU6ESt
         s7HXFiYaaF8lSwQEuguyzk4MjqztRg5BExiqo6oX9Q/nr1lRn0vJC7enEnJ0KAMBRm5B
         XrGW99RHYIbe8L1kM90WOFHHlXmaF4+0GVGQRigN3jAN7MLytrCzxpkABlE7YVCU7S4X
         vL0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=qL1K8eKI;
       spf=pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=kuba@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w123si367838vke.3.2020.10.30.14.06.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 14:06:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown [163.114.132.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7F8E62076D;
	Fri, 30 Oct 2020 21:06:42 +0000 (UTC)
Date: Fri, 30 Oct 2020 14:06:41 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Jamal Hadi Salim <jhs@mojatatu.com>, Cong Wang
 <xiyou.wangcong@gmail.com>, Jiri Pirko <jiri@resnulli.us>, "David S .
 Miller" <davem@davemloft.net>, netdev@vger.kernel.org, Nathan Chancellor
 <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Tom
 Rix <trix@redhat.com>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-safety@lists.elisa.tech
Subject: Re: [PATCH] net: cls_api: remove unneeded local variable in
 tc_dump_chain()
Message-ID: <20201030140641.4fbeb575@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201028113533.26160-1-lukas.bulwahn@gmail.com>
References: <20201028113533.26160-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kuba@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=qL1K8eKI;       spf=pass
 (google.com: domain of kuba@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=kuba@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, 28 Oct 2020 12:35:33 +0100 Lukas Bulwahn wrote:
> make clang-analyzer on x86_64 defconfig caught my attention with:
> 
> net/sched/cls_api.c:2964:3: warning: Value stored to 'parent' is never read
>   [clang-analyzer-deadcode.DeadStores]
>                 parent = 0;
>                 ^
> 
> net/sched/cls_api.c:2977:4: warning: Value stored to 'parent' is never read
>   [clang-analyzer-deadcode.DeadStores]
>                         parent = q->handle;
>                         ^
> 
> Commit 32a4f5ecd738 ("net: sched: introduce chain object to uapi")
> introduced tc_dump_chain() and this initial implementation already
> contained these unneeded dead stores.
> 
> Simplify the code to make clang-analyzer happy.
> 
> As compilers will detect these unneeded assignments and optimize this
> anyway, the resulting binary is identical before and after this change.
> 
> No functional change. No change in object code.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
> applies cleanly on current master and next-20201028
> 
> Jamal, Cong, Jiri, please ack.
> David, Jakub, please pick this minor non-urgent clean-up patch.

Applied, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201030140641.4fbeb575%40kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net.
