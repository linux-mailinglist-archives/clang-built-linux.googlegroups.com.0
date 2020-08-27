Return-Path: <clang-built-linux+bncBDAOBFVI5MIBBXEQUD5AKGQEUH45NLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EA1254E2B
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:24:13 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id n1sf5106715pgi.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:24:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598556252; cv=pass;
        d=google.com; s=arc-20160816;
        b=Laz+bC1DWYJ6DiDRevzmF03RXk1ypko683kb2BxdYZ12rXWKc0cq/S/ZZawHdqtwMY
         D2dao0ZtaqKUTuDaVSsRTrLqSX834ZS12IUYUZSrT17W9e3LODnaonl96RiMfUf9XyO3
         NfTdpx7S8X6oV6huaeEYWKSIzoVqQyEB+pLGfrbxdieFG/x3BCWvh0FljzNMpeF5/TLB
         cj/i/eRkLyJ6BI9wAVTfYasNe+/hUaZA7pfyxgJ1zDiuU/3WLVRpJpwOqUIVwrEmJitf
         t1Ujq9a13pI9ZdxSzVwDUqLnS7PmM6Yiu3npWBGiC4N8pV0TJzjWFdtq8g4Gxown2wGl
         n6Eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:date:in-reply-to
         :message-id:subject:cc:to:from:user-agent:references:sender
         :dkim-signature;
        bh=SnhlSODvRkwJ7Msb07YY7a0Bgdi/0wKeq/kxg2D8Ij0=;
        b=uj6mi5epvV6dRz2ZtxBHTlKjeuw17Gb56YX3t06AFrAIPbG/+oa4GglC0WVkrUoVh/
         uLjolgY0xQr42UmJJqM2C7SGriGYZnuQ8GaRqy3JQPb/Qy5gnxxo/d8JcE93RpnzD993
         GxxJB0ygLf1CilrLujmzaUqutkgzG+L7wyrjzwCuEz0dzV4GfKgL8VrSeDFKiCk6VFC7
         hHiz6p9kRL6bjGVA+iJDtWXVSULEfMyswfWeBJv7F5f4H2zgskkuB2xK5j0omQmoBwpm
         wQteejg+1Lty0RkFFPJH16YVdSkBwzPA3TpCHG/F3LPwtehmYePbvTjfjGZ2er6bnJv0
         w/Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of valentin.schneider@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=valentin.schneider@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:references:user-agent:from:to:cc:subject:message-id
         :in-reply-to:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SnhlSODvRkwJ7Msb07YY7a0Bgdi/0wKeq/kxg2D8Ij0=;
        b=klVKrQC9r+GaVH1oRut+U9qpeUe42H2dhIKWgZGY3KjLXdg0WCpvjiVn1P8rHvVhrG
         XThkmqxlOsQkTF338XVwL8xkZWixkYsY+7BLy7OAeWJwXPJf81IBQCFC7jkRMTsu3UUl
         LEB5QiiWssiEInuPqClPKNzvJxfXgdwuEKgxNDgO8a+c3LvzRLuk1xYvfu9SKqJyOxZ7
         G7OJwC+McT2MbpILcZMUKi6iJbMvFekDAXtQp8H43NUyx052jhe+muHGGnchq9ozu5tf
         JXOcCN8oqqXqH8z80OuRTJSqCDpM9stVQKii4ycgHafx0JdaMGkPJQfETcbv0wn6Rhum
         CcUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:references:user-agent:from:to:cc:subject
         :message-id:in-reply-to:date:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SnhlSODvRkwJ7Msb07YY7a0Bgdi/0wKeq/kxg2D8Ij0=;
        b=thmDSJ69BflzUuKIoUE+HMzzY7tDnQ9CDFUyAm2AwkEUY9iIMzWrBAczPqRfiWzqF3
         qG73mm7AlYiVSv0VO5bz7fymu4y8MCn9SxrsgJ/XkAuu9ea74CEVmOq1xRHpe+MRFqdz
         kx3xjjh1Bvgpbr/pvfcpW/Krjr8Y4O6Yt7+/+T1LnhZwkq4tiNkGuHM7bAMt2hkVEnDS
         iE+KN04BCKtmW8Zky0BUYieJB1ZqsOzSlPoH5lHtv1l5AXHMtIhehUFci14NmqRxypR+
         kVhBsdQWPhtwrlpjKKb4ra60Ewh11oPp/psd3jkaTky2UPCmOEXmR2ZgzTLb96MkLTBe
         A5tQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QSy4kguk/wcDPtRL1kGab52BPrbJZ79RQpv54SBbKAeQ4JNxy
	Jc7856eg9HYC1x5MtlGQj1g=
X-Google-Smtp-Source: ABdhPJySNpIhbtdZrffI133HAhoVVKYu3lN4r2hpn+YB56rqDnwyUUQyse/vRajpQMErQFkOdce0PQ==
X-Received: by 2002:a63:2d42:: with SMTP id t63mr16037038pgt.450.1598556252259;
        Thu, 27 Aug 2020 12:24:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:442:: with SMTP id 60ls1678425ple.4.gmail; Thu, 27
 Aug 2020 12:24:11 -0700 (PDT)
X-Received: by 2002:a17:90a:b00e:: with SMTP id x14mr283244pjq.203.1598556251746;
        Thu, 27 Aug 2020 12:24:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598556251; cv=none;
        d=google.com; s=arc-20160816;
        b=tmGILSL1c0ZcDutOpJJ8fa2IOv5tod/XtoCsUnjonb8M146b8ywv2lE0riB70ny0b3
         rX2sIQy1ntnyzr3tdTId+YewHEeG7ldvy4+52pDu2GF+C6enYDo+ViczYpvCj+3lDxDK
         5xAzTevQ6zsofK08qbF7Hpp3hkqdZ1rqKG5OkjVFUVUQri7WqLthmU4mgvk0TZ21vhTr
         3XchjN1AWcfUmvN9lB5c/hajgsI7m5GJt+C0RFYNj90mXBV3MOTG3gDwgEEz/YQ+b0G2
         okJ7c3FEKo/yrvbGB8UqiBMfNUgIZNY4FdgHOppnl+0LjLGXWVQ1bRbAG/aow5Svj6CX
         Tt5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:date:in-reply-to:message-id:subject:cc:to:from
         :user-agent:references;
        bh=ZSECPN4Za6c7PQrZ6KK5JDI0qzrt8oIJVuGpQKPK6cA=;
        b=Tn2qX1HpBzd32ekxkWSbdMWnOh6QfYZ0XudMwhTPtltrXqBIjm2Q9c0v8gsGkmo82e
         S20JLF/+G1/jGuiMrDdQfA2n577mAhPGRl43CIEazsFCZwrvX0o7Yu1b4566JzahLeCp
         zHwCEfVHEUiSueHoGTGFEHKxFq1LWvDUGE0Q4P4UsZJ3uZfXYGPjtXk3v9BT5eik2aS2
         eL1Pg09EXib/DkL0Ji5j/taptwnLndxb4Expbv+kt/Ki7Eopw3yevsfTC5yPaa0gp53i
         37SrRZ0CqaYRntKmh1kHUsiTcncF1L2MOQ/aaGFrdql8kSvEsJ+61qc9R9TvOkxQEIn8
         KsIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of valentin.schneider@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=valentin.schneider@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id o185si217452pfg.4.2020.08.27.12.24.11
        for <clang-built-linux@googlegroups.com>;
        Thu, 27 Aug 2020 12:24:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of valentin.schneider@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A70EC31B;
	Thu, 27 Aug 2020 12:24:10 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 558AD3F68F;
	Thu, 27 Aug 2020 12:24:09 -0700 (PDT)
References: <1598542538-46278-1-git-send-email-vincent.donnefort@arm.com> <202008280326.O6kOHfWU%lkp@intel.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: kernel test robot <lkp@intel.com>
Cc: mingo@redhat.com, peterz@infradead.org, vincent.guittot@linaro.org, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com, qais.yousef@arm.com, Vincent Donnefort <vincent.donnefort@arm.com>
Subject: Re: [PATCH] sched/debug: Add new tracepoint to track cpu_capacity
Message-ID: <jhjsgc7optp.mognet@arm.com>
In-reply-to: <202008280326.O6kOHfWU%lkp@intel.com>
Date: Thu, 27 Aug 2020 20:24:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: valentin.schneider@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of valentin.schneider@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=valentin.schneider@arm.com
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


On 27/08/20 20:08, kernel test robot wrote:
> All errors (new ones prefixed by >>):
>
>>> kernel/sched/fair.c:11314:18: error: no member named 'cpu_capacity' in 'struct rq'
>            return rq ? rq->cpu_capacity : -1;
>                        ~~  ^
>    1 error generated.
>

The joys of !SMP; you'll want to wrap this in an #ifdef CONFIG_SMP like
some of the other TP's. The !SMP case can probably return
SCHED_CAPACITY_SCALE for the sake of pedantism, AFAICT that TP can't fire
on !SMP (that, or only define it for SMP).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/jhjsgc7optp.mognet%40arm.com.
